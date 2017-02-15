--------------------------------------------------------
--  DDL for Table AUTHOR
--------------------------------------------------------
  CREATE TABLE "AUTHOR" 
   (	"ID" NUMBER(20,0), 
	"NAME" VARCHAR2(255 BYTE), 
	"BIOGRAPHY_ID" NUMBER(20,0)
   ) ;
--------------------------------------------------------
--  DDL for Index AUTHOR_PK
--------------------------------------------------------
  CREATE UNIQUE INDEX "AUTHOR_PK" ON "AUTHOR" ("ID") ;
--------------------------------------------------------
--  Constraints for Table AUTHOR
--------------------------------------------------------
  ALTER TABLE "AUTHOR" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "AUTHOR" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "AUTHOR" ADD CONSTRAINT "AUTHOR_PK" PRIMARY KEY ("ID");
--------------------------------------------------------
--  Ref Constraints for Table AUTHOR
--------------------------------------------------------
  ALTER TABLE "AUTHOR" ADD CONSTRAINT "AUTHOR_AUTOBIOGRAPHY_FK" FOREIGN KEY ("BIOGRAPHY_ID")
	  REFERENCES "AUTOBIOGRAPHY" ("ID") ENABLE;
--------------------------------------------------------
--  DDL for Table AUTOBIOGRAPHY
--------------------------------------------------------
  CREATE TABLE "AUTOBIOGRAPHY" 
   (	"ID" NUMBER(20,0), 
	"BOOK_NAME" VARCHAR2(255 BYTE)
   );
--------------------------------------------------------
--  DDL for Index AUTOBIOGRAPHY_PK
--------------------------------------------------------
  CREATE UNIQUE INDEX "AUTOBIOGRAPHY_PK" ON "AUTOBIOGRAPHY" ("ID") ;
--------------------------------------------------------
--  Constraints for Table AUTOBIOGRAPHY
--------------------------------------------------------
  ALTER TABLE "AUTOBIOGRAPHY" ADD CONSTRAINT "AUTOBIOGRAPHY_PK" PRIMARY KEY ("ID");
  ALTER TABLE "AUTOBIOGRAPHY" MODIFY ("BOOK_NAME" NOT NULL ENABLE);
