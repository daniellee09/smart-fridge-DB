# Smart Fridge 프로젝트 종합 정리

> 인하대 DB팀 프로젝트 (2026-1학기). 프로젝트 개요 + 기술 선택 이유 + 작업 흐름 + 핵심 개념 한 문서.
> 공부용 + 인수인계용으로 활용 가능.

---

## 목차

1. [프로젝트 한눈에 보기](#1-프로젝트-한눈에-보기)
2. [기술 스택과 선택 이유](#2-기술-스택과-선택-이유)
3. [시스템 아키텍처](#3-시스템-아키텍처)
4. [데이터베이스 설계](#4-데이터베이스-설계)
5. [DB 트리거 — 이 프로젝트의 평가 포인트](#5-db-트리거--이-프로젝트의-평가-포인트)
6. [추천 쿼리 — 관계대수 디비전 패턴](#6-추천-쿼리--관계대수-디비전-패턴)
7. [백엔드 핵심 패턴 5가지](#7-백엔드-핵심-패턴-5가지)
8. [지금까지의 작업 흐름 (PR 히스토리)](#8-지금까지의-작업-흐름-pr-히스토리)
9. [남은 작업](#9-남은-작업)

---

## 1. 프로젝트 한눈에 보기

### 무엇을 만드는가

**스마트 냉장고 재고 관리 + 보유 재료 기반 레시피 추천 시스템.**

- 사용자가 "냉장고에 김치 500g, 삼겹살 600g 있다"고 입력해두면
- 시스템이 "지금 가진 재료로 만들 수 있는 요리"를 추천하고
- 요리하면 자동으로 재고에서 차감

### 왜 만드는가

- **수업 목적**: 인하대 데이터베이스 팀 프로젝트 (2026-1학기)
- **평가 포인트 2개**:
  1. **DB 트리거**: SQL 트리거로 자동 만료일 계산 + 자동 재고 차감
  2. **관계대수 디비전 쿼리**: 추천 로직을 SQL의 디비전 패턴으로 구현

### 누가

| 영역 | 담당 |
|---|---|
| Backend (레시피·요리 도메인) | **이도형** (본인) |
| Backend (냉장고·재료·카테고리) + DDL | 손유경 |
| Frontend | 이승하 |

### 일정 (마일스톤)

```
Week 1~2 ────► 백엔드 도메인 구현 + DB 셋업 + 양방향 함정 해결 (← 현재 위치)
Week 3 ─────► 손유경 냉장고 API 완료 + 프론트 연동 시작
Week 4 ─────► 발표 준비, 시연 시나리오 정리
5/25 이후 ──► 다른 과목 일정으로 큰 변경 금지
```

---

## 2. 기술 스택과 선택 이유

### 전체 스택

| 영역 | 기술 | 버전 |
|---|---|---|
| Backend Language | Java | 21 (LTS) |
| Backend Framework | Spring Boot | 3.x |
| ORM | Spring Data JPA (Hibernate) | - |
| DB | MariaDB | 11.4.5 (10.x 호환) |
| Build Tool | Gradle | - |
| Frontend | React + Vite | - |
| API Test | Postman | - |

### 왜 이 조합인가

**Java 21**
- LTS 버전이라 안정성 + 신기능 활용 가능
- **`record`**: DTO 만들 때 불변 + 보일러플레이트 X (lombok 없이도 깔끔)
- pattern matching, var 등 모던 문법

**Spring Boot 3.x**
- 빠른 셋업: Spring Initializr로 클릭 몇 번에 프로젝트 생성
- 의존성 관리 자동화 (Spring Data JPA, MariaDB driver 등)
- Tomcat 내장 — `bootRun` 한 줄로 서버 기동

**Spring Data JPA (Hibernate)**
- DB 테이블과 Java 객체를 자동 매핑 (ORM)
- 단순 CRUD는 `JpaRepository<Entity, PK>` 상속만으로 끝
- 복잡한 쿼리는 `@Query`로 JPQL 또는 Native SQL 작성 가능

**MariaDB (MySQL 호환)**
- 수업에서 채택한 DB
- **트리거 문법이 표준 SQL과 호환**되어 평가용으로 적합
- DELIMITER로 트리거 정의 → `BEFORE/AFTER INSERT` 등 표준 SQL 트리거 사용 가능

**Gradle**
- Spring Initializr 기본값
- 의존성 선언이 Maven보다 짧고 읽기 쉬움

**React + Vite (프론트)**
- Vite는 HMR(Hot Module Replacement) 빠르고 셋업 단순
- 백엔드와는 `localhost:3000` ↔ `localhost:8080` CORS로 연동

---

## 3. 시스템 아키텍처

### 모노레포 구조

```
smart-fridge-db/
├── backend/          ← Spring Boot 백엔드
│   └── src/main/java/com/smartfridge/
│       ├── controller/    ← HTTP 요청 받는 진입점
│       ├── service/       ← 비즈니스 로직
│       ├── repository/    ← DB 접근
│       ├── entity/        ← DB 테이블 매핑 객체
│       ├── dto/           ← 외부 응답용 객체 (record)
│       └── common/        ← ApiResponse, WebConfig
│
├── frontend/         ← React + Vite (이승하 영역)
│
├── db/               ← SQL 파일 (DDL, 트리거, 더미데이터)
│   ├── 01_schema.sql
│   ├── 02_triggers.sql
│   └── 03_dummy_data.sql
│
├── docs/             ← ERD, 발표자료, 시연 시나리오
└── CLAUDE.md         ← AI 도구용 프로젝트 지침
```

### 백엔드 레이어드 아키텍처

```
┌─────────────────────────────────────────────────────────┐
│                    HTTP Client (Postman / React)         │
└─────────────────────────────────────────────────────────┘
                          │ HTTP Request
                          ▼
┌─────────────────────────────────────────────────────────┐
│  Controller         ← @RestController                    │
│  (RecipeController)   API 엔드포인트, URL 매핑          │
│                       반환: ApiResponse<DTO>            │
└─────────────────────────────────────────────────────────┘
                          │ DTO 반환 요청
                          ▼
┌─────────────────────────────────────────────────────────┐
│  Service           ← @Service, @Transactional           │
│  (RecipeService)     비즈니스 로직, Entity→DTO 변환     │
│                      트랜잭션 경계                       │
└─────────────────────────────────────────────────────────┘
                          │ Entity 조회/저장
                          ▼
┌─────────────────────────────────────────────────────────┐
│  Repository        ← JpaRepository 상속                  │
│  (RecipeRepository)  SQL 자동 생성 + 커스텀 @Query      │
└─────────────────────────────────────────────────────────┘
                          │ SQL
                          ▼
┌─────────────────────────────────────────────────────────┐
│  MariaDB (smart_fridge)                                  │
│  ├─ 7개 테이블                                           │
│  └─ 2개 트리거 (DB 자체 로직)                            │
└─────────────────────────────────────────────────────────┘
```

### 각 레이어의 책임

| 레이어 | 책임 | 알면 안 되는 것 |
|---|---|---|
| Controller | HTTP 요청/응답 처리 | 비즈니스 로직, SQL |
| Service | 비즈니스 로직, 트랜잭션 | HTTP, JSON 구조 |
| Repository | SQL 추상화 | 비즈니스 로직 |
| Entity | DB 테이블 구조 | HTTP, JSON |
| DTO | 외부 응답 구조 | DB 내부 구조 |

**핵심 원칙**: 각 레이어는 한 방향으로만 의존. Controller는 Service를 알지만, Service는 Controller를 모름.

---

## 4. 데이터베이스 설계

### 7개 테이블 한눈에

```
┌─────────────┐
│  Category   │ ◄──┐ self-join (parent_id)
│             │ ───┘
│ - category_id (PK)
│ - category_name
│ - parent_id (FK self)
│ - default_days  ← 트리거가 참조
└──────┬──────┘
       │
       │ 1:N
       ▼
┌──────────────────┐
│ Ingredient_Master │
│                   │
│ - ingredient_id (PK)
│ - ingredient_name
│ - category_id (FK)
│ - base_unit (g, ml ...)
└────┬──────────────┘
     │
     │ 1:N
     ├──────────────────────────┐
     │                          │
     ▼                          ▼
┌────────────────┐    ┌──────────────────┐
│ Unit_Conversion │    │   My_Fridge      │
│                 │    │                  │
│ - user_unit     │    │ - quantity (g)   │ ← 트리거가 차감
│ - convert_to_base│   │ - user_unit      │
└─────────────────┘    │ - user_quantity  │
                       │ - expire_date    │ ← 트리거가 자동 채움
                       │ - storage_type   │
                       └──────────────────┘

┌─────────┐        ┌────────────────────┐        ┌──────────────┐
│ Recipe  │───1:N──│ Recipe_Ingredient  │──N:1───│ Ingredient_  │
│         │        │                    │        │ Master       │
│ - name  │        │ - required_qty     │        └──────────────┘
│ - diff  │        │ - is_essential ★   │
└────┬────┘        └────────────────────┘
     │
     │ 1:N
     ▼
┌──────────────┐
│ Cook_History │  ← INSERT 시 트리거 발동 → My_Fridge 차감
│              │
│ - recipe_id  │
│ - cooked_at  │
└──────────────┘
```

### 각 테이블의 역할

| 테이블 | 역할 | 핵심 컬럼 |
|---|---|---|
| **Category** | 식재료 분류 (계층형: 식품 > 채소 > 잎채소) | `parent_id`(self), `default_days`(보관기간) |
| **Ingredient_Master** | 식재료 마스터 (시금치, 두부 등) | `base_unit`(g, ml 등) |
| **Unit_Conversion** | 사용자 단위 ↔ 기본 단위 환산표 | `user_unit`(팩), `convert_to_base`(600) |
| **My_Fridge** | 사용자가 가진 재고 | `quantity`(g 기준), `expire_date` |
| **Recipe** | 레시피 마스터 | `difficulty`, `estimated_time` |
| **Recipe_Ingredient** | 레시피에 필요한 재료 + 양 | `required_qty`, **`is_essential`★** |
| **Cook_History** | 요리 실행 이력 | `recipe_id`, `cooked_at` |

### 왜 이런 구조인가

**① 왜 `Category`가 self-join (계층형)인가?**

식품 분류는 트리 구조가 자연스럽다.
```
식품
├─ 채소
│  ├─ 잎채소 (시금치, 깻잎...)
│  └─ 뿌리채소 (당근, 무...)
└─ 육류
   ├─ 소고기
   └─ 돼지고기
```
각 카테고리는 `parent_id`로 부모를 가리킨다. **`default_days`(보관기간)도 카테고리별로 다르므로 같은 테이블에 둠** (잎채소 5일, 김치 30일 ...).

**② 왜 `Unit_Conversion`이 별도 테이블인가?**

사용자는 "1팩"이라 입력하지만 DB는 "600g"으로 저장해야 비교가 가능하다.
```
사용자 입력: 삼겹살 1팩 + 2팩
            ↓ Unit_Conversion(팩 → 600g)
DB 저장:    quantity = 1800g
            ↓
Recipe 비교: required_qty(600g) <= 1800g → 요리 가능
```
**단위 추상화 레이어**로 별도 테이블에 둠.

**③ 왜 `Recipe_Ingredient.is_essential`이 평가 포인트인가?**

레시피마다 "필수 재료"와 "있으면 좋은 재료"가 다르다.
- 김치찌개 필수: 김치, 돼지고기 / 옵션: 두부, 대파
- **추천은 필수 재료만 100% 보유한 레시피를 고름** ← 이게 디비전 쿼리의 입력

**④ 왜 `quantity`(DB 기준)와 `user_quantity`(사용자 기준)를 둘 다 저장?**

- `quantity`: 추천 쿼리에서 비교에 쓰임 (모든 단위가 g/ml 기준)
- `user_quantity`: 사용자에게 다시 보여줄 때 ("1.5팩 남았어요")
- 둘 다 저장하면 매번 환산할 필요 없음 (조회 성능)

---

## 5. DB 트리거 — 이 프로젝트의 평가 포인트

**트리거(Trigger)**: 특정 SQL 작업(INSERT/UPDATE/DELETE)이 발생했을 때 DB가 자동으로 실행하는 코드. Application 코드가 아닌 **DB 자체에 비즈니스 로직 일부를 위임**.

### 트리거 1: `trg_auto_expire_date`

**역할**: `My_Fridge`에 재료를 추가할 때 `expire_date`(유통기한)를 자동 계산.

**동작 시점**: `BEFORE INSERT ON My_Fridge`

**시퀀스**:
```
[Service] INSERT INTO My_Fridge (ingredient_id=24, quantity=500, ...)
              ↓
[Trigger 발동]
   1. ingredient_id=24 (김치)로 Ingredient_Master 조회
   2. Ingredient_Master.category_id 따라 Category 조회
   3. Category.default_days = 30 가져옴
   4. NEW.expire_date = CURRENT_DATE + 30일 자동 설정
              ↓
[DB] 실제 INSERT 수행 (expire_date까지 채워진 채로)
```

**왜 트리거로?**
- Service에서 매번 계산하면 코드가 복잡해지고 빠뜨릴 위험 있음
- **DB 차원에서 강제 → 어떤 경로로 INSERT해도 무조건 적용**
- 평가 포인트 ★

### 트리거 2: `trg_auto_stock_reduce`

**역할**: 요리를 기록(`Cook_History` INSERT)하면 사용된 재료를 `My_Fridge`에서 자동 차감.

**동작 시점**: `AFTER INSERT ON Cook_History`

**시퀀스**:
```
[Service] INSERT INTO Cook_History (recipe_id=1)  ← 김치찌개 요리
              ↓
[Trigger 발동]
   1. Recipe_Ingredient에서 recipe_id=1의 필요 재료 목록 조회
      → 김치 300g, 삼겹살 200g, 두부 100g, 대파 50g
   2. My_Fridge UPDATE:
      - 김치: 500 → 200
      - 삼겹살: 600 → 400
      - 두부: 300 → 200
      - 대파: 100 → 50
   3. quantity <= 0 인 row는 DELETE
              ↓
[DB] 모든 변경 반영 완료
```

### 함정 — JPA와 트리거의 충돌

```
┌──────────────────────────────────────────────────────┐
│  Application (JPA)         │     Database            │
│                            │                         │
│  영속성 컨텍스트(메모리)    │     My_Fridge 테이블    │
│   김치: 500g (캐시됨) ◄─── 동기화 X ──── 김치: 200g  │
│                            │     (트리거가 수정)     │
└──────────────────────────────────────────────────────┘
                              ↑
                    트리거는 DB만 수정, JPA는 모름
```

**문제**: `save()` 직후 `findById()`로 조회하면 JPA 캐시(500g)가 반환됨. 사용자는 트리거 차감 후 값(200g)을 봐야 함.

**해결 패턴 (`CookService.cook()`)**:
```java
em.flush();  // 트리거를 즉시 발동시킴 (영속성 컨텍스트의 변경사항을 DB에 반영)
em.clear();  // JPA 캐시 비움 → 다음 조회는 DB에서 새로 가져옴
```

또는 특정 entity만 갱신:
```java
em.refresh(item);  // DB에서 다시 읽어와 entity 갱신
```

---

## 6. 추천 쿼리 — 관계대수 디비전 패턴

### 디비전(Division)이란?

관계대수의 연산 중 하나. **"X의 모든 원소를 가진 Y"를 찾을 때** 사용.

**예시**: "모든 필수 재료를 가진 레시피"
- X = 레시피의 필수 재료 집합
- Y = 사용자 냉장고의 재료 집합
- 결과 = `Y ⊇ X`인 레시피들

### 우리 쿼리 (Native SQL)

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

### 한 줄씩 풀이

```
Recipe와 Recipe_Ingredient를 JOIN
  → 각 레시피의 (필수+옵션) 재료 목록

LEFT JOIN My_Fridge ON 같은 재료 AND 양도 충분
  → 매칭되면 f.fridge_item_id 값 있음, 없으면 NULL

WHERE is_essential = TRUE
  → 옵션 재료 제외, 필수만 봄

GROUP BY 레시피
HAVING COUNT(f.fridge_item_id) = COUNT(ri.ingredient_id)
  → "냉장고에 매칭된 재료 수" == "필수 재료 수"
  → 즉, 모든 필수 재료가 충족된 레시피만 남음
```

### 핵심 트릭

**`COUNT(NULL)`은 카운트되지 않는다.**

LEFT JOIN에서 매칭 안 된 행은 `f.fridge_item_id = NULL`. `COUNT(f.fridge_item_id)`는 NULL을 제외하므로 **매칭된 재료 수만 셈**.

| 레시피 | 필수재료 수 | 매칭된 수 | HAVING 조건 |
|---|---|---|---|
| 김치찌개 (김치+삼겹살) | 2 | 2 (둘 다 있음) | ✅ 통과 |
| 제육볶음 (3개) | 3 | 2 (고추장 없음) | ❌ 제외 |
| 시금치나물 (시금치) | 1 | 1 | ✅ 통과 |

### 왜 Native Query인가?

- JPQL은 객체 지향 쿼리라 `COUNT(NULL) 제외 트릭`을 직관적으로 표현하기 어려움
- 디비전 패턴은 SQL 그대로가 가장 명확
- **JPA가 모든 쿼리를 자동 생성해줄 거란 환상에서 벗어나야 함** — 복잡한 비즈니스 로직은 SQL로 직접 작성하는 게 낫다.

---

## 7. 백엔드 핵심 패턴 5가지

### 7-1. Entity vs DTO — 왜 분리하나

**Entity**: DB 테이블과 1:1로 매핑되는 객체.
```java
@Entity
public class Recipe {
    @Id Integer id;
    String name;
    @OneToMany List<RecipeIngredient> ingredients;  // ← 연관관계
}
```

**DTO** (Data Transfer Object): 외부(클라이언트)에 보낼 응답 구조.
```java
public record RecipeSummaryResponse(
    Integer id, String name, String difficulty, ...
) {}
```

**왜 분리?**

| 이유 | 설명 |
|---|---|
| ① 양방향 함정 | Entity 직접 반환 시 무한 순환 참조 (다음 절 참고) |
| ② 보안 | Entity의 모든 필드가 외부로 노출됨 (비밀 필드도 같이) |
| ③ 응답 통제 | API마다 필요한 필드가 다름 (목록 vs 상세) |
| ④ 트랜잭션 | DTO로 변환 후 응답 → 트랜잭션 안에서 Lazy 필드 안전하게 처리 |

### 7-2. 양방향 직렬화 함정 — 무한 재귀

**문제 상황**:
```java
@Entity Recipe {
    @OneToMany List<RecipeIngredient> ingredients;  // Recipe → 재료들
}
@Entity RecipeIngredient {
    @ManyToOne Recipe recipe;                       // 재료 → 자기 레시피
}
```

Controller가 `Recipe`를 JSON으로 반환하면 Jackson이 직렬화:
```
Recipe(id=1, name="김치찌개", ingredients=[
    RecipeIngredient(id=1, recipe=Recipe(id=1, name="김치찌개", ingredients=[
        RecipeIngredient(id=1, recipe=Recipe(id=1, name="김치찌개", ingredients=[
            ... 무한 반복 ...
```

→ JSON depth 1000 초과 시 예외 발생, 응답 실패.

**임시 해결 (PR #4)**: `@JsonIgnore` 어노테이션
```java
@JsonIgnore
@ManyToOne Recipe recipe;  // 직렬화 시 이 필드 무시
```

**근본 해결 (PR #6)**: DTO 도입
```java
// 응답 객체를 새로 만들어서 무한 재귀 자체가 발생할 수 없게 함
public record RecipeSummaryResponse(Integer id, String name, ...) {}
```

**비교**:
```
@JsonIgnore 방식 (PR #4)
────────────────────────────
   응답마다 필요한 필드가 다름 → @JsonIgnore 위치도 매번 다름
   새 응답 추가할 때마다 같은 함정 → 두더지잡기

DTO 방식 (PR #6)
────────────────────────────
   각 API마다 DTO를 만들어서 필요한 필드만 명시적으로 선택
   양방향 관계 자체를 만질 일이 없어짐 → 함정 봉쇄
```

### 7-3. JPA 영속성 컨텍스트와 Lazy Loading

**영속성 컨텍스트(`EntityManager`)**:
> JPA가 "지금 트랜잭션에서 다루는 Entity 객체들을 메모리에 캐싱"하는 공간.
> 트랜잭션 안에서는 같은 ID를 두 번 조회해도 DB를 한 번만 친다.

**Lazy Loading**: 연관관계 필드를 "실제로 필요할 때만" 조회.

```java
@Entity
public class CookHistory {
    @ManyToOne(fetch = FetchType.LAZY)
    Recipe recipe;   // 가져올 때는 진짜 객체 아닌 "Proxy" (껍데기)
}

CookHistory h = repo.findById(1);   // recipe는 프록시 (id만 있음)
h.getRecipe().getName();             // ← 이 순간 SELECT * FROM Recipe 쿼리 발생
```

**프록시**: Hibernate가 만든 가짜 객체. 실제 필드값에 접근하면 그제서야 DB를 조회.

**핵심 제약**:
> 프록시는 **영속성 컨텍스트가 살아있을 때만** DB를 조회할 수 있다.

```
[트랜잭션 시작]
    em(영속성 컨텍스트) 활성화
    └─ 프록시가 값 필요 시 em에게 "DB 조회해줘" 요청 → 가능

[em.clear() 또는 트랜잭션 종료]
    em 소멸
    └─ 프록시가 값 요청 → 요청할 통로 없음 → LazyInitializationException
```

### 7-4. 트리거 캐시 함정 — `em.flush() → 변환 → em.clear()` 패턴

5절에서 본 함정의 정답 코드:

```java
@Transactional
public CookHistoryResponse cook(Integer recipeId) {
    Recipe recipe = recipeRepository.findById(recipeId).orElseThrow(...);
    CookHistory history = CookHistory.of(recipe);
    cookHistoryRepository.save(history);

    em.flush();                                          // ① 트리거 발동
    CookHistoryResponse response = CookHistoryResponse.from(history);  // ② 영속 상태에서 DTO 변환 (Lazy 필드 안전)
    em.clear();                                          // ③ 캐시 비움 (다음 조회는 차감된 DB 값을 가져옴)

    return response;                                     // ④ DTO는 이미 값이 박혀있어서 detached 상관없음
}
```

**왜 이 순서?**
- `em.clear()`를 먼저 하면 `history`가 detached → `getRecipe().getName()` 호출 시 `LazyInitializationException`
- DTO로 먼저 변환하면 record에 값이 박혀서 안전

### 7-5. 공통 응답 형식 — `ApiResponse<T>`

모든 API 응답을 동일 구조로 통일:
```java
public class ApiResponse<T> {
    boolean success;
    T data;
    String message;

    public static <T> ApiResponse<T> ok(T data) { ... }
    public static <T> ApiResponse<T> ok(T data, String message) { ... }
    public static <T> ApiResponse<T> error(String message) { ... }
}
```

응답 예:
```json
{ "success": true, "data": { ... }, "message": "요리가 완료되었습니다." }
```

**왜?**
- 프론트가 모든 응답에 대해 동일한 파싱 로직 사용 가능
- 에러 응답도 같은 구조 → if/else 분기 단순화

---

## 8. 지금까지의 작업 흐름 (PR 히스토리)

### PR 타임라인

```
fcb538c  chore: 프로젝트 초기 구조 셋업
   │
PR #1 ──► feat: 백엔드 초기 셋업 (Gradle, Entity 7개, 레시피/요리 도메인)
   │       이도형이 Spring Boot 프로젝트 + Entity 7개 + RecipeRepository(추천 쿼리)
   │       + CookService(트리거 후 캐시 초기화) + ApiResponse + CORS 작성
   │
PR #2 ──► feat: DDL 7개 테이블, 트리거 2개, 더미데이터 작성
   │       손유경이 SQL 작성. 코드리뷰에서 unit 컬럼 추가, 트리거 DELETE 범위 수정,
   │       Recipe_Ingredient PK명 정리 등 4건 반영
   │
PR #3 ──► refactor: Entity 컬럼명을 DDL 기준에 맞춰 정렬
   │       이도형 Entity 7개 컬럼명을 손유경 DDL과 1:1 맞춤 (컬럼명만)
   │
PR #4 ──► fix: Entity PK 타입 Integer 통일 및 양방향 JSON 순환 차단
   │       [큰 사건] DB 셋업 → 부팅 시도 → SchemaManagementException 발생!
   │       원인: Entity PK는 Long(BIGINT) ↔ DDL은 INT AUTO_INCREMENT 불일치
   │       조치: 12곳 Long → Integer 변경 + 양방향 함정 2곳 @JsonIgnore 임시 패치
   │
PR #5 ──► chore: CLAUDE.md를 WHAT·WHY·HOW 구조로 간결화
   │       AI 도구용 지침 문서 정리 (188줄 → 55줄)
   │
PR #6 ──► refactor: 컨트롤러 응답 DTO 도입 및 레시피 상세 조회 API 추가  ← 현재
           양방향 함정 근본 해결: Entity 직접 반환 → DTO record 패턴
           GET /api/recipes/{id} 신규 (fetch join + DISTINCT)
           CookService의 detached entity 직렬화 함정도 함께 해소
```

### 각 PR에서 배운 것

**PR #1 → 학습 포인트**: 초기 셋업 시 Spring Initializr를 활용해 의존성 시행착오를 줄였다. CookService에 `em.clear()`를 미리 넣어둔 게 PR #6에서 정통 해결의 출발점이 됨.

**PR #2 → 학습 포인트**: SQL DDL을 짤 때 컬럼명/타입은 Entity와 1:1 맞춰야 하는데, 그 검증은 **실제 부팅 전까지 불가능**. PR #2 리뷰에서 컬럼명만 봤지 타입은 못 봤음 → PR #4의 사고로 이어짐.

**PR #3 → 학습 포인트**: 컬럼명 정렬은 표면적 일치만 본 것. **타입까지 1:1 대조해야 했다**. 다음에 같은 PR이 오면 PK/FK 타입 명시적 체크리스트로 점검.

**PR #4 → 학습 포인트** (이 프로젝트에서 가장 중요한 사건):
1. **"코드는 완성됐다"는 판단은 부팅까지 한 후에만 내려야 한다**. 한 번도 안 돌려본 채 plan을 짠 게 사고의 원인.
2. **PowerShell 인코딩 함정**: `Get-Content` 파이프 → CP949 변환 → 한글 깨짐. 해결: `mariadb --default-character-set=utf8mb4 -e "source <절대경로>"`.
3. **양방향 관계 + 직렬화의 충돌**은 JPA 쓰는 모든 프로젝트의 고전 함정. `@JsonIgnore`는 임시방편, DTO가 정통 해결.

**PR #5 → 학습 포인트**: CLAUDE.md 같은 AI 지침 문서는 짧고 명확해야 효과적. "이러이러한 명령어를 쓰세요" 같은 절차는 빼고, "왜" 중심으로.

**PR #6 → 학습 포인트**:
1. **`em.flush() → DTO 변환 → em.clear()` 순서가 핵심**. clear() 후 변환하면 LazyInitializationException.
2. **목록(summary)과 상세(detail) DTO를 분리** → N+1 차단 + 페이로드 절감.
3. `fetch join + DISTINCT` 패턴으로 detail API의 N+1 해결.

---

## 9. 남은 작업

### 9-1. 손유경 영역 (백엔드)

`HANDOFF_SOHNYK.md` 참조 (gitignore되어 있음).

요약:
- 4개 도메인 × 4개 레이어 = 약 16개 파일 작성
- 핵심 함정: 트리거 캐시 함정 (`em.refresh` 필요)
- 우선순위: MyFridge CRUD > Category 트리

### 9-2. 프론트엔드 (이승하)

- 백엔드 API 연동 (CORS 이미 `localhost:3000` 허용)
- 화면 구성:
  - 냉장고 화면 (My_Fridge CRUD)
  - 레시피 추천 화면 (`GET /api/recipes/recommend`)
  - 레시피 상세 화면 (`GET /api/recipes/{id}`)
  - 요리 실행 (`POST /api/cook/{recipeId}`)

### 9-3. 발표 준비

- ERD 문서화 (`docs/erd.png` 등)
- 시연 시나리오 작성
- 디비전 쿼리 + 트리거 동작을 어떻게 시연으로 보여줄지 설계
- 평가 포인트 2개(트리거 + 디비전)를 슬라이드에서 강조

---

## 부록: 자주 참조하는 명령어

### 빌드/실행
```bash
cd backend
./gradlew compileJava     # 컴파일만
./gradlew bootRun         # 서버 실행 (8080)
```

### DB 적용 (한글 깨짐 방지)
```bash
mariadb -u root -p1234 -P 3307 --default-character-set=utf8mb4 \
  -e "source E:/projects/smart-fridge-db/db/01_schema.sql"
```

### API 테스트 (Postman 대신 curl)
```bash
curl http://localhost:8080/api/recipes
curl http://localhost:8080/api/recipes/1
curl http://localhost:8080/api/recipes/recommend
curl -X POST http://localhost:8080/api/cook/1
curl http://localhost:8080/api/cook/history
```

### 트리거 동작 검증 (DB 직접)
```sql
-- 요리 후 재고 차감 확인
SELECT f.fridge_item_id, f.ingredient_id, f.quantity
FROM My_Fridge f
WHERE f.ingredient_id IN (
  SELECT ingredient_id FROM Recipe_Ingredient WHERE recipe_id = 1
);
```
