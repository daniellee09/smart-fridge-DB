"""RCP_PARTS_DTLS 문자열 → 재료 목록 파싱."""
import re
from dataclasses import dataclass, field

# 단위 패턴 (긴 것 먼저 — 작은술이 술보다 먼저 매칭되도록)
# 주의: '장'은 제거 — 간장/된장/고추장의 마지막 글자와 혼동되어 '저염간장'→'저염간'+unit'장' 오파싱 발생
_UNIT_PAT = (
    r"큰술|작은술|T|t"
    r"|컵|cup"
    r"|kg|g|mg"
    r"|L|ml|cc"
    r"|개|모|봉|팩|마리|쪽|줄기|줌|꼬집|묶음|뭉치|덩어리|조각|토막|포|캔|병"
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
_BULLET_RE = re.compile(r"^[●◆◇○■□▶▷★☆※•·＊\*\-]+")
# 이름 정제: 끝의 ":" 또는 알파벳 한 글자(a~z) 제거 + HTML 태그
_TRAIL_JUNK_RE = re.compile(r"[\s:]+$|[a-z]$")
_HTML_RE = re.compile(r"<[^>]+>")
# 순수 수량 조각: "100g)", "150g", "200ml)" 처럼 숫자+단위만 남은 파싱 잔재
_QTY_FRAGMENT_RE = re.compile(r"^\d+\s*(?:g|ml|kg|cc|개|인분|번)?\)?$")
# 분량 머리말/곁들임 주석
_ANNOTATION_RE = re.compile(r"^\[.*?\]|^-\s*.*(곁들임|주석|고명)|^\d+인분\s*기준")


@dataclass
class ParsedIngredient:
    raw_name: str
    qty: float | None
    unit: str | None
    under_seasoning_section: bool = False
    alt_text: str | None = None


def _is_section_header(text: str) -> bool:
    t = text.strip()
    if _BULLET_RE.match(t):
        # 대시(-) 불릿 뒤에 실제 재료명이 올 수도 있으므로 곁들임/주석 키워드 없으면 통과
        rest = _BULLET_RE.sub("", t).strip()
        if any(kw in rest for kw in ("곁들임", "주석", "고명")):
            return True
        if _BULLET_RE.pattern.startswith(r"^[●◆"):
            return True  # 특수 불릿은 무조건 섹션
        # 단순 '-' 불릿: 길이 체크
        if len(rest) <= 8 and not any(c.isdigit() for c in rest) and "," not in rest:
            return True
        return False
    if any(kw in t for kw in _SECTION_KEYWORDS):
        return True
    return bool(_SECTION_RE.match(t)) and "," not in t and not any(c.isdigit() for c in t)


def _clean_name(name: str) -> str:
    """재료명 후처리: HTML·불릿·콜론·끝 알파벳 잔재 제거."""
    name = _HTML_RE.sub("", name)          # HTML 태그 제거
    name = _BULLET_RE.sub("", name).strip()
    name = _TRAIL_JUNK_RE.sub("", name).strip()
    return name


def _is_junk_fragment(name: str) -> bool:
    """파싱 과정에서 생기는 수량·주석 잔재 필터."""
    if not name:
        return True
    # 순수 수량 조각: "100g)", "250)", "50g" 등
    if _QTY_FRAGMENT_RE.match(name.replace(" ", "")):
        return True
    # 분량 머리말/곁들임 주석
    if _ANNOTATION_RE.match(name):
        return True
    # 괄호 열림 미닫힘 조각: '돼지고기(안심' 처럼 닫는 괄호가 없는 잘림
    # → 이름 내 미닫힌 '('가 있으면 의미 있는 재료명이 아님
    if name.count("(") > name.count(")"):
        return True
    return False


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


def _split_protecting_parens(text: str) -> list[str]:
    """콤마로 분리하되 ( ) 안의 콤마는 보호."""
    result = []
    depth = 0
    current: list[str] = []
    for ch in text:
        if ch == "(":
            depth += 1
            current.append(ch)
        elif ch == ")":
            if depth > 0:
                depth -= 1
            current.append(ch)
        elif ch == "," and depth == 0:
            part = "".join(current).strip()
            if part:
                result.append(part)
            current = []
        else:
            current.append(ch)
    part = "".join(current).strip()
    if part:
        result.append(part)
    return result


def parse(rcp_parts: str) -> list[ParsedIngredient]:
    """RCP_PARTS_DTLS 문자열을 ParsedIngredient 리스트로 변환."""
    results: list[ParsedIngredient] = []
    in_seasoning = False

    for line in rcp_parts.split("\n"):
        line = _HTML_RE.sub("", line).strip()  # HTML 태그 먼저 제거
        if not line:
            continue

        # 섹션 헤더 처리
        if _is_section_header(line):
            in_seasoning = any(kw in line for kw in _SECTION_KEYWORDS)
            continue

        # 괄호 보호 콤마 분리
        for item in _split_protecting_parens(line):
            item = item.strip()
            if not item:
                continue
            m = _ROW_RE.match(item)
            if not m:
                cleaned = _clean_name(item)
                if _is_junk_fragment(cleaned):
                    continue
                results.append(ParsedIngredient(
                    raw_name=cleaned,
                    qty=None,
                    unit=None,
                    under_seasoning_section=in_seasoning,
                ))
                continue
            cleaned_name = _clean_name(m.group("name"))
            if _is_junk_fragment(cleaned_name):
                continue
            results.append(ParsedIngredient(
                raw_name=cleaned_name,
                qty=_parse_qty(m.group("qty")),
                unit=m.group("unit"),
                under_seasoning_section=in_seasoning,
                alt_text=m.group("alt"),
            ))

    return results
