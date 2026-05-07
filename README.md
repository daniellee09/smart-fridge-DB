# Smart Fridge - 스마트 냉장고 관리 및 레시피 매칭 시스템

인하대학교 데이터베이스 팀 프로젝트 (2026-1학기)

냉장고 속 식재료를 관리하고, 보유 재료 기반으로 만들 수 있는 레시피를 추천해주는 시스템입니다.

## 팀원

| 이름 | 역할 | 담당 |
|---|---|---|
| 이승하 | Frontend | React + Vite |
| 손유경 | Backend - DB/냉장고 | DDL, 트리거, 더미데이터, 식재료/냉장고/카테고리 API |
| 이도형 | Backend - 코어/레시피 | Spring Boot 셋업, JPA Entity, 레시피/요리 API, 추천 쿼리 |

## 폴더 구조

```
smart-fridge-DB/
├── backend/    # Spring Boot (Java 21 + Spring Data JPA)
├── frontend/   # React + Vite
├── db/         # DDL, 트리거, 더미데이터 SQL
└── docs/       # ERD, 발표자료, 시연 시나리오
```

## 기술 스택

- **Backend**: Java 21, Spring Boot 3.x, Spring Data JPA, Gradle
- **DB**: MariaDB 10.x
- **Frontend**: React + Vite + Axios

## 실행 방법

### Backend

```bash
cd backend
./gradlew bootRun
```

### Frontend

```bash
cd frontend
npm run dev
```

### DB 접속 설정

`docs/application-local.example.yml`을 참고하여 `backend/src/main/resources/application-local.yml`을 생성하세요.

## 주요 기능

1. **식재료 관리** - 단위 추상화 (사용자는 "1팩", DB는 "600g"으로 저장)
2. **유통기한 자동 계산 트리거** - 식재료 등록 시 카테고리 기본 유통기한으로 자동 산출
3. **보유 재료 기반 레시피 추천** - 관계대수 디비전 쿼리로 필수 재료 100% 보유 레시피만 반환
4. **요리 완료 시 재고 자동 차감 트리거** - 레시피 요구량만큼 수량 차감, 소진 시 자동 삭제

## 일정

| 구간 | 기간 | 내용 |
|---|---|---|
| Week 0 | ~5/9 | 사전 합의, 레포 셋업 |
| Week 1 | 5/10~5/16 | 기반 구축 + API 개발 |
| Week 2 | 5/17~5/24 | 추천 쿼리 + 통합 + 발표 준비 |
