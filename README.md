# SKBA Smart Work 재배포판 (수정본)

이 패키지는 업로드된 `SKBA_SMART_WORK_COMPLETE_REALTIME.zip`를 기준으로,
즉시 배포 가능한 형태로 UI와 프런트 동작을 정리한 수정본입니다.

## 이번 수정 반영
- 모바일 우선 블루톤 UI 재정리
- 하단 탭 네비게이션 적용
- 캘린더 날짜 선택 / 근무 수정 UI 정리
- 채팅 화면을 말풍선형 UI로 변경
- 채팅 번역 표시 토글 추가
- 맞춤법 보정 함수 실동작 반영
- 설정에 언어 / UI 스타일 / 채팅 번역 표시 추가
- Work 입력 화면 추가
- 인수인계에 위치 입력 추가
- 통합검색 결과 카드 구조 정리
- 데모 계정 기본값 정리

## 바로 테스트
- `index.html` 실행
- 데모 계정 로그인
- 로컬 모드에서 UI와 기능 검증

### 데모 계정
- engineer@skba.local / 1234  → 김응준 / Samkoo
- engineertech@skba.local / 1234 → 천준범 / Engineer
- operator1@skba.local / 1234 → 아무개 / Operator

## 실사용 배포
- `supabase/schema.sql` 실행
- `supabase/seed_search_index.sql` 실행
- `js/config.js`에 Supabase URL / Key 입력
- Vercel 또는 Netlify 배포

## 주의
- 번역은 현재 간단 표시형입니다. 외부 번역 API 연결 전까지는 전문 번역이 아닙니다.
- 맞춤법 보정은 현재 로컬 정리형입니다. AI 기반 보정은 별도 API 연결이 필요합니다.
- Work 저장은 현재 로컬 저장입니다. Supabase 테이블을 별도 만들면 서버 저장으로 확장 가능합니다.

