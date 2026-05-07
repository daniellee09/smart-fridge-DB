---
name: commit-and-pr
description: 작업이 끝난 시점에 변경사항을 커밋하고 PR을 올리는 워크플로 자동화. 사용자가 "커밋하고 PR 올려줘", "PR 올려줘", "develop으로 PR 올려줘" 같은 요청을 할 때 사용. 커밋 메시지 컨벤션(feat/fix/docs/refactor/test/chore/style)을 자동으로 적용하고, gh CLI로 PR을 생성하며, PR 본문은 레포의 PR 템플릿(.github/pull_request_template.md)을 따른다.
---

# commit-and-pr

작업이 끝났을 때 호출되는 워크플로 자동화 Skill. 변경사항 분석 → 적절한 브랜치 확인 → 커밋 메시지 작성 → 푸시 → PR 생성까지 한 번에 처리한다.

## 호출 시점

사용자가 작업을 마치고 다음 같은 요청을 할 때:
- "커밋해서 PR 올려줘"
- "PR 올려줘"
- "develop으로 PR 올려줘"
- "지금까지 한 거 정리해서 올려줘"

## 사전 확인 (호출 시 매번)

### 1. gh CLI 설치 여부
```bash
gh --version
```

설치 안 되어 있으면 즉시 안내하고 중단:
- macOS: `brew install gh`
- Windows: `winget install GitHub.cli`
- 설치 후 `gh auth login` (GitHub.com → HTTPS → 브라우저 인증)

설치는 되어 있는데 인증 안 된 경우(`gh auth status` 실패)도 동일하게 안내.

### 2. 현재 디렉토리가 레포 루트인지
```bash
git rev-parse --show-toplevel
```

레포 루트가 아니면 이동하라고 안내.

### 3. 현재 브랜치 확인
```bash
git branch --show-current
```

**`main`, `develop` 브랜치에 있으면 작업 중단** — 보호 브랜치는 직접 push 금지.
사용자에게 "현재 develop 브랜치입니다. 어떤 작업 브랜치를 만들까요?" 물어보고 적절한 `feat/xxx` 또는 `fix/xxx` 브랜치 생성 후 진행.

## 워크플로

### STEP 1. 변경사항 파악

```bash
git status
git diff --stat
```

변경 파일이 없으면 "커밋할 변경사항이 없습니다"로 종료.

### STEP 2. 커밋 타입과 범위 결정

변경 파일을 보고 커밋 타입을 추론:

| 타입 | 트리거 |
|---|---|
| `feat` | 새 기능 추가 (Controller/Service/Entity 신규 생성, 새 API) |
| `fix` | 버그 수정 (기존 로직 변경, 예외 처리 추가 등) |
| `refactor` | 동작 변화 없는 구조 개선 |
| `test` | 테스트 코드 추가/수정 |
| `docs` | 문서만 변경 (.md, 주석) |
| `chore` | 빌드/설정/의존성 (build.gradle, application.yml 등) |
| `style` | 포맷팅, import 정리 |

여러 타입이 섞여 있으면 사용자에게 "변경사항이 다양한데 커밋을 분리할까요? 아니면 가장 비중 큰 타입으로 묶을까요?" 물어볼 것.

### STEP 3. 커밋 메시지 작성

형식:
```
<type>: <한 줄 요약>

<선택: 본문 — 왜 이렇게 했는지>
```

규칙:
- **한국어 OK** (이 팀은 한글 커밋 메시지 사용)
- 한 줄 요약은 50자 이내, 동사로 시작 (예: "구현", "수정", "추가")
- 본문은 변경사항이 복잡할 때만 (단순한 변경엔 한 줄로 충분)
- "왜"를 적되, "어떻게"는 코드를 보면 알 수 있으므로 생략

좋은 예시:
- `feat: 추천 레시피 API 디비전 쿼리 구현`
- `fix: 요리 완료 후 JPA 캐시로 차감 안 된 값이 응답되던 문제 해결`
- `chore: Lombok 의존성 추가`
- `refactor: RecipeService에서 추천 로직을 별도 메서드로 분리`

나쁜 예시 (피할 것):
- `update code` (타입 없음, 영어, 모호함)
- `feat: 코드 추가` (구체성 부족)
- `feat: RecipeController.java에 @GetMapping 추가하고 RecipeService 호출` ("어떻게"만 적힘)

### STEP 4. 커밋

```bash
git add <변경 파일>  # 또는 git add . (단, 의도하지 않은 파일 없는지 한번 더 확인)
git commit -m "<message>"
```

⚠️ **add 전 반드시 확인:**
- `application-local.yml` 같은 시크릿 파일이 staged 되지 않는지
- `build/`, `target/`, `node_modules/` 등이 staged 되지 않는지
- 이런 거 발견되면 즉시 unstage하고 .gitignore 점검

### STEP 5. 푸시

```bash
git push -u origin <current-branch>
```

처음 푸시면 `-u` 플래그 자동으로 붙여서 upstream 설정.

### STEP 6. PR 생성 (gh CLI)

```bash
gh pr create \
  --base develop \
  --head <current-branch> \
  --title "<title>" \
  --body "<body>"
```

**PR 제목 형식:**
```
[<type>] <한 줄 요약>
```

예: `[feat] 추천 레시피 API 디비전 쿼리 구현`

**PR 본문은 레포의 `.github/pull_request_template.md` 따름:**

```markdown
## 작업 내용
- (커밋 메시지를 풀어서 요약)

## 테스트
- (Postman으로 테스트했다면 어떤 시나리오인지, 또는 "수동 테스트 필요")

## 리뷰어가 봐줬으면 하는 점
- (특히 신경 쓴 부분 / 애매한 부분 / 의견 듣고 싶은 곳)

## 관련 이슈
- (있다면 #숫자, 없으면 "없음")
```

**작성 팁:**
- "작업 내용"은 변경사항을 코드 단위가 아닌 **기능 단위로** 풀어쓸 것
- "테스트"가 비어있으면 사용자에게 어떻게 검증했는지 물어볼 것
- "리뷰어가 봐줬으면 하는 점"이 떠오르지 않으면 비워두지 말고 "특별히 없음" 명시

### STEP 7. 결과 보고

PR 생성 후 출력:
- 커밋 해시
- PR URL (gh가 출력해줌)
- "팀원에게 리뷰 요청 핑 보내세요" 한 줄 안내

## 예외 케이스

### 케이스 1: 작업 브랜치가 없는 상태에서 호출됨
develop/main에서 호출되면 STEP 1 전에 다음 진행:
1. 변경사항을 보고 적절한 브랜치명 제안 (예: 추천 API 작업이면 `feat/recipe-recommend-api`)
2. 사용자 동의 받음
3. `git checkout -b <branch>` 후 변경사항이 새 브랜치에 그대로 있는지 확인
4. STEP 1부터 진행

### 케이스 2: 너무 많은 변경사항
변경 파일이 20개 이상이면 사용자에게:
- "이만큼을 한 PR로 올리면 리뷰가 어렵습니다. 영역별로 나눌까요?"
- 동의하면 영역별 staged add → 별도 커밋 → 별도 PR로 분리 제안

### 케이스 3: 시크릿 파일이 변경된 게 감지됨
`application-local.yml`, `.env` 등이 변경 목록에 보이면:
- 절대 add하지 말 것
- 사용자에게 즉시 알리고 `.gitignore`에 등록되어 있는지 확인

### 케이스 4: develop 브랜치 최신화 안 됨
PR 생성 직전 다음 확인:
```bash
git fetch origin
git log HEAD..origin/develop --oneline
```

develop이 앞서 있으면 사용자에게 알리고 "develop을 merge할까요, rebase할까요?" 선택받기.
- 합의: 이 팀은 **merge 선호** (히스토리 보존). rebase는 선택지로만 제공하고 기본은 merge.

## 절대 하지 말 것

- main 또는 develop 브랜치에 직접 push
- 시크릿 파일 (`application-local.yml`, `.env` 등) 커밋
- `--force` push (히스토리 정리 필요해도 사용자 명시적 동의 없으면 금지)
- `gh pr merge` 자동 실행 — PR 머지는 반드시 사람이 리뷰 후 직접
- 영어 커밋 메시지 강제 (이 팀은 한글 사용)
- "어떻게 변경했는지"를 커밋 메시지에 길게 나열 (코드를 보면 됨)

## 참고: PR 본문 자동 생성 예시

작업: 추천 레시피 API 디비전 쿼리 구현 (Controller, Service, Repository, DTO 추가)

```markdown
## 작업 내용
- 추천 레시피 API (`GET /api/recipes/recommend`) 구현
- 디비전 쿼리는 `RecipeRepository`에 Native Query로 작성 (HAVING + COUNT 패턴)
- `RecommendRecipeDto` 추가하여 임박 재료 정보 포함

## 테스트
- Postman으로 다음 시나리오 검증:
  1. 김치찌개 필수재료(돼지고기, 김치) 모두 보유 → 결과에 포함됨
  2. 두부만 부족할 때 → 김치찌개 결과에서 제외됨
  3. 빈 냉장고 → 빈 배열 반환

## 리뷰어가 봐줬으면 하는 점
- 디비전 쿼리의 HAVING 절 비교 대상이 둘 다 "레시피 기준"인지 한 번 더 봐주세요
- 정렬 기준(임박 재료 우선)을 쿼리에 넣을지, 서비스 레이어에서 처리할지 의견 주세요

## 관련 이슈
- 없음
```
