import os
from pathlib import Path
from dotenv import load_dotenv

BASE_DIR = Path(__file__).resolve().parents[2]
SCRIPTS_DIR = BASE_DIR / "scripts"
DICT_DIR = SCRIPTS_DIR / "dict"
DATA_RAW_DIR = SCRIPTS_DIR / "data" / "raw"
DATA_PROCESSED_DIR = SCRIPTS_DIR / "data" / "processed"
DATA_REPORTS_DIR = SCRIPTS_DIR / "data" / "reports"
DB_DIR = BASE_DIR / "db"

for d in (DATA_RAW_DIR, DATA_PROCESSED_DIR, DATA_REPORTS_DIR):
    d.mkdir(parents=True, exist_ok=True)

load_dotenv(SCRIPTS_DIR / ".env")

API_KEY = os.getenv("FOODSAFETY_API_KEY", "sample")
COOKRCP01_URL = f"http://openapi.foodsafetykorea.go.kr/api/{API_KEY}/COOKRCP01/json"

DB_CONFIG = {
    "host": os.getenv("DB_HOST", "localhost"),
    "port": int(os.getenv("DB_PORT", 3307)),
    "database": os.getenv("DB_NAME", "smart_fridge"),
    "user": os.getenv("DB_USER", "root"),
    "password": os.getenv("DB_PASSWORD", ""),
}

# recipe_id >= 11 부터 실데이터 적재 (1~10은 시연 더미 보존)
REAL_RECIPE_ID_START = 11

# 새 재료 등록 최소 등장 빈도 (1회만 나오는 재료는 synonym으로 흡수)
MIN_INGREDIENT_FREQ = 2

# is_essential 판정에서 필수 재료로 인정하는 최대 수 (이 이상이면 휴리스틱 경고)
ESSENTIAL_COUNT_WARN = 7

# 퍼지 매칭 임계값
FUZZY_THRESHOLD = 88

# difficulty 휴리스틱 경계값
DIFFICULTY_EASY_MAX = 12
DIFFICULTY_MEDIUM_MAX = 22

# 한식·대중식 화이트리스트 (RCP_PAT2 기준)
CATEGORY_WHITELIST = {"한식", "밥", "국·탕", "찌개", "반찬", "김치", "면·만두", "볶음", "구이", "조림", "튀김", "찜", "전·적", "기타"}
