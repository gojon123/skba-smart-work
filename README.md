# SKBA Smart Work 재배포판

이 패키지는 복구 보고서 기준으로 검색 시드를 보강한 재배포판입니다.

- 총 메시지: 163,854
- 복구 소스 ZIP: 9개
- 엄격 기준 MES 요약을 검색 seed 우선값으로 사용
- 인수인계 후보와 상위 키워드도 함께 포함

## 바로 테스트
- `index.html` 실행
- 데모 계정 로그인
- 로컬 모드에서 UI와 기능 검증

## 실사용 배포
- `supabase/schema.sql` 실행
- `supabase/seed_search_index.sql` 실행
- `js/config.js`에 Supabase URL / Key 입력
- Vercel 또는 Netlify 배포

## 반영 내용
- SKBA 4조 2교대 14일 패턴 반영
- Samgoo 1동 = 주간 고정, 월/화 휴무
- Samgoo 2동 = 주/야 고정, 월/화 휴무 + 주단위 교대
- 복구 보고서 기반 검색 데이터 반영
- `file://` 환경에서도 검색 시드 로딩되도록 JS fallback 추가

## 포함 파일
- `GUIDE_상세사용법.md`
- `설치방법.txt`
- `supabase/schema.sql`
- `supabase/seed_search_index.sql`
- `recovery/` 폴더의 보고서/매니페스트/상위 요약 CSV
