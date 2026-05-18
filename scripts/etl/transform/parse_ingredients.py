"""RCP_PARTS_DTLS 문자열 → 재료 목록 파싱."""
import re
from dataclasses import dataclass, field

# 단위 패턴 (긴 것 먼저 — 작은술이 술보다 먼저 매칭되도록)
_UNIT_PAT = (
    r"큰술|작은술|T|t"
    r"|컵|cup"
    r"|kg|g|mg"
    r"|L|ml|cc"
    r"|개|모|봉|팩|마리|쪽|장|줄기|줌|꼬집|묶음|뭉치|덩어리|조각|토막|포|캔|병"
)
_ROW_RE = re.compile(
    r"^(?P<name>[가-힣A-Za-z()·\s]+?)"
    r"\s*(?P<qty>[\d]+(?:[./][\d]+)?)?"
    r"\s*(?P<unit>" + _UNIT_PAT + r")?"
    r"\s*(?:\((?P<alt>[^)]+)\))?\s*$"
)

# 섹션 헤더 판정: 콤마·숫자가 없고 8글자 이하
_SECTION_RE = re.compile(r"^[가-힣A-Za-z\s]{1,8}$")
_SECTION_KEYWORDS = {"양념", "양념장", "고명", "소스", "반죽", "육수", "기타재료", "재료"}
# 불릿·특수기호 접두어 (API 원본의 섹션 구분자)
_BULLET_RE = re.compile(r"^[●◆◇○■□▶▷★☆※•·＊\*]+")
# 이름 정제: 끝의 ":" 또는 알파벳 한 글자(a~z) 제거
_TRAIL_JUNK_RE = re.compile(r"[\s:]+$|[a-z]$")


@dataclass
class ParsedIngredient:
    raw_name: str
    qty: float | None
    unit: str | None
    under_seasoning_section: bool = False
    alt_text: str | None = None


def _is_section_header(text: str) -> bool:
    t = text.strip()
    # 불릿 접두어가 있으면 섹션 헤더
    if _BULLET_RE.match(t):
        return True
    if any(kw in t for kw in _SECTION_KEYWORDS):
        return True
    return bool(_SECTION_RE.match(t)) and "," not in t and not any(c.isdigit() for c in t)


def _clean_name(name: str) -> str:
    """재료명 후처리: 불릿·콜론·끝 알파벳 잔재 제거."""
    name = _BULLET_RE.sub("", name).strip()
    name = _TRAIL_JUNK_RE.sub("", name).strip()
    return name


def _parse_qty(raw: str | None) -> float | None:
    if not raw:
        return None
    try:
        if "/" in raw:
            num, den = raw.split("/", 1)
            return float(num) / float(den)
        return float(raw)
    except ValueError:
        return None


def parse(rcp_parts: str) -> list[ParsedIngredient]:
    """RCP_PARTS_DTLS 문자열을 ParsedIngredient 리스트로 변환."""
    results: list[ParsedIngredient] = []
    in_seasoning = False

    for line in rcp_parts.split("\n"):
        line = line.strip()
        if not line:
            continue

        # 섹션 헤더 처리
        if _is_section_header(line):
            in_seasoning = any(kw in line for kw in _SECTION_KEYWORDS)
            continue

        # 콤마 분리 후 각 항목 파싱
        for item in line.split(","):
            item = item.strip()
            if not item:
                continue
            m = _ROW_RE.match(item)
            if not m:
                cleaned = _clean_name(item)
                if not cleaned:
                    continue
                results.append(ParsedIngredient(
                    raw_name=cleaned,
                    qty=None,
                    unit=None,
                    under_seasoning_section=in_seasoning,
                ))
                continue
            cleaned_name = _clean_name(m.group("name"))
            if not cleaned_name:
                continue
            results.append(ParsedIngredient(
                raw_name=cleaned_name,
                qty=_parse_qty(m.group("qty")),
                unit=m.group("unit"),
                under_seasoning_section=in_seasoning,
                alt_text=m.group("alt"),
            ))

    return results
