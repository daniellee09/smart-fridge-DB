# CLAUDE.md

Smart Fridge — 인하대 DB팀 프로젝트 (2026-1학기). 스마트 냉장고 재고 관리 + 보유 재료 기반 레시피 추천 시스템.

## WHAT — 코드 지도

**스택**: Java 21 · Spring Boot 3.x · Spring Data JPA · MariaDB 10.x · Gradle / Frontend는 React + Vite

**모노레포 구조**
```
backend/   Spring Boot. 레시피·요리 도메인은 이도형, 냉장고·식재료·카테고리·단위환산은 손유경
frontend/  React (이승하 영역 — 백엔드 작업 시 건드리지 않음)
db/        DDL·트리거·더미데이터 SQL. 스키마의 진실의 원천 (손유경 주관)
docs/      ERD·발표자료·시연 시나리오
```

**도메인 7테이블**: Category(self-join) · Ingredient_Master · Unit_Conversion · My_Fridge · Recipe · Recipe_Ingredient · Cook_History. PK는 모두 `INT AUTO_INCREMENT` → Entity는 `Integer`.

## WHY — 각 구성 요소의 목적

- **Unit_Conversion**: 사용자는 "1팩"으로 입력, DB는 "600g"으로 저장 (단위 추상화)
- **DB 트리거 2개 — 이 프로젝트의 평가 포인트**
  - `trg_auto_expire_date` (BEFORE INSERT ON My_Fridge): 카테고리의 `default_days` 조회 → `expire_date` 자동 산출
  - `trg_auto_stock_reduce` (AFTER INSERT ON Cook_History): 요리 시 레시피 요구량만큼 My_Fridge 차감, 차감 후 `quantity ≤ 0` row 자동 DELETE
- **Recipe_Ingredient.is_essential**: 추천 쿼리(관계대수 디비전)의 핵심 필드. 필수 재료만 100% 보유 여부를 따짐
- **컨트롤러 응답은 항상 DTO**: Entity 양방향(`Recipe ↔ RecipeIngredient`, `Category ↔ Category` self) 직렬화 함정 회피
- **영역 분담 컨벤션**: DDL은 손유경, frontend는 이승하 — 함부로 수정 X

## HOW — 작업 수행 방법

### 빌드·실행
- 백엔드: `cd backend && ./gradlew compileJava` / `./gradlew bootRun` (8080 포트)
- DB 적용 (한글 깨짐 방지): `mariadb -u root -p<pw> -P 3307 --default-character-set=utf8mb4 -e "source <절대경로>"`
- `application-local.yml`은 `.gitignore`. 템플릿은 `docs/application-local.example.yml`

### JPA + 트리거 캐시 함정 (가장 자주 발생)
- 트리거가 DB를 직접 수정해도 JPA 영속성 컨텍스트는 모름 → `save()` 직후 응답이 옛날 값이 됨
- 해결: `entityManager.refresh(entity)` 또는 `em.flush(); em.clear();` 후 `findById()` 재조회
- 트리거 작동 메서드는 반드시 `@Transactional` (커스텀 예외는 RuntimeException 상속)

### 설정 절대 규칙
- `spring.jpa.hibernate.ddl-auto: validate` 고정. **`create`/`update`/`create-drop` 금지** — 스키마 변경은 `db/` SQL 수정 후 손유경에게 공유
- 컨트롤러 응답 타입은 DTO(record). Entity 직접 반환 금지
- DB 비밀번호 등 시크릿이 실수로 커밋되면 즉시 변경 + history 정리

### 추천 쿼리 (디비전 패턴, Native Query 필수)
```sql
SELECT r.recipe_id, r.recipe_name, r.difficulty, r.estimated_time, r.description
FROM Recipe r
JOIN Recipe_Ingredient ri ON r.recipe_id = ri.recipe_id
LEFT JOIN My_Fridge f ON ri.ingredient_id = f.ingredient_id
                     AND f.quantity >= ri.required_qty
WHERE ri.is_essential = TRUE
GROUP BY r.recipe_id, r.recipe_name, r.difficulty, r.estimated_time, r.description
HAVING COUNT(f.fridge_item_id) = COUNT(ri.ingredient_id);
```
두 COUNT 모두 "해당 레시피의 필수재료" 기준 (사용자 냉장고 전체 X). JPQL로는 표현이 까다로워 Native만.

### API 응답 형식
```json
{ "success": true, "data": { ... }, "message": "string" }
```
공통 `ApiResponse<T>` 정적 팩토리(`ok()`) 사용. CORS는 `WebConfig`에서 `localhost:3000` 허용.

### 커밋·브랜치
- 형식: `<type>: <한 줄 요약>` — type은 `feat`/`fix`/`docs`/`refactor`/`test`/`chore`/`style`. 한글 OK
- 흐름: `feat/xxx` → PR → `develop` → 발표 직전 `main`
- `main`·`develop` 직접 push 금지. PR은 팀원 1명 approve 필수

### 작업 시 주의
- 다른 사람 코드 스타일을 임의로 리팩토링하지 말 것 (팀 프로젝트)
- 트리거 검증은 반드시 실제 DB로 (Mock 의미 없음)
- 테스트는 더미데이터에 의존하지 말고 테스트 전용 셋업 사용
- `build/`, `node_modules/` 커밋 금지
