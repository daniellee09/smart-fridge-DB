"""기존 DB의 Recipe_Ingredient.required_qty / is_essential 만 보정하는 서지컬 패치 생성기.

배경: parse_ingredients.py 가 '재료명(100g)' 괄호수량을 버려 다수 레시피의 수량이
5.0g(vague)·비필수로 떨어졌음. 파서 수정 후, 커밋된 05/07/08·ID·레시피 코퍼스를
그대로 두고 기존 행의 두 컬럼만 재파싱 값으로 UPDATE 한다.

매칭 전략: DB의 실제 Ingredient_Master 를 matcher 에 먹여 재파싱 결과를 실제 DB
ingredient_id 로 직접 해석하고, 해당 레시피에 실재하는 (recipe_id, ingredient_id)
행에만 적용한다(오매칭 자동 배제).

사전: DB 테이블 3종을 TSV로 덤프 (python DB 드라이버 미설치 환경 대응).
  mariadb ... --batch -N -e "SELECT recipe_id, recipe_name FROM smart_fridge.Recipe;"                                  > data/processed/_patch/recipes.tsv
  mariadb ... --batch -N -e "SELECT ingredient_id, ingredient_name, category_id, base_unit FROM smart_fridge.Ingredient_Master;" > data/processed/_patch/master.tsv
  mariadb ... --batch -N -e "SELECT recipe_id, ingredient_id FROM smart_fridge.Recipe_Ingredient;"                      > data/processed/_patch/ri.tsv
실행: cd scripts && python patch_qty_essential.py
출력: db/09_qty_essential_fix.sql
"""
import json
from pathlib import Path

from etl.transform.parse_ingredients import parse
from etl.transform.unit_normalizer import normalize
from etl.transform.essential_classifier import classify
from etl.transform.ingredient_matcher import IngredientMatcher

BASE = Path(__file__).resolve().parent
PATCH = BASE / "data" / "processed" / "_patch"
RAW = BASE / "data" / "raw" / "cookrcp01_full.json"
OUT = BASE.parent / "db" / "09_qty_essential_fix.sql"
SEASONING_CATEGORY_IDS = {5}


def load_tsv(name):
    return [ln.split("\t") for ln in (PATCH / name).read_text(encoding="utf-8").splitlines() if ln]


def main():
    # 원본: RCP_NM -> RCP_PARTS_DTLS (이름 첫 등장 우선)
    raw_by_name = {}
    for r in json.load(open(RAW, encoding="utf-8")):
        nm = (r.get("RCP_NM") or "").strip()
        if nm and nm not in raw_by_name:
            raw_by_name[nm] = r.get("RCP_PARTS_DTLS", "")

    master = [
        {"ingredient_id": int(i), "ingredient_name": nm, "category_id": int(c), "base_unit": bu}
        for i, nm, c, bu in load_tsv("master.tsv")
    ]
    by_id = {m["ingredient_id"]: m for m in master}
    matcher = IngredientMatcher(master)

    recipes = [(int(rid), nm) for rid, nm in load_tsv("recipes.tsv")]
    ri_set = {}
    for rid, iid in load_tsv("ri.tsv"):
        ri_set.setdefault(int(rid), set()).add(int(iid))

    # (recipe_id, ingredient_id) -> (qty, essential)
    fixes = {}
    recipes_seen_raw = 0
    for rid, nm in recipes:
        parts = raw_by_name.get(nm)
        if parts is None:
            continue
        recipes_seen_raw += 1
        valid_ids = ri_set.get(rid, set())
        for pi in parse(parts):
            mr = matcher.match(pi.raw_name)
            if mr.ingredient_id is None or mr.ingredient_id not in valid_ids:
                continue
            m = by_id[mr.ingredient_id]
            qty, vague = normalize(pi.qty, pi.unit, m["base_unit"])
            if qty is None:
                qty = 1.0
            essential = classify(
                ingredient_name=m["ingredient_name"],
                category_id=m["category_id"],
                is_vague=vague,
                under_seasoning_section=pi.under_seasoning_section,
                seasoning_category_ids=SEASONING_CATEGORY_IDS,
            )
            key = (rid, mr.ingredient_id)
            # 같은 레시피에 같은 재료가 중복 파싱되면 비-vague 값 우선
            if key not in fixes or (vague is False and fixes[key][2] is True):
                fixes[key] = (round(qty, 2), essential, vague)

    lines = [
        "-- 09_qty_essential_fix.sql",
        "-- 괄호수량 파서 버그로 5.0g·비필수로 떨어진 기존 행을 재파싱 값으로 보정.",
        "-- 생성: scripts/patch_qty_essential.py (커밋된 05/07/08·ID·코퍼스 보존, 두 컬럼만 UPDATE)",
        "USE smart_fridge;",
        "",
    ]
    for (rid, iid), (qty, ess, _v) in sorted(fixes.items()):
        lines.append(
            f"UPDATE Recipe_Ingredient SET required_qty={qty:.2f}, "
            f"is_essential={'TRUE' if ess else 'FALSE'} "
            f"WHERE recipe_id={rid} AND ingredient_id={iid};"
        )

    # 단위 표시 정리: required_qty가 base 단위이므로 unit도 base_unit으로 통일
    # ('장'=간장 오파싱 잔재, '마리'·'T' 등 표시 오염 제거)
    lines += [
        "",
        "-- 단위 표시 정리 (required_qty는 base 단위 → unit을 base_unit으로 통일)",
        "UPDATE Recipe_Ingredient ri JOIN Ingredient_Master im ON ri.ingredient_id=im.ingredient_id",
        "   SET ri.unit = im.base_unit WHERE ri.unit <> im.base_unit;",
    ]
    OUT.write_text("\n".join(lines) + "\n", encoding="utf-8")

    total_ri = sum(len(v) for v in ri_set.values())
    print(f"recipes matched to raw : {recipes_seen_raw}/{len(recipes)}")
    print(f"rows to update         : {len(fixes)}/{total_ri} ({len(fixes)*100//total_ri}%)")
    print(f"  -> essential=TRUE    : {sum(1 for v in fixes.values() if v[1])}")
    print(f"written: {OUT}")


if __name__ == "__main__":
    main()
