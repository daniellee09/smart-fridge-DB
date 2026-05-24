-- db/08_data_cleanup.sql
-- 03+05+07 적재 후 한 번만 실행. ID 기준으로 작성하여 멱등성 보장 (없는 행 삭제 → 0 rows affected).
-- 적용: mariadb -u root -p<pw> -P 3307 --default-character-set=utf8mb4 -e "source <절대경로>/db/08_data_cleanup.sql"
USE smart_fridge;
SET FOREIGN_KEY_CHECKS = 0;

-- ═══════════════════════════════════════════════════════════════
-- STEP 1: 쓰레기·잘림 조각 처리
--   괄호 안 콤마 분리, HTML 잔재, 수량 잔재로 생긴 파싱 아티팩트.
--   의미 있는 재료로 병합 가능한 것은 FK 재지정 후 삭제,
--   아예 의미 없는 것은 모든 참조 제거.
-- ═══════════════════════════════════════════════════════════════

-- 돼지고기(안심 [131] → 제육용 돼지고기 [18]
UPDATE Recipe_Ingredient SET ingredient_id = 18  WHERE ingredient_id = 131;
UPDATE My_Fridge         SET ingredient_id = 18  WHERE ingredient_id = 131;
DELETE FROM Ingredient_Master WHERE ingredient_id = 131;

-- 물녹말(녹말가루 [185] → 녹말가루 [109]
UPDATE Recipe_Ingredient SET ingredient_id = 109 WHERE ingredient_id = 185;
UPDATE My_Fridge         SET ingredient_id = 109 WHERE ingredient_id = 185;
DELETE FROM Ingredient_Master WHERE ingredient_id = 185;

-- 닭고기(가슴살 [188] → 닭가슴살 [19]
UPDATE Recipe_Ingredient SET ingredient_id = 19  WHERE ingredient_id = 188;
UPDATE My_Fridge         SET ingredient_id = 19  WHERE ingredient_id = 188;
DELETE FROM Ingredient_Master WHERE ingredient_id = 188;

-- 소고기(홍두깨살 [195] → 소고기 국거리 [15]
UPDATE Recipe_Ingredient SET ingredient_id = 15  WHERE ingredient_id = 195;
UPDATE My_Fridge         SET ingredient_id = 15  WHERE ingredient_id = 195;
DELETE FROM Ingredient_Master WHERE ingredient_id = 195;

-- 연어(훈제연어 [244] → 연어 [167]
UPDATE Recipe_Ingredient SET ingredient_id = 167 WHERE ingredient_id = 244;
UPDATE My_Fridge         SET ingredient_id = 167 WHERE ingredient_id = 244;
DELETE FROM Ingredient_Master WHERE ingredient_id = 244;

-- 다시마(5×5c [316] → 다시마 [65]
UPDATE Recipe_Ingredient SET ingredient_id = 65  WHERE ingredient_id = 316;
UPDATE My_Fridge         SET ingredient_id = 65  WHERE ingredient_id = 316;
DELETE FROM Ingredient_Master WHERE ingredient_id = 316;

-- 파프리카(빨강 [322] → 홍파프리카 [177]
UPDATE Recipe_Ingredient SET ingredient_id = 177 WHERE ingredient_id = 322;
UPDATE My_Fridge         SET ingredient_id = 177 WHERE ingredient_id = 322;
DELETE FROM Ingredient_Master WHERE ingredient_id = 322;

-- 소고기(불고기용 [345] → 소고기 등심 [14]
UPDATE Recipe_Ingredient SET ingredient_id = 14  WHERE ingredient_id = 345;
UPDATE My_Fridge         SET ingredient_id = 14  WHERE ingredient_id = 345;
DELETE FROM Ingredient_Master WHERE ingredient_id = 345;

-- 저염간 [63], 저염 간 [224], 진간 [346] → 간장 [31]  ('장' 단위 오파싱으로 생긴 잔재)
UPDATE Recipe_Ingredient SET ingredient_id = 31  WHERE ingredient_id IN (63, 224, 346);
UPDATE My_Fridge         SET ingredient_id = 31  WHERE ingredient_id IN (63, 224, 346);
DELETE FROM Ingredient_Master WHERE ingredient_id IN (63, 224, 346);

-- 통깨 약간 [48] → 깨소금 [39]  ('약간' 포함된 파싱 잔재)
UPDATE Recipe_Ingredient SET ingredient_id = 39  WHERE ingredient_id = 48;
UPDATE My_Fridge         SET ingredient_id = 39  WHERE ingredient_id = 48;
DELETE FROM Ingredient_Master WHERE ingredient_id = 48;

-- 후춧가루 적당량 [331], 흰후춧가루 [324] → 후춧가루 [64]
UPDATE Recipe_Ingredient SET ingredient_id = 64  WHERE ingredient_id IN (324, 331);
UPDATE My_Fridge         SET ingredient_id = 64  WHERE ingredient_id IN (324, 331);
DELETE FROM Ingredient_Master WHERE ingredient_id IN (324, 331);

-- 파슬리다진것 [339] → 파슬리가루 [97]
UPDATE Recipe_Ingredient SET ingredient_id = 97  WHERE ingredient_id = 339;
UPDATE My_Fridge         SET ingredient_id = 97  WHERE ingredient_id = 339;
DELETE FROM Ingredient_Master WHERE ingredient_id = 339;

-- 순수 쓰레기 (수량 잔재·HTML·서빙 머리말·불완전 조각)
-- 73:150g), 74:로즈(마리단위 오파싱), 124:곁들임채소(5g), 132:100g), 186:물10g), 191:120g),
-- 206:60g), 219:곁들임채소(10g), 272:200g), 297:곁들임(10g), 304:50g), 312:250g),
-- 313:2인분기준<br>, 314:1인분기준<br>, 321:[2인분]가지(1개)
DELETE FROM Recipe_Ingredient WHERE ingredient_id IN (73,74,124,132,186,191,206,219,272,297,304,312,313,314,321);
DELETE FROM My_Fridge         WHERE ingredient_id IN (73,74,124,132,186,191,206,219,272,297,304,312,313,314,321);
DELETE FROM Ingredient_Master WHERE ingredient_id IN (73,74,124,132,186,191,206,219,272,297,304,312,313,314,321);

-- ═══════════════════════════════════════════════════════════════
-- STEP 2: 중복 재료 병합 (공백·맞춤법·약식명 변형)
-- ═══════════════════════════════════════════════════════════════

-- 다진돼지고기 [105] → 다진 돼지고기 [121] (대표: 공백 있는 표준 형태)
UPDATE Recipe_Ingredient SET ingredient_id = 121 WHERE ingredient_id = 105;
UPDATE My_Fridge         SET ingredient_id = 121 WHERE ingredient_id = 105;
DELETE FROM Ingredient_Master WHERE ingredient_id = 105;

-- 다진 소고기 [122] → 다진소고기 [215] (대표: 동의어 사전 기준)
UPDATE Recipe_Ingredient SET ingredient_id = 215 WHERE ingredient_id = 122;
UPDATE My_Fridge         SET ingredient_id = 215 WHERE ingredient_id = 122;
DELETE FROM Ingredient_Master WHERE ingredient_id = 122;

-- 다진파 [208], 다진 파 [154] → 대파 [11]
UPDATE Recipe_Ingredient SET ingredient_id = 11  WHERE ingredient_id IN (154, 208);
UPDATE My_Fridge         SET ingredient_id = 11  WHERE ingredient_id IN (154, 208);
DELETE FROM Ingredient_Master WHERE ingredient_id IN (154, 208);

-- 새송이 [117] → 새송이버섯 [76]
UPDATE Recipe_Ingredient SET ingredient_id = 76  WHERE ingredient_id = 117;
UPDATE My_Fridge         SET ingredient_id = 76  WHERE ingredient_id = 117;
DELETE FROM Ingredient_Master WHERE ingredient_id = 117;

-- 양송이 [62] → 양송이버섯 [189]
UPDATE Recipe_Ingredient SET ingredient_id = 189 WHERE ingredient_id = 62;
UPDATE My_Fridge         SET ingredient_id = 189 WHERE ingredient_id = 62;
DELETE FROM Ingredient_Master WHERE ingredient_id = 62;

-- 들깻가루 [142] → 들깨가루 [172]
UPDATE Recipe_Ingredient SET ingredient_id = 172 WHERE ingredient_id = 142;
UPDATE My_Fridge         SET ingredient_id = 172 WHERE ingredient_id = 142;
DELETE FROM Ingredient_Master WHERE ingredient_id = 142;

-- 브로컬리 [113] → 브로콜리 [143] (맞춤법 교정)
UPDATE Recipe_Ingredient SET ingredient_id = 143 WHERE ingredient_id = 113;
UPDATE My_Fridge         SET ingredient_id = 143 WHERE ingredient_id = 113;
DELETE FROM Ingredient_Master WHERE ingredient_id = 113;

-- 요거트 변형 [53,150,287,293] → 요거트 [173]
UPDATE Recipe_Ingredient SET ingredient_id = 173 WHERE ingredient_id IN (53,150,287,293);
UPDATE My_Fridge         SET ingredient_id = 173 WHERE ingredient_id IN (53,150,287,293);
DELETE FROM Ingredient_Master WHERE ingredient_id IN (53,150,287,293);

-- 올리브유 [147] → 올리브오일 [78]
UPDATE Recipe_Ingredient SET ingredient_id = 78  WHERE ingredient_id = 147;
UPDATE My_Fridge         SET ingredient_id = 78  WHERE ingredient_id = 147;
DELETE FROM Ingredient_Master WHERE ingredient_id = 147;

-- 현미유 [288], 대두유 [306] → 식용유 [33]
UPDATE Recipe_Ingredient SET ingredient_id = 33  WHERE ingredient_id IN (288, 306);
UPDATE My_Fridge         SET ingredient_id = 33  WHERE ingredient_id IN (288, 306);
DELETE FROM Ingredient_Master WHERE ingredient_id IN (288, 306);

-- 녹말 [83], 전분가루 [103], 전분 [157], 물전분 [341] → 녹말가루 [109]
UPDATE Recipe_Ingredient SET ingredient_id = 109 WHERE ingredient_id IN (83, 103, 157, 341);
UPDATE My_Fridge         SET ingredient_id = 109 WHERE ingredient_id IN (83, 103, 157, 341);
DELETE FROM Ingredient_Master WHERE ingredient_id IN (83, 103, 157, 341);

-- 어린잎채소 [151], 새싹채소 [145], 새싹 [187] → 어린잎 [87]
UPDATE Recipe_Ingredient SET ingredient_id = 87  WHERE ingredient_id IN (145, 151, 187);
UPDATE My_Fridge         SET ingredient_id = 87  WHERE ingredient_id IN (145, 151, 187);
DELETE FROM Ingredient_Master WHERE ingredient_id IN (145, 151, 187);

-- 달걀흰자 [184], 달걀물 [310], 삶은 달걀 [204] → 계란 [22]
UPDATE Recipe_Ingredient SET ingredient_id = 22  WHERE ingredient_id IN (184, 204, 310);
UPDATE My_Fridge         SET ingredient_id = 22  WHERE ingredient_id IN (184, 204, 310);
DELETE FROM Ingredient_Master WHERE ingredient_id IN (184, 204, 310);

-- 천일염 [129] → 소금 [35]
UPDATE Recipe_Ingredient SET ingredient_id = 35  WHERE ingredient_id = 129;
UPDATE My_Fridge         SET ingredient_id = 35  WHERE ingredient_id = 129;
DELETE FROM Ingredient_Master WHERE ingredient_id = 129;

-- 매실액 [46] → 매실청 [153]
UPDATE Recipe_Ingredient SET ingredient_id = 153 WHERE ingredient_id = 46;
UPDATE My_Fridge         SET ingredient_id = 153 WHERE ingredient_id = 46;
DELETE FROM Ingredient_Master WHERE ingredient_id = 46;

-- 정종 [106] → 청주 [210]
UPDATE Recipe_Ingredient SET ingredient_id = 210 WHERE ingredient_id = 106;
UPDATE My_Fridge         SET ingredient_id = 210 WHERE ingredient_id = 106;
DELETE FROM Ingredient_Master WHERE ingredient_id = 106;

-- 다진청고추 [209] → 청고추 [90]
UPDATE Recipe_Ingredient SET ingredient_id = 90  WHERE ingredient_id = 209;
UPDATE My_Fridge         SET ingredient_id = 90  WHERE ingredient_id = 209;
DELETE FROM Ingredient_Master WHERE ingredient_id = 209;

-- 생 표고버섯 [267] → 표고버섯 [139]
UPDATE Recipe_Ingredient SET ingredient_id = 139 WHERE ingredient_id = 267;
UPDATE My_Fridge         SET ingredient_id = 139 WHERE ingredient_id = 267;
DELETE FROM Ingredient_Master WHERE ingredient_id = 267;

-- 아몬드슬라이스 [337], 아몬드 슬라이스 [309] → 아몬드 [110]
UPDATE Recipe_Ingredient SET ingredient_id = 110 WHERE ingredient_id IN (309, 337);
UPDATE My_Fridge         SET ingredient_id = 110 WHERE ingredient_id IN (309, 337);
DELETE FROM Ingredient_Master WHERE ingredient_id IN (309, 337);

-- 쌀밥 [257] → 밥 [158]
UPDATE Recipe_Ingredient SET ingredient_id = 158 WHERE ingredient_id = 257;
UPDATE My_Fridge         SET ingredient_id = 158 WHERE ingredient_id = 257;
DELETE FROM Ingredient_Master WHERE ingredient_id = 257;

-- 레몬주스 [335] → 레몬즙 [100]
UPDATE Recipe_Ingredient SET ingredient_id = 100 WHERE ingredient_id = 335;
UPDATE My_Fridge         SET ingredient_id = 100 WHERE ingredient_id = 335;
DELETE FROM Ingredient_Master WHERE ingredient_id = 335;

-- 오렌지주스 [336] → 오렌지 [75]
UPDATE Recipe_Ingredient SET ingredient_id = 75  WHERE ingredient_id = 336;
UPDATE My_Fridge         SET ingredient_id = 75  WHERE ingredient_id = 336;
DELETE FROM Ingredient_Master WHERE ingredient_id = 336;

-- 홍피망 [235] → 홍파프리카 [177] (같은 채소, 표기 통일)
UPDATE Recipe_Ingredient SET ingredient_id = 177 WHERE ingredient_id = 235;
UPDATE My_Fridge         SET ingredient_id = 177 WHERE ingredient_id = 235;
DELETE FROM Ingredient_Master WHERE ingredient_id = 235;

-- 청피망 [261] → 피망 [137] (표기 통일)
UPDATE Recipe_Ingredient SET ingredient_id = 137 WHERE ingredient_id = 261;
UPDATE My_Fridge         SET ingredient_id = 137 WHERE ingredient_id = 261;
DELETE FROM Ingredient_Master WHERE ingredient_id = 261;

-- ═══════════════════════════════════════════════════════════════
-- STEP 3: 파프리카 색상별 변형 통합
-- ═══════════════════════════════════════════════════════════════

-- 노란/노랑 파프리카 [159,178,229,253] → 파프리카 [60] (generic)
UPDATE Recipe_Ingredient SET ingredient_id = 60  WHERE ingredient_id IN (159,178,229,253);
UPDATE My_Fridge         SET ingredient_id = 60  WHERE ingredient_id IN (159,178,229,253);
DELETE FROM Ingredient_Master WHERE ingredient_id IN (159,178,229,253);

-- 빨강 파프리카 [254,286] → 홍파프리카 [177]
UPDATE Recipe_Ingredient SET ingredient_id = 177 WHERE ingredient_id IN (254, 286);
UPDATE My_Fridge         SET ingredient_id = 177 WHERE ingredient_id IN (254, 286);
DELETE FROM Ingredient_Master WHERE ingredient_id IN (254, 286);

-- 미니파프리카 [89], 다진 파프리카 [221], 삼색파프리카 [347] → 파프리카 [60]
UPDATE Recipe_Ingredient SET ingredient_id = 60  WHERE ingredient_id IN (89, 221, 347);
UPDATE My_Fridge         SET ingredient_id = 60  WHERE ingredient_id IN (89, 221, 347);
DELETE FROM Ingredient_Master WHERE ingredient_id IN (89, 221, 347);

-- 홍피망다진것 [330] → 홍파프리카 [177]
UPDATE Recipe_Ingredient SET ingredient_id = 177 WHERE ingredient_id = 330;
UPDATE My_Fridge         SET ingredient_id = 177 WHERE ingredient_id = 330;
DELETE FROM Ingredient_Master WHERE ingredient_id = 330;

-- 청피망다진것 [328] → 피망 [137]
UPDATE Recipe_Ingredient SET ingredient_id = 137 WHERE ingredient_id = 328;
UPDATE My_Fridge         SET ingredient_id = 137 WHERE ingredient_id = 328;
DELETE FROM Ingredient_Master WHERE ingredient_id = 328;

-- ═══════════════════════════════════════════════════════════════
-- STEP 4: 병합 후 Recipe_Ingredient 중복 행 제거
--   (같은 레시피에 source+target이 모두 있어 동일 ingredient_id가 2건 된 경우)
-- ═══════════════════════════════════════════════════════════════
DELETE ri FROM Recipe_Ingredient ri
INNER JOIN (
    SELECT MIN(recipe_ingredient_id) AS keep_id, recipe_id, ingredient_id
    FROM Recipe_Ingredient
    GROUP BY recipe_id, ingredient_id
    HAVING COUNT(*) > 1
) dup ON ri.recipe_id = dup.recipe_id
      AND ri.ingredient_id = dup.ingredient_id
      AND ri.recipe_ingredient_id > dup.keep_id;

-- ═══════════════════════════════════════════════════════════════
-- STEP 5: 카테고리 교정
-- ═══════════════════════════════════════════════════════════════

-- ── 5-A: 뿌리채소(7) 오분류 복구 ──
-- "마" 한 글자 키워드로 인한 오염
UPDATE Ingredient_Master SET category_id = 6  WHERE ingredient_id IN (86, 96, 44, 168, 329);
-- 토마토[86], 홀토마토[96], 방울토마토[44], 말린 토마토[168], 토마토콩카세[329] → 잎채소

UPDATE Ingredient_Master SET category_id = 21 WHERE ingredient_id = 65;
-- 다시마[65] → 해산물

UPDATE Ingredient_Master SET category_id = 5  WHERE ingredient_id IN (71, 97, 99, 325, 326);
-- 파슬리[71], 파슬리가루[97], 로즈마리[99], 오레가노마른것[325], 바질마른것[326] → 양념

UPDATE Ingredient_Master SET category_id = 4  WHERE ingredient_id IN (227, 318);
-- 파마산치즈[227], 파르메산 치즈[318] → 유제품

UPDATE Ingredient_Master SET category_id = 5  WHERE ingredient_id = 164;
-- 마요네즈[164] → 양념

UPDATE Ingredient_Master SET category_id = 2  WHERE ingredient_id = 223;
-- 마른 표고버섯[223] → 버섯(채소 하위)

-- ── 5-B: 루트 식품(1) → 해산물(21) ──
UPDATE Ingredient_Master SET category_id = 21 WHERE ingredient_id IN
    (41, 66, 80, 81, 88, 98, 107, 156, 167, 190, 200, 201, 207, 217, 228, 231,
     246, 249, 251, 263, 264, 277, 283, 289, 290, 334, 344, 45);
-- 칵테일새우, 건새우, 전복, 새우, 오징어, 삼치, 주꾸미, 조기, 연어, 날치알, 문어,
-- 새우살, 바지락, 홍합, 바지락살, 장어, 소라, 까나리액젓, 관자, 자숙새우, 소라살,
-- 고등어, 가쓰오부시, 젓갈, 건조미역줄기, 도미살, 멸치, 멸치액젓

-- ── 5-C: 루트 식품(1) → 과일(22) ──
UPDATE Ingredient_Master SET category_id = 22 WHERE ingredient_id IN
    (51, 52, 55, 56, 57, 75, 82, 100, 166, 169, 193, 197, 226, 233, 242);
-- 사과, 딸기, 블루베리, 대추, 배, 오렌지, 레몬, 레몬즙, 참외, 바나나, 파인애플,
-- 아보카도, 크렌베리, 망고, 키위

-- ── 5-D: 루트 식품(1) → 곡류(23) ──
UPDATE Ingredient_Master SET category_id = 23 WHERE ingredient_id IN
    (101, 115, 158, 182, 183, 194, 220, 222, 237, 248, 265, 266, 269, 292, 298, 308, 315);
-- 귀리밥, 쌀, 밥, 현미쌀, 조, 찹쌀, 보리쌀, 가래떡, 보리, 현미, 백미, 귀리, 수수, 불린쌀, 흑미, 식빵, 바게트

-- 찹쌀가루[140], 녹말가루[109]는 가루류(15) — 이미 양념(5)이므로 유지

-- ── 5-E: 루트 식품(1) → 잎채소(6) ──
UPDATE Ingredient_Master SET category_id = 6  WHERE ingredient_id IN
    (49, 58, 59, 87, 90, 91, 93, 94, 108, 136, 138, 144, 155, 181, 196,
     211, 236, 247, 250, 256, 274, 281, 285);
-- 오이, 애호박, 단호박, 어린잎, 청고추, 홍고추, 꽈리고추, 샐러리, 청경채, 콜라비,
-- 쪽파, 송송 썬 붉은 고추, 청양고추, 가지, 두릅, 미니 단호박, 옥수수, 완두콩,
-- 돌나물, 베이비채소, 풋고추, 곤드레나물, 실파

-- ── 5-F: 루트 식품(1) → 뿌리채소(7) ──
UPDATE Ingredient_Master SET category_id = 7  WHERE ingredient_id IN (61, 340);
-- 인삼[61], 레드어니언[340] (양파 계열)

-- ── 5-G: 루트 식품(1) → 양념(5) ──
UPDATE Ingredient_Master SET category_id = 5  WHERE ingredient_id IN
    (79, 114, 116, 130, 148, 162, 163, 165, 249, 268, 270, 284, 291, 295, 305, 311, 333);
-- 유자청, 카레가루, 강황가루, 계피가루, 꿀, 함초, 연겨자, 참깨, 까나리액젓,
-- 월계수잎, 케첩, 사과식초, 소주(요리용), 머스터드, 바질잎, 미림, 바질

-- ── 5-H: 루트 식품(1) → 기름류(14) ──
UPDATE Ingredient_Master SET category_id = 14 WHERE ingredient_id IN (119, 252);
-- 튀김기름, 고추기름

-- ── 5-I: 루트 식품(1) → 유제품(4) ──
UPDATE Ingredient_Master SET category_id = 4  WHERE ingredient_id IN (174, 198);
-- 연유, 두유

-- ── 5-J: 루트 식품(1) → 가공식품(16) ──
UPDATE Ingredient_Master SET category_id = 16 WHERE ingredient_id IN (146, 175, 203, 216);
-- 만두피, 누룽지, 피클, 떡볶이떡

-- ── 5-K: 루트 식품(1) → 면류(19) ──
UPDATE Ingredient_Master SET category_id = 19 WHERE ingredient_id IN (273);
-- 당면

-- ── 5-L: 기타 미세 교정 ──
UPDATE Ingredient_Master SET category_id = 5  WHERE ingredient_id = 323;
-- 파프리카가루[323] → 양념 (향신료 용도)

-- ── 5-M: 잎채소(6) 오분류된 유제품 교정 ──
UPDATE Ingredient_Master SET category_id = 4  WHERE ingredient_id IN (42, 173, 202, 241, 245);
-- 생크림[42], 요거트[173], 치즈[202], 모짜렐라치즈[241], 사워크림[245] → 유제품

SET FOREIGN_KEY_CHECKS = 1;

-- 검증 쿼리 (실행 후 결과 확인용, 주석 해제하여 사용)
-- SELECT '쓰레기 행 잔존' AS check_name, COUNT(*) AS cnt FROM Ingredient_Master
--   WHERE ingredient_name REGEXP '[0-9]+g\\)|^-\\s+곁들임|<br>';
-- SELECT '뿌리채소 오염 잔존' AS check_name, COUNT(*) AS cnt FROM Ingredient_Master
--   WHERE category_id = 7 AND ingredient_name IN ('마요네즈','파마산치즈','토마토','다시마');
-- SELECT '중복 파프리카' AS check_name, COUNT(*) AS cnt FROM Ingredient_Master
--   WHERE ingredient_name LIKE '%파프리카%' AND ingredient_id NOT IN (60, 177);
