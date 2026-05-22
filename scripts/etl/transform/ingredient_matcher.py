"""3-tier 재료 매칭: exact → synonym → substring → fuzzy."""
import csv
import json
import logging
from dataclasses import dataclass
from pathlib import Path

from rapidfuzz import fuzz

from ..config import DICT_DIR, DATA_PROCESSED_DIR, FUZZY_THRESHOLD

logger = logging.getLogger(__name__)


@dataclass
class MatchResult:
    ingredient_id: int | None
    ingredient_name: str
    confidence: float
    method: str  # exact / synonym / substring / fuzzy / unmatched


class IngredientMatcher:
    def __init__(self, master: list[dict]):
        """master: Ingredient_Master rows [{"ingredient_id": int, "ingredient_name": str, ...}]"""
        self._master = master
        self._synonyms: dict[str, str] = {}
        self._unmatched: list[dict] = []
        self._load_synonyms()

        # 정규화된 이름 → row 인덱스 맵
        self._name_map: dict[str, dict] = {
            self._normalize(r["ingredient_name"]): r for r in master
        }

    def _load_synonyms(self):
        path = DICT_DIR / "synonyms.json"
        if path.exists():
            self._synonyms = json.loads(path.read_text(encoding="utf-8"))

    @staticmethod
    def _normalize(name: str) -> str:
        return name.replace(" ", "").lower()

    def get_synonyms(self) -> dict[str, str]:
        """동의어 사전 반환 (파이프라인에서 대표명 수렴에 사용)."""
        return dict(self._synonyms)

    def match(self, raw_name: str) -> MatchResult:
        norm = self._normalize(raw_name)

        # 1. Exact
        if norm in self._name_map:
            row = self._name_map[norm]
            return MatchResult(row["ingredient_id"], row["ingredient_name"], 1.0, "exact")

        # 2. Synonym
        canonical = self._synonyms.get(raw_name) or self._synonyms.get(norm)
        if canonical:
            norm_c = self._normalize(canonical)
            if norm_c in self._name_map:
                row = self._name_map[norm_c]
                return MatchResult(row["ingredient_id"], row["ingredient_name"], 0.95, "synonym")

        # 3. Substring (파싱명이 마스터명을 포함하거나 역)
        for master_norm, row in self._name_map.items():
            if master_norm in norm or norm in master_norm:
                return MatchResult(row["ingredient_id"], row["ingredient_name"], 0.85, "substring")

        # 4. Fuzzy
        best_score = 0.0
        best_row = None
        for master_norm, row in self._name_map.items():
            score = fuzz.WRatio(norm, master_norm) / 100.0
            if score > best_score:
                best_score = score
                best_row = row
        if best_score >= FUZZY_THRESHOLD / 100.0 and best_row:
            return MatchResult(best_row["ingredient_id"], best_row["ingredient_name"], best_score, "fuzzy")

        # 5. Unmatched
        self._unmatched.append({"raw_name": raw_name, "normalized": norm})
        return MatchResult(None, raw_name, 0.0, "unmatched")

    def save_unmatched(self):
        if not self._unmatched:
            return
        out = DATA_PROCESSED_DIR / "unmatched_ingredients.csv"
        existing = set()
        if out.exists():
            with open(out, encoding="utf-8", newline="") as f:
                existing = {row["raw_name"] for row in csv.DictReader(f)}

        new_rows = [r for r in self._unmatched if r["raw_name"] not in existing]
        if not new_rows:
            return

        write_header = not out.exists()
        with open(out, "a", encoding="utf-8", newline="") as f:
            writer = csv.DictWriter(f, fieldnames=["raw_name", "normalized", "suggested_id", "note"])
            if write_header:
                writer.writeheader()
            for row in new_rows:
                writer.writerow({"raw_name": row["raw_name"], "normalized": row["normalized"],
                                 "suggested_id": "", "note": ""})
        logger.info("unmatched CSV 저장: %d건 추가 → %s", len(new_rows), out)
