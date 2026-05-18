"""ETL 파이프라인 단일 진입점.

사용법:
    python -m scripts.etl.pipeline              # 일반 실행
    python -m scripts.etl.pipeline --reset      # recipe_id>=11 삭제 후 재적재
    python -m scripts.etl.pipeline --force-fetch  # API 재요청 (캐시 무시)
    python -m scripts.etl.pipeline --dry-run    # SQL 생성만, DB 미적재
"""
import argparse
import json
import logging
import re
from collections import Counter

from .config import DATA_PROCESSED_DIR, REAL_RECIPE_ID_START, MIN_INGREDIENT_FREQ
from .extract import fetch_all, filter_korean
from .transform.parse_ingredients import parse as parse_ingredients
from .transform.ingredient_matcher import IngredientMatcher
from .transform.unit_normalizer import normalize as normalize_unit
from .transform.essential_classifier import classify as classify_essential
from .transform.difficulty_estimator import estimate as estimate_difficulty
from .transform.category_assigner import assign as assign_category
from .load import sql_writer

logging.basicConfig(level=logging.INFO, format="%(levelname)s %(message)s")
logger = logging.getLogger(__name__)

# 더미 데이터 ingredient_id 범위 (03_dummy_data.sql 기반)
DUMMY_INGREDIENT_ID_MAX = 46

# 양념 계열 category_id (03_dummy_data.sql 기반: 5=양념류)
SEASONING_CATEGORY_IDS = {5}


def _load_dummy_master() -> list[dict]:
    """03_dummy_data.sql에서 Ingredient_Master를 파싱.

    멀티-value INSERT 형식 + ingredient_id AUTO_INCREMENT (컬럼 미포함).
    실제 DB 연결 없이 SQL 텍스트 파싱 (로컬 DB 미실행 환경 지원).
    """
    import re
    from .config import DB_DIR

    sql = (DB_DIR / "03_dummy_data.sql").read_text(encoding="utf-8")

    # INSERT INTO Ingredient_Master (...) VALUES ... ; 블록 추출
    block_m = re.search(
        r"INSERT INTO Ingredient_Master\s*\([^)]+\)\s*VALUES\s*([\s\S]+?);",
        sql,
        re.IGNORECASE,
    )
    if not block_m:
        logger.warning("Ingredient_Master INSERT 블록을 찾을 수 없음")
        return []

    # 각 row: ('name', category_id, 'unit')
    row_re = re.compile(r"\('([^']+)',\s*(\d+),\s*'([^']+)'\)")
    rows = []
    for i, m in enumerate(row_re.finditer(block_m.group(1)), start=1):
        rows.append({
            "ingredient_id": i,
            "ingredient_name": m.group(1),
            "category_id": int(m.group(2)),
            "base_unit": m.group(3),
        })

    logger.info("더미 마스터 로드: %d개 재료", len(rows))
    return rows


_STEP_JUNK_RE = re.compile(r"^\d+\.\s*|[a-zA-Z]\s*$")


def _build_description(record: dict) -> str:
    steps = []
    for i in range(1, 21):
        key = f"MANUAL{i:02d}"
        text = (record.get(key) or "").strip()
        if text:
            text = _STEP_JUNK_RE.sub("", text).strip()
            if text:
                steps.append(f"[단계 {len(steps)+1}] {text}")
    return "\n".join(steps)[:60000]


def run(reset: bool = False, force_fetch: bool = False, dry_run: bool = False):
    # 1. Extract
    raw = fetch_all(force=force_fetch)
    records = filter_korean(raw)
    logger.info("처리 대상: %d건", len(records))

    # 2. 기존 마스터 로드
    master = _load_dummy_master()
    matcher = IngredientMatcher(master)

    # 신규 재료 빈도 카운터
    new_ingredient_counter: Counter = Counter()
    new_ingredient_info: dict[str, dict] = {}

    # 1차 패스: 신규 재료 빈도 집계
    for record in records:
        parts_raw = record.get("RCP_PARTS_DTLS", "")
        for pi in parse_ingredients(parts_raw):
            result = matcher.match(pi.raw_name)
            if result.method == "unmatched":
                new_ingredient_counter[pi.raw_name] += 1
                if pi.raw_name not in new_ingredient_info:
                    new_ingredient_info[pi.raw_name] = {
                        "ingredient_name": pi.raw_name,
                        "category_id": assign_category(pi.raw_name),
                        "base_unit": pi.unit or "g",
                    }

    # 빈도 컷오프 적용하여 신규 재료 확정
    new_ingredients = [
        new_ingredient_info[name]
        for name, cnt in new_ingredient_counter.items()
        if cnt >= MIN_INGREDIENT_FREQ
    ]
    logger.info("신규 재료 (빈도≥%d): %d개", MIN_INGREDIENT_FREQ, len(new_ingredients))

    # 신규 재료를 임시 ID로 마스터에 추가 (DUMMY_INGREDIENT_ID_MAX+1~)
    temp_id = DUMMY_INGREDIENT_ID_MAX + 1
    for ing in new_ingredients:
        ing["ingredient_id"] = temp_id
        master.append({
            "ingredient_id": temp_id,
            "ingredient_name": ing["ingredient_name"],
            "category_id": ing["category_id"],
            "base_unit": ing["base_unit"],
        })
        temp_id += 1

    # 매처 재초기화 (신규 재료 반영)
    matcher = IngredientMatcher(master)

    # 2차 패스: 레시피 변환
    final_recipes = []
    seen_signatures: set[str] = set()

    for record in records:
        name = (record.get("RCP_NM") or "").strip()
        if not name:
            continue

        parts_raw = record.get("RCP_PARTS_DTLS", "")
        parsed = parse_ingredients(parts_raw)
        manual_texts = [record.get(f"MANUAL{i:02d}", "") or "" for i in range(1, 21)]

        ingredients_out = []
        for pi in parsed:
            result = matcher.match(pi.raw_name)
            if result.ingredient_id is None:
                continue  # 빈도 미달 → 스킵

            master_row = next((r for r in master if r["ingredient_id"] == result.ingredient_id), None)
            base_unit = master_row["base_unit"] if master_row else "g"

            qty_norm, is_vague = normalize_unit(pi.qty, pi.unit, base_unit)
            if qty_norm is None:
                qty_norm = 1.0

            is_essential = classify_essential(
                ingredient_name=result.ingredient_name,
                category_id=master_row["category_id"] if master_row else None,
                is_vague=is_vague,
                under_seasoning_section=pi.under_seasoning_section,
                seasoning_category_ids=SEASONING_CATEGORY_IDS,
            )

            ingredients_out.append({
                "ingredient_id": result.ingredient_id,
                "ingredient_name": result.ingredient_name,
                "required_qty": round(qty_norm, 2),
                "unit": base_unit,
                "is_essential": is_essential,
            })

        if not ingredients_out:
            continue

        # 중복 체크 (레시피명 + 필수재료 시그니처)
        essential_ids = sorted(str(i["ingredient_id"]) for i in ingredients_out if i["is_essential"])
        sig = f"{name}|{','.join(essential_ids)}"
        if sig in seen_signatures:
            continue
        seen_signatures.add(sig)

        difficulty, est_time = estimate_difficulty(len(ingredients_out), manual_texts)

        final_recipes.append({
            "recipe_name": name,
            "difficulty": difficulty,
            "estimated_time": est_time,
            "description": _build_description(record),
            "ingredients": ingredients_out,
        })

    logger.info("최종 레시피: %d건", len(final_recipes))

    # unmatched CSV 저장
    matcher.save_unmatched()

    # 중간 결과 저장
    out_path = DATA_PROCESSED_DIR / "final_recipes.jsonl"
    with open(out_path, "w", encoding="utf-8") as f:
        for r in final_recipes:
            f.write(json.dumps(r, ensure_ascii=False) + "\n")
    logger.info("중간 결과: %s", out_path)

    if dry_run:
        logger.info("--dry-run: SQL 생성 건너뜀")
        return

    # SQL 생성
    sql_writer.write_ingredients(new_ingredients)
    sql_writer.write_recipes(final_recipes)
    logger.info("완료. db/05_ingredients_ext.sql, db/07_recipes_real.sql 생성됨")
    logger.info("※ 카테고리·단위환산은 필요 시 04/06 파일을 수동 작성 후 손유경에게 전달")


def main():
    parser = argparse.ArgumentParser(description="Smart-Fridge ETL Pipeline")
    parser.add_argument("--reset", action="store_true", help="recipe_id>=11 삭제 후 재적재")
    parser.add_argument("--force-fetch", action="store_true", help="API 재요청 (캐시 무시)")
    parser.add_argument("--dry-run", action="store_true", help="SQL 생성만, DB 미적재")
    args = parser.parse_args()
    run(reset=args.reset, force_fetch=args.force_fetch, dry_run=args.dry_run)


if __name__ == "__main__":
    main()
