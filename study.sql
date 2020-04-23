--------------------------------------------------------
--  파일이 생성됨 - 목요일-4월-23-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "MEMBER" 
   (	"MEM_ID" VARCHAR2(15), 
	"MEM_PASS" VARCHAR2(15), 
	"MEM_NAME" VARCHAR2(20), 
	"MEM_REGNO1" CHAR(6), 
	"MEM_REGNO2" CHAR(7), 
	"MEM_BIR" DATE, 
	"MEM_ZIP" CHAR(7), 
	"MEM_ADD1" VARCHAR2(100), 
	"MEM_ADD2" VARCHAR2(80), 
	"MEM_HP" VARCHAR2(15), 
	"MEM_MAIL" VARCHAR2(40), 
	"MEM_JOB" VARCHAR2(40), 
	"MEM_LIKE" VARCHAR2(40), 
	"MEM_MILEAGE" NUMBER(10,0), 
	"MEM_DEL_YN" CHAR(1) DEFAULT 'N'
   ) 

   COMMENT ON COLUMN "MEMBER"."MEM_ID" IS '회원ID'
   COMMENT ON COLUMN "MEMBER"."MEM_PASS" IS '비밀번호'
   COMMENT ON COLUMN "MEMBER"."MEM_NAME" IS '성명'
   COMMENT ON COLUMN "MEMBER"."MEM_REGNO1" IS '주민등록번호앞6자리'
   COMMENT ON COLUMN "MEMBER"."MEM_REGNO2" IS '주민등록번호뒤7자리'
   COMMENT ON COLUMN "MEMBER"."MEM_BIR" IS '생일'
   COMMENT ON COLUMN "MEMBER"."MEM_ZIP" IS '우편번호'
   COMMENT ON COLUMN "MEMBER"."MEM_ADD1" IS '주소1'
   COMMENT ON COLUMN "MEMBER"."MEM_ADD2" IS '주소2'
   COMMENT ON COLUMN "MEMBER"."MEM_HP" IS '이동전화'
   COMMENT ON COLUMN "MEMBER"."MEM_MAIL" IS 'E-mail주소'
   COMMENT ON COLUMN "MEMBER"."MEM_JOB" IS '직업'
   COMMENT ON COLUMN "MEMBER"."MEM_LIKE" IS '취미'
   COMMENT ON COLUMN "MEMBER"."MEM_MILEAGE" IS '마일리지'
   COMMENT ON COLUMN "MEMBER"."MEM_DEL_YN" IS '삭제여부'
   COMMENT ON TABLE "MEMBER"  IS '회원테이블'
--------------------------------------------------------
--  DDL for Table FREE_BOARD
--------------------------------------------------------

  CREATE TABLE "FREE_BOARD" 
   (	"BO_NUM" NUMBER, 
	"BO_TITLE" VARCHAR2(250), 
	"BO_CATEGORY" CHAR(4), 
	"BO_WRITER" VARCHAR2(100), 
	"BO_PASS" VARCHAR2(60), 
	"BO_CONTENT" CLOB, 
	"BO_IP" VARCHAR2(30), 
	"BO_HIT" NUMBER, 
	"BO_REG_DATE" DATE DEFAULT sysdate, 
	"BO_MOD_DATE" DATE, 
	"BO_DEL_YN" CHAR(1) DEFAULT 'N'
   ) 

   COMMENT ON COLUMN "FREE_BOARD"."BO_NUM" IS '글번호'
   COMMENT ON COLUMN "FREE_BOARD"."BO_TITLE" IS '글제목'
   COMMENT ON COLUMN "FREE_BOARD"."BO_CATEGORY" IS '글분류'
   COMMENT ON TABLE "FREE_BOARD"  IS '자유게시판'
--------------------------------------------------------
--  DDL for Table REPLY
--------------------------------------------------------

  CREATE TABLE "REPLY" 
   (	"RE_NO" NUMBER, 
	"RE_CATEGORY" VARCHAR2(30), 
	"RE_PARENT_NO" NUMBER, 
	"RE_MEM_ID" VARCHAR2(30), 
	"RE_CONTENT" VARCHAR2(4000), 
	"RE_IP" VARCHAR2(30), 
	"RE_REG_DATE" DATE DEFAULT sysdate, 
	"RE_MOD_DATE" DATE
   ) 

   COMMENT ON COLUMN "REPLY"."RE_NO" IS '댓글번호'
   COMMENT ON COLUMN "REPLY"."RE_CATEGORY" IS '분류(FREE, BOARD,PDS,..)'
   COMMENT ON COLUMN "REPLY"."RE_PARENT_NO" IS '부모 번호'
   COMMENT ON COLUMN "REPLY"."RE_MEM_ID" IS '작성자ID'
   COMMENT ON COLUMN "REPLY"."RE_CONTENT" IS '내용'
   COMMENT ON COLUMN "REPLY"."RE_IP" IS 'ip'
   COMMENT ON COLUMN "REPLY"."RE_REG_DATE" IS '등록일'
   COMMENT ON COLUMN "REPLY"."RE_MOD_DATE" IS '수정일'
   COMMENT ON TABLE "REPLY"  IS '댓글정보 테이블'
--------------------------------------------------------
--  DDL for Table COMM_CODE
--------------------------------------------------------

  CREATE TABLE "COMM_CODE" 
   (	"COMM_CD" CHAR(4), 
	"COMM_NM" VARCHAR2(100), 
	"COMM_PARENT" CHAR(4), 
	"COMM_ORD" NUMBER
   )
--------------------------------------------------------
--  DDL for Index MEMBER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEMBER_PK" ON "MEMBER" ("MEM_ID")
--------------------------------------------------------
--  DDL for Index PK_FREE_BOARD
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_FREE_BOARD" ON "FREE_BOARD" ("BO_NUM")
--------------------------------------------------------
--  DDL for Index SYS_C007335
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007335" ON "REPLY" ("RE_NO")
--------------------------------------------------------
--  DDL for Index PK_COMM_CODE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_COMM_CODE" ON "COMM_CODE" ("COMM_CD")
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MEMBER" ADD CONSTRAINT "MEMBER_PK" PRIMARY KEY ("MEM_ID") ENABLE
  ALTER TABLE "MEMBER" MODIFY ("MEM_BIR" NOT NULL ENABLE)
  ALTER TABLE "MEMBER" MODIFY ("MEM_NAME" NOT NULL ENABLE)
  ALTER TABLE "MEMBER" MODIFY ("MEM_PASS" NOT NULL ENABLE)
  ALTER TABLE "MEMBER" MODIFY ("MEM_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table FREE_BOARD
--------------------------------------------------------

  ALTER TABLE "FREE_BOARD" ADD CONSTRAINT "PK_FREE_BOARD" PRIMARY KEY ("BO_NUM") ENABLE
  ALTER TABLE "FREE_BOARD" MODIFY ("BO_PASS" NOT NULL ENABLE)
  ALTER TABLE "FREE_BOARD" MODIFY ("BO_WRITER" NOT NULL ENABLE)
  ALTER TABLE "FREE_BOARD" MODIFY ("BO_TITLE" NOT NULL ENABLE)
  ALTER TABLE "FREE_BOARD" MODIFY ("BO_NUM" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPLY
--------------------------------------------------------

  ALTER TABLE "REPLY" ADD PRIMARY KEY ("RE_NO") ENABLE
  ALTER TABLE "REPLY" MODIFY ("RE_MEM_ID" NOT NULL ENABLE)
  ALTER TABLE "REPLY" MODIFY ("RE_PARENT_NO" NOT NULL ENABLE)
  ALTER TABLE "REPLY" MODIFY ("RE_CATEGORY" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table COMM_CODE
--------------------------------------------------------

  ALTER TABLE "COMM_CODE" ADD CONSTRAINT "PK_COMM_CODE" PRIMARY KEY ("COMM_CD") ENABLE
  ALTER TABLE "COMM_CODE" MODIFY ("COMM_NM" NOT NULL ENABLE)
  ALTER TABLE "COMM_CODE" MODIFY ("COMM_CD" NOT NULL ENABLE)
