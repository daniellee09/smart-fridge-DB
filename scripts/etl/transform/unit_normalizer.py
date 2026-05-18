"""파싱된 수량·단위 → base_unit(g 또는 ml) 환산."""
import json
from pathlib import Path

from ..config import DICT_DIR

_unit_table: dict[str, dict] | None = None
_vague_table: dict[str, dict] | None = None


def _load():
    global _unit_table, _vague_table
    if _unit_table is None:
        _unit_table = json.loads((DICT_DIR / "unit_table.json").read_text(encoding="utf-8"))
    if _vague_table is None:
        _vague_table = json.loads((DICT_DIR / "vague_qty.json").read_text(encoding="utf-8"))


def normalize(qty: float | None, unit: str | None, base_unit: str) -> tuple[float | None, bool]:
    """(환산된 수량, is_vague) 반환.

    is_vague=True면 '약간'/'적당량' 등 모호 수량 → is_essential=FALSE 처리.
    """
    _load()

    # 수량 없음 → vague
    if qty is None:
        vague_default = _vague_table.get("기본", {})
        return vague_default.get("value"), True

    if unit is None:
        # 단위 없음 → 개수 표현(개, 마리 등)이거나 그냥 숫자
        return qty, False

    # vague 단위 확인 (약간, 적당량 등은 unit에 들어올 수 없지만 qty=None으로 처리됨)
    if unit in _vague_table:
        entry = _vague_table[unit]
        return entry.get("value"), True

    # unit_table 환산
    entry = _unit_table.get(unit)
    if not entry:
        return qty, False

    to_g = entry.get("to_g")
    to_ml = entry.get("to_ml")

    if base_unit == "g" and to_g is not None:
        return qty * to_g, False
    if base_unit == "ml" and to_ml is not None:
        return qty * to_ml, False
    if to_g is not None:
        return qty * to_g, False
    if to_ml is not None:
        return qty * to_ml, False

    return qty, False
