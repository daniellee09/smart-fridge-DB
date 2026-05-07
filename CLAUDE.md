# CLAUDE.md

이 파일은 Claude Code가 이 레포에서 작업할 때 참고하는 가이드입니다.

## 프로젝트 개요

**Smart Fridge** — 인하대학교 데이터베이스 팀 프로젝트 (2026-1학기)
스마트 냉장고 관리 및 레시피 매칭 시스템.

핵심 차별점:
- 단위 추상화 (사용자는 "1팩"으로 입력, DB는 "600g"으로 저장)
- 유통기한 자동 계산 (DB 트리거)
- 보유 재료 기반 레시피 추천 (관계대수 디비전 쿼리)
- 요리 완료 시 재고 자동 차감 (DB 트리거)

## 팀 구성 및 도메인 분담

| 이름 | 역할 | 담당 |
|---|---|---|
| 이도형 (본인) | Backend 코어 & 레시피 도메인 | Spring Boot 셋업, JPA Entity, 레시피/요리 API, 추천 쿼리 |
| 손유경 | Backend DB & 냉장고 도메인 | DDL, 트리거, 더미데이터, 식재료/냉장고/카테고리 API |
| 이승하 | Frontend | React + Vite |

본인이 작업하는 영역은 주로 `backend/` 중에서도 레시피/요리 도메인. 냉장고/식재료/DDL은 손유경 영역이라 함부로 수정하지 말 것.

## 기술 스택

- **Backend**: Java 21, Spring Boot 3.x, Spring Data JPA, Gradle
- **DB**: MariaDB 10.x
- **Frontend**: React + Vite + Axios (별도 영역, 백엔드 작업 시 건드리지 않음)
- **API 테스트**: Postman

## 폴더 구조

```
smart-fridge-DB/
├── backend/    # Spring Boot (이도형, 손유경 공동 작업)
├── frontend/   # React (이승하 영역, 백엔드 작업 시 건드리지 않음)
├── db/         # DDL, 트리거, 더미데이터 SQL (손유경 주 영역)
└── docs/       # ERD 이미지, 발표자료, 시연 시나리오
```

## 핵심 도메인 모델 (7개 테이블)

1. **Category** — 식재료 카테고리 (Self-Join으로 대/중/소 분류)
2. **Ingredient_Master** — 식재료 마스터 (카테고리별로 분류)
3. **Unit_Conversion** — 단위 환산 매핑 (예: "팩" → 600g)
4. **My_Fridge** — 냉장고 현재 재고
5. **Recipe** — 레시피 마스터
6. **Recipe_Ingredient** — 레시피-식재료 N:M 매핑 (`is_essential` 필드 핵심)
7. **Cook_History** — 요리 이력

## DB 트리거 (이 프로젝트의 핵심)

비즈니스 로직을 의도적으로 DB 트리거에 넣었음. DB 과목이라 트리거/조인 활용이 평가 포인트.

1. **`trg_auto_expire_date`** (BEFORE INSERT ON My_Fridge)
   - 식재료 등록 시 카테고리 기본 유통기한 조회 → expire_date 자동 산출
2. **`trg_auto_stock_reduce`** (AFTER INSERT ON Cook_History)
   - 요리 완료 시 레시피 요구량만큼 My_Fridge 수량 차감
   - 차감 후 quantity <= 0 인 row 자동 DELETE

## 작업 시 반드시 지킬 규칙

### JPA + Trigger 캐시 이슈 (가장 자주 발생할 함정)
- 트리거가 DB를 직접 수정하므로 JPA 영속성 컨텍스트가 모름
- **`save()` 직후 응답 만들 때 캐시된 옛날 값을 들고 있을 수 있음**
- 해결책 (둘 중 하나):
  - `entityManager.refresh(entity)` 호출
  - `entityManager.clear()` 후 `findById()` 재조회
  - 또는 처음부터 Native Query 사용
- `INSERT Cook_History` 후 응답에 `My_Fridge` 정보 포함할 때 특히 주의

### JPA 설정
- `spring.jpa.hibernate.ddl-auto`는 **반드시 `validate`** 사용
- **절대 `create`, `update`, `create-drop` 쓰지 말 것** (DDL은 손유경이 SQL로 직접 관리)
- 스키마 변경 필요하면 `db/` 폴더의 SQL 파일을 수정하고 손유경에게 공유

### 트랜잭션
- 트리거가 작동하는 메서드는 반드시 `@Transactional`
- Spring 기본은 RuntimeException에만 롤백 → 필요 시 `rollbackFor = Exception.class` 명시
- 커스텀 예외는 RuntimeException 상속해서 만들 것

### Native Query 사용 기준
- 추천 레시피 디비전 쿼리는 **반드시 Native Query 사용** (HAVING + COUNT 조합)
- JPQL로는 표현이 까다로움
- 트리거 결과를 즉시 조회해야 할 때도 Native Query 권장

### 추천 쿼리 핵심 패턴 (가장 중요)
"필수 재료 100% 보유"한 레시피만 반환:

```sql
SELECT r.recipe_id, r.recipe_name, r.difficulty, r.estimated_time
FROM Recipe r
JOIN Recipe_Ingredient ri ON r.recipe_id = ri.recipe_id
LEFT JOIN My_Fridge f ON ri.ingredient_id = f.ingredient_id
                     AND f.quantity >= ri.required_qty
WHERE ri.is_essential = TRUE
GROUP BY r.recipe_id, r.recipe_name, r.difficulty, r.estimated_time
HAVING COUNT(f.fridge_item_id) = COUNT(ri.ingredient_id);
```

핵심: HAVING의 두 COUNT 모두 "그 레시피의 필수재료" 기준. 사용자 냉장고 전체가 아님.

## API 응답 컨벤션

모든 API는 동일 구조:
```json
{
  "success": true,
  "data": { ... },
  "message": "string"
}
```

공통 응답 DTO 클래스 만들어서 사용 (예: `ApiResponse<T>`).

## CORS

프론트(localhost:3000) ↔ 백엔드(localhost:8080) 분리되어 있으므로 CORS 전역 설정 필요.
`WebMvcConfigurer.addCorsMappings()` 또는 `@CrossOrigin` 사용.

## 시크릿 관리

- `application.yml`은 환경변수 placeholder만 (`${DB_URL}` 등)
- 실제 DB 접속 정보는 `application-local.yml`에 두고 **절대 커밋 X**
- `.gitignore`에 등록되어 있는지 항상 확인
- DB 비밀번호가 실수로 커밋되면 즉시 비밀번호 변경 + history 정리

## 커밋 / PR 컨벤션

### 커밋 메시지 형식
```
<type>: <한 줄 요약>
```

Type: `feat`, `fix`, `docs`, `refactor`, `test`, `chore`, `style`

예시:
- `feat: 추천 레시피 API 디비전 쿼리 구현`
- `fix: 요리 완료 후 JPA 캐시로 차감 안 된 값이 응답되던 문제 해결`

한글 OK. 영어 강제 X.

### 브랜치 전략
- `main`: 발표 전 안정 버전만
- `develop`: 개발 통합 브랜치 (default)
- `feat/xxx`: 기능 브랜치 — develop으로 PR

main, develop 모두 직접 push 금지. PR 1명 approve 필수.

## 작업 시 자주 까먹는 것들

1. **이미 작성된 코드를 임의로 리팩토링하지 말 것** — 팀 프로젝트라 다른 사람 코드 스타일 존중
2. **DDL 파일은 백엔드에서 자동 생성하지 말 것** — `db/` 폴더의 SQL이 진실의 원천
3. **build/, target/, node_modules/는 절대 커밋하지 말 것**
4. **트리거 작동 검증은 반드시 실제 DB로** — Mock으로 테스트하면 의미 없음
5. **테스트 시 더미데이터 의존하지 말 것** — 손유경이 더미데이터 바꾸면 테스트 깨짐. 테스트 전용 데이터 셋업 권장

## 일정 (절대 밀리면 안 됨)

- Week 0 (~5/9): 사전 합의, 레포 셋업
- Week 1 (5/10~5/16): 기반 구축 + API 개발
- Week 2 (5/17~5/24): 추천 쿼리 + 통합 + 발표 준비

5/25 이후는 다른 과목 기말고사 직전이라 손대면 안 됨.
