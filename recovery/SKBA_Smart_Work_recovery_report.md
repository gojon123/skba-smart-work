# SKBA Smart Work 데이터 복구 보고

- 총 메시지: 163,854
- 소스 ZIP: 9개
- 소스 파일: 56개
- MES 이벤트 후보(넓은 기준): 42,271
- MES 이벤트 후보(엄격 기준): 382
- 인수인계 후보: 4,120

## 핵심 판단
- 카카오톡 원본 운영 데이터는 실제로 존재하며, 검색용 복구가 가능합니다.
- 자동 추출 결과에는 오탐이 일부 섞일 수 있어, 최종 운영 DB 반영 전 검수가 필요합니다.
- 엄격 기준(`mes_error_summary_strict.csv`)을 우선 검색 DB seed로 쓰는 것이 안전합니다.

## 상위 에러 코드 (엄격 기준)
- 4007: 74건 | 라인=Line1 ; Line2 ; Line20 ; Line3 ; Line4 ; Line5 ; Line6 | 공정=Aging ; Cell Packing ; Charge ; Degassing ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; PPC ; Packing ; SVI ; VI
- 999: 37건 | 라인=- | 공정=Cell Packing ; Degassing ; PPC ; Packing
- 9999: 31건 | 라인=Line1 ; Line10 ; Line11 ; Line12 ; Line2 ; Line2-3 ; Line3 ; Line3-1 ; Line4 ; Line5 ; Line6 ; Line8 ; Line9 | 공정=Aging ; Charge ; Degassing ; Discharge ; Formation ; IR ; IR OCV ; Inspection ; OCV ; PPC ; Packing ; SVI ; VI
- 4004: 14건 | 라인=Line1 ; Line3 ; Line5 | 공정=-
- 2502: 11건 | 라인=Line1 ; Line20 ; Line3 ; Line5 ; Line6 | 공정=Aging ; Cell Packing ; Charge ; Degassing ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; PPC ; Packing ; SVI ; VI
- 4003: 10건 | 라인=Line1 ; Line10 ; Line12 ; Line2 ; Line20 ; Line3 ; Line5 ; Line6 ; Line7 ; Line8 | 공정=Aging ; Cell Packing ; Charge ; Degassing ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; PPC ; Packing ; SVI ; VI
- 0027: 9건 | 라인=Line10 ; Line12 ; Line7 ; Line8 | 공정=Aging ; Degassing ; Formation ; IR ; Inspection ; PPC ; Packing ; SVI ; VI
- 4553: 9건 | 라인=Line10 ; Line11 ; Line12 ; Line7 ; Line8 ; Line9 | 공정=Aging ; Cell Packing ; Degassing ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; Packing ; SVI ; VI
- 3500: 8건 | 라인=Line1 | 공정=Formation ; Inspection ; PPC
- 0014: 8건 | 라인=Line1 ; Line10 ; Line2 ; Line20 ; Line3 ; Line32 ; Line4 ; Line5 ; Line6 | 공정=Aging ; Cell Packing ; Charge ; Degassing ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; PPC ; Packing ; SVI ; VI
- 3018: 8건 | 라인=Line3 | 공정=Charge ; Discharge ; IR ; IR/OCV ; OCV ; VI
- 0026: 7건 | 라인=Line10 ; Line11 ; Line12 ; Line7 ; Line8 ; Line9 | 공정=Aging ; Charge ; Discharge ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; PPC ; Packing ; SVI ; VI
- I2404: 6건 | 라인=- | 공정=VI
- 0016: 6건 | 라인=Line10 ; Line11 ; Line12 ; Line7 ; Line8 ; Line9 | 공정=Aging ; Degassing ; Formation ; IR ; Inspection ; Packing ; SVI ; VI
- 3007: 5건 | 라인=- | 공정=Inspection
- 5501: 5건 | 라인=Line1 | 공정=Charge ; Discharge ; Formation ; SVI ; VI
- 100: 4건 | 라인=- | 공정=-
- 0003: 3건 | 라인=Line1 ; Line20 ; Line3 ; Line5 ; Line6 ; Line7 ; Line8 | 공정=Aging ; Cell Packing ; Charge ; Degassing ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; PPC ; Packing ; SVI ; VI
- 01400: 3건 | 라인=Line1 | 공정=IR ; VI
- 6002: 3건 | 라인=- | 공정=PPC

## 상위 소스 채팅
- Kakaotalk_Chat_SKBA #1 Formation Maintenance.zip: 76,388 메시지
- Kakaotalk_Chat_[SKBA1] Entire Formation.zip: 41,703 메시지
- 2024.06.04.zip: 23,864 메시지
- Kakaotalk_Chat_P1 Formation Ramp up.zip: 10,738 메시지
- Kakaotalk_Chat_[SKBA1] MES issue request.zip: 4,615 메시지
- Kakaotalk_Chat_[SKBA2] Formation MES.zip: 4,057 메시지
- Kakaotalk_Chat_SKBA 화성2동 인수인계.zip: 1,126 메시지
- Kakaotalk_Chat_[SKBA 1동] 화성 이슈 공유방.zip: 976 메시지
- Kakaotalk_Chat_SKBA 1동 인수인계.zip: 387 메시지

## 생성 파일
- all_messages_index.csv
- mes_events.csv
- mes_events_strict.csv
- mes_error_summary.csv
- mes_error_summary_strict.csv
- handover_candidates.csv
- keyword_index.csv
- source_chat_counts.csv
- recovery_manifest.json
- skba_smart_work_recovery_seed.json