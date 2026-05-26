-- 11_indexes.sql
-- 인덱스 전략 (최종보고서 6.3절). 01_schema.sql 적용 이후 실행.
USE smart_fridge;

-- 냉장고: 유통기한 오름차순 조회(FR-04) 가속
CREATE INDEX idx_myfridge_expire     ON My_Fridge(expire_date ASC);
CREATE INDEX idx_myfridge_ingredient ON My_Fridge(ingredient_id);

-- 레시피-재료 조인(추천/상세 쿼리) 가속
CREATE INDEX idx_ri_recipe     ON Recipe_Ingredient(recipe_id);
CREATE INDEX idx_ri_ingredient ON Recipe_Ingredient(ingredient_id);

-- 요리 이력: 레시피별 조회 및 최신순 정렬(FR-13) 가속
CREATE INDEX idx_cookhistory_recipe ON Cook_History(recipe_id);
CREATE INDEX idx_cookhistory_cooked ON Cook_History(cooked_at DESC);
