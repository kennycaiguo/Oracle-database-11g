--------------------------------------------------------
--  文件已创建 - 星期四-三月-05-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BONUS
--------------------------------------------------------

  CREATE TABLE "SCOTT"."BONUS" 
   (	"ENAME" VARCHAR2(10 BYTE), 
	"JOB" VARCHAR2(9 BYTE), 
	"SAL" NUMBER, 
	"COMM" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into SCOTT.BONUS
SET DEFINE OFF;
