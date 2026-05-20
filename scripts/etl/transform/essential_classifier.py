"""is_essential 판정."""
import json

from ..config import DICT_DIR

_seasoning_keywords: list[str] | None = None


def _load():
    global _seasoning_keywords
    if _seasoning_keywords is None:
        _seasoning_keywords = json.loads(
            (DICT_DIR / "seasoning_keywords.json").read_text(encoding="utf-8")
        )


def classify(
    ingredient_name: str,
    category_id: int | None,
    is_vague: bool,
    under_seasoning_section: bool,
    seasoning_category_ids: set[int] | None = None,
) -> bool:
    """True = 필수 재료, False = 양념·부재료."""
    _load()

    # 1. 모호 수량 → 비필수
    if is_vague:
        return False

    # 2. 섹션 헤더 하위 → 비필수
    if under_seasoning_section:
        return False

    # 3. 양념 카테고리 → 비필수
    if seasoning_category_ids and category_id in seasoning_category_ids:
        return False

    # 4. 양념 키워드 → 비필수
    name_lower = ingredient_name.replace(" ", "")
    if any(kw in name_lower for kw in _seasoning_keywords):
        return False

    return True
