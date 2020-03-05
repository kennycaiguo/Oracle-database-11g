--------------------------------------------------------
--  文件已创建 - 星期四-三月-05-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table STUDENTS
--------------------------------------------------------

  CREATE TABLE "SCOTT"."STUDENTS" 
   (	"ID" NUMBER(3,0), 
	"NAME" VARCHAR2(10 BYTE), 
	"GENDER" VARCHAR2(2 BYTE), 
	"SALARY" NUMBER(6,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into SCOTT.STUDENTS
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index SYS_C0011137
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_C0011137" ON "SCOTT"."STUDENTS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011138
--------------------------------------------------------

  CREATE UNIQUE INDEX "SCOTT"."SYS_C0011138" ON "SCOTT"."STUDENTS" ("NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table STUDENTS
--------------------------------------------------------

  ALTER TABLE "SCOTT"."STUDENTS" MODIFY ("NAME" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."STUDENTS" MODIFY ("GENDER" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."STUDENTS" MODIFY ("SALARY" NOT NULL ENABLE);
 
  ALTER TABLE "SCOTT"."STUDENTS" ADD CHECK (gender in ('男','女') ) ENABLE;
 
  ALTER TABLE "SCOTT"."STUDENTS" ADD CHECK (salary between 6000 and 8000) ENABLE;
 
  ALTER TABLE "SCOTT"."STUDENTS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "SCOTT"."STUDENTS" ADD UNIQUE ("NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
