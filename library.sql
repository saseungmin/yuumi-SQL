--------------------------------------------------------
--  파일이 생성됨 - 목요일-4월-23-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BOOK_DETAIL
--------------------------------------------------------

  CREATE TABLE "BOOK_DETAIL" 
   (	"BOOK_ISBN" VARCHAR2(300), 
	"BOOK_NAME" VARCHAR2(1000), 
	"BOOK_AUTHORS" VARCHAR2(1000), 
	"BOOK_PUBLISHER" VARCHAR2(1000), 
	"BOOK_PUBLICATION_YEAR" VARCHAR2(200), 
	"BOOK_IMAGE_URL" VARCHAR2(500), 
	"BOOK_CLASS_NO" VARCHAR2(100), 
	"BOOK_COUNT" VARCHAR2(100), 
	"BOOK_LOAN_CNT" VARCHAR2(100) DEFAULT NULL, 
	"BOOK_REG_DATE" VARCHAR2(100)
   )
--------------------------------------------------------
--  Constraints for Table BOOK_DETAIL
--------------------------------------------------------

  ALTER TABLE "BOOK_DETAIL" MODIFY ("BOOK_ISBN" NOT NULL ENABLE)


--------------------------------------------------------
--  파일이 생성됨 - 목요일-4월-23-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table LIBRARY
--------------------------------------------------------

  CREATE TABLE "LIBRARY" 
   (	"LIB_CODE" NUMBER, 
	"LIB_NAME" VARCHAR2(100), 
	"LIB_ADD" VARCHAR2(200), 
	"LIB_TEL" VARCHAR2(80), 
	"LIB_LATITUDE" NUMBER, 
	"LIB_LONGITUDE" NUMBER, 
	"LIB_URL" VARCHAR2(500), 
	"LIB_TIME" VARCHAR2(500)
   )
REM INSERTING into LIBRARY
SET DEFINE OFF;
Insert into LIBRARY (LIB_CODE,LIB_NAME,LIB_ADD,LIB_TEL,LIB_LATITUDE,LIB_LONGITUDE,LIB_URL,LIB_TIME) values (125010,'가수원도서관','대전광역시 서구 가수원로 91-11','042-288-4770',36.3019,127.348812,'http://www.seogu.go.kr/learning/gasuwonlib/index.do','(하계) 07:00~22:00, (동계) 08:00~22:00');
Insert into LIBRARY (LIB_CODE,LIB_NAME,LIB_ADD,LIB_TEL,LIB_LATITUDE,LIB_LONGITUDE,LIB_URL,LIB_TIME) values (125012,'가양도서관','대전광역시 동구 우암로277번길 72','042-259-7081',36.3489771,127.4451507,'https://www.donggu.go.kr/dg/lib','평일 08:00 ~ 22:00, 주말 08:00 ~ 18:00');
Insert into LIBRARY (LIB_CODE,LIB_NAME,LIB_ADD,LIB_TEL,LIB_LATITUDE,LIB_LONGITUDE,LIB_URL,LIB_TIME) values (125008,'가오도서관','대전광역시 동구 동구청로 147','042-259-7051',36.3124314,127.4553237,'https://www.donggu.go.kr/dg/lib','08:00~22:00');
Insert into LIBRARY (LIB_CODE,LIB_NAME,LIB_ADD,LIB_TEL,LIB_LATITUDE,LIB_LONGITUDE,LIB_URL,LIB_TIME) values (125004,'갈마도서관','대전광역시 서구 신갈마로127번길 138','042-288-4740',36.3409156,127.3656805,'http://www.seogu.go.kr/learning/galmalib/index.do','동절기:08:00~22:00 하절기:07:00~22:00');
Insert into LIBRARY (LIB_CODE,LIB_NAME,LIB_ADD,LIB_TEL,LIB_LATITUDE,LIB_LONGITUDE,LIB_URL,LIB_TIME) values (130023,'관평도서관','대전광역시 유성구 테크노4로 131','042-716-0350',36.4262899,127.3897975,'http://www.gplib.or.kr/','(자료실)오전9시~오후10시, (열람실)오전8시~오후10시(11~2월)  오전7시~오후10시(3~10월)');
Insert into LIBRARY (LIB_CODE,LIB_NAME,LIB_ADD,LIB_TEL,LIB_LATITUDE,LIB_LONGITUDE,LIB_URL,LIB_TIME) values (130022,'구암도서관','대전광역시 유성구 유성대로626번길 57','042-601-6630',36.3492563,127.3300408,'http://lib.yuseong.go.kr/','열람실 : 월~토 8:00~22:00 / 종합자료실 : 화~금 9:00~22:00, 월, 토 9:00~18:00 / 어린이실 : 월~토 9:00~18:00');
Insert into LIBRARY (LIB_CODE,LIB_NAME,LIB_ADD,LIB_TEL,LIB_LATITUDE,LIB_LONGITUDE,LIB_URL,LIB_TIME) values (125013,'구즉도서관','대전광역시 유성구 와룡로37번길 20','042-601-6510',36.4294702,127.3805883,'http://lib.yuseong.go.kr/','동절:오전8시~오후10시/하절:오전7시~오후10:00');
Insert into LIBRARY (LIB_CODE,LIB_NAME,LIB_ADD,LIB_TEL,LIB_LATITUDE,LIB_LONGITUDE,LIB_URL,LIB_TIME) values (130012,'노은도서관','대전광역시 유성구 노은동로234번길 34','042-601-6610',36.381557,127.3206247,'http://lib.yuseong.go.kr/','화요일-일요일');
Insert into LIBRARY (LIB_CODE,LIB_NAME,LIB_ADD,LIB_TEL,LIB_LATITUDE,LIB_LONGITUDE,LIB_URL,LIB_TIME) values (130007,'대전 서구 어린이도서관','대전광역시 서구 정림동로 25','042-288-4830',36.3050299,127.3684062,'http://www.seogu.go.kr/learning/childlib/index.do','10:00~19:00');
Insert into LIBRARY (LIB_CODE,LIB_NAME,LIB_ADD,LIB_TEL,LIB_LATITUDE,LIB_LONGITUDE,LIB_URL,LIB_TIME) values (125002,'대전학생교육문화원','대전광역시 중구 동서대로 1360','042-229-1470',36.3294343,127.4102572,'http://dsecc.djsch.kr','오전 7시(동절기 오전 8시)');
Insert into LIBRARY (LIB_CODE,LIB_NAME,LIB_ADD,LIB_TEL,LIB_LATITUDE,LIB_LONGITUDE,LIB_URL,LIB_TIME) values (130006,'둔산도서관','대전광역시 서구 청사로 263','042-288-4800',36.3600736,127.3931671,'http://www.seogu.go.kr/learning/dunsanlib/index.do','동절기 08:00~22:00, 하절기 07:00~22:00');
Insert into LIBRARY (LIB_CODE,LIB_NAME,LIB_ADD,LIB_TEL,LIB_LATITUDE,LIB_LONGITUDE,LIB_URL,LIB_TIME) values (143064,'무지개도서관','대전광역시 동구 동부로 56-22','042-259-7041',36.3204616,127.4600999,'https://www.donggu.go.kr/dg/lib','09:00-18:00');
Insert into LIBRARY (LIB_CODE,LIB_NAME,LIB_ADD,LIB_TEL,LIB_LATITUDE,LIB_LONGITUDE,LIB_URL,LIB_TIME) values (125001,'산성도서관','대전광역시 중구 산서로62번길 53','042-220-0700',36.2952803,127.3855744,'http://sslib.djsch.kr/sanseong/main.do','일반열람실 - 08:00~22:00, 어린이/유아/종합/디지털자료실 - 09:00~18:00');
Insert into LIBRARY (LIB_CODE,LIB_NAME,LIB_ADD,LIB_TEL,LIB_LATITUDE,LIB_LONGITUDE,LIB_URL,LIB_TIME) values (130003,'성남도서관','대전광역시 동구 성남로 38-5','042-259-7091',36.3423154,127.429825,'https://www.donggu.go.kr/dg/lib','09:00 ~ 18:00');
Insert into LIBRARY (LIB_CODE,LIB_NAME,LIB_ADD,LIB_TEL,LIB_LATITUDE,LIB_LONGITUDE,LIB_URL,LIB_TIME) values (130013,'송촌도서관','대전광역시 대덕구 송촌로 59','042-608-5513',36.3601292,127.4401556,'https://lib.daedeok.go.kr/','평일 08:00~22:00 주말 08:00~21:00(어린이실 09:00~18:00)');
Insert into LIBRARY (LIB_CODE,LIB_NAME,LIB_ADD,LIB_TEL,LIB_LATITUDE,LIB_LONGITUDE,LIB_URL,LIB_TIME) values (125011,'신탄진도서관','대전광역시 대덕구 신탄진동로 64','042-608-5511',36.4464999,127.4371944,'https://lib.daedeok.go.kr/','-');
Insert into LIBRARY (LIB_CODE,LIB_NAME,LIB_ADD,LIB_TEL,LIB_LATITUDE,LIB_LONGITUDE,LIB_URL,LIB_TIME) values (125005,'안산도서관','대전광역시 대덕구 계족로663번길 25','042-608-5512',36.368296,127.4271497,'https://lib.daedeok.go.kr/','-');
Insert into LIBRARY (LIB_CODE,LIB_NAME,LIB_ADD,LIB_TEL,LIB_LATITUDE,LIB_LONGITUDE,LIB_URL,LIB_TIME) values (125006,'용운도서관','대전광역시 동구 새울로68번길 23-23','042-259-7021',36.3257533,127.4636938,'https://www.donggu.go.kr/dg/lib','08:00-22:00');
Insert into LIBRARY (LIB_CODE,LIB_NAME,LIB_ADD,LIB_TEL,LIB_LATITUDE,LIB_LONGITUDE,LIB_URL,LIB_TIME) values (130026,'원신흥도서관','대전광역시 유성구 원신흥남로 59','042-601-6970',36.3440483,127.3359618,'http://lib.yuseong.go.kr','종합/어린이자료실 09:00-18:00 (종합자료실은 화-금 22시까지 연장) / 열람실 08:00-22:00(동절기) / 07:00-22:00(하절기)');
Insert into LIBRARY (LIB_CODE,LIB_NAME,LIB_ADD,LIB_TEL,LIB_LATITUDE,LIB_LONGITUDE,LIB_URL,LIB_TIME) values (125007,'유성도서관','대전광역시 유성구 대덕대로 507-38','042-601-6530',36.3784791,127.375891,'http://lib.yuseong.go.kr/','-');
Insert into LIBRARY (LIB_CODE,LIB_NAME,LIB_ADD,LIB_TEL,LIB_LATITUDE,LIB_LONGITUDE,LIB_URL,LIB_TIME) values (12500701,'유성도서관 엑스포분관','대전광역시 유성구 엑스포로 448','042-601-6583',36.3999653,127.4079098,'http://lib.yuseong.go.kr/','-');
Insert into LIBRARY (LIB_CODE,LIB_NAME,LIB_ADD,LIB_TEL,LIB_LATITUDE,LIB_LONGITUDE,LIB_URL,LIB_TIME) values (130008,'자양도서관','대전광역시 동구 백룡로 16','042-259-7422',36.3355031,127.4485873,'http://lib.donggu.go.kr/html/library/','09:00~18:00');
Insert into LIBRARY (LIB_CODE,LIB_NAME,LIB_ADD,LIB_TEL,LIB_LATITUDE,LIB_LONGITUDE,LIB_URL,LIB_TIME) values (130010,'진잠도서관','대전광역시 유성구 진잠로160번길 19','042-601-6590',36.3031044,127.319778,'http://lib.yuseong.go.kr/','동절기08:00-22:00/하절기07:00-22:00');
Insert into LIBRARY (LIB_CODE,LIB_NAME,LIB_ADD,LIB_TEL,LIB_LATITUDE,LIB_LONGITUDE,LIB_URL,LIB_TIME) values (130004,'판암도서관','대전광역시 동구 옥천로180번길 20','042-259-7071',36.3164497,127.4607732,'https://www.donggu.go.kr/dg/lib','09:00 ~ 18:00');
Insert into LIBRARY (LIB_CODE,LIB_NAME,LIB_ADD,LIB_TEL,LIB_LATITUDE,LIB_LONGITUDE,LIB_URL,LIB_TIME) values (125003,'한밭도서관','대전광역시 중구 서문로 10','042-270-7420',36.309938,127.4096305,'https://www.daejeon.go.kr/hanbatlibrary','06:00~23:00(하절기), 07:00~23:00(동절기)');
Insert into LIBRARY (LIB_CODE,LIB_NAME,LIB_ADD,LIB_TEL,LIB_LATITUDE,LIB_LONGITUDE,LIB_URL,LIB_TIME) values (130009,'홍도도서관','대전광역시 동구 동산초교로34번길 56','042-259-7571',36.3490198,127.4257139,'http://lib.donggu.go.kr/html/library/','09:00 ~ 18:00, 09:00~13:00(토)');
--------------------------------------------------------
--  Constraints for Table LIBRARY
--------------------------------------------------------

  ALTER TABLE "LIBRARY" MODIFY ("LIB_NAME" NOT NULL ENABLE)
  ALTER TABLE "LIBRARY" MODIFY ("LIB_CODE" NOT NULL ENABLE)
