"""신규 재료의 category_id 결정."""
import json

from ..config import DICT_DIR

_rules: list[dict] | None = None


def _load():
    global _rules
    if _rules is None:
        _rules = json.loads((DICT_DIR / "category_rules.json").read_text(encoding="utf-8"))


def assign(ingredient_name: str, default_category_id: int = 1) -> int:
    """ingredient_name에 매핑되는 category_id 반환. 매칭 없으면 default."""
    _load()
    name = ingredient_name.replace(" ", "")
    for rule in _rules:
        if any(kw in name for kw in rule["keywords"]):
            return rule["category_id"]
    return default_category_id
