-- 데이터 출처: 식품의약품안전처 조리식품의 레시피 DB (COOKRCP01), 공공누리 1유형
-- 생성: scripts/etl/load/sql_writer.py
-- recipe_id >= 11 은 실데이터 (1~10는 시연 더미 보존)

USE smart_fridge;
-- --reset 옵션 실행 시 이 블록으로 기존 실데이터 삭제 후 재적재 (멱등성)
-- SET FOREIGN_KEY_CHECKS = 0;
-- DELETE FROM Cook_History WHERE recipe_id >= 11;
-- DELETE FROM Recipe_Ingredient WHERE recipe_id >= 11;
-- DELETE FROM Recipe WHERE recipe_id >= 11;
-- SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (11, '새우 두부 계란찜', 'easy', 10, '[단계 1] 손질된 새우를 끓는 물에 데쳐 건진다.
[단계 2] 연두부, 달걀, 생크림, 설탕에 녹인 무염버터를 믹서에 넣고 간 뒤 새우(1)를 함께 섞어 그릇에 담는다.
[단계 3] 시금치를 잘게 다져 혼합물 그릇(2)에 뿌리고 찜기에 넣고 중간 불에서 10분 정도 찐다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (11, 23, 75.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (11, 47, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (11, 22, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (11, 48, 13.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (11, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (11, 7, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (11, 1, 10.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (12, '부추 콩가루 찜', 'easy', 15, '[단계 1] 부추는 깨끗이 씻어 물기를 제거하고, 5cm 길이로 썰고 부추에 날콩가루를 넣고 고루 섞이도록 버무린다.
[단계 2] 찜기에 면보를 깔고 부추를 넣은 후 김이 오르게 쪄서 파랗게 익힌다.
[단계 3] 저염간장에 다진 대파, 다진 마늘, 고춧가루, 요리당 , 참기름, 참깨를 섞어 양념장을 만들고 찐 부추는 그릇에 담아낸다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (12, 5, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (12, 49, 7.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (13, '방울토마토 소박이', 'medium', 15, '[단계 1] 물기를 빼고 2cm 정도의 크기로 썰은 부추와 양파를 양념장에 섞어 양념속을 만든다.
[단계 2] 깨끗이 씻은 방울토마토는 꼭지를 떼고 윗부분에 칼로 십자모양으로 칼집을 낸다.
[단계 3] 칼집을 낸 방울토마토에 양념속을 사이사이에 넣어 버무린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (13, 50, 150.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (13, 10, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (13, 5, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (13, 37, 4.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (13, 51, 3.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (13, 12, 2.50, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (13, 52, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (13, 36, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (13, 53, 2.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (13, 54, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (14, '순두부 사과 소스 오이무침', 'easy', 15, '[단계 1] 사과, 순두부를 믹서에 넣고 곱게 갈아 소스를 만든다.
[단계 2] 오이는 소금으로 문질러 씻어 반을 갈라 씨를 제거하고 어슷썰기를 한다.
[단계 3] 썰어 놓은 오이에 순두부사과 소스를 넣고 버무린 후 다진 땅콩을 뿌려 마무리 한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (14, 55, 70.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (14, 56, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (14, 23, 40.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (14, 57, 50.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (15, '스트로베리 샐러드', 'easy', 5, '[단계 1] 찬물이 담긴 냄비에 식초, 소금을 넣고 메추리알을 삶는다. 물이 끓어오르면 5분 정도 더 삶아 찬물에 헹군 후 껍질을 벗기고 반으로 자른다.
[단계 2] 딸기를 흐르는 물에 가볍게 씻어 꼭지를 제거한 후 물기를 빼고 반으로 자른다.
[단계 3] 양상추는 찬물에 담갔다가 물기를 빼고 한입 크기로 찢은 후 접시에 양상추, 딸기, 블루베리, 메추리알을 담고 플레인요거트를 끼얹는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (15, 58, 70.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (15, 59, 85.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (15, 3, 70.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (15, 60, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (15, 61, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (15, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (15, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (16, '인삼떡갈비', 'hard', 30, '[단계 1] 대추는 돌려 깍아 씨를 제거 하고 곱게
다진다.
[단계 2] 다진 소고기와 돼지고기에 대추와 소금
후춧가루를 넣고 치댄다.
[단계 3] 애호박과 단호박, 파프리카는
입자있게 썰어 ?에 넣고 잘 치댄다.
[단계 4] 양송이는 편으로 썰어 팬에 익히고,
인삼을 뇌두를 자르고 깨끗이 씻어
팬에 볶아 잘게 썰어 ?에 넣는다.
[단계 5] 재료가 골고루 섞인 떡갈비를 갈비
모양으로 만든다.
[단계 6] 떡갈비를 팬에 굽고, 접시에 배춧잎을
깔고 익힌 양송이를 올리고 떡갈비를
담는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (16, 14, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (16, 16, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (16, 62, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (16, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (16, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (16, 63, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (16, 64, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (16, 65, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (16, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (16, 67, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (16, 68, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (16, 63, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (16, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (16, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (16, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (16, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (16, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (17, '초계탕과 사색곤약', 'medium', 20, '[단계 1] 닭을 깨끗이 손질하고, 부위별로
자른다.
[단계 2] 냄비에 가시오가피, 대파, 다시마,
마늘, 건새우를 넣고 은근히 끓인 후
닭을 넣고 약 20분 정도 삶아 건진 뒤
살을 찢어둔다.
[단계 3] 양파, 오이는 채썰고 식초, 설탕,
소금을 넣고 초절임한다
[단계 4] 겨자가루에 30℃ 정도의 물을 넣고
골고루 섞어 발효시키고, 설탕, 식초,
소금을 넣고 겨자소스를 만든다
[단계 5] 흰곤약과 비트, 치자가루를 섞은 곤약,
채썬 다시마를 접시에 담는다.
[단계 6] 양파, 오이 초절임과 닭살을 한쪽에
담아 먹기 직전에 겨자소스를 올린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (17, 20, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (17, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (17, 71, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (17, 72, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (17, 326, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (17, 73, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (17, 74, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (17, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (17, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (17, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (17, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (17, 55, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (17, 75, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (17, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (17, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (18, '훈제오리가슴살 샐러드', 'easy', 30, '[단계 1] 훈제오리 가슴살을 슬라이스한다.
[단계 2] 슬라이스한 훈제오리는 팬에 굽는다.
[단계 3] 양파는 채썰고 찬물에 담근 뒤 건진다.
[단계 4] 레디쉬는 채썰고 찬물에 담근 뒤
건진다.
[단계 5] 먹기 직전에 발사믹소스를 만든다.
[단계 6] 접시에 훈제오리와 양파채, 레디쉬,
블루베리를 담고 발사믹소스를
올린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (18, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (18, 77, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (18, 61, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (18, 78, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (19, '훈제오리가슴살크러스트', 'medium', 30, '[단계 1] 훈제오리 가슴살은 올리브오일,
로즈마리, 후춧가루로
마리네이드한다.
[단계 2] 새송이버섯은 편으로 썰고 팬에
굽는다.
[단계 3] 오렌지는 슬라이스로 썬다.
[단계 4] 땅콩과 파슬리는 입자있게 다진다.
[단계 5] 마리네이드한 오리 고기를 구워 접시에
담는다.
[단계 6] 유자청에 땅콩, 파슬리가루를 넣고
소스를 만들고, 구워진 오리고기
사이에 오렌지 슬라이스를 넣고
유자청소스를 올린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (19, 79, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (19, 80, 5.00, '마리', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (19, 81, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (19, 82, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (19, 77, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (19, 83, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (19, 84, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (19, 85, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (19, 70, 0.50, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (20, '간장소스를 곁들인 새우전복찜', 'medium', 10, '[단계 1] 전복은 수저로 떼어내어 소금으로 비벼
깨끗이 씻는다.
[단계 2] 시금치는 데쳐 다지고, 새우는 껍질을
벗겨 전복, 해초와 함께 다진다.
[단계 3] ?번을 잘 섞어 전복 껍질에 넣는다.
[단계 4] 찜통에 김이 오르면 속을 채운 전복
껍질을 넣고 약 10분 정도 찐다.
[단계 5] 저염간장, 레몬, 설탕, 다진마늘을
넣고 살짝 끓여 소스를 만든다.
[단계 6] 간장소스에 전분을 풀어 농도를
맞추고, 전복찜에 여러번 바르고
식용꽃을 올린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (20, 86, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (20, 87, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (20, 1, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (20, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (20, 88, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (20, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (20, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (20, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (20, 89, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (20, 90, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (21, '겨자소스로 구운 산마샐러드', 'medium', 30, '[단계 1] 어린잎은 찬물에 담근다.
[단계 2] 마는 껍질을 벗겨 동글동글하게 썬다
[단계 3] 썰어 놓은 마는 팬에 기름을 살짝
두르고 앞뒤로 굽는다.
[단계 4] 참나물, 돈나물, 토마토, 레디쉬는
먹기 좋은 크기로 썬다.
[단계 5] 겨자가루는 30℃ 물을 섞어 발효
시킨다.
[단계 6] 저염간장에 식초, 설탕, 발효겨자를
넣고 골고루 섞어 소스를 만들고,
접시에 구운 마와 손질한 야채를 넣고
만들어 놓은 소스와 어린잎을 올린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (21, 91, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (21, 53, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (21, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (21, 78, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (21, 93, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (21, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (21, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (21, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (21, 75, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (22, '오징어구이', 'medium', 30, '[단계 1] 오징어는 솔방울 모양으로 잘라준다.
[단계 2] 미니 파프리카, 양파, 청홍고추는 적당한
크기로 잘라준다.
[단계 3] 다진마늘을 볶다가 오징어를 넣어 볶는다.
[단계 4] 홀토마토와 양념장 재료를 넣어 볶는다.
[단계 5] 팬을 약간 태우는 듯 해서 불맛과 매운맛을
더해준다.
[단계 6] 접시에 담아주고 볶은 현미를 뿌려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (22, 94, 300.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (22, 95, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (22, 10, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (22, 96, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (22, 97, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (22, 98, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (22, 38, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (22, 32, 15.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (23, '토마토소고기장조림', 'easy', 25, '[단계 1] 소고기는 사방 2cm 정도의 크기로 잘라서
물에서 80% 정도까지 익혀준 후 냉수에
깨끗하게 세척해 준다.
[단계 2] 양파는 먹기 좋게 자르고 물 400g과 함께
간장 물을 만들어준다.
[단계 3] 간장 물에 데쳐 놓은 소고기부터 졸여주기
시작한다.
[단계 4] 메추리알을 넣고 함께 졸여준다.
[단계 5] 방울토마토, 양파, 마늘, 꽈리고추까지 넣고
마지막으로 졸여준다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (23, 60, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (23, 50, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (23, 12, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (23, 99, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (23, 10, 45.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (24, '토마토소고기찜', 'medium', 30, '[단계 1] 당근, 양파, 샐러리는 사방 2cm 정도로
잘라준다.
[단계 2] 레몬은 껍질을 아주 곱게 채 썰어준다.
[단계 3] 소고기는 사방 3cm 정도로 자르고 흰 후추를
뿌려준다.
[단계 4] 홀토마토는 먹기 좋게 부수어 준 후 볶아준다.
[단계 5] 팬에 버터를 넣고 소고기부터 볶기 시작하다
채소를 넣고 볶아준다. 이 때 두꺼운 채소부터
볶아주는 것이 고기랑 익는 시간이 같아진다.
[단계 6] 마지막에 다져 놓은 홀토마토를 넣고 함초소금
으로 간을 한 후 레몬껍질을 올려서 마무리
한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (24, 100, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (24, 6, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (24, 10, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (24, 101, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (24, 102, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (24, 40, 20.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (24, 88, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (24, 38, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (24, 103, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (24, 35, 1.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (25, '맛간장삼치구이', 'medium', 30, '[단계 1] 소스 재료를 이용해 맛 간장으로 만든 데리
야끼소스를 만들어준다.
[단계 2] 참치는 손질해 수분을 빼준 후 흰 후추로
밑간을 해준다.
[단계 3] 생강은 아주 곱게 채 썰어 냉수에 헹군다.
[단계 4] 대파도 아주 가늘게 채 썰어서 냉수에 담가
매운맛을 빼준다.
[단계 5] 버터를 올린 팬에 삼치를 약불에서 구워준다.
[단계 6] 구워진 참치를 소스에 졸여주고 대파채를
올린다. 삼치에 소스를 뿌리고 생강채를 올려
완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (25, 104, 200.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (25, 13, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (25, 11, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (25, 39, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (25, 40, 10.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (26, '삼겹살꼬치구이', 'medium', 25, '[단계 1] 삼겹살은 길이로 잘라서 마늘기름, 통후추,
로즈마리에 마리네이드 해준다.
[단계 2] 대파는 흰 부분만 잘라 구워주고, 꽈리고추도
함께 구워준다.
[단계 3] 대파는 가늘게 채 썰어 물에 담가준다.
[단계 4] 물에 담가진 대파를 물기를 빼고 양념해준다.
[단계 5] 삼겹살을 꼬치에 끼워 굽고 구워진 채소,
대파채와 함께 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (26, 16, 200.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (26, 50, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (26, 12, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (26, 38, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (26, 105, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (26, 38, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (26, 11, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (26, 12, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (26, 99, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (26, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (26, 37, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (26, 106, 2.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (27, '새우아욱죽', 'medium', 30, '[단계 1] 저염 된장을 물 300cc에 풀어준 뒤 건새우를
담가 30분 정도 담가준 뒤 살짝 끓여준다.
[단계 2] 새우를 풀어준 된장 물을 체에 걸러준다.
[단계 3] 아욱은 뜨거운 물에 데쳐서 먹기 좋게 썬다.
[단계 4] 냄비에 밥과 된장 물을 풀어 끓인다.
[단계 5] 어느 정도 끓으면 칵테일새우와 건져 놓았던
새우를 다시 넣어준다.
[단계 6] 불을 끄기 전에 아욱을 넣어 한 번 더 끓여준
후 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (27, 107, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (27, 108, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (27, 72, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (27, 47, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (27, 30, 30.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (28, '라이스버거떡갈비', 'hard', 30, '[단계 1] 팽이버섯을 송송 다진 후 라이스버거 재료로
라이스버거를 만들어준다.
[단계 2] 만들어준 버거는 팬에 구워준다.
[단계 3] 토마토와 미나리를 먹기 좋게 잘라서 겉절이를
만들어준다.
[단계 4] 떡갈비 재료로 떡 갈비를 만들어준다.
[단계 5] 만들어진 떡갈비를 구워준다.
[단계 6] 접시에 토마토 겉절이를 담고 라이스버거와
떡갈비를 올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (28, 164, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (28, 31, 15.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (28, 109, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (28, 110, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (28, 38, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (28, 22, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (28, 221, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (28, 127, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (28, 10, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (28, 144, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (28, 31, 10.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (28, 38, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (28, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (28, 4, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (28, 31, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (28, 96, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (28, 97, 15.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (29, '누룽닭', 'hard', 30, '[단계 1] 닭은 포를 떠서 생강즙과 정종을 섞어
발라 놓는다.
[단계 2] 시금치는 살짝 데쳐 썰고, 당근, 양파,
샐러리, 파프리카는 약 6Cm 길이로
채를 썰어 절반은 닭고기말이에 사용
하고, 절반은 곁들임채소로 사용한다.
[단계 3] 느타리는 끓는 물에 소금을 넣고 데쳐
손으로 찢어놓고, 포를 뜬 닭가슴살에
느타리와 썰어 놓은 채소를 넣어 말아
주고, 육수를 끓여서 말아놓은 닭을
넣고 익혀낸다.
[단계 4] 주꾸미와 새우는 끓는 물에 살짝 데치고,
청경채는 반으로 썰어 살짝 데쳐 준비
한다.
[단계 5] 튀김기름 온도가 180℃ 정도 되면
누룽지를 넣고 튀겨 기름을 밭쳐 놓는다.
[단계 6] 닭을 넣은 육수(③)에 간장과 녹말,
마늘, 소금, 후춧가루를 넣고 끓이다가,
곁들임채소로 남겨 놓은 채소(②)와
데쳐 놓은 해물 및 청경채를 넣고 한 번 더
끓인 뒤 튀겨진 누룽지를 넣어 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (29, 19, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (29, 13, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (29, 112, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (29, 1, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (29, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (29, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (29, 100, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (29, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (29, 131, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (29, 113, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (29, 87, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (29, 114, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (29, 115, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (29, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (29, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (29, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (30, '광어스테이크', 'medium', 30, '[단계 1] 광어는 포를 길게 떠서 소금과
후춧가루에 밑간을 해 놓는다.
[단계 2] 아몬드와 호두는 입자있게 다져
준비한다.
[단계 3] 밑간이 되어 있는 광어포에 밀가루와
달걀물을 입힌다.
[단계 4] 달걀물을 입힌 광어살에 다시 다져
놓은 견과류를 입혀 준다.
[단계 5] 팬에 올리브 오일을 넣고, 팬이 따끈해
지면 광어 살을 조심스럽게 앞뒤로
익혀 접시에 담는다.
[단계 6] 플레인요거트에 꿀과 레몬즙을 넣고
골고루 섞어 광어스테이크소스를
만들어 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (30, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (30, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (30, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (30, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (30, 116, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (30, 117, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (30, 84, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (31, '코코넛밀크카레', 'medium', 5, '[단계 1] 두부는 소창에 넣고, 짜서 물기를
제거하고, 으깨어 놓는다.
[단계 2] 으깬 두부에 소금과 코코넛 밀크를
넣고 골고루 섞는다.
[단계 3] 섞여진 두부를 김이 오른 찜통에 넣고
약 5분 정도 찐다.
[단계 4] 당근과 양파는 사각지게 썰고,
브로컬리는 데쳐 당근 크기로 썰어
놓는다.
[단계 5] 돼지고기와 감자는 당근 크기로 썰어
주고, 냄비에 버터를 녹여 돼지고기를
먼저 볶다가 양파와 당근, 감자,
브로컬리를 넣고 다시 볶아 준 뒤,
쪄놓은 두부를 넣어 한 번 더 볶아준다.
[단계 6] 볶아지는 냄비(⑤)에 카레 가루를 넣고
살짝 더 볶아준 뒤, 물을 넣고 자작하게
끓여 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (31, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (31, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (31, 118, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (31, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (31, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (31, 119, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (31, 16, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (31, 8, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (31, 40, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (31, 120, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (31, 53, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (32, '소고기리조또롤', 'medium', 30, '[단계 1] 쌀은 불려 놓고, 마늘은 작게 다지고,
양파는 새송이와 파프리카와 함께
입자를 크게 다져 준비한다.
[단계 2] 소고기는 포를 넓게 떠서 소금과
후춧가루를 뿌려 밑간을 해 놓는다.
[단계 3] 냄비에 버터를 넣고, 마늘과 양파를
먼저 볶다가, 새송이와 파프리카를
넣는다.
[단계 4] ③번에 다시 불린 쌀과 강화를 넣고,
볶다가 불을 줄여, 쌀이 익을 때까지
익혀 준다.
[단계 5] 쌀이 익으면, 밑간이 되어 있는
소고기에 넣고 돌돌 말아 준비한다.
[단계 6] 하얀 된장에 생크림을 넣어 골고루 섞고,
냄비에 육수를 넣고 생크림을 섞은 하얀
된장을 넣어 끓으면, 말아놓은 소고기를
넣고 은근히 졸여 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (32, 121, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (32, 122, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (32, 40, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (32, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (32, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (32, 123, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (32, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (32, 14, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (32, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (32, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (33, '둥지튀김', 'medium', 30, '[단계 1] 닭고기살은 작게 썰어 소금과 후춧
가루를 살짝 뿌려 밑간을 하고 달걀을
넣어 섞는다.
[단계 2] 달걀을 넣어 섞은 닭고기 살에 녹말
가루를 넣어 골고루 묻힌다.
[단계 3] 국수는 각각 끓는 물에 살짝 데쳐 물기를
빼놓는다.
[단계 4] 물기가 빠진 국수는 튀김기름 170℃
온도에서 각각 작은 채에 그대로 살짝
튀겨 둥지를 만든 후 기름을 냅킨에
빼 놓는다.
[단계 5] 녹말가루를 묻힌 닭고기살도 튀김
기름에 튀겨 기름을 빼 놓은 둥지국수
위에 올린다.
[단계 6] 냄비에 레몬과 설탕을 넣고 물을 넣어
끓이다가 레몬은 건져 내고, 마늘과
생강, 연유, 식초, 녹말을 풀어 넣고
살짝 한 번 더 끓여 녹말소스를 만들어,
튀겨진 닭고기 위에 올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (33, 124, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (33, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (33, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (33, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (33, 115, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (33, 125, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (33, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (33, 13, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (33, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (33, 115, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (34, '함초삼겹', 'medium', 20, '[단계 1] 통 삼겹살에 함초와 소금, 후춧가루를
뿌려 숙성을 시킨다.
[단계 2] 부추는 약 6cm 길이로 썰고, 양파는
채를 썰어 놓고, 당근은 납작하게
편으로 썰어 준비한다.
[단계 3] 연두부는 잘게 다져 놓는다.
[단계 4] 유자청에 쌈장과 설탕, 생크림을 넣어
골고루 섞는다.
[단계 5] 골고루 섞은 유자청에 다져 놓은
연두부를 넣어 섞어 냄비에 넣고, 썰어
놓은 양파와 당근을 넣어 은근히 끓여
소스를 만들어 놓는다.
[단계 6] 숙성시킨 통삼겹은 버터를 녹인 팬에
살짝 구워 다시 오븐에서 20분 정도
익힌 후 먹기 좋게 썰은 뒤, 접시에
부추를 깔고 그 위에 구워진 삼겹을
올리고 소스를 얹어 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (34, 266, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (34, 126, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (34, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (34, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (34, 5, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (34, 40, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (34, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (34, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (34, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (35, '햄버거스테이크', 'medium', 30, '[단계 1] 돼지고기와 소고기를 섞어, 매실액을
넣고 30분 정도 냉장고에서 숙성을
시킨다.
[단계 2] 숙성된 돼지고기와 소고기에 다진마늘,
로즈마리, 빵가루, 후춧가루를 넣고
골고루 섞는다.
[단계 3] 파프리카는 반으로 잘라 그 안에 씨를
수저를 이용해서 파낸다.
[단계 4] 속을 파낸 파프리카에 양념한 고기를
넣고, 꼭꼭 눌러 두툼하게 잘라 구워
접시에 담는다.
[단계 5] 양파는 입자있게 다져 팬에 기름을
넣고 은근히 볶아 양파 향을 낸다.
[단계 6] 볶아진 팬(⑤)에 준비한 플레인요거트와
설탕, 매실액을 넣고 끓이다가, 식초와
녹말을 넣고 한 번 더 끓여 소스를
완성한다. 햄버거스테이트(④)에 소스를
얹고, 어린잎을 올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (35, 127, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (35, 221, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (35, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (35, 80, 5.00, '마리', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (35, 129, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (35, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (35, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (35, 52, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (35, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (35, 115, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (35, 130, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (36, '유자삼치구이', 'easy', 30, '[단계 1] 삼치는 반으로 잘라지지 않게 편으로
떠서 소금을 살짝 뿌려 잠시 말려
놓는다.
[단계 2] 손질을 한 삼치에 녹말가루를 입혀
팬에 기름을 두르고 구워 접시에 담아
놓는다.
[단계 3] 생강은 잘게 썰어, 물에 섞은 후
거름종이에 걸러 생강즙을 만든다.
[단계 4] 유자청에 만들어 놓은 생강즙을 넣고
섞는다.
[단계 5] 냄비에 레몬을 넣고, 물을 넣고 은근히
끓인다.
[단계 6] 레몬을 끓인 물에 ④번을 넣고 졸여
소스를 만든 후 접시에 담아 놓은 삼치
위에 소스로 올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (36, 104, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (36, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (36, 89, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (36, 33, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (37, '닭고기또띠아', 'medium', 30, '[단계 1] 닭고기살은 끓는 물에 데쳐 손으로
찢고, 느타리버섯도 데쳐 손으로 찢어
준비한다.
[단계 2] 사과는 씨를 제거하고 약 6cm 길이로
채를 썰고, 오이와 파프리카도 같은
길이로 채를 썰어 놓는다.
[단계 3] 애호박은 반달로 썰어 식초에 살짝
절여서 볶고, 양파는 채를 썰어 물에
잠시 담가 놓는다.
[단계 4] 아몬드는 우유를 넣어 갈아 준비한다.
[단계 5] 머스터드에 올리고당을 넣어 잘 섞어
준다.
[단계 6] 또띠아를 팬에 기름 없이 굽고, 그 안에
닭고기 살과 느타리버섯, 오이, 사과,
파프리카와 호박을 넣어 속이 보이도록
말아놓고, ④번과 ⑤번은 섞어서 소스를
만들어 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (37, 124, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (37, 131, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (37, 57, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (37, 55, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (37, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (37, 64, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (37, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (37, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (38, '닭고기스테이크', 'medium', 30, '[단계 1] 닭고기살은 소금과 후춧가루, 생강즙과
정종을 뿌린 후 우유를 살짝 발라 숙성을
시킨다.
[단계 2] 오이는 길게 껍질째 썰어 놓는다.
[단계 3] 토마토는 반으로 잘라 편으로 썰어
준비한다.
[단계 4] 두부는 소창으로 물기를 꼭 짜 놓는다.
[단계 5] 물기를 제거 시킨 두부에 흑임자를
넣고 골고루 섞은 뒤 냄비에 넣고
우유와 함께 은근히 끓여 속을 만든다.
[단계 6] 팬에 토마토를 먼저 구워 접시에 담고,
숙성된 닭고기를 구워 올린 뒤, 그 위에
오이로 원형기둥을 만들고 구운
닭고기를 다시 올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (38, 124, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (38, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (38, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (38, 13, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (38, 112, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (38, 21, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (38, 55, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (38, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (38, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (38, 132, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (38, 21, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (39, '오징어순대', 'medium', 10, '[단계 1] 통오징어는 다리를 떼어내고 내장을
제거시켜 통째로 깨끗이 씻어 준비
한다.
[단계 2] 양파와 당근, 부추, 생강은 입자있게
썰고, 견과류는 다져 준비한다.
[단계 3] 두부는 물기를 짠 후 수저로 으깨어
놓는다.
[단계 4] 잘게 썰은 오징어 다리와 썰어 놓은
채소, 견과류(②), 곱게 다진 대파와
마늘, 그리고 소금과 녹말가루를 두부
(③)와 함께 골고루 섞어 순대속을
만든다.
[단계 5] 손질된 오징어 속 안에 준비한 속을
채워 넣는다.
[단계 6] 오징어순대에 레몬즙과 정종, 생강즙을
섞어 바른 뒤 찜통에 김이 오르면
오징어순대를 넣어 약 10분 정도 쪄서
완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (39, 94, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (39, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (39, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (39, 5, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (39, 133, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (39, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (39, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (39, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (39, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (39, 115, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (39, 112, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (39, 88, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (39, 13, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (40, '연근부각', 'medium', 30, '[단계 1] 연근은 껍질을 벗긴다.
[단계 2] 껍질벗긴 연근은 얇게 썬다.
[단계 3] 물 200g에 식초 10g을 섞는다
[단계 4] 식촛물에 썬 연근을 담근다.
[단계 5] 연근을 체에 건져 물기를 뺀다.
[단계 6] 연근을 바삭하게 튀긴 뒤 천일염을
살짝 뿌리고, 계피가루를 묻힌다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (40, 134, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (40, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (40, 135, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (40, 136, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (40, 33, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (41, '오이냉국을 곁들인 오색쌈밥', 'hard', 30, '[단계 1] 쌀은 깨끗이 씻어 30분 정도 불려 밥을
짓는다.
[단계 2] 달걀을 풀어 소금을 넣고 지단을
만들어 채썬다.
[단계 3] 도라지, 애호박, 양파, 홍고추는 채를
썰어 소금에 살짝 절여 볶고, 청포묵은
채를 썰어 참기름에 버무린다.
[단계 4] 돼지 안심은 소금, 후춧가루로 양념 한
뒤 팬에 익힌다.
[단계 5] 찬물에 식초, 설탕, 소금을 넣고 채 썬
오이를 넣어 냉국을 만든다.
[단계 6] 고추장에 고춧가루를 섞어 쌈밥장을
만들고, 라이스페이퍼를 물에 담궈
건져 밥과 준비한 야채, 달걀지단,
쌈무, 쌈밥장을 올려 돌돌 말고 데친
미나리로 묶는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (41, 137, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (41, 138, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (41, 121, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (41, 139, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (41, 64, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (41, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (41, 97, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (41, 4, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (41, 55, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (41, 140, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (41, 7, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (41, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (41, 141, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (41, 29, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (41, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (41, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (41, 37, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (42, '콜라비오미자 물김치', 'medium', 30, '[단계 1] 다시마와 건새우를 넣고 은근히 끓여
차갑게 식힌 뒤 육수를 만든다.
[단계 2] 차갑게 식힌 육수는 체에 걸려내고
오미자를 넣고 소금으로 간을 한다.
[단계 3] 콜라비, 피망, 파프리카는 납작하게
썬다.
[단계 4] 육수는 체에 거른다
[단계 5] 오미자를 넣고 소금으로 간을 한다.
[단계 6] 통에 썰어놓은 야채와 무화과를 담고
?를 넣는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (42, 142, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (42, 7, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (42, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (42, 143, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (42, 144, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (42, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (42, 72, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (42, 71, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (42, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (43, '표고버섯 감자찜', 'easy', 10, '[단계 1] 표고버섯은 따뜻한 물에 불린다.
[단계 2] 감자는 강판에 간다.
[단계 3] 고수는 잘게 다진다.
[단계 4] 당근은 곱게 다지고, 양파와 홍고추도
다진다.
[단계 5] 감자에 다진 당근과 양파, 홍고추를
섞는다.
[단계 6] 불린 표고버섯은 기둥을 자르고 바닥에
녹말가루를 묻혀 ?번을 넣고 김이
오른 찜통에 약 10분 정도 찐다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (43, 145, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (43, 8, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (43, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (43, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (43, 97, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (43, 89, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (44, '해물애호박 전병말이', 'medium', 30, '[단계 1] 새우는 껍질을 벗겨 다진다.
[단계 2] 오징어는 소금으로 껍질을 벗겨
다진다.
[단계 3] 애호박, 깻잎, 대추는 곱게 채썬다.
[단계 4] 채썬 애호박과 깻잎은 소금에 살짝
절인 뒤 물기를 짠다.
[단계 5] 밀가루에 찹쌀가루, 애호박, 깻잎,
대추채와 다진 새우, 오징어를 넣고
팬에 기름을 둘러 전병을 만든 뒤 돌돌
말아 썰어 접시에 담는다.
[단계 6] 저염간장과 식초, 설탕을 넣고 소스를
만든다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (44, 87, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (44, 94, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (44, 64, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (44, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (44, 2, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (44, 62, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (44, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (44, 146, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (44, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (44, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (44, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (44, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (45, '찬밥이용닭죽', 'medium', 30, '[단계 1] 닭다리는 기름기를 제거하고 냄비에 물 3컵 반을 부어 통마늘과 삶아 육수를 만든다.
[단계 2] 삶은 마늘을 체에 걸러 으깬 뒤 다시 육수에 넣는다.
[단계 3] 닭 육수 2컵 반에 찬밥을 넣고 밥알이 무르도록 끓인다.
[단계 4] 삶은 닭다리 살을 발라 잘게 찢어 넣는다.
[단계 5] 감자, 양파, 당근, 부추는 잘게 다진다.
[단계 6] 4에 5를 넣고 끓인 뒤 소금, 후춧가루로 간 한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (45, 164, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (45, 147, 80.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (45, 8, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (45, 12, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (45, 10, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (45, 6, 8.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (45, 5, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (45, 53, 700.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (45, 35, 0.75, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (45, 70, 0.30, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (46, '아몬드치킨볼', 'medium', 30, '[단계 1] 냄비에 육수 재료와 물(400g)을
넣고 푹 끓인다.
[단계 2] 양송이버섯을 잘게 다진 뒤 버터에
살짝 볶아 건져 한김 식힌 뒤
닭다리살과 닭가슴살, 아몬드를 다져
볶은 양송이버섯과 섞어 동그랗게
빚어 밀가루옷을 입힌다.
[단계 3] 식용유(15g)를 두른 팬에서 겉을
노릇하게 굽는다.
[단계 4] 육수(150g), 우유, 들깻가루를 끓여
소스를 만든 뒤 아몬드 치킨볼과
브로콜리를 넣고 졸인다.
[단계 5] 마늘은 편 썰어 낮은 온도의
식용유에서 바삭하게 튀긴다.
[단계 6] 접시에 아몬드치킨볼을 담고
튀긴 마늘을 얹어 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (46, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (46, 21, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (46, 148, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (46, 149, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (46, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (47, '양배추롤', 'easy', 30, '[단계 1] 현미와 쌀을 씻어 30분간 불린 뒤
물기를 빼고, 다시마를
우려낸 물(불린 쌀 동량)로 밥을 지어
식힌 후 새우가루를 넣어 섞는다.
[단계 2] 양배추는 15~20분 정도 쪄서
준비한다.
[단계 3] 얇게 저민 쇠고기를 팬에 올려
익힌다.
[단계 4] 달래는 0.5㎝ 정도로 송송 썰어
간장, 참기름에 버무린다.
[단계 5] 김발에 양배추, 고기, 밥 순서대로
올려 돌돌 말아 양배추롤을 만든다.
[단계 6] 롤을 한입 크기로 썰어 담고
달래 무침을 얹은 뒤 송송 썬
붉은 고추를 올려 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (47, 150, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (47, 7, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (47, 31, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (47, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (48, '생선베이컨말이', 'easy', 25, '[단계 1] 피망, 파프리카는 5㎝ 길이로 채
썰고, 시금치는 갈아둔다.
[단계 2] 베이컨 위에 동태포를 올리고
그 위에 피망과 파프리카를 올려
돌돌 만다.
[단계 3] 저염버터에 생크림을 넣어서 농도를
맞춘 후 갈아놓은 시금치를 넣어
시금치소스를 만든다.
[단계 4] 달군 팬에 흰살생선베이컨말이를
올려 완전히 익힌다.
[단계 5] 접시에 담아 시금치소스를
곁들인 뒤 새싹채소로 장식하여
마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (48, 40, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (48, 48, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (48, 151, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (49, '콩고기샐러드', 'medium', 15, '[단계 1] 콩고기를 15분~20분 정도 물에
불려 물기를 완전히 제거한 뒤
저염간장양념으로 버무려 볶는다.
[단계 2] 아보카도, 바나나, 가지, 연근은
깍둑 썰고, 방울토마토는 반을
가른다.
[단계 3] 팬에 식용유(5g)를 둘러가며
방울토마토, 가지, 연근을 각각
볶아 건진다.
[단계 4] 만두피를 작은 체에 넣고
바구니 모양으로 만들어 튀긴다.
[단계 5] 콩고기와 아보카도, 바나나,
방울토마토, 가지, 연근을 튀긴
만두피에 담은 뒤 허브오일드레싱을
곁들여 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (49, 134, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (49, 50, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (49, 152, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (49, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (49, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (49, 80, 5.00, '마리', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (49, 38, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (49, 153, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (49, 154, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (50, '퀴노아닭가슴살샐러드', 'medium', 30, '[단계 1] 수박껍질은 흰 부분만 사용해
작게 깍둑 썰고, 토마토는 껍질을
벗겨 속씨를 제거해 작게 깍둑썬다.
[단계 2] 닭가슴살은 수비드해 익힌 뒤
한입 크기로 썬다.
[단계 3] 감자, 가지, 양파, 피망,
아스파라거스는 깍둑 썬 뒤
닭가슴살과 함께 볶는다.
[단계 4] 팬에 복분자를 넣고 살짝 졸인 뒤
레몬즙을 섞어 복분자소스를 만든다.
[단계 5] 접시에 퀴노아를 두른 후
닭가슴살과 감자, 가지, 양파, 피망,
아스파라거스를 올리면서 중간
중간에 토마토와 수박,
리코타치즈를 넣는다.
[단계 6] 맨 위에 퀴노아를 살짝 올려주고
양상추, 플레인 요구르트,
어린잎채소를 얹어 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (50, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (50, 143, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (50, 155, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (50, 208, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (50, 3, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (50, 156, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (50, 157, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (51, '라면월남쌈튀김', 'medium', 30, '[단계 1] 라면을 살짝 익힌다.
[단계 2] 배와 파인애플을 한입 크기로
썰고, 파프리카는 깍둑 썬다.
[단계 3] 팬에 쇠고기 양념장과 파인애플을
넣어 끓이다가 채 썬 쇠고기를
넣는다.
[단계 4] 레드와인을 넣고 알코올을 날린 뒤
매실청을 넣고 조린다.
[단계 5] 라면과 파프리카, 배를 섞은 후
라이스페이퍼에 올려 만다.
[단계 6] 달걀물을 묻힌 후 빵가루를 입혀
튀긴 뒤 그릇에 어린잎채소와 함께
담아 조린 쇠고기를 곁들여 마무리
한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (51, 158, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (51, 159, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (51, 141, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (51, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (51, 129, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (51, 157, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (51, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (51, 214, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (51, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (52, '주꾸미머리순대', 'medium', 30, '[단계 1] 주꾸미를 몸과 다리를 분리 후 잘 씻어준다.
[단계 2] 주꾸미 다리, 미나리, 양파, 당근을 다져준다.
[단계 3] 다진 채소를 계란, 다진마늘, 생강청에 양념
한다.
[단계 4] 양념한 3을 주꾸미 머리 속에 넣어주고
이쑤시개로 꽂아준다.
[단계 5] 찜기에 찐다. 찔 때 레몬즙을 뿌리면 더욱
탱탱하다.
[단계 6] 소스를 만든 뒤 주꾸미를 함께 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (52, 113, 200.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (52, 4, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (52, 10, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (52, 6, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (52, 22, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (52, 12, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (52, 13, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (52, 106, 10.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (53, '매실동치미', 'medium', 30, '[단계 1] 무는 모양 틀로 자른다.
[단계 2] 무와 연근을 손질해 놓은 후 소금에 살짝
절여준다.
[단계 3] 사과와 배는 먹기 좋게 잘라 레몬즙에 뿌려
갈변을 막아준다.
[단계 4] 물에 청양고추를 넣어 끓여서 식힌다.
[단계 5] 식힌 물에 국물 재료를 넣어 국물을 만든다.
[단계 6] 만들어진 국물에 절여진 무, 연근, 사과, 배를
넣어주어 완성한다. 24시간 이후부터 시원하게
먹는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (53, 7, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (53, 134, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (53, 57, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (53, 63, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (53, 35, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (53, 53, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (53, 13, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (53, 35, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (53, 161, 10.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (54, '조기까스', 'medium', 30, '[단계 1] 다진마늘을 버터에 충분히 볶아준다.
[단계 2] 화이트와인을 뿌려주고 소스재료로 소스를
만들어준다.
[단계 3] 찜기에 살짝 져 준다. 이때 80% 정도까지만
익혀준다.
[단계 4] 쪄준 조기는 와인과 후추로 밑간을 해준 후
전분을 발라준다.
[단계 5] 전분를 바른 조기에 허브크러스트를 두툼하게
올려준다.
[단계 6] 팬에 기름을 두르고 조기를 한쪽부터 구운 뒤,
뒤집어서 다시 구워주고 소스를 뿌려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (54, 162, 1.00, '마리', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (54, 38, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (54, 101, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (54, 12, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (54, 163, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (54, 10, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (54, 38, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (54, 12, 15.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (55, '파인애플볶음밥', 'medium', 30, '[단계 1] 양파, 2가지색 파프리카, 청고추는 작은 깍두기
모양으로 잘라준다.
[단계 2] 파인애플도 먹기 좋게 썰어준 뒤 레몬소금을
살짝 뿌려준다.
[단계 3] 계란은 풀어서 팬에 스크램블을 만들어준다.
[단계 4] 마늘을 다진 후 마늘기름으로 칵테일 새우를
볶아준다.
[단계 5] 볶아진 칵테일새우에 잘라준 채소를 넣어
다시 볶아준다.
[단계 6] 여기에 밥을 넣어서 볶아주고 파인애플과
맛간장, 통깨를 넣어서 볶아준다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (55, 164, 150.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (55, 47, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (55, 189, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (55, 10, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (55, 96, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (55, 235, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (55, 66, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (55, 12, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (55, 22, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (55, 12, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (55, 38, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (55, 35, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (55, 31, 15.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (55, 39, 10.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (56, '연근초무침', 'easy', 30, '[단계 1] 양파는 채 썰어 물에 담가주고, 오이는 돌려
깎기 해서 물에 담가준다.
[단계 2] 연근은 껍질을 까고 얇게 썰어서 식초 2방울을
넣은 물에 데쳐준다.
[단계 3] 밤도 아주 얇게 썰어서 물에 담가준다.
[단계 4] 소스 재료를 모두 넣고 믹서에 간다.
[단계 5] 물에 데쳐낸 연근은 키친타월에 올려서 물기를
완전히 제거한다.
[단계 6] 모든 재료를 넣고 소스에 버무려준다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (56, 134, 200.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (56, 10, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (56, 55, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (56, 166, 60.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (57, '코다리맑은찜', 'medium', 30, '[단계 1] 코다리는 어간장, 청주, 흰후추, 생강청에
살짝 재워준다.
[단계 2] 함초는 손질해 잘라준다.
[단계 3] 무는 소금에 살짝 절여서 수분과 염분을
제거해준다.
[단계 4] 무와 함초를 고루 섞어준다.
[단계 5] 미나리와 콩나물은 손질해준 후 찜기에 깔고
코다리를 쪄준다.
[단계 6] 소스를 만든 뒤 채소를 깔고 코다리를 올리고
미나리, 콩나물을 올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (57, 167, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (57, 4, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (57, 168, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (57, 7, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (57, 35, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (57, 106, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (57, 12, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (57, 169, 7.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (57, 39, 10.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (58, '뿌리채소두부선', 'medium', 30, '[단계 1] 두부는 물기를 꼭 짠 뒤 으깨어 전분, 계란과
섞어준다.
[단계 2] 우엉, 인삼, 감자는 아주 곱게 채 썰어서 냉수에
담가준다.
[단계 3] 볶아진 모든 채소를 각각 볶아서 한데 섞어
준다.
[단계 4] 땅콩잼으로 소스를 만들어준다.
[단계 5] 김발을 깔고 비닐을 놓아 준 후 두부를 펴준다.
[단계 6] 볶아진 채소를 두부에 넣어주고 찜기에 쪄서
식힌 뒤 한입 크기로 잘라준다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (58, 23, 300.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (58, 163, 50.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (58, 22, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (58, 38, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (58, 205, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (58, 67, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (58, 8, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (58, 96, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (58, 97, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (58, 12, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (58, 38, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (58, 170, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (58, 83, 30.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (58, 171, 2.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (59, '사과장아찌', 'easy', 30, '[단계 1] 사과는 8조각으로 잘라 씨를 제거한다.
[단계 2] 청고추, 홍고추는 어슷하게 잘라준다.
[단계 3] 양파도 먹기 좋은 크기로 잘라준다.
[단계 4] 사과는 식초 물에 살짝 절여준다.
[단계 5] 양념장을 만든다.
[단계 6] 양념장에 준비된 재료를 모두 섞어 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (59, 57, 200.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (59, 10, 80.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (59, 96, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (59, 97, 20.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (60, '참외깍두기', 'medium', 30, '[단계 1] 참외는 껍질을 벗기고 반으로 잘라 속을
파 준 후 먹기 좋게 잘라준다.
[단계 2] 청고추, 홍고추는 송송 잘라준다.
[단계 3] 양파와 미나리는 참외크기로 자르고, 대파는
송송 자른다.
[단계 4] 참외, 양파를 저염 간장에 살짝 절여준다.
[단계 5] 절여진 채소에 고춧가루로 먼저 색을 입힌다.
[단계 6] 나머지 재료를 넣고 김치를 만든다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (60, 172, 200.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (60, 10, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (60, 96, 17.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (60, 97, 17.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (60, 11, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (60, 4, 20.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (61, '새콤한연어샐러드', 'medium', 30, '[단계 1] 연어는 얇게 모양을 살려 슬라이스 한 후
정종에 소금을 섞어 분무기에 넣어 냉장고에
넣어둔다.
[단계 2] 건조된 방울토마토는 올리브오일과 후추로
양념하여 사용한다.
[단계 3] 양상추는 먹기 좋은 크기로 뜯어 어린잎과
함께 찬물에 담가 물기를 제거한 후 사용한다.
[단계 4] 유자청과 감식초는 함께 섞어 믹서에 갈아
드레싱소스를 완성한다.
[단계 5] 양파는 모양을 살려 얇게 슬라이스 하여
찬물에 담가 물기를 제거한 뒤 사용한다.
[단계 6] 샐러드 접시에 준비된 모든 채소를 담고,
연어는 장미 모양으로 접어서 보기좋게 담아
드레싱 소스를 곁들여 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (61, 173, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (61, 93, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (61, 174, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (61, 10, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (61, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (62, '논우렁순무섞박지', 'medium', 30, '[단계 1] 콜라비는 껍질을 벗긴 후 저염간장에 30분
정도 절여준다.
[단계 2] 우렁은 뜨거운 물에 데친 후 행군 뒤 물기를
빼준다.
[단계 3] 미나리는 먹기 좋은 크기로 잘라준다.
[단계 4] 다진대파, 청홍고추, 양파는 송송 잘라준다.
[단계 5] 양념장에 콜라비부터 버무린 뒤 모든 재료를
섞어서 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (62, 142, 200.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (62, 4, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (62, 10, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (62, 96, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (62, 97, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (62, 11, 10.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (63, '세가지샐러드', 'medium', 20, '[단계 1] 연두부는 동글게 썰어 준비한다.
[단계 2] 호박은 갈라 씨를 제거 하고 껍질을
벗겨 쪄서 작은 깍둑썰기로 썰어 준비
한다.
[단계 3] 바나나와 파프리카 토마토는 호박과
같은 크기의 작은 깍두기로 썰어 놓는다.
[단계 4] 닭고기살은 통후추를 넣고 약 20분 정도
삶아 건져 작은 깍두기로 썰어 준비한다.
[단계 5] 마와 잣, 흑임자를 갈아 놓은 뒤 생크림,
요거트, 식초, 올리브오일, 설탕을
섞어 샐러드 소스를 만들어 놓는다.
[단계 6] 썰어 놓은 연두부 위에 호박 , 닭고기,
토마토, 파프리카를 각각 올린 뒤 어린
잎을 올리고 소스를 뿌려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (63, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (63, 124, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (63, 38, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (63, 65, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (63, 175, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (63, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (63, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (63, 93, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (63, 84, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (63, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (63, 132, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (63, 176, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (64, '애호박들깨볶음', 'medium', 30, '[단계 1] 애호박은 반달 모양으로 썰어 준다.
[단계 2] 썰어 놓은 호박에 소금을 넣고 살짝
절여 물기를 제거하고 준비한다.
[단계 3] 양파는 채를 썰고, 대파는 1/4로 자르고,
홍고추는 어슷썰어 자연스럽게 씨를
제거해 놓는다.
[단계 4] 팬에 들기름을 넣고, 마늘을 먼저
볶는다.
[단계 5] 볶아진 팬에 건새우를 넣어 볶아준다.
[단계 6] 건새우가 볶아지면, 썰어 놓은 호박을
넣어 볶다가 양파와 대파를 넣어
볶으면서 들깨 가루와 넣어 살짝
볶으면서 마지막에 썰어 놓은 홍고추를
넣어 한 번만 더 볶아 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (64, 64, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (64, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (64, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (64, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (64, 97, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (64, 177, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (64, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (64, 72, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (64, 178, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (65, '고구마바나나샐러드', 'medium', 20, '[단계 1] 고구마는 찜통에 약 20분 정도 쪄서
껍질을 벗겨 준비한다.
[단계 2] 뜨거운 고구마가 한김 빠지면, 곱게
으깨 놓는다.
[단계 3] 으깨진 고구마에 바나나를 썰어
요거트와 함께 넣는다.
[단계 4] 3번에 다시 연유를 넣어 골고루 섞는다.
[단계 5] 잣은 종이를 깔고 곱게 다져 준비한다.
[단계 6] 어린잎은 물에 담그어, 건져 물기를
제거해 놓고, 으깬 고구마에 다진 잣을
넣어 샐러드를 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (65, 9, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (65, 175, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (65, 179, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (65, 93, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (65, 176, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (65, 180, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (66, '누룽지새우튀김', 'medium', 30, '[단계 1] 새우는 껍질을 제거하고 소금과
후춧가루를 넣어 밑간을 해놓는다.
[단계 2] 어린잎은 찬물에 담그어 놓는다.
[단계 3] 튀김가루에 달걀을 넣어 잘 섞어
튀김반죽을 만들어 놓는다.
[단계 4] 밑간을 해 놓은 새우를 튀김반죽에
넣어 옷을 입힌다.
[단계 5] 누룽지는 170℃의 온도 튀김 기름에
튀겨내고, 튀김옷 입힌 새우도 튀겨낸다.
[단계 6] 냄비에 오렌지주스와 설탕, 식초를
넣어 은근히 졸여 소스를 만들고,
어린잎은 찬물에 건져 물기를 제거하고
접시에 깔고 튀긴 누룽지와 튀긴 새우를
올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (66, 87, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (66, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (66, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (66, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (66, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (66, 181, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (66, 125, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (66, 93, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (67, '백김치주꾸미샐러드', 'medium', 30, '[단계 1] 백김치는 살짝 씻어 물기를 제거하고
잘게 썰어 준비한다.
[단계 2] 양파와 마늘은 다지고 파는 채를 썰어
놓는다.
[단계 3] 어린잎은 찬 물에 담그어 놓았다가,
다시 소창에 건져 물기를 빼 놓는다.
[단계 4] 냄비에 물을 넣고, 양파와 파를 넣어
끓이다가 준비한 쭈구미를 넣고
부드럽게 데쳐 썰어 놓는다.
[단계 5] 식초와 간장, 설탕, 꿀, 레몬, 다진양파,
다진마늘을 넣고 잘 섞어서 샐러드
드레싱을 만든다.
[단계 6] 준비한 백김치(①)와 주꾸미(②)를
섞은 후 양상추를 접시에 깔고, 그 위에
섞어놓은 백김치와 주꾸미를 올리고,
홍고추와 어린잎을 위에 장식으로 올린
후 샐러드 소스를 뿌려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (67, 24, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (67, 113, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (67, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (67, 3, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (67, 97, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (67, 93, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (67, 31, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (67, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (67, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (67, 154, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (67, 88, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (67, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (67, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (68, '닭고기월남쌈', 'medium', 20, '[단계 1] 닭고기살에 로즈마리를 뿌려 약 3시간
이상 숙성을 시킨다.
[단계 2] 냄비에 물을 1/3쯤 넣고, 양파채를 썰어
넣어 끓으면, 숙성된 닭고기살을 넣고
약 20분 정도 삶아 건진다.
[단계 3] 삶아 건진 닭고기살을 한 김 빼고, 길게
손으로 찢어 소금과 후춧가루에 살짝
무치고, 오이와 파프리카는 씨를 제거
하고 채를 썰고, 당근도 오이채의 길이에
맞게 채를 썰어 준비해 놓는다.
[단계 4] 마늘을 다지고, 고춧가루와 설탕, 식초,
레몬즙을 넣어 소스를 만든다.
[단계 5] 뜨거운 물에 라이스페이퍼를 살짝 넣어
바로 건진다.
[단계 6] 건져 놓은 라이스페이퍼에 준비한
닭고기살과 파프리카, 오이, 당근 넣고
돌돌 말아, 녹말가루를 살짝 입혀, 팬에
굴리듯 익혀 완성하고, 준비해 놓은
소스와 함께 제공한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (68, 124, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (68, 80, 5.00, '마리', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (68, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (68, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (68, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (68, 55, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (68, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (68, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (68, 141, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (68, 115, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (68, 33, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (68, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (68, 106, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (69, '단호박소고기롤', 'hard', 20, '[단계 1] 단호박은 1/8 등분으로 갈라 속을
파내고 찜통에서 약 15~20분 정도
충분히 쪄낸다.
[단계 2] 소고기는 채를 썰어 마늘, 간장, 설탕에
양념을 하고 팬에 볶아서 식힌다.
[단계 3] 파프리카와 오이, 적양배추는 채를
썰고, 무순은 물에 잠시 담그어 놓고,
사과는 채를 썰어 설탕물에 잠시 담그어
놓고, 팽이버섯은 밑둥만 잘라 한 줌
집기 좋은 크기로 준비해 놓는다.
[단계 4] 다진마늘과 다진 양파 ,올리브오일,
설탕, 식초, 소금을 넣고, 골고루 섞어
소스를 만들어 놓는다.
[단계 5] 쪄 낸 단호박은 껍질을 벗기고 채에
곱게 내려 밀가루와 물, 소금을 조금
섞어 단호박 반죽을 만들어 놓는다.
[단계 6] 팬에 올리브 오일을 바르고, 만들어
놓은 단호박 반죽을 한 국자씩 떠 넣어,
밀전병을 만들고, 밀전병이 익으면,
한 김 식혀, 그 안에 소고기 볶음과
채소를 넣어 돌돌 말아 소스와 함께
완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (69, 14, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (69, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (69, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (69, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (69, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (69, 55, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (69, 185, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (69, 57, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (69, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (69, 110, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (69, 7, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (69, 65, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (69, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (69, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (69, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (69, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (69, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (70, '생선카레튀김', 'medium', 30, '[단계 1] 생선살에 생강즙과 정종을 넣고 약 30분
정도 숙성을 시켜 비릿한 맛 제거 및 생선
살의 탱탱함을 살려준다.
[단계 2] 콩가루와 밀가루, 카레가루, 녹말가루,
달걀을 넣고 골고루 섞어 튀김 반죽을
만들어 놓는다.
[단계 3] 깻잎은 반으로 접어 채를 썰어 물에
잠시 담그어 놓는다.
[단계 4] 깻잎(③)은 물기를 제거하고
튀김반죽(②)을 골고루 입힌다.
[단계 5] 숙성시킨 생선살(①)에 녹말가루를
살짝 입히고 튀김 반죽(②)을 골고루
입힌 뒤, 튀김반죽을 입힌 깻잎(④)을
얹어 튀김 기름 170℃ 온도에 넣어
약 2분 정도 튀겨 기름을 자연스럽게
빼 놓는다.
[단계 6] 마요네즈와 요구르트, 설탕, 식초를
넣어 골고루 섞어 튀김소스를 만들고,
튀김을 접시에 담아 양상추와 함께 얹어
완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (70, 186, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (70, 13, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (70, 112, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (70, 115, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (70, 2, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (70, 115, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (70, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (70, 3, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (71, '삼겹가지볶음', 'hard', 30, '[단계 1] 썰어 놓은 삼겹살에 생갑즙과 정종을
넣고 약 2시간 정도 숙성을 시켜 준비
한다.
[단계 2] 가지는 씨가 적은 것으로 골라 반으로
갈라 어슷썰어 놓는다.
[단계 3] 양파와 깻잎은 채를 썰고, 당근은
직사각형으로 썰고, 대파는 송송 썰고,
느타리는 손으로 찢어 준비한다.
[단계 4] 고춧가루과 다진마늘, 간장, 올리고당,
후춧가루, 설탕을 넣고 골고루 섞어
양념장을 만든다.
[단계 5] 숙성시켜 놓은 삼겹살에 만들어 놓은
양념장을 넣고 골고루 무쳐 놓는다.
[단계 6] 팬에 기름을 살짝 둘러 양념한 고기(⑤)
를 먼저 볶은 후 고기가 중간쯤 익으면,
가지(②)와 썰어 놓은 채소(③)를 넣어
볶다가 마지막에 참기름과 잣을 넣고
한 번 더 볶은 후 통깨를 올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (71, 16, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (71, 13, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (71, 112, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (71, 187, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (71, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (71, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (71, 2, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (71, 131, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (71, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (71, 33, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (71, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (71, 176, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (71, 39, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (71, 98, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (71, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (71, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (72, '주꾸미샐러드', 'medium', 30, '[단계 1] 끓는 물에 식초 한 방울을 떨어 뜨려
주꾸미를 데쳐 한김 식혀 먹기 좋게
썰어놓는다.
[단계 2] 끓는 물에 식초 한 방울을 떨어 뜨려
주꾸미를 데쳐 한김 식혀먹기 좋게
썰어놓는다.
[단계 3] 양상추는 손으로 뜯어, 찬물에 담그어
놓는다.
[단계 4] 미나리는 약 4cm 길이로 썰고, 홍고추는
어슷 썰어 씨를 살짝 제거하고 피망은
씨를 제거하고 미나리와 비슷한 길이로
썰어놓는다.
[단계 5] 강판에 곱게 간 배즙과 무즙에 와사비,
설탕, 다진마늘, 식초, 소금을 넣어
샐러드소스를 만든다.
[단계 6] 만들어 놓은 샐러드소스와 함께 썰어
놓은 주꾸미(②)와 채소(③, ④)를 넣어
먹기 직전에 버무려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (72, 113, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (72, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (72, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (72, 3, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (72, 4, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (72, 97, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (72, 143, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (72, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (72, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (72, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (73, '닭가슴살현미스테이크', 'medium', 5, '[단계 1] 닭가슴살에 칼을 1/3 쯤 넣고 양쪽으로
포를 뜨고, 정종을 살짝 발라놓는다.
[단계 2] 포뜬 닭가슴살 위에 카레가루를 솔솔
뿌려 숙성을 시킨다.
[단계 3] 현미쌀은 물에 충분히 불려, 물기를
빼 놓고, 양배추와 적 양배추는 곱게
채를 썰어 각각 찬물에 담그어 싱싱
해 지면 건져 물기를 빼놓는다.
[단계 4] 냄비에 토마토소스를 끓이다가
생크림을 넣고 살짝 한 번 더
끓여놓는다.
[단계 5] 튀김기름에 온도가 약 170℃ 정도가
되면, 불려 놓은 현미쌀의 물기를
제거한 뒤 튀겨 기름을 제거해 놓는다.
[단계 6] 숙성된 닭가슴살(①)에 튀긴 현미쌀
(⑤)을 앞뒤로 골고루 바르고 다시
170℃ 온도의 튀김 기름에 약 3~5분
정도 튀겨내고, 양배추와 적채를 깔고
그 위에 튀겨진 닭가슴살을 올리고,
토마토소스를 뿌려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (73, 19, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (73, 112, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (73, 120, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (73, 188, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (73, 125, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (73, 63, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (73, 182, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (74, '삼겹선', 'hard', 30, '[단계 1] 삼겹살에 소금, 후춧가루, 생강즙,
정종을 넣고 약 30분 정도 숙성을 시킨다.
[단계 2] 조와 쌀은 물에 약 30분 정도 불려 밥을
짓고, 밥이 다 익으면, 뚜껑을 열어 주걱
으로 골고루 섞어 한 김을 빼 놓는다.
[단계 3] 파는 길게 채를 썰어 물에 담그어 파채가
둥글게 말리도록 한다.
[단계 4] 설탕과 식초, 레몬, 소금, 고춧가루,
매실액을 골고루 섞어 소스를 만들어
놓는다.
[단계 5] 파프리카는 속을 제거하고 양파,
당근, 파프리카를 양파와 같은 길이로
채를 썰고, 새송이와 표고버섯은 살짝
데쳐 채를 썰고, 깻잎도 채를 썰어
놓는다.
[단계 6] 파프리카는 속을 제거하고 양파, 당근,
파프리카를 양파와 같은 길이로 채를
썰고, 새송이와 표고버섯은 살짝 데쳐
채를 썰고, 깻잎도 채를 썰어 놓는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (74, 16, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (74, 112, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (74, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (74, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (74, 13, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (74, 189, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (74, 121, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (74, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (74, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (74, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (74, 82, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (74, 145, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (74, 2, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (74, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (74, 37, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (74, 52, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (75, '미니버섯탕수', 'medium', 30, '[단계 1] 미니버섯을 깨끗이 씻어 소금을 살짝
뿌려 놓는다.
[단계 2] 녹말가루에 물을 반쯤 넣고, 가만히
가라앉혀 윗물은 따라 버리고, 딱딱한
된녹말을 만들어 놓는다.
[단계 3] 브로컬리는 끓는 물에 데쳐 작게 썰고,
오이는 반달로 썰고, 당근은 은행잎
모양으로 썰어 준비하고, 파프리카는
속씨를 제거하고, 삼각지게 썰어 준비
한다.
[단계 4] 간장과 홍초, 설탕을 넣어 골고루 섞어
탕수육소스를 만들어 놓는다.
[단계 5] 소금을 뿌려 놓은 미니 버섯에 만들어
놓은 된 녹말과 달걀흰자를 넣어 골고
루 섞는다.
[단계 6] 튀김 기름의 온도가 170~180℃가
되면, 녹말 입힌 미니버섯을 바삭 하게
튀겨 주고, 다시 팬에 만들어 놓은
탕수육소스를 바글바글 끓이다가,
썰어 놓은 채소를 넣고 살짝 익힌 후,
물녹말을 한 숟가락 정도 넣어 끓인 후
튀겨진 미니버섯 위에 올려 완성해 준다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (75, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (75, 115, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (75, 190, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (75, 125, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (75, 119, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (75, 55, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (75, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (75, 183, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (75, 235, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (75, 191, 10.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (75, 192, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (76, '옥음밥', 'medium', 30, '[단계 1] 쌀은 깨끗이 씻어 30분 이상 불려 밥을
지어 식힌다.
[단계 2] 옥수수콘은 체에 걸러 물기를 뺀다.
[단계 3] 양파, 애호박, 당근, 양파 및
새송이버섯은 옥수수콘 크기로 썰고
마늘은 다진다.
[단계 4] 팬에 기름을 두르고 야채를 먼저
볶는다.
[단계 5] 볶은 야채에 식혀놓은 밥을 넣고
볶다가 저염간장, 후춧가루로 간을
하고 옥수수콘을 넣고 살짝 볶는다.
[단계 6] 팬에 기름을 자작하게 넣고,
라이스페이퍼를 둥글게 넣고 튀겨
그릇에 담은 뒤 볶음밥을 담는다');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (76, 242, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (76, 64, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (76, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (76, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (76, 82, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (76, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (76, 141, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (76, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (76, 121, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (76, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (76, 33, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (77, '와사비 연어초밥', 'medium', 30, '[단계 1] 연어는 끝을 뾰족하게 살려
슬라이스한다.
[단계 2] 쌀은 깨끗이 씻어 30분 이상 불려 밥을
지어 식힌다.
[단계 3] 냄비에 식초, 설탕, 소금 약간과 물을
동량으로 넣고 끓인 뒤 식혀 촛물을
만들어 밥에 넣고 골고루 섞는다.
[단계 4] 당근과 표고버섯은 입자있게 다져 살짝
볶아 식혀놓은 초밥에 넣고 잘
섞어준다.
[단계 5] 와사비 가루에 30℃정도의 물을 넣고
섞은 뒤 발효 시키고, 초밥 형태를
만들어 그 위에 와사비를 바르고
연어를 올린 후 접시에 담는다
[단계 6] 새싹과 파슬리는 찬물에 담았다 건져
물기를 빼고, 연어 초밥 옆에 올린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (77, 173, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (77, 121, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (77, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (77, 145, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (77, 75, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (77, 193, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (77, 77, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (77, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (77, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (77, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (78, '음메꼬꼬돌돌', 'medium', 30, '[단계 1] 소고기는 넓게 펴서 소금, 후춧가루로
밑간을 하고 굽는다.
[단계 2] 닭가슴살은 소금, 후춧가루로 밑간을
하여 굽고 길이대로 썬다.
[단계 3] 미나리는 끓는 물에 넣고 데쳐 찬물에
헹군다.
[단계 4] 홍고추는 씨를 제거 하고 길게 썰어
준비한다.
[단계 5] 달걀은 황백으로 나눠 지단을 부쳐
길게 썰어 놓는다
[단계 6] 밑간한 소고기와 닭살 에 찹쌀가루를
뭍혀 홍고추와 달걀 황백지단을 넣어
돌돌 말아 미나리로 띠를 둘러 팬에
기름을 살짝 둘러 익힌다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (78, 14, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (78, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (78, 194, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (78, 138, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (78, 4, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (78, 146, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (78, 97, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (78, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (78, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (78, 38, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (78, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (78, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (78, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (79, '전복리조또', 'medium', 30, '[단계 1] 쌀은 깨끗이 씻어 30분 정도 불린다
[단계 2] 전복은 수저로 떼어 내어 소금으로
세척한다.
[단계 3] 준비된 전복에 버터를 두르고 굽는다
[단계 4] 당근. 양파 . 양송이는 입자 있게
다진다.
[단계 5] 냄비에 올리브 오일을 넣고 불린 쌀을
볶는다.
[단계 6] 쌀이 어느 정도 볶아지면 다져 놓은
야채를 넣어 볶다가 우유를 넣어
끓이고, 쌀이 퍼지면 구워 놓은 전복을
넣어 다시 끓인다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (79, 121, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (79, 86, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (79, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (79, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (79, 195, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (79, 21, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (79, 84, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (79, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (79, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (79, 40, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (80, '참깨흑임 자연두부샐러드', 'medium', 30, '[단계 1] 참깨와 흑임자를 섞어 곱게 간다.
[단계 2] 갈아 놓은 참깨와 흑임자에 설탕과
식초를 넣고 섞는다.
[단계 3] 2번에 우유와 마요네즈를 넣고 골고루
섞어 참깨 흑임자 드레싱을 만든다.
[단계 4] 연두부는 동그랗게 자른다.
[단계 5] 파프리카는 채 썬다.
[단계 6] 접시에 드레싱, 연두부, 파프리카,
무순, 날치알 순으로 올린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (80, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (80, 171, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (80, 132, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (80, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (80, 7, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (80, 196, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (80, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (80, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (80, 170, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (80, 21, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (81, '콩나물부추볶음', 'medium', 30, '[단계 1] 감자는 채를 썰어 물에 담궈 전분을
제거하고, 양파와 당근 파는 채를 썬다.
[단계 2] 콩나물은 머리와 꼬리를 손질한다
[단계 3] 물이 끓으면 손질한 콩나물을 넣는다.
[단계 4] 콩나물이 익으면 체에 건져 찬물에
헹군다.
[단계 5] 부추는 약 6cm 길이로 썬다.
[단계 6] 팬에 기름을 두르고 콩나물을 넣고
살짝 볶다가 썰어 놓은 야채를 넣고
볶으면서 소금 간을 하고 마지막에
부추를 넣고');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (81, 167, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (81, 5, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (81, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (81, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (81, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (81, 8, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (81, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (81, 33, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (82, '파프리카더덕소고기깻잎롤', 'medium', 30, '[단계 1] 소고기는 후춧가루, 올리브오일로
밑간을 한다.
[단계 2] 더덕은 칼로 껍질을 돌려 깎고,
파프리카, 아스파라거스와 함께
가늘게 채썬다.
[단계 3] 파인애플, 양파, 당근, 대파는 채썬다.
[단계 4] 밑간한 고기를 팬에 굽는다.
[단계 5] 따로 갈아 놓은 파인애플과 레몬즙
꿀을 섞어 드레싱을 만는다
[단계 6] 구워 놓은 고기에 더덕과 파인애플
아스파라거스 깻잎을 넣어 돌돌 말고,
팬에 발사믹 소스를 끓인 뒤 말아 놓은
소고기롤을 넣어 졸인다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (82, 197, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (82, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (82, 198, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (82, 2, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (82, 199, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (82, 155, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (82, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (82, 154, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (82, 88, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (82, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (82, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (82, 84, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (82, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (83, '해물아란치니', 'medium', 30, '[단계 1] 새우는 껍질을 벗겨 다진다.
[단계 2] 오징어는 썰어서 다진다.
[단계 3] 양파, 샐러리, 마늘은 다져 팬에 볶아
식힌다.
[단계 4] 토마토는 껍질을 벗겨 다진다.
[단계 5] 다진 토마토를 팬에 볶다가 다진
새우와 오징어, 밥을 넣어 볶고, 3번을
넣고 볶아 동그랗게 모양을 만든다
[단계 6] 동그란 밥에 레몬을 섞은 달걀노른자를
묻히고 빵가루 옷을 입혀 팬에 기름을
둘러 굴려가며 익힌 후 접시에 담고
어린잎을 올린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (83, 94, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (83, 87, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (83, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (83, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (83, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (83, 100, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (83, 164, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (83, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (83, 93, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (83, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (83, 88, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (83, 129, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (84, '호박잎삼계', 'medium', 30, '[단계 1] 닭고기는 넓게 펴 소금, 후추로 밑간을
한다.
[단계 2] 찹쌀은 깨끗이 씻어 밥을 짓는다
[단계 3] 인삼은 뇌두를 제거 하고 깨끗이 씻어
길게 썬다.
[단계 4] 미나리는 데쳐 찬물에 헹구고, 대추는
씨를 제거하고 채를 썬다.
[단계 5] 호박잎은 끓는 물에 데쳐 찬물에
식힌다.
[단계 6] 데친 호박잎에 밑간한 닭고기와
찹쌀밥을 올리고 그 위에 인삼, 데친
미나리, 대추를 올려 돌돌 말아 찜통에
찐 뒤 먹기 좋게 썬다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (84, 20, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (84, 67, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (84, 4, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (84, 62, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (84, 200, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (84, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (84, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (85, '노른자크림 육회샐러드', 'medium', 30, '[단계 1] 소고기는 홍두깨살로 준비해서
0.3mm 두께로 썰고, 배는 껍질을 벗겨
채 썰어 설탕을 뿌린다.
[단계 2] 끓는 물에 소금을 넣고 두릅을 데친 후
찬물에 헹구어 건진다.
[단계 3] 소금과 설탕, 다진 마늘을 넣고 소고기
육회 양념장을 만든다.
[단계 4] 삶은 달걀노른자와 크림치즈, 레몬을
섞어 짤주머니에 담는다.
[단계 5] 숙성이 잘된 아보카도는 강판에 갈아
준비한다.
[단계 6] 접시에 양념한 육회와 두릅을 담고 그
위에 배를 올리고, 달걀크림과
아보카도를 짜서 올린다');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (85, 201, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (85, 79, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (85, 202, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (85, 203, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (85, 63, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (85, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (85, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (85, 88, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (85, 208, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (85, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (85, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (85, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (86, '두부 카프리제', 'medium', 30, '[단계 1] 토마토는 깨끗이 씻어 슬라이스한다.
[단계 2] 두부는 원형틀을 이용해서 토마토와
같은 크기로 만들고 소금을 살짝 뿌린
뒤 물기를 제거한다.
[단계 3] 팬에 올리브오일을 두르고 두부를 살짝
굽는다.
[단계 4] 어린잎은 찬물에 담근다.
[단계 5] 발사믹소스에 설탕과 레몬즙을 넣고
골고루 섞어 소스를 만든다.
[단계 6] 두부와 준비한 토마토를 접시에 돌려
담고 어린잎을 위에 올린 뒤 먹기
직전에 발사믹소스와 파마산치즈를
뿌려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (86, 14, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (86, 16, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (86, 145, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (86, 9, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (86, 134, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (86, 8, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (86, 2, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (86, 64, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (86, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (86, 204, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (86, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (86, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (86, 230, 5.00, '장', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (87, '미역볶음밥', 'easy', 30, '[단계 1] 쌀과 다시마를 넣고 쌀과 동량의
물을 부어 밥을 고슬고슬하게
짓는다.
[단계 2] 양파는 굵게 다지고, 쪽파와 고추는
송송 썰고, 오징어와 주꾸미는 먹기
좋은 크기로 썬다.
[단계 3] 달군 팬에 들기름을 두르고 다진
마늘을 볶아 향을 낸다.
[단계 4] 미역을 넣고 볶다가 손질해둔
오징어, 주꾸미, 새우살, 양파를 넣어
볶는다.
[단계 5] 밥을 넣고 소금을 넣어 볶다가
들깻가루를 넣어 볶는다.
[단계 6] 송송 썬 쪽파와 청양고추, 붉은
고추를 넣어 조금 더 볶아
마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (87, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (87, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (88, '청국장볶음밥', 'medium', 30, '[단계 1] 쌀과 현미는 물에 깨끗이 씻어 불린
후 밥을 고슬고슬하게 짓는다.
[단계 2] 감자, 고구마, 우엉, 양파, 당근,
애호박, 연근은 작게 깍둑 썰고,
마늘은 편 썬다.
[단계 3] 시금치와 참나물, 깻잎은 굵게 채
썰고, 미나리는 2.5㎝ 길이로 썬다.
[단계 4] 물(50g)에 다시마를 우려내 육수를
내고 청국장을 넣어 잘 푼 뒤
들깻가루를 넣고 잘 저어주며 졸여
청국장소스를 만든다.
[단계 5] 팬에 올리브유와 들기름을 두르고
양파, 마늘을 약한 불에 볶다가
감자, 고구마, 우엉, 연근, 당근,
애호박을 넣고 같이 볶는다.
[단계 6] 밥과 청국장소스를 부어 80% 정도
볶다가 시금치, 참나물, 미나리를
넣고 한 번 더 볶고 채 썬 깻잎을
올려 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (88, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (88, 64, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (88, 205, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (88, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (88, 1, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (88, 91, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (88, 2, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (88, 4, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (89, '해물볶음밥', 'medium', 30, '[단계 1] 쌀은 씻어서 체에 건져 1시간 이상
불린 후 동량의 물을 부어 밥을
짓는다.
[단계 2] 아스파라거스, 새송이버섯은 작게
깍둑 썰고, 무와 우엉, 미나리는
다진다.
[단계 3] 식용유(10g)를 두른 팬을 중간 불로
달궈 달걀을 넣고 스크램블로
볶는다.
[단계 4] 문어, 새우살, 주꾸미는 끓는 물에
살짝 데쳐 작게 자른다.
[단계 5] 식용유(15g)를 두른 팬을 중간 불로
달궈 밥을 넣어 볶다가 문어, 새우살,
주꾸미, 스크램블 에그를 넣고 조금
더 볶는다.
[단계 6] 무와 우엉에 고추장과 참기름,
물(40g)을 넣고 묽게 졸인 후 불을
끄고 미나리를 넣고 섞어
미나리볶음고추장을 만들어 밥에
곁들여 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (89, 121, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (89, 155, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (89, 82, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (89, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (89, 206, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (89, 207, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (89, 113, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (89, 4, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (89, 205, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (89, 4, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (90, '토마토카레 채소볶음밥', 'easy', 30, '[단계 1] 감자, 양파, 당근, 피망은 볶음밥에
넣을 분량은 잘게 다지고, 카레에
넣을 분량은 한입 크기로 썬다.
[단계 2] 닭가슴살도 한입 크기로 잘라
후춧가루로 밑간한다.
[단계 3] 팬에 식용유(15g)를 두른 뒤 잘게
다진 감자, 양파, 당근, 피망을 넣고
볶다가 밥을 넣고 같이 볶는다.
[단계 4] 식용유(15g)를 두른 팬에 닭고기를
먼저 볶다가 한입 크기로 썬 감자,
당근, 양파, 피망, 브로콜리를 넣고
볶은 뒤 마지막에 방울토마토를
넣는다.
[단계 5] 토마토페이스트을 넣고 볶다가
파프리카가루를 넣어 향을 낸다.
[단계 6] 카레가루를 푼 물(300g)을 부어
끓이다가 플레인 요구르트를 넣고
농도를 맞춘 뒤 밥 위에 얹어
마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (90, 164, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (90, 149, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (90, 50, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (90, 156, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (91, '구운주먹밥', 'easy', 25, '[단계 1] 현미로 밥을 지은 뒤 밥 밑간을 넣고
섞는다.
[단계 2] 톳에 톳 무침양념을 넣고 버무린다.
[단계 3] 밥에 톳을 넣고 버무린다.
[단계 4] 밥을 먹기 좋은 크기로 둥글게 뭉친
뒤 부순 생김을 골고루 묻힌다.
[단계 5] 주먹밥에 달걀물을 입힌 뒤 팬에
구워 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (91, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (91, 171, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (92, '깐풍주먹밥', 'medium', 30, '[단계 1] 칵테일새우는 잘게 다진다.
[단계 2] 다진 쇠고기에 후춧가루와
참기름(3g)으로 밑간한 후 볶는다.
[단계 3] 찹쌀현미밥에 참기름(4g)을 넣어
밑간하고 식힌 후 새우와 쇠고기를
넣어 뭉쳐준다.
[단계 4] 마늘과 고추는 볶다가 식초와
함초가루, 설탕, 물(30g)을 넣고 졸여
소스를 만든다.
[단계 5] 밀가루는 반죽한 뒤 얇게 밀어
삼각형으로 잘라 튀긴 후 기름을
뺀다.
[단계 6] 위에 주먹밥을 올리고 파인애플을
올린 후 소스를 곁들여 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (92, 121, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (92, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (92, 199, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (92, 5, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (92, 126, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (92, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (93, '닭봉주먹밥', 'medium', 30, '[단계 1] 닭봉은 손질한 뒤 후춧가루를
섞은 우유에 담가두었다가 구워
준비한다.
[단계 2] 단호박, 새송이버섯은 구워서
준비한다.
[단계 3] 소스를 만든다.
[단계 4] 가지, 주키니호박, 당근, 양파,
시래기는 잘게 다진 뒤 볶는다.
[단계 5] 볶은 채소와 치즈를 참기름, 간장과
함께 밥에 넣고 섞는다.
[단계 6] 구운 닭봉을 밥으로 감싼 뒤 구운
단호박, 새송이버섯, 새싹채소와
함께 담아 소스를 곁들여
마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (93, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (93, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (93, 208, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (93, 164, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (93, 151, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (94, '봄주먹밥', 'hard', 30, '[단계 1] 봄동과 깻잎은 데친 뒤 체에 밭쳐
물기를 제거한다.
[단계 2] 데친 꼬막살은 물기를 제거하고
다져 올리브유로 양념한 밥에
참깨와 함께 버무린 후 한입 크기로
주먹밥을 만든다.
[단계 3] 낙지 다리는 데쳐 찬물에 담가 식힌
뒤 참기름(3g)에 양념하고, 두릅은
데쳐 물기를 제거한 뒤 올리브유로
양념한다.
[단계 4] 봄동에 꼬막밥을 넣고 만 뒤
깻잎으로 싸고 데친 미나리로 묶어
봄주먹밥을 만든다.
[단계 5] 냄비에 참기름(10g)을 두르고 양파,
당근, 애호박을 넣고 볶은 뒤 물,
된장, 고춧가루, 다진 마늘, 붉은
고추, 청양고추를 넣고 끓이다가
두부를 넣고 조려 두부강된장을
만든다.
[단계 6] 봄주먹밥에 낙지와 두릅,
두부강된장을 곁들여 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (94, 202, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (94, 153, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (94, 4, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (94, 164, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (94, 153, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (94, 164, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (94, 171, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (94, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (94, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (94, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (94, 64, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (94, 53, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (94, 30, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (94, 37, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (94, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (94, 150, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (94, 161, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (94, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (95, '깻잎장아찌롤', 'medium', 30, '[단계 1] 쌀을 씻어 밥을 지은 뒤 밥 밑간을
한다.
[단계 2] 양파, 피클, 삶은 달걀은 다진 뒤
마요네즈에 섞어
허브타르타르드레싱을 만든다.
[단계 3] 김 위에 양쪽으로 밥을 펴고
허브타르타르드레싱을 위에
올린 후 만다.
[단계 4] 깻잎장아찌를 바닥에 깔고 말아놓은
롤을 올린 후 한 번 더 만다.
[단계 5] 머스타드소스를 만든다.
[단계 6] 한입 크기로 롤을 썬 뒤 새싹과
소스를 곁들여 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (95, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (95, 171, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (95, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (95, 209, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (95, 210, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (95, 170, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (96, '참치비빔밥롤', 'medium', 30, '[단계 1] 쌀을 물에 불린 뒤 완두콩을 함께
넣고 밥을 짓는다.
[단계 2] 달걀을 풀어 체에 내린 뒤 지단을
부치면서 반 정도 익었을 때 그 위에
얇게 썬 주키니호박, 당근, 가지를
올려 익힌다.
[단계 3] 참치를 참치밑간에 재운 뒤 겉만
살짝 익힌다.
[단계 4] 김에 밥을 올리고, 뒤집어 참치를
올려 만 뒤 그 위에 지단을 올려
한 번 더 만다.
[단계 5] 사과드레싱을 만들고,
토마토소스 재료를 간 뒤 체에
거른다.
[단계 6] 참치비빔밥롤을 담은 뒤
토마토소스를 곁들이고, 케일에
사과드레싱을 뿌려 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (96, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (96, 187, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (96, 28, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (96, 164, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (96, 211, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (96, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (96, 153, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (96, 57, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (96, 57, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (96, 80, 5.00, '마리', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (96, 154, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (97, '새싹참치김밥', 'easy', 25, '[단계 1] 소스를 만든다.
[단계 2] 파프리카와 파인애플을 먹기 좋게
썬다.
[단계 3] 스크램블 에그를 만든다.
[단계 4] 김발 위에 ⅔크기로 자른 김을 놓고
밥을 고루 편 뒤 새싹채소,
스크램블 에그, 파프리카, 기름 뺀
참치, 파인애플을 올리고 소스를
고르게 뿌린다.
[단계 5] 반으로 접어 먹기 좋게 썰어
마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (97, 151, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (97, 28, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (98, '연어주먹밥튀김', 'medium', 30, '[단계 1] 당근, 피망, 양파를 잘게 다진 뒤
기름에 살짝 볶아 밥에
마요네즈(10g)와 함께 넣어 섞는다.
[단계 2] 통조림 연어는 기름기를 빼고,
식초를 넣은 끓는 물에서 30초 정도
데친다.
[단계 3] 데리야키소스와 마요네즈(10g)에
연어를 넣고 버무려 양념한다.
[단계 4] 밥을 동그랗게 빚은 뒤 가운데에
연어를 넣고 주먹밥을 만든다.
[단계 5] 달걀물과 빵가루를 입혀 160℃로
예열한 기름에 바삭하게 튀긴다.
[단계 6] 연어주먹밥튀김을 담고
어린잎채소를 곁들인 뒤
오리엔탈소스를 곁들여 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (98, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (98, 129, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (98, 157, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (98, 153, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (98, 171, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (99, '오징어불고기김밥', 'medium', 30, '[단계 1] 오징어 몸통 안쪽에 칼집을 내고
끓는 물에 데친다.
[단계 2] 파프리카와 당근, 피망은 작게 다져
볶은 뒤 밥에 넣어 섞는다.
[단계 3] 쇠고기는 참기름에 볶는다.
[단계 4] 달걀을 풀어 약한 불로 달군 팬에
부은 뒤 김가루를 뿌려 지단을
부치고, 바닥이 익으면 깻잎과
밥을 올린다.
[단계 5] 데친 오징어, 볶은 쇠고기 순으로
올려 만 뒤 랩으로 싼다.
[단계 6] 고추장과 매실청을 섞은 뒤 팬에
넣고 약한 불에서 끓여 소스를
만들고 한입 크기로 썬 김밥에
구운 버섯을 함께 곁들여
마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (99, 212, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (99, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (99, 24, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (99, 2, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (99, 82, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (100, '닭가슴살청포묵비빔밥', 'easy', 30, '[단계 1] 닭고기 삶는 재료를 물(100g)에 넣어
끓이다가 닭가슴살을 넣고 삶아
한입 크기로 썬다.
[단계 2] 양배추는 곱게 채 썰고, 청포묵은
먹기 좋은 크기로 썬다.
[단계 3] 숙주는 끓는 물에 데쳐 물기를 뺀다
[단계 4] 비빔소스를 만든다.
[단계 5] 쌀에 물을 붓고 밥을 짓는다.
[단계 6] 밥 위에 닭가슴살, 양배추, 청포묵,
숙주, 달걀지단, 무순을 담아
마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (100, 121, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (100, 7, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (101, '함초떡갈비', 'medium', 30, '[단계 1] 함초는 송송 다져준다.
[단계 2] 당근, 새송이, 샐러리, 양파를 송송 다져준다.
[단계 3] 볼에 소고기, 돼지고기, 다져 놓은 채소와
다진마늘, 다진대파, 참기름을 넣고 반죽해준다.
[단계 4] 여기에 함초 다진 것을 넣고 다시 반죽해 준다.
[단계 5] 떡갈비 모양으로 만들어준 후 팬에 노릇하게
구워준다.
[단계 6] 소스를 만들어 구워진 떡갈비를 졸여준다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (101, 6, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (101, 82, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (101, 168, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (101, 10, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (101, 100, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (101, 11, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (101, 12, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (101, 32, 15.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (101, 39, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (101, 35, 1.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (102, '채소비빔밥', 'hard', 30, '[단계 1] 바지락은 해감을 시켜준 후 물에 넣어 바지락
육수를 만들어준다.
[단계 2] 바지락살은 따로 떼어내어 다진소고기와
다시 다져서 양념해 볶아준다.
[단계 3] 두부는 물기제거를 한 후 함초, 깻잎, 다진양파,
를 넣어 치대어 두부볶음을 만들어준다.
[단계 4] 애호박은 채 썰어주고 양파, 오이, 당근, 표고도
채 썰어 각각 볶아준다.
[단계 5] 볶은 바지락과 쌀을 넣어 밥을 한다.
[단계 6] 몰드에 밥과 각종 채소들을 올려주고 마지막에
두부 스크램블을 올려 밥을 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (102, 121, 150.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (102, 213, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (102, 53, 300.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (102, 32, 15.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (102, 38, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (102, 12, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (102, 64, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (102, 10, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (102, 55, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (102, 6, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (102, 145, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (102, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (102, 168, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (102, 2, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (102, 10, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (102, 214, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (102, 12, 15.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (103, '해초갈비찜', 'medium', 30, '[단계 1] 갈비는 핏물을 빼주고 뜨거운 물에 80% 이상
데쳐준 뒤 갈비와 감자를 물을 자작하게 넣고
청주, 생강청을 넣고 푹 삶아준다.
[단계 2] 양파, 청고추, 홍고추는 먹기 좋게 썰어준다.
[단계 3] 마른미역줄기는 냉수에 행군 뒤 물기를 빼준다.
[단계 4] 양념장을 바글바글 끓여준다.
[단계 5] 끓고 있는 양념장에 삶아진 갈비, 감자, 당근
순으로 끓이다 메추리알을 넣고 졸여준다.
[단계 6] 마지막에 미역줄기를 넣고 볶아주는 형식으로
갈비찜을 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (103, 8, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (103, 10, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (103, 96, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (103, 97, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (103, 62, 4.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (103, 6, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (103, 60, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (103, 32, 3.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (103, 98, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (103, 39, 1.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (104, '버섯곤드레밥', 'medium', 30, '[단계 1] 곤드레는 뜨거운 물에 데쳐낸 뒤 깨끗하게
헹구고 송송 썰어준다.
[단계 2] 두부의 물기를 짜 준다.
[단계 3] 양념장 재료와 물기를 짠 두부로 양념장을
만들어준다.
[단계 4] 느타리버섯은 뜨거운 물에 데쳐낸 후 수분을
빼 가늘게 찢어준다.
[단계 5] 냄비에 참기름을 두르고 곤드레를 볶다가 쌀을
넣고 밥을 해준다.
[단계 6] 뜸을 들일 때 느타리버섯을 올려주어 밥을
완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (104, 121, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (104, 131, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (104, 32, 15.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (104, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (104, 30, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (104, 215, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (104, 97, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (104, 12, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (104, 11, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (104, 32, 15.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (104, 39, 2.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (105, '바다향이 풍부한 전복죽', 'medium', 30, '[단계 1] 찹쌀은 불려주고 전복은 손질해 내장과 분리해
준 뒤 청주를 넣어서 전복 내장을 믹서에
갈아준다.
[단계 2] 전복 몸에 칼집을 내준 후 참기름을 두른 팬에
구워준다.
[단계 3] 당근과 미역은 송송 잘라준다.
[단계 4] 전복내장을 먼저 참기름에 충분히 볶아준다.
[단계 5] 내장을 볶아주다가 불린 찹쌀을 넣고 충분히
볶아준다.
[단계 6] 죽이 완성될 때 당근, 미역을 넣고 죽을 끓여
주고 전복은 고명으로 올려준다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (105, 86, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (105, 6, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (105, 189, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (105, 200, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (105, 132, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (105, 32, 15.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (105, 216, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (105, 38, 2.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (106, '함초소고기말이', 'medium', 30, '[단계 1] 파프라카, 양파, 홍고추는 가늘게 채 썰어준다.
[단계 2] 함초는 세척 후 먹기 좋게 손질해 준다.
[단계 3] 무순을 물 속에 담가준다.
[단계 4] 편으로 썰어준 소고기에 채 썰어준 채소와
함초를 꼭 싸 말아준다.
[단계 5] 마늘은 편으 로 썰 어 마늘기름에 한 번
구워준다.
[단계 6] 구운 마늘을 깔고 말아준 고기를 굽는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (106, 12, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (106, 97, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (106, 10, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (106, 168, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (106, 7, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (106, 66, 25.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (107, '묵계밥', 'medium', 30, '[단계 1] 닭가슴살을 이용해 국물을 만든다.
[단계 2] 닭가슴살은 먹기 좋게 찢어 흰 후추, 버섯마늘
소금으로 밑간을 해준다.
[단계 3] 콩나물은 머리를 떼어내고 데쳐준다.
[단계 4] 계란은 황백지단으로 부친 후 채 썰어준다.
[단계 5] 3종류의 묵은 먹기 좋은 크기로 썰어준다.
[단계 6] 그릇에 밥을 담고 콩나물을 올리고 3종류의
묵을 올린 후 계란으로 고명해 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (107, 107, 150.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (107, 22, 55.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (107, 167, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (107, 19, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (107, 12, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (107, 11, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (107, 10, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (107, 31, 15.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (107, 38, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (107, 12, 2.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (108, '근채류주먹밥', 'medium', 30, '[단계 1] 쌀을 깨끗하게 씻은 후에 쌀뜨물은 따로
보관하고 불려준 쌀로 밥을 해주고 접시에
펼쳐 식혀준다.
[단계 2] 우엉과 연근, 감자는 송송 다져준 후 아린 맛을
빼기위해 물에 담가준다.
[단계 3] 우엉과 연근, 감자는 물기를 빼고 볶아준다.
[단계 4] 청고추, 양파, 당근은 송송 다져서 함께
볶아준 뒤, 함초 소금을 이용해 1차 간을
해준다.
[단계 5] 그 릇 에 모 든 재 료 를 넣 고 오 니 기 리 를
만들어준다.
[단계 6] 그릇에 담아 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (108, 205, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (108, 134, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (108, 8, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (108, 96, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (108, 10, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (108, 6, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (108, 121, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (108, 55, 70.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (108, 39, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (108, 31, 15.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (108, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (108, 12, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (108, 35, 2.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (109, '단호박약식', 'easy', 30, '[단계 1] 단 호박은 속을 파 준다.
[단계 2] 찹쌀은 물에 불려준다.
[단계 3] 밤은 먹기 좋게 잘라서 물에 담가준다.
[단계 4] 대추는 씨를 제거하고 먹기 좋게 잘라준다.
[단계 5] 양념장을 만들어 먼저 쌀과 밤을 재워준 후
찰밥을 만든다.
[단계 6] 단호박 속에 찰밥을 넣어서 찜기에 쪄준다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (109, 217, 250.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (109, 200, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (109, 166, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (109, 62, 18.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (110, '달콤스테이크', 'medium', 30, '[단계 1] 망고는 손질 후 버터로 살짝 볶고 레드와인을
넣고 졸이다가 믹서로 갈아주고 딸기잼으로
간과 농도를 맞추어 레드와인 소스를 만든다.
[단계 2] 소 채끝살은 손질 후 만들어진 레드와인 소스에
마리네이드 해준다.
[단계 3] 감자는 껍질을 제거 후 먹기 좋은 크기로 잘라서
뜨거운 물에 데쳐내 버터에 볶아준다. 당근은
먹기좋은 크기로 잘라 뜨거운 물에 데쳐 버터
에 볶아주고, 시금치도 데친 후 수분을 제거하
고 버터에 볶는다.
[단계 4] 마리네이드 한 고기를 구워준다.
[단계 5] 마리네이드 하고 남은 망고소스를 다시 팬에
졸여 소스를 만든다.
[단계 6] 접시에 준비된 채소와 안심을 담고 소스를
뿌려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (110, 8, 70.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (110, 1, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (110, 6, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (110, 7, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (110, 36, 10.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (110, 106, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (110, 10, 15.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (111, '황태탕수육', 'medium', 1, '[단계 1] 황태는 가위로 약 3cm 길이로 잘라
스프레이로 물기를 준다.
[단계 2] 밀가루를 세 군데로 나눠 각각 찹쌀
가루와 녹말가루, 삼색 가루를 넣어
세 가지의 색을 만든다.
[단계 3] 만들어 놓은 밀가루에 달걀을 넣어
골고루 섞는다.
[단계 4] 튀김 반죽(③)에 황태(①)를 넣어
섞은 후, 튀김 기름 170℃ 의 온도에서
약 1분 정도 튀겨 기름을 빼 놓는다.
[단계 5] 파프리카는 속씨를 제거하고, 양파와
당근, 오이, 파인애플과 함께 썰어 준비
한다.
[단계 6] 저염간장에 설탕과 식초를 넣어 골고루
섞은 후 냄비에서 바글바글 끓이다가
물녹말을 넣고, 썰어놓은 채소를 넣어
한 번 더 끓인 후 황태 탕수육(④)에
곁들여 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (111, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (111, 146, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (111, 115, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (111, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (111, 125, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (111, 199, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (111, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (111, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (111, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (111, 191, 10.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (111, 192, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (112, '밥핫도그', 'medium', 2, '[단계 1] 소시지는 먹기 좋은 크기로 썰어 나무
막대기에 꽂아놓는다.
[단계 2] 파프리카는 작게 다져 준비한다.
[단계 3] 으깬 감자를 준비된 밥과 함께 골고루
섞는다.
[단계 4] 으깬 감자를 다시 준비된 밥과 함께
소금을 조금 넣고 골고루 섞는다.
[단계 5] 밥과 감자가 잘 섞어지면, 다시 다져진
파프리카를 넣고 섞어준다.
[단계 6] 막대기에 밀가루를 살짝 바르고, 소시
지에 반죽(⑤)을 감싸듯 손으로 둥글게
말아 밀가루와, 달걀물, 빵가루 순서로
입혀 튀김 기름 170℃의 온도에서
약 2분 정도 튀긴 후 기름을 제거하여
완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (112, 218, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (112, 7, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (112, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (112, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (112, 129, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (112, 125, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (112, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (112, 164, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (112, 8, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (112, 190, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (112, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (113, '스테이크카나페', 'medium', 30, '[단계 1] 소등심은 소금과 후춧가루, 로즈마리를
뿌려 약 30분 이상 숙성을 시킨다.
[단계 2] 애호박은 동그랗게 자르고, 양파는 형태
그대로 떼어내고, 가지는 직사각형으로
잘라 준비한다.
[단계 3] 파프리카는 속을 파내고 작은 사각으로
자르고, 토마토는 씨를 제거하고
네모지게 잘라 준비해 놓는다.
[단계 4] 사과는 껍질을 깨끗이 씻어 길쭉하게
썰어놓는다.
[단계 5] 발사믹소스에 설탕과 마늘을 넣고 썰어
놓은 사과채를 넣어 잘 섞은 후 바글바글
끓여 소스를 만들어놓는다.
[단계 6] 팬이 따끈해지면, 호박과 양파, 가지를
구워 내고, 팬에 소등심을 앞뒤로 구워
먹기 좋은 크기로 자른 뒤 구워 놓은
양파와 호박, 가지에 각각 올리고,
끓여놓은 소스와 파프리카, 토마토를
얹어 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (113, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (113, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (113, 80, 5.00, '마리', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (113, 64, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (113, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (113, 187, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (113, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (113, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (114, '꽃밥', 'hard', 30, '[단계 1] 당근은 채를 곱게 썰어 준비한다.
[단계 2] 달걀은 노란자와 흰자로 나눠 각각
지단을 부쳐 약 5cm 길이로 채를
썰어놓는다.
[단계 3] 시금치는 끓는 물에 소금을 넣고 파랗게
데쳐 물기를 제거하고 무쳐놓는다.
[단계 4] 돼지고기는 마늘, 파, 설탕, 맛술, 간장,
후춧가루, 통깨, 참기름을 넣고 30분간
숙성시킨 뒤 팬에 볶아서 준비한다.
[단계 5] 고구마는 삶아 으깨고, 두부는 소창에
물기를 짜고, 토마토와 양파, 견과류는
입자있게 다져섞는다.
[단계 6] 라이스 페이퍼를 따뜻한 물에 담궜
다가 바로 꺼내어 으깬 고구마(⑤)를
먼저 깔고, 그 위에 준비한 재료(②,
③, ④)를 올려 돌돌 말은 뒤 먹기 좋은
크기로 썰어 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (114, 141, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (114, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (114, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (114, 1, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (114, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (114, 16, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (114, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (114, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (114, 219, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (114, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (114, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (114, 39, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (114, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (114, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (114, 9, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (114, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (114, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (114, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (114, 133, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (115, '버섯만두찜', 'hard', 30, '[단계 1] 밀가루를 세 개로 나눠 호박가루와
백년초가루, 시금치가루를 각각 넣고
물, 식용유, 소금을 넣어 반죽 한 후
비닐봉지에 담아 1~2시간 정도 숙성
시킨다.
[단계 2] 양파, 마늘, 버섯들은 입자있게 다져
준비한다.
[단계 3] 두부는 소창을 이용하여 물기를 짜낸다.
[단계 4] 새우는 껍질과 내장을 제거하고 다져,
마늘을 넣고 골고루 섞어준다.
[단계 5] 다진 채소(②), 으깬 두부(③), 새우
(④)를 넣고 섞어서 만두소를 만들어
준다.
[단계 6] 숙성된 만두 반죽(①)을 얇게 밀어
꽃 모양으로 찍어 만두소(⑤)를 넣은
뒤, 반죽을 맞잡아 모양을 만든다.
우유와 생크림을 끓인 뒤 만들어 놓은
만두를 넣고 은근히 찜을 하듯이 익혀
완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (115, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (115, 1, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (115, 220, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (115, 53, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (115, 33, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (115, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (115, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (115, 195, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (115, 82, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (115, 145, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (115, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (115, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (115, 87, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (115, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (115, 21, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (115, 48, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (116, '떡갈비주먹밥', 'hard', 30, '[단계 1] 소고기와 돼지고기에 찹쌀가루와 밥을
넣고 골고루 섞는다.
[단계 2] 섞여진 고기(1)에 파와 후춧가루, 간장,
맛술, 생크림을 넣고 다시 잘 섞어 30분
이상 숙성을 시킨다.
[단계 3] 새송이버섯은 다지고, 시금치는 뜨거운
물에 데쳐 물기를 제거하고 잘게 다지고,
당근도 다져 준비한다.
[단계 4] 양파와 마늘은 다져서 볶아 준비해
놓는다.
[단계 5] 떡볶이 떡은 뜨거운 물에 잠시 담그어
부드러워지면 꺼내서 잘게 다진다.
[단계 6] 숙성된 고기(②)에 다진 채소(③)와 볶은
마늘과 양파(④), 떡볶이떡(⑤)을 넣고
섞이도록 치댄 후 작은 떡갈비 모양을
만들어 팬에 기름을 두르고, 앞뒤를 돌려
가며 익힌 후, 냄비에 간장과 올리고당을
넣고 끓이다가, 익힌 떡갈비를 넣고 자작
하게 졸여 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (116, 221, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (116, 127, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (116, 146, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (116, 164, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (116, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (116, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (116, 219, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (116, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (116, 48, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (116, 33, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (116, 82, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (116, 1, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (116, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (116, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (116, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (116, 222, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (116, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (116, 98, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (117, '홍합죽', 'medium', 30, '[단계 1] 쌀은 깨끗이 씻어 약 30분 이상 불려
물기를 빼고 절구에 빻아놓는다.
[단계 2] 냄비에 물을 넣고, 다시마와 건새우 반을
넣고 끓여 간단한 육수를 만들어 놓는다.
[단계 3] 건새우 반은 다져서 따로 준비하고,
양파와 당근은 입자있게 다지고, 버섯을
편으로 썰어 준비한다.
[단계 4] 홍합은 끓는 물에 소금을 넣고 데쳐
껍질을 제거해 놓는다.
[단계 5] 냄비에 참기름을 넣고 빻아 놓은 쌀을
넣어 은근히 볶는다.
[단계 6] 볶은 쌀(⑤)에 육수(②)를 붓고
끓이다가 양파, 당근, 버섯(③)과
홍합(④)을 넣고 어우러지게 나무
주걱으로 저어가면 끓이다가 죽이
다 익을 때쯤 다져 놓은 건새우
(③)를 넣고 한 번 더 끓인 후 완성
한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (117, 121, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (117, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (117, 223, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (117, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (117, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (117, 145, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (117, 72, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (118, '샐러드돈가스', 'medium', 30, '[단계 1] 우유에 등심을 넣어 30분간 재워 놓은
뒤, 후춧가루, 정종을 발라 1시간 이상
숙성시킨다.
[단계 2] 방울토마토는 반으로 잘라 준비한다.
[단계 3] 양상추는 먹기 좋은 크기로 찢어 놓는다.
[단계 4] 피클은 입자 있게 다져 준비한다.
[단계 5] 숙성시킨 등심(①)은 물기를 제거하고,
먹기 좋은 크기로 썰어 밀가루, 달걀물,
빵가루 순으로 입혀, 튀김 기름
170~180℃ 온도에 약 3분 정도 튀긴
후 기름을 빼 놓는다.
[단계 6] 삶은 달걀은 다지고 피클(④)에
마요네즈를 넣어 섞어 샐러드 소스를
만들고, 접시에 양상추를 깔고 그 위에
어린잎채소, 돈가스(⑤)와 방울토마토
(②)를 올려 소스와 함께 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (118, 224, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (118, 112, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (118, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (118, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (118, 21, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (118, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (118, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (118, 129, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (118, 125, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (118, 50, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (118, 3, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (118, 157, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (118, 103, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (119, '닭날개튀김', 'medium', 3, '[단계 1] 닭날개는 끝을 잘라 뒤로 뒤집어 봉을
만든다.
[단계 2] 오렌지즙과 레몬즙을 짜서 섞어 주고,
생강을 갈아 소창에 걸러 즙을 낸다.
[단계 3] 닭봉(①)에 생강즙, 오렌지 ․ 레몬즙
(②)을 발라 숙성시킨 후 다시 카레
가루를 입힌다.
[단계 4] 땅콩은 물기 없이 입자있게 다진다.
[단계 5] 양파를 입자있게 다져 다진 땅콩과
마요네즈, 파슬리가루, 요거트를
넣고 골고루 섞어 소스를 만들어
놓는다.
[단계 6] 카레가루를 입힌 닭봉은 튀김기름
170~180℃ 온도에서 약 3분 정도 튀겨
기름을 빼고, 접시에 어린잎을 담고
만들어 놓은 소스와 닭봉을 함께 제공
하여 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (119, 19, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (119, 81, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (119, 88, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (119, 13, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (119, 120, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (119, 125, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (119, 179, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (119, 225, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (120, '해산물리조또', 'medium', 30, '[단계 1] 보리는 깨끗이 씻어 물에 약 30분 이상
불려 놓고, 당근, 양파, 마늘, 대파는
입자있게 다져 준비한다.
[단계 2] 시금치는 끓는 물에 소금을 넣고 데친 후
생크림을 넣고 함께 갈아서 준비한다.
[단계 3] 오징어는 껍질을 벗겨 안쪽에 칼집을
내어 새우와 함께 데치고, 조개는 해감
후 다시마를 넣고 삶은 뒤 소창에 걸러
육수를 만들어 놓는다.
[단계 4] 냄비에 버터를 넣고, 다진 마늘과 양파
당근을 볶다가 불린 보리를 넣어 다시
볶는다.
[단계 5] 볶아지는 냄비에 조개 삶은 육수를
넣어 끓인다.
[단계 6] 끓여지는 냄비에 데친 조개와 해물,
치즈, 우유를 넣어 어우러지게 저어
가며 졸이듯 끓이다가 마지막에
시금치와 생크림 갈은 것(②)을
넣고 살짝 끓인 후 파슬리 가루를
살짝 뿌려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (120, 226, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (120, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (120, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (120, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (120, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (120, 40, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (120, 94, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (120, 87, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (120, 1, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (120, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (120, 48, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (120, 21, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (120, 208, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (120, 103, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (121, '떡완자조림', 'hard', 30, '[단계 1] 소고기와 돼지고기를 섞어, 후춧가루,
매실액, 맛술을 넣어 재워둔다.
[단계 2] 양파와 당근, 새송이, 대파는 입자있게
다지고 마늘은 곱게 다져 준비한다.
[단계 3] 재워둔 고기(①)에 파, 마늘, 양파,
당근, 새송이를 넣고 골고루 섞는다.
[단계 4] 떡은 잘게 썰어 뜨거운 물에 잠시
담그어 놓는다.
[단계 5] 섞어 놓은 고기(③)에 불려 놓은 떡을
섞는다.
[단계 6] 고기반죽(⑤)을 조금씩 떼어 둥글게
완자를 빚고, 팬에 기름을 둘러 굴리듯이
굽는다. 냄비에 간장과 올리고당을 넣고
끓이다가 구운 완자와 참기름을 넣어
은근히 졸인 뒤 통깨를 얹어 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (121, 127, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (121, 52, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (121, 219, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (121, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (121, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (121, 82, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (121, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (121, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (121, 222, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (121, 33, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (121, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (121, 98, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (121, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (121, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (121, 39, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (122, '계만두', 'medium', 8, '[단계 1] 배추, 오이는 얇게 채 썬 뒤 소금물에
담가 절인 후 물기를 꼭 짜고,
표고버섯은 채 썬 뒤 참기름과
간장을 넣어 양념하고, 피망과
당근은 얇게 채 썬다.
[단계 2] 예열된 팬에 배추, 오이, 채 썬 피망,
표고버섯 순으로 센 불에서 각각
볶고, 당근은 물기를 제거한 뒤
녹말가루를 묻혀 150℃로 예열한
기름에 튀긴다.
[단계 3] 닭가슴살은 얇게 저민 후
후춧가루로 밑간을 한 뒤 볶아놓은
채소를 올려 말아 계만두를 만든다.
[단계 4] 찜기에 물과 마늘, 대파를 넣고
육수를 내면서 예열하다가 김이
오르면 말아놓은 계만두를 넣고
약 8분 정도 찐다.
[단계 5] 빠금장에 휘핑크림과 우유, 다진
청양고추, 후춧가루, 참깨를 넣고
끓여 빠금장소스를 만든다.
[단계 6] 계만두에 튀긴 당근과 삶은
메추리알을 곁들인 뒤 빠금장소스를
곁들여 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (122, 115, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (122, 19, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (122, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (122, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (122, 60, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (122, 161, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (122, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (122, 171, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (123, '쇠고기표고찜', 'medium', 15, '[단계 1] 소를 고루 치대 반죽한다.
[단계 2] 표고버섯은 밑동을 제거한 뒤
안쪽에 밀가루→달걀물 순서로
바른 뒤 반죽을 넣고 달걀물을
한 번 더 발라준 뒤 김 오른 찜기에
15분간 찐다.
[단계 3] 잣과 대추를 올리고 달걀물을 한 번
더 바르고 3분간 더 찐다.
[단계 4] 오렌지소스 재료를 팬에 넣고
조린다.
[단계 5] 단호박은 얇게 썰어 노릇하게
굽는다.
[단계 6] 쇠고기표고찜에 오렌지소스를
뿌리고 피클과 구운 단호박을
곁들여 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (123, 62, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (123, 65, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (123, 209, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (123, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (123, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (123, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (123, 227, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (123, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (124, '떡갈비찜', 'medium', 10, '[단계 1] 돼지고기와 쇠고기는 고기 밑간을
넣고 반죽을 만든다.
[단계 2] 가지를 길고 얇게 썬다.
[단계 3] 깨끗이 씻은 떡을 가지로 돌돌 말고
그 위에 고기를 말아 떡갈비를
만들고 팬에서 겉면이 노릇해질
때까지만 익힌 뒤 김 오른 찜기에
넣어 10분~15분 정도 찐다.
[단계 4] 유자청과 간장을 섞고 팬에서
농도를 맞춰주며 살짝 졸여
유자소스를 만든다.
[단계 5] 연근은 모양대로 얇게 썰어 기름에
튀겨 연근칩을 만든다.
[단계 6] 떡갈비에 유자소스를 바르고
연근칩을 올려 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (124, 228, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (124, 85, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (124, 31, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (124, 134, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (124, 214, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (124, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (124, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (124, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (124, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (124, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (125, '해산물두부샌드', 'easy', 15, '[단계 1] 두부는 두 덩어리로 잘라 넓게 편다.
[단계 2] 새우, 관자, 파프리카를 함께 갈아
속을 만든다.
[단계 3] 완두콩과 두유, 꿀, 검은깨를 섞은 뒤
갈아 완두콩드레싱을 만든다.
[단계 4] 두부 사이에 속을 넣은 뒤 먹기 편한
크기로 자른다.
[단계 5] 두부샌드를 김 오른 찜기에서
15분 정도 찐다.
[단계 6] 완두콩드레싱과 새싹채소를 올려
마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (125, 253, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (125, 204, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (125, 154, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (126, '단호박제육볶음', 'easy', 30, '[단계 1] 돼지고기는 핏물을 제거하고
된장육수에 살짝 데친다.
[단계 2] 데친 돼지고기에 양념장을 넣고
재운다.
[단계 3] 단호박은 도톰하게 썰고, 죽순,
양파는 채 썰고, 대파는 어슷 썰고,
마른 표고버섯은 불린 뒤 먹기
좋은 크기로 썬다.
[단계 4] 팬에 올리브유를 두르고 재운
돼지고기와 된장육수(50g)를 넣고
볶는다.
[단계 5] 반 정도 익었을 때 단호박과 죽순,
양파, 대파, 표고버섯, 다진 마늘을
넣고 볶는다.
[단계 6] 부순 참깨와 참기름을 넣어
마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (126, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (126, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (126, 229, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (127, '버섯콩불고기', 'medium', 20, '[단계 1] 콩고기는 물에 담가 20분 정도 불린
뒤 양념장 ½과 버무린다.
[단계 2] 양파, 당근은 채 썰고, 양배추와
깻잎, 버섯은 한입 크기로 썬다.
[단계 3] 부추와 미나리는 양파와 비슷한
길이로 썰고, 청양고추는 어슷 썬다.
[단계 4] 들기름을 두른 팬에 다진 파와 마늘,
생강을 넣고 약한 불에 볶다가
콩고기를 넣고 나머지 양념장을
뿌려 볶는다.
[단계 5] 어느 정도 볶아지면 양파, 당근을
넣고 볶다가 양배추를 넣고 볶는다.
[단계 6] 양배추가 익으면 먹기 좋게 손질한
버섯을 넣고 살짝 볶아 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (127, 131, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (127, 145, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (127, 82, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (127, 5, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (127, 4, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (127, 161, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (127, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (127, 52, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (127, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (128, '차돌박이볶음', 'medium', 30, '[단계 1] 차돌박이는 고기 밑간에 재워둔다.
[단계 2] 파프리카, 양파는 깨끗이 씻어 곱게
채 썰고, 부추도 비슷한 길이로 썬다.
[단계 3] 해초는 깨끗이 손질하여
해초 밑간에 재운다.
[단계 4] 3가지 소스를 만든다.
[단계 5] 차돌박이를 팬에 볶아 준비한다.
[단계 6] 볶은 차돌박이와 해초, 부추,
파프리카, 양파를 접시에 담고
삼색소스를 곁들여 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (128, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (128, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (128, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (128, 63, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (128, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (128, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (128, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (129, '토마토두루치기', 'medium', 5, '[단계 1] 양배추, 양파, 표고버섯, 양송이버섯,
파프리카, 피망은 먹기 좋은 크기로
깍둑 썰고, 대파는 어슷 썬다.
[단계 2] 마늘은 편 썰어 기름 두른 팬에
투명해질 때까지 4~5분 정도
볶는다.
[단계 3] 토마토는 김 오른 찜기에 찐 후
껍질을 벗겨 양파와 함께 으깨가며
볶는다.
[단계 4] 비트도 곱게 갈아 넣고 함께 볶는다.
[단계 5] 식용유를 두른 팬에 돼지고기를
넣고 토마토비트소스와 함께 볶는다.
[단계 6] 양념을 넣어 간을 맞춘 후 양배추,
표고버섯, 양송이버섯, 파프리카,
피망, 대파를 넣고 살짝 볶아
마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (129, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (129, 143, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (129, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (129, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (129, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (129, 73, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (129, 33, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (129, 16, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (129, 13, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (129, 29, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (129, 231, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (130, '검은콩피시볼조림', 'medium', 25, '[단계 1] 검은콩을 불려 삶는다.
[단계 2] 마늘은 편으로 썰고, 쪽파는 송송
썬다.
[단계 3] 동태포는 물기를 제거한다.
[단계 4] 믹서에 피시볼반죽 재료를 넣어 간
뒤 동그랗게 빚고 콩식용유(5g)를
두른 팬에 굴려가며 익힌다.
[단계 5] 팬에 녹말가루를 제외한 소스
재료를 넣고 끓이다가 피시볼을
넣고 조리고, 녹말가루로 농도를
맞춘 뒤 쪽파를 뿌려 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (130, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (130, 161, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (130, 190, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (130, 53, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (130, 85, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (130, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (131, '대하조림', 'easy', 20, '[단계 1] 냄비에 닭육수 재료를 넣고 20분간
끓여 면포에 거른다.
[단계 2] 대하를 흐르는 물에 잘 헹구고
머리와 껍질을 제거한 뒤
화이트와인에 재운다.
[단계 3] 시금치를 손질한 후 끓는 물에 살짝
데친다.
[단계 4] 팬에 닭육수(100g)와 유자청과
매실액을 넣고 끓이다가 잘 섞이면
대하를 넣어 조린다.
[단계 5] 대하가 익어갈 때쯤 시금치를 넣고
1분간 더 조린다.
[단계 6] 그릇에 시금치를 올리고 그 위에
대하를 올린 후 아보카도와
토마토를 먹기 좋게 썰어 얹어
마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (131, 52, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (131, 203, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (131, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (132, '묵은지가지말이', 'medium', 30, '[단계 1] 냄비에 고기 삶는 재료를 넣고
끓으면 돼지고기를 넣어 익힌다.
[단계 2] 가지는 길이로 납작하게 썰고,
김치는 씻어 5㎝ 길이로 채 썰고,
피망, 양파도 같은 길이로 채 썰고,
생강과 마늘은 편으로 썰어 준비한다.
[단계 3] 팬에 올리브유를 약간 두르고
가지를 살짝 굽는다.
[단계 4] 김치, 피망을 가지에 넣고 돌돌 만다.
[단계 5] 팬에 올리브유, 마늘, 생강,
삶은 고기를 넣고 육즙이 나오지
않도록 고기 겉면을 익힌 뒤 채 썬
양파, 마늘, 레몬, 레드와인,
올리고당을 넣고 조린다.
[단계 6] 고기에 간이 배면 건져내 먹기
좋은 크기로 썰어 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (132, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (132, 13, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (132, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (132, 153, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (132, 88, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (132, 158, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (132, 98, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (132, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (132, 13, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (132, 53, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (133, '함초타락죽', 'medium', 30, '[단계 1] 함초는 세척 후 송송 잘라준다. 이때 물이
안 나오게 잘라주는 것이 중요하다.
[단계 2] 찹쌀은 미리 30분전에 불려준다.
[단계 3] 불린 찹쌀의 물기를 빼고 물 50g을 넣고 죽을
끓이다가 함초를 넣고 더 끓인다.
[단계 4] 여기에 우유를 넣고 약불에서 은근히 끓여준다.
[단계 5] 죽이 어느정도 완성되면 치즈가루를 뿌려준다.
[단계 6] 죽이 완성되면 그릇에 담아 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (133, 200, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (133, 21, 200.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (133, 168, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (133, 232, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (133, 10, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (133, 233, 15.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (134, '삼합잡채', 'medium', 25, '[단계 1] 주꾸미는 먹기 좋게 잘라주고, 바지락살은 물에
데쳐서 수분을 빼고 생강청으로 비린내를 제
거한 뒤 볶아준다.
[단계 2] 소고기와 닭가슴살은 각각 양념해준다.
[단계 3] 양파, 청고추, 홍고추, 당근은 채 썰어 함께
볶아준다.
[단계 4] 볶아 놓은 채소와 고기, 해산물은 양념장에
버무린다.
[단계 5] 미나리와 배를 곱게 채 썰어 올려서 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (134, 113, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (134, 234, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (134, 14, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (134, 19, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (134, 10, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (134, 96, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (134, 97, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (134, 6, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (134, 4, 20.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (135, '고등어카레탕수', 'medium', 30, '[단계 1] 냉동고등어는 먹기 좋은 크기로 잘라 전분을
묻혀 기름에 두 번 튀겨준다.
[단계 2] 애호박, 방울토마토, 사과는 적당한 크기로
잘라준다.
[단계 3] 감자와 양파는 적당한 크기로 자른 뒤 물 1컵
에 감자를 먼저 넣고 끓여주다 양파를 넣고
끓여 단맛을 내준다.
[단계 4] 우유에 카레가루를 섞어 불려준 뒤 끓고 있는
감자에 넣어준다.
[단계 5] 튀겨진 고등어를 키친타월을 이용해 기름을
빼준다.
[단계 6] 카레가 완성되면 사과, 방울토마토, 꿀을
넣어주고 튀겨 놓은 고등어에 뿌려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (135, 283, 300.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (135, 109, 50.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (135, 33, 200.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (135, 21, 200.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (135, 120, 20.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (135, 8, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (135, 64, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (135, 50, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (135, 10, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (135, 57, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (135, 154, 15.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (136, '비트양파김치', 'medium', 25, '[단계 1] 양파는 네 번 정도 칼집을 내어 준다.
[단계 2] 절임물을 만들고 절임 물에 칼집 낸 양파를
하루(24시간) 정도 절여준다.
[단계 3] 절임물을 버리지 말고 절임물 반에 생강청,
식초, 청양고추를 잘라서 섞어주고 국물을
만든다.
[단계 4] 만들어진 국물에 절여진 양파를 담가준다.
[단계 5] 24시간 후부터 먹을 수가 있다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (136, 10, 150.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (136, 53, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (136, 35, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (136, 76, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (136, 73, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (136, 53, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (136, 13, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (136, 76, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (136, 161, 7.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (137, '미역 닭가슴살전', 'medium', 30, '[단계 1] 닭가슴살은 송송 다져준 후 소금, 후추로
밑간을 해준다.
[단계 2] 미역은 물에 불려준 후 송송 잘라준다.
[단계 3] 두부는 물기를 꼭 짜준다.
[단계 4] 청양고추, 대파, 당근은 송송 다져준다.
[단계 5] 소스를 만들어준다.
[단계 6] 준비된 재료에 계란으로 반죽해 한입 크기로
전을 부쳐준다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (137, 19, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (137, 296, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (137, 23, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (137, 161, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (137, 11, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (137, 6, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (137, 22, 60.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (138, '두가지묵샐러드', 'easy', 25, '[단계 1] 당귀는 잎만 떼어 먹기 좋게 잘라서 물에
담가준다.
[단계 2] 두가지묵은 먹기 좋게 길이로 잘라준다.
[단계 3] 양파, 파프리카, 알배추는 가늘게 채 썰어준다.
[단계 4] 소스를 만들어준다.
[단계 5] 모든 재료를 담고 소스에 통깨를 섞은 뒤
샐러드에 뿌려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (138, 187, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (138, 10, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (138, 235, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (138, 236, 20.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (139, '장어찜', 'medium', 30, '[단계 1] 장어 살 쪽에 칼집을 내어 우유와 후추로
마리네이드 해서 비린내를 제거한다.
[단계 2] 우엉, 인삼, 홍고추는 채 썰어 냉수에 담가둔다
[단계 3] 미나리, 팽이는 먹기 좋게 썰어준다.
[단계 4] 양파, 청고추는 가늘게 채 썰어준다.
[단계 5] 장어는 찜기에 쪄준다.
[단계 6] 모든 채소를 한데 섞어 샐러드소스로 버무려
샐러드를 만들어주고 장어와 함께 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (139, 237, 250.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (139, 21, 100.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (139, 38, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (139, 205, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (139, 67, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (139, 4, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (139, 110, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (139, 10, 40.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (140, '두부까나페', 'medium', 30, '[단계 1] 두부는 1cm 두께로 잘라 볶은소금을 뿌려
수분을 제거한다.
[단계 2] 오이는 껍질 부분만 송송 썰어준다.
[단계 3] 당근, 양파는 송송 썰어준다.
[단계 4] 두부는 노릇하게 구워준다.
[단계 5] 오이, 당근, 양파를 소스에 버무려 샐러드를
만들고 소스도 함께 만든다.
[단계 6] 두부를 한입 크기로 잘라준 후 슬라이스햄과
샐러드를 올려 소스랑 함께 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (140, 23, 150.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (140, 238, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (140, 84, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (140, 105, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (140, 35, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (140, 170, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (140, 6, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (140, 10, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (140, 55, 25.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (141, '두부청국장죽', 'medium', 30, '[단계 1] 다진 쇠고기는 양념장에 버무려주고 두부는
으깨준다.
[단계 2] 애호박, 당근은 송송 다져준다.
[단계 3] 표고버섯은 불려준 뒤 채 썰어 참기름과
버섯마늘소금에 살짝 무쳐서 볶아준다.
[단계 4] 양념된 소고기는 팬에 볶아준다.
[단계 5] 소고기를 볶아주던 팬에 밥과 표고를 넣고
끓여주다 두부를 넣고 죽을 해준다.
[단계 6] 다진 애호박, 당근을 넣어서 끓여주고 불을
끄기 전에 청국장과 흑임자를 넣어 죽을
완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (141, 23, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (141, 164, 150.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (141, 145, 12.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (141, 6, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (141, 64, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (141, 38, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (141, 12, 10.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (141, 11, 7.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (141, 132, 1.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (142, '망고샐러드', 'medium', 20, '[단계 1] 증편은 팬에 구워준다.
[단계 2] 망고와 방울토마토는 먹기 좋게 잘라준다.
[단계 3] 모든 채소는 먹기 좋게 잘라서 물에 담근다.
[단계 4] 소스 재료를 섞어 소스를 만들고, 접시에 준비된
채소를 담고 소스를 뿌려준 후 구운 떡과 망고
를 올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (142, 239, 150.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (142, 3, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (142, 240, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (142, 50, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (142, 10, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (142, 143, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (142, 143, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (142, 39, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (143, '샌드스테이크', 'medium', 30, '[단계 1] 닭가슴살은 가운데 1/4 정도 깊은 칼집
넣어 소금과 후추를 뿌려놓는다.
[단계 2] 느타리버섯은 찢고, 베이컨은 네모지게
썰어놓는다.
[단계 3] 시금치는 살짝 데쳐 썰고, 양파와 대파는
입자있게 썰어 준비한다.
[단계 4] 팬에 버터를 두르고, 시금치와 버섯을
넣어 볶다가 굴소스를 넣고 다시 볶아
준다.
[단계 5] 닭가슴살에 볶아 놓은 시금치와 버섯을
넣어 팬에 올리브기름으로 구워 익힌다.
[단계 6] 냄비에 베이컨과 양파를 넣어 볶다가
카레가루를 넣어 살짝 볶고, 다시 우유와
생크림, 대파를 넣고 끓여 카레소스를
만들고, 어린잎채소와 닭스테이크
(⑤)를 접시에 담고 카레 소스를 올려
완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (143, 19, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (143, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (143, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (143, 40, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (143, 48, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (143, 21, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (143, 93, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (144, '맥적구이', 'hard', 30, '[단계 1] 돼지고기에 생강즙과 소금, 후춧가루를
넣어 숙성한다.
[단계 2] 숙성된 돼지고기에 간장과 정종, 설탕,
파, 마늘, 양파, 참기름, 통깨 넣어
골고루 양념한다.
[단계 3] 새송이, 가지, 표고, 홍피망을 편으로
썰어 준비한다.
[단계 4] 된장에 마요네즈와 생크림, 다진
땅콩을 섞어놓는다.
[단계 5] 새송이와 가지, 표고, 홍피망은 팬에서
굽는다.
[단계 6] 팬이 따끈해지면 양념한 돼지고기를
구워 접시에 담고 그 위에 된장 소스를
올리고, 구워낸 채소를 다시 위에 올려
완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (144, 16, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (144, 13, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (144, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (144, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (144, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (144, 112, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (144, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (144, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (144, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (144, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (144, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (144, 39, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (144, 82, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (144, 145, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (144, 187, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (144, 241, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (144, 56, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (145, '채소어묵', 'medium', 5, '[단계 1] 생선살은 가시를 발라내고 곱게 으깨어
놓는다.
[단계 2] 으깬 생선살에 맛술 과 생강즙, 소금을
넣어 골고루 치댄다.
[단계 3] 잘 치댄 생선살에 밀가루를 넣어 다시
치대어 준다.
[단계 4] 양파와 당근, 샐러리, 마늘은 곱게
다지고, 옥수수는 알맹이를 준비한다.
[단계 5] 생선살에 다진 채소와 어린이 치즈를
다져 섞는다.
[단계 6] 채소를 다져 섞은 생선살을 동글동글
하게 완자를 빚어 튀김기름에 약 150℃
온도에서 은근히 5분 정도 튀겨 완성
한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (145, 186, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (145, 219, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (145, 13, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (145, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (145, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (145, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (145, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (145, 100, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (145, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (145, 242, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (145, 208, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (145, 125, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (146, '주꾸미보리죽', 'medium', 30, '[단계 1] 보리는 깨끗이 씻어 물을 충분히 붓고
약 30분 정도 불려 준비한다.
[단계 2] 주꾸미는 밀가루를 넣고 조물조물
주물러 다시 깨끗이 씻어 준비한다.
[단계 3] 씻어놓은 주꾸미는 살짝 데쳐 입자
있게 다져 놓는다.
[단계 4] 미나리와 당근, 양파는 입자있게
다져 놓는다.
[단계 5] 냄비에 참기름을 두르고, 주꾸미를
먼저 볶다가 불린 보리쌀을 넣고 다시
볶은 뒤 썰어놓은 채소(④)를 넣는다.
[단계 6] 냄비에 육수를 넣고 나무주걱으로
은근히 저어가면 끓이다가 죽이 어우러
지면, 우유와 치즈, 간장을 살짝 넣고
한 번 더 끓여 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (146, 113, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (146, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (146, 243, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (146, 4, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (146, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (146, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (146, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (147, '오렌지삼겹찜', 'medium', 30, '[단계 1] 삼겹살은 로즈마리를 뿌려
숙성시킨다.
[단계 2] 고구마는 삶아 준비하고, 감자는 웨지
감자형으로 썰어 익힌 후 기름에 튀겨
놓는다.
[단계 3] 삶아진 고구마를 으깨어 생크림을 넣어
골고루 섞는다.
[단계 4] 오렌지는 즙을 짜 놓는다.
[단계 5] 숙성된 삼겹살은 오븐에 굽고, 브로컬리는
살짝 데쳐 올리브오일에 볶아놓는다.
[단계 6] 팬에 오렌지즙과 설탕, 정종, 소금을
넣고 바글바글 졸인 후 와사비를 넣어
소스를 만들고, 오븐에 구어진 삼겹살을
잘라 접시에 담고 그 위에 소스를
살짝 올리고, 한쪽에는 감자튀김(②),
고구마무스(③), 브로컬리(⑤)를
곁들여 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (147, 16, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (147, 80, 5.00, '마리', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (147, 9, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (147, 48, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (147, 8, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (147, 125, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (147, 119, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (147, 84, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (147, 244, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (148, '소고기볼게살타르', 'medium', 30, '[단계 1] 마늘과 양파를 입자있게 다져 팬에 볶아
식혀 준비하고 파프리카는 다져 놓는다.
[단계 2] 다진 소고기에 준비한 채소(①)와
빵가루, 후춧가루, 소금 넣고 골고루 치
대어 소고기 볼을 만든 후 후라이팬에
버터와 식용유를 두르고 소고기볼을
속까지 익혀 준비한다.
[단계 3] 바나나는 작게 깍뚝 모양으로 썰고,
게맛살은 약 3cm 길이로 찢어 준비
한다.
[단계 4] 고구마는 껍질을 벗겨 삶아 채에 내려
마요네즈와 매실액을 넣어 섞은 뒤
바나나, 게맛살(③)을 골고루 섞어
소스를 만든다.
[단계 5] 브로컬리는 작게 썰어 미니버섯과
함께 팬에 살짝 구워 준비한다.
[단계 6] 익혀 놓은 소고기볼(②)을 접시에 담고
그 위에 소스(④)를 얹은 뒤 브로컬리와
미니버섯(⑤), 어린잎을 올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (148, 221, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (148, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (148, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (148, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (148, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (148, 129, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (148, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (148, 40, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (148, 33, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (148, 52, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (148, 245, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (148, 225, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (148, 119, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (148, 123, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (149, '수삼떡갈비', 'medium', 30, '[단계 1] 수삼은 뇌두를 제거하고 양파와
대파, 마늘과 함께 다진다
[단계 2] 다진 소고기에 다진 재료(①)와 간장,
후춧가루, 정종, 찹쌀가루를 넣어
골고루 섞는다.
[단계 3] 대추는 씨를 제거하고 채를 썰어
곁들임채소로 준비하고, 새송이는
길이로 썰어 갈비뼈 모양으로 만들어
놓는다.
[단계 4] 양념이 된 소고기(②)를 새송이(③)에
감싸듯 타원형 모양으로 떡갈비를
만든다.
[단계 5] 만들어 놓은 떡갈비를 팬에 은근히
익힌다.
[단계 6] 간장과 올리고당, 설탕, 육수를 넣고
섞어가며 바글바글 끓인 뒤, 익힌 떡갈
비(⑤)를 넣고 살짝 졸인 후 접시에 담고,
그 위에 통깨를 살짝 뿌리고, 대추채(③)와
어린잎을 곁들임채소로 올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (149, 221, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (149, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (149, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (149, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (149, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (149, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (149, 112, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (149, 146, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (149, 123, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (149, 62, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (149, 39, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (149, 93, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (150, '삼색딤섬', 'medium', 10, '[단계 1] 밀가루를 세등분하여 각각 백년초,
뽕잎, 치자 가루를 넣고 물을 넣고
반죽을 한 뒤 비닐봉투에 넣어 숙성을
시킨다.
[단계 2] 두부는 소창에 물기를 짜고, 양파, 파,
마늘은 다지고, 부추는 송송 썰어 준비
하고, 숙주는 뜨거운 물에 데쳐 곱게
다진다.
[단계 3] 오징어는 껍질을 벗겨 입자있게 다져
놓는다.
[단계 4] 다진고기에 준비한 두부와 양파, 파,
마늘, 부추, 숙주(②)와 오징어(③)를
넣어 섞은 후 참기름과 후춧가루, 통깨를
넣어 딤섬 속을 만든다.
[단계 5] 숙성된 밀가루 반죽을 꺼내 밀대를
이용하여 넓게 밀어 준다.
[단계 6] 밀어 놓은 반죽을 사각으로 자른 후
그 안에 딤섬 속을 넣어 미나리를 데쳐
끈을 만들어 딤섬 위쪽을 묶은 후
찜통에서 김이 오르면 약 10분 정도
쪄서 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (150, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (150, 220, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (150, 74, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (150, 4, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (150, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (150, 94, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (150, 221, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (150, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (150, 5, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (150, 246, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (150, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (150, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (150, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (150, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (150, 39, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (151, '밥크로켓', 'medium', 5, '[단계 1] 양파와 대파, 당근, 마늘은 입자있게
다져 준비한다.
[단계 2] 팬에 기름을 두르고, 팬이 따끈해 지면
준비한 채소(①)를 넣어 재빠르게 볶아
식힌다.
[단계 3] 메추리알은 찬물에 넣어 소금을 넣고
약 5분 정도 삶아 건져 찬물에 헹구어
껍질을 제거시켜 놓는다.
[단계 4] 준비한 밥에 볶아 놓은 채소와 소금을
넣어 골고루 섞은 후 준비한 메추리알을
감싸 준다.
[단계 5] 밥으로 감싼 메추리알을 밀가루와
녹말을 섞어 그 위에 굴리고, 다시
달걀물에 굴린 후 빵가루를 입혀준다.
[단계 6] 튀김 기름이 약 170℃ 정도 되면,
만들어 놓은 메추리알을 넣어 골고루
색이 나도록 튀겨 완성하고, 칠리소소와
함께 제공한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (151, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (151, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (151, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (151, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (151, 33, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (151, 60, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (151, 164, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (151, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (151, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (151, 115, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (151, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (151, 129, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (151, 125, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (152, '가지토마토구이', 'medium', 30, '[단계 1] 가지는 약 10cm 길이로 길고, 납작하게
썰어 준비한다.
[단계 2] 팬에 올리브 오일을 살짝 둘러 썰어놓은
가지를 소금을 넣고 살짝 익힌다.
[단계 3] 토마토는 반은 토마토 형태로 납작하게
썰어 놓는다.
[단계 4] 토마토반은 입자있게 다져 준비한다.
[단계 5] 다진 토마토를 준비한 토마토소스에
섞어 살짝 어우러지게 끓여 준비한다.
[단계 6] 구운 가지위에 토마토와 모짜렐라치즈를
올려 팬에 굽고, 별도로 팽이버섯에
후춧가루를 뿌려 살짝 구워 접시에 담고,
끓여 놓은 토마토소스를 올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (152, 187, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (152, 84, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (152, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (152, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (152, 247, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (152, 110, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (152, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (153, '과일겉절이', 'medium', 30, '[단계 1] 사과와 배는 껍질을 베이킹파우더에
깨끗이 씻어 납작하게 썰어 설탕물에
담그어 색이 변하지 않게 준비한다.
[단계 2] 바나나는 동글하게 썰고, 키위는 껍질을
제거하고 은행잎 모양으로 썰고,
파인애플은 가운데 심을 제거하고
사각형 모양으로 썰어놓는다.
[단계 3] 마는 껍질을 벗겨 동글하게 썰어 준비
한다.
[단계 4] 마늘은 입자있게 다져, 팬에 식용유를
두르고 살짝 볶는다.
[단계 5] 고춧가루에 볶은 마늘(④), 식초. 설탕,
간장, 고춧가루를 넣고, 골고루 섞어
양념장을 만든다.
[단계 6] 설탕물에 사과와 배를 건지고, 준비한
과일과 마를 담은 후 먹기 직전에 만들어
놓은 양념장을 넣어 버무려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (153, 57, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (153, 63, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (153, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (153, 175, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (153, 248, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (153, 199, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (153, 9, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (153, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (153, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (154, '버섯탕수', 'medium', 30, '[단계 1] 새송이와 느타리, 표고버섯은 먹기
좋은 형태로 썰어 준비한다.
[단계 2] 썰어 놓은 버섯에 소금을 살짝 뿌려
놓는다.
[단계 3] 소금 뿌린 버섯에 녹말가루와 달걀물을
넣고 골고루 섞는다.
[단계 4] 오이, 당근, 양파, 키위는 작은 깍두기
모양으로 썰어 준비한다.
[단계 5] 냄비에 저염간장에 설탕을 넣고 골고루
섞어 끓이다가, 물녹말을 풀어 농도를
맞추고 썰어놓은 오이, 당근, 양파를
넣어 소스를 만든다.
[단계 6] 튀김기름의 온도가 약 170~180℃ 정도
올라오면 녹말옷을 입힌 버섯(③)을
재빠르게 튀겨 기름을 제거하고, 접시에
담아 소스(⑤)를 얹고 키위를 올려 완성
한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (154, 82, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (154, 131, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (154, 145, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (154, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (154, 115, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (154, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (154, 125, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (154, 248, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (154, 191, 10.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (154, 192, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (154, 55, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (154, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (154, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (154, 249, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (155, '아보카도 연어샐러드', 'medium', 30, '[단계 1] 연어는 주사위 모양으로 썬다.
[단계 2] 양파, 파프리카도 주사위 모양으로
썬다.
[단계 3] 아보카도와 오렌지도 같은 형태로
썬다.
[단계 4] 사워크림에 다진 양파를 섞어 소스를
만든다.
[단계 5] 어린잎은 찬물에 담궈 싱싱하게 한다.
[단계 6] 원형 몰드에 연어를 넣고, 옆으로
야채와 과일을 담고 그 위에
사워크림소스와 어린잎을 올린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (155, 250, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (155, 197, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (155, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (155, 203, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (155, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (155, 81, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (155, 251, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (155, 93, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (156, '토마토주스를곁들인컵토마토', 'medium', 30, '[단계 1] 토마토는 끓는 물에 살짝 데친다.
[단계 2] 데친 토마토를 믹서에 곱게 갈고
설탕을 넣고 섞는다.
[단계 3] 줄기토마토는 윗부분을 잘라내고 속을
파낸다.
[단계 4] 오이와 양파는 입자있게 썬다.
[단계 5] 팬에 올리브오일을 두르고 썰어 놓은
오이와 양파를 살짝 볶는다.
[단계 6] 을 파낸 줄기토마토에 볶아 놓은
야채와 ?번을 넣는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (156, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (156, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (156, 55, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (156, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (156, 84, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (156, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (157, '해산물 훈제연어롤', 'medium', 30, '[단계 1] 훈제 연어는 넓게 썬다.
[단계 2] 당근, 오이, 파프리카, 양파, 샐러리는
길게 썬다.
[단계 3] 주꾸미는 소금에 주물러 씻는다.
[단계 4] 손질한 주꾸미, 소라는 끓는 물에
데치고 썰어준다.
[단계 5] 고추장에 식초, 설탕을 넣고
초고추장소스를 만든다.
[단계 6] 훈제 연어에 야채와 주꾸미, 소라를
넣고 돌돌 말아 접시에 담고
초고추장소스를 올리고 완두콩으로
장식한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (157, 250, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (157, 197, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (157, 113, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (157, 252, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (157, 253, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (157, 100, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (157, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (157, 55, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (157, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (157, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (157, 29, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (157, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (157, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (157, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (158, '감닭떡갈비', 'medium', 30, '[단계 1] 닭 살을 곱게 다진다.
[단계 2] 다진 닭살에 소금, 후춧가루, 매실청 및
다진 마늘을 넣고 골고루 양념한다.
[단계 3] 믹서에 양파, 마늘, 감자, 찹쌀가루를
넣고 간다.
[단계 4] 갈아 놓은 감자에 양념된 닭살과
달걀을 섞는다.
[단계 5] 4번을 잘 치대 떡갈비 모양으로 만든다.
[단계 6] 팬에 기름을 살짝 두르고 떡갈비를
앞뒤로 구워 익힌다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (158, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (158, 146, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (158, 159, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (158, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (158, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (158, 33, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (159, '겨자아욱쌈밥', 'medium', 30, '[단계 1] 현미는 깨끗이 씻어 30분 이상 충분히
불린 뒤 밥을 짓는다
[단계 2] 두부는 끓는 물에 데쳐 물기를 빼고
곱게 다져 된장, 생크림, 매실청을 넣고
골고루 섞는다.
[단계 3] 데친 두부에 된장, 생크림 및 매실청을
골고루 섞는다.
[단계 4] 아욱과 단호박은 각각 찐 후 식힌다.
[단계 5] 찐 아욱 위에 현미밥을 올리고
두부소스, 날치알, 새싹 단호박을
올린다.
[단계 6] 아욱에 올린 밥을 동그랗게 말아
접시에 담는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (159, 254, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (159, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (159, 108, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (159, 196, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (159, 65, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (159, 193, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (159, 30, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (159, 48, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (159, 159, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (159, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (160, '다마고도후', 'easy', 10, '[단계 1] 물에 다시마를 넣고 약 10분 정도 끓인
뒤 걸러 육수를 만든다.
[단계 2] 달걀과 다시마 육수를 1:1로 섞고 체에
거른다.
[단계 3] ?를 체에 내린다.
[단계 4] 달걀물에 매생이를 풀어둔다.
[단계 5] 매생이를 풀어 놓은 달걀물에 요리술을
넣어 섞는다.
[단계 6] 쪄낸 다마고도후에 날치알을 올려
완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (160, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (160, 71, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (160, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (160, 196, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (160, 7, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (161, '단호박생채', 'medium', 20, '[단계 1] 다시마, 건새우, 물을 약 20분 정도
끓인 뒤 체에 걸러 육수를 만든다.
[단계 2] 단호박은 껍질을 벗기고, 속을 깨끗이
파내 슬라이스 한다
[단계 3] 슬라이스한 단호박을 까나리액젓에
20분 정도 절인 뒤 물로 씻는다.
[단계 4] 부추는 5cm 길이로 썰고, 양파는
채썰고, 배는 껍질을 벗겨 슬라이스로
썰어둔다.
[단계 5] 만들어 놓은 육수에 고춧가루, 매실액,
다진마늘을 섞어 양념장을 만든다
[단계 6] 단호박, 배, 양파, 부추를 양념장에
버무린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (161, 65, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (161, 5, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (161, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (161, 255, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (161, 72, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (161, 71, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (161, 52, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (161, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (161, 63, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (161, 37, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (162, '깻잎향을 입힌 관자 샐러드', 'medium', 30, '[단계 1] 돌나물은 손질하여 찬물에 담갔다가 물기를 빼고, 깻잎은 씻어 한 장씩 앞뒤로 물기를 닦고, 식용 꽃은 찬물에 담가 놓는다.
[단계 2] 튀김 팬에 올리브유(50g)를 붓고 예열해 깻잎을 넣어 바삭하고 투명하게 튀긴 뒤 건지고 팬에 남은 깻잎 기름은 따로 둔다.
[단계 3] 석류 원액에 물(100ml)과 레시틴가루를 넣어 블렌더로 섞어 석류 거품을 만든다.
[단계 4] 관자는 막을 제거한 뒤 찬물에 씻고, 잘게 칼집을 내 후춧가루를 뿌린다.
[단계 5] 달군 팬에 올리브유(10g)를 두르고 관자를 넣어 겉은 노릇하게 굽는다.
[단계 6] 접시에 튀긴 깻잎, 돌나물, 구운 관자, 깻잎 기름을 순서대로 담고, 석류 거품을 올려 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (162, 256, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (162, 2, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (162, 257, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (162, 90, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (162, 153, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (162, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (163, '케일 오미자 샐러드', 'easy', 20, '[단계 1] 케일은 깨끗이 씻어 잎은한입 크기로 자르고 줄기는 잘게 다진다.
[단계 2] 오미자물, 요리당, 식초를 섞는다.
[단계 3] (1)의 케일의 다진 줄기를 넣어 드레싱을 만든다.
[단계 4] 그릇에 케일을 담고 오미자 드레싱을 끼얹는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (163, 80, 15.00, '마리', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (163, 80, 15.00, '마리', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (163, 211, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (163, 53, 100.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (163, 76, 2.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (164, '두부곤약조림', 'medium', 25, '[단계 1] 곤약과 두부는 사방 1㎝ 크기로
깍둑 썰고, 가지와 애호박은 조금
더 작은 크기로 썰고, 꽈리고추는
얇게 송송 썬다.
[단계 2] 곤약을 끓는 물에 식초를 한두 방울
떨어뜨린 후 삶아 냄새를 제거한 후
찬물에 식힌다.
[단계 3] 올리브유(10g)를 두른 팬에 두부를
올려 살짝 굽는다.
[단계 4] 팬에 조림장을 넣은 후 약한 불에서
저어가며 끓이다가 조림장이 고루
섞이면 곤약과 두부, 가지, 애호박을
모두 넣고 조린다.
[단계 5] 조림장이 반 이상 졸아들면
꽈리고추를 넣고 조금 더 조려
마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (164, 8, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (164, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (164, 53, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (164, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (164, 85, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (164, 258, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (165, '아귀나가사키조림', 'medium', 25, '[단계 1] 미나리, 숙주는 적당한 길이로 썰고,
양파는 채 썰고, 대파, 고추,
아스파라거스는 어슷하게 썬다.
[단계 2] 해산물을 끓는 물에 데친다.
[단계 3] 해산물 데친 물에 육수 재료를 넣고
끓인 뒤 체에 걸러 육수를 만든다.
[단계 4] 냄비에 데친 해산물과 미나리, 숙주,
양파, 대파, 청양고추, 아스파라거스,
붉은 고추를 얹은 뒤 육수를 넣어
끓인다.
[단계 5] 녹말물을 넣어 농도를 맞춘 뒤 조려
마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (165, 155, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (165, 206, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (165, 189, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (165, 86, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (165, 252, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (165, 87, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (165, 53, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (166, '카레가자미조림', 'medium', 30, '[단계 1] 고구마, 당근, 양파, 파프리카는 깍둑
썰고, 양송이버섯은 4등분해 썰고,
브로콜리는 먹기 좋게 썬다.
[단계 2] 가자미에 밀가루, 달걀물을 묻혀
버터를 두른 팬에 바삭하게 굽는다.
[단계 3] 식용유를 두른 팬을 약한 불로
달궈 다진 마늘을 볶다가
토마토페이스트를 넣어 볶는다.
[단계 4] 당근, 양파, 고구마를 넣어 볶다가
브로콜리와 치킨스톡, 카레가루,
강황가루을 넣어 잘 섞어 끓인다.
[단계 5] 코코넛 밀크와 생크림, 파프리카,
양송이버섯을 넣어 살짝 더 끓인다.
[단계 6] 구운 가자미와 청양고추를 넣고
조려 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (166, 149, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (166, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (166, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (166, 40, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (166, 118, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (166, 48, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (166, 161, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (167, '타콤소스닭조림', 'easy', 3, '[단계 1] 양파와 셀러리, 당근, 사과, 버섯은
잘게 다지고, 가지, 양파는 한입
크기로 썰고, 토마토는 십자로
칼집을 내고 살짝 데쳐 껍질을
벗긴 뒤 씨를 제거해 다진다.
[단계 2] 단호박과 브로콜리는 한입 크기로
썰어 데친다.
[단계 3] 닭가슴살은 칼집을 내 닭밑간양념한
뒤 팬에 식용유(10g)를 둘러
80%정도 익힌다.
[단계 4] 팬에 식용유를 두르고 다진 마늘을
먼저 볶다가 양파와 셀러리, 당근을
넣어 볶고, 양파가 투명하게 변하면
사과와 버섯을 넣어 볶는다.
[단계 5] 토마토를 넣어 3분 정도 더 볶다가
닭육수와 월계수잎을 넣어 5분 정도
푹 끓인 뒤 한 김 식혀 오레가노와
바질을 넣고 믹서기에 곱게 갈아
타콤소스를 만든다.
[단계 6] 단호박과 브로콜리, 양파, 가지를
센 불에서 빠르게 볶은 뒤 닭고기와
타콤소스를 넣어 조리다가 닭고기가
다 익으면 접시에 담고,
파슬리가루를 뿌려 마무리.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (167, 82, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (167, 187, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (167, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (167, 65, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (168, '버섯 두유 소스 볶음', 'easy', 15, '[단계 1] 새송이버섯은 굵게 채썬 후 달군 프라이팬에 기름을 두르고 노릇하게 볶는다.
[단계 2] 소스 팬에 두유, 생크림, 청양고추, 후추를 넣고 약한 불에 뭉근하게 졸인다.
[단계 3] 볶은 새송이버섯을 소스에 넣고 고루 섞어 가며 조금 더 볶아 접시에 담은 후 새싹채소를 함께 곁들인다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (168, 82, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (168, 153, 10.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (168, 204, 20.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (168, 48, 10.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (168, 161, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (168, 38, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (168, 151, 20.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (169, '백일송이버섯 볶음', 'easy', 15, '[단계 1] 파프리카는 씨를 빼고 버섯 크기와 비슷하게 썬다.
[단계 2] 달구어진 팬에 카놀라유를 두르고 백일송이 버섯을 볶는다.
[단계 3] 버섯이 살짝 숨이 죽으면 파프리카를 넣어 함께 볶아 접시에 담는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (169, 259, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (169, 292, 5.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (170, '시금치 리조또', 'easy', 15, '[단계 1] 시금치는 뚜껑을 열고 데친 후, 물기를 뺀다.
[단계 2] 마, 시금치, 두유를 함께 갈아 체에 거른다.
[단계 3] 가열된 팬에 버터를 두르고 약불에서 2와 밥을 넣어 밥의 색을 입히고 소금, 후추가루로 간을 한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (170, 164, 180.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (170, 1, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (170, 9, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (170, 204, 150.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (170, 35, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (170, 40, 8.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (170, 70, 1.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (171, '북어비빔밥', 'medium', 15, '[단계 1] 당근과 표고버섯, 고사리는 5cm로 채 썰고, 애호박도 돌려 깎아 5cm로
채 썬다.
[단계 2] 우렁은 3등분으로 자른 후 1의 재료와 함께 들기름에 볶고 달걀은 황백으로 나누어 지단을 부쳐 채 썬다.
[단계 3] 북어는 갈아 북어보푸라기를 만든다. 그릇에 밥을 담고 준비된 재료를 담고 베이비채소, 식용꽃, 북어보푸라기를 올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (171, 164, 210.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (171, 6, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (171, 64, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (171, 22, 100.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (171, 261, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (171, 145, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (171, 177, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (171, 262, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (171, 90, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (172, '컵밥', 'medium', 15, '[단계 1] 베이컨과, 소시지를 다진 후 끓는 물에 데쳐 팬에 볶고 다진 김치는 물에 행군 후 고추가루를 넣어 볶는다.
[단계 2] 시금치는 데친 후 다져 참기름과 다진 마늘을 넣어 무치고 달걀은 부쳐서 다진다.
[단계 3] 김은 참기름을 발라 구워 길게 자르고 밥과 준비된 재료를 층층히 쌓아 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (172, 263, 420.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (172, 24, 4.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (172, 24, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (172, 22, 200.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (172, 264, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (172, 218, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (172, 1, 70.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (172, 37, 20.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (172, 32, 6.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (172, 12, 6.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (173, '가지볶음밥', 'easy', 25, '[단계 1] 단호박은 삶아 으깬다.
[단계 2] 양파, 석박지, 파프리카, 가지는 깍둑
썰고, 두부는 으깬다.
[단계 3] 팬에 다진 마늘, 양파, 석박지를 넣어
볶다가 두부를 넣고 수분이 없어질
때까지 볶다가 가지, 파프리카도
넣어 볶는다
[단계 4] 밥과 저염된장, 후춧가루를 넣고
볶다가 들기름을 넣어 한 번 더
볶는다.
[단계 5] 그릇에 담고 으깬 단호박과
세발나물을 곁들여 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (173, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (173, 164, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (173, 53, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (174, '닭고기볶음밥', 'easy', 30, '[단계 1] 쌀은 30분 정도 불린 뒤 동량의 물에 강황가루를 풀어 완두콩과 함께
넣어 밥을 짓는다.
[단계 2] 닭고기를 깨끗이 씻은 후 끓는 물에
살짝 데쳐 기름기를 제거한 뒤 작게
썰어 대추, 수삼과 함께 맛술에 재워
잡냄새를 없앤다.
[단계 3] 양파와 당근은 작게 깍둑 썬다.
[단계 4] 팬에 기름을 두른 후 재워둔
닭고기와 당근, 양파를 볶는다
[단계 5] 강황밥을 넣고 같이 볶아
마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (174, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (174, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (175, '김말이두부스테이크', 'medium', 30, '[단계 1] 두부는 사방 3cm 길이와 두께로 잘라 허브
소금을 뿌려 수분을 완전히 빼고 속을 파서
밀가루를 묻힌다.
[단계 2] 소 재료를 골고루 양념해 속을 파준 두부에
채워준다.
[단계 3] 채워진 두부를 김을 두른 뒤 팬에 은근하게
구워준다.
[단계 4] 고구마, 단호박, 아스파라거스를 편으로
썰어 준다.
[단계 5] 마늘과 토마토를 각각 다진 후 오일에 볶다가
레드와인을 넣어 졸인다. 불을 끄기 직전에
버터를 넣어 소스를 만든다.
[단계 6] 채소를 각각 구워주고 구워진 두부스테이크를
담고 레드와인 소스를 뿌려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (175, 23, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (175, 24, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (175, 35, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (175, 10, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (175, 145, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (175, 82, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (175, 34, 10.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (175, 38, 0.30, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (175, 9, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (175, 65, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (175, 10, 70.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (175, 155, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (175, 265, 15.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (176, '연어롤샐러드', 'medium', 30, '[단계 1] 영양부추, 시금치는 먹기 좋게 잘라 물에
담가준다.
[단계 2] 단호박은 삶아서 체에 내려준다.
[단계 3] 토마토는 곱게 다져주고 시금치도 데친 후
단호박, 연두부와 섞어준다.
[단계 4] 연어를 포를 떠서 만들어진 단호박과 연두부를
연어에 돌돌 말아 냉동실에 살짝 얼려준다.
[단계 5] 소스재료로 소스를 만든다.
[단계 6] 접시에 준비된 채소를 깔고 연어를 올리고
소스를 올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (176, 173, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (176, 65, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (176, 50, 4.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (176, 1, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (176, 5, 50.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (177, '한입꼬치구이', 'medium', 30, '[단계 1] 통삼겹살은 어간장, 마늘기름, 로즈마리,
통후추에 재워준다.
[단계 2] 양송이, 피망, 파프리카는 먹기 좋게 썰어서
마늘기름에 구워준다.
[단계 3] 고구마는 먹기 좋게 잘라 기름 없이 구워준다.
[단계 4] 재워 놓은 통삼겹은 작은 크기로 잘라서
건고추를 넣어 물에 데쳐낸다.
[단계 5] 모든 재료를 꼬치에 끼워서 살짝 구워준다.
[단계 6] 레몬껍질을 채 썰어서 소스를 만들어주고
꼬치와 함께 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (177, 266, 200.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (177, 9, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (177, 11, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (177, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (177, 267, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (177, 68, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (177, 31, 10.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (177, 38, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (177, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (178, '닭가슴살리조또', 'medium', 30, '[단계 1] 찹쌀은 30분 정도, 찰보리는 1시간 이상
불려주고 보리쌀은 한번 쪄 준다.
[단계 2] 표고버섯은 물에 데친다. 이때 표고버섯 불린
물은 버리지 않고 짜투리 채소와 함께 채소
국물을 만들어준다.
[단계 3] 불린 표고버섯, 청피망, 홍피망, 양파, 오리
가슴살은 작은 정사각형으로 잘라주고 청양
고추는 다져준다.
[단계 4] 다진 청양고추와 다진마늘은 볶아주고 다시
여기에 다진채소와 가슴살을 볶아준다.
[단계 5] 찹쌀과 보리쌀을 넣어 만들어진 채소국물에
끓여주다 생크림과 우유를 넣어 죽 형태로
만든다.
[단계 6] 여기에 볶아진 재료를 넣고 소금으로 간을
하고 말린 토마토를 올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (178, 19, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (178, 243, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (178, 200, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (178, 267, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (178, 145, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (178, 161, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (178, 10, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (178, 12, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (178, 241, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (178, 48, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (178, 21, 30.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (178, 84, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (178, 35, 2.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (179, '계란숙샐러드', 'medium', 30, '[단계 1] 소고기에 물을 넣어 육수를 뽑아준 후 천연
조미료로 간을 해준다.
[단계 2] 소고기는 곱게 다져준 뒤 볶아준다.
[단계 3] 감자를 삶아서 체에 내려준다.
[단계 4] 계란을 풀고 소고기 다진 것과 게맛살, 물을
넣고 섞은 뒤 찜기에 쪄준다.
[단계 5] 부추와 브로콜리는 뜨거운 물에 데쳐 먹기
좋게 잘라주고, 방울토마토와 미니파프리카도
먹기 좋게 잘라준다.
[단계 6] 매실청과 올리브오일, 후추로 드레싱을 만들어
준비된 채소를 섞어준 뒤 그릇에 담는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (179, 22, 120.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (179, 14, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (179, 245, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (179, 8, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (179, 189, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (179, 53, 200.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (179, 149, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (179, 50, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (179, 95, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (179, 5, 5.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (180, '실치오이 초절임', 'easy', 15, '[단계 1] 실치는 끓는 물에 데친다.
[단계 2] 오이는 반달 모양으로 슬라이스하고 식초에 절인 후 물기를 제거하고 매실액을 넣는다.
[단계 3] 데쳐낸 실치와 오이를 함께 버무려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (180, 52, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (180, 76, 20.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (180, 55, 80.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (181, '두부달걀덮밥', 'easy', 30, '[단계 1] 찬물에 다시마를 넣고 끓여 건져
내고 불을 끈 후 가다랑어포를
넣어 우려 육수를 만든다.
[단계 2] 두부, 가지는 깍둑 썰고, 표고버섯,
양파는 채 썰고, 달걀은 곱게 푼다.
[단계 3] 두부, 가지는 물기를 제거한 뒤
후춧가루로 밑간하고 녹말가루를
얇게 입혀 식용유를 두른 팬에서
구워 건진다.
[단계 4] 육수(1컵)에 청주, 설탕, 간장을 넣고
표고버섯, 양파를 넣고 조려 덮밥
소스를 만든다.
[단계 5] 달걀물을 붓고 익을 때까지 저은 후
녹말물을 넣어 되직하게 끓인다.
[단계 6] 밥을 그릇에 담고 덮밥소스를
곁들인 후 두부, 가지, 가다랑어포를
얹어 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (181, 164, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (182, '가지연어구이', 'easy', 10, '[단계 1] 가지는 어슷 썰고, 토마토는 반
자른다.
[단계 2] 연어는 파슬리와 올리브유에 재운다.
[단계 3] 마늘은 노릇하게 굽는다.
[단계 4] 재운 연어와 가지, 토마토는 180℃로
예열한 오븐에 10분 정도 굽는다.
[단계 5] 사과는 잘게 다져 유자청과
레몬즙을 넣고 살짝 볶아 소스를
만든다.
[단계 6] 연어, 가지, 토마토, 구운 마늘을
담고 소스를 얹어 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (182, 153, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (182, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (183, '고구마두부스테이크', 'medium', 30, '[단계 1] 두부는 물기를 없앤 뒤 체에 밭쳐
으깬 뒤 칼등으로 한 번 더 으깬다.
[단계 2] 고구마는 삶아 껍질을 벗겨 으깬다.
[단계 3] 마늘, 대파, 양파는 잘게 다진 뒤
식용유(5g)를 두른 팬에서 살짝 볶아
키친타월에 밭쳐 물기를 제거하며
식힌다.
[단계 4] 볶은 채소, 두부, 고구마,
다진 견과류, 찹쌀가루를 섞은 뒤
반죽해 둥글 납작하게 모양을
빚고, 식용유(15g)를 두른 팬에서
앞뒤로 노릇하게 굽는다.
[단계 5] 양송이버섯은 채 썬다.
[단계 6] 다시마육수에 청국장, 유자청,
녹말가루, 양송이버섯을 넣고 조린
청국장소스를 곁들여 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (183, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (183, 133, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (183, 146, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (183, 85, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (183, 115, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (184, '닭가슴살카나페', 'medium', 30, '[단계 1] 고구마를 삶아 껍질을 벗겨 으깬 뒤
우유와 섞어 고구마무스를 만든다.
[단계 2] 백김치와 비트를 작게 썬 뒤
백김치에 물이 들도록 절여 놓는다.
[단계 3] 닭가슴살을 한입 크기로 썬 후
칼등으로 두드린 뒤 후춧가루로
밑간한다.
[단계 4] 식용유(15g)를 두른 팬에 닭가슴살을
올려 굽는다.
[단계 5] 구운 닭가슴살 위에 고구마무스,
비트에 절인 백김치, 새싹을 얹는다.
[단계 6] 그릇에 닭가슴살카나페를 넣은 후
바나나식초를 곁들여 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (184, 73, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (184, 19, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (184, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (184, 193, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (184, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (185, '꽁치채소말이', 'easy', 30, '[단계 1] 꽁치는 머리와 꼬리를 떼어 내고
포 뜨듯이 길게 살만 발라내 잔뼈를
발라 쌀뜨물에 담갔다 건져 물기를
제거한다.
[단계 2] 오렌지를 간 뒤 레몬즙과 설탕,
소금을 섞어 오렌지소스를 만든다.
[단계 3] 마늘종은 꽁치 폭에 맞춰 썰고,
양파와 파프리카도 채 썬다.
[단계 4] 수분을 제거한 꽁치에 밀가루를
묻혀 깻잎→마늘종→양파→
파프리카 순으로 올려 돌돌 말아
꼬치로 꽂아 고정한다.
[단계 5] 밀가루를 묻히고 달군 팬에
앞뒤가 노릇노릇하게 익힌다.
[단계 6] 소스를 팬에 넣고 끓이다가 꽁치
꼬치를 넣고 졸인 뒤 그릇에 무순,
새싹과 함께 담아 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (185, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (185, 2, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (185, 7, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (185, 193, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (186, '차돌박이구이', 'easy', 30, '[단계 1] 연근은 얇게 3㎜ 정도의 두께로 썰어
홍초물에 담가 절인다.
[단계 2] 미나리는 연근과 비슷한 길이로
썬다.
[단계 3] 오렌지는 껍질은 얇게 벗겨 채 썰고,
과육부분은 반달 모양으로 2조각
썬다.
[단계 4] 과육을 오렌지주스와 섞은 뒤 갈아
오렌지소스를 만든다.
[단계 5] 팬에 차돌박이를 펼친 뒤
오렌지소스를 조금씩 넣으며 익힌다.
[단계 6] 그릇에 연근초절임, 미나리,
어린잎채소, 차돌박이 순서로
담은 뒤 오렌지 껍질과
오렌지소스를 얹어 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (186, 157, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (186, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (186, 53, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (187, '간장아귀찜', 'easy', 30, '[단계 1] 아귀는 얇게 포를 뜬다.
[단계 2] 새우를 다져 아귀포 안에 채워 넣은
뒤 데친 미나리로 묶는다.
[단계 3] 냄비에 간장소스, 아귀,
아귀찜양념을 넣고 약한 불에서
끓인다.
[단계 4] 아귀가 익으면 고추를 어슷 썰어
올린 뒤 살짝 더 익힌다.
[단계 5] 콩나물은 끓는 물에 데친 뒤 참기름,
참깨를 넣고 무친다.
[단계 6] 아귀찜에 콩나물무침을 곁들여
마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (187, 7, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (187, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (187, 171, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (188, '견과류통삼겹살찜', 'medium', 30, '[단계 1] 통삼겹살은 속을 판 뒤 땅콩, 아몬드,
말린 자두, 호두로 채운 뒤
돼지고기 밑간에 재워 놓는다.
[단계 2] 통삼겹살을 김 오른 찜기에 넣어
찐다.
[단계 3] 물기를 뺀 새우젓과 편 썬
마늘을 기름에 튀긴다.
[단계 4] 소스 재료를 끓인다.
[단계 5] 파프리카는 채 썰고, 부추는 먹기
좋은 크기로 썰어 들기름과
고춧가루에 버무린다.
[단계 6] 통삼겹살을 먹기 좋은 크기로 썰어
부추, 파프리카 위에 놓고 튀긴
새우젓과 마늘을 올린 뒤 소스를
곁들여 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (188, 117, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (188, 268, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (188, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (188, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (188, 5, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (188, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (188, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (188, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (188, 13, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (188, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (189, '닭가슴살말이', 'easy', 5, '[단계 1] 닭가슴살은 곱게 다진다.
[단계 2] 당근은 채 썰어서 단촛물에 5분 정도 절이고, 시금치는 데쳐서 물기를 제거하고, 마른 표고버섯은 불린 뒤 곱게 채를 썰어 간장과 참기름에 버무린다.
[단계 3] 종이포일에 다진 가슴살을 올리고 그 위에 시금치, 당근, 표고버섯과 견과류를 올려 말아준다
[단계 4] 김 오른 찜기에 넣어서 25분간 찐다.
[단계 5] 겨자소스를 만든다.
[단계 6] 닭가슴살말이에 겨자소스를 곁들여
마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (189, 229, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (189, 31, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (189, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (189, 133, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (189, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (189, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (190, '두부말이찜', 'easy', 15, '[단계 1] 두부는 으깨어 면포에 물기를 짜고,
불린 표고버섯도 물기를 꼭 짠 뒤
다지고, 닭가슴살은 곱게 다진다.
[단계 2] 두부, 표고버섯, 닭가슴살에
반죽양념을 넣어 치댄다.
[단계 3] 톳은 데쳐서 송송 썬다.
[단계 4] 쿠킹포일에 참기름을 바르고 반죽을
펼친 뒤 깻잎을 얹고 그 위에 톳을
올려 김밥 말듯이 만다.
[단계 5] 쿠킹 포일에 구멍을 내고 김이 오른
찜통에 10-15분 정도 찐다.
[단계 6] 두부말이가 식으면 적당한 크기로
썬 뒤 레몬소스를 살짝 뿌려
마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (190, 2, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (190, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (191, '불고기덮밥', 'medium', 30, '[단계 1] 소 불고기는 양념장을 버무려 팬에 볶아준다.
[단계 2] 청고추, 홍고추는 가늘게 채 썰어준다.
[단계 3] 양파는 채 썰고 쪽파도 한입 크기로 잘라준다.
[단계 4] 팽이도 먹기 좋은 크기로 잘라준다.
[단계 5] 계란물을 풀어준다.
[단계 6] 채소를 각각 볶아주다가 볶은 불고기에 섞어
주고 계란물을 풀어서 밥에 올려서 통깨를
뿌려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (191, 263, 200.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (191, 10, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (191, 96, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (191, 97, 18.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (191, 110, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (191, 22, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (191, 144, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (191, 12, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (191, 39, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (192, '바비큐리조또', 'medium', 30, '[단계 1] 사과와 적양배추는 먹기 좋은 크기로 잘라준다.
[단계 2] 감자를 작은 깍두기 모양으로 자르고 영양부추는
송송 잘라주어 청국장 리조또를 만들어준다.
[단계 3] 준비된 곁들이 채소를 올리브오일에 볶아준다.
[단계 4] 준비된 통삼겹은 물에 한번 80% 이상 데쳐준 후
조림장 재료에 물 200g을 넣고 은근히 졸여서
익혀준다.
[단계 5] 조림장에 졸여지는 통삼겹에 장이 한 큰술
남을 정도까지 졸여준다.
[단계 6] 접시에 곁들이 채소와 청국장 리조또를 함께
올려 셋팅한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (192, 266, 200.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (192, 31, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (192, 38, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (192, 265, 30.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (192, 38, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (192, 84, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (192, 5, 20.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (192, 63, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (192, 57, 70.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (192, 12, 25.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (192, 84, 10.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (193, '모듬해물찜', 'medium', 30, '[단계 1] 자숙새우와 소라살은 한번 데친 후 소라살은
먹기 좋게 잘라준다.
[단계 2] 전복은 껍질을 벗기지 말고 세척해 준다.
[단계 3] 양파, 홍피망, 대파는 먹기 좋게 잘라준다.
[단계 4] 청고추, 홍고추도 먹기 좋게 잘라준다.
[단계 5] 데친 물 200g에 양념장을 만들어 멕시코
고추를 담가 숙성시켜준 뒤 양념장에 알마늘을
넣어 끓여준다.
[단계 6] 만들어진 양념장에 소라, 전복, 자숙새우,
준비된 채소 순으로 넣어 모듬해물찜을 완성
한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (193, 86, 200.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (193, 269, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (193, 270, 45.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (193, 12, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (193, 11, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (193, 96, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (193, 97, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (193, 241, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (193, 10, 50.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (194, '크렌베리귀리밥', 'easy', 30, '[단계 1] 백미와 귀리는 세척해 백미는 30분, 귀리는
1시간 정도 불려준다.
[단계 2] 귀리를 먼저 물을 넣어 볶아 충분히 익혀준다.
[단계 3] 귀리가 어느 정도 익을 때 쯤 쌀을 섞어 한 번
더 볶아준다.
[단계 4] 귀뢰와 쌀이 익어갈 때 쌀의 물 1배를 넣고
밥을 해 준다.
[단계 5] 불을 끄고 크린베리를 바로 넣어서 뚜껑을
덮어 5분 후에 밥을 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (194, 271, 150.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (194, 232, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (194, 272, 20.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (195, '토마토제철나물 샐러드', 'medium', 25, '[단계 1] 마늘과 흑임자 참깨를 다져서 소스를 만든다.
[단계 2] 영양부추는 5cm 길이로 잘라주고 알배추는
채 썰어 냉수에 담가둔다.
[단계 3] 방울토마토는 먹기 좋게 자르고 적양배추,
양파를 채 썬다.
[단계 4] 두부는 기름에 구워서 크루통을 만든다.
[단계 5] 준비된 채소를 물기를 빼고 접시에 담아
두부크루통을 올린 뒤 소스와 함께 셋팅한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (195, 5, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (195, 240, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (195, 185, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (195, 236, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (195, 50, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (195, 10, 70.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (195, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (195, 33, 20.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (196, '초계샐러드', 'medium', 30, '[단계 1] 닭가슴살은 데친 후 가늘게 찢어준다.
[단계 2] 달걀은 황백지단을 부쳐서 다이아몬드 모양
으로 잘라준다.
[단계 3] 오이, 피망, 파프리카도 마름모로 잘라준다.
[단계 4] 시금치는 살짝 데쳐서 수분을 짜서 한입
크기로 잘라준다.
[단계 5] 소스 재료를 믹서에 갈아 소스를 만들어준다.
[단계 6] 대추는 돌려깎기 해서 잘라주고 준비된 모든
재료를 섞어 샐러드를 만들고 대추채를 올려
완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (196, 19, 250.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (196, 22, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (196, 55, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (196, 143, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (196, 66, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (196, 1, 50.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (197, '매생이찰범벅', 'easy', 30, '[단계 1] 찹쌀은 미리 불려준다.
[단계 2] 매생이는 물에 담가 짠기와 이물질을 빼준다.
[단계 3] 단호박은 작은 사각형으로 잘라 멸치육수에
데쳐준다.
[단계 4] 밤은 곱게 다져주어 고명으로 사용한다.
[단계 5] 우유와 육수를 섞은 뒤 찹쌀을 끓여준다.
[단계 6] 죽이 어느 정도 완성되면 데쳐낸 호박과
매생이를 넣어 범벅을 만들어준다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (197, 21, 100.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (197, 200, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (197, 65, 50.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (198, '통삼겹맥적구이', 'easy', 10, '[단계 1] 구이소스 재료를 이용해 소스를 만든다.
[단계 2] 통삼겹은 닭육수에 삶아 냉수에 헹궈 물기를
빼준다.
[단계 3] 통삼겹에 만들어진 소스를 발라 준 뒤 10분
정도 숙성시켜준다.
[단계 4] 샐러드재료는 곱게 채 썰고 냉수에 담가
각각의 맛을 중화시켜준다.
[단계 5] 샐러드소스를 만들어 샐러드를 버무려준다.
[단계 6] 양념에 재워진 통삼겹을 구워주고 샐러드를
담아 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (198, 236, 35.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (198, 6, 30.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (199, '닭가슴살샌드스테이크', 'medium', 30, '[단계 1] 닭은 손질해 주고 흰 후추와 올리브오일로
밑간을 해준다.
[단계 2] 시금치는 데친 후 수분을 제거해 먹기 좋게
잘라주고, 양파는 송송 다져준다. 준비된
채소를 마늘과 버터에 볶아주다 생크림을 넣어
살짝 졸여준다.
[단계 3] 콜리플라워, 브로콜리는 뜨거운 물에 데친 후
방울토마토와 함께 팬에 구워준다.
[단계 4] 버터에 꿀을 넣고 졸이다가 카라멜 효과를
주고 오렌지주스와 레몬즙을 넣고 갈색소스를
만든다.
[단계 5] 닭가슴살을 포를 떠준 후 졸여준 채소를
채워준다.
[단계 6] 닭가슴살을 팬에 구워주고 접시에 구운 채소
와 소스를 뿌려준다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (199, 19, 150.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (199, 1, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (199, 10, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (199, 149, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (199, 68, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (199, 50, 100.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (200, '치즈리조또', 'medium', 30, '[단계 1] 쌀은 30분전에 불려준다.
[단계 2] 단호박은 찐 후 체에 내려준다.
[단계 3] 생 표고버섯은 뜨거운 물에 데친 후 아주
가늘게 채를 썰어준다.
[단계 4] 반은 채 썰어서 참기름으로 간을 해 준다.
[단계 5] 팬에 표고를 먼저 볶아주다가 불린 쌀을
넣어 볶고 볶은소금으로 간을 해준다.
[단계 6] 볶아주던 쌀에 우유를 넣어가면서 계속 볶아
주고 단호박과 치즈를 넣어 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (200, 65, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (200, 21, 0.18, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (200, 208, 27.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (200, 121, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (200, 273, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (200, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (200, 35, 1.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (201, '가지말이샐러드', 'medium', 30, '[단계 1] 가지는 길이로 포를 떠 준다. 이때 필러를
이용하면 간편하게 할 수가 있다.
[단계 2] 감자는 채 썰어 냉수에 담가 전분기를 완전히
빼준다.
[단계 3] 파프리카, 양파, 청고추는 감자와 같은 길이로
채 썰어준다.
[단계 4] 소스를 만들어준다.
[단계 5] 가지를 기름 없이 구워준다.
[단계 6] 구운 가지를 펴 놓고 준비된 채소를 말아서
가지말이를 만들고, 마늘튀김을 올려 소스랑
완성한 뒤 파마산치즈를 다져서 먹기 직전에
뿌려준다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (201, 187, 250.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (201, 8, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (201, 95, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (201, 10, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (201, 12, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (201, 98, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (201, 158, 30.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (202, '유자등갈비구이', 'medium', 30, '[단계 1] 등갈비는 찬물에 약 2시간 이상 담그어
핏물을 빼고, 월계수잎과 생강, 통훗추를
넣고 약 1시간 삶아 건져 놓는다.
[단계 2] 적양배추와 당근, 양파를 채를 썰어
찬물에 담그어 놓는다.
[단계 3] 유자청에 밤을 다져넣고 사과즙,
생크림, 설탕, 소금, 식초를 넣어
골고루 섞어 소스를 만든다.
[단계 4] 물에 담그어 놓은 채소는 채에 올려
물기를 빼 놓는다.
[단계 5] 팬에 기름을 두르고 다진마늘을 볶아
마늘기름을 만들어 놓는다.
[단계 6] 마늘기름으로 삶아 놓은 등갈비를
노릇노릇 하게 굽고, 접시에 담아
물기를 빼 놓은 채소를 담고 유자소스를
올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (202, 274, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (202, 13, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (202, 38, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (202, 33, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (202, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (202, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (202, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (202, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (202, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (202, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (203, '닭고기라이스롤', 'medium', 10, '[단계 1] 닭고기살은 넓게 펴서, 약 10분 정도
우유에 담그어 놓는다.
[단계 2] 수수와 쌀은 깨끗이 씻어 찬물에 약 30분
정도 불려 밥을 지어 놓는다.
[단계 3] 파프리카는 가운데 씨를 제거하고 채를
썰고, 당근과 양파도 파프리카 길이로
채를 썰고, 애호박은 껍질 부분만 돌려
깎아 채를 썰어 준비한다.
[단계 4] 팬에 기름을 살짝 둘러 준비한 채소(③)에
소금을 넣고 볶아 놓는다.
[단계 5] 우유에서 닭고기를 건져 후춧가루를
살짝 뿌린 후 잡곡밥(②)과 볶아 놓은
채소(④)를 넣어 돌돌 말아 준다.
[단계 6] 토마토는 입자있게 다져 다진 마늘과
함께 볶다가 케첩과 육수를 넣고 끓인
뒤 말아놓은 닭고기를 넣고 은근히
졸이듯 익혀 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (203, 20, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (203, 21, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (203, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (203, 275, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (203, 121, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (203, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (203, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (203, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (203, 64, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (203, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (203, 33, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (204, '닭강정', 'medium', 30, '[단계 1] 닭은 깨끗이 씻어 여러 번 토막을 낸다.
[단계 2] 토막 낸 닭을 카레가루와 녹말가루에
버무려 놓는다.
[단계 3] 양파와 당근, 파프리카, 오이는 크기를
작은 깍두기 모양으로 썰어 준비한다.
[단계 4] 팬에 식용유를 두르고 다진마늘를 살짝
볶은 뒤 저염간장에 레몬즙과 설탕, 꿀,
볶은 마늘을 넣어 섞는다.
[단계 5] 요거트에 썰어 놓은 양파와 당근,
파프리카, 오이, 케첩을 넣어 섞어준다.
[단계 6] 튀김기름 온도가 170℃가 되면 버무려
놓은 닭(②)을 넣고 두 번 튀겨, 기름을
제거하고, ④번 소스에 살짝 버무려
접시에 담아, 준비한 요거트소스(⑤)를
올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (204, 20, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (204, 120, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (204, 115, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (204, 125, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (204, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (204, 106, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (204, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (204, 154, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (204, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (204, 55, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (204, 276, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (205, '소고기꼬치구이', 'medium', 30, '[단계 1] 소고기는 포를 두툼하게 떠서, 소금과
후춧가루를 뿌려 숙성을 시킨다.
[단계 2] 인삼은 뇌두를 잘라 씻어 약 2cm
두께로 썰고, 파인애플과 파프리카도
두툼하게 썰고, 표고버섯과 대파,
토마토를 썰어 준비하고, 베이컨도
2cm 길이로 썰어 준비한다.
[단계 3] 팬에 기름 없이 파인애플과 파프리카를
먼저 굽는다.
[단계 4] 잘라놓은 인삼은 올리브오일을 살짝
넣고 굽는다.
[단계 5] 마늘은 썰어 굽고, 준비한 재료를
꼬치에 차례로 꽂아 프라이팬 또는
직화로 구워 담는다.
[단계 6] 유자청에 저염간장과 레몬, 설탕을
넣고 골고루 섞어 구워 놓은 소고기
꼬지에 올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (205, 14, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (205, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (205, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (205, 67, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (205, 84, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (205, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (205, 199, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (205, 145, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (205, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (205, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (205, 264, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (205, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (205, 277, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (206, '토마토덮밥', 'easy', 30, '[단계 1] 쌀은 물에 불려 밥을 짓고, 가지는 길게
썰어 팬에 구워 놓는다.
[단계 2] 양파와 마늘은 잘게 다져 준비한다.
[단계 3] 토마토는 입자있게 다져 놓는다.
[단계 4] 새우는 정종을 넣어 데쳐 껍질을 벗겨
준비한다.
[단계 5] 팬에 올리브 오일을 넣고 양파와 마늘을
먼저 볶는다.
[단계 6] 볶아지는 양파와 마늘에 토마토소스와
케첩을 넣어 볶다가 토마토와 설탕을
넣어 볶다가 졸이고, 밥을 그릇에 담고,
구운 가지와 새우를 올린 후 졸여 놓은
토마토소스를 위에 올린 후 어린잎을
살짝 올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (206, 121, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (206, 187, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (206, 87, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (206, 130, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (207, '백김치닭살샐러드', 'medium', 20, '[단계 1] 닭고기에 물을 자작하게 넣고
월계수잎과 통후추, 정종을 넣고
약 20분 정도 삶아 식혀 찢어놓는다.
[단계 2] 브로컬리는 끓는 물에 소금을 넣고,
데쳐 작게 썰어놓고, 양상추는 물에
담그어 놓았다가 먹기 좋게 손으로
찢어 놓는다.
[단계 3] 파프리카는 속씨를 제거하고, 작은
깍둑썰기를 하고, 당근은 5cm 길이로
납작하게 썰어놓는다.
[단계 4] 브로컬리는 끓는 물에 소금을 넣고 데쳐
작게 썰어놓고, 양상추는 물에 담그어
놓았다가 먹기 좋게 손으로 찢어 놓는다.
[단계 5] 발사믹 식초에 설탕과 올리브 오일을
넣고 골고루 섞어 소스를 만들어
놓는다.
[단계 6] 찢어 놓은 닭고기살과 백김치를 넣고,
준비한 채소를 넣어 먹기 직전에 소스를
올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (207, 20, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (207, 274, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (207, 38, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (207, 112, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (207, 24, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (207, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (207, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (207, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (207, 119, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (207, 3, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (207, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (208, '견과편수', 'medium', 5, '[단계 1] 흑임자는 곱게 갈아 밀가루와 우유를
넣고 반죽을 해서 비닐에 넣어 숙성
시킨다.
[단계 2] 닭가슴살은 삶아 건져 후춧가루를
살짝 넣고, 입자있게 다진다.
[단계 3] 입자있게 다진 닭가슴살을 마늘과 함께
팬에서 볶아놓는다.
[단계 4] 마와 바나나는 강판에 갈고, 캐슈넛과
잣은 입자있게 다진 뒤 냄비에 마,
바나나, 캐슈넛, 잣, 머스터드를 넣어
섞은 뒤, 우유를 넣고 살짝 끓여 편수
육수를 만들어 놓는다.
[단계 5] 부추와 양파, 파는 입자있게 썰어, 볶아
놓은 닭가슴살(③)에 섞어 편수 속을
만들어 놓는다.
[단계 6] 숙성시킨 밀가루 반죽(①)은 얇게
밀어 사각형으로 썰어 그 안에 속을
채워 넣고, 찜통에 약 5분 정도 쪄
접시에 담고, 그 위에 편수 육수를
올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (208, 132, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (208, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (208, 21, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (208, 19, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (208, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (208, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (208, 5, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (208, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (208, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (208, 176, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (208, 21, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (209, '황태리조또', 'medium', 5, '[단계 1] 두부는 김이 오르는 찜통에 소금을
넣고 약 5분 정도 쪄 놓는다.
[단계 2] 황태는 강판에 갈아 보프리를 만들어
놓는다.
[단계 3] 홍합은 끓는 육수에 데쳐 육수는 따로
걸러 놓고, 홍합은 살만 꺼내 따로 준비
한다.
[단계 4] 냄비에 버터를 녹이고, 두부와 홍합을
으깨어 볶는다.
[단계 5] 볶아지는 냄비에 만들어 놓은 육수와
생크림을 넣고, 골고루 섞어 가면서
볶는다.
[단계 6] 두부가 육수에 볶아지면, 마지막에
황태보프라기를 넣고, 달걀과 참기름
통깨를 넣어 살짝 익혀 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (209, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (209, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (209, 223, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (209, 40, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (209, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (209, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (209, 39, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (210, '깻잎애호박찜', 'medium', 5, '[단계 1] 애호박은 길게 반으로 자른다.
[단계 2] 자른 애호박에 칼집을 넣는다.
[단계 3] 깻잎은 잘게 썰고, 양파는 곱게 다지고
피망, 파프리카는 입자있게 썬다.
[단계 4] 저염간장에 다진 양파와 매실액을 넣고
잘 섞어 양념장을 만든다.
[단계 5] 양념장에 피망, 파프리카, 깻잎을
섞는다.
[단계 6] ?번을 칼집낸 호박 가운데 넣고 찜통
에서 5분 정도 쪄 낸 뒤 그릇에 담아 저
염간장소스를 한번 더 올린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (210, 64, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (210, 2, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (210, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (210, 143, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (210, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (210, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (210, 52, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (211, '녹차와 대추밀전병', 'medium', 30, '[단계 1] 계피가루와 대추를 삶아 건지고, 삶은
물은 따로 준비한다.
[단계 2] 밀가루에 대추와 계피 삶은 물을 넣고
전병 반죽을 한다.
[단계 3] 팬에 기름을 살짝 두르고 전병반죽을
작은 국자로 떠넣고 전병을 만든다.
[단계 4] 달걀은 황백으로 나눠 지단을 부쳐
채를 썬다.
[단계 5] 오이, 당근, 양파 및 표고버섯은 채를
썰어 소금에 살짝 절여 팬에 볶아 따로
준비한다.
[단계 6] 소고기는 채를 썰어 저염간장으로 양념
하고 팬에 볶은 후, 만들어 놓은 전병에
볶은 야채와 소고기를 올려 돌돌 말아
접시에 담고 그 위에 잣을 올리고
녹차를 만든다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (211, 14, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (211, 197, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (211, 55, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (211, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (211, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (211, 145, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (211, 62, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (211, 136, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (211, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (211, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (211, 176, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (211, 230, 5.00, '장', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (212, '닭순대', 'medium', 10, '[단계 1] 닭가슴살은 포를 떠 넓게 편다.
[단계 2] 포 뜬 닭가슴살에 소금, 후춧가루로
밑간을 한다.
[단계 3] 당면은 따뜻한 물에 불려 건진 뒤 3cm
길이로 썬다.
[단계 4] 부추는 송송 썰고 당근은 곱게 채썬다.
[단계 5] 당면, 당근, 부추는 골고루 섞어
저염간장으로 간을 한다.
[단계 6] 밑간이 된 닭가슴살에 ?번을 넣고
돌돌 말아 김이 오른 찜통에서 약 10분
정도 찐 뒤 한 김 식혀 썬다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (212, 194, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (212, 278, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (212, 279, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (212, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (212, 5, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (212, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (212, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (212, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (212, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (212, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (212, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (213, '도라지 유자청생채', 'medium', 30, '[단계 1] 통 도라지는 껍질을 벗긴다
[단계 2] 껍질을 벗긴 도라지는 잘라 소금에
살짝 절여 쓴맛을 뺀다.
[단계 3] 청·홍고추와 양파는 채썬다.
[단계 4] 썰어 놓은 청. 홍고추와 양파는 차가운
물에 담군 뒤 체에 밭쳐 물기를 뺀다.
[단계 5] 라임쥬스, 흑임자와 유자청을 골고루
섞어 소스를 만들고 도라지와 야채를
넣어 버물려 접시에 담는다
[단계 6] 홍고추는 반으로 잘라 장식한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (213, 139, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (213, 280, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (213, 97, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (213, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (213, 132, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (213, 85, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (213, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (214, '먹물소스를 곁들인 토마토피클', 'medium', 30, '[단계 1] 물 한 컵에 설탕, 식초, 소금,
피클링스파이스를 넣고 식촛물을
만든다.
[단계 2] 배는 스쿱으로 동그랗게 판다.
[단계 3] 토마토는 1/6등분으로 썬다.
[단계 4] 마와 우엉은 슬라이스 한다.
[단계 5] 썰어 놓은 마와 우엉을 식촛물에
담근다.
[단계 6] 와인에 먹물, 설탕을 넣고 섞어
식촛물에 넣고 배, 토마토, 새싹을
넣는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (214, 9, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (214, 205, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (214, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (214, 63, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (214, 193, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (214, 281, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (214, 282, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (214, 53, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (214, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (214, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (214, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (215, '묵은지고등어와 새우말이꼬치', 'hard', 30, '[단계 1] 고등어는 길게 포를 뜬다.
[단계 2] 새우는 껍질을 벗겨 손질한다.
[단계 3] 새송이와 당근은 채썬다
[단계 4] 미나리는 끓는 물에 살짝 데친다.
[단계 5] 묵은지는 흐르는 물에 헹군 뒤,
묵은지에 고등어를 넣고 새우, 새송이,
당근, 가지를 넣고 돌돌 말아 미나리로
묶은 뒤 찐다.
[단계 6] 양상추, 오이, 깻잎, 파프리카를
채썰고 땅콩가루를 버무려 함께
담아낸다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (215, 283, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (215, 87, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (215, 82, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (215, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (215, 4, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (215, 2, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (215, 187, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (215, 55, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (215, 116, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (215, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (215, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (215, 93, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (215, 3, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (215, 83, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (215, 284, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (216, '버섯배추말이', 'medium', 30, '[단계 1] 버섯은 채썬다.
[단계 2] 끓는 물에 채썰어 놓은 버섯을
데쳐낸다.
[단계 3] 다시마는 물에 담궈 다시마 물을
만들어 식초와 설탕 저염간장을 넣고
골고루 섞어 소스를 만들어 놓는다.
[단계 4] 미나리는 끓는 물에 소금을 넣고
데친다.
[단계 5] 배추는 끓는 물에 양배추와 함께 데쳐
찬물에 헹구고 양배추는 채 썬다.
[단계 6] 김발에 데친 배추를 놓고 표고버섯,
만송이버섯, 미나리, 양배추 채를 넣고
돌돌 말아 먹기 좋게 썰어 접시에 담은
뒤 소스를 담는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (216, 285, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (216, 182, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (216, 145, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (216, 4, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (216, 71, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (216, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (216, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (216, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (216, 230, 5.00, '장', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (217, '봄날의 연못', 'medium', 10, '[단계 1] 끓는 물에 문어를 넣고 약 10분 정도
삶아 건진다.
[단계 2] 라임은 얇게 썬다.
[단계 3] 삶은 문어를 얇게 저미고 라임을 한 장
한 장 넣고 숙성 시킨다.
[단계 4] 양파, 오이는 채썬다.
[단계 5] 배와 토마토는 주사위 모양으로 썬다.
[단계 6] 유자청, 레몬, 올리브오일, 소금으로
소스를 만들고, 접시에 문어와 라임을
담고 그 옆에 썰어 놓은 야채와 과일을
올려 소스를 올린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (217, 206, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (217, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (217, 55, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (217, 63, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (217, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (217, 85, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (217, 88, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (217, 84, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (218, '산나물 유부초밥', 'medium', 30, '[단계 1] 쌀은 깨끗이 씻어 30분 정도 불린 뒤
고슬고슬하게 밥을 짓는다.
[단계 2] 취나물과 참나물은 끓는 물에 소금을
넣고 데쳐 헹군다.
[단계 3] 곤드레나물은 충분히 불려 삶아
헹군다.
[단계 4] 유부는 끓는 물에 살짝 데쳐 기름기를
제거 하고 반으로 자른다.
[단계 5] 식초, 설탕, 소금을 섞어 촛물을
만든다.
[단계 6] 촛물을 밥에 섞고 준비한 나물을 다져
골고루 섞고 데친 유부에 넣고 초밥을
만들어 접시에 담은 뒤 나물과
토마토를 올린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (218, 286, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (218, 91, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (218, 287, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (218, 288, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (218, 121, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (218, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (218, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (218, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (218, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (219, '삼삼한 롤', 'medium', 30, '[단계 1] 훈제연어는 길게 손질한다
[단계 2] 아보카도는 길게 채 썬다.
[단계 3] 양파, 당근, 새송이버섯도 길게 채
썬다.
[단계 4] 감자는 삶아 체에 내려 소금과
사워크림을 넣고 잘 섞어서 틀에
담는다.
[단계 5] 팬에 양파, 당근, 새송이버섯을 각각
볶는다.
[단계 6] 사워크림과 레몬즙을 섞어 소스를
만들고 훈제 연어에 준비된 야채를
넣고 돌돌 말아 먹기 좋게 썰어 접시에
담고, 한쪽에 감자를 담은 뒤
사워소스를 올린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (219, 250, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (219, 197, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (219, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (219, 203, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (219, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (219, 8, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (219, 82, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (219, 88, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (219, 251, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (219, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (220, '소금없는 초밥', 'medium', 30, '[단계 1] 냄비에 다시마와 무를 넣고 끓이다가
가쓰오부시를 넣고 불을 꺼 진한
육수를 만든다.
[단계 2] 육수에 식초, 설탕, 소금을 넣고 촛물을
만든다.
[단계 3] 참치는 불에 타다끼 한 뒤 두툼하게
썬다.
[단계 4] 파프리카는 직화로 겉만 태워 참치
크기로 썬다.
[단계 5] 아스파라거스와 표고버섯은 살짝 데쳐
편으로 썬다.
[단계 6] 육수에 달걀을 풀어 두툼하게 지단을
부쳐 썰고, 밥에 촛물을 넣고 골고루
섞어 초밥을 만든 뒤 와사비, 참치,
달걀, 표고버섯, 파프리카 순으로 올려
김으로 띠를 두른다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (220, 28, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (220, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (220, 155, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (220, 145, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (220, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (220, 164, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (220, 24, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (220, 71, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (220, 7, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (220, 289, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (220, 244, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (220, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (220, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (220, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (221, '잣소스새송이볶음', 'medium', 30, '[단계 1] 새송이버섯과 파프리카는 가늘게 채썬다.
[단계 2] 채선 야채는 팬에 기름을 두르고 살짝 볶아낸다.
[단계 3] 찹쌀가루, 물, 소금을 섞어 찹쌀 반죽을 만든다.
[단계 4] 팬에 기름을 두르고 반죽을 한 스푼씩 떠 넣어 동그랗게 부친다.
[단계 5] 소스 재료를 모두 넣어 믹서에 간다.
[단계 6] 채소볶음을 잣소스에 무쳐 찹쌀전병 위에 한 스푼씩 올려낸다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (221, 82, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (221, 66, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (221, 235, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (221, 146, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (221, 53, 30.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (221, 35, 0.25, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (221, 153, 4.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (221, 176, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (221, 154, 0.50, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (221, 21, 5.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (221, 35, 0.25, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (222, '더덕얼갈이겉절이', 'medium', 30, '[단계 1] 얼갈이는 깨끗이 씻어 한입 크기로 뜯는다.
[단계 2] 더덕은 껍질을 벗긴다.
[단계 3] 껍질 벗긴 더덕은 굵게 채 썰어 소금물에 담가둔다.
[단계 4] 양념장 재료를 모두 섞어 양념장을 만든다.
[단계 5] 더덕을 건져 물기를 제거한다.
[단계 6] 더덕과 얼갈이 배추에 양념장을 넣고 가볍게 버무린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (222, 63, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (222, 198, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (222, 255, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (222, 37, 1.70, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (222, 39, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (222, 214, 2.50, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (222, 12, 1.25, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (222, 13, 0.65, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (222, 35, 0.50, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (222, 31, 3.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (222, 53, 10.00, 'ml', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (223, '과일겨자채', 'medium', 30, '[단계 1] 사과와 배는 사방 2cm 네모로 썰고, 밤도 얇게 썰어준다.
[단계 2] 1을 설탕물(물 1컵 + 설탕 2.5g)에 담근다.
[단계 3] 대추, 곶감은 굵게 채 썰고 호두, 땅콩은 굵게 다진다.
[단계 4] 분량의 재료를 섞어 겨자소스 만든다.
[단계 5] 과일을 체에 받쳐 물기를 빼고 소스에 버무린다.
[단계 6] 한입 크기로 자른 양상추에 샐러드를 올려낸다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (223, 57, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (223, 63, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (223, 166, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (223, 62, 6.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (223, 117, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (223, 83, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (223, 3, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (223, 169, 1.25, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (223, 180, 2.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (223, 290, 2.50, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (223, 154, 3.50, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (223, 63, 2.50, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (224, '콜라비물김치', 'medium', 30, '[단계 1] 콜라비, 당근, 오이는 나박 썬다.
[단계 2] 고추는 둥글게 썰고 실파는 3cm 길이로 썬다.
[단계 3] 콜라비를 소금에 살짝 절인다.
[단계 4] 물에 찹쌀을 풀어 찹쌀풀을 쑤어 식힌다.
[단계 5] 찹쌀풀에 배와 적양파를 갈아 넣어 국물을 만든다.
[단계 6] 국물에 소금을 넣어 간을 맞추고 썰어놓은 채소에 부어 용기에 담아 익혀 먹는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (224, 142, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (224, 6, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (224, 55, 6.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (224, 96, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (224, 97, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (224, 291, 0.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (224, 35, 0.50, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (224, 53, 60.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (224, 146, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (224, 63, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (224, 10, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (224, 35, 1.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (225, '옥수수감자샐러드', 'medium', 15, '[단계 1] 감자는 익기 쉽도록 토막 내고 완두콩과 옥수수알과 함께 김이 오른 찜통에 10~15분간 찐다.
[단계 2] 찐 감자를 으깬다.
[단계 3] 달걀은 삶아 흰자는 굵게 다지고 노른자는 체에 곱게 내린다.
[단계 4] 파프리카는 옥수수알 크기로 썬다.
[단계 5] 2에 완두콩, 옥수수, 파프리카, 달걀 흰자를 넣어 섞는다.
[단계 6] 마요네즈, 호상요구르트, 달걀노른자, 소금을 넣어 샐러드드레싱을 만들어 5와 곁들인다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (225, 8, 70.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (225, 22, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (225, 242, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (225, 253, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (225, 292, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (225, 170, 12.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (225, 293, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (225, 35, 0.15, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (226, '찬밥김치달걀찜', 'medium', 30, '[단계 1] 배추김치는 속을 털어낸다.
[단계 2] 1의 김치를 다진 다음 물기를 짠다.
[단계 3] 당근, 양파, 파는 잘게 다진다.
[단계 4] 달걀은 흰자와 노른자를 체에 거른다.
[단계 5] 달걀에 물 반컵을 넣고 잘 저은 후 1,2의 재료와 찬밥을 섞고 새우젓으로 간을 한다.
[단계 6] 5를 찜통에 넣고 찐다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (226, 22, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (226, 164, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (226, 24, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (226, 6, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (226, 10, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (226, 10, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (226, 53, 2.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (226, 53, 100.00, 'ml', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (227, '꼬막떡꼬치구이', 'medium', 30, '[단계 1] 떡볶이떡은 반으로 잘라 끓는 물에 데쳐 건진다.
[단계 2] 꼬막은 씻어 떡을 데친 끓는 물(잔열)에 살짝 삶아 건진 후 식으면 꼬막살을 뺀다.
[단계 3] 꼬치에 데친 떡과 꼬막살을 번갈아 가며 꽂는다.
[단계 4] 파와 양파는 다진다.
[단계 5] 고추장, 양파, 파, 다진 마늘, 조청, 간장, 고춧가루, 참기름을 넣어 고추장양념을 만든다.
[단계 6] 팬에 현미유를 조금 두르고 고추장양념을 볶다가 3의 꼬막떡꼬치에 고추장양념을 입힌 후 통깨를 뿌린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (227, 29, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (227, 10, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (227, 10, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (227, 189, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (227, 294, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (227, 12, 2.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (227, 31, 1.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (227, 37, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (227, 32, 1.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (227, 39, 0.50, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (228, '물파래콩전', 'medium', 10, '[단계 1] 물파래는 씻어 체에 걸러 물기를 제거하고 잘게 썬다.
[단계 2] 물에 5시간정도 불린 노란콩은 물 반컵을 넣고 약 10분가량 삶아 건져 믹서에 곱게 간다.
[단계 3] 파는 다지고 홍고추는 어슷썰기 한다.
[단계 4] 밀가루에 1,2와 물 20g을 넣어 반죽을 한다.
[단계 5] 팬에 현미유를 두르고 반죽을 떠서 지름 8cm 가량의 크기로 동그랗게 부치면서 윗면에 홍고추로 장식한다.
[단계 6] 간장, 파, 식초, 통깨를 넣고 초간장을 만들어 물파래콩전과 곁들인다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (228, 53, 5.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (228, 34, 10.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (228, 294, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (228, 97, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (228, 31, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (228, 10, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (228, 76, 0.50, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (228, 39, 0.20, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (229, '토마토김치', 'medium', 30, '[단계 1] 토마토는 먹기 좋은 크기로 잘라준다.
[단계 2] 청고추, 홍고추, 양파는 채 썰고 부추는 먹기
좋게 잘라준다.
[단계 3] 바나나, 배, 젓갈을 갈아 준 뒤 고춧가루와
섞어준다.
[단계 4] 만들어진 국물에 나머지 재료를 넣고 최종
김치 국물을 만들어준다.
[단계 5] 국물에 영양부추만 뺀 재료를 넣고 버무려준다.
[단계 6] 마지막에 영양부추를 넣어 김치를 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (229, 50, 200.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (229, 5, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (229, 10, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (229, 96, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (229, 97, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (229, 39, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (229, 12, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (229, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (229, 295, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (230, '닭가슴살스튜', 'medium', 30, '[단계 1] 닭가슴살은 먹기 좋은 크기로 잘라서 우유에
재워준 뒤 뜨거운 물에 데쳐준다.
[단계 2] 방울토마토는 반으로 자르고, 양파는 먹기 좋은
크기로 잘라준다.
[단계 3] 감자, 당근, 브로콜리는 먹기 좋은 크기로
잘라 뜨거운 물에 순서대로 데쳐준다.
[단계 4] 모든 재료를 올리브유에 볶아준다.
[단계 5] 토마토페이스트와 닭가슴살을 데쳐낸 물을
섞어 끓여준다.
[단계 6] 끓고 있는 국물 50g에 밀가루를 섞어 농도를
맞추어 준다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (230, 19, 200.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (230, 6, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (230, 10, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (230, 149, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (230, 8, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (230, 50, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (230, 21, 100.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (230, 153, 15.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (231, '가지겉절이', 'medium', 25, '[단계 1] 가지는 먹기 좋은 크기로 잘라서 간편 어간장에
절여준다.
[단계 2] 다진 대파, 청홍고추, 양파는 송송 잘라준다.
[단계 3] 절여진 가지를 꼭 짜서 수분을 제거해준다.
[단계 4] 양념장에 가지와 준비된 채소를 버무려 준다.
[단계 5] 완성된 가지김치는 2시간 정도 후에 숙성시켜
완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (231, 187, 250.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (231, 10, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (231, 11, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (231, 96, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (231, 97, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (231, 31, 15.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (232, '저염 동치미', 'medium', 30, '[단계 1] 함초와 쪽파는 1cm 길이로 자른다. 청고추,
홍고추, 무는 한입 크기로 잘라주고 마늘은
편으로 썰어준다.
[단계 2] 물 1컵에 찹쌀가루를 풀어서 풀을 쑨다.
[단계 3] 물 2컵에 함초, 편마늘을 넣고 국물을 만든다.
[단계 4] 이 물로 무를 절여준다. 이때 무를 절였던 물을
버리지 말고 찹쌀 풀과 섞어 국물을 만들어
준다.
[단계 5] 만들어진 국물과 찹쌀 풀을 섞어 체에 내려
준다.
[단계 6] 모든 재료를 한데 섞어서 저염 동치미를
완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (232, 168, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (232, 57, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (232, 10, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (232, 7, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (232, 144, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (232, 96, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (232, 97, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (232, 12, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (232, 35, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (232, 146, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (232, 159, 30.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (233, '장어수육구이', 'easy', 20, '[단계 1] 장어는 생강청에 20분 정도 재워준다.
[단계 2] 생강, 양파는 아주 가늘게 채 썰어서 냉수에
담가 매운맛을 빼준다.
[단계 3] 소스 재료로 소스를 만들어준다.
[단계 4] 채 썬 양파와 생강채를 냄비에 깔고 장어를
수분 없이 쪄준다.
[단계 5] 쪄낸 장어는 접시에 올리고 양파, 생강채를
올려 소스와 함께 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (233, 237, 250.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (233, 10, 70.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (233, 13, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (233, 13, 15.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (234, '울금해초밥', 'medium', 30, '[단계 1] 쌀은 세척 후 울금물에 불려준다.
[단계 2] 두부를 으깨서 수분을 빼준다.
[단계 3] 쌈장을 맛장으로 만들어준다.
[단계 4] 건조 미역줄기는 세척해 불린다. 이때 불리고
나온 물을 이용해 밥을 한다.
[단계 5] 올리브오일로 쌀을 볶아주다 미역줄기를
넣고 밥을 한다.
[단계 6] 두부 맛장과 함께 곁들여 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (234, 121, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (234, 84, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (234, 296, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (234, 30, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (234, 10, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (234, 23, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (234, 12, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (234, 37, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (234, 32, 15.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (235, '미역줄기두부무침', 'easy', 30, '[단계 1] 두부는 물기를 꼭 짜준 후 으깬다.
[단계 2] 미역줄기는 불린 후 먹기 좋게 자른다.
[단계 3] 양념장을 만들어준다.
[단계 4] 준비된 견과류를 송송 다져준다.
[단계 5] 불린 미역줄기에 소스를 섞어 재워준다.
[단계 6] 불린 미역줄기에 두부를 넣어 섞어준다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (235, 296, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (235, 23, 70.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (235, 105, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (235, 133, 25.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (236, '주꾸미보양샐러드', 'medium', 30, '[단계 1] 더덕은 손질해 어슷하게 잘라 소금물에 살짝
담가준다.
[단계 2] 사과는 먹기 좋게 썰어서 레몬즙에 살짝
뿌려준다.
[단계 3] 주꾸미는 레몬즙을 넣어 살짝 데쳐준다.
[단계 4] 청고추, 홍고추는 씨를 제거하고 사과처럼
잘라주고. 양파도 잘라준다.
[단계 5] 소스를 만들어준다.
[단계 6] 모든 채소와 주꾸미를 섞어 소스랑 한데
버무려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (236, 113, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (236, 57, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (236, 198, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (236, 10, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (236, 96, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (236, 97, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (236, 215, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (236, 106, 15.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (237, '전복내장밥', 'medium', 30, '[단계 1] 전복은 손질해 잘라주고 전복내장과 소주를
넣어서 믹서에 간다.
[단계 2] 참기름과 마늘기름을 섞어서 불린 쌀을 볶는다.
[단계 3] 연근, 당근, 단호박은 작은 깍두기 모양으로
잘라 각각 볶아준다.
[단계 4] 전복은 작은 깍두기 모양으로 잘라서 칵테일새우,
바지락살, 다진마늘, 청주를 넣어 살짝 볶아준다.
[단계 5] 냄비에 갈아준 전복내장을 만들어준 기름에
볶아주다 쌀을 넣고 볶고, 나머지 채소를
넣어 볶는다.
[단계 6] 마지막으로 새우, 바지락을 넣고 볶아 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (237, 86, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (237, 47, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (237, 234, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (237, 6, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (237, 134, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (237, 65, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (237, 200, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (237, 12, 7.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (237, 32, 15.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (237, 297, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (237, 38, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (237, 12, 15.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (238, '카레감자전', 'medium', 30, '[단계 1] 감자는 껍질을 벗겨서 1개를 채 썰고 물에
담가둔다.
[단계 2] 감자 1개는 강판에 갈아서 즙과 건지를 따로
분리해준다.
[단계 3] 양파를 곱게 채 썰어주고 볼에 강판에 간 건지와
채 썬 감자, 채 썬 양파를 섞어 반죽을 만들어
준다.
[단계 4] 소스를 만들어준다.
[단계 5] 팬에 한입 크기로 전을 부쳐준다.
[단계 6] 루콜라를 물에 살짝 헹궈주고 전과 함께
접시에 셋팅한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (238, 8, 150.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (238, 34, 50.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (238, 120, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (238, 10, 70.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (238, 12, 30.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (239, '두부채소샐러드', 'medium', 30, '[단계 1] 두부는 먹기 좋은 크기로 잘라서 팬에 바삭
하게 구워준다.
[단계 2] 구워진 두부는 기름을 빼고 채 썰어준다.
[단계 3] 방울토마토는 작은 사각형으로 잘라주고,
치커리는 먹기좋게 잘라준다.
[단계 4] 표고버섯와 홍고추, 노란파프리카는 가늘게
채 썰어 볶아준다.
[단계 5] 소스를 만들어준다. 잘라준 토마토는 먹기
직전에 소스와 섞어준다.
[단계 6] 접시에 치커리를 깔고 볶아진 두부와 채소를
올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (239, 23, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (239, 145, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (239, 240, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (239, 97, 17.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (239, 66, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (239, 50, 40.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (240, '더덕비트물김치', 'medium', 30, '[단계 1] 물과 식초가 포함된 물에 담가서 쓴맛을
빼준다.
[단계 2] 물에 절여진 더덕은 키친타월을 이용해 물기를
완전히 빼준다.
[단계 3] 양파, 청고추, 홍고추도 어슷하게 썰어준다.
[단계 4] 비트를 편으로 썰어서 국물을 만들어준다.
[단계 5] 그릇에 더덕부터 30분 정도 담가 물을 살짝
들여준다.
[단계 6] 나머지 재료도 함께 담가 간을 배게 한 뒤 24
시간 후부터 먹을 수가 있다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (240, 198, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (240, 10, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (240, 96, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (240, 97, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (240, 76, 10.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (240, 53, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (240, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (240, 13, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (240, 76, 15.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (241, '연어허브스테이크', 'easy', 30, '[단계 1] 연어에 로즈마리를 위에 올려
마리네이드를 한다.
[단계 2] 마리네이드를 해놓은 연어에 레몬즙을
뿌린다.
[단계 3] 당근, 양파는 썰고 마늘과 토마토는
다져 준비한다.
[단계 4] 냄비에 버터를 두르고, 채소(③)를
볶다가 밀가루를 넣고 볶으면서 다시
토마토소스를 넣어 볶다가 육수와
월계수잎을 넣어 끓인다.
[단계 5] 소스가 자작 하게 끓고 있을 때, 우유를
넣고 한 소끔 끓여준다.
[단계 6] 팬에 올리브 오일을 두르고, 연어
(①)를 올려 앞뒤로 구어 접시에
담고, 토마토소스를 올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (241, 173, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (241, 80, 5.00, '마리', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (241, 88, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (241, 84, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (242, '버섯리조또', 'medium', 30, '[단계 1] 양파와 양송이, 표고버섯, 느타리버섯은
작게 썰어 준비해 놓는다.
[단계 2] 멸치와 새우, 마늘을 냄비에 담고,
물을 약 500㎖ 정도 붓고 끓여 육수를
만든다.
[단계 3] 냄비에 버터를 넣고, 양파와 버섯을
넣어 볶는다.
[단계 4] ③번의 냄비에 불린 쌀을 넣고 은근히
볶는다.
[단계 5] 볶아지는 냄비에 만들어 놓은 육수를
조금 넣는다.
[단계 6] 육수를 넣고 다시 은근히 볶으면서
뚜껑을 덮어 충분히 익힌 후, 마지막에
생크림과 소금을 넣고 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (242, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (242, 68, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (242, 145, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (242, 131, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (242, 40, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (242, 298, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (242, 48, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (242, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (242, 53, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (243, '삼색소고기만두', 'hard', 30, '[단계 1] 시금치는 끓는 물에 소금을 넣고 데쳐
찬물에 식힌 후 곱게 갈아 준비한다.
[단계 2] 당근즙, 시금치즙, 들깨가루를 각각
준비한 뒤, 밀가루와 녹말가루를
세 개로 나눠 각각의 즙을 넣어 반죽 후
숙성시킨다.
[단계 3] 호박은 채를 썰어 소금에 살짝 절여
물기를 제거하고, 부추는 송송 썰고,
숙주는 데쳐 물기를 제거하고 다지고,
두부는 면포에 물기를 꼭 짜서 준비한다.
[단계 4] 달걀은 노란자와 흰자를 나눠 각각
지단을 붙여 준비한다. 냄비에 멸치와
다시마, 건새우, 양파를 넣고 약30분
정도 끓여 체에 걸러 육수를 만들어
놓는다.
[단계 5] 소고기는 곱게 다져, 파 , 마늘, 참기름,
후춧가루를 넣어 양념을 해 놓는다.
[단계 6] 준비한 채소(③)와 고기(⑤)를 섞어
만두속을 만들고, 숙성된 밀가루
반죽(②)을 밀어 만든 만두피에 만두
속을 넣어 만두를 만든다. 준비한 육수
(④)에 삼색 만두를 넣어 끓여 담고 그
위에 달걀지단을 올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (243, 64, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (243, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (243, 5, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (243, 246, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (243, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (243, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (243, 14, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (243, 214, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (243, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (243, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (243, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (243, 1, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (243, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (243, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (243, 178, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (243, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (243, 115, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (244, '콩가루비빔밥', 'hard', 30, '[단계 1] 청포묵은 4cm 길이로 썰어 참기름과
소금에 살짝 무쳐 준비한다.
[단계 2] 달걀은 황백으로 나누어 각각 소금을
조금씩 넣어 섞어 지단을 부친다.
[단계 3] 오이는 돌려 깎아 채 썰고 당근도 오이
길이로 채 썰고 고사리는 길에 맞게
다듬고, 표고버섯도 채를 썰어 준비한다.
[단계 4] 소고기는 채를 썰어 파, 마늘, 참기름,
후춧가루를 넣어 양념한다.
[단계 5] 팬에 기름을 두르고, 준비한 곁들임
채소(③)와 다진 소고기를 재료별로
따로 볶아 준비한다.
[단계 6] 고추장에 콩가루를 섞고, 볶아진 소고기를
넣어 다시 볶아 고추장 소스를 준비하고,
쌀밥을 그릇에 담은 후 청포묵(①), 볶아
놓은 채소와 소고기(⑤)를 올리고,
마지막에 고추장소스를 올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (244, 140, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (244, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (244, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (244, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (244, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (244, 55, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (244, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (244, 261, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (244, 145, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (244, 33, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (244, 263, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (244, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (244, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (244, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (244, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (245, '인삼닭살찜', 'medium', 15, '[단계 1] 닭가슴살을 넓게 펴서 소금과
후춧가루, 정종으로 밑간을 한다.
[단계 2] 대추는 돌려깎아 채를 썰고, 인삼은
세로 방향으로 반으로 가르고, 밤은
껍질을 벗겨 납작하게 썰고, 표고와
새송이 버섯은 뜨거운 물에 담그어
불린 후 채를 썰어 준비한다.
[단계 3] 숙성된 닭가슴살(①)에 썰어놓은
재료(②)를 얹어 놓는다.
[단계 4] 닭 가슴살을 돌돌 말아 놓는다.
[단계 5] 냄비에 육수를 붓고, 육수가 끓으면
말아 놓은 닭가슴살을 넣는다.
[단계 6] 뚜껑을 덮고, 약 15분 정도 은근히
찐 뒤, 닭가슴살이 익으면 불을 끄고
먹기 좋은 크기로 썰어서 접시에 담는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (245, 19, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (245, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (245, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (245, 112, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (245, 62, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (245, 67, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (245, 166, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (245, 145, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (246, '양배추버섯말이', 'medium', 30, '[단계 1] 양배추는 깨끗이 씻어 찜기에 김이
오르면 쪄서 식혀 준비한다.
[단계 2] 느타리, 표고 ,팽이버섯, 당근, 오이는
약 5cm 길이로 채를 썰어 준비한다.
[단계 3] 소고기도 가늘게 채를 썰어 준비하고,
파, 마늘, 참기름, 설탕을 넣어 양념을
한다.
[단계 4] 팬에 준비한 채소에 소량의 소금을
넣어 먼저 볶다가 양념한 소고기를
넣고 재빠르게 볶아 식혀 준비한다.
[단계 5] 쪄 놓은 양배추를 김발 위에 올려 넣고,
볶아놓은 채소와 소고기를 넣는다.
[단계 6] 김발을 이용하여 양배추를 돌돌 말고,
미나리를 데쳐 끈으로 묶어 접시에
올리고, 간장과 맛술, 참기름을 섞은
간장소스를 만들어 담는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (246, 182, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (246, 4, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (246, 131, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (246, 145, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (246, 110, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (246, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (246, 55, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (246, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (246, 14, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (246, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (246, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (246, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (246, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (247, '단호박떡갈비', 'medium', 15, '[단계 1] 단호박은 칼로 잘라, 수저를 이용하여
호박씨를 제거한다.
[단계 2] 손질이 된 단호박은 면보를 깔고,
김이 오른 찜통에서 약 15분 정도
쪄 준비한다.
[단계 3] 다진 소고기는 파, 마늘, 양파, 참기름,
간장, 후춧가루, 매실액을 넣고 양념을
한다.
[단계 4] 3번에 양념된 소고기에 찹쌀가루를
넣고 골고루 섞는다.
[단계 5] 쪄 놓은 호박에 양념된 소고기를 넣고
모양을 잡아 준다.
[단계 6] 육수가 한 소큼 끓으면 만들어 놓은
단호박떡갈비(⑤)를 넣어 약 20분 정도
은근히 쪄서 잣을 올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (247, 214, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (247, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (247, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (247, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (247, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (247, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (247, 52, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (247, 146, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (247, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (247, 176, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (248, '허브닭스테이크', 'medium', 15, '[단계 1] 닭가슴살에 로즈마리, 후춧가루를
넣고, 15분 정도 우유에 담그어 놓는다.
[단계 2] 당근과 감자는 사각으로 깎아 양 모서리를
칼로 다시 다듬어 주사위 모양으로
둥그스럼하게 만들어 준비한다.
[단계 3] 냄비에 물이 끓으면, 브로컬리와 깎아
놓은 당근과 감자를 데쳐 준비한다.
[단계 4] 양송이는 껍질을 제거하고 모양 그대로
편으로 썰어 준비하고, 토마토와 마늘은
잘게 다져 냄비에 버터를 두르고 볶다가
케첩을 넣어준다.
[단계 5] 볶아지는 4번에 썰어 놓은 양송이와
생크림을 넣고, 다시 살짝 한 번 더
볶아준다.
[단계 6] 팬에 버터를 녹이고, 재워놓은 닭가슴살
(①)을 속이 익도록 노릇노릇 하게 익혀
접시에 담고, 만들어 놓은 감자와 당근,
브로컬리로 장식을 하고, 소스를 함께
올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (248, 19, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (248, 21, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (248, 80, 5.00, '마리', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (248, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (248, 40, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (248, 68, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (248, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (248, 48, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (248, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (248, 8, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (248, 119, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (249, '새우완자찜', 'medium', 10, '[단계 1] 준비한 새우의 반은 껍질을 벗겨
내장을 제거하고 곱게 다진다.
[단계 2] 나머지 새우는 내장을 제거하고 껍질을
벗겨, 2/3 정도 반으로 갈라 소금, 후추로
밑간을 해 놓는다.
[단계 3] 다진 새우는 소고기와 섞어, 마늘을
넣고 양념이 충분히 스며들도록 준비해
놓는다.
[단계 4] 브로컬리는 데쳐 식힌 후 다지고, 당근과
양파도 다져 소금에 살짝 절여 물기를
제거해 놓는다.
[단계 5] 양념된 재료(③)에 준비해 놓은 채소
(④)를 넣고, 녹말가루와 달걀을 풀어
골고루 섞는다.
[단계 6] 반으로 갈라 준비한 새우에 녹말가루를
살짝 뿌리고, 섞어놓은 재료(⑤)를
완자를 빚어 새우에 올려 주고, 찜기에서
약 10분 정도 쪄서 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (249, 87, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (249, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (249, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (249, 221, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (249, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (249, 119, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (249, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (249, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (249, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (249, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (249, 89, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (250, '두부된장무침', 'easy', 30, '[단계 1] 쌈채는 먹기 좋게 손으로 뜯어 놓는다.
[단계 2] 뜯어 놓은 쌈채를 물에 담그어 싱싱하게
준비해 놓는다.
[단계 3] 두부는 면보에 넣어 손으로 짜서 물기를
제거하고 준비한다.
[단계 4] 된장에 생크림을 넣어 골고루 섞어
짠 맛을 줄여준다.
[단계 5] 으깬 두부에 된장을 넣어 섞어준다.
[단계 6] 물에 담그어 놓은 채소를 체에 건져,
물기를 털어내고, 만들어 놓은 된장
소스에 넣어 무친다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (250, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (250, 30, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (250, 48, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (251, '귀리죽', 'medium', 30, '[단계 1] 귀리는 깨끗이 씻어 물에 불린다.
[단계 2] 쌀도 씻어 따로 불려 놓는다.
[단계 3] 양파와 부추는 송송 썰어 준비한다.
[단계 4] 냄비에 참기름을 넣고, 소고기를 먼저
볶는다.
[단계 5] 볶아지는 냄비에 다시 불린 귀리와
쌀을 넣어 볶아준다.
[단계 6] 충분히 귀리가 볶아지면 물을 넣고
끓이다가, 썰어 놓은 채소를 넣고, 죽이
어우러지게 끓인 뒤 달걀을 풀어 넣고
다시 저어가면 끓여주고, 죽 위에
흑임자를 올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (251, 272, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (251, 121, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (251, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (251, 5, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (251, 14, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (251, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (251, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (251, 132, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (252, '탕평채', 'medium', 30, '[단계 1] 청포묵을 약 6~7cm 길이로 썰어
맛소금과 참기름에 살짝 버무려 놓는다.
[단계 2] 소고기는 채를 썰어 간장과 설탕,
참기름에 볶아놓고 미나리는 데쳐
찬물에 식혀 5~6cm 길이로 썰고,
숙주는 머리와 꼬리를 떼어 내고,
뜨거운 물에 데쳐 식혀 준비한다.
[단계 3] 홍파프리카는 씨를 제거하고 약 6cm
길이로 썰어 놓는다.
[단계 4] 달걀은 황백으로 나눠 각각 지단을
부쳐 채를 썰어 놓는다.
[단계 5] 김은 살짝 구어 봉투에 넣고 부수어
김가루를 만들어 놓는다.
[단계 6] 저염간장에 설탕과 식초를 넣어 골고루
섞어 탕평채 양념장을 만들고, 접시에
준비한 청포묵을 담고, 그 위에 채소와
고기를 올리고, 맨 위에 달걀지단과
김가루를 올린 후 양념장을 끼얹어 완성
한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (252, 140, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (252, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (252, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (252, 14, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (252, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (252, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (252, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (252, 4, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (252, 246, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (252, 183, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (252, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (252, 24, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (252, 39, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (253, '겨자소스를 곁들인 새우롤과 전복샐러드', 'medium', 30, '[단계 1] 새우는 껍질을 제거하고 포를 뜬 뒤 삶아 익힌다.
[단계 2] 전복은 수저로 떼어내 소금으로 씻고
달군 팬에 굽는다.
[단계 3] 연어는 포를 뜬다.
[단계 4] 겨자가루에 30℃ 정도의 물을 넣고
골고루 섞어 발효시키고, 설탕, 식초를
넣고 겨자소스를 만든다.
[단계 5] 고추장에 요구르트를 넣고
고추장소스를 만든다
[단계 6] 접시에 익힌 새우, 전복, 연어를 담은 뒤
겨자소스와 고추장소스를 올리고
어린잎으로 장식한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (253, 87, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (253, 86, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (253, 173, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (253, 75, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (253, 93, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (253, 299, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (253, 29, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (253, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (253, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (253, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (254, '속채운대저토마토백김치', 'medium', 30, '[단계 1] 토마토는 윗부분을 자르고 속을
파낸다.
[단계 2] 오이는 소금에 깨끗이 씻는다.
[단계 3] 소금을 팬에 볶은 후 배추를 절인다.
[단계 4] 절인 배추에 오이와 무를 넣고
돌돌만다.
[단계 5] ?를 속을 파낸 토마토 안에 넣는다.
[단계 6] ?번을 통에 담아 소금 국물을 붓고
양파와 마늘 생강을 넣는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (254, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (254, 300, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (254, 55, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (254, 7, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (254, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (254, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (254, 13, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (254, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (255, '룰룰랄라', 'medium', 30, '[단계 1] 양상추, 부추를 데친다.
[단계 2] 양송이버섯은 얇게 슬라이스하고 팬에
기름을 살짝 두르고 굽는다.
[단계 3] 전복은 수저로 떼어 소금으로 씻고
일정한 크기로 썰어 팬에 굽는다.
[단계 4] 닭고기는 일정한 크기로 썬 뒤 삶고,
소고기도 일정한 크기로 썰어 양념 한
뒤 볶는다.
[단계 5] 토마토, 양파, 당근은 잘게 썰고, 쌀은
깨끗이 씻어 불려 야채를 넣고 밥을
짓는다.
[단계 6] 쪄낸 양배추에 볶은 고기, 삶은 닭고기,
구운 전복, 밥을 넣고 돌돌 말아 부추로
묶어 접시에 담고, 한쪽에 구운 버섯을
담는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (255, 3, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (255, 14, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (255, 5, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (255, 20, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (255, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (255, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (255, 86, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (255, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (255, 195, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (255, 121, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (255, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (256, '매실소스를 곁들인 돼지고기만두', 'medium', 30, '[단계 1] 돼지고기 안심을 요리망치로 얇게
두드려 펴고 후춧가루로 밑간한다.
[단계 2] 목이버섯은 불려 잘게 썰고 양파와
마늘은 입자있게 다진다
[단계 3] 당면은 따뜻한 물에 충분히 불려 썰고
애호박, 당근, 표고버섯은 잘게 썬다.
[단계 4] 팬에 기름을 두르고 다진 양파와
마늘을 볶는다.
[단계 5] 4번에 매실액과 잘게 자른 애호박,
당근, 표고버섯, 목이버섯, 당면을
넣고 볶아 만두소를 만든다.
[단계 6] 돼지고기는 넓게 펴서 만두소를 넣고
주머니를 만들어 실로 묶고 토마토와
함께 오븐에 굽는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (256, 137, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (256, 197, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (256, 279, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (256, 64, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (256, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (256, 145, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (256, 249, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (256, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (256, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (256, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (256, 52, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (256, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (257, '머스터드튤립치킨', 'medium', 30, '[단계 1] 닭날개에 칼집을 넣고 뒤집어
튤립모양의 봉을 만든다.
[단계 2] 닭날개에 소금, 후춧가루로 밑간을
한다.
[단계 3] 파슬리는 곱게 다져 가루를 만든다
[단계 4] 양파, 마늘은 즙을 내서 튀김가루,
파슬리 가루와 함께 골고루 섞어
튀김반죽을 만든다.
[단계 5] 어린잎은 찬물에 담궈 건져 놓는다.
[단계 6] 튀긴 닭날개의 기름을 빼고 레몬과
어린잎으로 장식한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (257, 93, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (257, 77, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (257, 301, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (257, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (257, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (257, 88, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (257, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (257, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (257, 38, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (257, 33, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (258, '미니함박스테이크', 'hard', 30, '[단계 1] 대추는 돌려 깎아 씨를 제거하고 곱게
다지고 팬에 볶는다.
[단계 2] 소고기, 돼지고기, 양파 및 마늘을
다진다.
[단계 3] 배춧잎, 파프리카, 새송이버섯, 당근은
입자있게 다진다.
[단계 4] 다진 소고기, 돼지고기, 양파, 마늘,
대추, 배춧잎, 파프리카, 새송이버섯,
당근 및 양파에 소금, 후춧가루를 섞어
잘 치대어 스테이크 모양으로 만든다
[단계 5] 팬에 기름을 살짝 두르고, 스테이크
고기를 충분히 익혀 접시에 담고,
단호박은 껍질을 벗겨 팬에 구워
담는다.
[단계 6] 배는 갈아 저염간장과 설탕을 넣고 잘
저어 소스를 만들고 익혀 놓은
스테이크에 올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (258, 14, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (258, 16, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (258, 62, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (258, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (258, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (258, 82, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (258, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (258, 300, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (258, 65, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (258, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (258, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (258, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (258, 63, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (258, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (258, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (259, '봄옷을 입은 닭', 'medium', 30, '[단계 1] 닭가슴살에 소금, 후춧가루로
밑간하고 랩으로 말아 50℃ 정도의
물에서 천천히 익힌다.
[단계 2] 달걀은 황백 지단을 만들어 채를 썰고,
표고버섯, 당근, 오이, 파프리카 및
고구마도 채를 썰어 팬에 볶는다.
[단계 3] 미나리는 끓는 물에 소금을 넣고 살짝
데친 뒤 찬물에 헹군다
[단계 4] 취나물은 끓는 물에 소금을 넣고 살짝
데친 뒤 찬물에 헹구어 넓게 펴 놓는다.
[단계 5] 누룽지는 손으로 잘라 기름에 튀긴다.
[단계 6] 취나물에 익힌 닭가슴살과 볶은 야채를
돌돌 말아 미나리를 감고 먹기 좋은
크기로 썰어 접시에 담은 뒤 튀긴
누룽지를 올린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (259, 194, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (259, 138, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (259, 286, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (259, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (259, 64, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (259, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (259, 145, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (259, 55, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (259, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (259, 9, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (259, 181, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (259, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (259, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (259, 4, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (260, '삼계치킨롤', 'medium', 20, '[단계 1] 닭은 살을 발라 소금, 후춧가루로
밑간을 하고 닭뼈는 삶아 육수를
만든다.
[단계 2] 인삼은 뇌두를 제거하고 깨끗이 씻어
채 썰고, 대추도 씨를 제거 한 후 채
썬다.
[단계 3] 양파, 대파, 당근은 채썰고, 찹쌀은
깨끗이 씻어 충분히 불린 뒤 함께
볶는다.
[단계 4] 충분히 볶아지면 육수를 자작하게 넣고
익힌다.
[단계 5] 랩에 닭살을 놓고 찹쌀과 인삼채,
대추채를 올려 돌돌 만다.
[단계 6] 마늘, 생강, 월계수잎 및 통후추를 넣고
끓인 물에 김이 올라오면 말아놓은
닭살을 찜통에서 20분 정도 찌고 한 김
식으면 썰어 접시에 담는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (260, 20, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (260, 67, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (260, 62, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (260, 200, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (260, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (260, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (260, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (260, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (260, 13, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (260, 274, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (260, 38, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (261, '아삭', 'medium', 30, '[단계 1] 아스파라거스는 깨끗이 씻어 5cm
길이로 썬다.
[단계 2] 당근을 아스파라거스 크기로 썬다.
[단계 3] 무도 아스파라거스 크기로 썬다.
[단계 4] 식초, 설탕을 동량으로 섞는다.
[단계 5] 식초 설탕물이 끓으면 통에 뜨거울 때
붓고, 떠오르지 않도록 눌러 담는다.
[단계 6] 약 7일 정도 숙성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (261, 155, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (261, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (261, 7, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (261, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (261, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (261, 274, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (261, 38, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (261, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (262, '연어비트 절임샐러드', 'medium', 30, '[단계 1] 비트는 껍질을 벗겨 채 썬다.
[단계 2] 양파를 얇게 채 썬 후 물에 담근 뒤 건져
물기를 뺀다.
[단계 3] 비트와 오렌지에 절여진 연어를 얇게
슬라이스한다.
[단계 4] 식용꽃과 새싹은 물에 담궈 싱싱함을
살리고 건져 물기를 뺀다.
[단계 5] 새싹과 양파를 접시에 깔고 그 위에
연어를 올린다.
[단계 6] 올리브오일, 식초, 소금 및 설탕을 잘
섞어서 만든 드레싱을 올리고
식용꽃으로 장식한다');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (262, 173, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (262, 73, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (262, 81, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (262, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (262, 193, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (262, 90, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (262, 84, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (262, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (262, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (262, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (263, '깻잎단호박튀김', 'medium', 30, '[단계 1] 단호박을 반 갈라 씨를 빼고 8등분 한다.
[단계 2] 김이 오른 찜통에 단호박을 찐다.
[단계 3] 찐 단호박을 껍질을 벗겨 으깨고 호두는 잘게 다진다.
[단계 4] 으깬 단호박에 다진 호두와 꿀 넣고 섞는다.
[단계 5] 깻잎 뒷면에 4 를 한 숟가락 올리고 양끝을 오무려 돌돌 만다.
[단계 6] 찹쌀가루에 물 한 큰술을 섞은 튀김옷을 골고루 입혀 바삭하게 튀겨낸다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (263, 2, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (263, 65, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (263, 117, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (263, 154, 3.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (263, 146, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (263, 53, 15.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (263, 33, 4.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (264, '수박껍질풋고추볶음', 'easy', 30, '[단계 1] 수박껍질의 녹색부분을 제거하고 얄팍하게 채 썬다.
[단계 2] 채 썬 수박껍질에 소금을 뿌려 살짝 절여 물기를 짠다.
[단계 3] 고추는 길이로 2등분하여 씨를 뺀다.
[단계 4] 씨를 뺀 고추는 굵게 채 썬다.
[단계 5] 팬에 기름을 두르고 수박껍질과 고추를 넣어 살짝 볶는다.
[단계 6] 소금으로 간을 맞추고 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (264, 280, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (264, 97, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (264, 33, 4.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (264, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (265, '근대쌈밥과 멸치견과류쌈장', 'hard', 30, '[단계 1] 물 2/3컵에 국멸치와 건다시마를 넣고 끓여 국물을 내면서 이 열로 근대를 삼발이에 놓고 찐다.
[단계 2] 국물 우린 다시마를 잘게 썰어 쌀, 현미, 보리쌀과 함께 잡곡밥을 짓는다.
[단계 3] 잔멸치는 기름을 두르지 않고 팬에 살짝 볶아 다지고 견과류도 칼로 다진다.
[단계 4] 양파와 파를 다진다.
[단계 5] 고추장, 된장, 견과류, 양파, 다진 마늘, 매실액, 파, 멸치다시마국물을 섞어 멸치견과류쌈장을 만든다.
[단계 6] 근대위에 밥을 약 30g(1숟가락)정도 올리고 멸치견과류쌈장 5g 가량 넣어 근대잎으로 싼다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (265, 121, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (265, 254, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (265, 226, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (265, 53, 400.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (265, 350, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (265, 71, 2.50, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (265, 53, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (265, 10, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (265, 30, 2.50, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (265, 10, 2.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (265, 29, 2.50, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (265, 350, 2.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (265, 117, 2.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (265, 176, 2.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (265, 83, 2.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (265, 12, 2.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (265, 52, 2.50, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (266, '장어조림', 'medium', 30, '[단계 1] 장어는 한입 크기로 잘라서 흰 후추와 청주를
뿌려 재워준다.
[단계 2] 깻잎은 채를 썰어서 냉수에 담가 물기를
빼준다.
[단계 3] 생강, 마늘은 편으로 썰어주고 양파, 청고추,
홍고추는 어슷하게 잘라준다.
[단계 4] 참기름을 뺀 양념장 재료에 편마늘과 다진대파를
넣어서 양념장을 만들어준다.
[단계 5] 만들어진 양념장 1/2에 장어를 넣고 졸여준다.
[단계 6] 나머지 양념장에 준비된 채소를 넣어 볶아주다
졸인 장어를 넣어 졸여주고 깻잎을 깔고
완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (266, 237, 150.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (266, 2, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (266, 96, 17.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (266, 97, 17.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (266, 10, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (266, 13, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (266, 39, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (266, 12, 20.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (266, 11, 10.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (267, '미역전복죽', 'medium', 30, '[단계 1] 전복은 내장과 분리해 손질한다.
[단계 2] 내장은 칼로 다진다.
[단계 3] 당근과 전복살은 송송 잘라준다.
[단계 4] 전복 껍질과 다시마를 넣어 물 300g에 국물을
만들어준다.
[단계 5] 만들어진 국물에 미역을 넣고 끓여준다.
[단계 6] 다진 내장과 불린 찹쌀을 참기름에 볶다가
끓인 미역국을 넣고 더 끓여 죽을 만든다.
다진 당근, 흑임자로 마무리 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (267, 86, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (267, 200, 70.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (267, 6, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (267, 71, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (267, 189, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (267, 32, 15.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (268, '불고기미니볼', 'medium', 30, '[단계 1] 단호박, 감자는 가늘게 채 썰어 기름에 바싹
튀겨준다
[단계 2] 불고기에 다진 양파를 섞어 양념장에 버무려
준다.
[단계 3] 양념된 불고기는 완자로 만들어 밀가루, 계란,
빵가루 순으로 묻혀서 기름에 튀겨준다.
[단계 4] 소스를 만들어준다
[단계 5] 튀겨진 소고기 볼을 기름에 한 번 더 튀겨준다.
[단계 6] 접시에 으깬 감자와 불고기볼 그리고 튀김을
올리고 소스와 바질을 올려 완성한다');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (268, 221, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (268, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (268, 22, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (268, 34, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (268, 33, 200.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (268, 65, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (268, 8, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (268, 105, 1.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (269, '치자연근물김치', 'medium', 30, '[단계 1] 당근은 모양틀로 잘라서 편으로 썰어준다.
[단계 2] 연 근 은 껍 질 을 벗 겨 서 식 초 물 에 살 짝
담가준다.
[단계 3] 청고추, 홍고추, 미나리는 먹기 좋게 썰어준다.
[단계 4] 마늘은 편으로 썰어서 물 400g에 끓여주다
불을 끄고 치자가루를 넣어 국물을 만들어준다.
[단계 5] 국물에 연근을 담가 색을 들인다.
[단계 6] 여기에 생강청, 식초, 설탕, 볶은소금과 준비된
채소를 넣어 치자 연근물김치를 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (269, 134, 200.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (269, 6, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (269, 4, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (269, 96, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (269, 97, 18.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (269, 12, 12.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (269, 74, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (269, 13, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (269, 76, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (269, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (269, 36, 7.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (270, '훈제연어롤', 'medium', 30, '[단계 1] 훈제연어를 살포시 포를 뜬다.
[단계 2] 양파와 피클은 곱게 다져 준비한다.
[단계 3] 포를 떠 놓은 훈제 연어에 살짝 후춧
가루를 뿌리고, 양파와 피클을 넣어
말아준다.
[단계 4] 오렌지는 껍질과 과육을 분리해서 썰어
준비한다.
[단계 5] 냄비에 오렌지주스와 설탕과 레몬,
분리시킨 오렌지를 넣고 끓여준다.
[단계 6] 끓고 있는 오렌지소스에 물녹말과 스위
트칠리소스를 넣고 한 소큼만 끓인 후
말아 놓은 훈제 연어롤을 접시에 담고,
어린잎을 한쪽에 놓아주고, 오렌지
소스를 함께 올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (270, 173, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (270, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (270, 209, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (270, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (270, 53, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (270, 155, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (270, 93, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (271, '크림닭', 'medium', 20, '[단계 1] 우유에 닭가슴살을 넣어 약20분 정도
재워 놓는다.
[단계 2] 양송이버섯은 껍질을 벗기고, 양파와
캐슈넛과 각각 다져 준비한다.
[단계 3] 우유에 재워놓은 닭가슴살은 소금,
후춧가루를 뿌려 밀가루와 달걀물,
빵가루 순서로 입혀 기름에 튀기듯이
익혀 기름을 빼놓는다.
[단계 4] 팬에 버터를 넣고, 버터가 녹으면,
양송이와 양파를 넣고 볶는다.
[단계 5] 볶아지는 채소에 크림소스를 넣어
은근히 볶는다.
[단계 6] 소스가 볶아지면, 마지막에 다져 놓은
캐슈넛과 생크림, 모짜렐라치즈를
넣고 한 번 더 익힌 후, 접시에 어린잎과,
닭가슴살을 놓고, 크림소스를 곁들여
완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (271, 19, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (271, 21, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (271, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (271, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (271, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (271, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (271, 129, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (271, 125, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (271, 302, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (271, 48, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (271, 247, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (271, 303, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (271, 103, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (272, '등심채소롤', 'medium', 3, '[단계 1] 등심은 넓게 펴서 소금과 후춧가루를
뿌려 준비한다.
[단계 2] 파프리카와 파인애플은 속을 제거하고
약 7cm 길이로 썰어놓는다.
[단계 3] 시금치는 끓는 물에 데쳐 찬물에 헹구어
준비한다.
[단계 4] 밑간을 해 놓은 등심에 준비한 파프리카와
시금치 파인애플을 넣는다.
[단계 5] 채소와 파인애플을 넣은 등심에 치즈를
넣고 돌돌말아 밀가루, 달걀물, 빵가루
순서로 입혀 튀김기름 170~180℃에서
약 3분 정도 튀겨 기름을 빼 놓는다.
[단계 6] 냄비에 칠리소소와 물, 설탕을 넣고
바글바글 끓이다가 물녹말을 넣고
한 번 더 끓인 후, 튀겨놓은 등심채소
롤에 함께 뿌려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (272, 224, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (272, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (272, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (272, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (272, 1, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (272, 199, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (272, 208, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (272, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (272, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (272, 129, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (272, 125, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (273, '미니밥버거', 'medium', 30, '[단계 1] 찹쌀과 현미는 깨끗이 씻어 30분 이상
충분히 불려 밥을 지어, 둥글둥글하게
패티를 만들어 놓는다.
[단계 2] 마늘과 양파는 곱게 다져 볶아 준비
한다.
[단계 3] 다진고기에 볶은 양파와 마늘, 빵가루,
생크림, 으깬두부, 소금, 후춧가루를
넣어 골고루 섞는다.
[단계 4] 섞어진 소고기를 둥글게 패티를 만들어
놓는다.
[단계 5] 토마토는 편으로 썰어 준비한다.
[단계 6] 팬에 올리브 오일과 버터를 넣고 팬이
따끈하게 달궈지면, 밥패티를 먼저
굽고, 소고기 패티를 구운 후, 밥패티에
마요네즈를 살짝 바르고, 치즈와
토마토를 올리고, 구운 소고기패티를
올려 다시 밥패티를 덮어 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (273, 121, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (273, 188, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (273, 84, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (273, 40, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (273, 221, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (273, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (273, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (273, 129, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (273, 48, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (273, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (273, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (273, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (274, '파프리카볶음밥', 'hard', 30, '[단계 1] 당근, 양파, 호박, 버섯은 입자있게
다지고, 파인애플은 작은 깍뚝썰기로
썰어 준비한다.
[단계 2] 닭고기살은 작게 썰어 팬에 저염간장과
양파, 다진마늘, 올리고당을 넣어
볶으면서 졸인다.
[단계 3] 팬에 버터를 녹인 후 준비한 밥을
넣고 볶는다.
[단계 4] 볶은밥(③)에 썰어놓은 채소(①)를
넣고, 다시 볶아준다.
[단계 5] 밥과 채소가 볶아지면, 닭고기살(②)을
넣고, 토마토 페스트와 토마토를
다져넣고 볶는다.
[단계 6] 파프리카의 속을 파내고, 그 안에
볶아진 밥(⑤)을 넣고, 달걀물을
씌우고 모짜렐라치즈를 뿌려 치즈가
녹을 때까지 팬에 뚜껑을 덮어
약불에서 익힌 후 파슬리가루를
올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (274, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (274, 145, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (274, 195, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (274, 199, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (274, 40, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (274, 164, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (274, 124, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (274, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (274, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (274, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (274, 98, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (274, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (274, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (274, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (274, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (274, 247, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (274, 103, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (275, '삼겹살부추찜', 'hard', 50, '[단계 1] 보쌈용 삼겹살을 깨끗이 씻어 생강채와
양파채, 월계수잎, 통후추와 소주를
넣고 약 1시간 정도 숙성을 시킨다.
[단계 2] 찜통에 물과 된장, 편마늘을 넣고 숙성된
삼겹살을 올려 약 50분 정도 찜을 하다가
부추를 올려 1분 정도 더 찜을 한다.
[단계 3] 부추는 약 6cm 길이로 썰어 준비한다.
[단계 4] 홍고추는 반으로 갈라 씨를 제거하고,
채를 썰어 놓는다.
[단계 5] 냄비에 간장과 물, 설탕, 올리고당,
통후추, 생강을 넣고 은근히 끓인다.
[단계 6] 소스가 은근히 끓고 있을 때 채로 생강과
통후추를 걸러내고, 물녹말을 풀어 한
소큼 더 끓인 후, 찜통에서 쪄 나온 부추와
삼겹살을 썰어 접시에 담고, 그 위에
소스와 홍고추를 올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (275, 16, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (275, 13, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (275, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (275, 274, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (275, 38, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (275, 297, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (275, 30, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (275, 5, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (275, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (275, 97, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (275, 98, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (275, 38, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (275, 13, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (275, 53, 10.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (275, 192, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (276, '전복죽', 'medium', 30, '[단계 1] 깨끗이 씻은 쌀에 물을 2배 정도 넣고
약 30분 정도 충분히 불려 준비한다.
[단계 2] 전복은 수저를 이용하여 껍질에서
떼어내어 내장을 분리해 놓는다.
[단계 3] 내장을 제거한 전복은 깨끗이 씻어,
썰어 놓는다.
[단계 4] 새우살은 꼬리를 제거하고 입자있게
썰어 놓는다.
[단계 5] 양송이는 껍질을 벗겨 입자있게
썰고, 당근도 양송이 크기에 맞게
썰어 놓는다.
[단계 6] 냄비에 참기름을 두르고, 전복을 은근히
볶다가, 다시 불린 쌀을 넣고 볶은 뒤
물을 넣고 약 20분 정도 끓인다. 죽이
끓으면 새우와 양송이, 당근을 넣고
은근히 저어가면서 다시 20분 정도
더 끓여, 죽이 어우러지면 잣을 올리고
저염간장을 함께 제공한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (276, 121, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (276, 86, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (276, 207, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (276, 68, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (276, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (276, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (276, 176, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (277, '오징어토마토초무침', 'medium', 30, '[단계 1] 오징어는 껍질을 벗겨 안 쪽으로 칼집을
넣어 무늬를 만들어 놓는다.
[단계 2] 끓는 물에 소금을 넣고 미나리를 데쳐
찬물에 헹구고, 바로 오징어를 데쳐
준비한다.
[단계 3] 준비한 토마토 반은 굵게 다지고, 반은
썰어서 접시에 돌려 담아놓는다.
[단계 4] 다진 토마토와 고추장, 식초, 생강즙,
올리고당을 골고루 섞어 양념장을
만든다.
[단계 5] 당근, 양파, 대파, 청 ․ 홍고추를 썰어
놓는다.
[단계 6] 만들어 놓은 양념장에 데친 오징어와
채소를 넣어 무친 후 토마토를 돌려
담은 접시에 담아 통깨를 올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (277, 94, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (277, 4, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (277, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (277, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (277, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (277, 96, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (277, 97, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (277, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (277, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (277, 39, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (277, 13, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (277, 98, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (278, '과일갈비찜', 'hard', 30, '[단계 1] 돼지갈비는 물에 담그어 핏물을 충분히
제거한다.
[단계 2] 홍고추는 어슷썰어 냄비에 볶는다.
[단계 3] 핏물을 제거한 돼지갈비를 홍고추와
함께 넣어 볶아준다.
[단계 4] 배는 강판에 갈고, 파, 마늘, 생강은
다진 뒤 간장과 올리고당, 설탕,
후춧가루, 소주와 함께 넣고 골고루
섞어서 양념장을 만든다.
[단계 5] 사과, 대추, 밤, 오이, 양파, 당근, 무는
사각 깍둑 썰기로 준비한다.
[단계 6] 볶아진 갈비(③)에 양념장(④)과 물을
넣고 은근히 갈비를 졸이다가, 국물이
자작하게 남으면, 손질한 과일과 채소
등(⑤)을 참기름과 함께 넣고, 한 번 더
졸여 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (278, 97, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (278, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (278, 39, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (278, 63, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (278, 57, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (278, 62, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (278, 166, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (278, 55, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (278, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (278, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (278, 7, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (278, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (278, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (278, 13, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (278, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (278, 297, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (279, '토마토소스닭갈비', 'medium', 30, '[단계 1] 닭은 먹기 좋은 크기로 잘라 준비한다.
[단계 2] 토막 낸 닭 에 생강즙과 소주를 넣어
숙성한다.
[단계 3] 양파, 당근은 얇게 썰고, 양배추는 깍뚝
썰고, 깻잎은 4등분하여 잘라놓는다.
[단계 4] 작은 깍둑썰기로 자른 토마토와
고구마에 토마토소스, 마늘, 고춧가루,
고추장, 매실청을 넣어 골고루 섞는다.
[단계 5] 닭을 먼저 냄비에 볶는다.
[단계 6] 볶아지는 닭에 만들어 놓은 소스를
넣고, 볶다가 준비한 채소를 넣어 한 번
더 볶아 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (279, 19, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (279, 13, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (279, 297, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (279, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (279, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (279, 2, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (279, 182, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (279, 9, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (279, 37, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (279, 29, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (279, 159, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (280, '골뱅이과일무침', 'hard', 25, '[단계 1] 골뱅이는 뜨거운 물에 살짝 데친 뒤
물기를 빼고 4등분으로 썬다.
[단계 2] 양파와 깻잎은 채썰고, 당근은 양파랑
같은 길이로 얇게 저미고, 고추와
대파는 어슷썰고, 양배추는 1~2cm
두께로 썬다.
[단계 3] 사과와 배는 채를 썰고 황도와 바나나,
파인애플은 작게 깍둑썰기 한다.
[단계 4] 고추장에 고춧가루, 다진 마늘, 케첩,
설탕, 식초, 매실액, 생강즙, 참기름을
골고루 섞어 양념장을 만든다.
[단계 5] 양념장에 준비한 골뱅이(①), 채소(②),
과일(③)을 넣고 고루 섞은 뒤 통깨를
얹어 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (280, 39, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (280, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (280, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (280, 182, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (280, 2, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (280, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (280, 97, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (280, 96, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (280, 63, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (280, 57, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (280, 175, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (280, 199, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (280, 276, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (280, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (280, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (280, 52, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (280, 13, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (280, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (281, '두유 마 떡갈비', 'hard', 30, '[단계 1] 표고버섯은 뜨거운 물에 약 1시간 정도
불려 다지듯이 썬다.
[단계 2] 마는 껍질을 벗겨 썰어서 갈아주고,
연근은 껍질을 벗겨 팬에 굽는다.
[단계 3] 애호박은 반달모양으로 썰어 끓는 물에
감자와 함께 데친다.
[단계 4] 소고기와 돼지고기는 곱게 다져
저염간장, 설탕, 다진마늘 및 간 마를
넣고 골고루 치대어 떡갈비를 만들고,
팬에 기름을 두르고 앞뒤로 굽는다
[단계 5] 깻잎은 저염간장에 살짝 절인다
[단계 6] 구워 놓은 떡갈비와 깻잎, 표고버섯,
연근, 애호박 및 감자를 접시에 담고 간
마와 두유를 섞어 자작하게 끓여 만든
소스를 그 밑에 담아 완성한다');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (281, 14, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (281, 16, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (281, 222, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (281, 304, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (281, 254, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (281, 271, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (281, 189, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (281, 64, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (281, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (281, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (281, 195, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (281, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (281, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (281, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (281, 1, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (281, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (281, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (281, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (281, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (282, '떡갈비와 미니잡곡밥', 'hard', 30, '[단계 1] 떡볶이떡은 잘게 다진다.
[단계 2] 현미, 흑미, 백미 및 조는 깨끗이 씻어
물에 불린다.
[단계 3] 소고기와 돼지고기에 소금, 다진 마늘,
설탕 및 참기름을 넣고 양념한다
[단계 4] 당근과 호박은 잘게 다진다
[단계 5] 달걀은 황백으로 나눠 지단을 부친다.
[단계 6] 불린 쌀로 밥을 짓고, 밥과 3번과 4번을
섞어 미니 떡갈비를 만들어 팬에
기름을 두르고 익힌 뒤 황백지단으로
장식한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (282, 14, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (282, 16, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (282, 222, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (282, 304, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (282, 254, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (282, 271, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (282, 189, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (282, 64, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (282, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (282, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (282, 195, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (282, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (282, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (282, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (282, 1, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (282, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (282, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (282, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (282, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (283, '리코타소스 연어샐러드', 'medium', 30, '[단계 1] 연어는 깍둑 썰기한다.
[단계 2] 냄비에 우유를 넣고 은근히 끓이다가
레몬즙과 소금을 넣고 뭉글거리게
한다.
[단계 3] 뭉글거리는 우유를 체에 걸러
리코타치즈를 만든다
[단계 4] 토마토, 아보카도, 오이 및 파인애플은
주사위 모양으로 썬다.
[단계 5] 어린잎은 찬물에 담궈 싱싱해지면
물에서 건져 놓는다
[단계 6] 오렌지와 파인애플은 즙을 만들어
리코타치즈와 섞어 소스를 만들고,
연어와 야채를 담은 뒤 그 위에 소스를
올린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (283, 173, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (283, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (283, 21, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (283, 88, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (283, 199, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (283, 203, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (283, 55, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (283, 81, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (283, 93, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (283, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (284, '망고자몽드레싱 해산물전체', 'medium', 30, '[단계 1] 감자는 삶아 껍질을 벗긴다
[단계 2] 새우와 관자는 끓는 물에 레몬즙을
넣고 삶아 건져 껍질을 벗긴다.
[단계 3] 오이, 당근, 단호박은 껍질을 벗겨
슬라이스 썬다.
[단계 4] 데친 관자는 토치로 한 번 더 익혀 썬다
[단계 5] 믹서에 간 망고와 레몬에 설탕, 소금을
약간 넣고 소스를 만든다.
[단계 6] 토마토는 먹기 좋은 크기로 자르고,
접시에 준비한 야채와 해산물을 담고,
소스는 먹기 직전에 올린다');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (284, 257, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (284, 87, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (284, 50, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (284, 48, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (284, 77, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (284, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (284, 55, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (284, 65, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (284, 149, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (284, 8, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (284, 239, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (284, 88, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (284, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (284, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (285, '방울토마토를 곁들인 너비아니구이와 쌈밥', 'hard', 30, '[단계 1] 감자는 삶아 껍질을 벗긴다.
[단계 2] 아스파라거스는 2등분 하고,
방울토마토와 함께 끓는 물에 살짝
데친다.
[단계 3] 닭고기에 소금, 후추, 배즙을 넣고 숙성
시킨다.
[단계 4] 저염간장에 다진 마늘, 설탕, 후춧가루,
참기름을 넣고 양념장을 만들어 3번에
묻혀 굽는다
[단계 5] 흑미는 충분히 불려 밥을 짓는다
[단계 6] 깻잎은 간장, 식초, 설탕에 절여
흑미밥과 너비아니 구이를 넣고 돌돌
말아 쌈밥을 만든다');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (285, 14, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (285, 304, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (285, 155, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (285, 8, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (285, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (285, 57, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (285, 195, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (285, 50, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (285, 2, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (285, 63, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (285, 149, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (285, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (285, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (285, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (285, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (286, '배추관자카나페', 'medium', 30, '[단계 1] 배춧잎을 물에 담궈 싱싱하게 한다
[단계 2] 레몬은 슬라이스로 썬다.
[단계 3] 레몬, 고추장, 설탕 및 매실액을 넣고
양념장을 만든다.
[단계 4] 파프리카는 작은 사각형 모양으로
자른다.
[단계 5] 관자는 끓는 물에 소금을 넣고 데친다.
[단계 6] 관자는 프라이팬에 구운 뒤 잘게 썰어
파프리카와 섞어 배춧잎에 올리고, 그
위에 파슬리와 만들어 놓은 양념장을
먹기 직전에 올린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (286, 257, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (286, 300, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (286, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (286, 88, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (286, 29, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (286, 52, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (286, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (286, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (286, 77, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (287, '복분자소스를 곁들인 닭테린', 'medium', 30, '[단계 1] 닭가슴살은 곱게 다진다
[단계 2] 시금치와 브로콜리는 끓는 물에 데쳐
찬물에 헹구고 토마토와 함께 입자있게
다져 다진 닭가슴살과 섞는다.
[단계 3] 닭가슴살에 치즈를 섞는다.
[단계 4] 고구마는 찜통에 넣고 쪄서 체에
내린다.
[단계 5] 냄비에 물, 복분자, 고구마를 넣고
끓인다.
[단계 6] 5번에 전분을 넣고 걸죽하게 소스를
완성하고, 아스파라거스와 버섯은
팬에 구워 쪄낸 닭테린 옆에 담은 뒤
소스를 올린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (287, 194, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (287, 278, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (287, 1, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (287, 149, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (287, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (287, 9, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (287, 155, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (287, 82, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (287, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (287, 208, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (287, 163, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (287, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (287, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (288, '관자버터구이', 'medium', 30, '[단계 1] 양파, 오이피클, 고추피클은 입자있게
다진다.
[단계 2] 다진 양파와 피클에 마요네즈를 넣고
골고루 섞어 소스를 만든다.
[단계 3] 마요네즈소스에 꿀을 넣고 섞는다
[단계 4] 관자의 앞뒤에 버터를 바른다.
[단계 5] 관자에는 버터를 발라 팬에 구워
접시에 담는다.
[단계 6] 비트, 양파, 데친 시금치를 넣고 갈아서
소스를 만들고 관자에 마요네즈소스와
시금치소스를 올린다');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (288, 257, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (288, 1, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (288, 73, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (288, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (288, 305, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (288, 209, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (288, 170, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (288, 154, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (288, 40, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (289, '세 가지 미니 에피타이저', 'medium', 30, '[단계 1] 훈제 연어는 슬라이스로 썰어서
굽는다.
[단계 2] 사과는 채썬다.
[단계 3] 판젤라티은 찬물에 담궈 불린 후
중탕해서 녹인다.
[단계 4] 석류주스를 끓인 뒤 중탕한 젤라틴을
넣고 굳혀 접시에 담는다.
[단계 5] 애호박은 껍질을 벗겨 끓는 물에
소금을 넣고 살짝 데치고, 새우는 살짝
데쳐 껍질을 벗겨 포를 뜬 뒤 다시
굽는다.
[단계 6] 석류주스 젤리가 담긴 접시에 새우와
애호박을 담고 소스를 올린 뒤 연어와
사과, 호박을 올려 담는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (289, 250, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (289, 197, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (289, 87, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (289, 64, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (289, 57, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (289, 81, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (289, 88, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (290, '미숫가루 부추전', 'medium', 30, '[단계 1] 오징어는 내장을 제거하고 깨끗하고 씻어낸다.
[단계 2] 부추, 감자, 당근, 양파는 2cm 가량으로 곱게 채 썬다.
[단계 3] 부침가루와 미숫가루를 3 : 1의 비율로 섞는다.
[단계 4] 1, 2, 3에 물을 넣어 반죽하고 소금으로 간을 한다.
[단계 5] 팬에 현미유를 두르고 3의 반죽을 둥글게 떠 넣어 노릇노릇하게 지진다.
[단계 6] 그릇에 담아 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (290, 34, 30.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (290, 306, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (290, 94, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (290, 5, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (290, 8, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (290, 6, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (290, 10, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (290, 294, 4.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (290, 35, 0.50, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (290, 53, 60.00, 'ml', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (291, '애호박장떡말이밥', 'medium', 30, '[단계 1] 양파는 갈고 애호박과 풋고추는 잘게 다진다.
[단계 2] 물 1/2컵에 고추장을 풀고 우리밀가루를 넣어 골고루 섞는다.
[단계 3] 1의 재료를 2에 넣어 반죽한다.
[단계 4] 팬에 현미유를 두르고 3의 재료를 얇게 부친다.
[단계 5] 밥에 참기름과 흑임자, 소금을 넣고 양념을 한다.
[단계 6] 애호박장떡에 양념한 밥을 얇게 펴놓고 돌돌 말아 2~3cm 가량의 길이로 자른다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (291, 164, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (291, 64, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (291, 10, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (291, 280, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (291, 29, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (291, 34, 50.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (291, 53, 50.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (291, 294, 1.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (291, 132, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (291, 32, 1.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (291, 35, 0.20, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (292, '봄나물주먹밥', 'medium', 30, '[단계 1] 쌀은 불린 후 밥을 짓는다.
[단계 2] 고사리는 끓는 물에 삶고, 잘게 썬 파프리카는 고사리 삶는 물에 살짝 데친다.
[단계 3] 고사리 삶는 중간에 취나물을 넣어 함께 데친다.
[단계 4] 고사리와 취나물은 잘게 썬다 .
[단계 5] 파프리카, 고사리, 취나물에 참기름, 마늘, 소금, 통깨를 넣고 양념을 한다.
[단계 6] 밥에 참기름, 통깨, 소금을 넣어 양념한 후 4의 재료를 섞어 주먹밥을 만든다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (292, 121, 70.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (292, 286, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (292, 261, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (292, 292, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (292, 259, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (292, 32, 3.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (292, 12, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (292, 35, 0.70, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (292, 39, 0.50, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (293, '달래두부김치무침', 'medium', 30, '[단계 1] 두부는 5cm× 1.5cm× 1cm 크기로 썬다.
[단계 2] 썰어논 두부는 기름을 두르지 않고 팬에 노릇노릇 굽는다 .
[단계 3] 달래는 2cm 가량의 크기로 썬다 .
[단계 4] 배추김치는 물기를 적당히 짜고 2cm 가량으로 가늘게 채썬다 .
[단계 5] 홍피망은 2cm 가량으로 가늘게 채썰고 3, 4와 파, 마늘, 설탕, 참기름, 통깨, 고춧가루, 소금을 넣고 조물조물 무친다.
[단계 6] 두부위에 5의 김치달래무침을 곁들인다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (293, 23, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (293, 24, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (293, 241, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (293, 214, 2.50, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (293, 12, 2.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (293, 36, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (293, 32, 1.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (293, 39, 0.50, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (293, 37, 0.50, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (293, 35, 0.20, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (294, '딸기소스닭가슴살채소무침', 'medium', 30, '[단계 1] 닭가슴살을 삶는 뜨거운 물에 데친다.
[단계 2] 닭가슴살 데친물에 브로콜리도 살짝 데친다.
[단계 3] 닭가슴살은 고기결을 따라 잘게 찢는다.
[단계 4] 양상추는 손으로 잘게 찢고 적채, 파프리카는 2cm가량으로 채 썰고 방울토마토는 반으로 자른다.
[단계 5] 딸기를 강판에 갈아 호상요구르트와 호두, 소금을 넣어 드레싱을 만든다.
[단계 6] 2, 3의 재료를 접시에 담아 딸기드레싱과 곁들인다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (294, 19, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (294, 50, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (294, 3, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (294, 149, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (294, 307, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (294, 259, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (294, 292, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (294, 293, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (294, 58, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (294, 117, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (294, 35, 0.50, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (295, '쑥호두달걀말이', 'medium', 30, '[단계 1] 쑥을 잘게 썬다.
[단계 2] 당근을 잘게 다진다.
[단계 3] 호두를 칼로 부순다.
[단계 4] 달걀을 그릇에 깨뜨려 넣고 소금을 넣어 섞은 후 1,2,3의 재료를 섞는다 .
[단계 5] 달군 팬에 기름을 두르고 달걀물을 부어 반숙이 되면 말아서 두툼하게 만든 뒤 약한 불에서 아래, 위, 양옆으로 뒤집어가며 속까지 익힌다 .
[단계 6] 한입 크기로 썰어 그릇에 담는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (295, 22, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (295, 6, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (295, 117, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (295, 294, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (295, 35, 0.30, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (296, '시래기리조또', 'medium', 30, '[단계 1] 무청을 찬물에 담궈 잡냄새를 제거한다.
[단계 2] 무청의 물기를 짠다.
[단계 3] 물기를 뺀 무청은 적당한 크기로 송송 썰어준다.
[단계 4] 무청에 된장, 다진 마늘, 생강즙을 넣어 조물조물 무친다.
[단계 5] 팬에 포도씨유를 두르고 양념한 무청을 넣고 볶는다.
[단계 6] 밥을 넣고 함께 볶다가 생크림과 버터를 넣고 맛이 어우러지도록 잠시 더 볶아 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (296, 7, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (296, 164, 180.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (296, 30, 18.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (296, 12, 2.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (296, 13, 1.25, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (296, 33, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (296, 197, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (296, 48, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (296, 40, 3.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (297, '새우두부만두', 'medium', 7, '[단계 1] 칼등으로 두부를 으깨 면보에 싸서 물기를 짜낸다.
[단계 2] 새우, 부추, 표고버섯은 잘게 다진다.
[단계 3] 두부에 다진 새우, 부추, 표고버섯, 소금, 후추를 넣어 소를 만든다.
[단계 4] 만두피에 소를 10g씩을 올리고 새우 꼬리를 밖으로 나오게 넣고 오므린다.
[단계 5] 찜기에 젖은 면보를 깔고 만두를 넣어 7분 간 찐다.
[단계 6] 양념장과 함께 곁들여 낸다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (297, 47, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (297, 23, 80.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (297, 5, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (297, 145, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (297, 35, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (297, 38, 0.25, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (297, 152, 75.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (297, 31, 1.50, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (297, 76, 0.75, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (297, 53, 5.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (297, 37, 0.40, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (298, '단호박리조또', 'medium', 30, '[단계 1] 현미쌀은 깨끗이 씻어 약 30분 이상
충분히 불린다.
[단계 2] 단호박은 껍질을 벗겨 먹기 좋게 썰어
불린 현미 쌀과 함께 밥을 짓는다.
[단계 3] 양송이와 양파는 다져, 냄비에 볶다가
우유와 설탕, 호박가루를 넣는다.
[단계 4] 끓고 있는 냄비에 단호박 현미밥(②)을
넣고 끓인다.
[단계 5] 밥이 어느 정도 어우러지면, 생크림과
요거트를 섞어 한 번 더 젓는다.
[단계 6] 만들어진 리조또(⑤) 위에 캐슈넛과
아몬드, 어린잎 채소를 올려 함께
완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (298, 254, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (298, 65, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (298, 195, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (298, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (298, 40, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (298, 21, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (298, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (298, 65, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (298, 48, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (298, 179, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (298, 302, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (298, 116, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (298, 93, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (299, '토마토떡볶이', 'medium', 30, '[단계 1] 떡볶이는 뜨거운 물에 담그어 놓는다.
[단계 2] 토마토, 사과는 입자 있게 다진다.
[단계 3] 떡볶이떡은 뜨거운 물에 담그어
놓는다.
[단계 4] 고추장과 케첩, 올리고당, 다진 마늘을
골고루 섞는다.
[단계 5] 냄비에 버터를 녹인 뒤 토마토와 사과
(②), 소스(④)를 넣고 볶아준다.
[단계 6] 볶고 있는 소스(⑤)에 떡볶이 떡(①)과
썰어놓은 채소와 어묵(③)을 넣고,
육수를 부어 끓이다가 대파를 넣고
한 번 더 끓여 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (299, 222, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (299, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (299, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (299, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (299, 57, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (299, 40, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (300, '소고기채소볶음', 'medium', 30, '[단계 1] 소고기는 깍뚝썰어 준비한다.
[단계 2] 깍뚝썰은 소고기에 소금, 후추, 올리브
오일을 넣어 숙성시킨다.
[단계 3] 브로컬리는 살짝 데쳐 썰고 ,양파,
당근, 토마토, 파프리카도 같은 크기로
썰어 준비한다.
[단계 4] 포도주스에 올리고당과 칠리소스 넣어
은근히 졸여 소스를 만들어 놓는다.
[단계 5] 팬에 식용유를 두르고 채소를 먼저
볶는다.
[단계 6] 채소를 볶은 팬에 다시 숙성된 소고기를
익히고, 볶아놓은 채소를 넣고 소스를
넣어 살짝 더 졸여 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (300, 14, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (300, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (300, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (300, 84, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (300, 119, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (300, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (300, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (300, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (300, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (300, 33, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (301, '양송이크림볶음밥', 'medium', 30, '[단계 1] 닭살은 삶아 입자있게 썰고, 양송이도
껍질을 벗겨 입자있게 썰어 준비한다.
[단계 2] 떡볶이떡과 양파도 입자있게 썰어
놓는다.
[단계 3] 당근은 소금을 넣고 삶아 꼬마 당근을
만들어 장식을 준비한다.
[단계 4] 냄비에 버터를 두르고 양파를 먼저
볶는다.
[단계 5] 볶아지는 냄비에 닭살과 떡볶이떡,
양파를 넣어 다시 볶는다.
[단계 6] ⑤번에 밥을 넣고 육수와 우유, 생크림을
넣어 볶으면서 치즈를 넣고 한 번 더 고실
하게 볶아 완성하고 삶은 당근은 꼬마
당근을 만들어 장식으로 올려 준다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (301, 124, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (301, 68, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (301, 222, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (301, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (301, 21, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (301, 48, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (301, 208, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (302, '단호박닭꼬치', 'medium', 30, '[단계 1] 닭다리살은 뼈를 발라 일정 크기로
자른 뒤 우유에 재워둔다.
[단계 2] 재워둔 닭다리살에 소금과 후춧가루를
뿌려놓는다.
[단계 3] 단호박은 속을 파서 잘라 삶아
준비한다.
[단계 4] 떡볶이떡은 뜨거운 물에 살짝 불리고,
대파는 단호박 크기로 잘라 준비한다.
[단계 5] 고추장과 다진마늘, 다진양파, 케첩,
올리고당을 넣고, 골고루 섞어 양념장을
만들어 놓는다.
[단계 6] 꼬치에 준비한 닭다리살과 단호박, 양파,
떡볶이떡, 대파를 꽂아 은근히 초벌로
굽고, 다시 만들어 놓은 양념장을 발라
구워 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (302, 147, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (302, 21, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (302, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (302, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (302, 222, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (302, 65, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (302, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (302, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (302, 277, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (302, 98, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (303, '떡갈비콩나물밥', 'hard', 30, '[단계 1] 콩나물은 꼬리를 떼어 준비한다.
[단계 2] 표고버섯을 길이로 썰고 떡은 입자있게
다져 놓고 배는 갈아놓는다.
[단계 3] 김치 물에 충분히 씻어 물기를 제거하고
송송 썰어 준비한다.
[단계 4] 냄비에 불린 쌀과 콩나물, 표고버섯을
넣고 밥을 짓는다.
[단계 5] 다진 소고기에 간장과 갈아놓은 배,
맛술, 파, 마늘, 참기름, 통깨로 양념을
하여 30분 이상 재워둔 뒤 썰어 놓은
김치, 다진 떡을 넣고 골고루 치대어
섞는다.
[단계 6] 팬에 기름을 넣고 따끈해지면 떡갈비
(⑤)를 넣어 익힌 후, 콩나물밥(④)
위에 올리고, 브로컬리는 살짝 데쳐
장식으로 올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (303, 121, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (303, 167, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (303, 145, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (303, 119, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (303, 24, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (303, 63, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (303, 219, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (303, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (303, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (303, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (303, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (303, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (303, 39, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (303, 24, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (303, 222, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (303, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (304, '크림치즈떡볶이', 'easy', 10, '[단계 1] 펜네는 10분정도 삶아 데치고, 떡볶이
떡은 뜨거운 물에 살짝 불려 놓는다.
[단계 2] 양파는 채를 썰어 준비한다.
[단계 3] 냄비에 버터를 넣고 밀가루를 넣어
볶는다.
[단계 4] 볶아지는 밀가루에 준비한 육수를
넣는다.
[단계 5] 육수가 은근히 끓으면 우유와 생크림
넣어준다.
[단계 6] 끓고 있는 냄비에 떡볶이떡, 삶은 펜네와
양파를 넣어 끓인 후 모짜렐라치즈를
넣고 치즈가 녹으면 파슬리가루를
살짝 뿌려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (304, 222, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (304, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (304, 40, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (304, 247, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (304, 103, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (305, '돼지고기말이튀김', 'medium', 3, '[단계 1] 돼지고기등심은 자근자근 두들겨
소금과 후추를 뿌려 숙성시킨다.
[단계 2] 깻잎, 당근, 피망, 양파는 채를 썰어
준비한다.
[단계 3] 숙성된 돼지고기(①)에 썰어놓은 채소
(②)와 치즈를 넣어 말아준다.
[단계 4] 마요네즈에 두부를 으깨어 넣고
생크림과 요구르트, 설탕, 머스터드를
넣어 골고루 섞어준다.
[단계 5] 어린잎은 찬물에 잠시 담그어 놓았다가
채에 건져 물기를 제거한다.
[단계 6] 말아놓은 등심에 밀가루, 달걀물,
빵가루 순서로 입혀 튀김기름
170~180℃의 온도에 약 3분 정도
튀겨 기름을 빼 놓고, 튀김소스(④)와
어린잎(⑤)을 접시에 담아 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (305, 224, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (305, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (305, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (305, 2, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (305, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (305, 267, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (305, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (305, 208, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (305, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (305, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (305, 129, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (305, 125, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (305, 299, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (305, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (305, 301, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (305, 303, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (306, 'L..A갈비구이', 'medium', 30, '[단계 1] L.A 갈비는 물에 담그어 핏물과 갈비
톱밥을 제거시켜 놓는다.
[단계 2] 강판에 배와 양파를 곱게 갈아 준비
한다.
[단계 3] 핏물을 제거한 갈비에 배즙과 양파즙을
넣어 숙성시킨다.
[단계 4] 냄비에 저염간장과 월계수잎, 통후추,
올리고당, 정종, 설탕, 물, 매실액을
넣어 은근히 약 30분 정도 끓여 식힌다.
[단계 5] 끓여 식힌 간장에 파, 마늘, 참기름,
통깨를 넣는다.
[단계 6] 숙성시킨 L.A 갈비에 만들어 놓은
양념을 넣고 다시 하루 정도 더 숙성
후 팬에 구워 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (306, 278, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (306, 63, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (306, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (306, 98, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (306, 112, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (306, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (306, 52, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (306, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (306, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (306, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (306, 39, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (307, '동글동글도넛', 'medium', 30, '[단계 1] 소고기와 돼지고기는 곱게 다진다.
[단계 2] 양파는 곱게 다진다.
[단계 3] 다진 고기에 양파, 달걀, 찹쌀가루,
소금, 후춧가루를 넣고 잘 치댄다.
[단계 4] 토마토는 씨를 제거하고 곱게 다져
?에 섞는다.
[단계 5] 순두부는 곱게 체에 내린다
[단계 6] ?에 유자청을 섞고, 구워놓은
스테크에 올린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (307, 14, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (307, 16, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (307, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (307, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (307, 146, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (307, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (307, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (307, 85, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (307, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (307, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (308, '된장크림소스 잡곡 오므라이스', 'hard', 30, '[단계 1] 잡곡은 깨끗이 씻어 충분히 불린 뒤
밥을 짓는다.
[단계 2] 호박, 청피망, 홍피망, 양파,
표고버섯은 입자있게 다지고 부추는
송송 썰고 마늘은 다진다.
[단계 3] 팬에 기름을 두르고 썰어놓은 야채를
살짝 볶다가 잡곡밥을 넣고 볶는다.
[단계 4] 된장에 생크림과 로즈마리를 넣고
믹서에 간다.
[단계 5] ?에 생크림과 로즈마리를 넣어
끓인다.
[단계 6] 달걀은 풀어 체에 내려 넓게 지단을
부쳐 에 넣고 오므라이스로 말아 담고
된장 소스를 올린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (308, 200, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (308, 243, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (308, 7, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (308, 308, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (308, 309, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (308, 62, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (308, 64, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (308, 241, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (308, 267, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (308, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (308, 145, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (308, 5, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (308, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (308, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (308, 163, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (308, 30, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (308, 80, 5.00, '마리', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (308, 48, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (309, '두릅부추 소고기말이', 'medium', 30, '[단계 1] 동량의 물과 저염간장에 대파, 양파,
마늘을 넣고 은근히 졸인다.
[단계 2] 마늘이 익을 정도로 끓으면 체에
거른다.
[단계 3] 부추는 길게 썰고, 양파는 채썬다
[단계 4] 두릅은 데친 후 찬물에 헹군다.
[단계 5] 졸인 간장에 요리술을 넣고 다시
졸인다.
[단계 6] 고기를 구운 뒤 준비한 야채와 두릅을
넣고 돌돌 말아 간장에 졸인다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (309, 201, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (309, 138, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (309, 5, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (309, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (309, 202, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (309, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (309, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (309, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (309, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (310, '라따뚜이', 'medium', 30, '[단계 1] 토마토는 슬라이스 한다.
[단계 2] 홀토마토와 양파는 곱게 다진다.
[단계 3] 가지와 애호박은 둥글게 썬다.
[단계 4] 팬에 가지와 애호박을 굽는다
[단계 5] 냄비에 다진 토마토를 넣고 볶다가
다진 양파, 월계수잎을 넣고 볶아
은근히 끓여서 소스를 만든다.
[단계 6] 파슬리는 곱게 다져 준비하고 접시에
토마토, 가지, 애호박을 돌려담고 그
위에 토마토소스를 올린 뒤 다진
파슬리를 올린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (310, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (310, 187, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (310, 64, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (310, 102, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (310, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (310, 274, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (310, 77, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (311, '라이스페이퍼 야채롤', 'medium', 30, '[단계 1] 새우는 껍질을 제거하고 데쳐 편썬다.
[단계 2] 양파, 파프리카는 채썬다.
[단계 3] 땅콩은 갈아서 블루베리와 섞어 소스를
만든다.
[단계 4] 라이스페이퍼는 물에 적신 뒤 건진다.
[단계 5] 라이스페이퍼에 깻잎을 올린다.
[단계 6] ?위에 새우, 파프리카, 양파, 베이컨,
아스파라거스를 넣고 돌돌 말아 땅콩소
스를 곁들인다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (311, 87, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (311, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (311, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (311, 264, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (311, 155, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (311, 141, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (311, 2, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (311, 83, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (311, 61, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (312, '삼색샐러드와두부구이', 'medium', 30, '[단계 1] 두부는 3X4cm 크기로 썰어 소금을
살짝 뿌려둔다.
[단계 2] 소금을 뿌려 놓은 두부는 물기를
제거하고 밀가루를 골고루 묻힌다.
[단계 3] 팬에 기름을 두르고 두부를 앞뒤로
노릇노릇하게 구워 접시에 담는다.
[단계 4] 매실액에 간장과 설탕을 넣고 골고루
섞어 소스를 만든다.
[단계 5] 홍피망, 파프리카, 적채, 양파, 깻잎은
곱게 채썬다.
[단계 6] 썰어 놓은 야채를 각각 물에 담궜다
건져 두부 옆에 담고 소스를 뿌리고
흑임자를 올린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (312, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (312, 241, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (312, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (312, 307, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (312, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (312, 2, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (312, 132, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (312, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (312, 52, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (312, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (312, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (312, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (313, '새송이등갈비', 'medium', 30, '[단계 1] 등갈비는 찬물에 담궈 핏물을 빼고
끓는 물에 데친다.
[단계 2] 새송이버섯은 길쭉하게 슬라이스로
썰어둔다.
[단계 3] 당근, 양파, 대파는 큼직하게 썰어,
뜨거운 물에 담군다.
[단계 4] 담궈 놓은 야채를 걸러 야채물을
만든다.
[단계 5] 냄비에 야채물을 넣고 저염간장과
올리고당, 다진마늘, 후춧가루를
섞는다.
[단계 6] 야채간장에 등갈비를 넣고 은근히
졸이다가, 썰어놓은 야채와
새송이버섯을 넣고 윤기나게 졸인다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (313, 278, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (313, 82, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (313, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (313, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (313, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (313, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (313, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (313, 98, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (313, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (314, '소안심 야채 호박잎쌈', 'medium', 30, '[단계 1] 호박잎은 끓는 물에 데친다.
[단계 2] 다시마는 물에 넣고 불린다.
[단계 3] 불린 다시마는 채썬다.
[단계 4] 파프리카, 양파, 오이, 두부는 채썬다.
[단계 5] 고추장에 준비한 다시마물을 섞고,
설탕과 식초를 넣어 소스를 만든다.
[단계 6] 소고기는 소금, 후춧가루로 밑간을
한뒤 구워 썰고, 호박잎에 소고기와
갖은 야채를 올려 돌돌말아 접시에
담고 고추장 소스를 올린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (314, 307, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (314, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (314, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (314, 55, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (314, 197, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (314, 71, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (314, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (314, 29, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (314, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (314, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (314, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (315, '양배추 고기말이', 'medium', 5, '[단계 1] 돼지고기 등심은 곱게 다진다.
[단계 2] 두부는 꼭 짜서 물기를 제거하고,
시금치는 데친 후 다진다.
[단계 3] 두부와 다진 등심에 시금치, 소금,
후춧가루, 다진마늘 및 달걀을 넣고
골고루 잘 섞는다.
[단계 4] 양배추는 김이 오른 찜통에서 약 5분
정도 찐다.
[단계 5] 김발에 양배추를 넓게 편다.
[단계 6] 양배추 위에 ?을 넣고 돌돌말아 한 번
더 찐다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (315, 182, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (315, 310, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (315, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (315, 1, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (315, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (315, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (315, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (315, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (316, '양배추 쌈말이', 'medium', 30, '[단계 1] 물에 다시마를 넣고 끓인다.
[단계 2] 끓여 놓은 다시마 육수에 마늘,
저염간장, 가쓰오부시를 넣고 살짝
끓인 뒤 걸러서 소스를 만든다.
[단계 3] 양배추는 찜통에 찐다.
[단계 4] 돼지고기는 저염간장과 후춧가루를
뿌려 볶고 식힌다
[단계 5] 파프리카, 사과, 당근은 굵게 채썬다.
[단계 6] 쪄낸 양배추에 깻잎과 썰어놓은 야채를
올려 둥그렇게 말아 준비한 소스에
살짝 적신다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (316, 182, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (316, 16, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (316, 2, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (316, 57, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (316, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (316, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (316, 71, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (316, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (316, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (316, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (316, 289, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (317, '연어샐러드', 'easy', 30, '[단계 1] 연어는 깍둑썰기한다.
[단계 2] 썰어 놓은 연어는 후춧가루와 레몬으로
마리네이드한다.
[단계 3] 어린잎은 찬물에 담궈둔다
[단계 4] 담궈 놓은 어린잎을 체에 받쳐 물기를
뺀다.
[단계 5] 레몬과 올리브오일을 섞는다.
[단계 6] ?번에 발사믹소스를 넣고 연어 샐러드
양념을 만들고, 접시에 연어와 물기를
뺀 어린잎을 담는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (317, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (317, 84, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (318, '오렌지 드레싱 타다키 부추샐러드', 'medium', 30, '[단계 1] 소고기는 소금과 후춧가루로
양념한다.
[단계 2] 부추는 5cm 길이로 썰고 양배추는
채썬다.
[단계 3] 오렌지는 껍질째 썬다.
[단계 4] 썰어 놓은 오렌지와 레몬, 양파를 갈아
드레싱을 만든다.
[단계 5] 견과류는 입자있게 다진다.
[단계 6] 부추와 양배추를 준비한 드레싱에
버무려 접시에 담고, 양념된 소고기는
팬에 구워 먹기 좋게 썰어 담는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (318, 81, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (318, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (318, 14, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (318, 197, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (318, 88, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (318, 5, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (318, 182, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (318, 133, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (318, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (318, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (319, '고등어된장구이', 'medium', 30, '[단계 1] 고등어의 내장을 제거한다.
[단계 2] 내장을 제거한 고등어를 길이로 반을 갈라 각각 2등분 한다.
[단계 3] 양념장 재료를 모두 섞어 양념장을 만든다.
[단계 4] 고등어에 양념장을 발라 30분 이상 재운다.
[단계 5] 고등어의 양념장을 가볍게 긁어낸다.
[단계 6] 팬에 기름을 두르고 양파 속껍질과 얇게 썬 양파 위에 고등어를 올려 굽는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (319, 283, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (319, 33, 2.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (319, 10, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (319, 10, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (319, 30, 3.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (319, 170, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (319, 76, 0.30, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (319, 219, 3.75, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (319, 13, 1.25, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (319, 53, 3.75, 'ml', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (320, '낙지브로콜리볶음', 'medium', 30, '[단계 1] 낙지는 밀가루를 넣고 주물러 씻는다.
[단계 2] 씻은 낙지를 5cm 길이로 썬다
[단계 3] 마늘은 편으로, 양파는 사방 3cm, 브로콜리는 한입 크기로 썬다.
[단계 4] 팬에 올리브유를 넣고 마늘을 볶아 향을 낸다.
[단계 5] 양파와 방울토마토를 넣고 약한 불에서 토마토가 물러질 때까지 천천히 익힌다.
[단계 6] 브로콜리와 낙지를 넣고 볶은 뒤 소금으로 간하고 접시에 담아낸다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (320, 149, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (320, 50, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (320, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (320, 10, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (320, 12, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (320, 153, 3.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (320, 35, 0.50, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (321, '주꾸미돌나물무침', 'medium', 30, '[단계 1] 돌나물은 먹기 좋은 크기로 자른다.
[단계 2] 오이와 파프리카는 4~5cm 가량의 크기로 채 썬다.
[단계 3] 주꾸미는 끓는 물에 데친다.
[단계 4] 데친 주꾸미 4~5cm 가량의 크기로 썬다.
[단계 5] 고추장, 식초, 매실액, 파, 마늘, 통깨, 고춧가루를 넣고 고추장양념을 만든다.
[단계 6] 접시에 1,2,4를 담고 5의 고추장양념을 곁들인다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (321, 113, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (321, 256, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (321, 55, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (321, 259, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (321, 292, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (321, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (321, 76, 6.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (321, 52, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (321, 214, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (321, 12, 2.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (321, 39, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (321, 37, 1.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (322, '사과소스폭찹', 'medium', 30, '[단계 1] 돼지고기를 0.5cm 두께로 썰어 칼집을 넣어 소금, 후추로 밑간한다.
[단계 2] 사과와 양파는 얇게 채 썬다.
[단계 3] 토마토는 4등분하여 물을 넣고 믹서에 간다.
[단계 4] 팬에 버터와 올리브유를 두르고 사과와 양파를 볶다가 토마토를 넣고 약불에서 사과가 무를 때 까지 천천히 익힌 뒤 레몬즙을 넣는다.
[단계 5] 팬에 올리브유를 두르고 고기를 앞뒤로 노릇하게 굽는다.
[단계 6] 고기를 한입 크기로 잘라 사과소스를 얹어 낸다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (322, 35, 0.50, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (322, 38, 0.25, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (322, 153, 1.50, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (322, 57, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (322, 10, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (322, 92, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (322, 53, 50.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (322, 40, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (322, 153, 1.50, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (322, 106, 2.50, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (323, '무대하무침', 'medium', 30, '[단계 1] 무는 씻어 1cm× 4cm × 0.3cm 크기로 나박썰기 한다.
[단계 2] 새우는 등 쪽의 내장을 제거한다.
[단계 3] 내장을 제거한 새우는 소금물에 살살 흔들어 씻는다.
[단계 4] 김이 오른 찜통에 무와 새우를 넣고 함께 찐다.
[단계 5] 찐 새우는 껍질을 벗기고 반으로 가른다.
[단계 6] 무에 파, 다진 마늘, 고춧가루, 간장, 설탕, 참기름, 통깨를 넣고 무친 뒤 5의 새우를 넣고 버무린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (323, 7, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (323, 87, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (323, 10, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (323, 12, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (323, 37, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (323, 31, 2.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (323, 36, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (323, 32, 2.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (323, 39, 0.20, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (324, '간편조기찜', 'medium', 30, '[단계 1] 조기의 비늘과 지느러미를 제거하고 앞뒤 3~4회 칼집을 내어 양념이 잘 배도록 손질한다
[단계 2] 고사리는 4cm 가량으로 자른다.
[단계 3] 자른 고사리는 국간장, 참기름, 마늘을 넣고 무친다
[단계 4] 양파, 홍고추, 청고추는 잘게 썬다
[단계 5] 양념된 고사리는 냄비에 넣는다
[단계 6] 5의 냄비에 물을 붓고 조기, 양파, 홍고추, 청고추, 생강, 마늘, 국간장, 통깨, 참기름을 넣고 찐다');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (324, 162, 70.00, '마리', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (324, 261, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (324, 10, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (324, 97, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (324, 96, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (324, 12, 2.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (324, 13, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (324, 31, 2.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (324, 32, 1.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (324, 39, 0.30, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (324, 53, 100.00, 'ml', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (325, '표고버섯쇠고기찜', 'medium', 10, '[단계 1] 표고버섯의 기둥을 떼 낸다.
[단계 2] 버섯 기둥과 양파, 대파는 다진다.
[단계 3] 말린 고추는 으깨준다.
[단계 4] 고기에 2, 3과 나머지 양념을 넣어 잘 치댄다.
[단계 5] 표고버섯에 양념한 고기를 채운다.
[단계 6] 찜기에 젖은 면보를 깔고 10분간 쪄 낸다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (325, 145, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (325, 10, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (325, 11, 2.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (325, 12, 1.25, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (325, 31, 3.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (325, 36, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (325, 32, 1.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (325, 161, 0.50, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (326, '참나물돼지고기샐러드', 'medium', 30, '[단계 1] 냄비에 물 2컵을 넣고 돼지고기, 양파, 파, 통마늘, 생강, 후춧가루를 넣고 삶는다.
[단계 2] 삶은 돼지고기는 2cm × 3cm × 0.3cm 가량의 크기로 썬다.
[단계 3] 참나물은 먹기 좋은 크기로 자른다.
[단계 4] 양파는 다져준다.
[단계 5] 다진양파, 설탕, 간장, 고춧가루, 올리브유, 식초, 마늘, 통깨를 넣어 샐러드드레싱을 만든다.
[단계 6] 2의 돼지고기와 3의 참나물을 그릇에 담고 샐러드드레싱을 곁들인다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (326, 91, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (326, 10, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (326, 10, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (326, 12, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (326, 13, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (326, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (326, 31, 4.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (326, 76, 4.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (326, 36, 3.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (326, 12, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (326, 37, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (326, 153, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (326, 39, 0.50, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (327, '연근배추홍시샐러드', 'medium', 10, '[단계 1] 연근은 껍질을 벗겨 0.2 cm 길이로 얇게 썰어 물 반컵에 식초를 넣은 후 10분정도 담갔다가 물기를 제거한다.
[단계 2] 배추, 사과, 배는 씻어 4~5cm 길이로 채썬다.
[단계 3] 땅콩과 호두는 칼로 굵게 다진다.
[단계 4] 연근은 팬에 현미유를 두르고 노릇노릇하게 구어 연근칩을 만든다.
[단계 5] 홍시, 호상요구르트, 3배 식초, 소금을 섞어 홍시드레싱을 만든다.
[단계 6] 그릇에 배추, 사과, 배, 연근칩, 땅콩, 호두를 넣고 버무린 뒤 홍시드레싱을 곁들인다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (327, 63, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (327, 285, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (327, 57, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (327, 63, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (327, 83, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (327, 117, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (327, 294, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (327, 53, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (327, 293, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (327, 63, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (327, 35, 0.30, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (328, '장어구이', 'medium', 30, '[단계 1] 장어는 손질해 우유에 담가 이물질을 빼준다.
[단계 2] 더덕과 우엉은 가늘게 채 썰어 냉수에 담가
준다.
[단계 3] 생강은 채 썰어 냉수에 담가준다.
[단계 4] 조림장을 만들어 더덕, 우엉, 생강을 각각
볶아 섞어준다.
[단계 5] 맛간장과 발사믹식초를 졸이다가 장어를
볶아준다.
[단계 6] 곁들이 김치를 준비하고 졸여진 뿌리채소와
장어를 섞어 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (328, 237, 250.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (328, 21, 100.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (328, 189, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (328, 198, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (328, 13, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (328, 31, 15.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (328, 13, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (328, 98, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (328, 265, 30.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (328, 24, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (328, 24, 25.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (329, '안심스테이크', 'medium', 30, '[단계 1] 망고를 먹기 좋은 크기로 자르고 소스재료로
소스를 만들어준다.
[단계 2] 호두를 곱게 다져준다.
[단계 3] 안심에 만들어진 소스를 발라주고 곱게 다진
호두가루를 발라준다.
[단계 4] 감자, 당근, 아스파라거스는 먹기 좋은 크기로
잘라서 버터에 볶아준다.
[단계 5] 호두를 발라준 안심을 구워준다.
[단계 6] 남은 망고소스를 다시 졸여서 구워진 안심
위에 뿌려주고 볶은 채소랑 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (329, 137, 160.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (329, 155, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (329, 6, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (329, 8, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (329, 117, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (329, 98, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (329, 38, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (329, 35, 1.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (330, '가지라따뚜이', 'medium', 30, '[단계 1] 토마토 페이스트는 신맛이 날아가도록 볶아
준다.
[단계 2] 피망, 파프리카와 양파 , 애호박은 작은
사각형으로 잘라준다.
[단계 3] 잘라준 채소를 올리브오일에 볶은 뒤 볶아진
페이스트에 함께 볶아준다.
[단계 4] 가지는 어슷하고 도톰하게 잘라준다.
[단계 5] 가지를 팬에 구워준다.
[단계 6] 팬에 구운 가지를 올려주고 볶아진 채소를
올려주고 다진 치즈를 뿌려서 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (330, 187, 0.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (330, 143, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (330, 66, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (330, 10, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (330, 92, 200.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (330, 64, 200.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (330, 208, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (330, 311, 1.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (331, '쪽갈비구이', 'medium', 30, '[단계 1] 쪽갈비는 물에 와인을 넣어 80% 이상을 삶아
냉수에 헹군다. 데쳐낸 쪽갈비를 올리브오일
과 로즈마리와 통후추를 뿌려서 구워준다.
[단계 2] 소스를 만들어준다.
[단계 3] 레몬껍질은 채 썰어준다.
[단계 4] 방울토마토는 먹기 좋게 자르고 양파도 먹기
좋게 잘라 팬에 구워준다.
[단계 5] 쪽갈비를 레몬껍질과 함께 굽는다.
[단계 6] 구워진 채소에 함께 쪽갈비를 굽고 소스와
함께 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (331, 84, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (331, 38, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (331, 80, 1.00, '마리', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (331, 282, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (331, 50, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (331, 10, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (331, 88, 10.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (332, '명란프리타타', 'medium', 30, '[단계 1] 명란은 껍질을 벗겨 송송 다져준다.
[단계 2] 달걀을 풀어서 채에 내려주고 후추로 간을
해준다.
[단계 3] 달걀에 명란과 생크림을 넣어 섞어준다.
[단계 4] 시금치는 데쳐서 수분을 제거 후 송송 다져
주고 토마토는 작은 사각형으로 잘라준다.
[단계 5] 팬에 기름을 두르고 달걀을 부어 반 정도
익혀준다.
[단계 6] 달걀이 반 정도 익었을 때 토마토와 시금치를
넣어 뚜껑을 덮어 익혀 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (332, 48, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (332, 22, 4.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (332, 1, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (332, 50, 6.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (332, 153, 15.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (333, '양송이구이', 'medium', 30, '[단계 1] 양송이는 꼭지를 제거하고 밀가루를 살짝
묻혀준다.
[단계 2] 청양고추를 송송 다진다.
[단계 3] 청양고추, 다진 돼지고기, 계란을 함께 버무려
준다.
[단계 4] 양송이 소에 양념된 돼지고기를 채워준다.
[단계 5] 소스를 만들어준다.
[단계 6] 팬에 양송이를 구워준 후 로즈마리를 올려주고
소스와 함께 낸다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (333, 68, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (333, 105, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (333, 161, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (333, 38, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (333, 12, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (333, 22, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (333, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (334, '함초김치', 'medium', 30, '[단계 1] 함초는 먹기 좋게 썰어준다.
[단계 2] 알 배추, 무, 양파도 먹기 좋게 썬다.
[단계 3] 오렌지주스와 유자청을 넣어 국물을 만든다.
[단계 4] 볼에 함초, 알배추, 무를 넣어 섞고 어간장을
넣어 살짝 절여준다.
[단계 5] 절여진 재료에 국물을 부어준다.
[단계 6] 3시간 정도 후부터 먹을 수가 있다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (334, 168, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (334, 236, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (334, 10, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (334, 7, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (334, 31, 15.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (334, 53, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (334, 85, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (334, 76, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (334, 36, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (334, 53, 800.00, 'ml', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (335, '웰빙꼬치', 'medium', 30, '[단계 1] 닭가슴살과 단호박은 사방 2.5cm 크기로
잘라준다.
[단계 2] 양파 2가지, 색파프리카, 대파는 닭 크기와
비슷하게 잘라준다.
[단계 3] 닭가슴살과 소라살은 통후추, 올리브오일에
재워준다.
[단계 4] 소스를 만들어준다.
[단계 5] 모든 재료를 꼬치에 꽂는다.
[단계 6] 꼬치를 팬에 구워주면서 소스를 발라준다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (335, 19, 150.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (335, 269, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (335, 270, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (335, 50, 80.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (335, 65, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (335, 11, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (335, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (335, 10, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (335, 38, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (335, 158, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (335, 12, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (335, 84, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (335, 38, 3.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (336, '매운닭날개구이', 'medium', 30, '[단계 1] 닭날개를 멕시코고추와 고추가루에 설탕,
다진마늘, 후추를 넣어 밑간을 해준다.
[단계 2] 감자는 먹기 좋게 썰어 뜨거운 물에 70%
정도 익혀준다.
[단계 3] 감자는 데쳐 낸 후 버터에 볶아준다.
[단계 4] 브로콜리는 데치고, 사과와 토마토는 잘게
잘라준다.
[단계 5] 냄비에 다진마늘과 다진양파를 볶아주다
토마토를 넣어 소스를 만들어준다.
[단계 6] 닭날개를 팬에 구워주고 감자와 샐러드를
곁들여 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (336, 8, 80.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (336, 50, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (336, 149, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (336, 12, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (336, 10, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (336, 40, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (336, 38, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (336, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (336, 37, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (336, 158, 30.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (337, '웰빙카레죽', 'medium', 30, '[단계 1] 카레가루를 물에 풀어서 30분 정도 숙성
시켜준다.
[단계 2] 닭가슴살은 사방 1cm 크기로 잘라주고,
칵테일새우도 세척해 준비한다.
[단계 3] 알 마 늘 , 감자는 사 방 1 c m 길이로 잘라
물 400g에 먼저 익혀준다.
[단계 4] 방울토마토, 애호박은 사방 1cm 크기로
썰어준다.
[단계 5] 끓고 있는 냄비에 풀어 놓은 카레가루를 섞어
다시 끓여준다.
[단계 6] 양파는 사방 1cm 길이로 잘라주고 끓고 있는
카레에 양파, 방울토마토, 애호박을 넣고
끓여 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (337, 120, 45.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (337, 107, 200.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (337, 19, 150.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (337, 64, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (337, 8, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (337, 10, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (337, 50, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (337, 12, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (337, 40, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (337, 47, 30.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (338, '닭가슴살 두부선', 'medium', 30, '[단계 1] 닭가슴살, 두부, 소금을 믹서에 간다.
[단계 2] 1에 간 마늘과 소금, 참기름을 섞는다.
[단계 3] 반죽 1/3은 비트물, 1/3은 시금치물을 넣어 색을 입힌다.
[단계 4] 틀에 반죽을 층층이 쌓아 모양을 만든 뒤 오븐에 찐다.
[단계 5] 흑임자가루, 플레인요거트, 식초, 설탕을 섞어 드레싱을 만든다.
[단계 6] 접시에 담고 소스와 베이비채소를 얹는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (338, 194, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (338, 23, 120.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (338, 73, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (338, 1, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (338, 262, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (338, 12, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (338, 32, 1.50, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (338, 132, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (338, 59, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (338, 76, 0.50, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (338, 36, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (338, 35, 0.20, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (339, '단호박 마전', 'medium', 30, '[단계 1] 단호박을 잘게 다진다.
[단계 2] 마를 0.3cm 두께로 썰어 뜨거운 물에 데친다.
[단계 3] 잘게 다진 단호박에 밀가루와 찹쌀가루, 물, 소금을 넣어 반죽한다.
[단계 4] 프라이팬에 식용유를 두르고 반죽을 두른다.
[단계 5] 두른 반죽 가운데 마를 올려 부친다.
[단계 6] 먹기 좋게 담은 후 건대추를 고명으로 올린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (339, 65, 70.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (339, 9, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (339, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (339, 146, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (339, 62, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (339, 35, 0.30, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (340, '완두콩과 당근을 넣은 감자요거트 샐러드', 'easy', 30, '[단계 1] 완두콩을 삶아 건진다.
[단계 2] 감자는 삶은 뒤 건져 껍질을 벗긴다.
[단계 3] 감자가 뜨거울 때 곱게 으깬다.
[단계 4] 당근을 잘게 다진다.
[단계 5] 으깬 감자와 완두콩, 당근을 섞는다.
[단계 6] 플레인요거트를 섞어 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (340, 253, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (340, 6, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (340, 8, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (340, 59, 20.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (341, '무오색쌈', 'medium', 30, '[단계 1] 당근, 오이, 표고버섯은 5cm 길이로 가늘게 채썬다.
[단계 2] 당근, 오이, 표고버섯은 각각 살짝 볶아내어 식혀둔다.
[단계 3] 쇠고기는 간장, 설탕, 마늘, 참기름을 넣어 밑간하여 볶아낸다.
[단계 4] 달걀은 얇게 지단을 부쳐 5cm 길이로 썬다.
[단계 5] 연겨자, 식초, 마늘, 설탕, 깨를 넣어 소스를 만든다.
[단계 6] 모든 재료를 소스에 버무린 다음 무쌈과 함께 낸다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (341, 7, 10.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (341, 14, 4.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (341, 22, 2.40, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (341, 6, 3.30, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (341, 145, 3.20, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (341, 55, 7.80, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (341, 169, 0.28, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (341, 31, 0.05, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (341, 76, 0.57, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (341, 32, 0.14, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (341, 12, 0.30, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (341, 36, 0.10, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (341, 39, 0.01, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (341, 35, 0.05, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (342, '흑마늘견과류조림', 'medium', 30, '[단계 1] 통마늘과 견과류들은 먹기 좋은 크기로 자른다.
[단계 2] 흑마늘 진액과 간장, 물엿, 물을 넣어 흑마늘 소스를 만든다.
[단계 3] 대두유를 두르고 마늘을 팬에 노릇하게 구워준다.
[단계 4] 구워진 마늘에 각종 견과류를 넣어 볶는다.
[단계 5] 소스를 넣어 조린다.
[단계 6] 그릇에 담고 깨를 뿌려 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (342, 12, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (342, 117, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (342, 116, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (342, 302, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (342, 83, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (342, 312, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (342, 12, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (342, 31, 2.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (342, 231, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (342, 39, 2.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (343, '미숫가루 스콘', 'medium', 20, '[단계 1] 체 친 강력분, 박력분, 미숫가루, 베이킹파우더와 버터를 카드를 이용해 잘게 잘라 섞는다.
★ 자르듯이 섞어야 글루텐이 생기는 것을 최소화 해, 바삭한 질감을 얻을 수 있어요.
[단계 2] 계란과 우유를 섞어 넣고 카드로 잘라 주듯이 섞는다.
[단계 3] 가루가 약간 보일 때쯤 건크랜베리와 호두를 넣어 같이 반죽한다.
[단계 4] 뭉쳐진 반죽을 비닐에 싸서 냉장고에서 1시간 이상 휴지시킨다.
[단계 5] 휴지시킨 반죽을 밀대로 밀어주고 여러 겹 쌓이도록 3접절이를 5회 정도 해준 후 카드로 일정하게 자른다.
[단계 6] 오븐팬에 놓고 겉면 코팅을 위해 계란물을 얇게 발라준 후 180℃로 예열된 오븐에서 20분 정도 굽는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (343, 40, 40.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (343, 34, 90.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (343, 34, 90.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (343, 306, 70.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (343, 21, 66.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (343, 22, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (343, 117, 20.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (344, '들깨삼겹살과 참외쌈장', 'hard', 5, '[단계 1] 냄비에 물(3컵)과 양념을 넣어 5분간 끓이고, 삼겹살을 넣어 중간 불로 15분간 끓인다.
[단계 2] 참외(½개)는 껍질과 씨를 제거한 뒤 곱게 다진다.
[단계 3] 다진 참외에 견과류와 저염쌈장 재료를 넣어 고루 섞는다.
[단계 4] 영양부추는 한입 크기로 자르고, 참외(½개)는 씨를 제거한다.
[단계 5] 그릇에 영양부추를 깔고, 삼겹살을 가지런히 올린다.
[단계 6] 씨를 제거한 참외에 참외 저염쌈장을 담아 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (344, 278, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (344, 172, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (344, 5, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (344, 148, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (344, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (344, 38, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (344, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (344, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (344, 171, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (344, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (344, 215, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (344, 97, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (344, 37, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (344, 214, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (344, 148, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (344, 313, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (344, 133, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (345, '단호박 양파잼 샌드위치', 'medium', 15, '[단계 1] 양파는 얇게 채 썰고, 단호박은 껍질과 씨를 제거한 뒤 큼직하게 썰고, 말린 자두는 굵게 다지고, 청상추는 깨끗하게 씻는다.
[단계 2] 종이포일 위에 단호박을 올리고, 식용유(1Ts)를 두른 뒤 180℃로 예열한 오븐에서 15분간 구워 꺼내고, 삶은 달걀의 노른자는 체에 거르고, 흰자는 곱게 다진다.
[단계 3] 중간 불로 달군 팬에 식용유(2Ts)를 두르고, 화이트와인을 조금씩 넣으며 양파가 갈색이 될 때까지 볶아 양파잼을 만든다.
[단계 4] 구운 단호박은 한 김 식힌 뒤 체에 곱게 거르고, 달걀노른자, 흰자, 우유, 꿀, 소금, 후춧가루를 넣어 고루 섞어 단호박샐러드를 만든다.
[단계 5] 약한 불로 달군 마른 팬에 아몬드 슬라이스를 넣어 노릇하게 볶는다.
[단계 6] 식빵(1장)에 단호박샐러드, 청상추, 슬라이스 체더치즈를 올리고, 다른 식빵(1장)에 양파잼을 넉넉하게 바른 뒤 덮고, 삼각형으로 잘라 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (345, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (345, 217, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (345, 210, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (345, 21, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (345, 314, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (345, 208, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (345, 3, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (345, 343, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (345, 101, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (345, 154, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (345, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (345, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (346, '무말랭이김치', 'medium', 30, '[단계 1] 무말랭이를 물에 불린다.
[단계 2] 식초, 설탕, 피클링스파이스, 물을 넣고 끓인다.
[단계 3] 끓인 물을 식힌다.
[단계 4] 레몬, 당근, 오이를 적당한 크기로 자른다.
[단계 5] 4를 3에 넣어 하루 이상 숙성시킨다.
[단계 6] 보기 좋게 담는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (346, 7, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (346, 76, 30.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (346, 36, 25.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (346, 88, 8.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (346, 6, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (346, 55, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (346, 281, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (346, 53, 100.00, 'ml', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (347, '토마토소스 애호박냉파스타', 'medium', 30, '[단계 1] 토마토는 꼭지를 제거하고, 열십자로 칼집을 낸 뒤 끓는 물에 30초간 데쳐 건지고, 껍질을 제거해 한입 크기로 썬다.
[단계 2] 참외는 깨끗하게 씻어 2등분해 씨를 제거한 뒤 한입 크기로 썰고, 오이와 양파는 한입 크기로 썰고, 마늘은 꼭지를 제거한 뒤 4등분한다.
[단계 3] 애호박은 스파이럴라이저로 썰고, 끓는 물에 30초간 데쳐 건진 뒤 한 김 식히고, 레몬즙(1Ts), 올리브유(2Ts), 소금(0.1Ts)에 버무린다.
[단계 4] 믹서에 토마토, 오이, 참외, 양파, 마늘, 바질잎(3장), 페페론치노, 차가운 물(½컵)을 넣어 곱게 갈아 토마토소스를 만든다.
[단계 5] 저염 간장, 식초, 꿀, 올리브유(3Ts), 소금(0.3Ts)을 넣어 한 번 더 곱게 간다.
[단계 6] 그릇에 애호박면과 토마토소스를 담고, 바질잎(1장)과 블랙올리브 파우더를 뿌려 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (347, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (347, 172, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (347, 55, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (347, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (347, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (347, 64, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (347, 311, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (347, 338, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (347, 106, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (347, 153, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (347, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (347, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (347, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (347, 154, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (348, '새우채소 김치롤', 'medium', 30, '[단계 1] 김치는 깨끗하게 씻어 찬물에 30분간 담근 뒤 건져내고, 물기를 꼭 짠 뒤 윗동을 약간 자른다.
[단계 2] 오이와 파프리카는 5cm 길이로 채 썰고, 깻잎과 무순은 깨끗하게 씻어 물기를 빼고, 크래미는 낱낱이 가른다.
[단계 3] 새우는 껍질을 벗기고, 끓는 물에 익을 때까지 데쳤다 건져 길게 2등분한다.
[단계 4] 약한 불로 달군 팬에 식용유를 두르고, 달걀물을 부어 지단을 부친다.
[단계 5] 김발에 김치를 한 장씩 겹쳐 넓게 펼친다.
[단계 6] 김치 위에 지단, 손질한 채소, 새우를 올리고, 돌돌 말아 한입 크기로 썰어 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (348, 24, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (348, 55, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (348, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (348, 2, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (348, 87, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (348, 316, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (348, 7, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (348, 33, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (349, '참나물무말이 물김치', 'medium', 1, '[단계 1] 끓는 물(500㎖)에 참나물 줄기를 1분간 데쳐 건진 뒤 찬물에 헹군다.
[단계 2] 무는 둥근 모양을 살려 얇게 썰고, 참나물 잎은 얇게 채 썰고, 레몬은 강판에 갈아 제스트를 만든다.
[단계 3] 냄비에 절임물 재료와 물(40㎖)을 넣어 2분간 끓인 뒤 손질한 무를 넣어 30분간 절인다.
[단계 4] 믹서에 김칫국물 재료를 넣어 간 뒤 고운체에 거른다.
[단계 5] 절인 무에 채 썬 참나물 잎을 올려 돌돌 말고 데친 참나물 줄기로 묶는다.
[단계 6] 그릇에 무말이와 김칫국물을 담은 뒤 레몬 제스트를 뿌린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (349, 91, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (349, 7, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (349, 88, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (349, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (349, 290, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (349, 53, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (349, 290, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (349, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (349, 97, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (349, 57, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (350, '매실입은가지닭볶음탕', 'medium', 30, '[단계 1] 닭과 가지는 먹기 좋은 사이즈로 토막 낸다.
[단계 2] 다진파, 다진 마늘, 맛술, 참기름, 올리고당에 닭을 재운다.
[단계 3] 매실엑기스, 간장, 식초, 다진마늘, 미림, 물을 섞어 소스를 만든다.
[단계 4] 가지와 닭은 오븐에 구워준다.
[단계 5] 구워진 닭과 가지를 매실소스에 버무린다.
[단계 6] 팬에 소스 묻은 닭과 가지를 볶아 낸다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (350, 20, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (350, 187, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (350, 10, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (350, 12, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (350, 312, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (350, 31, 3.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (350, 76, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (350, 317, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (350, 98, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (350, 32, 1.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (351, '삼색나물, 토마토양념장', 'medium', 30, '[단계 1] 토마토를 데쳐 껍질을 벗겨낸 뒤 잘게 썬다.
[단계 2] 마늘과 양파를 잘게 다진 뒤 썰어둔 토마토, 고추장, 꿀, 식초와 골고루 섞는다.
[단계 3] 도라지는 껍질을 벗긴 뒤 물에 담궈 쓴맛을 제거하고 길이 5cm, 두께 0.5cm로 찢는다.
[단계 4] 시금치는 뿌리를 잘라내고 2~4등분으로 나눈다.
[단계 5] 고사리는 깨끗하게 씻은 뒤 물에 불린다.
[단계 6] 끓는 물에 소금을 넣고 도라지, 시금치, 고사리 순으로 데친 뒤 찬물에 헹궈 물기를 짜고 양념장을 곁들인다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (351, 92, 35.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (351, 12, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (351, 10, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (351, 154, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (351, 76, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (351, 139, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (351, 1, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (351, 261, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (351, 29, 20.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (351, 35, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (351, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (352, '삼색 브레드 스틱', 'medium', 40, '[단계 1] 강력분, 소금, 이스트, 물을 넣어 만든 반죽을 3등분 하여 각각 당근, 참나물, 연근을 다져 넣어 섞어준다.
[단계 2] 반죽에 글루텐이 형성되면 각각 식용유와 버터를 넣어 섞고, 연근을 넣은 반죽에는 마지막에 견과류를 넣어 섞는다.
★다른 반죽보다 향이 없는 연근 반죽에 견과류를 넣어 맛을 냈어요.
[단계 3] 반죽이 완료되면 3-40분 정도 1차 발효를 한다.
[단계 4] 1차 발효 후 30g씩 무게를 달아 둥글리기하고 중간 발효 후 길게 밀어 편다.
[단계 5] 20분 정도 2차 발효를 한다.
[단계 6] 아랫불 160, 윗불 180℃ 오븐에서 18분 동안 굽는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (352, 34, 300.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (352, 35, 3.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (352, 40, 36.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (352, 33, 6.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (352, 6, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (352, 91, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (352, 134, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (352, 133, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (352, 53, 100.00, 'ml', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (353, '양배추말이 김치', 'medium', 25, '[단계 1] 끓는 물(800㎖)에 양배추와 시금치를 넣어 데친 뒤 찬물에 헹궈 체에 밭쳐 물기를 제거한다.
[단계 2] 데친 시금치와 오이, 당근은 얇게 채 썬다.
[단계 3] 데친 양배추를 깔고 위에 채 썬 재료를 올려 돌돌 말아준다.
[단계 4] 양념장을 만든다.
[단계 5] 양배추말이를 한입 크기로 썰어 그릇에 담은 뒤 양념장을 곁들인다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (353, 182, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (353, 1, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (353, 55, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (353, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (353, 37, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (353, 31, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (353, 290, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (353, 313, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (354, '단호박 양고기볶음', 'medium', 15, '[단계 1] 콜리플라워는 송이 부분만 떼어내고, 고구마와 양파는 한입 크기로 썬다.
[단계 2] 양고기는 한입 크기로 썰어 밑간한 뒤 15분간 재운다.
[단계 3] 재워둔 고기에 손질한 채소와 마늘을 넣어 고루 버무리고, 중간 불로 달군 팬에 올려 고구마가 약간 익을 때까지 볶는다.
[단계 4] 양념을 넣어 재료와 고루 섞는다.
[단계 5] 단호박은 전자레인지에 5분간 돌리고, 익으면 윗부분을 약간 잘라낸 뒤 씨를 제거하고, 양고기와 볶은 재료를 단호박 속에 채운다.
[단계 6] 찜기에 넣어 25분간 쪄낸 뒤 8등분하여 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (354, 310, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (354, 9, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (354, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (354, 318, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (354, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (354, 65, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (354, 153, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (354, 339, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (354, 339, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (354, 301, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (354, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (355, '채소 프리타타', 'easy', 25, '[단계 1] 단호박, 팽이버섯, 새송이버섯, 느타리버섯, 쌈추, 적근대, 배추, 숙주와 소고기를 3cm 크기로 자른다.
[단계 2] 팬에 식용유(20g)를 두르고 중간 불에 손질한 채소와 소고기를 차례대로 볶는다.
[단계 3] 볼에 달걀을 풀고 소금, 우유를 넣고 섞어 달걀물을 만든다.
[단계 4] 타르트 틀에 식용유(6g)를 바르고 볶은 채소, 소고기를 올리고 ③을 넣는다.
[단계 5] 140도로 예열한 오븐에 25분 정도 구워 프리타타를 만든다.
[단계 6] 프리타타 위에 새싹채소와 리코타 치즈를 올린 후 올리브유를 두르고 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (355, 319, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (356, '과카몰리 갈치구이', 'easy', 30, '[단계 1] 아보카도는 반으로 갈라 씨를 제거하고 과육을 으깬다. 레몬은 반으로 갈라 즙을 짜고, 라임은 얇게 자른다.
[단계 2] 토마토, 양파, 마늘은 깍둑썰고, 바질은 곱게 다진다
[단계 3] 볼에 손질한 아보카도, 토마토, 양파, 마늘, 바질을 넣고 올리브유, 레몬즙, 소금, 후추를 섞어 과카몰리를 만든다.
[단계 4] 깨끗이 씻은 갈치는 칼집을 낸 후 달군 팬에 노릇하게 굽는다.
[단계 5] 접시에 갈치구이를 담고 과카몰리를 곁들인다.
[단계 6] 접시에 손질한 라임을 담고 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (356, 320, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (357, '배추겉절이', 'easy', 30, '[단계 1] 알배추는 한입 크기로 자른다.
[단계 2] 쪽파는 3cm 길이로 썰고, 찐 감자는 한입 크기로 자른다
[단계 3] 마늘, 생강, 무, 양파는 깨끗이 씻어 한입 크기로 자른다.
[단계 4] 믹서에 찐 감자, 고춧가루, 매실청, 까나리액젓, 새우젓, 무, 양파, 생강, 마늘을 넣고 갈아 겉절이 양념을 만든다.
[단계 5] 손질한 알배추, 쪽파, 겉절이 양념(15g)을 버무린다.
[단계 6] 접시에 담고 통깨를 뿌려 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (357, 320, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (358, '치아바타 피자빵', 'easy', 60, '[단계 1] (소스) 소스에 들어가는 재료는 전부 다진 후 기름 두른 팬에 양파를 먼저 볶다가 남은 재료를 넣고 볶아 준 뒤 물을 넣고 끓여 조린다.
[단계 2] 반죽 재료를 넣고 27℃ 최종단계 까지 믹싱한 후 1차 발효는 고온발효로 27℃에서 1시간 발효한다.
[단계 3] 150g씩 분할하여 모양을 성형한 후 면포 위에 팬닝한다.
★반죽이 많이 질어요. 손에 묻으면 덧밀가루를 뿌려가며 진행하세요.
[단계 4] 2차 발효는 온도는 30℃, 수분은 75%에서 60분간 발효한 후 오븐팬에 팬닝한다.
[단계 5] 반죽 위에 만들어 놓은 토마토 소스를 바르고 스팀 160℃/230℃에서 13분간 굽는다.
[단계 6] 치즈를 올리고 4분간 구워낸다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (358, 208, 200.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (359, '강황 투움바 파스타', 'hard', 13, '[단계 1] 양파는 도톰하게 채 썰고, 양송이버섯은 모양대로 썰고, 마늘은 납작 썰고, 토마토는 6~8등분한다.
[단계 2] 채소 육수(6컵)에 탈리아텔레를 넣고 13분간 삶아 건진다.
[단계 3] 중간 불로 달군 팬에 올리브유를 두른 뒤 납작 썬 마늘을 노릇하게 익히고, 양파와 양송이버섯을 넣어 3분간 볶는다.
[단계 4] 면수(1컵), 강황가루, 고운 고춧가루를 넣어 고루 섞고, 토마토를 넣어 볶다가 식물성 생크림과 두유를 넣어 끓어 오르면 말린 토마토를 넣고 1분간 끓인다.
[단계 5] 삶은 탈리아텔레를 넣고, 소스가 면에 잘 배어들게 고루 볶은 뒤 후춧가루를 뿌린다.
[단계 6] 그릇에 담고 다진 파슬리와 핑크 페퍼를 뿌리고, 바질잎과 바게트를 곁들여 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (359, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (359, 195, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (359, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (359, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (359, 174, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (359, 77, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (359, 311, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (359, 321, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (359, 53, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (359, 7, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (359, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (359, 322, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (359, 153, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (359, 122, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (359, 37, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (359, 48, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (359, 204, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (359, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (360, '깻잎 쌈두부 라자냐', 'easy', 7, '[단계 1] 껍질 벗긴 토마토는 주사위 모양으로 썰고, 양파, 배추, 청경채, 숙주는 잘게 썬다.
[단계 2] 팬에 소고기 양지를 구운 뒤 꺼내고, 같은 팬에 식용유를 두르고 다진 마늘과 손질한 채소를 넣고 물기가 없어질 때까지 볶는다.
[단계 3] ②에 소고기 다짐육을 넣어 볶다가 손질한 완숙 토마토, 월계수 잎, 화이트 와인, 오레가노를 넣어 끓이고 소금, 후추로 간하여 소스를 만든다.
[단계 4] 당면은 6cm 길이로 잘라 끓는 물에 7분간 삶아 ③에 넣는다.
[단계 5] 쌈두부 → 구운 소고기 양지 → 소스 → 모차렐라 치즈 순으로 켜켜이 올리고 180도로 예열한 오븐에 8분간 익힌다.
[단계 6] 깻잎을 돌돌 말아 채 썰어 올려 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (360, 319, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (361, '참깨가지말이밥', 'easy', 10, '[단계 1] 가지는 0.3cm 두께로 얇게 썰고 방울토마토, 파프리카, 양파는 잘게 자른다.
[단계 2] 손질한 가지는 오븐에 굽는다. (180℃, 10분)
[단계 3] 달군 팬에 올리브유(6g)를 두르고 양파를 볶다가 현미밥, 방울토마토, 파프리카를 넣고 볶는다.
[단계 4] 채소가 익으면 약한 불로 줄이고 토마토 페이스트, 쿠민가루를 넣어 볶음밥을 만든다.
[단계 5] 믹서에 참깨, 올리브유(6g)를 넣어 갈고 요거트, 다진 마늘을 섞어 참깨 소스를 만든다.
[단계 6] 구운 가지 위에 볶음밥을 올려 돌돌 말고, 참깨 소스를 얹어 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (361, 320, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (362, '카레삼겹살 파니니', 'medium', 1, '[단계 1] 방울토마토는 4등분하고, 아보카도는 얇게 모양대로 썰고, 로메인은 깨끗하게 씻어 물기를 제거하고, 양파, 대파, 미나리는 4cm 길이로 썰고, 마늘은 납작 썬다.
[단계 2] 중간 불로 달군 팬에 올리브유를 두른 뒤 납작 썬 마늘, 양파, 대파를 넣어 1분간 볶는다.
[단계 3] 대패삼겹살과 후춧가루를 넣어 겉면이 노릇해질 때까지 볶고, 미나리, 간장, 꿀을 넣어 1분 정도 볶고, 카레가루, 고운 고춧가루를 넣어 고루 섞으며 볶는다.
[단계 4] 허니요거트소스를 만든다.
[단계 5] 치아바타는 마른 팬에 안쪽 면을 노릇하게 구워 꺼내고, 빵 안쪽에 허니 요거트소스를 바른다.
[단계 6] 로메인, 삼겹살볶음, 허니요거트소스, 아보카도, 방울토마토, 후춧가루 순으로 올려 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (362, 50, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (362, 203, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (362, 323, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (362, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (362, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (362, 4, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (362, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (362, 153, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (362, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (362, 31, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (362, 154, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (362, 120, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (362, 37, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (362, 59, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (363, '어린잎채소 건두부말이', 'medium', 30, '[단계 1] 어린잎채소는 깨끗하게 씻어 물기를 제거하고, 견과류는 굵게 다진다.
[단계 2] 건두부는 끓는 물에 데쳐 건져낸 뒤 물기를 제거한다.
[단계 3] 건두부 위에 어린잎채소(3컵)를 올리고, 돌돌 말아 한입 크기로 썬다.
[단계 4] 남은 어린잎채소에 다진 견과류와 슈레드모차렐라치즈를 고루 섞는다.
[단계 5] 라임청의 라임을 얇게 다지고, 나머지 라임청드레싱 재료와 고루 섞는다.
[단계 6] 그릇에 건두부말이와 샐러드를 담고, 라임청 드레싱을 뿌려 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (363, 93, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (363, 133, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (363, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (363, 208, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (363, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (363, 153, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (363, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (364, '토마토를 곁들인 마늘밥', 'easy', 30, '[단계 1] 현미는 1시간, 백미는 30분 동안 불린다.
[단계 2] 마늘의 절반은 편으로 썰고, 나머지는 통으로 준비한다.
[단계 3] 냄비에 불린 쌀, 마늘을 넣고 물을 맞춰 센 불에서 끓어오르면 중약 불로 줄이고 15분 동안 끓인다.
[단계 4] 약한 불로 줄이고 뜸을 들여 마늘밥을 만든다.
[단계 5] 칼집을 낸 토마토를 뜨거운 물에 살짝 데쳐 껍질과 씨를 제거하고, 잘게 다진다.
[단계 6] 접시에 마늘밥을 담고 손질한 토마토를 올린 후 올리브유, 후추, 파슬리가루를 뿌려 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (364, 320, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (365, '토마토 채소 계란찜', 'medium', 30, '[단계 1] 볼에 계란을 푼다.
[단계 2] 마늘을 다져 계란과 섞고 파마산치즈, 후추를 넣어 간을 맞춘다.
[단계 3] 양파는 채 썰고 브로콜리는 깍둑썰고 그린빈스는 2cm 길이로 자른다.
[단계 4] 3의 재료를 볶은 뒤 계란물과 섞는다.
[단계 5] 방울토마토를 반으로 잘라 4에 넣는다.
[단계 6] 그릇에 옮겨 담아 찐다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (365, 50, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (365, 10, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (365, 149, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (365, 22, 80.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (365, 233, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (365, 48, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (365, 12, 0.10, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (365, 38, 0.10, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (366, '배 깍두기', 'medium', 30, '[단계 1] 배 껍질을 벗긴다.
[단계 2] 껍질 벗긴 배를 깍둑썰기 한다.
[단계 3] 쪽파를 송송 썬다.
[단계 4] 마늘을 곱게 다진다.
[단계 5] 고춧가루, 액젓, 다진마늘, 쪽파를 섞어 양념을 만든다.
[단계 6] 깍둑썰기한 배와 양념을 버무린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (366, 63, 400.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (366, 144, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (366, 37, 8.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (366, 51, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (366, 12, 3.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (367, '저염보쌈김치', 'medium', 30, '[단계 1] 배추는 손질하여 심심하게 절인다.
[단계 2] 국멸치, 건표고버섯으로 육수를 낸다.
[단계 3] 파프리카는 갈아서 즙을 짜서 준비한다.
[단계 4] 식힌 육수에 파프리카 즙과 무, 미나리, 양파를 채쳐서 넣고 저염 양념을 만든다.
[단계 5] 배, 대추, 밤, 당근은 마지막에 채쳐 섞는다.
[단계 6] 저염 양념에 ⑤를 섞어서 절인 배추에 켜켜로 바른다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (367, 63, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (367, 63, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (367, 62, 0.20, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (367, 166, 1.10, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (367, 6, 1.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (368, '방아잎 닭고기말이', 'hard', 5, '[단계 1] 아스파라거스는 두꺼운 밑동을 잘라내고, 방아잎은 깨끗이 씻어 물기를 제거한다.
[단계 2] 믹서에 방아잎 페스토 재료를 넣어 곱게 갈고, 요거트 소스 재료를 모두 섞는다.
[단계 3] 닭다릿살을 넓게 편 뒤 방아잎 페스토 (4Ts)를 올리고, 파르메산 치즈를 올린 뒤 스테이크 시즈닝과 파슬리가루를 넣어 돌돌 말고, 풀리지 않도록 실로 묶는다.
[단계 4] 중간 불로 달군 팬에 식용유를 두르고, 돌돌 만 닭다릿살을 넣어 5분간 튀기듯 굽는다.
[단계 5] 같은 팬에 아스파라거스와 방울토마토를 넣어 2분간 볶는다.
[단계 6] 그릇에 구운 닭다릿살과 아스파라거스, 방울토마토를 올리고 요거트 소스를 곁들여 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (368, 155, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (368, 50, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (368, 324, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (368, 106, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (368, 176, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (368, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (368, 153, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (368, 31, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (368, 53, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (368, 57, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (368, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (368, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (368, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (368, 59, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (368, 106, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (368, 7, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (368, 324, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (368, 103, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (369, '새우 카레 빠에야', 'medium', 15, '[단계 1] 양파는 얇게 채 썰고, 토마토는 윗부분을 약간 자른 뒤 속을 파내고, 새우는 머리와 껍질을 제거한다.
[단계 2] 냄비에 물(3컵)과 육수 재료를 넣어 중간 불에 15분간 끓여 육수를 만든다.
[단계 3] 중간 불로 달군 팬에 식용유를 두르고, 양파와 다진 마늘을 넣어 양파가 갈색이 될 때까지 볶는다.
[단계 4] 토마토 속을 넣어 3분간 더 볶고, 쌀과 육수(2컵)를 넣어 끓으면 약한 불로 줄인 뒤 뚜껑을 덮어 15분간 더 끓인다.
[단계 5] 뚜껑을 열어 새우를 올리고, 뚜껑을 다시 덮어 5분간 더 끓이고, 불을 꺼 5분간 뜸을 들인다.
[단계 6] 파슬리가루와 후춧가루를 뿌려 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (369, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (369, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (369, 87, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (369, 121, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (369, 120, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (369, 322, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (369, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (369, 103, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (369, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (370, '토마토 채소 가지롤', 'easy', 30, '[단계 1] 껍질을 벗긴 토마토, 마늘, 파, 양파, 애호박, 느타리버섯, 팽이버섯을 다진다.
[단계 2] 팬에 올리브유(20g)를 두르고 마늘, 양파를 넣고 볶다가 토마토를 넣고 소금(4g), 후추(3g)로 간하고 졸여 토마토 소스를 만든다.
[단계 3] 믹서에 순두부, 올리브유(10g), 소금(4g), 레몬즙을 넣고 갈아 순두부크림 소스를 만든다.
[단계 4] 팬에 올리브유(5g)를 두르고 차돌박이를 구운 후, 같은 팬에 올리브유(15g)를 두르고 파, 애호박, 느타리버섯, 팽이버섯을 볶고 소금(7g)으로 간한다.
[단계 5] 가지를 얇게 잘라 팬에 가볍게 굽고 ④를 올리고 돌돌 말아준다.
[단계 6] 토마토 소스를 아래에 깔고 ⑤를 올리고, 순두부크림 소스를 올려 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (370, 319, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (371, '토마토시금치 닭볶음탕', 'easy', 30, '[단계 1] 닭다리살, 닭안심살은 키친타월로 물기를 제거하고 끓는 물에 데쳐 한입 크기로 썬다.
[단계 2] 칼집을 낸 토마토를 뜨거운 물에 살짝 데치고 껍질을 제거하여 깍둑썰고, 방울토마토는 모양을 살려 반으로 자른다.
[단계 3] 양파, 감자는 껍질을 제거하고 깍둑썬다. 시금치는 밑동을 제거하고 깨끗이 씻어 한입 크기로 썬다.
[단계 4] 볼에 손질한 닭고기, 양파, 감자를 담고, 고추장, 고춧가루, 다진 마늘, 진간장, 알룰로스를 넣어 버무린다.
[단계 5] 달군 팬에 넣고 중약 불로 살짝 볶은 후 물을 부어 끓인다. 채소가 익으면 불을 끄고 시금치를 넣어 잔열로 익힌다.
[단계 6] 접시에 담고 삶은 스파게티면을 곁들여 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (371, 320, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (372, '비타 오이 물김치', 'medium', 30, '[단계 1] 오이와 무를 필러로 길게 슬라이스 한다.
[단계 2] 설탕물을 만들어 무가 잘 구부러질 때 까지 재운 뒤 씻어낸다.
[단계 3] 당근과 홍고추, 파프리카는 5cm 길이로 채 썬다.
[단계 4] 미나리를 데쳐 식힌 뒤 한 줄씩 찢는다.
[단계 5] 오이, 무를 겹쳐 채 썬 재료를 넣고 말아준 뒤 데친 미나리로 묶는다.
[단계 6] 배를 갈아 물, 식초, 고춧가루와 섞어 양념장을 만든 뒤 5를 넣고 재운다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (372, 55, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (372, 7, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (372, 97, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (372, 66, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (372, 6, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (372, 4, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (372, 76, 30.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (372, 63, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (372, 37, 10.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (372, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (373, '라이스페이퍼 수제소시지', 'medium', 30, '[단계 1] 다진 돼지고기(300g)에 밑간한 뒤 얼음물(¼컵)을 넣어 찰기가 생길 때까지 치대 소시지 반죽을 만든다.
[단계 2] 남은 다진 돼지고기(300g)에 양념과 얼음물(¼컵)을 넣고 고루 섞어 치대 다른 소시지 반죽을 만든다.
[단계 3] 두 가지 소시지 반죽은 짤주머니에 각각 담아 냉장실에서 30분간 숙성한다.
[단계 4] 라이스페이퍼 양면에 물을 약간 묻히고, 소시지 반죽을 일정하게 짠 뒤 돌돌 말아 소시지를 만든다.
[단계 5] 약한 불로 달군 팬에 식용유를 두르고, 소시지를 돌려가며 5분간 골고루 익힌다.
[단계 6] 센 불로 올려 1분간 더 익혀 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (373, 127, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (373, 141, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (373, 268, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (373, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (373, 325, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (373, 146, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (373, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (373, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (373, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (373, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (374, '미옹 카레', 'easy', 15, '[단계 1] 감자로 만든 옹심이 반죽을 숟가락의 절반 크기로 동그랗게 모양을 만든다.
[단계 2] 180도로 예열한 에어프라이어에 홍새우 튀김을 15분 동안 익힌다.
[단계 3] 팬에 식용유를 두르고 양파를 채 썰어 넣고 갈색이 나도록 볶는다.
[단계 4] 컬리플라워, 감자튀김, 불린 미역을 넣고 3분 동안 더 볶는다.
[단계 5] 커리 소스, 물(1/2컵=100g), 옹심이를 넣고 3분 동안 끓인다.
[단계 6] 접시에 담고 홍새우 튀김을 올려 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (374, 319, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (375, '곤약 감자조림', 'medium', 30, '[단계 1] 곤약과 감자는 2cm ? 2cm 크기로 썰고 풋고추와 홍고추는 송송 썰어 씨를 제거한다.
[단계 2] 물(200g)에 다시마를 넣고 끓여 육수를 만든 뒤 다시마를 건진다.
[단계 3] 육수에 간장, 설탕, 미림을 섞어 조림장을 만든다.
[단계 4] 곤약과 감자를 끓는 물에 넣고 80% 정도 익힌 뒤 건져 식힌다.
[단계 5] 4에 조림장 50g을 넣고 살짝 졸인다.
[단계 6] 불을 끄고 참기름을 섞는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (375, 326, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (375, 8, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (375, 280, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (375, 97, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (375, 71, 10.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (375, 31, 15.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (375, 36, 10.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (375, 317, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (375, 32, 3.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (375, 76, 10.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (375, 53, 200.00, 'ml', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (376, '요거트강화순무김치', 'medium', 30, '[단계 1] 순무는 2.5*2.5*0.3 cm 크기로 나박 모양으로 썬다.
[단계 2] 고운 고춧가루, 굵은 고춧가루, 다진마늘, 소금, 요거트를 섞어 양념장을 만든다.
[단계 3] 쪽파는 0.2cm 크기로 송송 썰어 준비한다.
[단계 4] 순무에 양념장을 넣고 버무려 준다.
[단계 5] 양념된 순무를 하루 정도 냉장보관하여 숙성시킨다.
[단계 6] 숙성된 순무김치에 쪽파를 고명으로 얹어 제공한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (376, 7, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (376, 144, 0.20, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (376, 37, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (376, 37, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (376, 12, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (376, 59, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (376, 35, 0.20, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (377, '크림카레소스를 곁들인 함초두부스테이크', 'medium', 4, '[단계 1] 양파와 당근, 양송이버섯, 불린 함초는 잘게 다진다.
[단계 2] 으깬 두부는 물기를 제거한 뒤 닭가슴살과 믹서에 넣어 곱게 갈고 다진 양파(20g), 당근(10g), 함초(7.5g), 달걀, 빵가루, 함초소금(0.25g)을 넣어 버무린다.
[단계 3] 두부 반죽은 동그랗게 만들어 중간 불로 달군 팬에 식용유(10㎖)를 두른 뒤 4분간 앞뒤로 노릇하게 구워 꺼낸다.
[단계 4] 약한 불로 달군 냄비에 밀가루, 버터를 넣어 루를 만들고 우유, 강황가루, 다진 양파(10g)와 당근(10g), 양송이버섯, 다진 마늘(5g)을 넣어 섞은 뒤 저염 간장(3g), 함초소금(0.25g)으로 간한다.
[단계 5] 믹서에 소스와 다진 함초(7.5g)를 넣어 곱게 간다.
[단계 6] 그릇에 함초두부스테이크를 올리고 소스를 뿌린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (377, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (377, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (377, 195, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (377, 168, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (377, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (377, 19, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (377, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (377, 129, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (377, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (377, 40, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (377, 21, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (377, 122, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (377, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (377, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (377, 230, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (377, 33, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (378, '밀푀유 채소 웰링턴', 'easy', 15, '[단계 1] 표고버섯, 양파, 마늘은 다지고, 끓는 물에 배추, 숙주, 청경채를 데친다. 토마토는 껍질을 벗기고, 소고기는 키친타월로 핏물을 제거하고 두부는 물기를 제거한다.
[단계 2] 팬에 올리브유(20g)를 두르고 손질한 표고버섯, 양파(15g), 마늘을 볶은 뒤 간장(15g), 들깨가루, 우유를 넣어 덕셀을 만들고 식힌다.
[단계 3] 양파(20g)를 볶은 뒤 물을 붓고 다시마, 새송이버섯, 백목이버섯, 토마토를 넣고 중약 불에서 15분 동안 끓여 갈고 간장(15g), 소금(3g)으로 간해 브라운 소스를 만든다.
[단계 4] 소고기에 머스타드, 덕셀을 바르고 깻잎, 두부, 숙주, 청경채를 넣어 감싸준 후 소금(5g), 후추를 뿌리고, 팬에 올리브유(20g)를 두르고 소고기를 굽고, 로즈메리를 넣는다.
[단계 5] 종이 포일에 올리브유(20g)를 뿌리고, 데친 배추를 올린 후 위에 구운 고기와 덕셀(30g)을 올리고 돌돌 말아 에어프라이어에 200도, 10분간 굽는다.
[단계 6] 접시에 웰링턴을 담고 여분의 덕셀, 브라운 소스를 올리고 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (378, 319, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (379, '참나물 매콤함박스테이크', 'easy', 30, '[단계 1] 닭가슴살, 부침두부, 참나물, 청양고추를 잘게 다진다.
[단계 2] 볼에 담아 소금으로 밑간하고 4등분하여 둥글게 다져 함박스테이크를 만든다.
[단계 3] 달군 팬에 올리브유를 두르고 함박스테이크를 굽는다.
[단계 4] 고추장, 고춧가루, 알룰로스, 후추, 다진 마늘, 물을 넣어 소스를 만든다.
[단계 5] 달군 팬에 소스를 넣고 살짝 졸인다.
[단계 6] 접시에 함박스테이크를 담고 소스를 올린 후 깨를 뿌려 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (379, 320, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (380, '과일 먹은 닭탕수', 'medium', 30, '[단계 1] 닭다리의 살만 발라내 4cm ? 1cm 크기로 썬다.
[단계 2] 1에 소금, 후추로 밑간한 뒤 청주를 넣어 재운다.
[단계 3] 포도알은 2등분하고 사과, 파인애플은 한 입 크기로 썬다.
[단계 4] 2에 녹말을 입혀 기름에 2번 튀긴다.
[단계 5] 팬에 물, 설탕, 레몬즙을 넣고 한소끔 끓인다.
[단계 6] 소스에 물전분을 넣어 농도를 맞추고 썰어둔 과일을 넣는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (380, 57, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (380, 199, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (380, 163, 80.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (380, 36, 20.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (380, 88, 70.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (380, 216, 10.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (380, 38, 0.20, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (380, 35, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (380, 53, 200.00, 'ml', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (381, '구기자모듬장조림', 'medium', 30, '[단계 1] 한돈은 사태로 준비하여 깍둑썰기하여 세척한다.
[단계 2] 양파, 파, 다시마, 표고버섯, 마늘은 깨끗이 세척 후 적당한 크기로 자르고, 당근, 곤약은 깍뚝썰기하여 준비한다.
[단계 3] 냄비에 물과 저염간장을 2:1 비율로 조림장을 준비한다.
[단계 4] 조림장에 구기자 및 양파, 파, 다시마, 표고버섯, 마늘을 넣고 끓인다.
[단계 5] 조림장이 끓으면 사태, 메추리알, 당근, 곤약을 넣고 조린다.
[단계 6] 접시에 담아서 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (381, 60, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (381, 6, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (381, 326, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (381, 10, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (381, 10, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (381, 71, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (381, 12, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (381, 145, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (381, 31, 15.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (382, '오미자저염나박김치', 'medium', 30, '[단계 1] 배추, 콜라비, 오이, 당근을 나박모양으로 썬다.
[단계 2] 레몬은 은행잎썰기, 홍고추는 어슷썰기, 실파는 1.5cm 길이로 썬다.
[단계 3] 식초, 설탕, 오미자청으로 단촛물을 만든다.
[단계 4] 단촛물에 야채, 레몬, 고추, 실파를 넣고 숙성시킨다.
[단계 5] 숙성 후 색을 보고 오미자청을 더 첨가한다.
[단계 6] 숙성된 오미자 나박김치를 그릇에 담아준다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (382, 285, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (382, 142, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (382, 55, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (382, 6, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (382, 291, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (382, 85, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (382, 97, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (382, 88, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (382, 76, 30.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (382, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (382, 53, 10.00, 'ml', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (383, '단호박 라타투이', 'medium', 5, '[단계 1] 가지, 주키니호박, 토마토는 0.3mm 두께로 썬다.
[단계 2] 단호박은 전자레인지에 5분간 돌리고, 익으면 윗부분을 약간 잘라낸 뒤 씨를 제거한다.
[단계 3] 중간 불로 달군 팬에 훈제오리와 마늘을 넣어 고루 볶은 뒤 단호박 속에 채운다.
[단계 4] 팬에 올리브유를 두른 뒤 약한 불로 올리고, 라타투이 소스 재료, 소금, 후춧가루를 넣어 10분간 볶아 라타투이 소스를 만든다.
[단계 5] 높이가 낮은 냄비에 라타투이 소스를 넓게 깔고, 손질한 채소를 둘러 담는다.
[단계 6] 오리로 채운 단호박을 가운데 올린 뒤 6~8등분하여 펼치고, 중간 불로 15분간 쪄 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (383, 327, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (383, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (383, 65, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (383, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (383, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (383, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (383, 227, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (383, 153, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (383, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (383, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (384, '오리들깨 겨자소스 초무침', 'easy', 30, '[단계 1] 달군 팬에 오리고기를 넣고 센 불에서 볶는다.
[단계 2] 들깻가루, 겨잣가루, 식초, 레몬즙, 물을 섞어 양념장을 만든다.
[단계 3] 양파, 당근, 오이는 채 썬다.
[단계 4] 볶은 오리고기는 한 김 식힌다.
[단계 5] 볼에 오리고기, 손질한 채소, 양념장을 넣고 버무린다.
[단계 6] 접시에 담아 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (384, 320, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (385, '견과류문어떡갈비', 'medium', 30, '[단계 1] 삶은 문어, 배, 호두, 아몬드는 작게 자르고, 파와 마늘은 다진다.
[단계 2] 대추는 돌려 깍기 하여 돌돌 말아 자른다.
[단계 3] 돈민찌, 우민찌는 잘 섞어주고 ①재료와 참기름, 후추, 찹쌀가루를 넣어 치대어 준다.
[단계 4] 데쳐서 익힌 떡에 밀가루를 얇게 입히고 ③의 반죽을 붙혀 떡갈비를 만든다.
[단계 5] 떡갈비를 팬에 올려 속이 익을 때까지 굽는다.
[단계 6] 잘라놓은 대추와 잣을 고명으로 올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (385, 222, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (385, 206, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (385, 63, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (385, 117, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (385, 116, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (385, 12, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (385, 214, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (385, 146, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (385, 32, 1.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (385, 38, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (385, 34, 0.50, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (385, 33, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (385, 62, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (385, 176, 2.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (386, '배물김치', 'medium', 30, '[단계 1] 감자를 삶아 물과 함께 갈아 감자풀을 만든다.
[단계 2] 배는 나박썬다.
[단계 3] 청홍고추는 어슷썬다.
[단계 4] 미나리는 고추와 비슷한 크기로 썰어준다.
[단계 5] 준비된 재료에 감자 전분물, 설탕, 마늘, 생강을 넣고 섞어 물김치를 만든다.
[단계 6] 하루 정도 숙성시킨 다음 먹는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (386, 63, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (386, 4, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (386, 97, 0.20, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (386, 8, 4.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (386, 36, 3.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (386, 12, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (386, 13, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (386, 53, 100.00, 'ml', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (387, '성주참외동치미', 'medium', 30, '[단계 1] 참외는 껍질과 속을 제거하고 먹기 좋은 크기로 썬다.
[단계 2] 배와 마늘은 편 썰기, 양파와 대파는 채썰기, 홍고추와 생강은 다진다.
[단계 3] 물에 식초, 설탕, 누룩소금을 넣어 국물을 만든다.
[단계 4] 만들어 놓은 국물에 참외, 배, 양파를 넣어 잘 섞어 준다.
[단계 5] 마지막으로 마늘, 홍고추, 생강을 넣어 섞어 준다.
[단계 6] 동치미를 그릇에 담아 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (387, 172, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (387, 10, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (387, 63, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (387, 11, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (387, 12, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (387, 97, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (387, 13, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (387, 76, 4.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (387, 36, 3.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (387, 35, 0.50, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (387, 53, 150.00, 'ml', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (388, '버터치킨카레', 'medium', 15, '[단계 1] 양파, 당근, 토마토, 파프리카는 한입 크기로 썰고, 닭고기는 한입 크기로 썬다.
[단계 2] 닭고기는 요거트(1컵), 가람마살라(1Ts), 코리앤더파우더(1Ts), 커민파우더(1Ts), 다진 마늘(1Ts), 파프리카가루(1Ts), 소금(0.5ts)에 버무려 15분간 재운다.
[단계 3] 중간 불로 달군 팬에 버터(2Ts)를 녹이고, 다진 마늘(1Ts), 양파, 당근, 토마토를 넣어 5분간 볶는다.
[단계 4] 물(⅓컵), 육수 재료, 생크림을 넣어 끓이고, 당근이 익으면 핸드 믹서로 곱게 간 뒤 체로 거른다.
[단계 5] 갈아 낸 카레를 냄비에 붓고, 가람마살라 (1Ts), 코리앤더파우더(1Ts), 커민파우더, (1Ts), 다진 마늘(1Ts), 파프리카가루(1Ts), 소금(0.5ts)을 넣어 걸쭉하게 끓인다.
[단계 6] 꼬치에 파프리카와 닭을 번갈아 끼운 뒤 중간 불로 달군 팬에 닭이 익을 때까지 굽고, 그릇에 카레를 담은 뒤 닭꼬치와 바게트를 곁들여 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (388, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (388, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (388, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (388, 194, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (388, 278, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (388, 48, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (388, 328, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (388, 321, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (388, 274, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (388, 38, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (388, 179, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (388, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (388, 329, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (388, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (388, 40, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (389, '소고기 김말이', 'easy', 30, '[단계 1] 소고기는 키친타월로 핏물을 제거한다.
[단계 2] 다진 쪽파, 다진 마늘, 저염간장, 고춧가루, 깨(18g), 물(4ml)을 섞어 양념장을 만든다.
[단계 3] 튀김가루와 물(15ml)을 섞어 반죽을 만든다
[단계 4] 손질한 소고기는 후추로 밑간하여 한입 크기로 다지고 김 위에 올려 돌돌 말아 김말이를 만든다.
[단계 5] 김말이에 반죽을 묻히고 달군 팬에 식용유를 두르고 김말이를 앞뒤로 굽는다.
[단계 6] 접시에 담고 양념장, 깨를 올려 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (389, 320, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (390, '케이준 스타일 닭고기 요리', 'medium', 30, '[단계 1] 식용유를 제외한 모든 향신료를 섞어준다.
[단계 2] 닭가슴살에 식용유를 바른다.
[단계 3] 1의 향신료를 닭가슴살의 한면에만 잘 발라준다.
[단계 4] 가열된 식용유를 두르고 닭가슴살의 향신료 묻는 면이 팬에 닿도록 놓는다.
[단계 5] 앞 뒷면이 노릇하게 되도록 구워준다.
[단계 6] 그릇에 담아 마무리 한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (390, 19, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (390, 33, 8.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (390, 329, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (390, 10, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (390, 12, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (390, 38, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (390, 330, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (390, 331, 0.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (390, 332, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (390, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (391, '과일퓨레수제함박스테이크', 'hard', 30, '[단계 1] 도라지, 사과, 배, 연근은 갈아서 뭉근하게 조려 퓨레를 만든다.
[단계 2] 연근, 토마토, 양파, 양송이버섯, 당근, 청피망 등 모든 채소는 곱게 다진다.
[단계 3] 고기에 퓨레, 달걀, 후추, 생강, 빵가루를 넣어 찰지게 반죽하고 납작하게 빚어서 오븐에 굽는다.
[단계 4] 소스제조를 위해 밀가루, 버터를 볶아 루를 만든다.
[단계 5] ④에 ②에서 다져놓은 야채를 넣어 끓이고, 소금간과 레몬즙을 뿌려준다.
[단계 6] 구운 수제함박스테이크에 새싹채소-파인애플-방울토마토 순으로 장식하고 소스와 함께 제공한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (391, 139, 1.30, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (391, 57, 2.20, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (391, 63, 2.20, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (391, 333, 1.70, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (391, 92, 9.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (391, 10, 9.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (391, 195, 1.30, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (391, 6, 11.40, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (391, 267, 2.30, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (391, 22, 7.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (391, 129, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (391, 199, 6.60, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (391, 50, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (391, 40, 1.20, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (391, 34, 1.20, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (391, 88, 0.80, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (391, 38, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (391, 13, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (391, 35, 0.10, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (392, '수제새우소시지', 'medium', 30, '[단계 1] 양파와 깻잎은 곱게 다지고, 칵테일새우는 깨끗하게 씻은 뒤 곱게 다진다.
[단계 2] 다진 양파, 깻잎, 새우에 양념을 넣어 고루 섞은 뒤 치대 새우반죽을 만든다.
[단계 3] 뜨거운 물(4컵)에 라이스페이퍼를 살짝 담갔다 꺼내 식용유를 바른 도마 위에 올린다.
[단계 4] 지퍼백에 새우반죽을 넣은 뒤 가위로 끝부분을 잘라 라이스페이퍼 위에 반죽을 짜 올리고, 돌돌 말아 새우소시지를 만든다.
[단계 5] 중간 불로 달군 팬에 식용유를 둘러 새우소시지를 올린 뒤 겉면이 하얗게 변할 때까지 노릇하게 굽는다.
[단계 6] 그릇에 담고 마늘소스를 윗면에 발라 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (392, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (392, 47, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (392, 141, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (392, 2, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (392, 115, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (392, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (392, 106, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (392, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (392, 153, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (392, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (392, 98, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (392, 103, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (393, '감태샐러드말이와 버섯말이깐풍', 'easy', 30, '[단계 1] 양상추, 적채는 채 썰어 찬물에 담근다. 마요네즈, 홀그레인 머스터드, 파인애플청을 섞어 샐러드 드레싱을 만든다.
[단계 2] 데친 느타리버섯, 만가닥버섯과 불린 건표고버섯의 물기를 제거하고 깍둑 썰기하여 예열한 팬에 볶고 진간장,참기름(3g)으로 간한다.
[단계 3] 라이스페이퍼에 올리고 한입 크기로 싼다. 예열한 팬에 식용유(10g)를 두르고 굽는다.
[단계 4] 물기를 제거한 양상추, 적채를 라이스페이퍼에 올리고 싼 뒤, 감태 위에 올려 돌돌 말고 한입 크기로 썬다.
[단계 5] 예열한 팬에 식용유(10g)를 두르고 다진 청고추, 홍고추, 대파, 마늘을 볶아 향을 내고 굴 소스, 올리고당, 식초, 참기름(3g)을 넣어 깐풍 소스를 만든다.
[단계 6] 접시에 담고 샐러드 드레싱과 깐풍 소스를 곁들여 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (393, 320, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (394, '연근샐러드, 흑임자소스', 'medium', 30, '[단계 1] 연근은 세척 후 껍질을 벗긴다.
[단계 2] 연근을 슬라이스 한다.
[단계 3] 물에 식초를 넣고 끓으면 연근을 데친다.
[단계 4] 레몬즙을 짠다.
[단계 5] 흑임자, 마요네즈, 플레인요거트를 믹서 하여 흑임자 소스를 만든다.
[단계 6] 연근에 흑임자소스를 곁들여 담는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (394, 132, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (394, 134, 80.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (394, 88, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (394, 170, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (394, 59, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (394, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (395, '단호박함박스테이크', 'medium', 30, '[단계 1] 단호박은 쪄서 속을 파내고, 우유와 올리고당을 넣고 끓여 소스를 만든다.
[단계 2] 소고기, 돼지고기, 양파, 마늘, 당근은 모두 잘게 다진다.
[단계 3] ②에 빵가루, 달걀, 소금, 후추를 넣고 치댄다.
[단계 4] 치댄 반죽을 둥글고 납작하게 만들어 준다.
[단계 5] 팬에 기름을 두르고 노릇하게 굽는다.
[단계 6] 함박스테이크에 단호박 크림소스를 부어 제공한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (395, 16, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (395, 14, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (395, 65, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (395, 10, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (395, 12, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (395, 6, 7.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (395, 22, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (395, 129, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (395, 21, 50.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (395, 33, 2.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (395, 35, 0.40, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (395, 38, 0.10, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (395, 98, 3.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (396, '배깍두기', 'medium', 30, '[단계 1] 배는 껍질을 벗긴다.
[단계 2] 껍질 벗긴 배를 깍뚝썰기 한다.
[단계 3] 부추는 먹기 좋은 길이로 썬다.
[단계 4] 배와 부추에 고춧가루를 버무려 색이 베이도록 한다.
[단계 5] 매실청과 설탕을 넣어 새콤달콤하게 버무린다.
[단계 6] 참깨를 뿌려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (396, 63, 80.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (396, 5, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (396, 37, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (396, 159, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (396, 36, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (396, 171, 1.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (397, '부추 배무침', 'easy', 30, '[단계 1] 부추는 다듬어 5~6cm 크기로 썰고, 양파는 뿌리와 껍질을 제거해 얇게 채 썬다.
[단계 2] 배는 껍질을 제거해 여덟 등분하고 씨를 제거하여 편 썰기를 한다.
[단계 3] 다진 마늘, 고춧가루, 멸치액젓, 저염간장, 레몬즙, 통깨(2g)를 섞어 양념장을 만든다
[단계 4] 부추, 양파, 배의 물기를 제거한다.
[단계 5] 볼에 담고 양념장을 넣어 버무린다.
[단계 6] 접시에 담고 통깨(2g)를 뿌려 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (397, 320, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (398, '돈불고기 파인애플볶음', 'medium', 30, '[단계 1] 돼지고기를 흐르는 물에 담궈 핏물을 제거한다.
[단계 2] 파인애플 일부는 먹기 좋은 크기로 썰고 나머지는 믹서에 간다.
[단계 3] 간 파인애플과 양념을 섞어 양념장을 만든다.
[단계 4] 핏물을 제거한 돼지고기에 양념장을 섞어 재운다.
[단계 5] 프라이팬에 기름을 두르고 양념한 돼지고기와 한 입 크기로 썬 채소를 볶는다.
[단계 6] 썰어둔 파인애플을 넣는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (398, 199, 35.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (398, 182, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (398, 10, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (398, 6, 7.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (398, 11, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (398, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (398, 5, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (398, 12, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (398, 32, 3.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (398, 31, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (399, '과일삼겹살조림&파채무침', 'medium', 30, '[단계 1] 삼겹살은 덩어리로 준비하여 삶아낸다.
[단계 2] 배, 사과, 파인애플, 양파, 깐마늘, 깐생강은 갈아서 체에 거르고 간장과 함께 끓인다.
[단계 3] ②에 삶아낸 삼겹살을 넣어 윤기 나게 조린다.
[단계 4] 대파는 가늘게 채 썰고, 새싹채소는 깨끗하게 씻는다.
[단계 5] 레몬즙, 식초, 설탕, 국간장, 고춧가루를 넣어 만든 소스를 야채에 버무린다.
[단계 6] 한입 크기로 썬 삼겹살과 ⑤를 곁들여 낸다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (399, 151, 2.80, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (399, 11, 3.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (399, 199, 1.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (399, 63, 1.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (399, 57, 1.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (399, 10, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (399, 31, 1.20, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (399, 12, 1.20, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (399, 13, 0.30, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (399, 37, 0.17, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (399, 88, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (399, 76, 0.40, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (399, 36, 0.10, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (399, 31, 0.10, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (400, '곤약백김치말이', 'medium', 30, '[단계 1] 곤약은 얇게 편으로 썰어 데친 뒤, 백김치 국물에 절인다.
[단계 2] 끓는 물에 식초를 넣고 오징어를 질기지 않게 살짝 삶는다.
[단계 3] 파프리카는 채썰어 준다.
[단계 4] 백김치는 물기를 제거한다.
[단계 5] 곤약을 깔고 오징어, 파프리카를 얹어 백김치로 말아준다.
[단계 6] 데쳐낸 부추로 풀어지지 않게 매듭을 짓는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (400, 326, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (400, 5, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (400, 328, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (400, 259, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (400, 94, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (400, 24, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (400, 76, 3.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (401, '참치두부 주먹밥', 'medium', 3, '[단계 1] 큰 볼에 두부를 담은 뒤 물이 담긴 무거운 그릇을 3분간 올려 수분을 제거한다.
[단계 2] 두부 속을 사각형 모양으로 파내고, 파낸 두부 속은 물기를 꼭 짜 으깬다.
[단계 3] 파프리카와 깻잎은 잘게 썬다.
[단계 4] 통조림 참치는 체에 밭친 뒤, 뜨거운 물을 부어 기름과 염분을 제거한다.
[단계 5] 볼에 으깬 두부, 손질한 채소, 잡곡밥, 참치를 넣은 뒤 양념해 고루 섞는다.
[단계 6] 주먹밥을 동그랗게 만들고, 속을 판 두부 속에 넣어 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (401, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (401, 328, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (401, 2, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (401, 164, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (401, 189, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (401, 325, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (401, 31, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (401, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (402, '열무톳김치', 'easy', 30, '[단계 1] 톳은 깨끗한 물에 여러 번 씻은 후 끓는 물에 살짝 데치고 물기를 제거한다
[단계 2] 열무는 3cm 크기로 썬다.
[단계 3] 손질한 열무는 끓은 물에 살짝 데치고 물기를 제거한다.
[단계 4] 마늘, 생강은 잘게 다진다.
[단계 5] 볼에 손질한 열무, 톳, 마늘, 생강을 넣고 고춧가루, 어간장으로 간하여 버무린다.
[단계 6] 접시에 담고 통깨를 뿌려 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (402, 320, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (403, '대구 크림스튜', 'medium', 30, '[단계 1] 양파, 청피망, 마늘, 고추는 다지고, 대구살은 굵직하게 썬다.
[단계 2] 토마토는 데친 뒤 껍질을 벗기고 씨를 제거해 과육만 썬다.
[단계 3] 기름을 두른 팬에 양파, 고추를 넣고 볶다가 마늘을 넣고 볶는다.
[단계 4] 생크림과 땅콩버터를 넣은 후 토마토, 파프리카, 새우 순서대로 넣어 끓인다.
[단계 5] 썰어둔 대구살을 넣는다.
[단계 6] 소금, 후추로 간을 한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (403, 10, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (403, 334, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (403, 12, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (403, 96, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (403, 335, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (403, 40, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (403, 48, 13.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (403, 329, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (403, 87, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (403, 84, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (403, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (403, 38, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (404, '밥스틱', 'medium', 30, '[단계 1] 당근, 양파, 청피망, 홍피망, 햄은 곱게 다진다.
[단계 2] 달군 팬에 1을 넣고 볶는다.
[단계 3] 2에 밥을 넣고 볶으면서 카레가루와 소금, 후춧가루로 간을 맞춘다.
[단계 4] 치즈는 적당한 크기로 잘라준다.
[단계 5] 춘권피에 3과 4를 넣고 스틱 모양으로 만든다.
[단계 6] 팬에 기름을 넉넉히 두르고 5를 튀겨준다');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (404, 6, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (404, 10, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (404, 336, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (404, 334, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (404, 164, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (404, 120, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (404, 208, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (404, 125, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (404, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (404, 337, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (405, '버섯 참치 무른밥', 'medium', 30, '[단계 1] 불린 쌀은 믹서나 절구를 이용하여 간다.
[단계 2] 참치 살, 표고버섯, 무, 양파는 곱게 다진다.
[단계 3] 팬에 참기름을 두르고 1과 다진 표고버섯, 무, 양파를 볶는다.
[단계 4] 3에 물을 넣어 무른 밥을 짓는다.
[단계 5] 4의 밥이 끓어오르면 다진 참치 살을 넣고 저어가며 끓인다.
[단계 6] 참치 살이 다 익으면 통깨를 뿌린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (405, 298, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (405, 53, 92.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (405, 145, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (405, 7, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (405, 10, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (405, 32, 2.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (405, 39, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (405, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (406, '시금치 배 미음', 'medium', 30, '[단계 1] 쌀은 깨끗하게 씻어 불린다.
[단계 2] 2를 믹서나 절구로 곱게 갈아 냄비에 물과 함께 넣고 끓인다.
[단계 3] 배는 껍질과 씨를 제거하고 강판에 간다.
[단계 4] 시금치는 끓는 물에 데친 후 물기를 꼭 짜서 곱게 다진다.
[단계 5] 2가 끓어오르면 3,4를 넣고 끓인다.
[단계 6] 입맛에 맞게 꿀로 간한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (406, 298, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (406, 53, 90.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (406, 63, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (406, 1, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (406, 154, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (407, '어린이 스시', 'medium', 30, '[단계 1] 초대리 재료를 분량대로 섞어 설탕, 소금이 녹을 정도로만 가열해 초대리를 만들어 고슬고슬하게 지은 따듯한 밥에 넣고 섞어 식힌다.
[단계 2] 달걀은 삶아 흰자와 노른자로 따로 체에 내려 가루를 만들어 놓는다.
[단계 3] 햄, 치즈는 원하는 모양틀로 찍는다.
[단계 4] 기름을 제거한 참치에 다진 양파와 셀러리, 마요네즈를 섞는다.
[단계 5] 칵테일 새우는 데쳐서 식힌다.
[단계 6] 모양틀에 밥을 찍어내고 그 위에 준비한 재료들을 올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (407, 164, 120.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (407, 238, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (407, 208, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (407, 10, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (407, 100, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (407, 47, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (407, 196, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (407, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (407, 36, 3.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (407, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (408, '두부구이, 버섯소스', 'medium', 30, '[단계 1] 두부를 1.5cm 두께로 잘라 물기를 뺀다.
[단계 2] 프라이팬에 올리브유를 두르고 두부를 굽는다.
[단계 3] 느타리버섯을 먹기 좋은 크기로 찢는다.
[단계 4] 느타리버섯을 올리브유에 살짝 볶는다.
[단계 5] 4에 발사믹크림, 올리고당을 넣어 졸인다.
[단계 6] 두부구이 위에 소스를 올린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (408, 23, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (408, 131, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (408, 153, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (408, 98, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (408, 144, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (408, 31, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (409, '고구마 김치', 'medium', 30, '[단계 1] 고구마를 먹기 좋은 크기로 썬다.
[단계 2] 고구마를 젓갈에 절인다.
[단계 3] 미나리, 홍고추를 먹기 좋은 크기로 썬다.
[단계 4] 양념 재료를 모두 섞는다.
[단계 5] 절인 고구마와 썰어둔 미나리, 홍고추, 양념을 섞어 무친다.
[단계 6] 참깨를 뿌려 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (409, 9, 35.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (409, 4, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (409, 97, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (409, 37, 0.80, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (409, 98, 0.50, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (409, 12, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (409, 295, 0.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (409, 171, 0.50, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (410, '담양식떡갈비&야채쌈', 'medium', 30, '[단계 1] 분쇄 우육과 돈육은 해동 후 핏물을 제거한다.
[단계 2] 두부는 끓는 물에 데쳐낸 후 으깬다.
[단계 3] 우육, 돈육, 다진양파, 다진대파, 으깬 두부(15g)에 간장과 설탕으로 간을 한 후 여러번 치댄다.
[단계 4] 점성이 생긴 고기를 동그랗게 성형한 후 팬에 구워낸다.
[단계 5] 쌈장에 으깬 두부(15g)와 해바라기 씨를 넣어 섞는다.
[단계 6] 떡갈비와 양념장, 야채쌈을 함께 제공한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (410, 23, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (410, 10, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (410, 11, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (410, 3, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (410, 2, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (410, 31, 0.50, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (410, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (411, '단감피클', 'easy', 30, '[단계 1] 단감의 껍질과 씨를 제거한다.
[단계 2] 단감을 깍둑썰기 한다.
[단계 3] 식초와 설탕과 물을 섞어 단촛물을 만든다.
[단계 4] 단촛물을 끓인다.
[단계 5] 단촛물을 식혀 단감에 부워 절인다.
[단계 6] 30분 정도 숙성시켜 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (411, 76, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (411, 36, 25.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (411, 53, 15.00, 'ml', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (412, '골뱅이무침과 삼겹살수육', 'medium', 45, '[단계 1] 양파는 도톰하게 모양대로 썰고, 대파는 2등분하고, 마늘은 꼭지를 제거하고, 알배추는 깨끗하게 씻는다.
[단계 2] 통조림 골뱅이는 체에 밭쳐 국물을 거르고, 끓는 물에 30초간 데쳐 건진 뒤 찬물에 헹군다.
[단계 3] 냄비에 양파, 대파를 깔고, 통마늘, 삼겹살, 월계수잎, 맛술을 넣어 센 불로 끓인다.
[단계 4] 채즙이 나오면 약한 불로 줄여 45분간 고기를 삶는다.
[단계 5] 파채에 데친 골뱅이와 양념장을 넣어 골고루 버무린다.
[단계 6] 삶은 수육은 한 김 식힌 뒤 한입 크기로 썰고, 알배추, 골뱅이무침을 곁들여 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (412, 274, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (412, 219, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (412, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (412, 37, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (412, 31, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (412, 29, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (412, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (412, 106, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (412, 53, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (413, '펜네 파스타 샐러드', 'medium', 10, '[단계 1] 펜네 파스타를 끓는 소금물에 기름을 약간 넣고 10분정도 삶아 체에 밭쳐 물기를 뺀다.
[단계 2] 청피망, 홍피망, 양파는 펜네 파스타 길이로 썰고, 완두콩은 끓는 물에 데쳐서 찬물에 헹군 뒤 물기를 뺀다.
[단계 3] 아스파라거스도 펜네 파스타 길이로 썰어 끓는 소금물에 데쳐 찬물에 식힌 뒤 물기를 뺀다.
[단계 4] 블랙올리브를 링 형태로 썬다.
[단계 5] 볼에 1과 바질 페스토, 소금을 넣고 섞는다.
[단계 6] 5와 나머지 야채들을 같이 섞어 접시에 담는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (413, 267, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (413, 241, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (413, 10, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (413, 253, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (413, 338, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (413, 155, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (413, 335, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (413, 233, 4.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (413, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (413, 84, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (413, 339, 3.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (414, '해산물 옥수수 오븐구이', 'hard', 30, '[단계 1] 새우는 껍질과 내장을 제거하고 바지락은 살짝 데쳐 입이 열리면 살을 발라낸다.
[단계 2] 해산물은 0.5cm 크기로 썰고 실파는 송송 썬다.
[단계 3] 토마토는 껍질을 벗겨 햄과 비슷한 크기로 썰고 바질은 굵게 채썬다.
[단계 4] 팬에 올리브오일은 두르고 햄, 옥수수를 넣어 볶다가 풀어둔 달걀을 넣고 스크램블을 만든다.
[단계 5] 4가 반 정도 익었을 때 해산물, 토마토, 바질을 넣고 홍고추로 장식하고 다 익으면 오븐용 용기에 담는다.
[단계 6] 5에 치즈를 0.5cm 넓이로 잘라 격자로 올리고 오븐에서 굽는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (414, 22, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (414, 87, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (414, 213, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (414, 340, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (414, 238, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (414, 291, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (414, 92, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (414, 64, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (414, 242, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (414, 208, 8.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (414, 97, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (414, 339, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (414, 84, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (414, 12, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (414, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (414, 337, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (415, '과일 요구르트 샐러드', 'medium', 30, '[단계 1] 메론의 껍질을 벗기고 2cm 정도의 주사위모양으로 썬다.
[단계 2] 사과는 껍질을 벗기고 메론과 같은 크기로 썬다.
[단계 3] 바나나도 껍질을 벗기고 같은 크기로 썬다.
[단계 4] 오렌지는 칼로 껍질을 도려내고 속살만 자른다.
[단계 5] 플레인 요구르트와 레몬주스, 오렌지주스를 섞어 드레싱을 만든다.
[단계 6] 볼에 과일을 한데 섞고 드래싱으로 버무려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (415, 57, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (415, 175, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (415, 81, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (415, 156, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (415, 341, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (415, 342, 5.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (416, '야채 과일 돌구이', 'easy', 30, '[단계 1] 냄비 전체에 작은 돌을 깔고 돌이 뜨거워질 때까지 불에 올려놓는다.
[단계 2] 단호박, 고구마, 오렌지를 0.5cm 두께로 자른다.
[단계 3] 2의 표면에 소금을 살짝 뿌린다.
[단계 4] 뜨거워진 돌 위에 3을 올린다.
[단계 5] 뚜껑을 닫고 약한 불에서 속이 익을 때 까지 굽는다.
[단계 6] 소금, 된장소스, 참깨소스 등 취향에 맞는 소스를 골라 찍어 먹는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (416, 65, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (416, 9, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (416, 81, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (416, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (417, '유부 우엉 잡채', 'medium', 30, '[단계 1] 우엉을 깨끗이 씻어 채 썬다.
[단계 2] 양파와 당근을 채 썬다.
[단계 3] 간장과 양념들을 넣고 채 썬 우엉을 졸인다.
[단계 4] 3이 80% 정도 졸았을 대 채 썬 양파와 당근을 넣는다.
[단계 5] 거의 다 졸여지면 채 썬 유부를 넣는다.
[단계 6] 참깨를 뿌려 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (417, 205, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (417, 288, 6.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (417, 10, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (417, 6, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (417, 153, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (417, 98, 6.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (417, 31, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (417, 36, 0.50, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (417, 171, 0.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (417, 32, 1.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (418, '치즈두부샐러드', 'medium', 30, '[단계 1] 유자청을 잘게 다진 뒤 저염간장, 식초, 올리브유, 레몬즙을 섞어 드레싱을 만든다.
[단계 2] 두부는 2cm 크기로 깍둑썰기 한다.
[단계 3] 까망베르치즈도 깍둑썰기 한다.
[단계 4] 새싹채소는 세척 후 건져 물기를 제거한다.
[단계 5] 그릇에 새싹채소를 담고 두부, 치즈를 얹는다.
[단계 6] 드레싱과 아몬드를 뿌린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (418, 208, 8.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (418, 23, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (418, 151, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (418, 343, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (418, 85, 6.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (418, 76, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (418, 106, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (418, 153, 3.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (418, 31, 2.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (419, '된장숙성저수분수육', 'medium', 50, '[단계 1] 돼지고기 앞다리 살에 칼집을 낸다.
[단계 2] 돼지고기에 된장, 생강가루, 다진마늘, 통후추, 월계수잎을 입혀 숙성시킨다.
[단계 3] 파와 대파는 큼지막하게 썰어 준비한다.
[단계 4] 냄비 혹은 오븐용기의 밑 부분에 양파와 대파를 놓아준다.
[단계 5] ④에 숙성시킨 돼지고기를 올려 약 50분 정도 가열하여 완전히 익혀준다.
[단계 6] 0.5cm 두께로 썰어서 제공한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (419, 10, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (419, 11, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (419, 30, 4.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (419, 38, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (419, 274, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (419, 13, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (419, 12, 4.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (420, '스마일오이피클', 'medium', 30, '[단계 1] 오이를 3등분하여 속을 파낸다.
[단계 2] 피망 및 파프리카는 U모양으로 휘어지게 썰어준다.
[단계 3] 배를 채 썰어 준다.
[단계 4] 오이 중앙에 파프리카와 배를 채워 넣는다.
[단계 5] 물, 식초, 설탕, 피클링 스파이스를 넣어 피클물을 만든다.
[단계 6] ④에 피클물을 넣고 30분 정도 숙성시킨다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (420, 55, 80.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (420, 63, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (420, 241, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (420, 267, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (420, 259, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (420, 76, 3.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (420, 36, 6.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (420, 53, 100.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (420, 281, 1.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (421, '케첩 완자', 'medium', 30, '[단계 1] 그릇에 다진고기, 파, 생강, 소금, 물 전분을 넣어 골고루 버무린 뒤 케첩을 넣는다.
[단계 2] 1을 한 방향으로 치댄 뒤 고기에 양념이 베도록 둔다.
[단계 3] 청경채는 1cm 정사각형 모양으로 썬다.
[단계 4] 2에 끈기가 생기도록 다시 치대준 뒤 지름 1.5cm의 완자 모양으로 빚는다.
[단계 5] 팬에 물을 넣고 끓으면 완자를 넣어 익힌다.
[단계 6] 청경채를 넣고 살짝 끓인 뒤 소금으로 간을 하고 소스가 약간 남도록 더 끓인다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (421, 114, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (421, 276, 10.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (421, 13, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (421, 163, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (421, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (422, '단호박 새우찜', 'medium', 20, '[단계 1] 단호박은 표면을 깨끗하게 씻어 물기를 제거하고 꼭지 부분의 윗면을 자르고 수저로 속을 파낸 후 소금을 뿌려 놓는다.
[단계 2] 새우살은 다지고 두부는 면보로 싸서 물기를 제거하고 곱게 으깨고 불린 건표고버섯과 청, 홍피망은 곱게 다지고 실파는 송송 썬다.
[단계 3] 2의 재료를 한 데 섞고 소금, 다진 마늘, 깨소금, 참기름, 흰 후춧가루를 넣고 양념하여 소를 만든다.
[단계 4] 1의 내부에 수분을 제거한다.
[단계 5] 4의 안쪽에 밀가루를 살짝 뿌리고 밀가루가 골고루 잘 묻도록 한다.
[단계 6] 준비된 소를 채운 후 잘라둔 꼭지 부분의 뚜껑을 덮어 김 오른 찜통에 20분가량 찐 뒤 4~6등분 하여 낸다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (422, 65, 125.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (422, 87, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (422, 23, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (422, 145, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (422, 334, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (422, 336, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (422, 291, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (422, 34, 8.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (422, 12, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (422, 39, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (422, 32, 1.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (422, 35, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (422, 330, 1.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (423, '두부 샌드위치', 'medium', 30, '[단계 1] 두부는 3cm 주사위모양으로 썰고 소금을 뿌려 간을 한다.
[단계 2] 과일은 5mm 주사위모양으로 썬 뒤 꿀을 넣고 버무린다.
[단계 3] 기름을 두른 팬에 1을 넣고 5면을 노릇하게 지진 뒤 종이타월로 기름기를 제거한다.
[단계 4] 3의 지지지 않은 한 쪽 면을 숟가락을 이용해 뚫리지 않게 조심스럼게 파낸다.
[단계 5] 속을 파낸 두부에 2를 채워 넣는다.
[단계 6] 민트로 장식한다');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (423, 23, 80.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (423, 248, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (423, 81, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (423, 92, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (423, 175, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (423, 57, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (423, 154, 10.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (423, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (423, 33, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (424, '레몬, 파슬리 빵가루를 입힌 도미', 'medium', 30, '[단계 1] 도미에는 소금과 후추로 밑간을 하고 마늘, 파슬리는 다진다.
[단계 2] 버터를 두른 팬에 다진 마늘을 넣고 마늘 향을 낸 버터물을 만든다.
[단계 3] 2에 빵가루를 섞어 믹싱볼로 옮겨 담는다.
[단계 4] 3에 다진 파슬리, 레몬주스, 레몬제스트, 소금, 후추를 넣고 고무주걱으로 잘 섞는다.
[단계 5] 도미를 양념하고 도미위에 4을 얹는다.
[단계 6] 5를 오븐에 굽는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (424, 340, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (424, 12, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (424, 129, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (424, 40, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (424, 341, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (424, 344, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (424, 345, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (424, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (424, 38, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (425, '미나리버섯고기말이&산채소스', 'medium', 30, '[단계 1] 돈등심은 널찍하게 성형한다.
[단계 2] 새송이 버섯은 길게 채썰고, 미나리도 비슷한 사이즈로 썰어 준다.
[단계 3] 고기에 미나리, 새송이를 감싸 말아 찹쌀가루를 묻혀 굽는다.
[단계 4] 참나물, 취나물, 올리브오일, 땅콩, 마늘, 후추를 믹서에 갈아 소스를 만든다.
[단계 5] 소스에 파마산 치즈를 섞어준다.
[단계 6] 구워진 고기에 소스를 곁들여 낸다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (425, 82, 24.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (425, 4, 18.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (425, 38, 0.30, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (425, 146, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (425, 91, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (425, 286, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (425, 84, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (425, 83, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (425, 233, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (425, 12, 1.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (426, '오이파프리카새콤무침', 'easy', 30, '[단계 1] 오이는 굵은 소금으로 문질러 깨끗이 씻는다.
[단계 2] 오이를 적당한 두께로 썰고 4등분 한다.
[단계 3] 파프리카는 깨끗이 씻은 후 씨를 제거한다.
[단계 4] 파프리카를 적당한 크기로 썬다.
[단계 5] 식초, 설탕, 물을 섞어 단촛물을 만든다.
[단계 6] 단촛물에 오이, 파프리카를 버무린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (426, 55, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (426, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (426, 76, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (426, 36, 2.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (427, '시금치들깨무침', 'medium', 30, '[단계 1] 파, 마늘은 다진다.
[단계 2] 냄비에 물과 소금을 넣고 끓인다.
[단계 3] 세척한 시금치를 데친다.
[단계 4] 데친 시금치는 찬물에 헹구어 물기를 짠 다음 먹기 좋게 썬다.
[단계 5] 시금치에 들깨가루, 파, 마늘, 통깨, 들기름을 넣고 무친다.
[단계 6] 접시에 담아서 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (427, 1, 70.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (427, 10, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (427, 12, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (427, 178, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (427, 39, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (427, 177, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (427, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (428, '채소롤초밥', 'medium', 10, '[단계 1] 가지와 오이는 세로로 얇게 썬다.
[단계 2] 얇게 썬 오이는 소금(0.2ts)에 10분간 절인 뒤 물기를 꼭 짠다.
[단계 3] 얇게 썬 가지는 약한 불로 달군 마른 팬에 올려 앞뒤로 노릇하게 구워 꺼낸다.
[단계 4] 밥에 남은 양념을 넣어 고루 섞는다.
[단계 5] 소금에 절인 오이와 구운 가지 위에 밥을 한입 크기로 뭉쳐 올린다.
[단계 6] 돌돌 말아 그릇에 담아 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (428, 327, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (428, 55, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (428, 164, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (428, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (428, 71, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (428, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (428, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (428, 171, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (429, '사과와 양파를 곁들인 돼지등심 요리', 'medium', 30, '[단계 1] 돼지등심은 4cm 정도 두께로 썬다.
[단계 2] 볼에 건오레가노, 건바질, 소금, 통후추 간 것을 섞어 허브 믹스를 만들어 1에 골고루 묻힌다.
[단계 3] 팬을 가열하여 올리브오일을 두르고 등심의 양면이 갈색이 되게 구운 뒤 알루미늄 호일에 싸서 오븐에서 완전히 익힌다.
[단계 4] 양파는 슬라이스하고, 사과는 껍질과 씨를 제거한 후 얇게 슬라이스 한다.
[단계 5] 또 다른 팬에 기름을 두르고 고기가 완전히 익을 동안 양파와 사과를 옅은 갈색이 나도록 볶아준다.
[단계 6] 고기가 다 익었으면 꺼내서 적당한 두께로 썰고 볶은 양파와 사과를 곁들인다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (429, 224, 100.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (429, 331, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (429, 332, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (429, 84, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (429, 10, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (429, 57, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (429, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (429, 38, 2.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (430, '수퍼 브리또', 'hard', 30, '[단계 1] 양파, 할라피뇨는 잘게 다지고 토마토는 끓는 물에 데쳐 껍질과 씨를 제거하고 잘게 썰어 볶다가 간 소고기를 넣고 소금, 후추로 간한다.
[단계 2] 베이컨, 마늘, 양파는 잘게 썰고 강낭콩은 체에 받쳐 물기를 제거한다.
[단계 3] 팬에 베이컨을 볶아 기름을 제거하고 2의 마늘, 양파를 볶다가 강낭콩을 넣고 건바질 조금, 소금, 후추로 간을 한 뒤 믹서에 갈아 퓨레로 만든다.
[단계 4] 배, 오렌지를 1cm 주사위모양으로 썰고 레몬주스, 파프리카 가루와 섞어 살사를 만든다.
[단계 5] 기름 없는 팬에 또띠아를 살짝 구운 뒤 강낭콩 퓨레를 얇게 바르고 볶은 소기기, 채 썬 양상추, 아보카도, 베이컨, 토마토, 사워크림을 넣고 만다.
[단계 6] 5에 배, 오렌지 살사를 곁들인다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (430, 10, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (430, 335, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (430, 3, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (430, 84, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (430, 203, 6.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (430, 251, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (430, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (430, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (430, 264, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (430, 12, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (430, 10, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (430, 63, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (430, 81, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (430, 341, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (430, 329, 1.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (431, '제주도 빙떡, 귤간장소스', 'medium', 30, '[단계 1] 메밀가루에 물을 섞어 메밀 반죽을 만든다.
[단계 2] 무를 채 썰어 다시마 육수에 삶는다.
[단계 3] 다진 파, 마늘을 볶은 뒤 무와 통깨, 참기름과 섞어 버무린다.
[단계 4] 전병을 부친 뒤 무를 넣어 만다.
[단계 5] 귤 즙을 조린 뒤 저염간장을 넣고 섞는다.
[단계 6] 접시에 담는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (431, 34, 50.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (431, 7, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (431, 38, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (431, 71, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (431, 12, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (431, 214, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (431, 31, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (431, 39, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (431, 32, 2.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (432, '퓨전떡갈비', 'medium', 3, '[단계 1] 고기는 곱게 다지고 야채는 껍질을 제거한다.
[단계 2] 배는 갈아 즙을 만들고 양파는 다진 뒤 기름을 두르지 않은 팬에 살짝 볶는다.
[단계 3] 마늘과 생강을 곱게 다져 배즙과 섞은 뒤 다진 고기에 넣어 치댄다.
[단계 4] 떡갈비 반죽에 저염간장, 참기름을 이용해 밑간을 하고 찹쌀가루를 넣어 찰기를 준다.
[단계 5] 둥근 모양으로 빚은 뒤 중간을 살짝 눌러 기름을 두른 팬에 굽는다.
[단계 6] 170℃ 오븐에 3분 정도 구워 속까지 익힌다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (432, 14, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (432, 16, 6.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (432, 10, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (432, 63, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (432, 12, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (432, 13, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (432, 31, 3.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (432, 146, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (432, 32, 2.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (432, 171, 5.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (433, '마늘칩 감자샐러드', 'medium', 30, '[단계 1] 감자는 깨끗이 씻어 껍질째 한입 크기로 깍둑썰기 한 뒤 삶는다.
[단계 2] 마늘은 얇게 편으로 썬다.
[단계 3] 양파는 굵게 다진다.
[단계 4] 팬에 식용유를 두르고 다진양파를 볶은 뒤 마늘은 바삭하게 굽는다.
[단계 5] 마요네즈, 머스터드, 플레인요거트, 설탕을 섞어 드레싱을 만든다.
[단계 6] 감자와 볶은 양파, 드레싱을 골고루 버무리고 마늘칩과 파슬리를 뿌린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (433, 8, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (433, 12, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (433, 10, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (433, 170, 10.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (433, 59, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (433, 301, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (433, 36, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (433, 77, 1.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (434, '두부튀김&무소스', 'medium', 30, '[단계 1] 두부는 2cm의 정사각형으로 썰어 전분과 계란물을 무쳐 기름에 튀긴다.
[단계 2] 무는 믹서기나 강판에 갈아준다.
[단계 3] 끓는 물에 가쓰오부시를 살짝 넣었다 빼내어 국물을 우려낸다.
[단계 4] 무와 가쓰오부시 국물에 설탕, 미향, 레몬즙, 식초, 저염간장을 넣고 섞어준다.
[단계 5] 깻잎은 곱게 채를 쳐준다.
[단계 6] 접시에 두부와 깻잎을 담고, 소스를 곁들여 낸다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (434, 23, 70.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (434, 22, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (434, 2, 2.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (434, 115, 10.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (434, 33, 10.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (434, 289, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (434, 7, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (434, 88, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (434, 63, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (434, 31, 3.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (434, 36, 1.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (435, '오징어튀김&딸기쨈', 'medium', 30, '[단계 1] 오징어를 먹기 좋은 크기로 썬다.
[단계 2] 오징어를 살짝 데친 후 물기를 제거한다.
[단계 3] 밀가루에 물, 계란, 후추를 넣어 튀김반죽을 만든다.
[단계 4] 오징어에 튀김 반죽을 묻혀 식용유에 튀긴다.
[단계 5] 키친타올에 올려 기름을 제거한다.
[단계 6] 딸기잼과 같이 곁들여 낸다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (435, 94, 35.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (435, 34, 70.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (435, 53, 50.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (435, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (435, 33, 500.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (435, 58, 5.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (436, '감귤콩샐러드', 'medium', 30, '[단계 1] 감귤은 껍질을 제거하고 알을 분리하여 반을 갈라 준다.
[단계 2] 치커리는 한입크기로 썰어 준비한다.
[단계 3] 완두콩, 수수, 율무, 병아리콩은 하루 전에 물에 불린 후 삶아준다.
[단계 4] 삶은 콩은 체에 받쳐 물기를 제거한다.
[단계 5] 손질한 재료를 모두 섞는다.
[단계 6] 올리브오일과 유자청을 넣어 버무린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (436, 253, 8.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (436, 275, 4.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (436, 7, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (436, 85, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (436, 240, 6.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (436, 84, 10.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (437, '아보카도 수란샐러드', 'medium', 25, '[단계 1] 상추는 깨끗하게 씻어 한입 크기로 뜯고, 레몬은 모양대로 얇게 썰고, 아보카도는 씨와 껍질을 제거한 뒤 한입 크기로 썬다.
[단계 2] 파프리카는 씨를 제거한 뒤 한입 크기로 썰고, 토마토는 한입 크기로 썬다.
[단계 3] 끓는 소금물(물4컵+소금0.2ts)에 식초를 넣은 뒤 달걀을 넣고 수란을 만든다.
[단계 4] 드레싱을 만든다.
[단계 5] 그릇에 손질한 채소를 담고 수란과 얇게 썬 레몬을 올려 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (437, 3, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (437, 88, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (437, 203, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (437, 92, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (437, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (437, 328, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (437, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (437, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (437, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (437, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (437, 339, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (437, 153, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (437, 106, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (438, '나스와 샐러드', 'medium', 30, '[단계 1] 달걀은 완숙으로 삶아 껍질을 벗긴 뒤 세로로 4등분하고 완두콩은 끓는 물에 삶아 찬물에 헹군 뒤 물기를 제거한다.
[단계 2] 오이는 1cm 주사위모양으로 썰고 양파는 링으로 슬라이스 하고 로메인은 먹기 좋게 뜯어 찬물에 담군다.
[단계 3] 토마토는 달걀과 같은 모양으로 자르고 홍고추는 어슷하게 썰고 참치는 덩어리가 있게 기름기를 뺀다.
[단계 4] 바질은 슬라이스하고 마늘은 다진다.
[단계 5] 볼에 올리브오일과 레드와인식초, 머스타드, 설탕, 다진마늘을 섞어 드레싱을 만든다.
[단계 6] 다른 볼에 준비해둔 야채들과 달걀, 참치를 넣고 드래싱을 끼얹어 버무린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (438, 22, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (438, 253, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (438, 55, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (438, 92, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (438, 346, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (438, 323, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (438, 97, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (438, 338, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (438, 339, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (438, 84, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (438, 76, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (438, 12, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (438, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (439, '모듬옥수수', 'medium', 30, '[단계 1] 청피망, 당근, 닭고기를 옥수수알 크기로 썬다.
[단계 2] 팬에 닭고기를 볶는다.
[단계 3] 2에 당근을 넣고 볶는다.
[단계 4] 3에 잣, 청피망, 옥수수를 넣고 볶는다.
[단계 5] 4에 간을 한다.
[단계 6] 물전분으로 농도를 맞춘다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (439, 242, 35.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (439, 176, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (439, 267, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (439, 6, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (439, 20, 35.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (439, 33, 1.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (439, 347, 6.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (439, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (440, '산마드래싱과 실곤약 샐러드', 'medium', 30, '[단계 1] 비타민과 치커리는 한입 크기로 적당히 뜯어 찬물에 담궈 두었다가 먹기 전에 물기를 제거한다.
[단계 2] 믹서에 산마와 우유, 레몬주스, 오렌지주스, 호두, 소금을 넣고 곱게 갈아 드래싱을 만든다.
[단계 3] 배는 껍질을 제거하고 4등분 한 뒤 씨를 제거하고 4~5mm 정도의 두께로 슬라이스한다.
[단계 4] 팬에 포도주스를 붓고 슬라이스한 배를 넣어 배가 포도색이 되도록 졸인다.
[단계 5] 훈제오리가슴살을 얇게 슬라이스 한다.
[단계 6] 접시에 5와 4, 실곤약, 야채들을 보기 좋게 담고 드래싱을 끼얹는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (440, 240, 8.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (440, 63, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (440, 326, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (440, 21, 10.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (440, 341, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (440, 342, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (440, 117, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (440, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (441, '산호두부', 'medium', 30, '[단계 1] 두부를 1cm 주사위모양으로 자른다.
[단계 2] 1을 뜨거운 물에 넣었다가 꺼내 물기를 제거한다.
[단계 3] 당근과 돼지고기를 잘게 다진다.
[단계 4] 팬에 고추기름을 두른 뒤 3을 넣고 볶는다.
[단계 5] 파, 다진생강, 물, 완두콩, 소금, 두부를 넣고 간이 들도록 졸인다.
[단계 6] 물 전분을 넣어 소스의 농도를 맞춘다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (441, 23, 35.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (441, 6, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (441, 258, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (441, 253, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (441, 10, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (441, 13, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (441, 347, 10.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (441, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (442, '시금치 돼지고기 볶음', 'medium', 30, '[단계 1] 돼지고기는 채 썬 뒤 소금, 물전분을 넣고 양념한다.
[단계 2] 양념한 고기를 기름 두른 팬에 볶으면서 달라붙지 않도록 저어준다.
[단계 3] 시금치와 부추를 4~5cm 가량으로 썬다.
[단계 4] 가열된 팬에 기름을 두르고 파, 생강, 팔각을 넣어 향을 낸다.
[단계 5] 4에 2와 간장을 넣고 볶는다.
[단계 6] 물 전분을 넣어 농도를 맞춘 뒤 마직막으로 부추, 시금치를 넣는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (442, 347, 10.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (442, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (442, 1, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (442, 5, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (442, 31, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (442, 10, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (442, 13, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (442, 33, 2.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (443, '발사믹과 로즈마리로 향을 낸 오븐구이 야채', 'medium', 30, '[단계 1] 단호박, 비트, 고구마, 당근은 껍질을 벗긴다.
[단계 2] 1을 자연스럽게 2~2.5cm 두께로 썬다.
[단계 3] 볼에 2와 발사믹 식초, 꿀, 로즈마리 잎을 넣고 버무린다.
[단계 4] 소금, 후추로 간을 한다.
[단계 5] 150℃의 예열된 오븐에서 익을 때까지 굽는다.
[단계 6] 중간에 뒤집어 주어 고루 익히도록 한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (443, 65, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (443, 6, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (443, 73, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (443, 9, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (443, 154, 8.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (443, 265, 30.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (443, 105, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (443, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (443, 38, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (444, '종이에 싸서 구운 도미(파필로테)', 'hard', 30, '[단계 1] 도미살에 소금, 후추로 밑간한다.
[단계 2] 셀러리, 당근, 대파, 양파, 피망은 채 썰고 브로컬리는 작은 송이로 자르고 레몬 껍질은 얇게 제스트하고 팽이버섯은 밑동을 자른다.
[단계 3] 유산지는 반을 접었다가 편 뒤 안쪽에 부드러운 버터를 바른다.
[단계 4] 4의 버터를 바른 한 쪽 면에 셀러리, 당근, 대파, 팽이버섯, 양파, 피망, 레몬 제스트를 준비된 분량의 반 정도 놓고 밑간한 도미살을 올린다.
[단계 5] 다시 남은 야채들을 도미위에 올리고 유산지의 한 면으로 야채를 덮어주고, 모서리의 뚫린 곳을 접어 봉해준다.
[단계 6] 160℃로 예열된 오븐에서 익혀준다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (444, 340, 65.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (444, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (444, 38, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (444, 100, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (444, 6, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (444, 11, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (444, 10, 6.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (444, 143, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (444, 344, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (444, 110, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (444, 40, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (444, 40, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (444, 233, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (444, 38, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (444, 331, 0.20, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (444, 12, 0.30, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (444, 10, 0.50, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (445, '무염 겉절이', 'medium', 30, '[단계 1] 알배추는 세척 후 먹기 좋은 크기로 잘라 물에 담군다.
[단계 2] 대파와 풋고추는 어슷썰고 양파는 굵게 채 썬다.
[단계 3] 마늘은 곱게 다지고 사과는 믹서에 간다.
[단계 4] 사과즙, 다진마늘, 고춧가루, 매실액, 식초를 섞어 겉절이 양념을 만든다.
[단계 5] 물에 담궈뒀던 알배추를 건져 물기를 뺀 뒤 넓은 볼에 담는다.
[단계 6] 알배추와 양파, 대파, 풋고추, 무청을 겉절이 양념에 골고루 버무린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (445, 236, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (445, 10, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (445, 11, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (445, 280, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (445, 12, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (445, 7, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (445, 37, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (445, 52, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (445, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (445, 57, 10.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (446, '닭가슴살호두크로켓', 'hard', 30, '[단계 1] 양파, 대파, 호두, 닭가슴살은 잘게 다진다.
[단계 2] ①에 물기를 제거한 두부와 생강, 마늘, 후추를 섞어 반죽한다.
[단계 3] 반죽을 쌀가루, 계란물, 빵가루 순으로 묻히고 튀겨 크로켓을 만든다.
[단계 4] 믹서에 두부, 두유를 넣고 갈아 두부 마요네즈를 만든다.
[단계 5] 순무와 양파는 다지고, 계란은 삶아 다져 준비한다.
[단계 6] 두부 마요네즈에 ⑤의 재료와 설탕, 레몬, 식초, 땅콩버터, 후추, 홀그레인, 파슬리가루를 넣어 타르소스를 만든다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (446, 19, 80.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (446, 23, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (446, 10, 12.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (446, 11, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (446, 117, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (446, 83, 2.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (446, 12, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (446, 13, 0.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (446, 38, 0.30, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (446, 36, 3.80, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (446, 76, 2.50, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (446, 22, 65.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (446, 121, 7.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (446, 129, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (446, 7, 24.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (446, 204, 45.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (446, 40, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (446, 88, 7.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (446, 77, 0.50, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (447, '누룽지상추샐러드&유자드레싱', 'medium', 30, '[단계 1] 로메인 상추를 한 입 크기로 썬다.
[단계 2] 파프리카는 사방 0.3cm 크기로 썬다.
[단계 3] 누룽지를 튀긴 후 으깬다.
[단계 4] 유자청, 레몬즙, 올리브유, 식초, 후추를 섞어 드레싱을 만든다.
[단계 5] 로메인 상추 위에 파프리카와 튀긴 누룽지를 고명으로 올린다.
[단계 6] 드레싱을 얹어 낸다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (447, 181, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (447, 3, 7.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (447, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (447, 85, 7.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (447, 33, 500.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (447, 153, 3.50, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (447, 106, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (447, 76, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (447, 38, 0.10, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (448, '견과류 미숫가루 빵', 'easy', 10, '[단계 1] (아몬드우유) 믹서기에 아몬드와 우유를 갈아 아몬드 우유를 만든다.
[단계 2] 밀가루, 미숫가루, 이스트, 소금, 달걀, 아몬드 우유를 넣어 손으로 반죽하다가 아몬드, 해바라기씨, 호박씨 넣고 반죽한다.
[단계 3] ②이 한 덩어리가 되면 무염버터를 넣어 반죽을 하고 마지막으로 건포도를 넣어 섞는다.
[단계 4] "크기가 2.5배가 될 때까지 1차 발효하고 반죽을 접어 공기를 빼고 3등분으로 나눠 둥글리기 후 10분 정도 중간 발효한다.
★반죽이 달라붙으면 덧가루를 뿌리면서 작업하면 수월해요."
[단계 5] 발효가 끝나면 다시 둥글리기를 해주고 반죽의 매끄러운 면이 위로 가도록 팬닝 후 40~50분 2차 발효 시킨다.
[단계 6] "180℃ 오븐에서 20~25분 동안 구워서 완성시킨 뒤 위에 버터를 바르고 아몬드 슬라이스와 미숫가루로 토핑한다.
★ 버터는 살짝 녹여 사용하세요."');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (448, 21, 30.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (448, 21, 180.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (448, 40, 10.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (448, 343, 10.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (448, 306, 10.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (449, '밀라노 스타일 포크 커틀렛', 'medium', 30, '[단계 1] 돼지고기(등심)을 고기망치로 두드려 1cm 정도 두께로 편다.
[단계 2] 돼지등심에 소금, 후추로 간을 한다.
[단계 3] 파마산치즈, 빵가루, 건바질, 타임을 섞어 허브 빵가루를 만든다.
[단계 4] 고기에 밀가루, 달걀물, 허브 빵가루 순으로 묻힌다.
[단계 5] 가열한 팬에 기름을 두르고 커틀렛을 익힌다.
[단계 6] 커틀렛이 익으면 기름을 빼고 그릇에 담는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (449, 224, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (449, 34, 4.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (449, 22, 12.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (449, 129, 4.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (449, 339, 0.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (449, 40, 0.50, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (449, 33, 1.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (449, 88, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (449, 233, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (449, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (449, 38, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (450, '삼색 꽃 화전', 'medium', 30, '[단계 1] 시금치는 데친 뒤 믹서에 곱게 갈고 치자는 따뜻한 물에 불린다.
[단계 2] 곱게 간 시금치에 데쳤던 물을 넣고 가열한 뒤 찹쌀가루 절반에 조금씩 부어 익반죽 한다.
[단계 3] 남은 절반의 찹쌀가루에 가열한 치자물을 조금씩 부어 익반죽 한다.
[단계 4] 30분 간 휴지시킨 뒤 팬에 기름을 두르고 적당한 크기로 빚은 화전을 지진다.
[단계 5] 한쪽 면을 익힐 때 위에 꽃을 올린 뒤 뒤집어 살짝만 지진다.
[단계 6] 꿀과 설탕, 물을 1:2:3 비율로 섞어 끓여 시럽을 만들어 화전 위에 끼얹고 타임으로 장식한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (450, 146, 60.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (450, 1, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (450, 74, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (450, 90, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (450, 36, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (450, 154, 20.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (451, '알록달록연근튀김', 'medium', 30, '[단계 1] 연근은 얇게 썰어 찬물에 담가 전분기를 제거한다.
[단계 2] 건새우는 곱게 갈아준다.
[단계 3] 시금치, 비트는 각각 믹서기에 갈아 즙을 준비한다.
[단계 4] 튀김가루에 새우가루와 물을 넣어 반죽을 한다.
[단계 5] 반죽에 시금치, 카레, 비트를 각각 넣어 3가지 색의 반죽을 만든다.
[단계 6] 연근에 전분가루를 묻히고 튀김옷을 입혀 바삭하게 튀겨낸다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (451, 333, 22.18, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (451, 73, 2.12, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (451, 1, 2.12, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (451, 120, 1.52, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (451, 72, 0.30, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (451, 163, 2.25, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (451, 34, 4.25, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (451, 35, 0.05, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (451, 348, 500.00, 'ml', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (452, '잎채소튀김', 'medium', 30, '[단계 1] 볼에 튀김가루, 계란 물을 섞어 반죽을 만든 후 얼음을 넣어 차갑게 한다.
[단계 2] 깻잎, 상추, 배추는 깨끗하게 씻어 준비한다.
[단계 3] 재료를 먹기 좋은 크기로 썬다.
[단계 4] 냄비에 콩기름을 부은 후 적당한 온도가 될 때까지 가열한다.
[단계 5] 야채에 반죽을 입힌다.
[단계 6] 노릇하게 튀긴다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (452, 2, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (452, 3, 6.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (452, 285, 7.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (452, 22, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (452, 34, 10.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (452, 33, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (452, 349, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (453, '포항초사과샐러드', 'medium', 30, '[단계 1] 포항초는 세척하고 3cm 크기로 자른다.
[단계 2] 당근은 얇게 채 썰어주고, 사과는 껍질 채로 채 썰어 설탕물에 담가 둔다.
[단계 3] 양파와 파프리카는 작은 큐브 모양으로 썬다.
[단계 4] 저염간장, 레몬즙, 설탕, 양파, 파프리카를 넣어 오리엔탈 드레싱을 만든다.
[단계 5] 포항초에 당근과 사과를 넣어 섞어준다.
[단계 6] 샐러드에 오리엔탈 드레싱을 곁들여 제공한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (453, 57, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (453, 6, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (453, 10, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (453, 66, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (453, 76, 0.20, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (453, 31, 0.40, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (453, 36, 0.20, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (454, '시금치 후무스', 'easy', 3, '[단계 1] 대파는 송송 썰고, 시금치는 깨끗하게 씻어 물기를 제거한다.
[단계 2] 약한 불로 달군 팬에 올리브유를 두른 뒤 불린 병아리콩을 넣고 3분간 볶는다.
[단계 3] 물(5컵)을 부어 중간 불로 삶고, 물이 졸아들면 우유를 넣은 뒤 양이 절반이 될 때까지 졸인다.
[단계 4] 끓는 소금물(물5컵+천일염0.5Ts)에 시금치를 넣어 5분간 데치고, 찬물에 담가 헹군 뒤 물기를 꼭 짠다.
[단계 5] 믹서에 병아리콩조림, 데친 시금치, 라임즙, 백후춧가루, 넛맥가루를 넣어 곱게 갈아 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (454, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (454, 1, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (454, 21, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (454, 153, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (454, 135, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (454, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (455, '매실장아찌와 과매기구이', 'medium', 30, '[단계 1] 과메기는 꼬리를 잘라낸다.
[단계 2] 다진 생강과 마늘즙을 내어 손질한 과메기 위에 뿌린다.
[단계 3] 고추장, 다진 마늘, 다진 파, 매실액, 고춧가루, 후춧가루, 물을 섞어 양념장을 만든다.
[단계 4] 매실장아찌는 채썬다.
[단계 5] 팬에 과메기를 놓고 고추장양념을 발라가며 살짝 굽는다.
[단계 6] 매실장아찌를 구운 과메기위에 올려 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (455, 10, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (455, 13, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (455, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (455, 10, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (455, 12, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (455, 214, 3.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (455, 31, 2.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (455, 52, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (455, 37, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (455, 53, 15.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (455, 39, 0.10, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (455, 70, 0.10, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (456, '김치밥그라탕', 'medium', 30, '[단계 1] 김치, 양파, 버섯은 다진다.
[단계 2] 방울토마토는 4등분한다.
[단계 3] 팬에 올리브유를 두르고 김치, 양파, 버섯, 토마토를 볶는다.
[단계 4] 밥을 넣어 볶은 뒤 간장으로 간한다.
[단계 5] 3, 4를 그릇에 담고 피자치즈를 올려 전자렌지에 치즈가 녹을 정도로 익힌다.
[단계 6] 실파를 뿌려 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (456, 164, 180.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (456, 24, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (456, 10, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (456, 273, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (456, 50, 200.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (456, 153, 12.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (456, 31, 4.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (456, 208, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (456, 291, 5.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (457, '누룽지굴죽', 'easy', 2, '[단계 1] 굴은 소금물에 흔들어 씻어 굵게 다진다.
[단계 2] 부추는 씻어 송송 썬다.
[단계 3] 누룽지에 다시마국물을 넣고 2분간 불린 뒤 끓인다.
[단계 4] 누룽지가 거의 퍼졌을 때 굴을 넣고 살짝 끓인다.
[단계 5] 죽이 퍼지면 부추를 넣고 잠시 끓인다.
[단계 6] 그릇에 담고 구운 파래김을 부스러뜨려 얹어낸다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (457, 181, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (457, 53, 2.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (457, 53, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (457, 5, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (457, 31, 3.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (457, 32, 2.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (458, '쇠고기말이 쌈밥', 'medium', 30, '[단계 1] 소고기는 살코기로 손바닥 크기로 얇게 저며 양념에 재운다.
[단계 2] 당근과 양파는 채 썰어 팬에 볶으면서 소금으로 간한다.
[단계 3] 오이피클은 물기를 제거하여 채 썰고 깻잎은 깨끗이 씻어 물기를 뺀다.
[단계 4] 밥을 고슬고슬하게 지어 밑간을 하고 준비한 당근과 양파, 오이피클을 넣고 잘 섞어 한 입 크기로 뭉쳐 놓는다.
[단계 5] 밑간한 소고기를 넓게 펴고 전분을 뿌린 뒤 깻잎을 깔고 준비한 밥을 올려 싼다.
[단계 6] 팬에 식용유를 두르고 말아놓은 쌈밥을 굴려가며 소고기가 익을 때 까지 익힌다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (458, 6, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (458, 305, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (458, 10, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (458, 2, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (458, 164, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (458, 163, 6.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (458, 33, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (458, 32, 2.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (458, 31, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (458, 216, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (458, 32, 1.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (458, 337, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (459, '스테이크 샐러드', 'medium', 30, '[단계 1] 소고기등심에 소금, 후추로 간하고 팬에서 기호에 따라 굽는다. (스테이크 굽기 정도는 기호에 따라 조절한다.)
[단계 2] 양파는 얇게 링으로 썰고 로메인은 적당한 크기로 찢고 래디쉬도 얇게 썰어 찬 물에 담궈둔다.
[단계 3] 발사믹 식초에 올리브오일, 소금, 후추를 넣고 소스를 만든다. (기호에 따라 양파 다진 것 등을 첨가할 수 있다.)
[단계 4] 2를 건져내 물기를 제거하고 소금, 후추로 간을 한다.
[단계 5] 스테이크를 슬라이스 하여 접시에 앞 쪽에 담는다.
[단계 6] 준비된 야채에 드래싱을 넣고 섞은 뒤 스테이크 옆에 담는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (459, 323, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (459, 50, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (459, 346, 8.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (459, 265, 4.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (459, 84, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (459, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (459, 38, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (460, '씨앗죽', 'medium', 30, '[단계 1] 쌀을 깨끗이 씻어 5시간 정도 불린다.
[단계 2] 불린 쌀을 절구에 넣어 쌀알이 반 정도 부서지도록 간다.
[단계 3] 참깨, 아몬드, 땅콩, 호박씨를 믹서기에 간다.
[단계 4] 냄비에 쌀과 물을 넣고 끓인다.
[단계 5] 쌀알이 익으면 3의 씨앗가루를 넣고 끓인다.
[단계 6] 소금간을 하고 준비한 그릇에 담아낸다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (460, 121, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (460, 171, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (460, 116, 4.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (460, 83, 4.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (460, 53, 90.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (460, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (461, '치킨 쇠고기 땅콩소스 꼬치', 'medium', 30, '[단계 1] 닭가슴살과 소고기안심을 먹기 좋은 크기로 자른다.
[단계 2] 간장, 카레가루, 땅콩버서, 참기름, 올리브오일, 설탕, 다진 생강을 섞어 소스를 만든다.
[단계 3] 꼬치에 1을 번갈아 끼운다.
[단계 4] 고기를 끼운 꼬치에 2의 소스를 바른다.
[단계 5] 오븐을 176℃로 예열한다.
[단계 6] 예열된 오븐에 소스를 바른 꼬치를 구워준다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (461, 19, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (461, 31, 3.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (461, 120, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (461, 40, 3.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (461, 32, 0.50, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (461, 84, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (461, 36, 1.50, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (461, 13, 1.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (462, '토마토 야채 오븐구이', 'medium', 30, '[단계 1] 양파는 링으로 자르고 나머지 야채는 0.5cm 주사위모양으로 잘라 볼에 담는다.
[단계 2] 볼에 담긴 야채에 소금을 뿌려 골고루 간이 베이도록 섞는다.
[단계 3] 오븐용기에 야채를 가지런히 깔고 올리브 오일을 뿌리뒤 소금과 후추로 간을 한다.
[단계 4] 그릇에 파마산 치즈와 빵가루를 넣고 잘 섞는다.
[단계 5] 3의 야채 위에 4를 뿌려 덮는다.
[단계 6] 180℃로 예열된 오븐에 굽는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (462, 8, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (462, 9, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (462, 241, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (462, 6, 12.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (462, 38, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (462, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (462, 346, 12.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (462, 92, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (462, 233, 2.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (462, 129, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (462, 339, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (463, '해초탕수', 'medium', 30, '[단계 1] 미역과 파래는 깨끗이 씻어 물기를 짜서 잘게 다지고, 김은 살짝 구워 부스러뜨린다.
[단계 2] 양파와 유자청 건더기는 잘게 다진다.
[단계 3] 1과 2를 합해 감자전분과 달걀을 넣어 반죽한다.
[단계 4] 반죽을 동그랗게 뭉쳐 기름에 튀긴다.
[단계 5] 유자청 국물에 물을 섞어 팬에 넣고 걸쭉하게 끓여 소스를 만든다.
[단계 6] 해초튀김에 소스를 곁들여 낸다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (463, 53, 7.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (463, 24, 1.30, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (463, 10, 7.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (463, 85, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (463, 53, 20.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (463, 214, 4.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (463, 12, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (463, 115, 10.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (463, 22, 7.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (463, 33, 4.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (464, '호두떡볶이', 'medium', 30, '[단계 1] 호두는 굵게 다진다.
[단계 2] 다진 호두는 마른 팬에 살짝 볶는다.
[단계 3] 팬에 기름을 두르고 떡이 말랑해질 때까지 볶는다.
[단계 4] 떡이 익으면 올리고당과 간장을 넣어 살짝 볶는다.
[단계 5] 호두를 넣어 맛이 어우러지도록 조금 더 볶는다.
[단계 6] 검은깨를 뿌려내 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (464, 117, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (464, 153, 4.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (464, 222, 80.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (464, 98, 20.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (464, 31, 1.50, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (465, '취나물들깨무침', 'medium', 30, '[단계 1] 취나물을 끓는 물에 살짝 데친다.
[단계 2] 데친 취나물은 찬물에 헹군다.
[단계 3] 취나물을 가볍게 짜서 물기를 제거하고 5cm 길이로 자른다.
[단계 4] 나머지 재료를 모두 섞어 양념장을 준비한다.
[단계 5] 볼에 취나물을 담고 양념장을 넣어 조물조물 무쳐낸다.
[단계 6] 무쳐낸 나물을 그릇에 담아 마무리한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (465, 31, 1.50, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (465, 35, 0.50, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (465, 214, 2.25, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (465, 12, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (465, 177, 3.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (465, 178, 6.00, 'g', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (466, '가지볶음', 'medium', 30, '[단계 1] 가지를 깨끗하게 씻는다.
[단계 2] 가지를 1x1x4cm 크기로 자른다.
[단계 3] 생강을 곱게 다진다.
[단계 4] 다진 생강과 고추장, 물엿, 통깨를 섞어 양념장을 만든다.
[단계 5] 팬에 들기름을 넣고 센불에서 가지를 볶는다.
[단계 6] 가지가 다 볶아지면 양념장을 넣고 섞일 정도로만 볶는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (466, 187, 70.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (466, 13, 0.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (466, 29, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (466, 231, 2.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (466, 39, 0.50, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (466, 177, 2.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (467, '브로콜리 쇠고기 볶음', 'medium', 10, '[단계 1] 브로콜리는 소금물에 담궜다가 씻는다.
[단계 2] 브로콜리를 작은 송이로 자른 뒤 기름, 소금을 넣은 물에 데쳐 찬물에 헹군다.
[단계 3] 생강과 당근, 마늘, 소고기를 얇게 슬라이스 한다.
[단계 4] 소고기를 밑간 한 뒤 10분 정도 재웠다가 기름을 두르고 살짝 익힌다.
[단계 5] 마늘, 생강, 당근, 익혀둔 소고기를 팬에 넣고 브로콜리를 넣어 볶는다.
[단계 6] 물 전분을 이용해 소스의 농도를 맞춘다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (467, 149, 70.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (467, 347, 6.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (467, 6, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (467, 12, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (467, 31, 3.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (467, 13, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (467, 36, 3.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (467, 348, 2.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (467, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (468, '시저 샐러드', 'medium', 30, '[단계 1] 상추 잎을 떼내어 잘 씻은 다음 물기를 제거하고 적당한 크기로 잘라 냉장고에서 보관한다.
[단계 2] 크루통을 만들고 서빙하기 전까지 따로 보관한다.
[단계 3] 마늘, 앤초비, 소금, 후추를 넣고 페이스트를 만든 뒤 달걀 노른자, 레몬주스를 넣고 섞는다.
[단계 4] 3에 올리브오일을 넣어 진한 농도가 나도록 한 뒤 파마산치즈를 넣고 상추를 넣어 잘 섞는다.
[단계 5] 도미살을 손가락 길이로 썰어 소금, 후추로 간을 하고 밀가루, 달걀물, 빵가루 순으로 묻혀 170℃ 정도의 기름에서 튀긴다.
[단계 6] 차가운 접시에 4, 5를 담고 크루통을 뿌린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (468, 3, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (468, 12, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (468, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (468, 38, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (468, 341, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (468, 84, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (468, 233, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (468, 340, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (468, 34, 8.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (468, 316, 5.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (468, 77, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (468, 314, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (468, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (468, 38, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (469, '태국식 불고기 샐러드', 'medium', 25, '[단계 1] 소고기는 불고기용으로 손질하여 소금, 후추로 밑간한다.
[단계 2] 애호박, 토마토, 가지, 양파, 새송이버섯을 채 썬 뒤 볶는다.
[단계 3] 밑간해 둔 소고기를 굽는다.
[단계 4] 접시에 밥을 깔고 그 위에 그린샐러드를 올린 뒤 익혀놓은 고기와 볶아놓은 야채들을 올린다.
[단계 5] 마지막으로 드래싱을 뿌린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (469, 14, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (469, 64, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (469, 92, 25.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (469, 187, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (469, 10, 8.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (469, 82, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (469, 280, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (469, 97, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (469, 12, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (469, 37, 1.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (469, 341, 3.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (469, 84, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (469, 105, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (469, 120, 2.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (470, '팽이버섯 야채볶음', 'medium', 30, '[단계 1] 팽이버섯은 밑동을 제거하고 4cm 길이로 자른다.
[단계 2] 청경채는 겉잎을 떼어낸 뒤 반으로 가른 뒤 팽이버섯과 같은 길이로 자른다.
[단계 3] 썰어 놓은 팽이버섯과 청경채를 끓는 물에 데친다.
[단계 4] 기름을 두른 팬에 팽이버섯과 청경채를 볶는다.
[단계 5] 물 전분을 넣어 농도를 맞춘다.
[단계 6] 참기름을 뿌려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (470, 110, 70.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (470, 114, 50.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (470, 32, 2.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (470, 33, 2.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (470, 347, 6.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (470, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (471, '갯벌의 여왕 모시조개의 달콤한 유혹', 'medium', 30, '[단계 1] 양파는 잘게 썰고 청양고추는 어슷썰기를 한다.
[단계 2] 마늘은 편으로 썰고 마른 홍고추도 둥글게 썰어 준비한다.
[단계 3] 조개는 흐르는 물에 여러 번 씻어 해감을 시킨 후 물기를 제거한다.
[단계 4] 달궈진 팬에 올리브오일을 두르고 마늘, 마른홍고추, 양파를 넣어 볶아 향을 낸 후, 센불로 불을 키우고 모시조개를 넣는다.
[단계 5] 조개가 입을 벌리면 바질과 화이트와인을 넣어 잡내를 없앤다.
[단계 6] 한소끔 끓여낸 후 붕간 불로 줄이고 저염치즈, 청양고추, 후추를 넣어 칼칼한 맛을 낸다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (471, 213, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (471, 10, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (471, 12, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (471, 97, 1.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (471, 153, 15.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (471, 282, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (471, 208, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (471, 38, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (471, 339, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (472, '고구마 타락죽', 'medium', 30, '[단계 1] 고구마는 껍질을 벗겨 1cm 크기로 깍둑썰기 한 뒤 삶는다.
[단계 2] 양송이버섯과 양파는 굵게 다지고 느타리버섯은 데친다.
[단계 3] 냄비에 식용유를 넣어 양파, 고구마, 양송이버섯 순으로 볶는다.
[단계 4] 현미 1/2공기와 물 1/2컵을 넣어 믹서에 굵게 간다.
[단계 5] 3에 4와 나머지 우유를 넣어 끓인다.
[단계 6] 5를 그릇에 담고 고구마, 데친 느타리버섯을 가운데 담는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (472, 9, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (472, 195, 15.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (472, 10, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (472, 131, 7.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (472, 254, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (472, 21, 130.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (472, 33, 20.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (472, 53, 100.00, 'ml', TRUE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (473, '청국장지짐 케일쌈밥', 'medium', 30, '[단계 1] 멸치와 무, 양파 절반, 사과를
끓여 육수를 만든다.
[단계 2] 남은 양파와 돼지고기는 곱게
다진다.
[단계 3] 청국장에 육수, 다진 양파,
돼지고기를 넣고 볶는다.
[단계 4] 케일은 끓는 물에 살짝 데친 뒤
식히고 물기를 없앤다.
[단계 5] 밥에 청국장 지짐을 비빈 뒤
케일로 돌돌 말아 반을 자른다.
[단계 6] 그릇에 담고 어슷썬 홍고추로
장식한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (473, 16, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (473, 164, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (473, 211, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (473, 350, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (473, 7, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (473, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (473, 57, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (474, '마늘 불고기 덮밥', 'medium', 30, '[단계 1] 쌀은 깨끗이 씻고 불려 밥을
짓는다.
[단계 2] 소고기는 핏기를 제거하고 버섯,
당근, 양파, 대파는 한 입 크기로
썰어서 준비한다.
[단계 3] 절반의 마늘과 진간장, 양파, 배,
후춧가루를 넣고 믹서에 갈아
양념을 만든다.
[단계 4] 핏기를 제거한 소고기에 3번의
양념을 넣고 섞는다.
[단계 5] 나머지 마늘은 얇게 편썰어
기름에 튀겨 마늘 칩을 만든다.
[단계 6] 숙성 시킨 불고기를 팬에 볶고,
그릇에 담은 밥 위에 올리고 마늘
칩으로 장식한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (474, 351, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (474, 318, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (474, 121, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (474, 82, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (474, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (474, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (474, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (474, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (474, 63, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (474, 352, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (474, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (475, '잡곡강정밥', 'medium', 30, '[단계 1] 잡곡과 찹쌀은 물에 씻어 불린 뒤
소금을 넣고 밥을 짓는다.
[단계 2] 호두는 껍질을 제거하고 굵게
부숴 마른 팬에 볶는다.
[단계 3] 은행은 기름에 볶아 껍질을
제거하고 4등분 한다
[단계 4] 생밤은 껍질을 벗기고 작은
주사위 모양으로 자른 뒤 기름에
굽는다.
[단계 5] 물 40g에 간장, 대추고, 꿀을 넣고
끓인 뒤 2,3,4번을 넣고 잘 섞는다.
[단계 6] 잡곡밥을 넓게 펼친 뒤 5번을
넣고 돌돌 만다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (475, 200, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (475, 117, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (475, 308, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (475, 166, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (475, 62, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (475, 154, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (475, 31, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (475, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (476, '함박스테이크 볼 밥', 'hard', 30, '[단계 1] 소고기, 돼지고기, 가래떡, 양파,
새송이버섯, 파는 잘게 다진다
[단계 2] 사과와 배는 믹서에 간 뒤 간장,
청주, 다진 마늘, 후춧가루를 넣고
양념장을 만든다.
[단계 3] 다진 고기와 양념장을 섞은 뒤
다진 재료를 넣고 잘 치대어 먹기
좋은 크기로 만든다.
[단계 4] 팬에 기름을 두르고
함박스테이크를 굽는다.
[단계 5] 파프리카는 다지고, 사과, 배는
갈아서 고추장, 간장, 다진 마늘을
섞은 뒤 끓여 소스를 만든다.
[단계 6] 밥에 참기름을 넣고
함박스테이크를 담은 뒤 소스를
올려 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (476, 14, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (476, 16, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (476, 228, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (476, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (476, 82, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (476, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (476, 57, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (476, 63, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (476, 29, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (476, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (476, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (476, 31, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (476, 216, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (476, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (476, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (477, '곤드레 밥버거', 'hard', 30, '[단계 1] 곤드레나물에 들기름, 간장으로
양념하고 쌀, 찹쌀, 흑미와 밥을
지은 뒤 참기름, 소금 간 한다.
[단계 2] 식초와 식초2배의 물을 넣고
끓이다가 사과를 한 입 크기로
썰어 끓인다.
[단계 3] 감자를 삶아 으깨고, 다진 양파,
호두, 밀가루를 넣고 섞은 뒤 겉에
빵가루를 묻혀 팬에 굽는다.
[단계 4] 파프리카는 잘게 채 썬다.
[단계 5] 마요네즈, 깻잎, 바나나, 된장을
믹서에 갈아 소스를 만들고
피클을 다져 넣는다.
[단계 6] 종이호일을 깔고 중간중간
소스를 뿌리면서 김-양상추-
패티-파프리카-양상추-밥
순으로 얹어 버거를 만든다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (477, 121, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (477, 200, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (477, 304, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (477, 287, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (477, 66, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (477, 3, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (477, 8, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (477, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (477, 2, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (477, 175, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (477, 24, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (477, 117, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (477, 57, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (477, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (477, 129, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (477, 170, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (477, 30, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (477, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (477, 31, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (477, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (477, 177, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (477, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (478, '대추닭살리조또', 'medium', 30, '[단계 1] 쌀을 씻어 밥을 짓는다.
[단계 2] 양파, 표고버섯, 당근, 피망은
입자있게 다지고 대추는 씨를
제거한 뒤 다진다.
[단계 3] 닭가슴살은 먹기 좋은 크기로
썬다.
[단계 4] 팬에 기름을 두르고 다진 마늘을
볶은 뒤 닭가슴살을 볶는다
[단계 5] 닭가슴살이 다 익으면 손질한
채소를 넣고 볶다가 밥, 우유,
치즈, 대추를 넣고 끓인다.
[단계 6] 우유가 반으로 졸아들면 불을
줄이고 소금, 후추로 간한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (478, 194, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (478, 121, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (478, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (478, 145, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (478, 62, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (478, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (478, 143, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (478, 208, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (478, 21, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (478, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (478, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (478, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (479, '먹골배 카레주먹밥', 'medium', 30, '[단계 1] 카레가루를 미지근한 물에 개어
쌀을 넣고 밥을 한다.
[단계 2] 묵은지는 헹궈서 다지고 양파도
다진다.
[단계 3] 참치의 기름을 빼고 묵은지,
양파를 넣고 마요네즈에
버무린다.
[단계 4] 3번을 넣고 카레밥으로 주먹밥을 만든다.
[단계 5] 주먹밥을 배 모양으로 만든다.
[단계 6] 애호박과 가지 껍질로 배 꼭지와
잎을 만들어 장식한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (479, 121, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (479, 120, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (479, 284, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (479, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (479, 64, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (479, 187, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (479, 28, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (479, 170, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (480, '신호등 통통이(어린이 곤약삼색주먹밥)', 'medium', 30, '[단계 1] 쌀과 곤약은 깨끗이 씻어 밥을
짓는다.
[단계 2] 시금치는 데쳐 잘게 다지고
당근은 잘게 다져 팬에 볶고,
달걀은 삶아 노른자만 체에
거른다.
[단계 3] 소고기는 간장, 참기름, 대파,
마늘, 물엿, 후춧가루를 버무려
볶는다.
[단계 4] 멸치는 올리고당으로 볶고 밥은
소금과 참기름으로 밑간한다.
[단계 5] 밥과 멸치, 밥과 소고기를 각각
버무려 동그랗게 빚는다.
[단계 6] 동그랗게 빚은 밥은 시금치, 당근,
달걀노른자에 각각 굴린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (480, 14, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (480, 326, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (480, 121, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (480, 1, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (480, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (480, 350, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (480, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (480, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (480, 31, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (480, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (480, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (480, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (480, 98, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (481, '팥죽', 'easy', 3, '[단계 1] 찹쌀을 씻어 불린다.
[단계 2] 팥을 씻어서 건진 후 잠길 만큼 물을 붓고 끓인다.
[단계 3] 검붉은 물이 우러나오면 제거하고 팥 분량의 3배 정도 물을 넣어서 완전히 뭉그러질 때까지 끓인다.
[단계 4] 찹쌀가루는 끓는 물로 익반죽하여 1.5cm 가량의 찹쌀경단을 빚는다.
[단계 5] 삶은 팥을 손으로 주무른 다음 체에 거르고 앙금을 가라앉도록 하여 웃물을 먼저 끓으면 불린 찹쌀을 넣고 퍼질 때 까지 끓인다.
[단계 6] 앙금과 찹쌀경단을 차례로 넣고 끓인 뒤 경단이 떠오르면 2~3분 더 끓여 완성한다.(설탕이나 꿀은 기호에 따라 사용한다.)');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (481, 309, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (481, 146, 30.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (481, 200, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (481, 53, 300.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (481, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (482, '양송이버섯 달걀 크레페', 'medium', 30, '[단계 1] 메밀가루, 달걀, 우유, 밀가루, 설탕을 믹서에 갈아 놓는다.
[단계 2] 양송이버섯과 양파는 얇게 썬다. 감자는 1cm 정육면체로 잘라서 삶아 놓는다.
[단계 3] 팬에 식용유를 두르고 다진 마늘과 로즈마리, 파슬리, 감자를 볶는다.
[단계 4] 또 다른 팬에서는 양파를 볶다가 양송이버섯을 넣고 볶아둔다.
[단계 5] 팬에 1의 반죽을 얇게 부친 뒤 뒤집어 볶은 양송이버섯과 3의 감자, 달걀을 올린다.
[단계 6] 에멘탈 치즈를 고루 뿌리고 반을 접어 완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (482, 195, 12.80, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (482, 22, 11.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (482, 208, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (482, 34, 20.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (482, 22, 22.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (482, 34, 20.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (482, 21, 80.00, 'ml', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (482, 36, 10.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (482, 10, 8.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (482, 345, 0.40, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (482, 8, 20.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (482, 80, 0.20, '마리', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (482, 12, 1.20, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (482, 33, 1.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (483, '파인애플떡갈비', 'medium', 15, '[단계 1] 파인애플은 7cm로 자르고
남은 자투리와 파, 마늘, 양파,
표고버섯은 곱게 다진다.
[단계 2] 갈빗살은 곱게 다져 간장,
설탕, 파, 마늘, 참기름, 추후로
양념한다.
[단계 3] 다진 파인애플, 양파, 표고버섯은
볶아 수분을 제거한다.
[단계 4] 전분 일부와 갈빗살, 다진
파인애플, 양파, 표고버섯을 섞고
치댄다.
[단계 5] 잘라둔 파인애플에 남은 전분을
묻힌 뒤 고기반죽으로 감싼다.
[단계 6] 팬 또는 오븐(180℃, 15분)에
노릇하게 굽는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (483, 212, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (483, 199, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (483, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (483, 145, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (483, 163, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (483, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (483, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (483, 352, 5.00, '장', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (483, 36, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (483, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (483, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (484, '건강가지말이+참깨마요소스', 'medium', 30, '[단계 1] 가지는 길이대로 얇게
슬라이스한 뒤 살짝 굽는다.
[단계 2] 파프리카, 당근, 사과는 얇게
채썬다.
[단계 3] 단호박은 속을 파내고 쪄서
으깬다.
[단계 4] 참깨에 마요네즈, 꿀, 간 배를
넣고 섞어 참깨마요소스를
만든다.
[단계 5] 구운 가지에 단호박을 얇게 
바르고 야채들을 넣고 돌돌 만다.
[단계 6] 참깨마요소스를 올린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (484, 187, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (484, 65, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (484, 353, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (484, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (484, 57, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (484, 63, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (484, 7, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (484, 161, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (484, 170, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (484, 171, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (484, 154, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (485, '순창 고추장 두부강정', 'hard', 30, '[단계 1] 당근, 새송이버섯, 소고기, 양파는
가늘게 채 썰어 간장, 꿀, 생강가루,
다진 마늘로 양념한 뒤 볶는다.
[단계 2] 두부는 반으로 잘라 속에 칼집을 
낸 뒤 소금을 뿌려 수분을
제거한다.
[단계 3] 두부에 전분을 골고루 묻힌다.
[단계 4] 볶은 야채와 고기를 두부 사이에
넣는다.
[단계 5] 튀김가루, 전분, 차가운 맥주를
섞어 튀김 반죽을 만든 뒤 두부에
입혀 170℃기름에 튀긴다.
[단계 6] 고추장, 케첩, 올리고당을 섞고
냄비에 졸여 소스를 만들고 튀긴
두부를 지진다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (485, 351, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (485, 212, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (485, 23, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (485, 82, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (485, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (485, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (485, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (485, 13, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (485, 29, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (485, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (485, 163, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (485, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (485, 31, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (485, 154, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (485, 276, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (485, 98, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (486, '곤약 백김치 말이', 'medium', 30, '[단계 1] 곤약은 얇게 편으로 썰어 데친 뒤
백김치 국물에 절인다.
[단계 2] 물에 월계수잎, 통후추, 청주를
넣고 오징어를 질기지 않게 살짝
삶는다.
[단계 3] 파프리카는 채썰고 백김치는
물기를 제거한다.
[단계 4] 곤약을 깔고 백김치, 오징어,
파프리카를 얹어 말아준다.
[단계 5] 부추로 풀어지지 않게 단단히
매듭을 짓는다.
[단계 6] 아랫부분을 정리하고 접시에
담는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (486, 94, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (486, 326, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (486, 24, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (486, 353, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (486, 5, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (486, 216, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (486, 38, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (486, 274, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (487, '묵은지비프롤', 'medium', 15, '[단계 1] 소고기는 올리브오일, 매실액,
레몬즙, 소금, 후춧가루로
밑간한다.
[단계 2] 묵은지는 흐르는 물에 헹궈
양념을 제거한다.
[단계 3] 팽이버섯은 굵은 가닥으로
분리하고 아스파라거스는
밑기둥을 제거한다.
[단계 4] 빨강, 노랑, 주황 파프리카는
막대모양으로 썬다.
[단계 5] 묵은지 위에 달걀 흰자를 바르고
소고기를 펼치고 전분을 묻힌 뒤
야채를 넣고 돌돌 만다.
[단계 6] 200℃로 예열한 오븐에 넣고
15분간 굽는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (487, 351, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (487, 138, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (487, 284, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (487, 110, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (487, 155, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (487, 353, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (487, 91, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (487, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (487, 163, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (487, 84, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (487, 52, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (487, 106, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (487, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (487, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (488, '바나나를 감싼 일본식 달걀말이', 'easy', 30, '[단계 1] 달걀을 흰자와 노른자로
분리한다.
[단계 2] 흰자와 노른자를 각각 풀어
전분과 소금을 넣는다.
[단계 3] 팬에 식용유를 두르고 노른자를
부어 반정도 익힌다.
[단계 4] 바나나를 넣고 말아준다.
[단계 5] 흰자를 부어 4번을 감싸 
말아준다.
[단계 6] 먹기 좋은 크기로 자른다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (488, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (488, 175, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (488, 163, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (488, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (489, '그린커리', 'medium', 30, '[단계 1] 마늘은 입자있게 다진다.
[단계 2] 닭가슴살, 당근, 가지, 양송이
버섯은 먹기 좋은 크기로 자른다.
[단계 3] 팬에 기름을 두르고 마늘을
볶다가 가지, 당근, 양송이버섯
순으로 넣고 볶는다.
[단계 4] 그린커리 페이스트를 넣고
볶는다.
[단계 5] 4번에 레몬그라스, 물 한 컵과
코코넛밀크 2/3를 넣고 끓인다.
[단계 6] 코코넛밀크로 농도를 조절하여
완성한다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (489, 194, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (489, 310, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (489, 118, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (489, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (489, 187, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (489, 195, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (489, 88, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (489, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (490, '유자 치킨 꿔바로우', 'medium', 30, '[단계 1] 닭가슴살을 슬라이스하여 소금,
후춧가루로 밑간을 하고 다진
생강을 발라 잡냄새를 제거한다.
[단계 2] 밑간한 닭가슴살에 찹쌀가루를
묻힌다.
[단계 3] 녹말, 식용유, 물을 섞어 반죽을
만든다.
[단계 4] 2번에 반죽을 골고루 묻혀 170℃
기름에서 튀긴다.
[단계 5] 식초와 유자청을 넣고 끓인 후
간장으로 간을 맞추고 전분을
풀어 농도를 맞춘다.
[단계 6] 튀긴 꿔바로우를 소스에 넣고
버무린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (490, 194, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (490, 79, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (490, 13, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (490, 89, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (490, 146, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (490, 85, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (490, 163, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (490, 154, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (490, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (490, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (490, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (490, 33, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (490, 53, 5.00, 'ml', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (491, '펌킨크로켓', 'medium', 30, '[단계 1] 참나물은 데친 뒤 잘게 다진다.
[단계 2] 양파와 당근은 잘게 다진 뒤
볶는다.
[단계 3] 단호박을 찐 뒤 으깨고 다진
참나물, 볶은 양파, 당근을 넣고
소금, 후춧가루로 밑간한다.
[단계 4] 빵가루를 조금 넣고 섞어 되직한
반죽을 만든다.
[단계 5] 반죽에 모짜렐라치즈를 넣고
한입 크기로 빚은 뒤 달걀, 빵가루
순으로 옷을 입힌다.
[단계 6] 170℃ 기름에 튀긴다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (491, 65, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (491, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (491, 6, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (491, 91, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (491, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (491, 247, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (491, 129, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (491, 33, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (491, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (491, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (492, '이태리튀밥', 'medium', 30, '[단계 1] 냄비에 물 한 컵을 넣고 끓으면
소금을 조금 넣고 쌀을 넣어
끓인다.
[단계 2] 쌀이 물을 흡수하면 버터를 넣고
골고루 섞은 뒤 파마산치즈가루를
넣고 섞어 접시에 펼쳐 식힌다.
[단계 3] 방울토마토는 굵게 다진 뒤
물기를 제거하고 바질은 얇게 채
썬다.
[단계 4] 모짜렐라치즈는 손으로 작게
뜯어 반은 바질, 토마토와 섞어
소금과 올리브오일로 간을 하고,
나머지는 옥수수와 섞는다.
[단계 5] 식은 밥에 4번의 소를 각각 넣고
동그랗게 빚는다.
[단계 6] 달걀물, 빵가루 순으로 묻혀
170℃ 기름에서 튀긴다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (492, 121, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (492, 50, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (492, 339, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (492, 242, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (492, 22, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (492, 129, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (492, 208, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (492, 208, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (492, 40, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (492, 84, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (492, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (493, '현미 입은 미트볼', 'hard', 30, '[단계 1] 양파 40g, 마늘 20g, 대추 2알, 배,
생강, 간장, 물 70g을 넣고 졸여
소스를 만든다.
[단계 2] 소고기, 돼지고기는 다진 뒤 소금,
후추, 참기름, 깨, 간장 15g을
넣어 밑간한다.
[단계 3] 양파, 마늘, 대추를 다진 뒤
밀가루, 식용유와 함께 2번에
넣고 치댄다.
[단계 4] 3번의 반죽을 동그란 모양으로
빚는다.
[단계 5] 팬에 기름을 두르고 미트볼을
굽는다.
[단계 6] 팬에 소스를 부어가며 졸인 뒤
쪽파, 현미튀밥을 올린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (493, 14, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (493, 16, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (493, 62, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (493, 63, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (493, 164, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (493, 34, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (493, 10, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (493, 12, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (493, 144, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (493, 13, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (493, 31, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (493, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (493, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (493, 32, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (493, 171, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (494, '새우채소꼬치구이', 'medium', 30, '[단계 1] 새우는 꼬리와 껍질을 제거한 뒤 
후추로 밑간한다.
[단계 2] 단호박은 찜기에 찐다
[단계 3] 대파와 양배추는 4cm 길이로
썬다.
[단계 4] 찐단호박을 4cm 길이로 썬다.
[단계 5] 프라이팬에 새우, 단호박, 대파, 
양배추, 방울토마토를 굽는다..
[단계 6] 꼬지에 보기 좋게 끼운다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (494, 87, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (494, 65, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (494, 182, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (494, 50, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (494, 11, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (494, 38, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (495, '영유아를 위한 고소한 닭꼬치', 'medium', 30, '[단계 1] 닭가슴살은 10cm 길이로 얇게
자른다.
[단계 2] 닭가슴살에 소금, 후춧가루로
밑간을 한다.
[단계 3] 아몬드슬라이스를 잘게 다지고
흑임자, 참깨와 섞는다.
[단계 4] 닭가슴살에 3번을 묻힌다.
[단계 5] 팬에 식용유를 두르고 4번을 
노릇하게 굽는다.
[단계 6] 꼬지에 꽂는다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (495, 194, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (495, 318, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (495, 21, 5.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (495, 343, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (495, 171, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (495, 132, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (495, 35, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (495, 70, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (496, '오! 푸룻한 뿌리채소', 'medium', 30, '[단계 1] 연근, 우엉은 껍질을 벗겨 0.2cm
두게로 슬라이스한 뒤 식촛물에
담군다.
[단계 2] 레디쉬는 얇게 슬라이스하여
얼음물에 담그고 오렌지는
껍질을 벗겨 과육만 분리한다.
[단계 3] 우엉과 연근을 끓는 물에 데친
뒤 얼음물에 담궈 열기를 식히고
물기를 뺀다.
[단계 4] 요거트와 머스터드를 섞어
소스를 만들고 땅콩, 호두는 잘게
부순다.
[단계 5] 연근, 우엉, 레디쉬, 오렌지, 땅콩, 
호두를 만들어둔 소스와 함께
버무린다.
[단계 6] 그릇에 담고 크랜베리를 올린다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (496, 205, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (496, 134, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (496, 81, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (496, 179, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (496, 83, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (496, 117, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (496, 78, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (496, 76, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (496, 301, 5.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (496, 349, 5.00, 'g', FALSE);
INSERT INTO Recipe (recipe_id, recipe_name, difficulty, estimated_time, description) VALUES (497, '채소 팬케익', 'medium', 30, '[단계 1] 당근, 돼지호박은 큼직하게 썬다.
[단계 2] 셀러리와 양파는 곱게 다진다.
[단계 3] 믹서에 당근, 돼지호박, 저지방우유, 달걀, 중력분, 머스터드 파우더, 저나트륨 베이킹 파우더, 후춧가루를 넣고 간다.
[단계 4] 3을 그릇에 붓고 셀러리와 양파를 섞는다.
[단계 5] 팬에 식용유를 넣고 팬케이크를 부친다.
[단계 6] 메이플시럽을 곁들여 낸다.');
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (497, 6, 40.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (497, 10, 10.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (497, 34, 32.00, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (497, 70, 0.21, 'g', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (497, 301, 0.50, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (497, 33, 2.00, 'ml', FALSE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (497, 22, 55.00, 'g', TRUE);
INSERT INTO Recipe_Ingredient (recipe_id, ingredient_id, required_qty, unit, is_essential) VALUES (497, 21, 100.00, 'ml', TRUE);
