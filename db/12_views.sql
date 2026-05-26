-- 12_views.sql
-- 뷰를 활용한 접근 제어 (최종보고서 9.1절). 01_schema.sql 적용 이후 실행.
-- 내부 ID/원시 수량을 숨기고 사용자 친화적 형태로 냉장고 현황을 제공.
USE smart_fridge;

CREATE OR REPLACE VIEW v_fridge_status AS
SELECT im.ingredient_name AS 식재료명,
       mf.user_quantity   AS 보유량,
       mf.user_unit       AS 단위,
       mf.storage_type    AS 보관방법,
       mf.expire_date     AS 유통기한,
       DATEDIFF(mf.expire_date, CURRENT_DATE) AS 잔여일수
FROM My_Fridge mf
JOIN Ingredient_Master im ON mf.ingredient_id = im.ingredient_id
ORDER BY mf.expire_date ASC;
