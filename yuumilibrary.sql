--------------------------------------------------------
--  파일이 생성됨 - 목요일-4월-23-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ATTACH
--------------------------------------------------------

  CREATE TABLE "ATTACH" 
   (	"ATCH_NO" NUMBER, 
	"ATCH_PARENT_NO" NUMBER, 
	"ATCH_CATEGORY" VARCHAR2(30), 
	"ATCH_FILE_NAME" VARCHAR2(100), 
	"ATCH_ORIGINAL_NAME" VARCHAR2(200), 
	"ATCH_FILE_SIZE" NUMBER DEFAULT 0, 
	"ATCH_FANCY_SIZE" VARCHAR2(10), 
	"ATCH_CONTENT_TYPE" VARCHAR2(100), 
	"ATCH_PATH" VARCHAR2(100), 
	"ATCH_DOWN_CNT" NUMBER(10,0) DEFAULT 0, 
	"ATCH_DEL_YN" CHAR(1) DEFAULT 'N', 
	"ATCH_REG_DATE" DATE DEFAULT sysdate, 
	"ATCH_PARENT_CATEGORY" NUMBER
   ) 

   COMMENT ON COLUMN "ATTACH"."ATCH_NO" IS '첨부파일 번호(PK)'
   COMMENT ON COLUMN "ATTACH"."ATCH_PARENT_NO" IS '부모글의 PK '
   COMMENT ON COLUMN "ATTACH"."ATCH_CATEGORY" IS '상위글 분류(BOARD, FREE, QNA, PDS 등)'
   COMMENT ON COLUMN "ATTACH"."ATCH_FILE_NAME" IS '실제 저장된 파일명'
   COMMENT ON COLUMN "ATTACH"."ATCH_ORIGINAL_NAME" IS '사용자가 올린 원래 파일명'
   COMMENT ON COLUMN "ATTACH"."ATCH_FILE_SIZE" IS '파일 사이즈'
   COMMENT ON COLUMN "ATTACH"."ATCH_FANCY_SIZE" IS '팬시 사이즈'
   COMMENT ON COLUMN "ATTACH"."ATCH_CONTENT_TYPE" IS '컨텐츠 타입'
   COMMENT ON COLUMN "ATTACH"."ATCH_PATH" IS '저장 경로(board/2019) '
   COMMENT ON COLUMN "ATTACH"."ATCH_DOWN_CNT" IS '다운로드 횟수'
   COMMENT ON COLUMN "ATTACH"."ATCH_DEL_YN" IS '삭제여부(스케쥴에 의해서 파일삭제처리)'
   COMMENT ON COLUMN "ATTACH"."ATCH_REG_DATE" IS '등록일'
   COMMENT ON COLUMN "ATTACH"."ATCH_PARENT_CATEGORY" IS '부모글의 종류
'
   COMMENT ON TABLE "ATTACH"  IS '첨부파일 테이블'
--------------------------------------------------------
--  DDL for Table BOOK_CLUB
--------------------------------------------------------

  CREATE TABLE "BOOK_CLUB" 
   (	"BK_NUM" NUMBER, 
	"BK_LOCATION" VARCHAR2(300), 
	"BK_AGE" VARCHAR2(100), 
	"BK_LIMIT" NUMBER, 
	"BK_TIME" VARCHAR2(100), 
	"BK_MEM_ID" VARCHAR2(300), 
	"BK_THEME" VARCHAR2(800), 
	"BK_IMAGEURL" VARCHAR2(800), 
	"BK_CLUB_NAME" VARCHAR2(100), 
	"BK_DEL_YN" CHAR(1)
   ) 

   COMMENT ON COLUMN "BOOK_CLUB"."BK_NUM" IS '클럽번호'
   COMMENT ON COLUMN "BOOK_CLUB"."BK_LOCATION" IS '지역'
   COMMENT ON COLUMN "BOOK_CLUB"."BK_AGE" IS '연령'
   COMMENT ON COLUMN "BOOK_CLUB"."BK_LIMIT" IS '회원수'
   COMMENT ON COLUMN "BOOK_CLUB"."BK_TIME" IS '클럽시간'
   COMMENT ON COLUMN "BOOK_CLUB"."BK_MEM_ID" IS '클럽회장아이디'
   COMMENT ON COLUMN "BOOK_CLUB"."BK_THEME" IS '카테고리'
   COMMENT ON COLUMN "BOOK_CLUB"."BK_IMAGEURL" IS '이미지'
   COMMENT ON COLUMN "BOOK_CLUB"."BK_CLUB_NAME" IS '클럽 명'
   COMMENT ON COLUMN "BOOK_CLUB"."BK_DEL_YN" IS '클럽삭제여부'
--------------------------------------------------------
--  DDL for Table CLUB_BOARD
--------------------------------------------------------

  CREATE TABLE "CLUB_BOARD" 
   (	"CB_BO_MEM_ID" VARCHAR2(50), 
	"CB_BO_WRITER" VARCHAR2(50), 
	"CB_BO_REG_DATE" VARCHAR2(100), 
	"CB_BO_MOD_DATE" VARCHAR2(100), 
	"CB_BO_CONTENT" CLOB, 
	"CB_BO_NUM" NUMBER, 
	"CB_BO_TITLE" VARCHAR2(800), 
	"CB_BO_CLUB_NUM" NUMBER, 
	"CB_BO_HIT" NUMBER, 
	"CB_BO_NOTICE" NUMBER
   )
--------------------------------------------------------
--  DDL for Table CLUB_CHAT
--------------------------------------------------------

  CREATE TABLE "CLUB_CHAT" 
   (	"CLUB_USER_ID" VARCHAR2(500), 
	"CLUB_MESSAGE_CONTENT" CLOB, 
	"CLUB_MESSAGE_SENDTIME" DATE, 
	"CLUB_ROOM_NUM" NUMBER, 
	"CLUB_ROOM_NAME" VARCHAR2(1000)
   )
--------------------------------------------------------
--  DDL for Table CLUB_MEMBERLIST
--------------------------------------------------------

  CREATE TABLE "CLUB_MEMBERLIST" 
   (	"CM_NUM" NUMBER, 
	"CM_CLUB_NAME" VARCHAR2(128), 
	"CM_MEM_ID" VARCHAR2(128), 
	"CM_CONFIRM_YN" CHAR(1) DEFAULT 'N'
   )
--------------------------------------------------------
--  DDL for Table COMM_CODE
--------------------------------------------------------

  CREATE TABLE "COMM_CODE" 
   (	"COMM_CD" VARCHAR2(80), 
	"COMM_NM" VARCHAR2(100), 
	"COMM_PARENT" CHAR(4)
   )
--------------------------------------------------------
--  DDL for Table FREE_BOARD
--------------------------------------------------------

  CREATE TABLE "FREE_BOARD" 
   (	"BO_NUM" NUMBER, 
	"BO_TITLE" VARCHAR2(300), 
	"BO_CONTENT" CLOB, 
	"BO_HIT" NUMBER, 
	"BO_REG_DATE" VARCHAR2(300), 
	"BO_MOD_DATE" VARCHAR2(300), 
	"BO_DEL_YN" CHAR(1), 
	"BO_MEM_ID" VARCHAR2(30), 
	"BO_CATEGORY" VARCHAR2(80), 
	"BO_LIKE" NUMBER, 
	"BO_NOTICE" NUMBER
   )
--------------------------------------------------------
--  DDL for Table LOAN_TABLE
--------------------------------------------------------

  CREATE TABLE "LOAN_TABLE" 
   (	"LOA_LOAN_DATE" VARCHAR2(300), 
	"LOA_RETURN_DATE" VARCHAR2(300), 
	"LOA_MEM_ID" VARCHAR2(30), 
	"LOA_ISBN" VARCHAR2(20), 
	"LOA_RETURN_YN" VARCHAR2(20) DEFAULT 'N', 
	"LOA_BOOK_NAME" VARCHAR2(200), 
	"LOA_BOOK_AUTHORS" VARCHAR2(50)
   ) 

   COMMENT ON COLUMN "LOAN_TABLE"."LOA_LOAN_DATE" IS '대출일'
   COMMENT ON COLUMN "LOAN_TABLE"."LOA_RETURN_DATE" IS '반납일'
   COMMENT ON COLUMN "LOAN_TABLE"."LOA_MEM_ID" IS '회원아이디'
   COMMENT ON COLUMN "LOAN_TABLE"."LOA_ISBN" IS '책고유번호'
   COMMENT ON COLUMN "LOAN_TABLE"."LOA_RETURN_YN" IS '반납여부'
   COMMENT ON COLUMN "LOAN_TABLE"."LOA_BOOK_NAME" IS '도서명'
   COMMENT ON COLUMN "LOAN_TABLE"."LOA_BOOK_AUTHORS" IS '작가명'
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "MEMBER" 
   (	"MEM_ID" VARCHAR2(30), 
	"MEM_NAME" VARCHAR2(60), 
	"MEM_PASS" CLOB, 
	"MEM_SALT" CLOB, 
	"MEM_ZIP" VARCHAR2(80), 
	"MEM_ADD1" VARCHAR2(80), 
	"MEM_ADD2" VARCHAR2(80), 
	"MEM_BIR" VARCHAR2(80), 
	"MEM_MAIL" VARCHAR2(80), 
	"MEM_MAIL_YN" VARCHAR2(2), 
	"MEM_HP" VARCHAR2(80), 
	"MEM_HP_YN" VARCHAR2(2), 
	"MEM_RANK" VARCHAR2(80), 
	"MEM_PREF" VARCHAR2(80), 
	"MEM_DEL_YN" CHAR(1) DEFAULT 'N', 
	"MEM_IMG" VARCHAR2(2000)
   )
--------------------------------------------------------
--  DDL for Table PWKEY
--------------------------------------------------------

  CREATE TABLE "PWKEY" 
   (	"MEM_ID" VARCHAR2(300), 
	"MEM_PRIVATEKEY" CLOB
   )
--------------------------------------------------------
--  DDL for Table QNA_BOARD
--------------------------------------------------------

  CREATE TABLE "QNA_BOARD" 
   (	"QB_NUM" NUMBER, 
	"QB_TITLE" VARCHAR2(2000), 
	"QB_WRITER" VARCHAR2(2000), 
	"QB_CONTENT" CLOB, 
	"QB_HIT" NUMBER, 
	"QB_REG_DATE" VARCHAR2(300), 
	"QB_MOD_DATE" VARCHAR2(300), 
	"QB_DEL_YN" CHAR(1), 
	"QB_MEM_ID" VARCHAR2(30)
   )
--------------------------------------------------------
--  DDL for Table REPLY
--------------------------------------------------------

  CREATE TABLE "REPLY" 
   (	"RE_NUM" NUMBER, 
	"RE_BOARD_NUM" NUMBER, 
	"RE_CATEGORY" VARCHAR2(80), 
	"RE_GROUP_NUM" NUMBER, 
	"RE_DEPTH" NUMBER, 
	"RE_ORDER" NUMBER, 
	"RE_MEM_ID" VARCHAR2(100), 
	"RE_WRITER" VARCHAR2(100), 
	"RE_REG_DATE" VARCHAR2(80), 
	"RE_MOD_DATE" VARCHAR2(80), 
	"RE_CONTENT" CLOB, 
	"RE_DEL_YN" VARCHAR2(20) DEFAULT 'N', 
	"RE_IMG" VARCHAR2(2000)
   ) 

   COMMENT ON COLUMN "REPLY"."RE_NUM" IS '답글번호'
   COMMENT ON COLUMN "REPLY"."RE_BOARD_NUM" IS '게시물번호'
   COMMENT ON COLUMN "REPLY"."RE_CATEGORY" IS '게시글카테고'
   COMMENT ON COLUMN "REPLY"."RE_GROUP_NUM" IS '그룹번호'
   COMMENT ON COLUMN "REPLY"."RE_DEPTH" IS '댓글깊이'
   COMMENT ON COLUMN "REPLY"."RE_ORDER" IS '댓글순서'
   COMMENT ON COLUMN "REPLY"."RE_IMG" IS '댓글이미지'
--------------------------------------------------------
--  DDL for Index ATTACH_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATTACH_PK" ON "ATTACH" ("ATCH_NO")
--------------------------------------------------------
--  DDL for Index BOOK_CLUB_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "BOOK_CLUB_PK" ON "BOOK_CLUB" ("BK_NUM", "BK_DEL_YN")
--------------------------------------------------------
--  DDL for Index MEMBER_PRI_KEY
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEMBER_PRI_KEY" ON "MEMBER" ("MEM_ID", "MEM_DEL_YN")
--------------------------------------------------------
--  DDL for Index REPLY2_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REPLY2_PK" ON "REPLY" ("RE_NUM")
--------------------------------------------------------
--  Constraints for Table ATTACH
--------------------------------------------------------

  ALTER TABLE "ATTACH" ADD CONSTRAINT "ATTACH_PK" PRIMARY KEY ("ATCH_NO") ENABLE
  ALTER TABLE "ATTACH" MODIFY ("ATCH_ORIGINAL_NAME" NOT NULL ENABLE)
  ALTER TABLE "ATTACH" MODIFY ("ATCH_CATEGORY" NOT NULL ENABLE)
  ALTER TABLE "ATTACH" MODIFY ("ATCH_PARENT_NO" NOT NULL ENABLE)
  ALTER TABLE "ATTACH" MODIFY ("ATCH_NO" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table BOOK_CLUB
--------------------------------------------------------

  ALTER TABLE "BOOK_CLUB" MODIFY ("BK_DEL_YN" NOT NULL ENABLE)
  ALTER TABLE "BOOK_CLUB" ADD CONSTRAINT "BOOK_CLUB_PK" PRIMARY KEY ("BK_NUM", "BK_DEL_YN") ENABLE
  ALTER TABLE "BOOK_CLUB" MODIFY ("BK_THEME" NOT NULL ENABLE)
  ALTER TABLE "BOOK_CLUB" MODIFY ("BK_MEM_ID" NOT NULL ENABLE)
  ALTER TABLE "BOOK_CLUB" MODIFY ("BK_NUM" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table CLUB_BOARD
--------------------------------------------------------

  ALTER TABLE "CLUB_BOARD" MODIFY ("CB_BO_CLUB_NUM" NOT NULL ENABLE)
  ALTER TABLE "CLUB_BOARD" MODIFY ("CB_BO_NUM" NOT NULL ENABLE)
  ALTER TABLE "CLUB_BOARD" MODIFY ("CB_BO_TITLE" NOT NULL ENABLE)
  ALTER TABLE "CLUB_BOARD" MODIFY ("CB_BO_MEM_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table CLUB_CHAT
--------------------------------------------------------

  ALTER TABLE "CLUB_CHAT" MODIFY ("CLUB_ROOM_NAME" NOT NULL ENABLE)
  ALTER TABLE "CLUB_CHAT" MODIFY ("CLUB_USER_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table CLUB_MEMBERLIST
--------------------------------------------------------

  ALTER TABLE "CLUB_MEMBERLIST" MODIFY ("CM_NUM" NOT NULL ENABLE)
  ALTER TABLE "CLUB_MEMBERLIST" MODIFY ("CM_CONFIRM_YN" NOT NULL ENABLE)
  ALTER TABLE "CLUB_MEMBERLIST" MODIFY ("CM_MEM_ID" NOT NULL ENABLE)
  ALTER TABLE "CLUB_MEMBERLIST" MODIFY ("CM_CLUB_NAME" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table COMM_CODE
--------------------------------------------------------

  ALTER TABLE "COMM_CODE" MODIFY ("COMM_CD" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table FREE_BOARD
--------------------------------------------------------

  ALTER TABLE "FREE_BOARD" MODIFY ("BO_CATEGORY" NOT NULL ENABLE)
  ALTER TABLE "FREE_BOARD" MODIFY ("BO_MEM_ID" NOT NULL ENABLE)
  ALTER TABLE "FREE_BOARD" MODIFY ("BO_DEL_YN" NOT NULL ENABLE)
  ALTER TABLE "FREE_BOARD" MODIFY ("BO_REG_DATE" NOT NULL ENABLE)
  ALTER TABLE "FREE_BOARD" MODIFY ("BO_HIT" NOT NULL ENABLE)
  ALTER TABLE "FREE_BOARD" MODIFY ("BO_TITLE" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table LOAN_TABLE
--------------------------------------------------------

  ALTER TABLE "LOAN_TABLE" MODIFY ("LOA_MEM_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MEMBER" ADD CONSTRAINT "MEMBER_PRI_KEY" PRIMARY KEY ("MEM_ID", "MEM_DEL_YN") ENABLE
  ALTER TABLE "MEMBER" MODIFY ("MEM_PREF" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table PWKEY
--------------------------------------------------------

  ALTER TABLE "PWKEY" MODIFY ("MEM_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table QNA_BOARD
--------------------------------------------------------

  ALTER TABLE "QNA_BOARD" MODIFY ("QB_MEM_ID" NOT NULL ENABLE)
  ALTER TABLE "QNA_BOARD" MODIFY ("QB_DEL_YN" NOT NULL ENABLE)
  ALTER TABLE "QNA_BOARD" MODIFY ("QB_REG_DATE" NOT NULL ENABLE)
  ALTER TABLE "QNA_BOARD" MODIFY ("QB_WRITER" NOT NULL ENABLE)
  ALTER TABLE "QNA_BOARD" MODIFY ("QB_TITLE" NOT NULL ENABLE)
  ALTER TABLE "QNA_BOARD" MODIFY ("QB_NUM" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table REPLY
--------------------------------------------------------

  ALTER TABLE "REPLY" MODIFY ("RE_WRITER" NOT NULL ENABLE)
  ALTER TABLE "REPLY" MODIFY ("RE_MEM_ID" NOT NULL ENABLE)
  ALTER TABLE "REPLY" ADD CONSTRAINT "REPLY2_PK" PRIMARY KEY ("RE_NUM") ENABLE
  ALTER TABLE "REPLY" MODIFY ("RE_CATEGORY" NOT NULL ENABLE)
  ALTER TABLE "REPLY" MODIFY ("RE_BOARD_NUM" NOT NULL ENABLE)
  ALTER TABLE "REPLY" MODIFY ("RE_NUM" NOT NULL ENABLE)
