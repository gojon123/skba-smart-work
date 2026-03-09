-- Recovery-based search seed
truncate table search_index;
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '4007', '라인:Line1 ; Line2 ; Line20 ; Line3 ; Line4 ; Line5 ; Line6 / 공정:Aging ; Cell Packing ; Charge ; Degassing ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; PPC ; Packing ; SVI ; VI / 설비:IR/OCV ; PLC ; PPC ; Pallet ; Rack ; SVI ; Tray', '[SKBA1] MES issue request 님과 카카오톡 대화 저장한 날짜 : 2023-11-14 22:47:53  --------------- 2023년 1월 30일 월요일 --------------- [samkoo/KO/KTL] [오전 2:49] @SKBA.MES.OP Z928375 2L Z928689 2L  V111901 3L Box id 누락되었습니다 정보 보정부탁드립니다 [SKBA.MES.OP] [오전 2:50] 네 운영자님께 전달 드리겠습니다. [samkoo/KO/KTL] [오전 4:29] @SKBA.MES.OP V111900 4L, Z928827 4L Box id 누락되었습니다 정보 보정부탁드립니다 [SKBA.MES.OP] [오전 4:30] 네 전달 드리겠습니다 [SK C&C/강동우/MES] [오전 9:23] Z928475 Z928689 V111901 V111900 Z928827 박스 아이디 보정 했습니다  [SK C&C/채 성민/MES] [오후 2:', 74);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '999', '라인:- / 공정:Cell Packing ; Degassing ; PPC ; Packing / 설비:PPC ; Tray', 'w/o 43502117  “Network error code:999” 정의되지 않은 네트워크 오류( Order 43501270 was already created for this notification)  @Maint/Eng''r/HS Park', 37);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '9999', '라인:Line1 ; Line10 ; Line11 ; Line12 ; Line2 ; Line2-3 ; Line3 ; Line3-1 ; Line4 ; Line5 ; Line6 ; Line8 ; Line9 / 공정:Aging ; Charge ; Degassing ; Discharge ; Formation ; IR ; IR OCV ; Inspection ; OCV ; PPC ; Packing ; SVI ; VI / 설비:Barcode ; Cable ; Clip ; Conveyor ; PPC ; Pallet ; Rack ; SVI ; Sensor ; Tray', '<Maintenance Request> 1. Phenomenon: irocv 3 trays keep coming out and getting stuck at bcr reading 9999 error 2. Time occurred: 12:07 3. Line & location: irocv3.', 31);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '4004', '라인:Line1 ; Line3 ; Line5 / 공정:- / 설비:Tray', 'A15236 Tray 경우 정상투입 확인했습니다 혹시 MES4004 발생 원인알수있을까요?', 14);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '2502', '라인:Line1 ; Line20 ; Line3 ; Line5 ; Line6 / 공정:Aging ; Cell Packing ; Charge ; Degassing ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; PPC ; Packing ; SVI ; VI / 설비:IR/OCV ; Jig ; PLC ; PPC ; Pallet ; Rack ; SVI ; Tray', '디게싱 1라인 언로더에서 2502 알람 발생하여 해당 트레이는 따로 현장에 보관하고 있습니다. 디게싱 데이터 복구 가능 할까요?  트레이 아이디:  A51357 실물 36셀 들어있습니다', 11);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '4003', '라인:Line1 ; Line10 ; Line12 ; Line2 ; Line20 ; Line3 ; Line5 ; Line6 ; Line7 ; Line8 / 공정:Aging ; Cell Packing ; Charge ; Degassing ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; PPC ; Packing ; SVI ; VI / 설비:IR/OCV ; Jig ; PLC ; PPC ; Pallet ; Rack ; SVI ; Sensor ; Tray', '[SKBA1] MES issue request 님과 카카오톡 대화 저장한 날짜 : 2023-11-14 22:47:53  --------------- 2023년 1월 30일 월요일 --------------- [samkoo/KO/KTL] [오전 2:49] @SKBA.MES.OP Z928375 2L Z928689 2L  V111901 3L Box id 누락되었습니다 정보 보정부탁드립니다 [SKBA.MES.OP] [오전 2:50] 네 운영자님께 전달 드리겠습니다. [samkoo/KO/KTL] [오전 4:29] @SKBA.MES.OP V111900 4L, Z928827 4L Box id 누락되었습니다 정보 보정부탁드립니다 [SKBA.MES.OP] [오전 4:30] 네 전달 드리겠습니다 [SK C&C/강동우/MES] [오전 9:23] Z928475 Z928689 V111901 V111900 Z928827 박스 아이디 보정 했습니다  [SK C&C/채 성민/MES] [오후 2:', 10);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '0027', '라인:Line10 ; Line12 ; Line7 ; Line8 / 공정:Aging ; Degassing ; Formation ; IR ; Inspection ; PPC ; Packing ; SVI ; VI / 설비:Jig ; PPC ; Rack ; SVI ; Sensor ; Stacker ; Tray', 'No problem. But i check the log, abd i find S94654 Tray is occured 0027 error. The reason was that the process of the tray was Aging #3, not Folding, so an error occurred.', 9);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '4553', '라인:Line10 ; Line11 ; Line12 ; Line7 ; Line8 ; Line9 / 공정:Aging ; Cell Packing ; Degassing ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; Packing ; SVI ; VI / 설비:Barcode ; Cable ; IR/OCV ; PLC ; Pallet ; Rack ; SVI ; Sensor ; Tray', 'MES code 4553 there are 9 cell in pallet HG27A05 put no data attached to the cells', 9);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '3500', '라인:Line1 / 공정:Formation ; Inspection ; PPC / 설비:Barcode ; PPC ; Sensor ; Tray', 'We had 3500 error code on INS Line 1 while running both R123, R124 types together. Both types are allowed for mix.', 8);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '0014', '라인:Line1 ; Line10 ; Line2 ; Line20 ; Line3 ; Line32 ; Line4 ; Line5 ; Line6 / 공정:Aging ; Cell Packing ; Charge ; Degassing ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; PPC ; Packing ; SVI ; VI / 설비:Cable ; IR/OCV ; Jig ; PLC ; PPC ; Pallet ; Rack ; SVI ; Tray', '[SKBA1] MES issue request 님과 카카오톡 대화 저장한 날짜 : 2023-11-14 22:47:53  --------------- 2023년 1월 30일 월요일 --------------- [samkoo/KO/KTL] [오전 2:49] @SKBA.MES.OP Z928375 2L Z928689 2L  V111901 3L Box id 누락되었습니다 정보 보정부탁드립니다 [SKBA.MES.OP] [오전 2:50] 네 운영자님께 전달 드리겠습니다. [samkoo/KO/KTL] [오전 4:29] @SKBA.MES.OP V111900 4L, Z928827 4L Box id 누락되었습니다 정보 보정부탁드립니다 [SKBA.MES.OP] [오전 4:30] 네 전달 드리겠습니다 [SK C&C/강동우/MES] [오전 9:23] Z928475 Z928689 V111901 V111900 Z928827 박스 아이디 보정 했습니다  [SK C&C/채 성민/MES] [오후 2:', 8);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '3018', '라인:Line3 / 공정:Charge ; Discharge ; IR ; IR/OCV ; OCV ; VI / 설비:IR/OCV ; Tray', '@A/Ishmael/Logistics  Line 3 Tray s03767 Code 4007: missing ir/ocv data missing.  Troubleshooting: 8393  Line 3 Tray s20950 Code: 3018 data not registered normally  Troubleshooting 8393', 8);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '0026', '라인:Line10 ; Line11 ; Line12 ; Line7 ; Line8 ; Line9 / 공정:Aging ; Charge ; Discharge ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; PPC ; Packing ; SVI ; VI / 설비:IR/OCV ; Jig ; PPC ; Pallet ; SVI ; Tray', 'Is it error code 0026?', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', 'I2404', '라인:- / 공정:VI / 설비:-', '세대의 pc 중 첫번째 pc에서는 I2404 에러, 두번째 pc에서는 Value cannot be null. Parameter name: source 라고 에러 출력됩니다, 두번째 컴퓨터는 MES 로그인은 되는상태입니다. 탭 기능 정상인지 확인해보겠습니다.', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '0016', '라인:Line10 ; Line11 ; Line12 ; Line7 ; Line8 ; Line9 / 공정:Aging ; Degassing ; Formation ; IR ; Inspection ; Packing ; SVI ; VI / 설비:PLC ; Pallet ; Rack ; SVI ; Tray', 'When I checked a few cells where 0016 Error occurs, it seems to occur only in 2 lanes', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '3007', '라인:- / 공정:Inspection / 설비:Rack ; Tray', '@갑진/CS/서기원  FCH ROOM BCR Err  MES CODE: 3007 (The tray returned as returncode=2 for the recipe down command given by MES. Please check with the equipment for the reason for the failure to download the recipe.)  설비 확인부탁드립니다.', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '5501', '라인:Line1 / 공정:Charge ; Discharge ; Formation ; SVI ; VI / 설비:PLC ; SVI', '####Formation <Maintenance BM> ▪︎Date : 9/10/2025 ▪︎Line : 1L ▪︎Process : SVI ▪︎Unit : PC ▪︎Start Time : 15:00 ▪︎End Time: 16:30 ▪︎Issue : CIM->PLC check fail error ▪︎Cause : Unknown ▪︎Troubleshooting:  ✅ Due to a CIM → PLC alive check fail error ✔️Windows rebooted twice ✔️PC power off/on once       → 1st error resolved ✅ During operation afterwards, MES error code: 5501 occurred. ✔️Most cells were discharged as NG            (checked with Process ENG) ✔️ 15:00–16:00: 1st resolution completed ✔️', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '100', '라인:- / 공정:- / 설비:-', '100,68  Mes 100.6 100,58  Mes 100.4 100,12  Mes 100.51 101.08  Mes 100.51 100,60  Mes 100.49', 4);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '0003', '라인:Line1 ; Line20 ; Line3 ; Line5 ; Line6 ; Line7 ; Line8 / 공정:Aging ; Cell Packing ; Charge ; Degassing ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; PPC ; Packing ; SVI ; VI / 설비:IR/OCV ; PLC ; PPC ; Pallet ; Rack ; SVI ; Sensor ; Tray', '안녕하세요 Track 4243 상단 BCR 점검부탁드립니다 요즘 MES 0003(Mes Ecs 적재정보상이 할경우 발생)으로 확인시 상단 BCR 미 인식으로 발생되고있습니다 확인부탁드립니다', 3);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '01400', '라인:Line1 / 공정:IR ; VI / 설비:-', 'G5CPS045D30005 해당 파레트 삭제시  ORA-01400 에러 발생합니다', 3);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '6002', '라인:- / 공정:PPC / 설비:PPC', 'Log Analysis page, shows MES code 6002, “[HSMS] T3 timeout alarm in S6F11”', 3);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', 'E1330', '라인:Line1 ; Line20 ; Line3 ; Line5 ; Line6 / 공정:Aging ; Cell Packing ; Charge ; Degassing ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; PPC ; Packing ; SVI ; VI / 설비:IR/OCV ; PLC ; PPC ; Pallet ; Rack ; SVI ; Tray', 'What do you mean by equipment code? When I try to scrap cells through "cell scrap in tray" the error code E1330 pops up', 3);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '0021', '라인:Line1 ; Line10 ; Line2 ; Line3 ; Line32 ; Line4 ; Line5 / 공정:Aging ; Cell Packing ; Degassing ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; PPC ; Packing ; SVI ; VI / 설비:Cable ; IR/OCV ; Jig ; PLC ; PPC ; Pallet ; Rack ; SVI ; Tray', '@SKBA.MES.AE   Hello MES team, We are trying to run R124 type with regular type from EOL line(tray ID A55520). But it gives 0021 error code.  Could you please check ?', 3);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '0007', '라인:Line1 ; Line11 ; Line20 ; Line3 ; Line5 ; Line6 / 공정:Aging ; Cell Packing ; Charge ; Degassing ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; PPC ; Packing ; SVI ; VI / 설비:IR/OCV ; PLC ; PPC ; Pallet ; Rack ; SVI ; Tray', '[SKBA1] MES issue request 님과 카카오톡 대화 저장한 날짜 : 2023-11-14 22:47:53  --------------- 2023년 1월 30일 월요일 --------------- [samkoo/KO/KTL] [오전 2:49] @SKBA.MES.OP Z928375 2L Z928689 2L  V111901 3L Box id 누락되었습니다 정보 보정부탁드립니다 [SKBA.MES.OP] [오전 2:50] 네 운영자님께 전달 드리겠습니다. [samkoo/KO/KTL] [오전 4:29] @SKBA.MES.OP V111900 4L, Z928827 4L Box id 누락되었습니다 정보 보정부탁드립니다 [SKBA.MES.OP] [오전 4:30] 네 전달 드리겠습니다 [SK C&C/강동우/MES] [오전 9:23] Z928475 Z928689 V111901 V111900 Z928827 박스 아이디 보정 했습니다  [SK C&C/채 성민/MES] [오후 2:', 3);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '0020', '라인:- / 공정:Formation / 설비:PLC', '[MES Urgent Update Notice]  The MES update will take place between 14:30-14:50  1. Modified to occur 0020 Error when an ID with no information in the MES is read from the equipment (including HMCID and DMCID)', 3);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '3017', '라인:Line6 / 공정:IR ; OCV / 설비:Tray', '안녕하세요   해당 트레이 S03749는 11월 24일 생산된 Tray인데, 해당 타입의 충방전 공정이 12월 1일 변경되어 step 하나가 추가가되었습니다.   해당 표기 되고있는 충방전 값은 제일 마지막으로 진행된 충방전 값이라 결과 데이터는 있으나 마지막 스탭이아니여서 3017 error 발생하는 것으로 생각됩니다.  해당 트레이들 충방전 Step 재화성 진행을 해야할듯 합니다.  감사합니다', 3);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '0006', '라인:Line10 ; Line11 ; Line7 ; Line8 / 공정:Aging ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; Packing ; SVI ; VI / 설비:IR/OCV ; Pallet ; SVI ; Tray', '@SKBA.MES.AE   안녕하세요  8라인 Packing Mes 0006 발생 하여 설비 정지 중 입니다 Cell ID G8081F7PP7317454  운영 로그 확인 시 패킹 StratReport 누락 확인 됩니다 긴급 확인 부탁 드립니다', 3);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', 'S04614', '라인:- / 공정:VI / 설비:Tray', 'Cell loader gripper1 data mismatch error Tray code: S04614 @A/kevinG/TeamLead', 3);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '1650', '라인:- / 공정:- / 설비:-', 'That is not a MES code. Equipment is sending message of the code 1650 which is an equipment alarm code.', 2);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', 'E3002', '라인:- / 공정:VI / 설비:Pallet', 'The following pallets have ERP-E3002 error in Module when they try to register to run.  Please advise. G5CP037CPE10002 G5CP037CPE10003 G5CP037CPE10004', 2);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '0011', '라인:- / 공정:Degassing ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; VI / 설비:IR/OCV ; Tray', '@SKBA.MES.AE  RTA#2 입고 완료 후 MES error code 0011 발생 - MES error code 0011 : PRocess data of top/bottom Tray do not match  아래 Tray들의 경우 Degassing 언로더 배출 후 작업자의 개입이 없었던 Tray들입니다. MES 운영 Log 확인시 Degassing 에서 정상 배출 되었으나, Cell과 상이한 type & 공정으로 자동변경되어 RTA 입고 후 MES 에러 발생된 사례입니다.  현장에서 Cell 폐기 후 reformation 진행시 처리가능한 사례이나, 동일한 문제가 발생될수 있어 원인 확인하고자 내용 공유 드립니다.  ※ 아래 Tray들의 경우 MES " view cell in tray"에서 Tray 조회시 "Category ( cell qty )"가 Tray 내 실제 수량보다 많은 상태 였습니다.  ▶ RTA#2 입고 후 MES error 0011 발생 Tray List -', 2);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', 'E1059', '라인:- / 공정:- / 설비:Pallet', '@SKBA.MES.AE  Need to cancel ERP palletID G2CPE029DA005 to remove hold cell, but ERP-E1059 error.', 2);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '4505', '라인:- / 공정:VI / 설비:Pallet', '4505 error occur when the cell is mapped with either boxid or palletbaseid', 2);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '4570', '라인:- / 공정:- / 설비:-', 'Error Code: 4570   G1029E25P2007710 G1029E1WP1104347 G1029E24P2013987 G1029E24P2017855 G1029E25P2007733 G1029E24P2007106 G1029E24P2009464 G1029E25P2007740', 2);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '9001', '라인:Line1 ; Line20 ; Line3 ; Line5 ; Line6 / 공정:Aging ; Cell Packing ; Charge ; Degassing ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; PPC ; Packing ; SVI ; VI / 설비:IR/OCV ; PLC ; PPC ; Pallet ; Rack ; SVI ; Tray', 'We’re not receiving the reply of release order from the equipment which is causing 9001 error. Can anyone check?', 2);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '0019', '라인:Line1 ; Line2 ; Line2-3 ; Line3 ; Line3-1 ; Line4 ; Line5 ; Line6 / 공정:Aging ; Charge ; Degassing ; Discharge ; Formation ; IR ; Inspection ; OCV ; PPC ; Packing ; SVI ; VI / 설비:Cable ; Clip ; Conveyor ; PPC ; Pallet ; Rack ; SVI ; Sensor ; Tray', '[SKBA1] Entire Formation 님과 카카오톡 대화 저장한 날짜 : 2023-11-14 22:51:37  --------------- 2023년 5월 9일 화요일 --------------- [samkoo/gi/KTL] [오후 7:04] 삭제된 메시지입니다. [samkoo/gi/KTL] [오후 7:05] @Form(B)/Diamond/Supv Line5 Folding There is no delivery Please confirm.  [Form(B)/Diamond/Supv] [오후 7:08] We’re are currently running the rest of C221’s out of packing will purge packing then continue with C223s. Thank you.  [Samkoo/Junny/KTL] [오후 7:51] 삭제된 메시지입니다. [Samkoo/Junny/KTL] [오후 7:57] @SKBA/Trevis/Super', 2);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '0015', '라인:Line1 ; Line20 ; Line3 ; Line5 ; Line6 / 공정:Aging ; Cell Packing ; Charge ; Degassing ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; PPC ; Packing ; SVI ; VI / 설비:IR/OCV ; PLC ; PPC ; Pallet ; Rack ; SVI ; Tray', '[SKBA1] MES issue request 님과 카카오톡 대화 저장한 날짜 : 2023-11-14 22:47:53  --------------- 2023년 1월 30일 월요일 --------------- [samkoo/KO/KTL] [오전 2:49] @SKBA.MES.OP Z928375 2L Z928689 2L  V111901 3L Box id 누락되었습니다 정보 보정부탁드립니다 [SKBA.MES.OP] [오전 2:50] 네 운영자님께 전달 드리겠습니다. [samkoo/KO/KTL] [오전 4:29] @SKBA.MES.OP V111900 4L, Z928827 4L Box id 누락되었습니다 정보 보정부탁드립니다 [SKBA.MES.OP] [오전 4:30] 네 전달 드리겠습니다 [SK C&C/강동우/MES] [오전 9:23] Z928475 Z928689 V111901 V111900 Z928827 박스 아이디 보정 했습니다  [SK C&C/채 성민/MES] [오후 2:', 2);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '3503', '라인:Line1 ; Line20 ; Line3 ; Line4 ; Line5 ; Line6 / 공정:Aging ; Cell Packing ; Charge ; Degassing ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; PPC ; Packing ; SVI ; VI / 설비:IR/OCV ; PLC ; PPC ; Pallet ; Rack ; SVI ; Tray', '[SKBA1] MES issue request 님과 카카오톡 대화 저장한 날짜 : 2023-11-14 22:47:53  --------------- 2023년 1월 30일 월요일 --------------- [samkoo/KO/KTL] [오전 2:49] @SKBA.MES.OP Z928375 2L Z928689 2L  V111901 3L Box id 누락되었습니다 정보 보정부탁드립니다 [SKBA.MES.OP] [오전 2:50] 네 운영자님께 전달 드리겠습니다. [samkoo/KO/KTL] [오전 4:29] @SKBA.MES.OP V111900 4L, Z928827 4L Box id 누락되었습니다 정보 보정부탁드립니다 [SKBA.MES.OP] [오전 4:30] 네 전달 드리겠습니다 [SK C&C/강동우/MES] [오전 9:23] Z928475 Z928689 V111901 V111900 Z928827 박스 아이디 보정 했습니다  [SK C&C/채 성민/MES] [오후 2:', 2);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '4575', '라인:Line1 ; Line10 ; Line2 ; Line20 ; Line3 ; Line32 ; Line4 ; Line5 ; Line6 / 공정:Aging ; Cell Packing ; Charge ; Degassing ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; PPC ; Packing ; SVI ; VI / 설비:Cable ; IR/OCV ; Jig ; PLC ; PPC ; Pallet ; Rack ; SVI ; Tray', '[SKBA1] MES issue request 님과 카카오톡 대화 저장한 날짜 : 2023-11-14 22:47:53  --------------- 2023년 1월 30일 월요일 --------------- [samkoo/KO/KTL] [오전 2:49] @SKBA.MES.OP Z928375 2L Z928689 2L  V111901 3L Box id 누락되었습니다 정보 보정부탁드립니다 [SKBA.MES.OP] [오전 2:50] 네 운영자님께 전달 드리겠습니다. [samkoo/KO/KTL] [오전 4:29] @SKBA.MES.OP V111900 4L, Z928827 4L Box id 누락되었습니다 정보 보정부탁드립니다 [SKBA.MES.OP] [오전 4:30] 네 전달 드리겠습니다 [SK C&C/강동우/MES] [오전 9:23] Z928475 Z928689 V111901 V111900 Z928827 박스 아이디 보정 했습니다  [SK C&C/채 성민/MES] [오후 2:', 2);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '8912', '라인:Line12 / 공정:Degassing / 설비:Pallet ; Rack ; Tray', '@SKBA.MES.AE  Ford Old Lot 재화성 후 충방으로 투입하려는 Tray가 Track16169 BCR구간에서 8912에러 발생되어 충방투입이 안되고 있습니다. 해당트레이는 SOC 28% 타입 재화성 트레이 이며, SOC 58% 재화성 타입은 충방 정상 투입 되고있습니다. 예시 Tray ID : L04571, L58139 확인가능 하실까요?', 2);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '4598', '라인:Line10 ; Line11 ; Line7 ; Line8 ; Line9 / 공정:Aging ; IR ; Inspection ; Packing ; SVI ; VI / 설비:Barcode ; PLC ; Pallet ; Rack ; SVI ; Tray', 'There was a 4598 Nack in the Mount report. Due to the above Nack, the field may have selected the NG code PM0Z manually, and because of that, the equipment returned an NG report. The reason why the 4598 error occurred is that any of the IR, CR, AN_TAP_POS, CA_TAP_POS values ​​uploaded in the CpmEqpCellStatusReport report is missing.', 2);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '4568', '라인:Line10 / 공정:Inspection ; Packing ; SVI ; VI / 설비:SVI', '@SKBA.MES.AE   Line10 R5A4 Type SVI NG#3,4번 관련 VI 확인 시 양품 Cell Rework 후 Packing 투입시 Mes Error 발생하여 문의드립니다.  MES Code : 4568 Ship Validation Out.:Step 6. SVI Data Missing  예시로 1Cell ID 공유드립니다. GA081F5MP5107929', 2);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '4522', '라인:- / 공정:Aging ; Formation ; IR ; Packing / 설비:Pallet', '@SKBA.MES.AE Good morning! We have a pallet base ID H043519 that has been reworked multiple times through the BPM. It shows in the MES-EQP Communication Log that there is no basic packaging information (MES error code 4522). Can you help us to figure out why this pallet will not complete BPM process?', 2);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '4533', '라인:- / 공정:Cell Packing ; Packing / 설비:Pallet', 'Goodmorning, i have a MES issue at our Box Packing line. Code 4533: "There are multiple number of boxes tied to the pallet" I believe it''s due to this cell: GC081FANPA101989  The base ID of the pallet is HG22A01', 2);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '0001', '라인:Line3 / 공정:Degassing / 설비:Tray', '0001 에러 발생하고 있나요', 2);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '9104', '라인:Line1 ; Line3 ; Line4 ; Line5 / 공정:Degassing ; IR ; Inspection ; PPC / 설비:PPC ; Pallet ; Rack ; Tray', '07/09 야간 공정 특이사항  ■ EOL 1. Line 3 폴딩 외측 Ca위치 Crack 발생으로 인한 점검 및 모니터링(19:50~20:58 68분)  → 원인: 사이징 롤러 폴딩Ca 하단부 간섭으로 Crack 발생  → 조치: 사이징 롤러 2.5mm 상승 조정후 1시간 보전측 모니터링 진행  2. Line4_Lane2 Stage#1 Vacuum Error 다수 발생(01:30~02:00 30분)  → 원인: Y축 볼스크류 구간 볼트 미체결로 유닛 흔들림 및 셀 틀어짐으로 인한 진공 에러 발생 추정  → 조치: 볼트 18개소 체결(Lane1,2), 가/감속 변경(100 → 500), Unload 티칭값 조정  ■ 물류 1. HTA2 Lane1 Lift 9104 에러 발생(18:12~20:28, 136분)  → 원인: Power Moller 케이블 단선 발생  → 조치: Power Moller, 컨트롤러 교체  2. HTA2 Lane2 Output Track#9157 Door Op', 2);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '0043', '라인:Line1 ; Line2 ; Line3 ; Line5 ; Line6 / 공정:Aging ; IR ; IR/OCV ; OCV ; PPC ; Packing ; SVI ; VI / 설비:IR/OCV ; PPC ; Pallet ; SVI ; Tray', '08/20 주간 특이사항  ■ 현장 관리  1. EOL CPM NG#3, 4 Rework, Defect 삼구 진행  2. MES 폐기, 재화성, 재작업 이력 확인 후 현지 SPV 내용 공유 및 이력 작성 방법 교육 실시  → 각 shift 근무 시 확인 및 진행 요망  3. SVI NG#3, 4 VI master 검사 후 CPM Rework 미실시 상태로 재투입되어 Packing NG #3, 4 배출 확인  → SPV, VI master, Time Leader 각 shift 근무 시 확인 및 교육 진행 요망  4. AM/PM 05:00 Ins, CPM 재화성 여부확인 및 폐기 Cell 처리 여부 확인요망  ■ EOL  1. Line 1 EOL 재가동 (8/19 ~)  → R169 Type(Delta V 재화성) 설비 가동중  2. Line5 mes0043 Error Master spec Check by...OCV Delta V  → Rework 재투입 진행 (전일 MES 업데이트 과', 2);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '0000', '라인:Line10 ; Line7 ; Line8 / 공정:Aging ; Degassing ; Inspection ; PPC ; VI / 설비:PPC ; Pallet ; Rack ; Sensor ; Tray', '2025.06.26 야간 특이사항  ■ 공정 특이사항 ⊙공통  1) Ford Empty Tray 부족으로 320H Hyundai Tray 교체 작업 진행 중 현재 약 300개 제작 완료 - Tay Eng    2) R2CL Type 반자동 출고 후 충방전 진행 중( 106Tray ) - Ivan Eng    3) Ford E805C 모듈 리턴 셀 재작업 요청 - Jason Eng [ 완료 ]  - 총 1,171Cell 리턴 완료시 재작업 후 현장 대기  → Cell list : Daily Report 7L E805C 25.06.26 업로드   4) Line7~12 MES Code 0000 MES T1 time out 현상 발생  - MES 네트워크 통신 순단 현상 발생  - MES 정상 복구 후 설비 내 정보 상이 Cell 유실 및 설비 원점 진행 후 정상 가동(01:55~3:00)  - 현지 ATT 회선문제로 통품감 시스템 알람 지속발생 중, 설비 이상여부 모니터링 필요  ⊙Lin', 2);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '6028', '라인:- / 공정:- / 설비:Pallet', '@Form / YC Choi / Eng  모듈 현장 내 Final Process OUT으로 되어있는 1단 Pallet BPM 재투입 진행하였으나 ''pallet that have been warehouse can not be re-input'' MES Code 6028 발생되었습니다  - Pallet 정보 Base ID : H146171 Pallet ID : G5CP081CPF40071  Base ID : H054972 Pallet ID : G6CP081CPF50983  Base ID : H060966 Pallet ID : G6CP081CPF60449  - Pallet 내 504 Cell 모두 양품이며, WMS 입고 처리되어 BPM 재투입 불가하오니 확인 부탁드립니다', 2);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '01427', '라인:Line5 / 공정:Aging ; Formation / 설비:Tray', '@B/Latracie/SPV @B / Denarius / TL Unreleased all Hyundai r-types due to ORA-01427 error, causing logistics traffic issues and delays to FCH.', 2);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '0035', '라인:- / 공정:PPC / 설비:PPC ; Tray', '안녕하세요 Mes 0035 : 에러관련 경로를 찾을수없다 현상 -> PPC에서 공트레이 수동출고 화면[mt0900]에서 출고시 발생됩니다 혹시 원인알수있을까요 (Tray 수동출고 안되는 현상) 운영로그 금일일자로 A16640 Tray 확인햐주시면 됩니다', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', 'E0854', '라인:Line1 ; Line2 / 공정:IR ; VI / 설비:Pallet', '@SKBA.MES.AE  Page: MT3200 Pallet: G2CPE029E40002 Error code: E0854  When trying to confirm warehousing for this pallet, the error occurs. The pallet is made of line 1 and line 2 cells attempting to be sent to Module, please advise on this issue.', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '1500', '라인:Line1 / 공정:Formation / 설비:Conveyor ; Tray', '@SKBA.MES.AE  From Assembly Line 1 Output conveyor BCR, trays are getting MES error code 1500.  Example Tray ID A36487, A17520  Showing 0 cells in tray data, but has 36 cells in actual tray, so I think Assembly is manually sending trays to Formation without data. Can you please check?', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '0034', '라인:Line1 ; Line20 ; Line3 ; Line5 ; Line6 / 공정:Aging ; Cell Packing ; Charge ; Degassing ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; PPC ; Packing ; SVI ; VI / 설비:IR/OCV ; PLC ; PPC ; Pallet ; Rack ; SVI ; Tray', '[SKBA1] MES issue request 님과 카카오톡 대화 저장한 날짜 : 2023-11-14 22:47:53  --------------- 2023년 1월 30일 월요일 --------------- [samkoo/KO/KTL] [오전 2:49] @SKBA.MES.OP Z928375 2L Z928689 2L  V111901 3L Box id 누락되었습니다 정보 보정부탁드립니다 [SKBA.MES.OP] [오전 2:50] 네 운영자님께 전달 드리겠습니다. [samkoo/KO/KTL] [오전 4:29] @SKBA.MES.OP V111900 4L, Z928827 4L Box id 누락되었습니다 정보 보정부탁드립니다 [SKBA.MES.OP] [오전 4:30] 네 전달 드리겠습니다 [SK C&C/강동우/MES] [오전 9:23] Z928475 Z928689 V111901 V111900 Z928827 박스 아이디 보정 했습니다  [SK C&C/채 성민/MES] [오후 2:', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '4585', '라인:Line1 ; Line20 ; Line3 ; Line5 ; Line6 / 공정:Aging ; Cell Packing ; Charge ; Degassing ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; PPC ; Packing ; SVI ; VI / 설비:IR/OCV ; PLC ; PPC ; Pallet ; Rack ; SVI ; Tray', '[SKBA1] MES issue request 님과 카카오톡 대화 저장한 날짜 : 2023-11-14 22:47:53  --------------- 2023년 1월 30일 월요일 --------------- [samkoo/KO/KTL] [오전 2:49] @SKBA.MES.OP Z928375 2L Z928689 2L  V111901 3L Box id 누락되었습니다 정보 보정부탁드립니다 [SKBA.MES.OP] [오전 2:50] 네 운영자님께 전달 드리겠습니다. [samkoo/KO/KTL] [오전 4:29] @SKBA.MES.OP V111900 4L, Z928827 4L Box id 누락되었습니다 정보 보정부탁드립니다 [SKBA.MES.OP] [오전 4:30] 네 전달 드리겠습니다 [SK C&C/강동우/MES] [오전 9:23] Z928475 Z928689 V111901 V111900 Z928827 박스 아이디 보정 했습니다  [SK C&C/채 성민/MES] [오후 2:', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '0037', '라인:Line1 ; Line10 ; Line2 ; Line3 ; Line32 ; Line4 ; Line5 / 공정:Aging ; Cell Packing ; Degassing ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; PPC ; Packing ; SVI ; VI / 설비:Cable ; IR/OCV ; Jig ; PLC ; PPC ; Pallet ; Rack ; SVI ; Tray', '[SKBA 1동] 화성 이슈 공유방 55 님과 카카오톡 대화 저장한 날짜 : 2023년 5월 30일 오후 12:12   2022년 12월 1일 오전 10:09 2022년 12월 1일 오전 10:09, 삼구/김응준/공정님이 들어왔습니다. 운영정책을 위반한 메시지로 신고 접수 시 카카오톡 이용에 제한이 있을 수 있습니다. 운영정책 보기 2022년 12월 1일 오전 10:09, 방장봇 : 들어오시면 프로필 수정 바랍니다  회사 / 이름 / 직책(담당: 기구, 제어, 공정, 외관 등)  수정이 없을 시 강퇴처리 됩니다 2022년 12월 1일 오전 10:32, SKon/이정원/공정기술님이 나갔습니다. 2022년 12월 1일 오전 10:55, 삼구/권계욱/공정님이 들어왔습니다. 2022년 12월 1일 오전 10:55, 방장봇 : 들어오시면 프로필 수정 바랍니다  회사 / 이름 / 직책(담당: 기구, 제어, 공정, 외관 등)  수정이 없을 시 강퇴처리 됩니다 2022년 12월 1일', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '4525', '라인:Line1 ; Line10 ; Line2 ; Line3 ; Line32 ; Line4 ; Line5 / 공정:Aging ; Cell Packing ; Degassing ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; PPC ; Packing ; SVI ; VI / 설비:Cable ; IR/OCV ; Jig ; PLC ; PPC ; Pallet ; Rack ; SVI ; Tray', '[SKBA 1동] 화성 이슈 공유방 55 님과 카카오톡 대화 저장한 날짜 : 2023년 5월 30일 오후 12:12   2022년 12월 1일 오전 10:09 2022년 12월 1일 오전 10:09, 삼구/김응준/공정님이 들어왔습니다. 운영정책을 위반한 메시지로 신고 접수 시 카카오톡 이용에 제한이 있을 수 있습니다. 운영정책 보기 2022년 12월 1일 오전 10:09, 방장봇 : 들어오시면 프로필 수정 바랍니다  회사 / 이름 / 직책(담당: 기구, 제어, 공정, 외관 등)  수정이 없을 시 강퇴처리 됩니다 2022년 12월 1일 오전 10:32, SKon/이정원/공정기술님이 나갔습니다. 2022년 12월 1일 오전 10:55, 삼구/권계욱/공정님이 들어왔습니다. 2022년 12월 1일 오전 10:55, 방장봇 : 들어오시면 프로필 수정 바랍니다  회사 / 이름 / 직책(담당: 기구, 제어, 공정, 외관 등)  수정이 없을 시 강퇴처리 됩니다 2022년 12월 1일', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '4557', '라인:Line1 ; Line10 ; Line2 ; Line3 ; Line32 ; Line4 ; Line5 / 공정:Aging ; Cell Packing ; Degassing ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; PPC ; Packing ; SVI ; VI / 설비:Cable ; IR/OCV ; Jig ; PLC ; PPC ; Pallet ; Rack ; SVI ; Tray', '[SKBA 1동] 화성 이슈 공유방 55 님과 카카오톡 대화 저장한 날짜 : 2023년 5월 30일 오후 12:12   2022년 12월 1일 오전 10:09 2022년 12월 1일 오전 10:09, 삼구/김응준/공정님이 들어왔습니다. 운영정책을 위반한 메시지로 신고 접수 시 카카오톡 이용에 제한이 있을 수 있습니다. 운영정책 보기 2022년 12월 1일 오전 10:09, 방장봇 : 들어오시면 프로필 수정 바랍니다  회사 / 이름 / 직책(담당: 기구, 제어, 공정, 외관 등)  수정이 없을 시 강퇴처리 됩니다 2022년 12월 1일 오전 10:32, SKon/이정원/공정기술님이 나갔습니다. 2022년 12월 1일 오전 10:55, 삼구/권계욱/공정님이 들어왔습니다. 2022년 12월 1일 오전 10:55, 방장봇 : 들어오시면 프로필 수정 바랍니다  회사 / 이름 / 직책(담당: 기구, 제어, 공정, 외관 등)  수정이 없을 시 강퇴처리 됩니다 2022년 12월 1일', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '4559', '라인:Line1 ; Line10 ; Line2 ; Line3 ; Line32 ; Line4 ; Line5 / 공정:Aging ; Cell Packing ; Degassing ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; PPC ; Packing ; SVI ; VI / 설비:Cable ; IR/OCV ; Jig ; PLC ; PPC ; Pallet ; Rack ; SVI ; Tray', '[SKBA 1동] 화성 이슈 공유방 55 님과 카카오톡 대화 저장한 날짜 : 2023년 5월 30일 오후 12:12   2022년 12월 1일 오전 10:09 2022년 12월 1일 오전 10:09, 삼구/김응준/공정님이 들어왔습니다. 운영정책을 위반한 메시지로 신고 접수 시 카카오톡 이용에 제한이 있을 수 있습니다. 운영정책 보기 2022년 12월 1일 오전 10:09, 방장봇 : 들어오시면 프로필 수정 바랍니다  회사 / 이름 / 직책(담당: 기구, 제어, 공정, 외관 등)  수정이 없을 시 강퇴처리 됩니다 2022년 12월 1일 오전 10:32, SKon/이정원/공정기술님이 나갔습니다. 2022년 12월 1일 오전 10:55, 삼구/권계욱/공정님이 들어왔습니다. 2022년 12월 1일 오전 10:55, 방장봇 : 들어오시면 프로필 수정 바랍니다  회사 / 이름 / 직책(담당: 기구, 제어, 공정, 외관 등)  수정이 없을 시 강퇴처리 됩니다 2022년 12월 1일', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '6000', '라인:Line1 ; Line10 ; Line2 ; Line3 ; Line32 ; Line4 ; Line5 / 공정:Aging ; Cell Packing ; Degassing ; Formation ; IR ; IR/OCV ; Inspection ; OCV ; PPC ; Packing ; SVI ; VI / 설비:Cable ; IR/OCV ; Jig ; PLC ; PPC ; Pallet ; Rack ; SVI ; Tray', '[SKBA 1동] 화성 이슈 공유방 55 님과 카카오톡 대화 저장한 날짜 : 2023년 5월 30일 오후 12:12   2022년 12월 1일 오전 10:09 2022년 12월 1일 오전 10:09, 삼구/김응준/공정님이 들어왔습니다. 운영정책을 위반한 메시지로 신고 접수 시 카카오톡 이용에 제한이 있을 수 있습니다. 운영정책 보기 2022년 12월 1일 오전 10:09, 방장봇 : 들어오시면 프로필 수정 바랍니다  회사 / 이름 / 직책(담당: 기구, 제어, 공정, 외관 등)  수정이 없을 시 강퇴처리 됩니다 2022년 12월 1일 오전 10:32, SKon/이정원/공정기술님이 나갔습니다. 2022년 12월 1일 오전 10:55, 삼구/권계욱/공정님이 들어왔습니다. 2022년 12월 1일 오전 10:55, 방장봇 : 들어오시면 프로필 수정 바랍니다  회사 / 이름 / 직책(담당: 기구, 제어, 공정, 외관 등)  수정이 없을 시 강퇴처리 됩니다 2022년 12월 1일', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '1022', '라인:- / 공정:Formation / 설비:Tray', 'Line - Formation Line Common  Equipment Cod - ECS #2 Representative Equipment  Tray ID - L01454  Log Date - 3/9/2025 11:52  Error Code : 1022 입니다', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', 'M938', '라인:- / 공정:- / 설비:Stacker', 'ERROR code : M938 Stacker :1321 LANE 2 1 FLOOR  CAUSE: occurs when there is an ECS TASK but stacker is not working  ACTION: restart stacker  Program debugging   This issue is persistent in RTA3.', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '4551', '라인:- / 공정:Packing / 설비:Pallet', '@SKBA.MES.AE   안녕하세요  12Line Packing 에서  Mes Error code 4551 발생 하였는데  운영 로그 확인시 H045062 Pallet Pos 08 01 23 위치에 Packing data 누락 확인되어 Cell Mount NG 로 배출 되었습니다  Pos 08 01 23 위치에 Cell Add in Pallet 사용 시도 했으나 Pallet 배출 이전이라 Box ID 미생성으로 불가 합니다  해당 셀 보고 없이 다음 단수로 넘어가 적재된 이유 알수 있을까요? 동일 에러 발생시 MES UI 처리 할 수 있는 방법도 문의 드립니다  에러 조치 되었고 설비 가동 중 이여서 운영자님께 전달 해주시면 감사하겠습니다', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '8902', '라인:- / 공정:- / 설비:-', '네 8905, 8904, 8902 에러 발생중입니다', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '8904', '라인:- / 공정:- / 설비:-', '방금 통화 드렸었고 ECS 서버 및 클라이언트 동작 상태는 문제 없다고 내용 전달 받았습니다. 트레이를 ECS 상태서 다음 BCR로 보내도 8904 에러 재 발생후 멈추고, 그 바로 이전 트레이도 이전 BCR에서 동일 에러 발생하는 상황입니다.', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '4511', '라인:- / 공정:- / 설비:Pallet', 'Pallet ID : HFB8B88 Cell ID : GB081FASPA107751  Error code :  4511 ParentLotIdof the cell do not match with the one in the equipment', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '8999', '라인:- / 공정:VI / 설비:Barcode ; Tray', 'That data looks good, but when we send the tray to a barcode via ECS, it is giving a 8999 error. MES code 35… unsure what that is', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '8905', '라인:Line12 ; Line9 / 공정:Degassing ; SVI ; VI / 설비:SVI ; Sensor ; Tray', '2025.10.23  공정 야간 특이사항   ■ 공정특이사항  [공통]  1) 1,2F ECS서버 다운 현상 발생(23:20~00:45, 85분)  - S/C 및 Conver BCR구간 ECS상 Err Code 8905 및 에러 메세지 없음  - BCR 구간에 대기 중인 Tray 다른 BCR구간으로 보냈을 시 도착 후 Code 8905 발생하며 미 동작  - 해당 Code에 대해 ECS, MES 측 확인 불가  - 원인 파악 후 공유 예정   [Line9]  1) SVI LMS#1 AUTO COUPLER CYLINDER IN SENSOR ALARM(03:40~04:20, 40분)  - L/D, ULD LMS 리니어 모터 사이 Cell 낙하 및 협착  - LD1 CELL VACUUM ERROR, UN1 LMS VACUUM TIME OUT Err메세지(03:40분) 이력 확인 진공에러로 Cell 낙하됐으나 실물 확인없이 가동 및 협착된 것으로 추정  - 메인터너스 측 에서  밍글공유  ', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '8203', '라인:Line9 / 공정:Formation ; IR / 설비:Pallet', '2026.01.17 주간 공정 특이사항  [공통]  1. 전체 물류 ECS BCR 구간  Error Code : 8203, 8913 발생 하여 작동 불가 ( 10:20 ~ 11:20 )  - ECS 서버 재부팅 후 물류 정상 작동하나  ECS Client 최신화 불가 현상 발생  - 12:30 이후 ECS Client 정상 표기 및 물류 정상 작동  ■ Engineer 요청 사항  1. IR Reformation Type ( R5AS, R5CS ) 2Pallet, Line9 CPM 투입 완료  2026년 1월 18일 일요일', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '152', '라인:- / 공정:- / 설비:-', '5LINE  Cell Body Terrace Edge Right Top 21ea Spec 72.85-75.85 G5081F3TP3111216 Mes 333.32 실측73.00-가성 G5081F3TP3110999 Mes 334.3 실측72.86-진성근접 G5081F3TP3110993 Mes 725.06 실측73.13-가성 G5081F3TP3111408 Mes 152.79 실측72.68 -진성불량  실측 결과  가성. 진성 같이  나오고 있습니다 *Mes 측정값 오류 확인부탁드립니다', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '333', '라인:- / 공정:- / 설비:-', '5LINE  Cell Body Terrace Edge Right Top 21ea Spec 72.85-75.85 G5081F3TP3111216 Mes 333.32 실측73.00-가성 G5081F3TP3110999 Mes 334.3 실측72.86-진성근접 G5081F3TP3110993 Mes 725.06 실측73.13-가성 G5081F3TP3111408 Mes 152.79 실측72.68 -진성불량  실측 결과  가성. 진성 같이  나오고 있습니다 *Mes 측정값 오류 확인부탁드립니다', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '334', '라인:- / 공정:- / 설비:-', '5LINE  Cell Body Terrace Edge Right Top 21ea Spec 72.85-75.85 G5081F3TP3111216 Mes 333.32 실측73.00-가성 G5081F3TP3110999 Mes 334.3 실측72.86-진성근접 G5081F3TP3110993 Mes 725.06 실측73.13-가성 G5081F3TP3111408 Mes 152.79 실측72.68 -진성불량  실측 결과  가성. 진성 같이  나오고 있습니다 *Mes 측정값 오류 확인부탁드립니다', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '725', '라인:- / 공정:- / 설비:-', '5LINE  Cell Body Terrace Edge Right Top 21ea Spec 72.85-75.85 G5081F3TP3111216 Mes 333.32 실측73.00-가성 G5081F3TP3110999 Mes 334.3 실측72.86-진성근접 G5081F3TP3110993 Mes 725.06 실측73.13-가성 G5081F3TP3111408 Mes 152.79 실측72.68 -진성불량  실측 결과  가성. 진성 같이  나오고 있습니다 *Mes 측정값 오류 확인부탁드립니다', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '364', '라인:- / 공정:- / 설비:-', '@SKBA/ Jun/ Egr  3-2 Cell Width Cathode Pouch ~Anode Tab 20ea 발생  Spec 364.5~366.5  G3081F5WP5108264 Mes 364.09 실측365.15  G3081F5WP5109395 Mes 364.15 실측365.22  G3081F5WP5106148 Mes 365.23 실측365.07  G3081F5WP5106128 Mes 364.44 실측365.20  CheckTime19:05~19:14', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '365', '라인:- / 공정:- / 설비:-', '@SKBA/ Jun/ Egr  3-2 Cell Width Cathode Pouch ~Anode Tab 20ea 발생  Spec 364.5~366.5  G3081F5WP5108264 Mes 364.09 실측365.15  G3081F5WP5109395 Mes 364.15 실측365.22  G3081F5WP5106148 Mes 365.23 실측365.07  G3081F5WP5106128 Mes 364.44 실측365.20  CheckTime19:05~19:14', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '3501', '라인:- / 공정:Inspection / 설비:-', '@SKBA/ Jun/ Egr @Form/Daeyun_Key/Engr  R530 Type 등급 셋팅이 안되어있어 Inspection  MES CODE: 3501  발생되고 있습니다. 확인  필요합니다.', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '8044', '라인:- / 공정:Formation / 설비:-', '####Formation <Maintenance BM> ▪︎Date : 3/6/2025 ▪︎Line : RTA 3 ▪︎Process :  ▪︎Unit : 3-3-1 ▪︎Start Time : 3:30am ▪︎End Time :  ▪︎Issue : lifter 8044 error ▪︎Cause:  ▪︎Troubleshooting:', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', 'S04405', '라인:Line6 / 공정:- / 설비:Tray', 'EOL line 6  Tray force out mes   S04405', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', 'S05165', '라인:Line6 / 공정:- / 설비:Tray', 'EOL line 6  Tray force out mes   S05165', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '2151', '라인:- / 공정:Formation / 설비:Tray', '#### < Maintenance BM > Formation ▪︎Date: 06/03/2025 ▪︎Line: RTA1 ▪︎Process: RTA1 ▪︎Unit: S/C 3-3F  ▪︎Start Time: 10:50 ▪︎End Time: 10:57 ▪︎Issue: lifter 2151 error  ▪︎Cause: tray not centered   ▪︎Troubleshooting:  - Centered tray  - Restarted process  메시지가 삭제되었습니다.', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', 'S24612', '라인:- / 공정:- / 설비:Tray', 'EOL 4 Tray Status1 code1 error Tray code: S24612  @B/SWIFT/LOGISTIC', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', 'S06497', '라인:- / 공정:VI / 설비:Tray', 'Cell loader gripper1 data mismatch error Tray code: S06497  @A/kevinG/TeamLead', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', 'S12943', '라인:- / 공정:VI / 설비:Sensor ; Tray', 'Grip-2 sensor check MESA data check msmatch  Tray code: S12943 @A/kevinG/TeamLead', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', 'S17273', '라인:- / 공정:VI / 설비:Tray', 'Tray status code1 error Tray code: S17273  I had to force out that tray because we had a data error @A/kevinG/TeamLead', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', 'S10363', '라인:- / 공정:- / 설비:Tray', 'Line: 3 Tray: S10363  Error: tray mismatch error Trouble shoot: sent to 8393', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '12087', '라인:- / 공정:VI / 설비:Pallet', '@SKBA/Xong/Specialist  Base ID:HF9E014 Pallet ID: G5CP081CPF90190 Is giving a post Date error I tried to cancel ERP before I can change the date it  gave  me a 12087 Error can you help assist please and thank you', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '1207', '라인:- / 공정:- / 설비:-', '@SKBA/Xong/Specialist   HG27023 G6CP081CPG20155 Code: 1207', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '247', '라인:- / 공정:Formation ; PPC / 설비:PPC', '####Formation <Maintenance BM> ▪︎Date : 01/21/25 ▪︎Line : 1 ▪︎Process : RTA1  ▪︎Sub-Process(PPC,DGS): 1-2F ▪︎Unit : SRC # 1-2F ▪︎Sub-Unit(PPC,DGS) :  ▪︎Start Time: 03:30 ▪︎End Time: 04:30 ▪︎issue:  Error Code 247 Extinguisher 수위 알람  ▪︎Cause : 워터 탱크 수위 센서 Fail 추정 ▪︎Troubleshooting:  SRC # 1-2F 화면 내 Water High 및  Water Low 동시 점등 상태 확인. Water 탱크 내 수위 센서 커넥터 재체결 후 알람 해지 불가 IO Box 내 Water High (X0F) 케이블 분리 후 알람 해지 및 S/C 정상 작동 수위 센서 재고 확인 및 교체 필요', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', 'X1381', '라인:- / 공정:Aging ; Formation / 설비:-', '#### Formation     <Maintenance BM>     - Date: 05/30/25     - Shift: A     - Line: 5     - Process: Packaging       - Start Time: 07:40     - End Time: 07:44  Issue :Aling out transfer 01 detected alarm X1381 error Cause  Why?:Align out doesn''t move Why?:the data Mes cell doesn''t match with the real position and it was defaced one step before. Why?:The vacuum # 2 turn off   Correct action  The transfer was moved the manual way and the data were moved according to physical cells and matched betw', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '639', '라인:Line1 / 공정:Formation ; PPC / 설비:PPC ; Tray', '🔹PPC total Output 12:00~13:00🔹  ♦️1L: 880 (timed trays)   ♦️2L: 0 (timed trays) ~cross production with line 1  ♦️3L: 320 (timed trays)          ♦️4L: 633 (timed trays)  ♦️5L: 1040   ♦️6L: 639  Error sending information from HPC to Main PP', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '2505', '라인:- / 공정:Degassing / 설비:Tray', '🔹Hourly report: Degassing Output 1100~1200  ♦️1L : 324 Issue: rear chamber6 piercing errors  ♦️2L : 0  ♦️3L : 216 Issue: timed trays  ♦️4L: 0 Issue: timed trays  ♦️5L : 900  ♦️6L : 720 Issue: precut shuttle uld stage not detect cell//mes code 2505', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', 'X1476', '라인:- / 공정:Formation ; IR / 설비:Cable ; PLC ; Sensor', '<Maintenance BM> ####### Formation  ▪︎Date : 09/16/25 ▪︎Lane : EOL 3-2 ▪︎Process: Folding  ▪︎Unit: Cell transfer#7 ▪︎Start Time: 07:30 ▪︎End Time: 08:30 ▪︎Cause : Sensor cable damaged ▪︎Troubleshooting:  ✅ Check I/O (PLC) ✔️ Confirmed X1476 error in the PLC ✔️ Removed all cells (TR#1-13) and checked for cable disconnection      - X1476(TR#7 detect sensor) ✅ Replaced sensor  ✔️Part no : OBT30-R3-E0-P  ✔️Q-code : Q2C1001509  -W/O Q2C1001509', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', 'V8446', '라인:- / 공정:Aging ; Charge ; Degassing ; Formation / 설비:Conveyor ; Tray', '#### ECS Report Date: 10/25/2025 Time: 14:00 ECS system ✅️Aging rooms ✅Degassing ✅Folding ✅Conveyor -C/V8446 error ✅Press Pre Charge ✅️Formation Charge ✅️ Traywasher 1, 2', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '4536', '라인:- / 공정:SVI ; VI / 설비:PLC ; Pallet ; SVI ; Sensor ; Tray', '05/21 공정 주간조 EOL 특이사항  [1라인] • 불량 Cell 특이사항 - 특이사항 없음  • 설비 특이사항 # Taping - 현상 : Tape Position x1 Error 발생 - 원인 : Limit Sensor 위치 틀어짐 - 조치 : Limit Sensor 위치 2mm 조정 후 설비 가동 (13:25~13:45)  # SVI - 현상 : Middle P&P Time Over Error 발생 - 원인 : 캐리어 내 Cell 안착 후 PLC 미 신호 - 조치 : PLC 프로그램 보안 수정 (11:00~12:00)  • 작업자 특이사항 - 특이사항 없음  [2라인] • 불량 Cell 특이사항 - 특이사항 없음  • 설비 특이사항 - C119 (A Material) Type 투입 정지 > C199, C126 Type 혼재 투입되어 CPM MES NG 다수 발생 > MES Code 4536 Models Mix > C126 Type 투입 가동 (16:40~  # SVI > 손', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '4569', '라인:- / 공정:Aging / 설비:-', '[MES Update Notice]  The MES update will take place between 15:20~15:40  - 4569 Error: Modified to pass verification when hold is applied after entering cell packaging machine', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '4071', '라인:- / 공정:Charge ; Formation ; VI / 설비:Tray', '@SK C&C/Doehoon/MES  @SKBA.MES.AE   5Line EOL Line Process: 90-degree Folding Loader Tray Input Section  Issue: When inserting Tray ID S05168, an MES error code 4071 occurs.  The tray is of P551 type.  The previous formation process was completed normally.  No type mixing was detected.   The error log indicates "Step 9 charge defect", but this formation type only exists up to Step 6.  Please investigate the issue and share the root cause.', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '04088', '라인:- / 공정:Formation ; Packing ; VI / 설비:Pallet', 'Good morning  Last night BShift could not ship due to product warehouse issues on logistics end. When packing line Operator was trying Cancel WHS and ERP (Formation tab ERP and Warehousing) it’s giving 3 error  1) ORA-01013 user requested cancel operation 2. ORA-04088 Error during Execution of trigger SKIWMS. TR_Cell_WMS Receipt material cancel 3.Lock out by user error   I will keep you updated on situation however the pallets do seem to warehouse on logistics end slowly threw out the day and we', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '4550', '라인:- / 공정:- / 설비:-', '*Mes기준 - 1단 1행 data 보고 안된채 Field에서 1단 2행부터 mount 보고 시작하여 ng code 4550 nack 보냄 *Field기준 - 1단 1,2행 정상 mount보고 후  ack 정상 받음. 2단 1행부터 ng code 4550 nack 받음', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '4523', '라인:- / 공정:- / 설비:-', 'Sorry for interrupting, but how do we solve 4523 error?', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', 'T05234', '라인:- / 공정:- / 설비:Tray', 'MES team,  Tray ID: T05234  Error: "invalid format" when registering tray.   Can the team assist on how to handle this issue?', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '3004', '라인:- / 공정:Charge ; Discharge / 설비:Tray', 'Currently at Charging/Discharging Equipment 030510 (MES Location: 06-05-10), after initializing the FCH stage, I issued a manual discharge command for tray S10456, but the same 3004 error ("Tray data equipment and MRS do not match") continues to occur.  Is there any way to resolve this error? Or should I proceed with manual handling/discharge instead?', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '5002', '라인:- / 공정:Packing / 설비:Pallet', 'There are pallets have same issue that Junbeom shared on 3/30 which are 4522,5002 error codes of Box Packing Machine.   [4522] H010160  [5002] H008228 H008540 H009773 H008237  I tried to find any solution by seaching history of this chat room but couldn’t find.  Last time, Admin fixed it.  Would you make me know how to fix by ourside?', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', 'E1054', '라인:- / 공정:- / 설비:-', 'Is ERP-E1054 error code?', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', 'S21037', '라인:- / 공정:- / 설비:-', '@SK C&C/Jeonghun/MES   S21037 S19879  FCH 2Lane BCr 을 읽었으나 입고 명령을 받지 못하는 문제 발생중입니다.   운영로그 조회 시 9001 을 받으며 메세지는 다음과 같습니다  failed to send request message received message in null  해당 트레이외에 문제가 연속으로 발생되는데 확인 부탁드립니다.', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '2500', '라인:- / 공정:- / 설비:-', 'Does error code 2500 occur?', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('MES', '3617', '라인:- / 공정:- / 설비:-', '@SKBA.MES.AE  What is MES code 3617 for?', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('process', 'process:Formation', 'Formation', 'count:32984', 32984);
insert into search_index (source_type, keyword, value, sample_message, count) values ('equipment', 'equipment:Tray', 'Tray', 'count:32772', 32772);
insert into search_index (source_type, keyword, value, sample_message, count) values ('process', 'process:Packing', 'Packing', 'count:25320', 25320);
insert into search_index (source_type, keyword, value, sample_message, count) values ('process', 'process:VI', 'VI', 'count:24394', 24394);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line6', 'Line6', 'count:20514', 20514);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line5', 'Line5', 'count:20164', 20164);
insert into search_index (source_type, keyword, value, sample_message, count) values ('process', 'process:PPC', 'PPC', 'count:19070', 19070);
insert into search_index (source_type, keyword, value, sample_message, count) values ('equipment', 'equipment:PPC', 'PPC', 'count:19070', 19070);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line3', 'Line3', 'count:16977', 16977);
insert into search_index (source_type, keyword, value, sample_message, count) values ('process', 'process:Degassing', 'Degassing', 'count:14025', 14025);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line4', 'Line4', 'count:13267', 13267);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line2', 'Line2', 'count:12129', 12129);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line1', 'Line1', 'count:11808', 11808);
insert into search_index (source_type, keyword, value, sample_message, count) values ('process', 'process:IR', 'IR', 'count:9972', 9972);
insert into search_index (source_type, keyword, value, sample_message, count) values ('process', 'process:Inspection', 'Inspection', 'count:7392', 7392);
insert into search_index (source_type, keyword, value, sample_message, count) values ('equipment', 'equipment:Barcode', 'Barcode', 'count:6537', 6537);
insert into search_index (source_type, keyword, value, sample_message, count) values ('process', 'process:Aging', 'Aging', 'count:6420', 6420);
insert into search_index (source_type, keyword, value, sample_message, count) values ('process', 'process:SVI', 'SVI', 'count:5950', 5950);
insert into search_index (source_type, keyword, value, sample_message, count) values ('equipment', 'equipment:SVI', 'SVI', 'count:5950', 5950);
insert into search_index (source_type, keyword, value, sample_message, count) values ('equipment', 'equipment:Sensor', 'Sensor', 'count:5825', 5825);
insert into search_index (source_type, keyword, value, sample_message, count) values ('equipment', 'equipment:Conveyor', 'Conveyor', 'count:5020', 5020);
insert into search_index (source_type, keyword, value, sample_message, count) values ('equipment', 'equipment:Pallet', 'Pallet', 'count:4912', 4912);
insert into search_index (source_type, keyword, value, sample_message, count) values ('process', 'process:Charge', 'Charge', 'count:4436', 4436);
insert into search_index (source_type, keyword, value, sample_message, count) values ('equipment', 'equipment:Rack', 'Rack', 'count:3220', 3220);
insert into search_index (source_type, keyword, value, sample_message, count) values ('process', 'process:OCV', 'OCV', 'count:3005', 3005);
insert into search_index (source_type, keyword, value, sample_message, count) values ('equipment', 'equipment:PLC', 'PLC', 'count:1788', 1788);
insert into search_index (source_type, keyword, value, sample_message, count) values ('process', 'process:Cell Packing', 'Cell Packing', 'count:1653', 1653);
insert into search_index (source_type, keyword, value, sample_message, count) values ('process', 'process:IR/OCV', 'IR/OCV', 'count:1621', 1621);
insert into search_index (source_type, keyword, value, sample_message, count) values ('equipment', 'equipment:IR/OCV', 'IR/OCV', 'count:1621', 1621);
insert into search_index (source_type, keyword, value, sample_message, count) values ('equipment', 'equipment:Cable', 'Cable', 'count:1051', 1051);
insert into search_index (source_type, keyword, value, sample_message, count) values ('equipment', 'equipment:Stacker', 'Stacker', 'count:816', 816);
insert into search_index (source_type, keyword, value, sample_message, count) values ('equipment', 'equipment:Clip', 'Clip', 'count:497', 497);
insert into search_index (source_type, keyword, value, sample_message, count) values ('equipment', 'equipment:Stacker Crane', 'Stacker Crane', 'count:471', 471);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line10', 'Line10', 'count:373', 373);
insert into search_index (source_type, keyword, value, sample_message, count) values ('equipment', 'equipment:Bracket', 'Bracket', 'count:367', 367);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line8', 'Line8', 'count:367', 367);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line7', 'Line7', 'count:353', 353);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line9', 'Line9', 'count:351', 351);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line12', 'Line12', 'count:313', 313);
insert into search_index (source_type, keyword, value, sample_message, count) values ('process', 'process:Discharge', 'Discharge', 'count:300', 300);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line11', 'Line11', 'count:300', 300);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:4007', '4007', 'count:238', 238);
insert into search_index (source_type, keyword, value, sample_message, count) values ('equipment', 'equipment:Jig', 'Jig', 'count:225', 225);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line1-1', 'Line1-1', 'count:215', 215);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line1-2', 'Line1-2', 'count:191', 191);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line2-1', 'Line2-1', 'count:176', 176);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line2-2', 'Line2-2', 'count:104', 104);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1000', '1000', 'count:100', 100);
insert into search_index (source_type, keyword, value, sample_message, count) values ('process', 'process:IR OCV', 'IR OCV', 'count:87', 87);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line6-1', 'Line6-1', 'count:74', 74);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line5-1', 'Line5-1', 'count:73', 73);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1100', '1100', 'count:73', 73);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1400', '1400', 'count:71', 71);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1200', '1200', 'count:71', 71);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0700', '0700', 'count:67', 67);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1300', '1300', 'count:66', 66);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line5-2', 'Line5-2', 'count:59', 59);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1600', '1600', 'count:59', 59);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0800', '0800', 'count:59', 59);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:9999', '9999', 'count:57', 57);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1500', '1500', 'count:56', 56);
insert into search_index (source_type, keyword, value, sample_message, count) values ('process', 'process:Sorting', 'Sorting', 'count:55', 55);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line6-2', 'Line6-2', 'count:55', 55);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line4-1', 'Line4-1', 'count:53', 53);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0900', '0900', 'count:53', 53);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:3018', '3018', 'count:51', 51);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1700', '1700', 'count:47', 47);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line3-1', 'Line3-1', 'count:42', 42);
insert into search_index (source_type, keyword, value, sample_message, count) values ('process', 'process:Rolling', 'Rolling', 'count:38', 38);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line4-2', 'Line4-2', 'count:38', 38);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0600', '0600', 'count:38', 38);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1040', '1040', 'count:33', 33);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line3-2', 'Line3-2', 'count:30', 30);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1080', '1080', 'count:30', 30);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:8393', '8393', 'count:28', 28);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1800', '1800', 'count:26', 26);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1160', '1160', 'count:23', 23);
insert into search_index (source_type, keyword, value, sample_message, count) values ('equipment', 'equipment:Charger', 'Charger', 'count:21', 21);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:4003', '4003', 'count:21', 21);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line0', 'Line0', 'count:20', 20);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:3100', '3100', 'count:19', 19);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1120', '1120', 'count:18', 18);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0830', '0830', 'count:17', 17);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:40104', '40104', 'count:16', 16);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1320', '1320', 'count:15', 15);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0016', '0016', 'count:15', 15);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0026', '0026', 'count:15', 15);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:10403', '10403', 'count:15', 15);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S05523', 'S05523', 'count:15', 15);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line20', 'Line20', 'count:14', 14);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line60', 'Line60', 'count:14', 14);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0930', '0930', 'count:14', 14);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0645', '0645', 'count:14', 14);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0007', '0007', 'count:14', 14);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0027', '0027', 'count:14', 14);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S20532', 'S20532', 'count:14', 14);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:8024', '8024', 'count:14', 14);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1340', '1340', 'count:13', 13);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1345', '1345', 'count:13', 13);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:I2404', 'I2404', 'count:13', 13);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:4004', '4004', 'count:12', 12);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:4553', '4553', 'count:12', 12);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:20101', '20101', 'count:12', 12);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1030', '1030', 'count:11', 11);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:9346', '9346', 'count:11', 11);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:9347', '9347', 'count:11', 11);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:3500', '3500', 'count:11', 11);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:2502', '2502', 'count:11', 11);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S20950', 'S20950', 'count:11', 11);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:30405', '30405', 'count:11', 11);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line3-6', 'Line3-6', 'count:10', 10);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1540', '1540', 'count:10', 10);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1530', '1530', 'count:10', 10);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1015', '1015', 'count:10', 10);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:8031', '8031', 'count:10', 10);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1650', '1650', 'count:10', 10);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:E1330', 'E1330', 'count:10', 10);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:8064', '8064', 'count:10', 10);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:20808', '20808', 'count:10', 10);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:9194', '9194', 'count:10', 10);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:21206', '21206', 'count:10', 10);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1515', '1515', 'count:10', 10);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1240', '1240', 'count:10', 10);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:3110', '3110', 'count:10', 10);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S12498', 'S12498', 'count:10', 10);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:3182', '3182', 'count:10', 10);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:3181', '3181', 'count:10', 10);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0950', '0950', 'count:9', 9);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0935', '0935', 'count:9', 9);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:6147', '6147', 'count:9', 9);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:3770', '3770', 'count:9', 9);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S13229', 'S13229', 'count:9', 9);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S22819', 'S22819', 'count:9', 9);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:10507', '10507', 'count:9', 9);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:20409', '20409', 'count:9', 9);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S24716', 'S24716', 'count:9', 9);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S14328', 'S14328', 'count:9', 9);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1430', '1430', 'count:8', 8);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1440', '1440', 'count:8', 8);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1410', '1410', 'count:8', 8);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:8452', '8452', 'count:8', 8);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0640', '0640', 'count:8', 8);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0014', '0014', 'count:8', 8);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:4568', '4568', 'count:8', 8);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:3017', '3017', 'count:8', 8);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:9104', '9104', 'count:8', 8);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S08595', 'S08595', 'count:8', 8);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S13045', 'S13045', 'count:8', 8);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S03362', 'S03362', 'count:8', 8);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:30407', '30407', 'count:8', 8);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1045', '1045', 'count:8', 8);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:V9307', 'V9307', 'count:8', 8);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:11000', '11000', 'count:8', 8);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S00081', 'S00081', 'count:8', 8);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S10363', 'S10363', 'count:8', 8);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S00208', 'S00208', 'count:8', 8);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S03485', 'S03485', 'count:8', 8);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:3089', '3089', 'count:8', 8);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:11109', '11109', 'count:8', 8);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line18', 'Line18', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1740', '1740', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0835', '0835', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0945', '0945', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1305', '1305', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0850', '0850', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0805', '0805', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1110', '1110', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:9147', '9147', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1425', '1425', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:6146', '6146', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1450', '1450', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1051', '1051', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:8044', '8044', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:E1059', 'E1059', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:00001', '00001', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:4522', '4522', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S05168', 'S05168', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S16851', 'S16851', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:3007', '3007', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:20408', '20408', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:10502', '10502', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:8011', '8011', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:20410', '20410', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:10805', '10805', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:10604', '10604', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S19682', 'S19682', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S03767', 'S03767', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:3161', '3161', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:X1160', 'X1160', 'count:7', 7);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line5-6', 'Line5-6', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line22', 'Line22', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:9117', '9117', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1310', '1310', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1525', '1525', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1350', '1350', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1330', '1330', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1810', '1810', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0810', '0810', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0915', '0915', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1615', '1615', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1135', '1135', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:6104', '6104', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0920', '0920', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1445', '1445', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0720', '0720', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1651', '1651', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:A25197', 'A25197', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1325', '1325', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0001', '0001', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:4505', '4505', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0021', '0021', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:01427', '01427', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:4552', '4552', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:19000', '19000', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:4511', '4511', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:8905', '8905', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1023', '1023', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S06836', 'S06836', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S22702', 'S22702', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1545', '1545', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:5501', '5501', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:10210', '10210', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:40608', '40608', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:30509', '30509', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:8053', '8053', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0815', '0815', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1105', '1105', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1221', '1221', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1548', '1548', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:9307', '9307', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S07318', 'S07318', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S19801', 'S19801', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S03618', 'S03618', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1130', '1130', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S02806', 'S02806', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:12000', '12000', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:22000', '22000', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1550', '1550', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:20909', '20909', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:X1120', 'X1120', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S02923', 'S02923', 'count:6', 6);
insert into search_index (source_type, keyword, value, sample_message, count) values ('equipment', 'equipment:Jigsition', 'Jigsition', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line19', 'Line19', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line10-1', 'Line10-1', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line15', 'Line15', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line02', 'Line02', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('line', 'line:Line06', 'Line06', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:4243', '4243', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1245', '1245', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1725', '1725', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0753', '0753', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1115', '1115', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0821', '0821', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1716', '1716', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:9146', '9146', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1355', '1355', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1009', '1009', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0630', '0630', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0341', '0341', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0909', '0909', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:2250', '2250', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:2040', '2040', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0025', '0025', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:X1284', 'X1284', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:X1288', 'X1288', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1235', '1235', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1140', '1140', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:21009', '21009', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:4570', '4570', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0019', '0019', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:6203', '6203', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1022', '1022', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0020', '0020', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0006', '0006', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0043', '0043', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S16066', 'S16066', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S03520', 'S03520', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:21006', '21006', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:0910', '0910', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:11106', '11106', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:2134', '2134', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:9193', '9193', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:40407', '40407', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S04368', 'S04368', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:6028', '6028', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:20507', '20507', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1535', '1535', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:M8507', 'M8507', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1640', '1640', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1730', '1730', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:3099', '3099', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S00357', 'S00357', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:7258', '7258', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:V6147', 'V6147', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:6205', '6205', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1405', '1405', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:1610', '1610', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S04429', 'S04429', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:2035', '2035', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('error', 'error:S22400', 'S22400', 'count:5', 5);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'CS/이호섭', '라인:- / 공정:- / 출처:2024.06.04.zip', '금일(3/1)
충방전 1호기 모니터링 및 프로그램 확인 후  내용 공유 드립니다.

충방전 #1호기 점검 사항 
 - PLC Monitoring 시 승하강 위치 Data 값 및 CC Link 통신 이상없음
 - PLC Module Alarm History 특이사항 없음
 - CC Link 통신 케이블 순간 Hunting으로 추정되며 재발 시 추가 점검 예정', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '갑진/권오규/유지관리', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 갑진 충방전기 5라인 (단폭) / 충방 3라인( 장폭)

2. 작업 일자 : 04월 22일, 08:00 ~ 17:30

3. 작업자 : 9명

4. 금일 작업 사항 : 신규 E603C  스토퍼 추가(단폭)
잡체인지 잡체인지 개조작업

진행 스테이지: 5라인 54대
3라인 10대(장폭)

5. 금일 특이사항 및 Issue : 특이사항 없음

6. 명일 작업 사항 :  3.4라인(장폭) E603C 잡체인지 작업#', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '갑진/권오규/유지관리', '라인:- / 공정:IR; IR OCV; OCV / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 
갑진 충방전기 잡체인지 개조작업

2. 작업 일자/ 인원 : 
04월 23일. 9명

3. 진행 현황 : 
5/6 단폭라인 잡체인지 전부 완료(154/154)
ir ocv 잡체인지 전부완료 (9/9)

3/4라인 (장폭) 진행중(236/10)

4. 금일 작업 사항 : 
3/4라인 10대 작업예정


5. 금일 특이사항 및 Issue : 
특이사항 없음', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '갑진/권오규/유지관리', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 갑진 충방전기
3.4/5.6 라인  잡체인지 개조건

2. 작업 일자 : 04월 23일, 08:00 ~ 17:30

3. 작업자 : 9명

4. 금일 작업 사항 : 신규 E603C  
잡체인지 잡체인지 개조작업(장폭)

진행 스테이지: 
3라인 10대(장폭) (256 중 20대완)

5. 금일 특이사항 및 Issue : 특이사항 없음

6. 명일 작업 사항 :  3.4라인(장폭) E603C 잡체인지 작업#', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '갑진/권오규/유지관리', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 
갑진 충방전기 잡체인지 개조작업

2. 작업 일자/ 인원 : 
04월 24일. 9명

3. 진행 현황 : 

3/4라인 (장폭) 진행중(236/20)

4. 금일 작업 사항 : 
3/4라인 15대 작업예정


5. 금일 특이사항 및 Issue : 
특이사항 없음', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '갑진/권오규/유지관리', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 갑진 충방전기
3.4/5.6 라인  잡체인지 개조건

2. 작업 일자 : 04월 24일, 08:00 ~ 17:30

3. 작업자 : 9명

4. 금일 작업 사항 : 신규 E603C  
잡체인지 잡체인지 개조작업(장폭)

진행 스테이지: 
3/4 라인 15대(장폭)
(236대중 35대 완료)

5. 금일 특이사항 및 Issue : 특이사항 없음

6. 명일 작업 사항 :  3.4라인(장폭) E603C 잡체인지 작업', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '갑진/권오규/유지관리', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 갑진 충방전기
3.4/5.6 라인  잡체인지 개조건

2. 작업 일자 : 04월 25일, 08:00 ~ 17:30

3. 작업자 : 9명

4. 금일 작업 사항 : 신규 E603C  
잡체인지 잡체인지 개조작업(장폭)

진행 스테이지: 
3/4 라인 15대(장폭)(236대중 50대 완료)

5. 금일 특이사항 및 Issue : 특이사항 없음

6. 명일 작업 사항 :  3.4라인(장폭) E603C 잡체인지 작업', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '갑진/권오규/유지관리', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 갑진 충방전기
3.4/5.6 라인  잡체인지 개조건

2. 작업 일자 : 04월 26일, 08:00 ~ 17:00

3. 작업자 : 9명

4. 금일 작업 사항 : 신규 E603C  
잡체인지 잡체인지 개조작업(장폭)

진행 스테이지: 
3/4 라인 15대(장폭)(236대중 65대 완료)

5. 금일 특이사항 및 Issue : 특이사항 없음

6. 명일 작업 사항 :  3.4라인(장폭) E603C 잡체인지 작업', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '갑진/권오규/유지관리', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 갑진 충방전기
3.4/5.6 라인  잡체인지 개조건

2. 작업 일자 : 04월 29일, 08:00 ~ 17:00

3. 작업자 : 9명

4. 금일 작업 사항 : 신규 E603C  
잡체인지 잡체인지 개조작업(장폭)

진행 스테이지: 
3/4 라인 15대(장폭) 
(236 대중 80 완료)

5. 금일 특이사항 및 Issue : 특이사항 없음

6. 명일 작업 사항 :  3.4라인(장폭) E603C 잡체인지 작업', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '갑진/권오규/유지관리', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 갑진 충방전기
3.4/5.6 라인  잡체인지 개조건

2. 작업 일자 : 04월 30일, 
          .            08:00 ~ 17:00

3. 작업자 : 9명

4. 금일 작업 사항 : 신규 E603C  
잡체인지 잡체인지 개조작업(장폭)

진행 스테이지: 
3/4 라인 18대(장폭) 
(236 대중 98 완료)

5. 금일 특이사항 및 Issue : 특이사항 없음

6. 명일 작업 사항 :  3.4라인(장폭) E603C 잡체인지 작업', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '갑진/권오규/유지관리', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 갑진 충방전기
3.4/5.6 라인  잡체인지 개조건

2. 작업 일자 : 05월 01일,
                      08:00 ~ 17:00

3. 작업자 : 9명

4. 금일 작업 사항 : 신규 E603C  
잡체인지 잡체인지 개조작업(장폭)

진행 스테이지: 
3/4 라인 20대(장폭)
(236/118)

5. 금일 특이사항 및 Issue : 특이사항 없음

6. 명일 작업 사항 :  3.4라인(장폭) E603C 잡체인지 작업', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '갑진/권오규/유지관리', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 갑진 충방전기
3.4/5.6 라인  잡체인지 개조건

2. 작업 일자 : 05월 02일,
                      08:00 ~ 17:00

3. 작업자 : 9명

4. 금일 작업 사항 : 신규 E603C  
잡체인지 잡체인지 개조작업(장폭)

진행 스테이지: 
3/4 라인 20대(장폭)
(236/138)

5. 금일 특이사항 및 Issue : 특이사항 없음

6. 명일 작업 사항 :  3.4라인(장폭) E603C 잡체인지 작업', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '갑진/권오규/유지관리', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 갑진 충방전기
3.4/5.6 라인  잡체인지 개조건

2. 작업 일자 : 05월 03일,
                      08:00 ~ 17:00

3. 작업자 : 9명

4. 금일 작업 사항 : 신규 E603C  
잡체인지 잡체인지 개조작업(장폭)

진행 스테이지: 
3/4 라인 20대(장폭)
(236/158)

5. 금일 특이사항 및 Issue : 특이사항 없음

6. 명일 작업 사항 :  3.4라인(장폭) E603C 잡체인지 작업', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '이노메트리/박상철/프로', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 이노메트리,
x-ray,5,6,L

2. 작업 일자 : 05월 03일, 08:30 ~ 17:30

3. 작업자 : 1명

4. 금일 작업 사항 : 
 5,6L stage align 교체 완료

5. 금일 특이사항 및 Issue : 
 특이사항 없음

6. 명일 작업 사항 : 
5L colimeter ,masterjig setting
(3인투입예정)', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '이노메트리/박상철/프로', '라인:- / 공정:Inspection / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 이노메트리,
x-ray,5,6,L

2. 작업 일자 : 05월 04일, 08:30 ~ 17:00

3. 작업자 : 3명

4. 금일 작업 사항 : 
 5L master jig align setting
       1,2 inspection pos plc teaching
      완료

5. 금일 특이사항 및 Issue : 
 특이사항 없음

6. 명일 작업 사항 : 
6L colimeter ,masterjig setting', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '이노메트리/박상철/프로', '라인:- / 공정:Inspection / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 이노메트리,
x-ray,5,6,L

2. 작업 일자 : 05월 05일, 08:30 ~ 14:00

3. 작업자 : 3명

4. 금일 작업 사항 : 
 6L master jig align setting
       1,2 inspection pos plc teaching
      완료

5. 금일 특이사항 및 Issue : 
 특이사항 없음

6. 명일 작업 사항 : 
5L colimeter setting', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '이노메트리/박상철/프로', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 이노메트리, X-ray, #5, 6L

2. 작업 일자 : 05월 06일 (월) 08:30 ~ 17:30

3. 작업 인원 : 1명 (기구 1)

4. 작업 사항 : #5L colimeter setting(기구)
5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 1명 (기구 1)

7. 명일 작업 예정 사항 : 6L Collimater setting (기구)', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '갑진/권오규/유지관리', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 갑진, 충방전기, #3,4, 5, 6L

2. 작업 일자 : 05월 06일 (월) 08:00 ~ 17:00

3. 작업 인원 : 9명 (기구 9)

4. 작업 사항 : #3,4 잡체인지 개조 및setting(기구)
5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 9명 (기구 9)

7. 명일 작업 예정 사항 : 3,4라인 잡체인지 개조 및 setting (기구)', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SKO화성양산/PM/최석원', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 갑진, 충방전기, #3,4L

2. 작업 일자 : 05월 06일 (월) 08:00 ~ 17:00

3. 작업 인원 : 9명 (기구 9)

4. 작업 사항 : #3,4L 20개 호기 하부 Shaft 측 상부 Block 및 하부 Stage 교체 (기구), E603C Stopper 추가 (기구), Clip Ass’y 높이 -5mm 조정 (기구)

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 9명 (기구 9)

7. 명일 작업 예정 사항 : #3,4L 20개 호기 하부 Shaft 측 상부 Block 및 하부 Stage 교체 (기구), E603C Stopper 추가 (기구), Clip Ass’y 높이 -5mm 조정 (기구)', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SKO화성양산/PM/최석원', '라인:- / 공정:Inspection / 출처:2024.06.04.zip', '1. 업체, 설비, Line : SFA Cell 포장기 5, 6L

2. 작업 일자 : 05월 06일 (월) 09:00 ~ 20:00

3. 작업 인원 : 7명(기구5명,전장2명)

4. 작업 사항 : #5,6 EOL Inspection, Cell 포장기 해체 철거
5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 2명 (기구 2명)

7. 명일 작업 예정 사항 : #5,6 바닥 앙카볼트 그라인딩

2024년 5월 7일 화요일', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SKO화성양산/PM/최석원', '라인:- / 공정:- / 출처:2024.06.04.zip', '5, 6L EOL CAM, CPK 철거 완료했습니다.
참고 부탁드립니다.

1. 업체, 설비, Line : SFA Cell 포장기 5, 6L

2. 작업 일자 : 05월 07일 (화) 09:00 ~ 14:00

3. 작업 인원 : 2명(기구2명)

4. 작업 사항 : #5,6 바닥 앙카볼트 그라인딩

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : X

7. 명일 작업 예정 사항 : X', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '이노메트리/박상철/프로', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 이노메트리, X-ray, #5, 6L

2. 작업 일자 : 05월 06일 (월) 08:30 ~ 14:30
3. 작업 인원 : 1명 (기구 1)

4. 작업 사항 : #6L colimeter setting(기구)
5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 1명 (기구 1)

7. 명일 작업 예정 사항 : 
Master cell 수령 후 5L 검출력 setting 진행(sw)', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '갑진/권오규/유지관리', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 갑진, 충방전기, #3,4L

2. 작업 일자 : 05월 07일 (화) 08:00 ~ 17:00

3. 작업 인원 : 9명 (기구 9)

4. 작업 사항 : #3,4L 18개 호기
(236/196)
하부 Shaft 측 상부 Block 및 하부 Stage 교체 (기구), E603C Stopper 추가 (기구), Clip Ass’y 높이 -5mm 조정 (기구)

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 9명 (기구 9)

7. 명일 작업 예정 사항 : #3,4L 15개 호기 
하부 Shaft 측 상부 Block 및 하부 Stage 교체 (기구), E603C Stopper 추가 (기구), Clip Ass’y 높이 -5mm 조정 (기구)', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '이노메트리/박상철/프로', '라인:- / 공정:Inspection / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 이노메트리, X-ray, #5, 6L

2. 작업 일자 : 05월 08일 (수)
08:30 ~ 16:00
3. 작업 인원 : 1명 (기구 1)

4. 작업 사항 : #5L master cell
Inspection roi setting(sw)
5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 1명 (기구 1)

7. 명일 작업 예정 사항 : 
  #6L master cell
Inspection roi setting(sw)', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '갑진/권오규/유지관리', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 갑진, 충방전기, #3,4L

2. 작업 일자 : 05월 08일 (수) 08:00 ~ 16:30

3. 작업 인원 : 9명 (기구 9)

4. 작업 사항 : #3,4L 15개 호기
(236/211)
하부 Shaft 측 상부 Block 및 하부 Stage 교체 (기구), E603C Stopper 추가 (기구), Clip Ass’y 높이 -5mm 조정 (기구)

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 9명 (기구 9)

7. 명일 작업 예정 사항 : #3,4L 15개 호기 
하부 Shaft 측 상부 Block 및 하부 Stage 교체 (기구), E603C Stopper 추가 (기구), Clip Ass’y 높이 -5mm 조정 (기구)', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '이노메트리/박상철/프로', '라인:- / 공정:Inspection / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 이노메트리, X-ray, #5, 6L

2. 작업 일자 : 05월 08일 (수)
08:30 ~ 16:00
3. 작업 인원 : 1명 (기구 1)

4. 작업 사항 : #6master cell
Inspection roi setting(sw)
5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 1명 (기구 1)

7. 명일 작업 예정 사항 : 
  #6L master cell
Inspection roi setting(sw)', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '갑진/권오규/유지관리', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 갑진, 충방전기, #3,4L

2. 작업 일자 : 05월 09일 (목) 08:00 ~ 16:00

3. 작업 인원 : 9명 (기구 9)

4. 작업 사항 : #3,4L 15개 호기
(236/226)
하부 Shaft 측 상부 Block 및 하부 Stage 교체 (기구), E603C Stopper 추가 (기구), Clip Ass’y 높이 -5mm 조정 (기구)

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 9명 (기구 9)

7. 명일 작업 예정 사항 : #3,4L 10개 호기 
하부 Shaft 측 상부 Block 및 하부 Stage 교체 (기구), E603C Stopper 추가 (기구), Clip Ass’y 높이 -5mm 조정 (기구)', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '갑진/권오규/유지관리', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 갑진, 충방전기, #3,4L

2. 작업 일자 : 05월 10일 (금) 08:00 ~ 16:00

3. 작업 인원 : 9명 (기구 9)

4. 작업 사항 : #3,4L 10개 호기
(236/236)
하부 Shaft 측 상부 Block 및 하부 Stage 교체 (기구), E603C Stopper 추가 (기구), Clip Ass’y 높이 -5mm 조정 (기구)

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 9명 (기구 9)

7. 명일 작업 예정 사항 : #5,6라인
스테이지 안착 위치 사이즈 확인 지그 
테스트 샘플 확인', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SFA/남상수', '라인:- / 공정:SVI; VI / 출처:2024.06.04.zip', '1. 업체, 설비, Line : SFA Cell 포장기 5, 6L

2. 작업 일자 : 05월 11일(토) 09:00 ~ 13:00

3. 작업 인원 : 2명(기구2명)

4. 작업 사항 : #5,6 SVI, 연결물류 라인마킹

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : X

7. 명일 작업 예정 사항 : X', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '이노메트리/박상철/프로', '라인:- / 공정:Inspection / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 이노메트리, X-ray, #5, 6L

2. 작업 일자 : 05월 13일 (월)
08:30 ~ 16:00
3. 작업 인원 : 1명 (기구 1)

4. 작업 사항 : #6master cell
Inspection roi setting(sw)
5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 1명 (기구 1)

7. 명일 작업 예정 사항 : 
  #6L  Inspection roi setting(sw)', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '갑진/권오규/유지관리', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 갑진, 충방전기, #3,4L

2. 작업 일자 : 05월 13일 (월) 08:00 ~ 16:00

3. 작업 인원 : 9명 (기구 9)

4. 작업 사항 : #3,4L 작업 재 확인
스테이지 점검 지그 확인(조립)
#5.6 2차 단동 테스트

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 9명 (기구 9)

7. 명일 작업 예정 사항 : #3,4  2차 단동 테스트
#5.6 2차 단동 테스트', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '갑진/권오규/유지관리', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 갑진, 충방전기, #3,4L

2. 작업 일자 : 05월 14일 (화) 08:00 ~ 17:30

3. 작업 인원 : 9명 (기구 9)

4. 작업 사항 : #5.6 2차 단동 테스트
(지그 전진 위치 확인)

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 9명 (기구 9)

7. 명일 작업 예정 사항 : 
#3,4  2차 단동 테스트
(지그 전지 위치 확인)', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '갑진/권오규/유지관리', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 갑진, 충방전기, #3,4L

2. 작업 일자 : 05월 15일 (수) 08:00 ~ 16:30

3. 작업 인원 : 9명 (기구 9)

4. 작업 사항 : #3,4,5,6라인
 2차 단동 테스트 

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 9명 (기구 9)

7. 명일 작업 예정 사항 : 
#3,4  2차 단동 테스트
(지그 전지 위치 재조정)', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SFA/남상수', '라인:- / 공정:SVI; VI / 출처:2024.06.04.zip', '1. 업체, 설비, Line : SFA, SVI, #5, 6

2. 작업 일자 : 05월 15일 (수) 08:00 ~ 17:30

3. 작업 인원 : 9명 
(PM2, 기구 2, 도비 5)

4. 작업 사항
   - SVI 5호기 반입
   - MPD 5, 6호기 반입

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 9명 
(PM2, 기구 2, 도비 5)

7. 명일 작업 예정 사항
   - SVI 6호기 반입', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SKO화성양산/PM/최석원', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 디가스#5

2. 작업 일자 : 05월 15일 (수) 08:00 ~ 17:30

3. 작업 인원 : 5명 (기구 4, 제어 1)

4. 작업 사항 : #5,6라인 형교환 툴 반입

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 5명 (기구 4, 제어 1)

7. 명일 작업 예정 사항 : 
#챔버 부 툴 채인지', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'wonikpne/HARKSUN KIM', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 디가스#5

2. 작업 일자 : 05월 16일 (목) 08:00 ~ 17:00

3. 작업 인원 : 5명 (기구 4, 제어 1)

4. 작업 사항 : #5 chamber sealing 교체
                             기존 piercing 탈착 및 필요 가공품 해체
                            

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 5명 (기구 4, 제어 1)

7. 명일 작업 예정 사항 : 
#챔버 부 툴 채인지 - 피어싱, 포켓', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SFA/남상수', '라인:- / 공정:SVI; VI / 출처:2024.06.04.zip', '1. 업체, 설비, Line : SFA, SVI, #5, 6

2. 작업 일자 : 05월 16일 (목) 08:00 ~ 17:30

3. 작업 인원 : 9명 
(PM2, 기구 2, 도비 5)

4. 작업 사항
   - SVI 6호기 반입
   - SVI 5호기 정위치 및 레벨링
   - 폐기물 정리

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 9명 
(PM2, 기구 2, 도비 5)

7. 명일 작업 예정 사항
   - 5호기 정위치 및 레벨링', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'wonikpne/HARKSUN KIM', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 디가스#5

2. 작업 일자 : 05월 17일 (금) 08:00 ~ 17:00

3. 작업 인원 : 5명 (기구 4, 제어 1)

4. 작업 사항 : #5 피어싱 조립, 부착
기존 포켓 탈거, 후면 포켓 부착

                            

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 5명 (기구 4, 제어 1)

7. 명일 작업 예정 사항 : 
# 전면 포켓 부착
    로더, pre cutting 부 툴 체인지
    tap bcr 테스트', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SFA/남상수', '라인:- / 공정:SVI; VI / 출처:2024.06.04.zip', '1. 업체, 설비, Line : SFA, SVI, #5, 6

2. 작업 일자 : 05월 17일 (금) 08:00 ~ 17:30

3. 작업 인원 : 3명
(PM1, 기구 2)

4. 작업 사항
   - SVI 6호기 정위치 및 레벨링
   - 기구물 개조개선 건 Parts 정리
   - 폐기물 정리

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원

7. 명일 작업 예정 사항', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '갑진/권오규/유지관리', '라인:- / 공정:IR; OCV / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 갑진, 충방전기, #3,4L

2. 작업 일자 : 05월 17일 (금) 08:00 ~ 16:30

3. 작업 인원 : 9명 (기구 9)

4. 작업 사항 : #5,6라인 
트레이 안착위치 사이즈 지그 확인 (50대)
클립 회전(돌출) 50대
충방 클립가이드 조립공차 확인 10대
irocv 트레이 정위치 편차 9대


5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 9명 (기구 9)

7. 명일 작업 예정 사항 : 
#5,6라인 2차 단동테스트
(스트록 기준 세팅)', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'wonikpne/HARKSUN KIM', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 디가스#5

2. 작업 일자 : 05월 18일 (토) 09:00 17:00

3. 작업 인원 : 5명 (기구 4, 제어 1)

4. 작업 사항 : #5 전면 포켓 부착, 로더 컨베이어 스테이지 교체, 챔버 투입, 배출 셔틀 가이드 교체, 리실링 교체, pre cutting 50%교체 진행

                            

5. 작업 중 특이사항 및 Issue : Chamber sealing 승온

6. 명일 작업 예정 인원 : 5명 (기구 4, 제어 1)

7. 명일 작업 예정 사항 : 
# 포켓 pressn조정, sealing 두께 조정, pre cutting 툴 교환, 언로더 툴 교환', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SKO화성양산/PM/최석원', '라인:- / 공정:IR; IR/OCV; OCV; SVI; VI / 출처:2024.06.04.zip', '@Maint/Mgr/SG LEE 

1동 JC 공사가 본격적으로 시작되어,
05월 20일(월)부터
법인 1동 보전팀 JC 대응 업무 관련해서는 
하기와 같이 협조 예정이오니
참고 부탁드립니다.

1. 1동 JC 관련 작업허가서 전달 및 현장 미팅은
매일 08:30 #5, 6L EOL에서 진행 예정이오니, 
각 설비 담당 엔지니어분들께서는 참석해주시면 감사하겠습니다.

2. JC 진행 현황 공유는
1번 미팅 내용 기반으로
매일 09:00 보전팀 미팅에서 자체적 내부 공유 부탁드립니다.
(저는 특이사항 발생 혹은 필요 시에만 참석 예정입니다.)

3. 05월 20일 기준, 공사 진행 및 투입 예정 업체 :
갑진 (FCH, IR/OCV), YHT (FLD/INS #5, 6L), 하나기술 (FLD/INS #3, 4L), SFA (SVI),  원익PNE (DGS), 이노메트리 (X-Ray)', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'wonikpne/HARKSUN KIM', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 디가스#5

2. 작업 일자 : 05월 18일 (토) 09:00 17:00

3. 작업 인원 : 5명 (기구 4, 제어 1)

4. 작업 사항 : #5 pre cutting, unloaded shuttle guide 교체
chamber sealing 두께 SETTING 중, LOADER 물류 SETTING

5. 작업 중 특이사항 및 Issue :

6. 명일 작업 예정 인원 : 5명 (기구 4, 제어 1)

7. 명일 작업 예정 사항 : 
# CHAMBER SEALING 두께 조정, DEAGS 물류 SETTING', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'wonikpne/HARKSUN KIM', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 디가스#5

2. 작업 일자 : 05월 20일 (월) 08:00 18:00

3. 작업 인원 : 5명 (기구 4, 제어 1)

4. 작업 사항 : #5
chamber sealing 두께 SETTING, Degas 물류 setting, pre cutting 물류 setting 중

5. 작업 중 특이사항 및 Issue :

6. 명일 작업 예정 인원 : 5명 (기구 4, 제어 1)

7. 명일 작업 예정 사항 : 
# ,Pocket press 조정, sealing align, 높이 조정
pre cutting 물류 setting, hot press 물류 setting, Ins 물류 setting', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '갑진/권오규/유지관리', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 갑진, 충방전기, #3,4L

2. 작업 일자 : 05월 20일 (월) 08:00 ~ 16:30

3. 작업 인원 : 7명 (기구 7)

4. 작업 사항 : #5,6라인(장단폭)
트레이 안착위치 폭 사이즈 지그 확인 100대 (156/156)
클립 지그 전진위치 조정 120대 (156/120)


5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 5명 (기구 5)

7. 명일 작업 예정 사항 : #5.6(장단폭)
충방 클립가이드 조립공차 확인 
클립 지그 전진위치 조정', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SFA/남상수', '라인:- / 공정:SVI; VI / 출처:2024.06.04.zip', '1. 업체, 설비, Line : SFA, SVI, #5, 6

2. 작업 일자 : 05월 20일 (월) 08:00 ~ 17:00

3. 작업 인원 : 7명 
(PM 2, 기구 2, 제어 2, 전장 1)

4. 작업 사항
   - 5호기 전장 포설 작업
   - 5, 6호기 PC 설치
   - 5, 6호기 기구물 개선건 작업
   - 5, 6호기 로딩, 언로딩 TR해체

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 7명
(PM 2, 기구 2, 제어 2, 전장 1)

7. 명일 작업 예정 사항
   - 5, 6호기 전장 포설 작업
   - 기구물 개선 작업
   - 5, 6호기 PC 설치', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SKO화성양산/PM/최석원', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : YHT INS/FLD #5,6L

2. 작업 일자 : 05월 20일 (월) 08:00 ~ 18:00

3. 작업 인원 : 6명 (기구 4 제어 2)

4. 작업 사항 : 
#5 로딩부 <->TAB 얼라인 기본티칭
#6 기구물 교체작업 (80%)
#5 Align Unit I/O 배선작업(50%)


5. 작업 중 특이사항 및 Issue : 
DOOR EMO 알람 지속 발생 (명일 점검 필요)

6. 명일 작업 예정 인원 : 6명

7. 명일 작업 예정 사항 : 
#5 기본티칭
#5#6 전해액 감지센서 기구물 작업
Align Unit I/O 배선작업
#5#6  Align Unit 공압 배선 작업', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SFA/남상수', '라인:- / 공정:SVI; VI / 출처:2024.06.04.zip', '1. 업체, 설비, Line : SFA, SVI, #5, 6

2. 작업 일자 : 05월 21일 (화) 08:00 ~ 17:00

3. 작업 인원 : 7명 
(PM 2, 기구 2, 제어 2, 전장 1)

4. 작업 사항
   - 5, 6호기 전장 포설 작업
   - 5, 6호기 기구물 개선건 작업

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 7명
(PM 2, 기구 2, 제어 2, 전장 1)

7. 명일 작업 예정 사항
   - 5, 6호기 전장 포설 작업
   - 기구물 개선 작업
   - 5, 6호기 PC 설치', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '갑진/권오규/유지관리', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 갑진, 충방전기, #3,4L

2. 작업 일자 : 05월 21일 (화) 08:00 ~ 16:30

3. 작업 인원 : 5명 (기구 5)

4. 작업 사항 : #5,6라인(장단폭)
클립 지그 전진위치 조정 36대 (156/156 완)
클립 회전(가이드외부돌출) 확인 100대 (156/156 완)


5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 5명 (기구 5)

7. 명일 작업 예정 사항 : #5.6(장단폭)
충방 클립가이드 조립공차 확인', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'wonikpne/HARKSUN KIM', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 디가스#5

2. 작업 일자 : 05월 21일 (화) 08:00 18:00

3. 작업 인원 : 5명 (기구 4, 제어 1)

4. 작업 사항 : #5
pre cutting 물류 SETTING
hot press 물류 SETTING 
포켓 프레스 조정
챔버 1싸이클 이상 여부 확인
전면부 실링 높이, 조정 및 두께 확인 및 조정
resealing 두께 setting

5. 작업 중 특이사항 및 Issue : 후면 7번 챔버 미세 리크

6. 명일 작업 예정 인원 : 5명 (기구 4, 제어 1)

7. 명일 작업 예정 사항 : 
# 전,후면 sealing 높이, 위치 조정, 두께 확인 및 조정
re sealing 위치, 높이 조정, 두께 확인 및 조정
INS, UNLOADER 물류 SETTING

8. 사용셀
# 금일 16ea
# 누적 16ea', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SKO화성양산/PM/최석원', '라인:- / 공정:VI / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 하나기술, FLD&INS,#3,4L

2. 작업 일자 : 05월 21일 (화) 08:00 ~ 17:30

3. 작업 인원 : 4명 (기구 4)

4. 작업 사항 : 
-Cell loading p&p 센서레일교체작업 완료
-Input cell turn pad plate 교체작업
 3라인 완료 /4라인 30프로 진행중
-Cell moving transfer plate 교체완료
-Cell unloading p&p pad plate 교체완료
-전해액 감지센서 브라켓 대칭 미제작으로 인해 
 50프로 작업

5. 작업 중 특이사항 및 Issue : 
미입고품목 셋팅용지그 6항목
23일 핸드캐리어로 입고예정
전해액 센서 브라켓 신규제작필요함
입고일 일정확인필요

6. 명일 작업 예정 인원 : 4명 (기구 4)

7. 명일 작업 예정 사항 : 
4라인 Input cell turn pad plate 교체작업
Pad plate 교체품 진공상태 확인작업
작업 완료 유닛', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SKO화성양산/PM/최석원', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : YHT INS/FLD #5,6L

2. 작업 일자 : 05월 21일 (화) 08:00 ~ 18:00

3. 작업 인원 : 6명 (기구 4 제어 2)

4. 작업 사항 : 
#5 2LAINE TAB 얼라인 <-> 180도 폴딩 기본티칭
#5#6 기구물 교체작업 (이슈자재 외 완료)
#5#6 Align Unit 배관작업 완료
#5 Align Unit I/O 배선작업(90%)
#5 main 판넬 배선 작업 (90%)
#5 전해액 감지센서 배선 (70%)


5. 작업 중 특이사항 및 Issue : 
#5 INS DOOR 알람 발생
FLD 히터 온도 상승 안됨 
테라스컷 1싸이클 동작 안됨
전해액 감지센서 수정가공 발주 얘정

6. 명일 작업 예정 인원 : 6명

7. 명일 작업 예정 사항 : 
#5#6 기본티칭
#5 Align Unit I/O 배선작업
#5 main 판넬 배선 작업 
#5 전해액 감지센서 배선', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SFA/남상수', '라인:- / 공정:SVI; VI / 출처:2024.06.04.zip', '1. 업체, 설비, Line : SFA, SVI, #5, 6

2. 작업 일자 : 05월 22일 (수) 08:00 ~ 17:00

3. 작업 인원 : 7명 
(PM 2, 기구 2, 제어 2, 전장 1)

4. 작업 사항
   - 5, 6호기 전장 포설 작업
   - 5, 6호기 기구물 개선건 작업

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 7명
(PM 2, 기구 2, 제어 2, 전장 1)

7. 명일 작업 예정 사항
   - 5, 6호기 전기 Turn-On
   - 5, 6호기 전기 I/O Check
   - 기구물 개선 작업', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '갑진/권오규/유지관리', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 갑진, 충방전기, #3,4L

2. 작업 일자 : 05월 22일 (수) 08:00 ~ 16:30

3. 작업 인원 : 5명 (기구 5)

4. 작업 사항 : #3.4라인(장폭)
클립 회전(가이드외부돌출) 확인 100대 (100/236 )
트레이 안착위치확인 100대 (100/236)
#5.6라인 (장단폭)
클립가이드 조립공차 확인 20대 


5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 5명 (기구 5)

7. 명일 작업 예정 사항 : #3.4라인(장폭)
충방 클립가이드 조립공차 확인 
트레이 안착위치 확인
클립 틀어짐 확인', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'YHT/kyouhaw park/PM', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : YHT INS/FLD #5,6L

2. 작업 일자 : 05월 22일 (수) 08:00 ~ 18:00

3. 작업 인원 : 6명 (기구 4 제어 2)

4. 작업 사항 : 
#5 2LAINE FLD 기본티칭 완료
#6 1LANE FLD 바디얼라인 까지 기본티칭
#5 Align Unit I/O 배선작업 완료
#5 main 판넬 배선 작업 완료
#5 전해액 감지센서 배선 (80%)


5. 작업 중 특이사항 및 Issue : 
없음

6. 명일 작업 예정 인원 : 6명

7. 명일 작업 예정 사항 : 
#5#6 기본티칭
#6 Align Unit I/O 배선작업
#6 main 판넬 배선 작업 
#5 전해액 감지센서 배선', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'wonikpne/HARKSUN KIM', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 디가스#5 

2. 작업 일자 : 05월 23일 (수) 08:00 19:50

3. 작업 인원 : 5명 (기구 4, 제어 1) 

4. 작업 사항 : 
#5
INS, X-ray, unloaded 물류 setting
후면부 실링 높이, 조정 및 두께 확인 및 조정
resealing 높이 조정 및 두께 확인 및 조정
#6
Chamber sealing, 피어싱 해체 

5. 작업 중 특이사항 및 Issue : 
#5 
후면 4번 챔버 미세 리크
hot press 3번 로드셀 이상(원점세팅 이상), hot press 3번 실린더 센서 이상
unloaded tray 투입 요청
#6
sealing 온도센서 해체 불가 5ea 
unloaded tray 투입 요청 

6. 명일 작업 예정 인원 : 5명 (기구 4, 제어 1) 

7. 명일 작업 예정 사항 : 
# sealing 부착, 피어싱 조립 및 부착 

8. 사용 셀
금일 사용 : 32ea
누적 사용 : 48', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SKO화성양산/PM/최석원', '라인:- / 공정:VI / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 하나기술, FLD&INS,#3,4L

2. 작업 일자 : 05월 21일 (수) 08:00 ~ 17:00

3. 작업 인원 : 4명 (기구 4)

4. 작업 사항 : 
-Input cell turn pad plate 교체작업 완료
-Cell stage unit 작업완료
-Terrace vision unit 교체작업완료

5. 작업 중 특이사항 및 Issue : 

6. 명일 작업 예정 인원 : 4명 (기구 4)

7. 명일 작업 예정 사항 : 
-Terrace cutting unit 교체작업', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', '갑진/권오규/유지관리', '라인:- / 공정:IR; IR OCV; OCV / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 갑진, 충방전기, #3,4L

2. 작업 일자 : 05월 23일 (목) 08:00 ~ 16:30

3. 작업 인원 : 5명 (기구 5)

4. 작업 사항 : #3.4라인(장폭)
클립 회전(가이드외부돌출) 확인 136대 (236/236 )
트레이 안착위치확인 136대 (236/236)
클립가이드 조립공차 확인 48대 

IR OCV 3-3 클립가이드 조립공차 
스테이지 조정 완료
전면 좌:23.5 우: 24
후면 좌:24     우:24

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 5명 (기구 5)

7. 명일 작업 예정 사항 : 
#3.4라인(장폭) 2차 단동 테스트', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'wonikpne/HARKSUN KIM', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 디가스#5 

2. 작업 일자 : 05월 23일 (목) 08:00 - 17:00

3. 작업 인원 : 5명 (기구 4, 제어 1) 

4. 작업 사항 : 
#5
dry run 및 프로그램 확인작업
#6
Chamber sealing, piecing, pocket 부착
전면 4번 chamber temp sensor 해체 안됨으로 인한 신규 sensor로 교체 및 센서선 커넥팅 작업 완료

5. 작업 중 특이사항 및 Issue : 
#5 
#6 전면 4번 chamber sealing Temp sensor  1ea 해체 안됨 -> 신규 센서로 교체 및 센서 선 connecting 작업 완료

6. 명일 작업 예정 인원 : 5명 (기구 4, 제어 1) 

7. 명일 작업 예정 사항 : 
# loader stage, degas shuttle 투입배출 guide, pre cutting, re sealing 교체

8. 사용 셀
금일 사용 : 0
누적 사용 : 48', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SFA/남상수', '라인:- / 공정:SVI; VI / 출처:2024.06.04.zip', '1. 업체, 설비, Line : SFA, SVI, #5, 6

2. 작업 일자 : 05월 23일 (목) 08:00 ~ 17:30

3. 작업 인원 : 5명 
(PM 1, 기구 2, 제어 1, 전장 1)

4. 작업 사항
   - 5, 6호기 전기 Turn-On 완료
   - 5, 6호기 J/C 기구물 개선건 작업
   - 5호기 I/O Check

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 5명 
(PM 1, 기구 2, 제어 1, 전장 1)

7. 명일 작업 예정 사항
   - 5, 6호기 I/O Check
   - 5, 6호기 J/C 기구물 개선 작업', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'YHT/kyouhaw park/PM', '라인:- / 공정:IR / 출처:2024.06.04.zip', '1. 업체, 설비, Line : YHT INS/FLD #5,6L

2. 작업 일자 : 05월 23일 (목) 08:00 ~ 18:00

3. 작업 인원 : 6명 (기구 4 제어 2)

4. 작업 사항 : 
#5 1LAINE FLD 바디얼라인 까지 완료(50%)
#5 2LANE INS ACIR 까지 완료 (25%)
#6 Align Unit I/O 배선작업(90%)
#5 전해액 감지센서 배선 (95%)


5. 작업 중 특이사항 및 Issue : 
FLD 탭 얼라인#1 얼라인 블럭 얼라인 불가로 인하여  8EA 설계발주 얘정

6. 명일 작업 예정 인원 : 6명

7. 명일 작업 예정 사항 : 
#5#6 기본티칭
#6 Align Unit I/O 배선작업
#6 main 판넬 배선 작업 
#5#6 전해액 감지센서 배선', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SFA/남상수', '라인:- / 공정:IR; SVI; VI / 출처:2024.06.04.zip', '1. 업체, 설비, Line : SFA, SVI, #5, 6

2. 작업 일자 : 05월 24일 (금) 08:00 ~ 17:30

3. 작업 인원 : 5명 
(PM 1, 기구 2, 제어 1, 전장 1)

4. 작업 사항
   - 5, 6호기 캐리어 탭 받침 Setting
   - 5, 6호기 Cell 감지센서 Setting
   - 6호기 I/O Check

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 5명 
(PM 1, 기구 2, 제어 1, 전장 1)

7. 명일 작업 예정 사항
   - Air Hook-up 확인
   - 5, 6호기 Cell 감지센서 Setting
   - 5호기 모듈점검 및 기구물 점검', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SFA/남상수', '라인:- / 공정:SVI; VI / 출처:2024.06.04.zip', '1. 업체, 설비, Line : SFA, SVI J/C, #3, 4

2. 작업 일자 : 05월 24일 (금) 08:00 ~ 17:30

3. 작업 인원 : 2명 
(기구 1, 제어 1)

4. 작업 사항
   - 3Line Stage Pad 결합
   - 3Line 진공관로 클리닝
   - 3Line LM 라인 클리닝

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 2명
(기구 1, 제어 1)

7. 명일 작업 예정 사항
   - 3Line Stage Cell 감지센서 세팅', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'wonikpne/HARKSUN KIM', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 디가스#5 

2. 작업 일자 : 05월 24일 (금) 08:00 - 18:00

3. 작업 인원 : 5명 (기구 4, 제어 1) 

4. 작업 사항 : 
#5
dry run 및 프로그램 확인작업
#6
piecing 조정
loader stage, degas 투입/배출 shuttle guide, pre cutting stage, resealing, unloaded guide, align 교체

5. 작업 중 특이사항 및 Issue : 
#5 
#6 

6. 명일 작업 예정 인원 : 6명 (기구 5, 제어 1) 

7. 명일 작업 예정 사항 : 
#6 loader, degas 물류 setting
Chamber sealing 승온 및 setting

8. 사용 셀
금일 사용 : 0
누적 사용 : 48', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'YHT/kyouhaw park/PM', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : YHT INS/FLD #5,6L

2. 작업 일자 : 05월 24일 (금) 08:00 ~ 18:00

3. 작업 인원 : 6명 (기구 4 제어 2)

4. 작업 사항 : 
#5 FLD 기본티칭 완료
#5 2lane INS 기본티칭 완료
1. 6라인 1, 2 Lane 전해액 감지센서 배선 작업(95%)
2. 6라인 Main 판넬 배선 작업 (90%)

5. 작업 중 특이사항 및 Issue : 


6. 명일 작업 예정 인원 : 2명

7. 명일 작업 예정 사항 :
폴딩 270도폴딩 프레스 품질 확인
도면 스케치', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SKO화성양산/PM/최석원', '라인:- / 공정:PPC / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 하나 기술 / PPC / 3,4,5,6 라인

2. 작업 일자 : 05월 24일 (금) 08:00 ~ 16:00

3. 작업 인원 : 4명 (기구 4)

4. 작업 사항 : 
- #5-1 HPC EPOXY PAD 교체 작업
- #5-1 HPC 간지 교체 작업


5. 작업 중 특이사항 및 Issue
- HPC EPOXY PAD 거리 세팅시 이물 받지간섭으로 인하여 제품 세팅 치수 까지 조절이 안됌  일정확인후 공유예정

6. 명일 작업 예정 인원 : 4명 (기구 4)

7. 명일 작업 예정 사항 : 
- #5-1 물류 라인 세팅 작업
- #5-2 HPC EPOXY PAD 교체 작업
- #5-2 HPC 간지 교체 작업', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'wonikpne/HARKSUN KIM', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 디가스#5 

2. 작업 일자 : 05월 25일 (토) 09:00 - 17:30

3. 작업 인원 : 6명 (기구 5, 제어 1) 

4. 작업 사항 : 
#5
dry run 및 프로그램 확인작업
#6
piecing 조정
loader, degas 물류 setting
align 조정
sealing setting

5. 작업 중 특이사항 및 Issue : 
#5 
#6 

6. 명일 작업 예정 인원 : 6명 (기구 5, 제어 1) 

7. 명일 작업 예정 사항 : 
#6 degas, precutting 물류 setting
pocket 높이 setting
Chamber sealing 승온 및 setting 

8. 사용 셀
금일 사용 : 0
누적 사용 : 48', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'wonikpne/HARKSUN KIM', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 디가스#5 

2. 작업 일자 : 05월 26일 (일) 09:00 - 17:00

3. 작업 인원 : 6명 (기구 5, 제어 1) 

4. 작업 사항 : 
#5

#6
Pocket 높이 setting
sealing 온도 승온
Resealing 두께 setting
Chamber sealing 두께 setting
pre cutting 물류 setting

5. 작업 중 특이사항 및 Issue : 
#5 
#6 전면7번 후면7번 디지털 압력 스위치 점검 요청

6. 명일 작업 예정 인원 : 6명 (기구 5, 제어 1) 

7. 명일 작업 예정 사항 : 
#6 Hot press, Ins 물류 setting
Chamber sealing 두께 setting

8. 사용 셀
금일 사용 : 0
누적 사용 : 48', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'wonikpne/HARKSUN KIM', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 디가스#5 

2. 작업 일자 : 05월 27일 (월) 08:00 - 17:00

3. 작업 인원 : 6명 (기구 5, 제어 1) 

4. 작업 사항 : 
#5
Dry run

#6
Chamber sealing 두께 setting
Hot press, Ins 물류 setting

5. 작업 중 특이사항 및 Issue : 
#5 
#6 

6. 명일 작업 예정 인원 : 6명 (기구 5, 제어 1) 

7. 명일 작업 예정 사항 : 
#6
Chamber sealing 두께 setting
Chamber sealing 높이 확인 및 조정
X-ray, unloader 물류 setting

8. 사용 셀
금일 사용 : 27
누적 사용 : 75', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SFA/남상수', '라인:- / 공정:IR; SVI; VI / 출처:2024.06.04.zip', '1. 업체, 설비, Line : SFA, SVI, #5, 6

2. 작업 일자 : 05월 27일 (월) 08:00 ~ 17:00

3. 작업 인원 : 8명
(PM 1, 기구 3, 제어 2, 전장 1, SW 1)

4. 작업 사항
   - 5, 6호기 Air Hook-up 완료
   - 5, 6호기 Cell 감지센서 Setting
   - 5, 6호기 PC Setting
   - 5, 6호기 모듈 및 Turn 축 점검
   - 5, 6호기 단동 Test

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 8명
(PM 1, 기구 3, 제어 2, 전장 1, SW 1)

7. 명일 작업 예정 사항
   - 5, 6호기 Cell 감지센서 Setting
   - 5, 6호기 PC Setting
   - 5, 6호기 모듈 및 Turn 축 점검
   - 5, 6호기 단동 Test', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SFA/남상수', '라인:- / 공정:SVI; VI / 출처:2024.06.04.zip', '1. 업체, 설비, Line : SFA, SVI J/C, #3, 4

2. 작업 일자 : 05월 27일 (월) 08:00 ~ 17:30

3. 작업 인원 : 2명 
(기구 1, 제어 1)

4. 작업 사항
   - 3Line Stage Cell 감지센서 세팅

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 2명
(기구 1, 제어 1)

7. 명일 작업 예정 사항
   - 3Line TR 위치조정 및 P&P 높이조정
   - 3Line Cell 흡착테스트', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SFA SVI 선임 조대연', '라인:- / 공정:SVI; VI / 출처:2024.06.04.zip', '1. 업체, 설비, Line : SFA, SVI, #5, 6

2. 작업 일자 : 05월 28일 (화) 08:00 ~ 17:00

3. 작업 인원 : 8명
(PM 1, 기구 3, 제어 2, 전장 1, SW 1)

4. 작업 사항
   - 5, 6호기 Cell 감지센서 Setting
   - 5, 6호기 PC Setting
   - 5, 6호기 모듈 및 Turn 축 점검
   - 5, 6호기 단동 Test
   - 5, 6호기 클리닝 진행
   - 5호기 LMS Dry Run Test

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 8명
(PM 1, 기구 3, 제어 2, 전장 1, SW 1)

7. 명일 작업 예정 사항
   - 5, 6호기 PC Setting
   - 5, 6호기 모듈 및 Turn 축 점검
   - 5, 6호기 단동 Test
   - 5, 6호기 LMS Dry Run Test', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SFA SVI 선임 김영주', '라인:- / 공정:SVI; VI / 출처:2024.06.04.zip', '1. 업체, 설비, Line : SFA, SVI J/C, #3, 4

2. 작업 일자 : 05월 28일 (화) 08:00 ~ 17:00

3. 작업 인원 : 2명 
(기구 1, 제어 1)

4. 작업 사항
 - 3Line 
 : Cell 감지센서 세팅완료
 : TR 위치조정 및 P&P 높이조정 완료

 - 4Line
 : Cell 감지센서 세팅완료
 : TR 위치조정 및 P&P 높이조정 완료

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 2명
(기구 1, 제어 1)

7. 명일 작업 예정 사항
 - 3, 4Line
 : Dry Run 진행', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'wonikpne/HARKSUN KIM', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 디가스#5 

2. 작업 일자 : 05월 28일 (화) 08:00 - 17:00

3. 작업 인원 : 6명 (기구 5, 제어 1) 

4. 작업 사항 : 
#5
Dry run
Chamber Leak test

#6
Chamber sealing 두께 setting (cell)
Re-Sealing 두께 setting (cell)
x-ray, unloader 물류 setting
Chamber leak test

5. 작업 중 특이사항 및 Issue : 
#5 Chamber 후면 6,7 leak 발견
#6 Chamber 전면 2,4,5,7
                        후면 1,6,7
      leak 발견

6. 명일 작업 예정 인원 : 6명 (기구 5, 제어 1) 

7. 명일 작업 예정 사항 : 
#5 Cell run
#6 dry run 및 Chamber leak 재확인
 
8. 사용 셀
금일 사용 : 39
누적 사용 : 87', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'YHT/kyouhaw park/PM', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : YHT INS/FLD #5,6L

2. 작업 일자 : 05월 28일 (화) 08:00 ~ 18:00

3. 작업 인원 : 6명 (기구 4 제어 2)

4. 작업 사항 : 
#5 2레인 자동 셀런 품질셋팅 (인스 배출단 까지)
#5 #6 기구물 교환작업 
#6-2 FLD기본티칭 25%
 전해액 감지센서 프로그램 수정


5. 작업 중 특이사항 및 Issue : 
5-2 INS 두께측정기 4번 실린더 동작이상
5-2 INS. 프린트 탭컷팅 자동운전중 작업 진행 하지 않고 넘어감

6. 명일 작업 예정 인원 : 6명

7. 명일 작업 예정 사항 :

#5 FLD 자동셀런 품질셋팅
#6 FLD 기본 티칭', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SFA SVI 선임 김영주', '라인:- / 공정:SVI; VI / 출처:2024.06.04.zip', '1. 업체, 설비, Line : SFA, SVI J/C, #3, 4

2. 작업 일자 : 05월 28일 (화) 08:00 ~ 17:30

3. 작업 인원 : 2명 
(기구 1, 제어 1)

4. 작업 사항
 - 3Line 
 : 흡착 테스트 진행
 : 교체 조정 후 기구 간섭여부 확인

 - 4Line
 : 흡착 테스트 진행
 : 교체 조정 후 기구 간섭여부 확인

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 2명
(기구 1, 제어 1)

7. 명일 작업 예정 사항
 - 3, 4Line
 : BCR 위치 재조정', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SFA SVI 선임 조대연', '라인:- / 공정:SVI; VI / 출처:2024.06.04.zip', '1. 업체, 설비, Line : SFA, SVI, #5, 6

2. 작업 일자 : 05월 29일 (수) 08:30 ~ 17:30

3. 작업 인원 : 8명
(PM 1, 기구 3, 제어 2, 전장 1, SW 1)

4. 작업 사항
   - 5, 6호기 PC Setting
   - 5, 6호기 모듈 및 Turn 축 점검
   - 5, 6호기 단동 Test
   - 5, 6호기 LMS Dry Run Test
   - 6호기 P&P Unit 정밀 Setting

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 8명
(PM 1, 기구 3, 제어 2, 전장 1, SW 1)

7. 명일 작업 예정 사항
   - 5, 6호기 PC Setting
   - 5, 6호기 모듈 및 Turn 축 점검
   - 5, 6호기 단동 Test
   - 5, 6호기 LMS Dry Run Test
   - 5호기 P&P Unit 정밀 Setting
   - 5, 6호기 캐리어 Leak', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'wonikpne/HARKSUN KIM', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 디가스#5 

2. 작업 일자 : 05월 29일 (수) 08:00 - 19:00

3. 작업 인원 : 6명 (기구 5, 제어 1) 

4. 작업 사항 : 
#5
Cell run
물류 확인 작업

#6


5. 작업 중 특이사항 및 Issue : 
#5 
#6 

6. 명일 작업 예정 인원 : 6명 (기구 5, 제어 1) 

7. 명일 작업 예정 사항 : 
#5 
#6 dry run 및 cell run
 
8. 사용 셀
금일 사용 : 77
누적 사용 : 164', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'YHT/kyouhaw park/PM', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : YHT INS/FLD #5,6L

2. 작업 일자 : 05월 29일 (수) 08:00 ~ 18:00

3. 작업 인원 : 6명 (기구 4 제어 2)

4. 작업 사항 : 
#5 FLD 자동셀런 품질셋팅  (완료)
#5 2lane INS 프리트기 / 탭컷팅 자동중 동작완료
 #6 2lane 기본 티칭 완료
#6 1lane 바디얼라인까지 완료
#5#6 베출부 BCR 기구물 부착 완료
#6 2 Lane 전해액 감지 센서 통신 확인 완료

5. 작업 중 특이사항 및 Issue : 
프린트기 / 탭컷팅 자동운전중 동작안되어 프로그램 수정 
두께측정기 4번 프레스 하강 동작 이상으로 인하여 법인에서 확인후 릴레이 교체

6. 명일 작업 예정 인원 : 6명

7. 명일 작업 예정 사항 :
#5 INS 자동런 품질 셋팅
#6 FLD /INS 기본 티칭
설비 Auto run 진행간 문제 발생 프로그램 수정 대응
전해액 감지 센서 프로그램 수정', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SFA SVI 선임 조대연', '라인:- / 공정:SVI; VI / 출처:2024.06.04.zip', '1. 업체, 설비, Line : SFA, SVI, #5, 6

2. 작업 일자 : 05월 30일 (목) 08:00 ~ 17:00

3. 작업 인원 : 8명
(PM 1, 기구 3, 제어 2, 전장 1, SW 1)

4. 작업 사항
   - 5, 6호기 PC Setting
   - 5, 6호기 캐리어 Leak Test
   - 5, 6호기 LMS Dry Run Test
   - 5호기 P&P Unit 정밀 Setting

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 7명
(PM 1, 기구 3, 제어 2, SW 1)

7. 명일 작업 예정 사항
   - 5, 6호기 PC Setting
   - 5, 6호기 LMS Dry Run Test
   - PLC 프로그램 업데이트', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SFA SVI 선임 김영주', '라인:Line2 / 공정:SVI; VI / 출처:2024.06.04.zip', '1. 업체, 설비, Line : SFA, SVI J/C, 3-4Line

2. 작업 일자 : 05월 30일 (목) 08:00 ~ 17:00

3. 작업 인원 : 2명 
(기구 1, 제어 1)

4. 작업 사항
 - 3Line 
 : 흡착 테스트 진행
 : Dry Run 및 부하율 확인

 - 4Line
 : 흡착 테스트 진행
 : Dry Run 및 부하율 확인

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 2명
(기구 1, 제어 1)

7. 명일 작업 예정 사항
 - 3, 4Line
 : Dry Run 진행', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'wonikpne/HARKSUN KIM', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 디가스#5 

2. 작업 일자 : 05월 29일 (목) 08:00 - 19:00

3. 작업 인원 : 6명 (기구 5, 제어 1) 

4. 작업 사항 : 
#5

#6
Cell run 및 물류 확인 작업

5. 작업 중 특이사항 및 Issue : 
#5 
#6 

6. 명일 작업 예정 인원 : 6명 (기구 5, 제어 1) 

7. 명일 작업 예정 사항 : 
#5 
#6 cell run 및 물류 확인 작업
 
8. 사용 셀
금일 사용 : 48
누적 사용 : 216', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'YHT/kyouhaw park/PM', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : YHT INS/FLD #5,6L

2. 작업 일자 : 05월 30일 (목) 08:00 ~ 18:00

3. 작업 인원 : 6명 (기구 4 제어 2)

4. 작업 사항 : 
#5 INS 2lane 자동셀런 품질셋팅
#6 1lane 기본티칭 완료
인스펙션 설비 배출 CV Align 시퀀스 확인 및 디버깅전해액 감지 센서 프로그램 수정
폴딩, 인스펙션 설비 auto run 진행간 프로그램 디버깅

5. 작업 중 특이사항 및 Issue : 
FLD  TAB 얼라인 개선필요 (베이스 PAD 부착)

6. 명일 작업 예정 인원 : 6명

7. 명일 작업 예정 사항 :
#5 INS 자동런 품질 셋팅
#6 FLD /INS 기본 티칭
전해액 감지 센서 프로그램 수정
폴딩, 인스펙션 설비 auto run 진행간 프로그램 디버깅

2024년 5월 31일 금요일', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SFA SVI 선임 조대연', '라인:- / 공정:SVI; VI / 출처:2024.06.04.zip', '1. 업체, 설비, Line : SFA, SVI, #5, 6

2. 작업 일자 : 05월 31일 (금) 08:00 ~ 17:00

3. 작업 인원 : 7명
(PM 1, 기구 3, 제어 2, SW 1)

4. 작업 사항
   - 5, 6호기 PC Setting
   - 5, 6호기 캐리어 Leak Test
   - 5, 6호기 LMS Dry Run Test
   - PLC 프로그램 업데이트

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원

7. 명일 작업 예정 사항', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SFA SVI 선임 김영주', '라인:Line2 / 공정:SVI; VI / 출처:2024.06.04.zip', '1. 업체, 설비, Line : SFA, SVI J/C, 3-4Line

2. 작업 일자 : 05월 31일 (금) 08:00 ~ 17:00

3. 작업 인원 : 2명 
(기구 1, 제어 1)

4. 작업 사항
 - 3Line 
 : 흡착 테스트 진행
 : Dry Run 및 서보 부하율 확인
 : LMS 모터 부하율 확인

 - 4Line
 : 흡착 테스트 진행
 : Dry Run 및 서보 부하율 확인
 : LMS 모터 부하율 확인

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 2명
(기구 1, 제어 1)

7. 명일 작업 예정 사항
 - 3, 4Line
 : Dry Run 진행
 : 흡착 Run 진행', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'wonikpne/HARKSUN KIM', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 디가스#5 

2. 작업 일자 : 05월 31일 (금) 08:00 - 17:30

3. 작업 인원 : 6명 (기구 5, 제어 1) 

4. 작업 사항 : 
#5

#6
Cell run 및 물류 확인 작업
bcr 세팅

5. 작업 중 특이사항 및 Issue : 
#5 pre cutting 진공 이젝터 파기 불량으로 인한 진공 이젝테 교체
#6 pre cutting 진공 이젝터 파기 불량으로 인한 진공 이젝터 교체

6. 명일 작업 예정 인원 : 

7. 명일 작업 예정 사항 : 
#5 
#6 
 
8. 사용 셀
금일 사용 : 38
누적 사용 : 252

2024년 6월 1일 토요일', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SFA SVI 선임 조대연', '라인:- / 공정:SVI; VI / 출처:2024.06.04.zip', '1. 업체, 설비, Line : SFA, SVI, #5, 6

2. 작업 일자 : 06월 03일 (월) 08:00 ~ 17:00

3. 작업 인원 : 6명
(PM 1, 기구 2, 제어 1, SW 2)

4. 작업 사항
   - 5, 6호기 스토리지 PC Setting
   - 5, 6호기 캐리어 Leak Test
   - 5, 6호기 LMS Dry Run Test
   - 5호기 광학계 하드웨어 Setting

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 6명
(PM 1, 기구 2, 제어 1, SW 2)

7. 명일 작업 예정 사항
   - 5, 6호기 LMS Dry Run Test
   - 5호기 광학계 하드웨어 Setting
   - PLC 프로그램 업데이트', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SFA/남상수', '라인:Line2 / 공정:SVI; VI / 출처:2024.06.04.zip', '1. 업체, 설비, Line : SFA, SVI J/C, 3-4Line

2. 작업 일자 : 06월 03일 (월) 08:00 ~ 17:00

3. 작업 인원 : 3명 
(PM1, 기구 1, 제어 1)

4. 작업 사항
 - 3,4Line 
 : LMS Dry Run Test
 : Stage 흡착 Test 진행

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 3명
(PM1, 기구 1, 제어 1)

7. 명일 작업 예정 사항
 - 3,4Line
 : LMS Dry Run Test
 : Stage 흡착 Test 진행', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SFA/남상수', '라인:Line2 / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : SFA, 연결물류-Taping J/C, 3-4Line

2. 작업 일자 : 06월 03일 (월) 08:00 ~ 17:00

3. 작업 인원 : 2명
(기구 2)

4. 작업 사항
 - 3,4Line 
 : 설비 상태 및 조정 Unit 확인
 : Touch 확인

5. 작업 중 특이사항 및 Issue : 없음

6. 명일 작업 예정 인원 : 2명
(기구 2)

7. 명일 작업 예정 사항
 - 3,4Line
 : Unit Parts 교체 및 조정 작업 진행(수동투입단~)', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'YHT/kyouhaw park/PM', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : YHT INS/FLD #5,6L

2. 작업 일자 : 06월 03일 (월) 08:00 ~ 18:00

3. 작업 인원 : 6명 (기구 4 제어 2)

4. 작업 사항 : 
#5 자동셀런 품질셋팅 (완료)
#6 자동셀런 품질셋팅 (25%)
전해액 감지 센서 프로그램 수정
인스펙션 설비 dry run 진행간 프로그램 디버깅
폴딩, 인스펙션 설비 auto run 진행간 프로그램 디버깅

5. 작업 중 특이사항 및 Issue : 

6. 명일 작업 예정 인원 : 6명

7. 명일 작업 예정 사항 :
#6 자동셀런 품질셋팅 
프린터 Customer Code 추가건 프로그램 수정
폴딩, 인스펙션 설비 auto run 진행간 프로그램 디버깅
#5 DRY-RUN', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'wonikpne/HARKSUN KIM', '라인:- / 공정:- / 출처:2024.06.04.zip', '1. 업체, 설비, Line : 디가스#5 

2. 작업 일자 : 06월 03일 (월) 08:00 - 19:45

3. 작업 인원 : 6명 (기구 5, 제어 1) 

4. 작업 사항 : 
#5 
Cell run 및 물류 확인 작업
bcr 세팅

#6
Cell run 및 물류 확인 작업
bcr 세팅

5. 작업 중 특이사항 및 Issue : 
#5 pre cutting 진공 이젝터 파기 불량으로 인한 진공 이젝테 교체
#6

6. 명일 작업 예정 인원 : 

7. 명일 작업 예정 사항 : 
#5 Degas SAT
#6 Degas SAT
 
8. 사용 셀
금일 사용 : 
누적 사용 : 252

2024년 6월 4일 화요일', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'Samkoo/Junny/KTL', '라인:Line1; Line3 / 공정:SVI; VI / 출처:2024.06.04.zip', '2024.04.24 야간 특이사항

■ 주재원 요청사항
1. 홍순호 Eng 요청으로 Line 1,2 2월 불량 마감 모니터링 진행 (Eng,SPV 협업후 진행)
> 금일 E3F Lot 진행완료

■ Line 1
□ 기타
1. Ca Tab Welding부 Crack 관련 SVI Image 확보진행
-> Daniel Enginner측 Image 확보 Cell List 공유후 SVI Vision PC 바탕화면 해당 Cell Image 확보완료
> 확보대상 152Cell중 45Cell Image 누락상태확인. Daniel Enginner측 공유진행완료

□ Folding
1. 야간 근무간 Folding Lane#1 비가동진행
> 사유 : 모듈 작업자 지원으로 인한 작업인원 부족 (18:40~06:00)

2. 야간조 Folding면 Open Cell 14Cell 발생
- R123 Type E42 Lot : 2Cell, E43 Lot : 8Cell
- C118 Type E46 Lot : 4Cell
- 원인 : 전극 얼라인 불량으로 발생
- 조치 :
1) 재화성 타입 비가동전환 및 설비청소(04/25 00:10~00:40)
2) Eng 조립동 피드백완료

3. Line1 Folding 정지후 Line3 EOL Line 설비청소 진행
> 사유 : 현대 고객사 내방예정 (05:00~06:00)', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SK C&C/HYOSUNG/MES', '라인:- / 공정:- / 출처:2024.06.04.zip', '배포 완료하였습니다. 확인 후 특이사항 발생 시 공유 부탁드립니다.', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SK C&C/HYOSUNG/MES', '라인:- / 공정:- / 출처:2024.06.04.zip', '배포 완료하였습니다. 특이사항 발생 시 공유 부탁드립니다.', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'C/Jin/Supervisor', '라인:- / 공정:- / 출처:2024.06.04.zip', '네.. 특이사항은 1,2,5,6 라인 모두 적색이고 3,4라인은 녹색으로 통신 이상 없어보입니다

다시 확인해보겠습니다', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SK C&C/Miyoung/MES', '라인:- / 공정:- / 출처:2024.06.04.zip', '엔지니어님, 안녕하세요
지난 주 금요일 이슈는 특정 시간대에 매일 진행하는 서버 백업으로 인한 이슈로 확인되었습니다
현재 백업 스케줄을 정지했고 주말동안 특이사항 없음을 확인했습니다
향후 정기 백업을 어떻게 진행할지는 다시 검토할 예정입니다.
참고 부탁드립니다', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'Samkoo/Sharon/KTL', '라인:- / 공정:- / 출처:2024.06.04.zip', '@SK C&C/도숙지/MES
네 알겠습니다. 계속해서 설비쪽 확인은 하고 있습니다만 별다른 특이사항은 보이지 않는 상황입니다.', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'Samkoo / John / KTL', '라인:Line2 / 공정:VI / 출처:2024.06.04.zip', '@SKBA.MES.AE
Line 2
Tray ID : A18102, A37590 / A12757, A36134
MES UI : View Cell In Tray

위 UI에서 해당 Tray Separate 진행시 "startindex cannot be larger than length of string Parameter name : startindex" 생성 되며 진행이 되지않는 현상이 발생되어 문의드립니다.
운영자님께 전달해주실수 있으실까요? 지급건은 아닙니다.

특이사항으로 A37590, A36134 Tray 조회시 MES Data상으로는 1단 Tray로 조회되며.
A18102, A12757로 조회시에만 2단 Tray로 조회됩니다.', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SK C&C/Miyoung/MES', '라인:- / 공정:- / 출처:2024.06.04.zip', '배포 후 모니터링 상황 말씀드리면
현재까지 
일반적인 케이스로는 5초 ~ 8초 사이로 특이사항 없이 잘 처리되고 있고
예외적으로 중복 Tray 보고를 올릴 경우 최대 15초까지 소요되는 것 확인했습니다
현재까지도 정상적으로 8초 내로 안정적으로 잘 처리되고 있음을 확인했습니다

금일 배출된 Tray들의 보정 용량식이 적용된 결과값에 대한 검증은 별도로 확인 부탁드립니다', 1);
insert into search_index (source_type, keyword, value, sample_message, count) values ('handover', 'SK C&C/HYOSUNG/MES', '라인:- / 공정:- / 출처:2024.06.04.zip', '배포 완료하였습니다. 

UI 프로그램 재실행 후 특이사항 발생 시 공유 부탁드리겠습니다.', 1);
