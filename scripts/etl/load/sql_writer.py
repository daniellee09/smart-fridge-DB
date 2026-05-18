"""04~07 SQL INSERT 파일 생성."""
import logging
from pathlib import Path

from ..config import DB_DIR, REAL_RECIPE_ID_START

logger = logging.getLogger(__name__)

_HEADER = """\
-- 데이터 출처: 식품의약품안전처 조리식품의 레시피 DB (COOKRCP01), 공공누리 1유형
-- 생성: scripts/etl/load/sql_writer.py
-- recipe_id >= {start} 은 실데이터 (1~{prev}는 시연 더미 보존)

USE smart_fridge;
"""

_RESET_BLOCK = """\
-- --reset 옵션 실행 시 이 블록으로 기존 실데이터 삭제 후 재적재 (멱등성)
-- SET FOREIGN_KEY_CHECKS = 0;
-- DELETE FROM Cook_History WHERE recipe_id >= {start};
-- DELETE FROM Recipe_Ingredient WHERE recipe_id >= {start};
-- DELETE FROM Recipe WHERE recipe_id >= {start};
-- SET FOREIGN_KEY_CHECKS = 1;

"""


def _escape(s: str) -> str:
    return s.replace("'", "''").replace("\\", "\\\\")


def write_categories(new_categories: list[dict], path: Path | None = None):
    """04_categories_ext.sql 생성.

    new_categories: [{"category_name": str, "parent_id": int|None, "default_days": int}]
    """
    path = path or DB_DIR / "04_categories_ext.sql"
    lines = [_HEADER.format(start=REAL_RECIPE_ID_START, prev=REAL_RECIPE_ID_START - 1)]
    lines.append("-- 신규 카테고리 (≤3개, 손유경 검토 후 적용)\n")

    for cat in new_categories:
        parent = f"'{cat['parent_id']}'" if cat.get("parent_id") else "NULL"
        days = cat.get("default_days", 7)
        lines.append(
            f"INSERT INTO Category (category_name, parent_id, default_days) "
            f"VALUES ('{_escape(cat['category_name'])}', {parent}, {days});\n"
        )

    path.write_text("".join(lines), encoding="utf-8")
    logger.info("생성: %s (%d개 카테고리)", path, len(new_categories))


def write_ingredients(new_ingredients: list[dict], path: Path | None = None):
    """05_ingredients_ext.sql 생성.

    new_ingredients: [{"ingredient_name": str, "category_id": int, "base_unit": str}]
    """
    path = path or DB_DIR / "05_ingredients_ext.sql"
    lines = [_HEADER.format(start=REAL_RECIPE_ID_START, prev=REAL_RECIPE_ID_START - 1)]
    lines.append("-- 신규 재료 마스터 (손유경 검토 후 적용)\n\n")

    for ing in new_ingredients:
        lines.append(
            f"INSERT INTO Ingredient_Master (ingredient_name, category_id, base_unit) "
            f"VALUES ('{_escape(ing['ingredient_name'])}', {ing['category_id']}, '{ing['base_unit']}');\n"
        )

    path.write_text("".join(lines), encoding="utf-8")
    logger.info("생성: %s (%d개 재료)", path, len(new_ingredients))


def write_units(unit_conversions: list[dict], path: Path | None = None):
    """06_units_ext.sql 생성.

    unit_conversions: [{"ingredient_id": int, "user_unit": str, "convert_to_base": float}]
    """
    path = path or DB_DIR / "06_units_ext.sql"
    lines = [_HEADER.format(start=REAL_RECIPE_ID_START, prev=REAL_RECIPE_ID_START - 1)]
    lines.append("-- 신규 단위환산 (손유경 검토 후 적용)\n\n")

    for uc in unit_conversions:
        lines.append(
            f"INSERT INTO Unit_Conversion (ingredient_id, user_unit, convert_to_base) "
            f"VALUES ({uc['ingredient_id']}, '{_escape(uc['user_unit'])}', {uc['convert_to_base']});\n"
        )

    path.write_text("".join(lines), encoding="utf-8")
    logger.info("생성: %s (%d개 환산)", path, len(unit_conversions))


def write_recipes(recipes: list[dict], path: Path | None = None):
    """07_recipes_real.sql 생성.

    recipes: [{
        "recipe_name": str, "difficulty": str, "estimated_time": int, "description": str,
        "ingredients": [{"ingredient_id": int, "required_qty": float, "unit": str, "is_essential": bool}]
    }]
    """
    path = path or DB_DIR / "07_recipes_real.sql"
    lines = [
        _HEADER.format(start=REAL_RECIPE_ID_START, prev=REAL_RECIPE_ID_START - 1),
        _RESET_BLOCK.format(start=REAL_RECIPE_ID_START),
    ]

    recipe_id = REAL_RECIPE_ID_START
    for r in recipes:
        desc = _escape(r.get("description") or "")
        lines.append(
            f"INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) "
            f"VALUES ({recipe_id}, '{_escape(r['recipe_name'])}', '{r['difficulty']}', "
            f"{r['estimated_time']}, '{desc}');\n"
        )
        for ing in r["ingredients"]:
            essential = "TRUE" if ing["is_essential"] else "FALSE"
            unit = _escape(ing.get("unit") or "g")
            lines.append(
                f"INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) "
                f"VALUES ({recipe_id}, {ing['ingredient_id']}, {ing['required_qty']:.2f}, '{unit}', {essential});\n"
            )
        recipe_id += 1

    path.write_text("".join(lines), encoding="utf-8")
    logger.info("생성: %s (%d개 레시피, recipe_id %d~%d)", path, len(recipes), REAL_RECIPE_ID_START, recipe_id - 1)
