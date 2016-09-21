
--Create database

USE [master]
GO
IF NOT EXISTS (SELECT [name] FROM sys.databases WHERE name = N'ecommerce')
BEGIN
CREATE DATABASE [ecommerce] COLLATE SQL_Latin1_General_CP1_CI_AS
END
GO
EXEC dbo.sp_dbcmptlevel @dbname=N'ecommerce', @new_cmptlevel=120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
BEGIN
	EXEC [ecommerce].[dbo].[sp_fulltext_database] @action = 'enable'
END
GO
ALTER DATABASE [ecommerce] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [ecommerce] SET ANSI_NULLS OFF
GO
ALTER DATABASE [ecommerce] SET ANSI_PADDING OFF
GO
ALTER DATABASE [ecommerce] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [ecommerce] SET ARITHABORT OFF
GO
ALTER DATABASE [ecommerce] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [ecommerce] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [ecommerce] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [ecommerce] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [ecommerce] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [ecommerce] SET CURSOR_DEFAULT GLOBAL
GO
ALTER DATABASE [ecommerce] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [ecommerce] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [ecommerce] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [ecommerce] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [ecommerce] SET DISABLE_BROKER
GO
ALTER DATABASE [ecommerce] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [ecommerce] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [ecommerce] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ecommerce] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ecommerce] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [ecommerce] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [ecommerce] SET READ_WRITE
GO
ALTER DATABASE [ecommerce] SET RECOVERY SIMPLE
GO
ALTER DATABASE [ecommerce] SET MULTI_USER
GO
ALTER DATABASE [ecommerce] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [ecommerce] SET DB_CHAINING OFF
GO

USE [ecommerce]
GO

--Table dbo.Advertise

USE [ecommerce]
GO

--Create table and its columns
CREATE TABLE [dbo].[Advertise] (
	[AdvertiseID] [int] NOT NULL IDENTITY (1, 1),
	[AdvertiseName] [nvarchar](50) NULL,
	[Description] [nvarchar](255) NULL,
	[ImageUrl] [nvarchar](255) NULL,
	[Link] [nvarchar](255) NULL,
	[Width] [int] NULL,
	[Height] [int] NULL,
	[Position] [varchar](10) NULL,
	[Active] [bit] NULL);
GO

--Table dbo.Cart

USE [ecommerce]
GO

--Create table and its columns
CREATE TABLE [dbo].[Cart] (
	[CartID] [int] NOT NULL IDENTITY (1, 1),
	[CookieID] [char](10) NOT NULL,
	[CustomerID] [int] NULL,
	[CreateDate] [smalldatetime] NOT NULL);
GO

--Table dbo.CartDetails

USE [ecommerce]
GO

--Create table and its columns
CREATE TABLE [dbo].[CartDetails] (
	[CartID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ColorID] [int] NOT NULL,
	[Quantity] [int] NOT NULL);
GO

--Table dbo.Color

USE [ecommerce]
GO

--Create table and its columns
CREATE TABLE [dbo].[Color] (
	[ColorID] [int] NOT NULL IDENTITY (1, 1),
	[ColorName] [nvarchar](20) NOT NULL,
	[HexCode] [char](6) NULL);
GO

SET IDENTITY_INSERT [dbo].[Color] ON
GO
INSERT INTO [dbo].[Color] ([ColorID], [ColorName], [HexCode])
	VALUES (1, N'Đỏ', N'FF0D0D')

GO
INSERT INTO [dbo].[Color] ([ColorID], [ColorName], [HexCode])
	VALUES (2, N'Đen', N'000000')

GO
INSERT INTO [dbo].[Color] ([ColorID], [ColorName], [HexCode])
	VALUES (3, N'Vàng', N'FFFB0A')

GO
INSERT INTO [dbo].[Color] ([ColorID], [ColorName], [HexCode])
	VALUES (4, N'Hồng', N'FF0AB1')

GO
INSERT INTO [dbo].[Color] ([ColorID], [ColorName], [HexCode])
	VALUES (5, N'Xanh dương', N'0A8DFF')

GO
INSERT INTO [dbo].[Color] ([ColorID], [ColorName], [HexCode])
	VALUES (6, N'Cam', N'FF7C0A')

GO
INSERT INTO [dbo].[Color] ([ColorID], [ColorName], [HexCode])
	VALUES (7, N'Xanh lá', N'02C736')

GO
INSERT INTO [dbo].[Color] ([ColorID], [ColorName], [HexCode])
	VALUES (8, N'Tím', N'7A00CC')

GO
SET IDENTITY_INSERT [dbo].[Color] OFF
GO

--Table dbo.ColorProducts

USE [ecommerce]
GO

--Create table and its columns
CREATE TABLE [dbo].[ColorProducts] (
	[ProductID] [int] NOT NULL,
	[ColorID] [int] NOT NULL);
GO

--Table dbo.Comment

USE [ecommerce]
GO

--Create table and its columns
CREATE TABLE [dbo].[Comment] (
	[CommentID] [int] NOT NULL IDENTITY (1, 1),
	[ProductID] [int] NOT NULL,
	[CommentContent] [nvarchar](1000) NULL,
	[CommentTime] [smalldatetime] NULL,
	[CustomerID] [int] NULL,
	[Rate] [tinyint] NULL);
GO

--Table dbo.Configurations

USE [ecommerce]
GO

--Create table and its columns
CREATE TABLE [dbo].[Configurations] (
	[ConfigName] [nvarchar](30) NOT NULL,
	[Value] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](255) NULL);
GO

INSERT INTO [dbo].[Configurations] ([ConfigName], [Value], [Description])
	VALUES (N'product_per_page', N'5', N'Số sản phẩm trên 1 trang')

GO
INSERT INTO [dbo].[Configurations] ([ConfigName], [Value], [Description])
	VALUES (N'site_title', N'HiTha Shop', N'Tiêu đề trang web')

GO
INSERT INTO [dbo].[Configurations] ([ConfigName], [Value], [Description])
	VALUES (N'support_email', N'admin@sieunoob.vn', N'Email hỗ trợ')

GO
INSERT INTO [dbo].[Configurations] ([ConfigName], [Value], [Description])
	VALUES (N'support_phone', N'231232131231', N'Số điện thoại hỗ trợ')

GO

--Table dbo.Contact

USE [ecommerce]
GO

--Create table and its columns
CREATE TABLE [dbo].[Contact] (
	[ContactID] [int] NOT NULL IDENTITY (1, 1),
	[FullName] [nvarchar](50) NULL,
	[Email] [varchar](80) NULL,
	[Phone] [varchar](11) NULL,
	[Message] [nvarchar](1000) NULL,
	[CustomerID] [int] NULL,
	[IP] [varchar](50) NULL);
GO

--Table dbo.Coupon

USE [ecommerce]
GO

--Create table and its columns
CREATE TABLE [dbo].[Coupon] (
	[CouponID] [int] NOT NULL IDENTITY (1, 1),
	[Code] [varchar](10) NULL,
	[Discount] [int] NULL,
	[Type] [varchar](10) NULL,
	[FreeShip] [bit] NULL,
	[StartDate] [smalldatetime] NOT NULL,
	[EndDate] [smalldatetime] NOT NULL,
	[Indefinite] [bit] NULL,
	[Active] [bit] NULL);
GO

--Table dbo.Customers

USE [ecommerce]
GO

--Create table and its columns
CREATE TABLE [dbo].[Customers] (
	[CustomerID] [int] NOT NULL IDENTITY (1, 1),
	[FacebookID] [bigint] NULL,
	[GoogleID] [varchar](20) NULL,
	[Username] [varchar](25) NULL,
	[Passwrord] [varchar](100) NULL,
	[FullName] [nvarchar](50) NULL,
	[Email] [varchar](80) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[ProvinceID] [int] NULL,
	[DistrictID] [int] NULL,
	[Phone] [varchar](11) NULL,
	[Status] [varchar](10) NOT NULL,
	[VerificationCode] [varchar](64) NULL,
	[RegistrationDate] [smalldatetime] NOT NULL);
GO

SET IDENTITY_INSERT [dbo].[Customers] ON
GO
INSERT INTO [dbo].[Customers] ([CustomerID], [FacebookID], [GoogleID], [Username], [Passwrord], [FullName], [Email], [Address], [ProvinceID], [DistrictID], [Phone], [Status], [VerificationCode], [RegistrationDate])
	VALUES (2, NULL, NULL, N'hienlt0610', N'123456789', NULL, N'hienlt0610@gmail.com', NULL, NULL, NULL, NULL, N'ok', NULL, CAST(0xa6860000 AS smalldatetime))

GO
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO

--Table dbo.Districts

USE [ecommerce]
GO

--Create table and its columns
CREATE TABLE [dbo].[Districts] (
	[DistrictID] [int] NOT NULL IDENTITY (1, 1),
	[DistrictName] [nvarchar](50) NULL,
	[ProvinceID] [int] NULL,
	[Type] [varchar](10) NULL);
GO

--Table dbo.ExcludeCoupon

USE [ecommerce]
GO

--Create table and its columns
CREATE TABLE [dbo].[ExcludeCoupon] (
	[CouponID] [int] NOT NULL,
	[GroupID] [int] NOT NULL,
	[Description] [nvarchar](50) NULL);
GO

--Table dbo.GroupProducts

USE [ecommerce]
GO

--Create table and its columns
CREATE TABLE [dbo].[GroupProducts] (
	[GroupID] [int] NOT NULL IDENTITY (1, 1),
	[GroupName] [nvarchar](50) NOT NULL,
	[ParentGroupID] [int] NULL,
	[Icon] [varchar](100) NULL,
	[Priority] [int] NOT NULL CONSTRAINT [DF_GroupProducts_Priority] DEFAULT ((0)));
GO

SET IDENTITY_INSERT [dbo].[GroupProducts] ON
GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (1, N'Thời trang', NULL, N'diamond', 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (2, N'Thời trang nam', 1, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (3, N'Quần áo nam', 2, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (4, N'Giày dép', 2, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (6, N'Phụ kiện', 2, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (7, N'Thời trang nữ', 1, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (8, N'Quần áo nữ', 7, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (9, N'Túi xách', 7, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (10, N'Phụ kiện thời trang', 7, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (11, N'Giày dép nữ', 7, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (12, N'Thời trang trẻ em', 1, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (13, N'Trẻ sơ sinh - Trẻ nhỏ', 12, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (14, N'Trẻ em', 12, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (15, N'Đồng hồ trang sức', NULL, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (16, N'Đồng hồ Nam - Nữ', 15, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (17, N'Đồng hồ đeo tay', 16, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (18, N'Dây đồng hồ', 16, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (19, N'Hộp đồng hồ', 16, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (20, N'Trang sức', 15, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (21, N'Trang sức cao cấp', 20, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (22, N'Trang sức thời trang', 20, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (23, N'Trang sức nam', 20, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (24, N'Trang sức trẻ em', 20, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (25, N'Đồ điện tử', NULL, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (26, N'Máy ảnh máy quay', 25, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (27, N'Ống nhòm, kính thiên văn', 26, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (28, N'Máy quay phim', 26, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (29, N'Máy ảnh', 26, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (30, N'Âm thanh gia đình', 25, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (31, N'Âm ly', 30, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (32, N'Loa chủ & Loa trầm', 30, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (33, N'Thiết bị âm thanh gia đình', 30, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (34, N'Sức khỏe & Làm đẹp', NULL, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (35, N'Làm đẹp', 34, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (36, N'Nước hoa', 35, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (37, N'Trang điểm', 35, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (38, N'Chăm sóc da', 35, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (39, N'Tăng cường sức khỏe và dinh dưỡng', 34, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (40, N'Thực phẩm chức năng dinh dưỡng', 39, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (41, N'Hình xăm & nghệ thuật xăm', 39, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (42, N'Message', 39, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (43, N'Thiết bị chăm sóc sức khỏe', 34, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (44, N'Thiết bị CSSK Cá nhân', 43, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (45, N'Thiết bị y tế', 43, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (46, N'Hỗ trợ đi lại, xe lăn', 43, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (47, N'Máy tính & ĐTDĐ', NULL, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (48, N'Điện thoại di động', 47, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (49, N'Smart Watchs', 48, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (50, N'Điện thoại di động', 48, NULL, 1)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (51, N'Phụ kiện điện thoại', 48, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (52, N'Máy tính', 47, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (53, N'Máy tính bàn', 52, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (54, N'Máy tính bảng', 52, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (55, N'Laptops & Notebooks', 52, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (56, N'Gia đình & trẻ em', NULL, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (57, N'Nội ngoại thất', 56, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (58, N'Phòng tắm', 57, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (59, N'Phòng ngủ', 57, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (60, N'Nhà bếp, phòng ăn, bar', 57, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (61, N'Trang trí nội ngoại thất', 57, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (62, N'Đồ trẻ em', 56, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (63, N'Đồ dùng trẻ em', 62, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (64, N'Sức khỏe và an toàn cho trẻ', 62, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (65, N'Trang trí phòng trẻ', 62, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (66, N'Đồ chơi trẻ em', 62, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (67, N'Chăm sóc thú cưng', 56, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (68, N'Bể cá - Cá', 67, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (69, N'Chăm sóc Chim', 67, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (70, N'Chăm sóc Mèo', 67, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (71, N'Chăm sóc Chó', 67, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (72, N'Đồ thể thao', NULL, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (73, N'Đồ chơi Golf', 72, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (74, N'Gậy Golf', 73, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (75, N'Túi Golf', 73, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (76, N'Phụ kiện chơi Golf', 73, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (77, N'Các môn thể thao khác', 72, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (78, N'Đạp xe', 77, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (79, N'Thể thao ngoài trời', 77, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (80, N'Thể thao đồng đội', 77, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (81, N'Giải trí & Sở thích', NULL, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (82, N'Đồ chơi - Sở thích', 81, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (83, N'Đồ chơi xây dựng', 82, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (84, N'Xe mô hình', 82, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (85, N'Đồ chơi giáo dục', 82, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (86, N'Búp bê - Gấu bông', 81, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (87, N'Gấu bông', 86, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (88, N'Búp bê', 86, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (89, N'Trò chơi Video', 81, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (90, N'Trò chơi', 89, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (91, N'Phụ kiện', 89, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (92, N'Công nghiệp', NULL, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (93, N'Thiết bị điện', 92, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (94, N'Thiết bị thí nghiệm', 93, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (95, N'Thiết bị tự động hóa', 93, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (96, N'Sức khỏe và khoa học đời sống', 92, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (97, N'Thiết bị thẩm mỹ', 96, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (98, N'Ô tô - Xe máy', NULL, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (99, N'Tivi', 25, NULL, 0)

GO
INSERT INTO [dbo].[GroupProducts] ([GroupID], [GroupName], [ParentGroupID], [Icon], [Priority])
	VALUES (100, N'Phụ kiện thiết bị', 52, NULL, 0)

GO
SET IDENTITY_INSERT [dbo].[GroupProducts] OFF
GO

--Table dbo.ImageProducts

USE [ecommerce]
GO

--Create table and its columns
CREATE TABLE [dbo].[ImageProducts] (
	[ImageID] [int] NOT NULL IDENTITY (1, 1),
	[Caption] [nvarchar](100) NOT NULL,
	[ImageUrl] [varchar](255) NULL,
	[ProductID] [int] NULL);
GO

SET IDENTITY_INSERT [dbo].[ImageProducts] ON
GO
INSERT INTO [dbo].[ImageProducts] ([ImageID], [Caption], [ImageUrl], [ProductID])
	VALUES (2, N'a', N'173408_1.jpg', 8)

GO
SET IDENTITY_INSERT [dbo].[ImageProducts] OFF
GO

--Table dbo.Menus

USE [ecommerce]
GO

--Create table and its columns
CREATE TABLE [dbo].[Menus] (
	[MenuID] [int] NOT NULL IDENTITY (1, 1),
	[MenuName] [nvarchar](50) NULL,
	[Link] [nvarchar](255) NULL,
	[ParentMenuID] [int] NULL,
	[Priority] [tinyint] NULL CONSTRAINT [DF_Menus_Priority] DEFAULT ((0)),
	[Label] [nvarchar](20) NULL,
	[Hot] [bit] NULL CONSTRAINT [DF_Menus_Hot] DEFAULT ((0)));
GO

SET IDENTITY_INSERT [dbo].[Menus] ON
GO
INSERT INTO [dbo].[Menus] ([MenuID], [MenuName], [Link], [ParentMenuID], [Priority], [Label], [Hot])
	VALUES (1, N'Home', N'/Home', NULL, 0, N'', CAST ('True' AS bit))

GO
INSERT INTO [dbo].[Menus] ([MenuID], [MenuName], [Link], [ParentMenuID], [Priority], [Label], [Hot])
	VALUES (2, N'Khuyến mãi', N'/KhuyenMai', NULL, 0, NULL, CAST ('False' AS bit))

GO
SET IDENTITY_INSERT [dbo].[Menus] OFF
GO

--Table dbo.OptionGroups

USE [ecommerce]
GO

--Create table and its columns
CREATE TABLE [dbo].[OptionGroups] (
	[OptionGroupID] [int] NOT NULL IDENTITY (1, 1),
	[OptionGroupName] [nvarchar](50) NULL);
GO

--Table dbo.Options

USE [ecommerce]
GO

--Create table and its columns
CREATE TABLE [dbo].[Options] (
	[OptionID] [int] NOT NULL IDENTITY (1, 1),
	[OptionName] [nvarchar](50) NULL,
	[OptionGroupID] [int] NULL);
GO

--Table dbo.OrderDetails

USE [ecommerce]
GO

--Create table and its columns
CREATE TABLE [dbo].[OrderDetails] (
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Price] [bigint] NULL,
	[Quantity] [tinyint] NULL,
	[ColorID] [int] NULL,
	[Total] [bigint] NULL);
GO

--Table dbo.Orders

USE [ecommerce]
GO

--Create table and its columns
CREATE TABLE [dbo].[Orders] (
	[OrderID] [int] NOT NULL IDENTITY (1, 1),
	[CustomerID] [int] NOT NULL,
	[PaymentID] [int] NULL,
	[OrderDate] [smalldatetime] NULL,
	[FullName] [nvarchar](50) NULL,
	[Email] [varchar](80) NULL,
	[Address] [nvarchar](100) NULL,
	[ProvinceID] [int] NULL,
	[DistrictID] [int] NULL,
	[Phone] [varchar](11) NULL,
	[TotalPrice] [bigint] NULL,
	[Discount] [bigint] NULL,
	[PaymentDate] [smalldatetime] NOT NULL,
	[Paid] [bit] NULL,
	[CouponCode] [varchar](10) NULL,
	[Status] [varchar](10) NULL);
GO

--Table dbo.Payments

USE [ecommerce]
GO

--Create table and its columns
CREATE TABLE [dbo].[Payments] (
	[PaymentID] [int] NOT NULL IDENTITY (1, 1),
	[PaymentType] [varchar](10) NULL);
GO

--Table dbo.ProductOptions

USE [ecommerce]
GO

--Create table and its columns
CREATE TABLE [dbo].[ProductOptions] (
	[ProductID] [int] NOT NULL,
	[OptionID] [int] NOT NULL,
	[Value] [nvarchar](50) NULL,
	[Priority] [tinyint] NULL);
GO

--Table dbo.Products

USE [ecommerce]
GO

--Create table and its columns
CREATE TABLE [dbo].[Products] (
	[ProductID] [int] NOT NULL IDENTITY (1, 1),
	[ProductName] [nvarchar](120) NOT NULL,
	[Detail] [nvarchar](MAX) NOT NULL,
	[Price] [bigint] NOT NULL CONSTRAINT [DF_Products_Price] DEFAULT ((0)),
	[SalePrice] [bigint] NOT NULL CONSTRAINT [DF_Products_PriceNew] DEFAULT ((0)),
	[Stock] [int] NOT NULL CONSTRAINT [DF_Products_Quantity] DEFAULT ((0)),
	[GroupID] [int] NOT NULL,
	[UseMultiColor] [bit] NOT NULL CONSTRAINT [DF_Products_VariationSizeColor] DEFAULT ((0)),
	[CreateDate] [smalldatetime] NOT NULL,
	[Active] [bit] NOT NULL CONSTRAINT [DF_Products_Active] DEFAULT ((1)));
GO

SET IDENTITY_INSERT [dbo].[Products] ON
GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [Detail], [Price], [SalePrice], [Stock], [GroupID], [UseMultiColor], [CreateDate], [Active])
	VALUES (3, N'Giày Biti''s Nữ HUNTER LITEKNIT - DSW051333XDG', N'fsdfsdfdsfds', 495000, 500, 50, 1, CAST ('False' AS bit), CAST(0xa6840000 AS smalldatetime), CAST ('True' AS bit))

GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [Detail], [Price], [SalePrice], [Stock], [GroupID], [UseMultiColor], [CreateDate], [Active])
	VALUES (5, N'Pin sạc dự phòng Xiaomi 10000mAh', N'111111111', 600000, 100, 100, 51, CAST ('False' AS bit), CAST(0xa6840000 AS smalldatetime), CAST ('True' AS bit))

GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [Detail], [Price], [SalePrice], [Stock], [GroupID], [UseMultiColor], [CreateDate], [Active])
	VALUES (7, N'Sạc nhanh Aukey PA-T2 3 cổng USB 42W', N'fsdfsdfdsfdsfds', 599000, 0, 12, 51, CAST ('False' AS bit), CAST(0xa6840000 AS smalldatetime), CAST ('True' AS bit))

GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [Detail], [Price], [SalePrice], [Stock], [GroupID], [UseMultiColor], [CreateDate], [Active])
	VALUES (8, N'Xe máy Honda Vision 2016', N'sfdsfsdfsdfds', 36100000, 23000000, 10, 98, CAST ('False' AS bit), CAST(0xa6840000 AS smalldatetime), CAST ('True' AS bit))

GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [Detail], [Price], [SalePrice], [Stock], [GroupID], [UseMultiColor], [CreateDate], [Active])
	VALUES (9, N'Canon 700D + Lens 18-55 STM', N'fdsfdsfdsfdsfds', 14800000, 9666000, 20, 29, CAST ('False' AS bit), CAST(0xa6880000 AS smalldatetime), CAST ('True' AS bit))

GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [Detail], [Price], [SalePrice], [Stock], [GroupID], [UseMultiColor], [CreateDate], [Active])
	VALUES (15, N'Tivi LED ASANZO 32S500T2 32 inch', N'Tivi LED ASANZO 32S500T2 32 inch', 419900, 3100000, 50, 99, CAST ('False' AS bit), CAST(0xa6890048 AS smalldatetime), CAST ('True' AS bit))

GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [Detail], [Price], [SalePrice], [Stock], [GroupID], [UseMultiColor], [CreateDate], [Active])
	VALUES (17, N'Thẻ Nhớ Sandisk Micro SD Ultra 32GB Class 10  - 48MB', N'Thẻ Nhớ Sandisk Micro SD Ultra 32GB Class 10 - 48MB/s', 425000, 239000, 25, 51, CAST ('False' AS bit), CAST(0xa689004e AS smalldatetime), CAST ('True' AS bit))

GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [Detail], [Price], [SalePrice], [Stock], [GroupID], [UseMultiColor], [CreateDate], [Active])
	VALUES (18, N'Đồ Chơi Gỗ Mô Hình Vietoys Xe Cũi Thả Hình VT3P-0109', N'Đồ Chơi Gỗ Mô Hình Vietoys Xe Cũi Thả Hình VT3P-0109', 158000, 95000, 100, 66, CAST ('False' AS bit), CAST(0xa6890052 AS smalldatetime), CAST ('True' AS bit))

GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [Detail], [Price], [SalePrice], [Stock], [GroupID], [UseMultiColor], [CreateDate], [Active])
	VALUES (19, N'Ổ Cứng Trong PC WD 1TB (64MB) 7200rpm 3.5" Blue™ - WD10EZEX', N'Ổ Cứng Trong PC WD 1TB (64MB) 7200rpm 3.5" Blue™ - WD10EZEX', 1210000, 1160000, 16, 100, CAST ('False' AS bit), CAST(0xa6890057 AS smalldatetime), CAST ('True' AS bit))

GO
INSERT INTO [dbo].[Products] ([ProductID], [ProductName], [Detail], [Price], [SalePrice], [Stock], [GroupID], [UseMultiColor], [CreateDate], [Active])
	VALUES (20, N'Máy In Laser Canon LBP 2900', N'Máy In Laser Canon LBP 2900

', 2700000, 2625000, 10, 100, CAST ('False' AS bit), CAST(0xa689005a AS smalldatetime), CAST ('True' AS bit))

GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO

--Table dbo.Provinces

USE [ecommerce]
GO

--Create table and its columns
CREATE TABLE [dbo].[Provinces] (
	[ProvinceID] [int] NOT NULL IDENTITY (1, 1),
	[ProvinceName] [nvarchar](50) NOT NULL,
	[Type] [varchar](10) NOT NULL);
GO

--Table dbo.Quantity

USE [ecommerce]
GO

--Create table and its columns
CREATE TABLE [dbo].[Quantity] (
	[ProductID] [int] NOT NULL,
	[ColorID] [int] NOT NULL,
	[Stock] [int] NULL CONSTRAINT [DF_Quantity_Stock] DEFAULT ((0)));
GO

--Table dbo.Users

USE [ecommerce]
GO

--Create table and its columns
CREATE TABLE [dbo].[Users] (
	[UserID] [int] NOT NULL IDENTITY (1, 1),
	[Username] [varchar](24) NULL,
	[Password] [varchar](100) NULL,
	[FullName] [nvarchar](50) NULL,
	[Email] [varbinary](80) NULL,
	[UserRule] [tinyint] NULL,
	[IP] [varchar](50) NULL,
	[Status] [varchar](10) NOT NULL,
	[RegistrationDate] [smalldatetime] NULL);
GO

--Indexes of table dbo.Advertise
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Advertise] ADD CONSTRAINT [PK_Advertise] PRIMARY KEY CLUSTERED ([AdvertiseID]) 
GO

--Indexes of table dbo.Cart
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Cart] ADD CONSTRAINT [PK_Card] PRIMARY KEY CLUSTERED ([CartID]) 
GO

--Indexes of table dbo.CartDetails
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[CartDetails] ADD CONSTRAINT [PK_CartDetails_1] PRIMARY KEY CLUSTERED ([CartID], [ProductID], [ColorID]) 
GO

--Indexes of table dbo.Color
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Color] ADD CONSTRAINT [PK_Color_1] PRIMARY KEY CLUSTERED ([ColorID]) 
GO

--Indexes of table dbo.ColorProducts
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[ColorProducts] ADD CONSTRAINT [PK_ColorProducts] PRIMARY KEY CLUSTERED ([ColorID], [ProductID]) 
GO

--Indexes of table dbo.Comment
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Comment] ADD CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED ([CommentID], [ProductID]) 
GO

--Indexes of table dbo.Configurations
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Configurations] ADD CONSTRAINT [PK_Configurations_1] PRIMARY KEY CLUSTERED ([ConfigName]) 
GO

--Indexes of table dbo.Contact
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Contact] ADD CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED ([ContactID]) 
GO

--Indexes of table dbo.Coupon
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Coupon] ADD CONSTRAINT [PK_Couple] PRIMARY KEY CLUSTERED ([CouponID]) 
GO

--Indexes of table dbo.Customers
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Customers] ADD CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED ([CustomerID]) 
GO

--Indexes of table dbo.Districts
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Districts] ADD CONSTRAINT [PK_Ward] PRIMARY KEY CLUSTERED ([DistrictID]) 
GO

--Indexes of table dbo.ExcludeCoupon
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[ExcludeCoupon] ADD CONSTRAINT [PK_ExcludeCoupon] PRIMARY KEY CLUSTERED ([CouponID], [GroupID]) 
GO

--Indexes of table dbo.GroupProducts
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[GroupProducts] ADD CONSTRAINT [PK_GroupProduct] PRIMARY KEY CLUSTERED ([GroupID]) 
GO

--Indexes of table dbo.ImageProducts
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[ImageProducts] ADD CONSTRAINT [PK_ImageProduct] PRIMARY KEY CLUSTERED ([ImageID]) 
GO

--Indexes of table dbo.Menus
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Menus] ADD CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED ([MenuID]) 
GO

--Indexes of table dbo.OptionGroups
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[OptionGroups] ADD CONSTRAINT [PK_OptionGroup] PRIMARY KEY CLUSTERED ([OptionGroupID]) 
GO

--Indexes of table dbo.Options
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Options] ADD CONSTRAINT [PK_Options] PRIMARY KEY CLUSTERED ([OptionID]) 
GO

--Indexes of table dbo.OrderDetails
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[OrderDetails] ADD CONSTRAINT [PK_OrderDetails_1] PRIMARY KEY CLUSTERED ([OrderID], [ProductID]) 
GO

--Indexes of table dbo.Orders
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED ([OrderID]) 
GO

--Indexes of table dbo.Payments
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Payments] ADD CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED ([PaymentID]) 
GO

--Indexes of table dbo.ProductOptions
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[ProductOptions] ADD CONSTRAINT [PK_ProductOptions] PRIMARY KEY CLUSTERED ([ProductID], [OptionID]) 
GO

--Indexes of table dbo.Products
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Products] ADD CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([ProductID]) 
GO

--Indexes of table dbo.Provinces
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Provinces] ADD CONSTRAINT [PK_Provinces] PRIMARY KEY CLUSTERED ([ProvinceID]) 
GO

--Indexes of table dbo.Quantity
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Quantity] ADD CONSTRAINT [PK_Quantity] PRIMARY KEY CLUSTERED ([ProductID], [ColorID]) 
GO

--Indexes of table dbo.Users
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([UserID]) 
GO

--Foreign Keys

USE [ecommerce]
GO
ALTER TABLE [dbo].[Cart] WITH CHECK ADD CONSTRAINT [FK_Cart_Customers] 
	FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customers] ([CustomerID])
	ON UPDATE SET NULL
	ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Customers]
GO
ALTER TABLE [dbo].[CartDetails] WITH CHECK ADD CONSTRAINT [FK_CartDetails_Cart] 
	FOREIGN KEY ([CartID]) REFERENCES [dbo].[Cart] ([CartID])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[CartDetails] CHECK CONSTRAINT [FK_CartDetails_Cart]
GO
ALTER TABLE [dbo].[CartDetails] WITH CHECK ADD CONSTRAINT [FK_CartDetails_Color] 
	FOREIGN KEY ([ColorID]) REFERENCES [dbo].[Color] ([ColorID])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[CartDetails] CHECK CONSTRAINT [FK_CartDetails_Color]
GO
ALTER TABLE [dbo].[CartDetails] WITH CHECK ADD CONSTRAINT [FK_CartDetails_Products] 
	FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Products] ([ProductID])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[CartDetails] CHECK CONSTRAINT [FK_CartDetails_Products]
GO
ALTER TABLE [dbo].[ColorProducts] WITH CHECK ADD CONSTRAINT [FK_ColorProducts_Color] 
	FOREIGN KEY ([ColorID]) REFERENCES [dbo].[Color] ([ColorID])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[ColorProducts] CHECK CONSTRAINT [FK_ColorProducts_Color]
GO
ALTER TABLE [dbo].[ColorProducts] WITH CHECK ADD CONSTRAINT [FK_ColorProducts_Products1] 
	FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Products] ([ProductID])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[ColorProducts] CHECK CONSTRAINT [FK_ColorProducts_Products1]
GO
ALTER TABLE [dbo].[Comment] WITH CHECK ADD CONSTRAINT [FK_Comment_Customers] 
	FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customers] ([CustomerID])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Customers]
GO
ALTER TABLE [dbo].[Comment] WITH CHECK ADD CONSTRAINT [FK_Comment_Products] 
	FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Products] ([ProductID])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Products]
GO
ALTER TABLE [dbo].[Contact] WITH CHECK ADD CONSTRAINT [FK_Contact_Customers] 
	FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customers] ([CustomerID])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK_Contact_Customers]
GO
ALTER TABLE [dbo].[Customers] WITH CHECK ADD CONSTRAINT [FK_Customers_Districts] 
	FOREIGN KEY ([DistrictID]) REFERENCES [dbo].[Districts] ([DistrictID])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Districts]
GO
ALTER TABLE [dbo].[Customers] WITH CHECK ADD CONSTRAINT [FK_Customers_Provinces] 
	FOREIGN KEY ([ProvinceID]) REFERENCES [dbo].[Provinces] ([ProvinceID])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Provinces]
GO
ALTER TABLE [dbo].[Districts] WITH CHECK ADD CONSTRAINT [FK_Districts_Provinces] 
	FOREIGN KEY ([ProvinceID]) REFERENCES [dbo].[Provinces] ([ProvinceID])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[Districts] CHECK CONSTRAINT [FK_Districts_Provinces]
GO
ALTER TABLE [dbo].[ExcludeCoupon] WITH CHECK ADD CONSTRAINT [FK_ExcludeCoupon_Coupon] 
	FOREIGN KEY ([CouponID]) REFERENCES [dbo].[Coupon] ([CouponID])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[ExcludeCoupon] CHECK CONSTRAINT [FK_ExcludeCoupon_Coupon]
GO
ALTER TABLE [dbo].[ExcludeCoupon] WITH CHECK ADD CONSTRAINT [FK_ExcludeCoupon_GroupProducts] 
	FOREIGN KEY ([GroupID]) REFERENCES [dbo].[GroupProducts] ([GroupID])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[ExcludeCoupon] CHECK CONSTRAINT [FK_ExcludeCoupon_GroupProducts]
GO
ALTER TABLE [dbo].[GroupProducts] WITH CHECK ADD CONSTRAINT [FK_GroupProducts_GroupProducts] 
	FOREIGN KEY ([ParentGroupID]) REFERENCES [dbo].[GroupProducts] ([GroupID])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[GroupProducts] CHECK CONSTRAINT [FK_GroupProducts_GroupProducts]
GO
ALTER TABLE [dbo].[ImageProducts] WITH CHECK ADD CONSTRAINT [FK_ImageProducts_Products] 
	FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Products] ([ProductID])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[ImageProducts] CHECK CONSTRAINT [FK_ImageProducts_Products]
GO
ALTER TABLE [dbo].[Menus] WITH CHECK ADD CONSTRAINT [FK_Menus_Menus] 
	FOREIGN KEY ([ParentMenuID]) REFERENCES [dbo].[Menus] ([MenuID])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[Menus] CHECK CONSTRAINT [FK_Menus_Menus]
GO
ALTER TABLE [dbo].[Options] WITH CHECK ADD CONSTRAINT [FK_Options_OptionGroups] 
	FOREIGN KEY ([OptionGroupID]) REFERENCES [dbo].[OptionGroups] ([OptionGroupID])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[Options] CHECK CONSTRAINT [FK_Options_OptionGroups]
GO
ALTER TABLE [dbo].[OrderDetails] WITH CHECK ADD CONSTRAINT [FK_OrderDetails_Color] 
	FOREIGN KEY ([ColorID]) REFERENCES [dbo].[Color] ([ColorID])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Color]
GO
ALTER TABLE [dbo].[OrderDetails] WITH CHECK ADD CONSTRAINT [FK_OrderDetails_Orders] 
	FOREIGN KEY ([OrderID]) REFERENCES [dbo].[Orders] ([OrderID])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[OrderDetails] WITH CHECK ADD CONSTRAINT [FK_OrderDetails_Products] 
	FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Products] ([ProductID])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Orders] WITH CHECK ADD CONSTRAINT [FK_Orders_Districts] 
	FOREIGN KEY ([DistrictID]) REFERENCES [dbo].[Districts] ([DistrictID])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Districts]
GO
ALTER TABLE [dbo].[Orders] WITH CHECK ADD CONSTRAINT [FK_Orders_Payments] 
	FOREIGN KEY ([PaymentID]) REFERENCES [dbo].[Payments] ([PaymentID])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Payments]
GO
ALTER TABLE [dbo].[Orders] WITH CHECK ADD CONSTRAINT [FK_Orders_Provinces] 
	FOREIGN KEY ([ProvinceID]) REFERENCES [dbo].[Provinces] ([ProvinceID])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Provinces]
GO
ALTER TABLE [dbo].[ProductOptions] WITH CHECK ADD CONSTRAINT [FK_ProductOptions_Options] 
	FOREIGN KEY ([OptionID]) REFERENCES [dbo].[Options] ([OptionID])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[ProductOptions] CHECK CONSTRAINT [FK_ProductOptions_Options]
GO
ALTER TABLE [dbo].[ProductOptions] WITH CHECK ADD CONSTRAINT [FK_ProductOptions_Products] 
	FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Products] ([ProductID])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[ProductOptions] CHECK CONSTRAINT [FK_ProductOptions_Products]
GO
ALTER TABLE [dbo].[Products] WITH CHECK ADD CONSTRAINT [FK_Products_GroupProducts] 
	FOREIGN KEY ([GroupID]) REFERENCES [dbo].[GroupProducts] ([GroupID])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_GroupProducts]
GO
ALTER TABLE [dbo].[Quantity] WITH CHECK ADD CONSTRAINT [FK_Quantity_Color] 
	FOREIGN KEY ([ColorID]) REFERENCES [dbo].[Color] ([ColorID])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[Quantity] CHECK CONSTRAINT [FK_Quantity_Color]
GO
ALTER TABLE [dbo].[Quantity] WITH CHECK ADD CONSTRAINT [FK_Quantity_Products] 
	FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Products] ([ProductID])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[Quantity] CHECK CONSTRAINT [FK_Quantity_Products]
GO
