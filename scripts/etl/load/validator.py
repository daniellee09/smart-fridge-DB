"""적재 후 6개 게이트 검증 쿼리."""
import logging

from ..config import DB_CONFIG, REAL_RECIPE_ID_START

logger = logging.getLogger(__name__)


def _get_conn():
    try:
        import mysql.connector
        return mysql.connector.connect(**DB_CONFIG)
    except ImportError:
        raise RuntimeError(
            "mysql-connector-python 미설치. pip install mysql-connector-python 후 재시도"
        )


def run_all() -> bool:
    """모든 검증 통과 시 True, 실패 항목 있으면 False."""
    conn = _get_conn()
    cur = conn.cursor()
    ok = True
    start = REAL_RECIPE_ID_START

    checks = [
        (
            "FK 무결성",
            f"""SELECT COUNT(*) FROM Recipe_Ingredient ri
                LEFT JOIN Ingredient_Master im ON ri.ingredient_id = im.ingredient_id
                WHERE im.ingredient_id IS NULL""",
            lambda n: n == 0,
            "Recipe_Ingredient에 FK 깨진 재료 있음",
        ),
        (
            "필수재료 0개 레시피",
            f"""SELECT COUNT(*) FROM (
                SELECT r.recipe_id FROM Recipe r
                LEFT JOIN Recipe_Ingredient ri ON r.recipe_id = ri.recipe_id AND ri.is_essential = TRUE
                WHERE r.recipe_id >= {start}
                GROUP BY r.recipe_id HAVING COUNT(ri.recipe_ingredient_id) = 0
            ) sub""",
            lambda n: n == 0,
            "필수 재료가 없는 레시피 존재 → 추천에서 영구 누락",
        ),
        (
            "필수재료 7개 이상 레시피",
            f"""SELECT COUNT(*) FROM (
                SELECT recipe_id FROM Recipe_Ingredient
                WHERE is_essential = TRUE AND recipe_id >= {start}
                GROUP BY recipe_id HAVING COUNT(*) >= 7
            ) sub""",
            lambda n: n == 0,
            "is_essential=TRUE가 7개 이상인 레시피 존재 → 휴리스틱 확인 필요",
        ),
        (
            "비현실적 수량",
            f"""SELECT COUNT(*) FROM Recipe_Ingredient ri
                JOIN Ingredient_Master im ON ri.ingredient_id = im.ingredient_id
                WHERE ri.recipe_id >= {start}
                AND (
                    (im.ingredient_name IN ('소금','후추','깨소금') AND ri.required_qty > 20)
                    OR (im.ingredient_name IN ('고추장','된장','간장') AND ri.required_qty > 200)
                    OR ri.required_qty <= 0
                )""",
            lambda n: n == 0,
            "비현실적 수량(소금>20g, 간장>200ml, qty<=0) 존재",
        ),
        (
            "NULL 점검",
            f"""SELECT COUNT(*) FROM Recipe
                WHERE recipe_id >= {start}
                AND (description IS NULL OR estimated_time IS NULL)""",
            lambda n: n == 0,
            "description 또는 estimated_time이 NULL인 레시피 존재",
        ),
        (
            "시연 추천 ≥5건",
            f"""SELECT COUNT(*) FROM (
                SELECT r.recipe_id FROM Recipe r
                JOIN Recipe_Ingredient ri ON r.recipe_id = ri.recipe_id
                LEFT JOIN My_Fridge f ON ri.ingredient_id = f.ingredient_id
                                     AND f.quantity >= ri.required_qty
                WHERE ri.is_essential = TRUE
                GROUP BY r.recipe_id HAVING COUNT(f.fridge_item_id) = COUNT(ri.ingredient_id)
            ) sub""",
            lambda n: n >= 5,
            "더미 냉장고 기준 추천 가능 레시피 5건 미만 → synonyms 보강 필요",
        ),
    ]

    for name, sql, pred, err_msg in checks:
        cur.execute(sql)
        (n,) = cur.fetchone()
        if pred(n):
            logger.info("✅ %s: %s", name, n)
        else:
            logger.error("❌ %s: %s → %s", name, n, err_msg)
            ok = False

    cur.close()
    conn.close()
    return ok
