"""레시피 난이도 휴리스틱 추정."""
import re

from ..config import DIFFICULTY_EASY_MAX, DIFFICULTY_MEDIUM_MAX

_TIME_RE = re.compile(r"(\d+)\s*분")


def extract_time(manual_texts: list[str]) -> int:
    """MANUAL01~20 텍스트에서 첫 번째 분 단위 시간 추출. 없으면 단계 수 × 5."""
    for text in manual_texts:
        m = _TIME_RE.search(text or "")
        if m:
            return int(m.group(1))
    return len([t for t in manual_texts if t]) * 5


def estimate(num_ingredients: int, manual_texts: list[str]) -> tuple[str, int]:
    """(difficulty, estimated_time_minutes) 반환."""
    num_steps = len([t for t in manual_texts if t])
    est_time = extract_time(manual_texts)

    score = num_ingredients * 1.0 + num_steps * 0.8 + (est_time / 10)

    if score < DIFFICULTY_EASY_MAX:
        difficulty = "easy"
    elif score < DIFFICULTY_MEDIUM_MAX:
        difficulty = "medium"
    else:
        difficulty = "hard"

    return difficulty, est_time
