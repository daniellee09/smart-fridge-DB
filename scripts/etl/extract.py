"""COOKRCP01 API 호출 + 디스크 캐시."""
import json
import logging
from pathlib import Path

import requests

from .config import COOKRCP01_URL, DATA_RAW_DIR

logger = logging.getLogger(__name__)

CACHE_FILE = DATA_RAW_DIR / "cookrcp01_full.json"
PAGE_SIZE = 1000


def fetch_all(force: bool = False) -> list[dict]:
    """전체 레시피를 가져온다. 캐시가 있으면 재사용(force=True면 강제 재요청)."""
    if not force and CACHE_FILE.exists():
        logger.info("캐시 사용: %s", CACHE_FILE)
        return json.loads(CACHE_FILE.read_text(encoding="utf-8"))

    records = []
    start = 1
    while True:
        end = start + PAGE_SIZE - 1
        url = f"{COOKRCP01_URL}/{start}/{end}"
        logger.info("API 요청: %s", url)
        resp = requests.get(url, timeout=30)
        resp.raise_for_status()
        data = resp.json()

        # sample 키는 COOKRCP01 최상위 키가 다름
        root = data.get("COOKRCP01") or data.get("cookrcp01") or {}
        rows = root.get("row", [])
        total = int(root.get("total_count", len(rows)))

        records.extend(rows)
        logger.info("수집: %d / %d", len(records), total)

        if len(records) >= total or not rows:
            break
        start += PAGE_SIZE

    CACHE_FILE.write_text(json.dumps(records, ensure_ascii=False, indent=2), encoding="utf-8")
    logger.info("캐시 저장: %s (%d건)", CACHE_FILE, len(records))
    return records


def filter_korean(records: list[dict]) -> list[dict]:
    """RCP_PAT2(요리 종류) 기준으로 한식·대중식만 남긴다.

    sample 키(5건)는 필터 없이 전부 반환.
    """
    from .config import CATEGORY_WHITELIST
    if not records:
        return records
    # 전체 RCP_PAT2 종류 확인 (디버깅 용)
    cats = {r.get("RCP_PAT2", "") for r in records}
    logger.debug("RCP_PAT2 종류: %s", cats)

    filtered = [r for r in records if r.get("RCP_PAT2", "") in CATEGORY_WHITELIST]
    logger.info("필터 후: %d / %d건", len(filtered), len(records))
    # sample 키라 필터 결과가 0이면 전부 반환 (개발 편의)
    return filtered if filtered else records
