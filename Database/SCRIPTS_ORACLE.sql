--------------------------------------------------------
--  File created - Wednesday-April-11-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence Advertises_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Advertises_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence AttributeGroups_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."AttributeGroups_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Attributes_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Attributes_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Carts_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Carts_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Colors_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Colors_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Comments_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Comments_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Contacts_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Contacts_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Coupons_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Coupons_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Customers_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Customers_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Districts_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Districts_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence GroupProducts_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."GroupProducts_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ImageProducts_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."ImageProducts_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Menus_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Menus_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence OrderDetails_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."OrderDetails_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence OrderStatuses_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."OrderStatuses_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Orders_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Orders_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Payments_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Payments_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Products_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Products_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Provinces_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Provinces_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Roles_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Roles_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ShippingStatuses_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."ShippingStatuses_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Users_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Users_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Wards_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ECOMMERCE"."Wards_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table Advertises
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."Advertises" 
   (	"AdvertiseID" NUMBER(10,0), 
	"AdvertiseName" NVARCHAR2(100), 
	"Description" NVARCHAR2(255), 
	"ImageUrl" NVARCHAR2(255), 
	"Link" NVARCHAR2(255), 
	"Width" NUMBER(10,0), 
	"Height" NUMBER(10,0), 
	"Position" VARCHAR2(20 BYTE), 
	"Active" NUMBER(1,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
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
	"AttrName" NVARCHAR2(100), 
	"AttriGroupID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CartDetails
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."CartDetails" 
   (	"CartID" NUMBER(10,0), 
	"ProductID" NUMBER(10,0), 
	"ColorID" NUMBER(10,0), 
	"Quantity" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Carts
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."Carts" 
   (	"CartID" NUMBER(10,0), 
	"CookieID" VARCHAR2(10 BYTE), 
	"CustomerID" NUMBER(10,0), 
	"CreateDate" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
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
--  DDL for Table Comments
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."Comments" 
   (	"CommentID" NUMBER(10,0), 
	"ProductID" NUMBER(10,0), 
	"CommentContent" NCLOB, 
	"CommentTime" DATE, 
	"CustomerID" NUMBER(10,0), 
	"Rate" NUMBER(1,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("CommentContent") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING ) ;
--------------------------------------------------------
--  DDL for Table Configurations
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."Configurations" 
   (	"ConfigName" VARCHAR2(30 BYTE), 
	"Value" NVARCHAR2(255), 
	"Description" NVARCHAR2(255)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Contacts
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."Contacts" 
   (	"ContactID" NUMBER(10,0), 
	"FullName" NVARCHAR2(100), 
	"Email" VARCHAR2(255 BYTE), 
	"Phone" VARCHAR2(15 BYTE), 
	"Message" NCLOB, 
	"CustomerID" NUMBER(10,0), 
	"IP" VARCHAR2(50 BYTE), 
	"Time" DATE, 
	"Seen" NUMBER(1,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("Message") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING ) ;
--------------------------------------------------------
--  DDL for Table Coupons
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."Coupons" 
   (	"CouponID" NUMBER(10,0), 
	"Code" VARCHAR2(10 BYTE), 
	"Discount" NUMBER(10,0), 
	"Type" VARCHAR2(10 BYTE), 
	"FreeShip" NUMBER(1,0), 
	"StartDate" DATE, 
	"EndDate" DATE, 
	"Indefinite" NUMBER(1,0), 
	"Active" NUMBER(1,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Customers
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."Customers" 
   (	"CustomerID" NUMBER(10,0), 
	"FacebookID" VARCHAR2(20 BYTE), 
	"GoogleID" VARCHAR2(20 BYTE), 
	"Passwrord" VARCHAR2(32 BYTE), 
	"FullName" NVARCHAR2(100), 
	"Email" VARCHAR2(20 BYTE), 
	"Address" NVARCHAR2(255), 
	"ProvinceID" NUMBER(10,0), 
	"DistrictID" NUMBER(10,0), 
	"WardID" NUMBER(10,0), 
	"Phone" VARCHAR2(15 BYTE), 
	"Status" NUMBER(1,0), 
	"VerificationCode" VARCHAR2(64 BYTE), 
	"RegistrationDate" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Districts
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."Districts" 
   (	"DistrictID" NUMBER(10,0), 
	"DistrictName" NVARCHAR2(100), 
	"Type" NVARCHAR2(50), 
	"ProvinceID" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ExcludeCoupons
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."ExcludeCoupons" 
   (	"CouponID" NUMBER(10,0), 
	"GroupID" NUMBER(10,0), 
	"Description" NVARCHAR2(255)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GroupProducts
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."GroupProducts" 
   (	"GroupID" NUMBER(10,0), 
	"GroupName" NVARCHAR2(100), 
	"ParentGroupID" NUMBER(10,0), 
	"Icon" VARCHAR2(100 BYTE), 
	"Priority" NUMBER(10,0)
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
	"Priority" NUMBER(10,0), 
	"Label" NVARCHAR2(100), 
	"Hot" NUMBER(1,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table OrderDetails
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."OrderDetails" 
   (	"DetailID" NUMBER(10,0), 
	"OrderID" NUMBER(10,0), 
	"ProductID" NUMBER(10,0), 
	"Price" NUMBER(10,2), 
	"Quantity" NUMBER(10,0), 
	"ColorID" NUMBER(10,0), 
	"Total" NUMBER(10,2)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table OrderStatuses
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."OrderStatuses" 
   (	"OrderStatusID" NUMBER(10,0), 
	"OrderStatusName" NVARCHAR2(100)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Orders
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."Orders" 
   (	"OrderID" NUMBER(10,0), 
	"CustomerID" NUMBER(10,0), 
	"PaymentID" NUMBER(10,0), 
	"OrderDate" DATE, 
	"FullName" NVARCHAR2(100), 
	"Address" NVARCHAR2(255), 
	"ProvinceID" NUMBER(10,0), 
	"DistrictID" NUMBER(10,0), 
	"WardID" NUMBER(10,0), 
	"Phone" VARCHAR2(15 BYTE), 
	"TotalPrice" NUMBER(10,2), 
	"Discount" NUMBER(10,2), 
	"PaymentDate" DATE, 
	"Paid" NUMBER(1,0), 
	"CouponCode" VARCHAR2(10 BYTE), 
	"OrderStatusID" NUMBER(10,0), 
	"ShippingStatusID" NUMBER(10,0), 
	"Comment" NCLOB
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("Comment") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING ) ;
--------------------------------------------------------
--  DDL for Table Payments
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."Payments" 
   (	"PaymentID" NUMBER(10,0), 
	"PaymentType" VARCHAR2(10 BYTE), 
	"PaymentName" NVARCHAR2(100), 
	"Active" NUMBER(1,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ProductAttributes
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."ProductAttributes" 
   (	"ProductID" NUMBER(10,0), 
	"AttrID" NUMBER(10,0), 
	"Value" NVARCHAR2(200), 
	"Priority" NUMBER(10,0)
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
	"SalePrice" NUMBER(10,2), 
	"Stock" NUMBER(10,0), 
	"GroupID" NUMBER(10,0), 
	"UseMultiColor" NUMBER(1,0), 
	"CreateDate" DATE, 
	"Active" NUMBER(1,0), 
	"Detail" NCLOB
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
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Roles
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."Roles" 
   (	"RoleID" NUMBER(10,0), 
	"RoleName" NVARCHAR2(100)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ShippingStatuses
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."ShippingStatuses" 
   (	"ShippingStatusID" NUMBER(10,0), 
	"ShippingName" NVARCHAR2(100)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Users
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."Users" 
   (	"UserID" NUMBER(10,0), 
	"Username" VARCHAR2(50 BYTE), 
	"Password" VARCHAR2(32 BYTE), 
	"FullName" NVARCHAR2(200), 
	"IP" VARCHAR2(50 BYTE), 
	"Status" NUMBER(1,0), 
	"RegistrationDate" DATE, 
	"Email" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table UsersInRoles
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."UsersInRoles" 
   (	"Roles_RoleID" NUMBER(10,0), 
	"Users_UserID" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table Wards
--------------------------------------------------------

  CREATE TABLE "ECOMMERCE"."Wards" 
   (	"WardID" NUMBER(10,0), 
	"WardName" NVARCHAR2(100), 
	"Type" NVARCHAR2(50), 
	"DistrictId" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into ECOMMERCE."Advertises"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."AttributeGroups"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."Attributes"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."CartDetails"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."Carts"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."Colors"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."Comments"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."Configurations"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."Contacts"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."Coupons"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."Customers"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."Districts"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."ExcludeCoupons"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."GroupProducts"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."ImageProducts"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."Menus"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."OrderDetails"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."OrderStatuses"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."Orders"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."Payments"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."ProductAttributes"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."ProductColors"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."Products"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."Provinces"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."Roles"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."ShippingStatuses"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."Users"
SET DEFINE OFF;
Insert into ECOMMERCE."Users" ("UserID","Username","Password","FullName",IP,"Status","RegistrationDate","Email") values (1,'admin','0945fc9611f55fd0e183fb8b044f1afe','Admin','127.0.0.1',1,to_date('25/04/2018','DD/MM/YYYY'),'admin@admin.com');
REM INSERTING into ECOMMERCE."UsersInRoles"
SET DEFINE OFF;
REM INSERTING into ECOMMERCE."Wards"
SET DEFINE OFF;
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
--  DDL for Index GroupProducts_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."GroupProducts_PK" ON "ECOMMERCE"."GroupProducts" ("GroupID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index Advertises_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."Advertises_PK" ON "ECOMMERCE"."Advertises" ("AdvertiseID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index OrderStatuses_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."OrderStatuses_PK" ON "ECOMMERCE"."OrderStatuses" ("OrderStatusID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
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
--  DDL for Index Orders_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."Orders_PK" ON "ECOMMERCE"."Orders" ("OrderID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
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
--  DDL for Index Wards_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."Wards_PK" ON "ECOMMERCE"."Wards" ("WardID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index Comments_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."Comments_PK" ON "ECOMMERCE"."Comments" ("CommentID", "ProductID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index Coupons_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."Coupons_PK" ON "ECOMMERCE"."Coupons" ("CouponID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index OrderDetails_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."OrderDetails_PK" ON "ECOMMERCE"."OrderDetails" ("DetailID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index Provinces_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."Provinces_PK" ON "ECOMMERCE"."Provinces" ("ProvinceID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index Carts_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."Carts_PK" ON "ECOMMERCE"."Carts" ("CartID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
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
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index Configurations_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."Configurations_PK" ON "ECOMMERCE"."Configurations" ("ConfigName") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CartDetails_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."CartDetails_PK" ON "ECOMMERCE"."CartDetails" ("CartID", "ProductID", "ColorID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index Roles_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."Roles_PK" ON "ECOMMERCE"."Roles" ("RoleID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
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
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UsersInRoles_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."UsersInRoles_PK" ON "ECOMMERCE"."UsersInRoles" ("Roles_RoleID", "Users_UserID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
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
--  DDL for Index ShippingStatuses_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."ShippingStatuses_PK" ON "ECOMMERCE"."ShippingStatuses" ("ShippingStatusID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index Districts_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."Districts_PK" ON "ECOMMERCE"."Districts" ("DistrictID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
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
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ExcludeCoupons_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ECOMMERCE"."ExcludeCoupons_PK" ON "ECOMMERCE"."ExcludeCoupons" ("CouponID", "GroupID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
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
--  DDL for Trigger Advertises_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ECOMMERCE"."Advertises_TRG" 
BEFORE INSERT ON "Advertises" 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND ( :NEW."AdvertiseID" IS NULL OR :NEW."AdvertiseID" = 0 ) THEN
      SELECT "Advertises_SEQ".NEXTVAL INTO :NEW."AdvertiseID" FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ECOMMERCE"."Advertises_TRG" ENABLE;
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
--  DDL for Trigger Carts_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ECOMMERCE"."Carts_TRG" 
BEFORE INSERT ON "Carts" 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND ( :NEW."CartID" IS NULL OR :NEW."CartID" = 0 ) THEN
      SELECT "Carts_SEQ".NEXTVAL INTO :NEW."CartID" FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ECOMMERCE"."Carts_TRG" ENABLE;
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
--  DDL for Trigger Comments_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ECOMMERCE"."Comments_TRG" 
BEFORE INSERT ON "Comments" 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND ( :NEW."CommentID" IS NULL OR :NEW."CommentID" = 0 ) THEN
      SELECT "Comments_SEQ".NEXTVAL INTO :NEW."CommentID" FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ECOMMERCE"."Comments_TRG" ENABLE;
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
--  DDL for Trigger Coupons_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ECOMMERCE"."Coupons_TRG" 
BEFORE INSERT ON "Coupons" 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND ( :NEW."CouponID" IS NULL OR :NEW."CouponID" = 0 ) THEN
      SELECT "Coupons_SEQ".NEXTVAL INTO :NEW."CouponID" FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ECOMMERCE"."Coupons_TRG" ENABLE;
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
--  DDL for Trigger OrderDetails_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ECOMMERCE"."OrderDetails_TRG" 
BEFORE INSERT ON "OrderDetails" 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND ( :NEW."DetailID" IS NULL OR :NEW."DetailID" = 0 ) THEN
      SELECT "OrderDetails_SEQ".NEXTVAL INTO :NEW."DetailID" FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ECOMMERCE"."OrderDetails_TRG" ENABLE;
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
--  DDL for Trigger Roles_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ECOMMERCE"."Roles_TRG" 
BEFORE INSERT ON "Roles" 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND ( :NEW."RoleID" IS NULL OR :NEW."RoleID" = 0 ) THEN
      SELECT "Roles_SEQ".NEXTVAL INTO :NEW."RoleID" FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "ECOMMERCE"."Roles_TRG" ENABLE;
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
      SELECT "Users_SEQ".NEXTVAL INTO :NEW."UserID" FROM SYS.DUAL;
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
--  Constraints for Table Contacts
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."Contacts" ADD CONSTRAINT "Contacts_PK" PRIMARY KEY ("ContactID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."Contacts" MODIFY ("FullName" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Contacts" MODIFY ("Email" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Contacts" MODIFY ("Phone" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Contacts" MODIFY ("Message" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Contacts" MODIFY ("CustomerID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Contacts" MODIFY ("IP" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Contacts" MODIFY ("Time" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Contacts" MODIFY ("Seen" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Contacts" MODIFY ("ContactID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ShippingStatuses
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."ShippingStatuses" MODIFY ("ShippingName" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."ShippingStatuses" MODIFY ("ShippingStatusID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."ShippingStatuses" ADD CONSTRAINT "ShippingStatuses_PK" PRIMARY KEY ("ShippingStatusID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table Users
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."Users" MODIFY ("UserID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Users" MODIFY ("Username" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Users" MODIFY ("Password" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Users" MODIFY ("FullName" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Users" MODIFY ("IP" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Users" MODIFY ("Status" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Users" MODIFY ("RegistrationDate" NOT NULL ENABLE);
 
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
--  Constraints for Table ProductAttributes
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."ProductAttributes" ADD CONSTRAINT "ProductAttributes_PK" PRIMARY KEY ("ProductID", "AttrID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."ProductAttributes" MODIFY ("AttrID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."ProductAttributes" MODIFY ("Value" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."ProductAttributes" MODIFY ("Priority" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."ProductAttributes" MODIFY ("ProductID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table Payments
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."Payments" ADD CONSTRAINT "Payments_PK" PRIMARY KEY ("PaymentID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."Payments" MODIFY ("PaymentID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Payments" MODIFY ("PaymentType" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Payments" MODIFY ("PaymentName" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Payments" MODIFY ("Active" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table Products
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."Products" ADD CONSTRAINT "Products_PK" PRIMARY KEY ("ProductID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."Products" MODIFY ("ProductID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Products" MODIFY ("ProductName" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Products" MODIFY ("Price" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Products" MODIFY ("SalePrice" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Products" MODIFY ("Stock" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Products" MODIFY ("GroupID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Products" MODIFY ("UseMultiColor" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Products" MODIFY ("CreateDate" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Products" MODIFY ("Active" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Products" MODIFY ("Detail" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table UsersInRoles
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."UsersInRoles" MODIFY ("Roles_RoleID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."UsersInRoles" MODIFY ("Users_UserID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."UsersInRoles" ADD CONSTRAINT "UsersInRoles_PK" PRIMARY KEY ("Roles_RoleID", "Users_UserID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
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
--  Constraints for Table ExcludeCoupons
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."ExcludeCoupons" ADD CONSTRAINT "ExcludeCoupons_PK" PRIMARY KEY ("CouponID", "GroupID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."ExcludeCoupons" MODIFY ("GroupID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."ExcludeCoupons" MODIFY ("CouponID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table Attributes
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."Attributes" ADD CONSTRAINT "Attributes_PK" PRIMARY KEY ("AttrID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."Attributes" MODIFY ("AttrName" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Attributes" MODIFY ("AttriGroupID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Attributes" MODIFY ("AttrID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table Customers
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."Customers" ADD CONSTRAINT "Customers_PK" PRIMARY KEY ("CustomerID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."Customers" MODIFY ("CustomerID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Customers" MODIFY ("Passwrord" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Customers" MODIFY ("FullName" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Customers" MODIFY ("Email" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Customers" MODIFY ("Status" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Customers" MODIFY ("VerificationCode" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Customers" MODIFY ("RegistrationDate" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table OrderDetails
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."OrderDetails" ADD CONSTRAINT "OrderDetails_PK" PRIMARY KEY ("DetailID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."OrderDetails" MODIFY ("OrderID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."OrderDetails" MODIFY ("ProductID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."OrderDetails" MODIFY ("Price" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."OrderDetails" MODIFY ("Quantity" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."OrderDetails" MODIFY ("Total" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."OrderDetails" MODIFY ("DetailID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table Districts
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."Districts" ADD CONSTRAINT "Districts_PK" PRIMARY KEY ("DistrictID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."Districts" MODIFY ("DistrictName" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Districts" MODIFY ("Type" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Districts" MODIFY ("ProvinceID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Districts" MODIFY ("DistrictID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table Configurations
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."Configurations" ADD CONSTRAINT "Configurations_PK" PRIMARY KEY ("ConfigName")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
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
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
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
--  Constraints for Table GroupProducts
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."GroupProducts" ADD CONSTRAINT "GroupProducts_PK" PRIMARY KEY ("GroupID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."GroupProducts" MODIFY ("GroupID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."GroupProducts" MODIFY ("GroupName" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."GroupProducts" MODIFY ("Priority" NOT NULL ENABLE);
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
--  Constraints for Table Advertises
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."Advertises" ADD CONSTRAINT "Advertises_PK" PRIMARY KEY ("AdvertiseID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."Advertises" MODIFY ("AdvertiseID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Advertises" MODIFY ("Active" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CartDetails
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."CartDetails" ADD CONSTRAINT "CartDetails_PK" PRIMARY KEY ("CartID", "ProductID", "ColorID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."CartDetails" MODIFY ("ProductID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."CartDetails" MODIFY ("ColorID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."CartDetails" MODIFY ("Quantity" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."CartDetails" MODIFY ("CartID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table Coupons
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."Coupons" ADD CONSTRAINT "Coupons_PK" PRIMARY KEY ("CouponID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."Coupons" MODIFY ("Code" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Coupons" MODIFY ("Discount" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Coupons" MODIFY ("Type" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Coupons" MODIFY ("FreeShip" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Coupons" MODIFY ("StartDate" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Coupons" MODIFY ("EndDate" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Coupons" MODIFY ("Indefinite" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Coupons" MODIFY ("Active" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Coupons" MODIFY ("CouponID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table Orders
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."Orders" ADD CONSTRAINT "Orders_PK" PRIMARY KEY ("OrderID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."Orders" MODIFY ("OrderID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Orders" MODIFY ("CustomerID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Orders" MODIFY ("PaymentID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Orders" MODIFY ("OrderDate" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Orders" MODIFY ("FullName" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Orders" MODIFY ("Address" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Orders" MODIFY ("ProvinceID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Orders" MODIFY ("DistrictID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Orders" MODIFY ("WardID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Orders" MODIFY ("Phone" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Orders" MODIFY ("TotalPrice" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Orders" MODIFY ("Discount" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Orders" MODIFY ("PaymentDate" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Orders" MODIFY ("Paid" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Orders" MODIFY ("CouponCode" NOT NULL ENABLE);
 
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
--  Constraints for Table Carts
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."Carts" ADD CONSTRAINT "Carts_PK" PRIMARY KEY ("CartID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."Carts" MODIFY ("CookieID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Carts" MODIFY ("CreateDate" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Carts" MODIFY ("CartID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table Menus
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."Menus" ADD CONSTRAINT "Menus_PK" PRIMARY KEY ("MenuID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."Menus" MODIFY ("MenuID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Menus" MODIFY ("MenuName" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Menus" MODIFY ("Link" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Menus" MODIFY ("Hot" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table OrderStatuses
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."OrderStatuses" ADD CONSTRAINT "OrderStatuses_PK" PRIMARY KEY ("OrderStatusID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."OrderStatuses" MODIFY ("OrderStatusName" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."OrderStatuses" MODIFY ("OrderStatusID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table Roles
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."Roles" ADD CONSTRAINT "Roles_PK" PRIMARY KEY ("RoleID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."Roles" MODIFY ("RoleID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Roles" MODIFY ("RoleName" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table Comments
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."Comments" ADD CONSTRAINT "Comments_PK" PRIMARY KEY ("CommentID", "ProductID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."Comments" MODIFY ("ProductID" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Comments" MODIFY ("CommentID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table Provinces
--------------------------------------------------------

  ALTER TABLE "ECOMMERCE"."Provinces" ADD CONSTRAINT "Provinces_PK" PRIMARY KEY ("ProvinceID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "ECOMMERCE"."Provinces" MODIFY ("ProvinceName" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Provinces" MODIFY ("Type" NOT NULL ENABLE);
 
  ALTER TABLE "ECOMMERCE"."Provinces" MODIFY ("ProvinceID" NOT NULL ENABLE);
