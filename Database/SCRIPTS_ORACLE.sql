--------------------------------------------------------
--  File created - Sunday-April-15-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence AttributeGroups_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."AttributeGroups_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Attributes_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Attributes_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Colors_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Colors_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Contacts_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Contacts_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Customers_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Customers_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Districts_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Districts_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence GroupProducts_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."GroupProducts_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ImageProducts_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."ImageProducts_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Menus_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Menus_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence OrderStatuses_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."OrderStatuses_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Orders_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Orders_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Payments_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Payments_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Products_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Products_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Provinces_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Provinces_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Roles_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Roles_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ShippingStatuses_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."ShippingStatuses_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Users_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Users_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Users_SEQ1
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Users_SEQ1"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Wards_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Wards_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table AttributeGroups
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."AttributeGroups" 
   (	"AttrGroupID" NUMBER(10,0), 
	"AttrGroupName" NVARCHAR2(100)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Attributes
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."Attributes" 
   (	"AttrID" NUMBER(10,0), 
	"AttrGroupID" NUMBER(10,0), 
	"AttrName" NVARCHAR2(100)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Colors
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."Colors" 
   (	"ColorID" NUMBER(10,0), 
	"ColorName" NVARCHAR2(100), 
	"HexCode" VARCHAR2(6 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Configurations
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."Configurations" 
   (	"ConfigName" VARCHAR2(30 BYTE), 
	"Value" NVARCHAR2(255), 
	"Description" NVARCHAR2(255)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Contacts
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."Contacts" 
   (	"ContactID" NUMBER(10,0), 
	"CustomerID" NUMBER(10,0), 
	"FullName" NVARCHAR2(100), 
	"Email" VARCHAR2(255 BYTE), 
	"Phone" VARCHAR2(15 BYTE), 
	"Message" NCLOB, 
	"Seen" NUMBER(1,0) DEFAULT 0, 
	"CreatedAt" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("Message") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table Customers
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."Customers" 
   (	"CustomerID" NUMBER(10,0), 
	"FacebookID" VARCHAR2(20 BYTE), 
	"GoogleID" VARCHAR2(20 BYTE), 
	"Password" VARCHAR2(32 BYTE), 
	"FullName" NVARCHAR2(100), 
	"Email" VARCHAR2(255 BYTE), 
	"Address" NVARCHAR2(255), 
	"ProvinceID" NUMBER(10,0), 
	"DistrictID" NUMBER(10,0), 
	"WardID" NUMBER(10,0), 
	"Phone" VARCHAR2(15 BYTE), 
	"Status" NUMBER(1,0) DEFAULT 1, 
	"CreatedAt" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Districts
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."Districts" 
   (	"DistrictID" NUMBER(10,0), 
	"DistrictName" NVARCHAR2(100), 
	"Type" NVARCHAR2(50), 
	"ProvinceID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GroupProducts
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."GroupProducts" 
   (	"GroupID" NUMBER(10,0), 
	"GroupName" NVARCHAR2(100), 
	"ParentGroupID" NUMBER(10,0), 
	"Icon" VARCHAR2(30 BYTE), 
	"Priority" NUMBER(10,0) DEFAULT 0, 
	"Slug" VARCHAR2(150 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ImageProducts
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."ImageProducts" 
   (	"ImageID" NUMBER(10,0), 
	"ProductID" NUMBER(10,0), 
	"Caption" NVARCHAR2(100), 
	"ImagePath" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Menus
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."Menus" 
   (	"MenuID" NUMBER(10,0), 
	"ParentMenuID" NUMBER(10,0), 
	"MenuName" NVARCHAR2(100), 
	"Link" VARCHAR2(255 BYTE), 
	"Priority" NUMBER(10,0) DEFAULT 0, 
	"Label" NVARCHAR2(100), 
	"Hot" NUMBER(1,0) DEFAULT 0
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table OrderDetails
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."OrderDetails" 
   (	"OrderID" NUMBER(10,0), 
	"ProductID" NUMBER(10,0), 
	"Price" NUMBER(10,2), 
	"Quantity" NUMBER(10,0), 
	"ColorID" NUMBER(10,0), 
	"Total" NUMBER(10,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table OrderStatuses
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."OrderStatuses" 
   (	"OrderStatusID" NUMBER(10,0), 
	"OrderStatusName" NVARCHAR2(100)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Orders
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."Orders" 
   (	"OrderID" NUMBER(10,0), 
	"CustomerID" NUMBER(10,0), 
	"PaymentID" NUMBER(10,0), 
	"CreatedAt" DATE DEFAULT SYSDATE, 
	"FullName" NVARCHAR2(100), 
	"Address" NVARCHAR2(255), 
	"ProvinceID" NUMBER(10,0), 
	"DistrictID" NUMBER(10,0), 
	"WardID" NUMBER(10,0), 
	"Phone" VARCHAR2(15 BYTE), 
	"TotalPrice" NUMBER(10,2), 
	"Discount" NUMBER(10,2) DEFAULT 0, 
	"PaymentDate" DATE, 
	"Paid" NUMBER(1,0) DEFAULT 0, 
	"OrderStatusID" NUMBER(10,0), 
	"ShippingStatusID" NUMBER(10,0), 
	"Comment" NCLOB
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("Comment") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table Payments
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."Payments" 
   (	"PaymentID" NUMBER(10,0), 
	"PaymentType" VARCHAR2(10 BYTE), 
	"PaymentName" NVARCHAR2(100), 
	"Active" NUMBER(1,0) DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ProductAttributes
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."ProductAttributes" 
   (	"ProductID" NUMBER(10,0), 
	"AttrID" NUMBER(10,0), 
	"Value" NVARCHAR2(200), 
	"Priority" NUMBER(10,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ProductColors
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."ProductColors" 
   (	"ProductID" NUMBER(10,0), 
	"ColorID" NUMBER(10,0), 
	"Stock" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Products
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."Products" 
   (	"ProductID" NUMBER(10,0), 
	"ProductName" NVARCHAR2(100), 
	"Price" NUMBER(10,2), 
	"SalePrice" NUMBER(10,2) DEFAULT 0, 
	"Stock" NUMBER(10,0), 
	"GroupID" NUMBER(10,0), 
	"UseMultiColor" NUMBER(1,0) DEFAULT 0, 
	"CreatedAt" DATE DEFAULT SYSDATE, 
	"Active" NUMBER(1,0) DEFAULT 1, 
	"Detail" NCLOB, 
	"Slug" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("Detail") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table Provinces
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."Provinces" 
   (	"ProvinceID" NUMBER(10,0), 
	"ProvinceName" NVARCHAR2(100), 
	"Type" NVARCHAR2(50)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ShippingStatuses
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."ShippingStatuses" 
   (	"ShippingStatusID" NUMBER(10,0), 
	"ShippingName" NVARCHAR2(100)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Users
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."Users" 
   (	"UserID" NUMBER(10,0), 
	"Username" VARCHAR2(50 BYTE), 
	"Password" VARCHAR2(32 BYTE), 
	"FullName" NVARCHAR2(100), 
	"Email" VARCHAR2(255 BYTE), 
	"Status" NUMBER(1,0) DEFAULT 1, 
	"CreatedAt" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Wards
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."Wards" 
   (	"WardID" NUMBER(10,0), 
	"WardName" NVARCHAR2(100), 
	"Type" NVARCHAR2(50), 
	"DistrictId" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into ECOMMERCE."AttributeGroups"
SET DEFINE OFF;
Insert into ECOMMERCE."AttributeGroups" ("AttrGroupID","AttrGroupName") values (23,'Giày');
REM INSERTING into ECOMMERCE."Attributes"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."Colors"
SET DEFINE OFF;
Insert into ECOMMERCE."Colors" ("ColorID","ColorName","HexCode") values (23,'?en','000000');
Insert into ECOMMERCE."Colors" ("ColorID","ColorName","HexCode") values (24,'Xanh d??ng','0057ff');
Insert into ECOMMERCE."Colors" ("ColorID","ColorName","HexCode") values (22,'Tr?ng','ffffff');
Insert into ECOMMERCE."Colors" ("ColorID","ColorName","HexCode") values (25,'??','ff0000');
Insert into ECOMMERCE."Colors" ("ColorID","ColorName","HexCode") values (26,'Vàng','fffc00');
REM INSERTING into ECOMMERCE."Configurations"
SET DEFINE OFF;
Insert into ECOMMERCE."Configurations" ("ConfigName","Value","Description") values ('product_per_page','10',null);
Insert into ECOMMERCE."Configurations" ("ConfigName","Value","Description") values ('site_title','Shop bán giày',null);
Insert into ECOMMERCE."Configurations" ("ConfigName","Value","Description") values ('support_email','trannhatduy297@gmail.com',null);
Insert into ECOMMERCE."Configurations" ("ConfigName","Value","Description") values ('support_phone','0972721892',null);
REM INSERTING into ECOMMERCE."Contacts"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."Customers"
SET DEFINE OFF;
Insert into ECOMMERCE."Customers" ("CustomerID","FacebookID","GoogleID","Password","FullName","Email","Address","ProvinceID","DistrictID","WardID","Phone","Status","CreatedAt") values (0,null,null,'0945fc9611f55fd0e183fb8b044f1afe','admin','admin@admin.com',null,null,null,null,null,1,to_date('15/04/2018','DD/MM/YYYY'));
REM INSERTING into ECOMMERCE."Districts"
SET DEFINE OFF;
Insert into ECOMMERCE."Districts" ("DistrictID","DistrictName","Type","ProvinceID") values (6,'Qu?n 1','1',2);
Insert into ECOMMERCE."Districts" ("DistrictID","DistrictName","Type","ProvinceID") values (7,'Qu?n 2','1',2);
Insert into ECOMMERCE."Districts" ("DistrictID","DistrictName","Type","ProvinceID") values (8,'Qu?n Bình Th?nh','1',2);
Insert into ECOMMERCE."Districts" ("DistrictID","DistrictName","Type","ProvinceID") values (9,'Qu?n Gò V?p','1',2);
Insert into ECOMMERCE."Districts" ("DistrictID","DistrictName","Type","ProvinceID") values (10,'Huy?n Hóc Môn','1',2);
REM INSERTING into ECOMMERCE."GroupProducts"
SET DEFINE OFF;
Insert into ECOMMERCE."GroupProducts" ("GroupID","GroupName","ParentGroupID","Icon","Priority","Slug") values (61,'Bitis',null,null,0,'bitis');
REM INSERTING into ECOMMERCE."ImageProducts"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."Menus"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."OrderDetails"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."OrderStatuses"
SET DEFINE OFF;
Insert into ECOMMERCE."OrderStatuses" ("OrderStatusID","OrderStatusName") values (1,'??n hàng m?i');
Insert into ECOMMERCE."OrderStatuses" ("OrderStatusID","OrderStatusName") values (2,'Hoàn thành');
REM INSERTING into ECOMMERCE."Orders"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."Payments"
SET DEFINE OFF;
Insert into ECOMMERCE."Payments" ("PaymentID","PaymentType","PaymentName","Active") values (1,'cod','Thu h? COD',1);
Insert into ECOMMERCE."Payments" ("PaymentID","PaymentType","PaymentName","Active") values (7,'online','Online',1);
Insert into ECOMMERCE."Payments" ("PaymentID","PaymentType","PaymentName","Active") values (3,'atm','ATM',1);
REM INSERTING into ECOMMERCE."ProductAttributes"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."ProductColors"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."Products"
SET DEFINE OFF;
Insert into ECOMMERCE."Products" ("ProductID","ProductName","Price","SalePrice","Stock","GroupID","UseMultiColor","CreatedAt","Active","Slug") values (41,'A',15000,12000,0,61,0,to_date('13/04/2018','DD/MM/YYYY'),1,'a');
REM INSERTING into ECOMMERCE."Provinces"
SET DEFINE OFF;
Insert into ECOMMERCE."Provinces" ("ProvinceID","ProvinceName","Type") values (2,'TP H? Chí Minh','1');
Insert into ECOMMERCE."Provinces" ("ProvinceID","ProvinceName","Type") values (3,'TP Hà N?i','1');
Insert into ECOMMERCE."Provinces" ("ProvinceID","ProvinceName","Type") values (4,'TP H?i Phòng','1');
Insert into ECOMMERCE."Provinces" ("ProvinceID","ProvinceName","Type") values (5,'TP ?à N?ng','1');
Insert into ECOMMERCE."Provinces" ("ProvinceID","ProvinceName","Type") values (6,'TP C?n Th?','1');
REM INSERTING into ECOMMERCE."ShippingStatuses"
SET DEFINE OFF;
Insert into ECOMMERCE."ShippingStatuses" ("ShippingStatusID","ShippingName") values (1,'Ch?a giao hàng');
Insert into ECOMMERCE."ShippingStatuses" ("ShippingStatusID","ShippingName") values (2,'?ã giao hàng');
REM INSERTING into ECOMMERCE."Users"
SET DEFINE OFF;
Insert into ECOMMERCE."Users" ("UserID","Username","Password","FullName","Email","Status","CreatedAt") values (2,'admin','0945fc9611f55fd0e183fb8b044f1afe','Tr?n Nh?t Duy','admin@admin.com',1,to_date('14/04/2018','DD/MM/YYYY'));
REM INSERTING into ECOMMERCE."Wards"
SET DEFINE OFF;
Insert into ECOMMERCE."Wards" ("WardID","WardName","Type","DistrictId") values (1,'Ph??ng ?a Kao','1',6);
Insert into ECOMMERCE."Wards" ("WardID","WardName","Type","DistrictId") values (2,'Ph??ng 25','1',8);
--------------------------------------------------------
--  DDL for Index Menus_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."Menus_PK" ON "ECOMMERCE"."Menus" ("MenuID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index Products_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."Products_PK" ON "ECOMMERCE"."Products" ("ProductID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index OrderDetails_PK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."OrderDetails_PK1" ON "ECOMMERCE"."OrderDetails" ("OrderID", "ProductID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ImageProducts_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."ImageProducts_PK" ON "ECOMMERCE"."ImageProducts" ("ImageID", "ProductID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index Payments_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."Payments_PK" ON "ECOMMERCE"."Payments" ("PaymentID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index GroupProducts_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."GroupProducts_PK" ON "ECOMMERCE"."GroupProducts" ("GroupID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index Configurations_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."Configurations_PK" ON "ECOMMERCE"."Configurations" ("ConfigName") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ProductAttributes_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."ProductAttributes_PK" ON "ECOMMERCE"."ProductAttributes" ("ProductID", "AttrID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index Contacts_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."Contacts_PK" ON "ECOMMERCE"."Contacts" ("ContactID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index OrderStatuses_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."OrderStatuses_PK" ON "ECOMMERCE"."OrderStatuses" ("OrderStatusID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index Users_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."Users_UK1" ON "ECOMMERCE"."Users" ("Username", "Email") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index Users_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."Users_PK" ON "ECOMMERCE"."Users" ("UserID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index Orders_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."Orders_PK" ON "ECOMMERCE"."Orders" ("OrderID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ShippingStatuses_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."ShippingStatuses_PK" ON "ECOMMERCE"."ShippingStatuses" ("ShippingStatusID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index AttributeGroups_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."AttributeGroups_PK" ON "ECOMMERCE"."AttributeGroups" ("AttrGroupID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index Products_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."Products_UK1" ON "ECOMMERCE"."Products" ("Slug") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index Wards_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."Wards_PK" ON "ECOMMERCE"."Wards" ("WardID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index Districts_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."Districts_PK" ON "ECOMMERCE"."Districts" ("DistrictID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index GroupProducts_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."GroupProducts_UK1" ON "ECOMMERCE"."GroupProducts" ("Slug") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ProductColors_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."ProductColors_PK" ON "ECOMMERCE"."ProductColors" ("ProductID", "ColorID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index Customers_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."Customers_PK" ON "ECOMMERCE"."Customers" ("CustomerID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index Colors_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."Colors_PK" ON "ECOMMERCE"."Colors" ("ColorID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index Attributes_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."Attributes_PK" ON "ECOMMERCE"."Attributes" ("AttrID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index Provinces_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."Provinces_PK" ON "ECOMMERCE"."Provinces" ("ProvinceID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger AttributeGroups_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ECOMMERCE"."AttributeGroups_TRG" 
BEFORE INSERT ON "AttributeGroups" 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND ( :NEW."AttrGroupID" IS NULL OR :NEW."AttrGroupID" = 0 ) THEN
      SELECT "AttributeGroups_SEQ".NEXTVAL INTO :NEW."AttrGroupID" FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ECOMMERCE"."AttributeGroups_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger Attributes_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ECOMMERCE"."Attributes_TRG" 
BEFORE INSERT ON "Attributes" 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND ( :NEW."AttrID" IS NULL OR :NEW."AttrID" = 0 ) THEN
      SELECT "Attributes_SEQ".NEXTVAL INTO :NEW."AttrID" FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ECOMMERCE"."Attributes_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger Colors_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ECOMMERCE"."Colors_TRG" 
BEFORE INSERT ON "Colors" 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND ( :NEW."ColorID" IS NULL OR :NEW."ColorID" = 0 ) THEN
      SELECT "Colors_SEQ".NEXTVAL INTO :NEW."ColorID" FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ECOMMERCE"."Colors_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger Contacts_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ECOMMERCE"."Contacts_TRG" 
BEFORE INSERT ON "Contacts" 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND ( :NEW."ContactID" IS NULL OR :NEW."ContactID" = 0 ) THEN
      SELECT "Contacts_SEQ".NEXTVAL INTO :NEW."ContactID" FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ECOMMERCE"."Contacts_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger Customers_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ECOMMERCE"."Customers_TRG" 
BEFORE INSERT ON "Customers" 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND ( :NEW."CustomerID" IS NULL OR :NEW."CustomerID" = 0 ) THEN
      SELECT "Customers_SEQ".NEXTVAL INTO :NEW."CustomerID" FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ECOMMERCE"."Customers_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger Districts_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ECOMMERCE"."Districts_TRG" 
BEFORE INSERT ON "Districts" 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND ( :NEW."DistrictID" IS NULL OR :NEW."DistrictID" = 0 ) THEN
      SELECT "Districts_SEQ".NEXTVAL INTO :NEW."DistrictID" FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ECOMMERCE"."Districts_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger GroupProducts_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ECOMMERCE"."GroupProducts_TRG" 
BEFORE INSERT ON "GroupProducts" 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND ( :NEW."GroupID" IS NULL OR :NEW."GroupID" = 0 ) THEN
      SELECT "GroupProducts_SEQ".NEXTVAL INTO :NEW."GroupID" FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ECOMMERCE"."GroupProducts_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ImageProducts_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ECOMMERCE"."ImageProducts_TRG" 
BEFORE INSERT ON "ImageProducts" 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND ( :NEW."ImageID" IS NULL OR :NEW."ImageID" = 0 ) THEN
      SELECT "ImageProducts_SEQ".NEXTVAL INTO :NEW."ImageID" FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ECOMMERCE"."ImageProducts_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger Menus_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ECOMMERCE"."Menus_TRG" 
BEFORE INSERT ON "Menus" 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND ( :NEW."MenuID" IS NULL OR :NEW."MenuID" = 0 ) THEN
      SELECT "Menus_SEQ".NEXTVAL INTO :NEW."MenuID" FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ECOMMERCE"."Menus_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger OrderStatuses_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ECOMMERCE"."OrderStatuses_TRG" 
BEFORE INSERT ON "OrderStatuses" 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND ( :NEW."OrderStatusID" IS NULL OR :NEW."OrderStatusID" = 0 ) THEN
      SELECT "OrderStatuses_SEQ".NEXTVAL INTO :NEW."OrderStatusID" FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ECOMMERCE"."OrderStatuses_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger Orders_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ECOMMERCE"."Orders_TRG" 
BEFORE INSERT ON "Orders" 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND ( :NEW."OrderID" IS NULL OR :NEW."OrderID" = 0 ) THEN
      SELECT "Orders_SEQ".NEXTVAL INTO :NEW."OrderID" FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ECOMMERCE"."Orders_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger Payments_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ECOMMERCE"."Payments_TRG" 
BEFORE INSERT ON "Payments" 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND ( :NEW."PaymentID" IS NULL OR :NEW."PaymentID" = 0 ) THEN
      SELECT "Payments_SEQ".NEXTVAL INTO :NEW."PaymentID" FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ECOMMERCE"."Payments_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger Products_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ECOMMERCE"."Products_TRG" 
BEFORE INSERT ON "Products" 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND ( :NEW."ProductID" IS NULL OR :NEW."ProductID" = 0 ) THEN
      SELECT "Products_SEQ".NEXTVAL INTO :NEW."ProductID" FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ECOMMERCE"."Products_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger Provinces_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ECOMMERCE"."Provinces_TRG" 
BEFORE INSERT ON "Provinces" 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND ( :NEW."ProvinceID" IS NULL OR :NEW."ProvinceID" = 0 ) THEN
      SELECT "Provinces_SEQ".NEXTVAL INTO :NEW."ProvinceID" FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ECOMMERCE"."Provinces_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ShippingStatuses_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ECOMMERCE"."ShippingStatuses_TRG" 
BEFORE INSERT ON "ShippingStatuses" 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND ( :NEW."ShippingStatusID" IS NULL OR :NEW."ShippingStatusID" = 0 ) THEN
      SELECT "ShippingStatuses_SEQ".NEXTVAL INTO :NEW."ShippingStatusID" FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ECOMMERCE"."ShippingStatuses_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger Users_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ECOMMERCE"."Users_TRG" 
BEFORE INSERT ON "Users" 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND ( :NEW."UserID" IS NULL OR :NEW."UserID" = 0 ) THEN
      SELECT "Users_SEQ1".NEXTVAL INTO :NEW."UserID" FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ECOMMERCE"."Users_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger Wards_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ECOMMERCE"."Wards_TRG" 
BEFORE INSERT ON "Wards" 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND ( :NEW."WardID" IS NULL OR :NEW."WardID" = 0 ) THEN
      SELECT "Wards_SEQ".NEXTVAL INTO :NEW."WardID" FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ECOMMERCE"."Wards_TRG" ENABLE;
--------------------------------------------------------
--  Constraints for Table AttributeGroups
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."AttributeGroups" ADD CONSTRAINT "AttributeGroups_PK" PRIMARY KEY ("AttrGroupID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."AttributeGroups" MODIFY ("AttrGroupName" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."AttributeGroups" MODIFY ("AttrGroupID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table Contacts
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."Contacts" ADD CONSTRAINT "Contacts_PK" PRIMARY KEY ("ContactID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."Contacts" MODIFY ("ContactID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Contacts" MODIFY ("FullName" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Contacts" MODIFY ("Email" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Contacts" MODIFY ("Phone" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Contacts" MODIFY ("Message" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ShippingStatuses
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."ShippingStatuses" MODIFY ("ShippingName" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."ShippingStatuses" MODIFY ("ShippingStatusID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."ShippingStatuses" ADD CONSTRAINT "ShippingStatuses_PK" PRIMARY KEY ("ShippingStatusID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table Users
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."Users" MODIFY ("UserID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Users" MODIFY ("Username" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Users" MODIFY ("Password" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Users" MODIFY ("FullName" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Users" MODIFY ("Email" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Users" ADD CONSTRAINT "Users_PK" PRIMARY KEY ("UserID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."Users" ADD CONSTRAINT "Users_UK1" UNIQUE ("Username", "Email")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GroupProducts
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."GroupProducts" ADD CONSTRAINT "GroupProducts_PK" PRIMARY KEY ("GroupID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."GroupProducts" ADD CONSTRAINT "GroupProducts_UK1" UNIQUE ("Slug")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."GroupProducts" MODIFY ("GroupID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."GroupProducts" MODIFY ("GroupName" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."GroupProducts" MODIFY ("Slug" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table Colors
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."Colors" ADD CONSTRAINT "Colors_PK" PRIMARY KEY ("ColorID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."Colors" MODIFY ("ColorName" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Colors" MODIFY ("HexCode" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Colors" MODIFY ("ColorID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ProductAttributes
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."ProductAttributes" ADD CONSTRAINT "ProductAttributes_PK" PRIMARY KEY ("ProductID", "AttrID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."ProductAttributes" MODIFY ("AttrID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."ProductAttributes" MODIFY ("Value" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."ProductAttributes" MODIFY ("ProductID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table Payments
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."Payments" ADD CONSTRAINT "Payments_PK" PRIMARY KEY ("PaymentID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."Payments" MODIFY ("PaymentID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Payments" MODIFY ("PaymentType" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Payments" MODIFY ("PaymentName" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table Products
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."Products" ADD CONSTRAINT "Products_PK" PRIMARY KEY ("ProductID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."Products" ADD CONSTRAINT "Products_UK1" UNIQUE ("Slug")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."Products" MODIFY ("ProductID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Products" MODIFY ("ProductName" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Products" MODIFY ("Price" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Products" MODIFY ("Stock" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Products" MODIFY ("GroupID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Products" MODIFY ("Detail" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Products" MODIFY ("Slug" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ImageProducts
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."ImageProducts" ADD CONSTRAINT "ImageProducts_PK" PRIMARY KEY ("ImageID", "ProductID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."ImageProducts" MODIFY ("ProductID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."ImageProducts" MODIFY ("Caption" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."ImageProducts" MODIFY ("ImagePath" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."ImageProducts" MODIFY ("ImageID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table Orders
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."Orders" ADD CONSTRAINT "Orders_PK" PRIMARY KEY ("OrderID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."Orders" MODIFY ("OrderID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Orders" MODIFY ("CustomerID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Orders" MODIFY ("PaymentID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Orders" MODIFY ("FullName" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Orders" MODIFY ("Address" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Orders" MODIFY ("ProvinceID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Orders" MODIFY ("DistrictID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Orders" MODIFY ("WardID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Orders" MODIFY ("Phone" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Orders" MODIFY ("TotalPrice" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Orders" MODIFY ("OrderStatusID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Orders" MODIFY ("ShippingStatusID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ProductColors
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."ProductColors" ADD CONSTRAINT "ProductColors_PK" PRIMARY KEY ("ProductID", "ColorID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."ProductColors" MODIFY ("ColorID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."ProductColors" MODIFY ("Stock" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."ProductColors" MODIFY ("ProductID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table Attributes
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."Attributes" ADD CONSTRAINT "Attributes_PK" PRIMARY KEY ("AttrID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."Attributes" MODIFY ("AttrID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Attributes" MODIFY ("AttrName" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table Customers
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."Customers" ADD CONSTRAINT "Customers_PK" PRIMARY KEY ("CustomerID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."Customers" MODIFY ("CustomerID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Customers" MODIFY ("Password" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Customers" MODIFY ("FullName" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Customers" MODIFY ("Email" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table Menus
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."Menus" ADD CONSTRAINT "Menus_PK" PRIMARY KEY ("MenuID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."Menus" MODIFY ("MenuID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Menus" MODIFY ("MenuName" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Menus" MODIFY ("Link" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table OrderDetails
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."OrderDetails" ADD CONSTRAINT "OrderDetails_PK" PRIMARY KEY ("OrderID", "ProductID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."OrderDetails" MODIFY ("OrderID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."OrderDetails" MODIFY ("ProductID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."OrderDetails" MODIFY ("Price" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."OrderDetails" MODIFY ("Quantity" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."OrderDetails" MODIFY ("Total" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."OrderDetails" MODIFY ("ColorID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table OrderStatuses
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."OrderStatuses" ADD CONSTRAINT "OrderStatuses_PK" PRIMARY KEY ("OrderStatusID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."OrderStatuses" MODIFY ("OrderStatusName" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."OrderStatuses" MODIFY ("OrderStatusID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table Districts
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."Districts" ADD CONSTRAINT "Districts_PK" PRIMARY KEY ("DistrictID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."Districts" MODIFY ("DistrictName" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Districts" MODIFY ("Type" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Districts" MODIFY ("ProvinceID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Districts" MODIFY ("DistrictID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table Provinces
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."Provinces" ADD CONSTRAINT "Provinces_PK" PRIMARY KEY ("ProvinceID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."Provinces" MODIFY ("ProvinceName" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Provinces" MODIFY ("Type" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Provinces" MODIFY ("ProvinceID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table Configurations
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."Configurations" ADD CONSTRAINT "Configurations_PK" PRIMARY KEY ("ConfigName")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."Configurations" MODIFY ("ConfigName" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Configurations" MODIFY ("Value" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table Wards
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."Wards" MODIFY ("WardName" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Wards" MODIFY ("Type" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Wards" MODIFY ("DistrictId" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Wards" MODIFY ("WardID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Wards" ADD CONSTRAINT "Wards_PK" PRIMARY KEY ("WardID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
