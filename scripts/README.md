# ETL 파이프라인 — 실데이터 적재 가이드

식약처 COOKRCP01 API → MariaDB 적재 스크립트.

**데이터 출처**: 식품의약품안전처 조리식품의 레시피 DB (공공누리 1유형)

---

## 1. 사전 준비

```bash
cd scripts
pip install -r requirements.txt

# .env 파일 생성
cp .env.example .env
# .env 열어서 FOODSAFETY_API_KEY 입력
# DB_PASSWORD도 실제 값으로 변경
```

API 키 발급: https://www.foodsafetykorea.go.kr/api/openApiInfo.do (COOKRCP01 서비스 신청)  
발급 전에는 `FOODSAFETY_API_KEY=sample` (5건 한정 테스트 가능)

---

## 2. 실행

프로젝트 루트에서 실행:

```bash
# 일반 실행 (캐시 있으면 재사용)
python -m scripts.etl.pipeline

# SQL만 생성 (DB 미적재)
python -m scripts.etl.pipeline --dry-run

# API 재요청 (캐시 무시)
python -m scripts.etl.pipeline --force-fetch

# 재적재 (recipe_id>=11 삭제 후 재삽입)
python -m scripts.etl.pipeline --reset
```

---

## 3. 산출물

| 파일 | 설명 |
|---|---|
| `scripts/data/raw/cookrcp01_full.json` | API 원본 캐시 (gitignored) |
| `scripts/data/processed/final_recipes.jsonl` | 변환 결과 중간 파일 |
| `scripts/data/processed/unmatched_ingredients.csv` | 수동 검토 큐 |
| `db/05_ingredients_ext.sql` | 신규 재료 INSERT (손유경 검토) |
| `db/07_recipes_real.sql` | Recipe + Recipe_Ingredient INSERT |

---

## 4. DB 적재 순서

```bash
# 한글 깨짐 방지를 위해 --default-character-set=utf8mb4 필수
mariadb -u root -p<pw> -P 3307 --default-character-set=utf8mb4 \
  -e "source E:/projects/smart-fridge-db/db/05_ingredients_ext.sql"

mariadb -u root -p<pw> -P 3307 --default-character-set=utf8mb4 \
  -e "source E:/projects/smart-fridge-db/db/07_recipes_real.sql"
```

카테고리 신설이 필요한 경우: `04_categories_ext.sql` → 먼저 적재  
단위환산 추가가 필요한 경우: `06_units_ext.sql` → 05 다음에 적재

---

## 5. 수동 검토 프로세스 (Step 4)

`unmatched_ingredients.csv`에 쌓인 재료들을 검토:

1. `suggested_id` 열에 기존 재료 ID를 적으면 → `dict/synonyms.json`에 추가
2. 비워두면 → 신규 재료로 자동 등록 (빈도 ≥2 조건 충족 시)
3. 검토 후 `python -m scripts.etl.pipeline --force-fetch` 재실행

---

## 6. 디렉토리 구조

```
scripts/
├── etl/
│   ├── config.py              환경·경로·상수
│   ├── extract.py             API 호출 + 캐시
│   ├── pipeline.py            단일 진입점
│   ├── transform/
│   │   ├── parse_ingredients.py
│   │   ├── ingredient_matcher.py
│   │   ├── unit_normalizer.py
│   │   ├── essential_classifier.py
│   │   ├── difficulty_estimator.py
│   │   └── category_assigner.py
│   └── load/
│       ├── sql_writer.py
│       └── validator.py
├── dict/
│   ├── synonyms.json          재료 별칭 사전 (수동 관리)
│   ├── unit_table.json        단위 환산표
│   ├── vague_qty.json         약간·적당량 기본값
│   ├── seasoning_keywords.json is_essential=FALSE 판정 키워드
│   └── category_rules.json   재료명 → category_id 매핑
├── data/
│   ├── raw/                   API 원본 캐시 (gitignored)
│   ├── processed/             중간 산출물
│   └── reports/               적재 리포트 (gitignored)
├── .env.example
├── .env                       (gitignored)
└── requirements.txt
```
