USE [ecommerce]
GO
SET IDENTITY_INSERT [dbo].[GroupProducts] ON 

INSERT [dbo].[GroupProducts] ([GroupID], [ParentGroupID], [GroupName], [Icon], [Priority]) VALUES (2, NULL, N'Điện gia dụng - Điện lạnh', N'plug', 0)
INSERT [dbo].[GroupProducts] ([GroupID], [ParentGroupID], [GroupName], [Icon], [Priority]) VALUES (3, NULL, N'Phụ kiện - Thiết bị số', N'headphones', 0)
INSERT [dbo].[GroupProducts] ([GroupID], [ParentGroupID], [GroupName], [Icon], [Priority]) VALUES (4, NULL, N'Máy ảnh - Quay phim', N'camera', 0)
INSERT [dbo].[GroupProducts] ([GroupID], [ParentGroupID], [GroupName], [Icon], [Priority]) VALUES (5, NULL, N'Điện thoại - Máy tính bảng', N'tablet', 0)
INSERT [dbo].[GroupProducts] ([GroupID], [ParentGroupID], [GroupName], [Icon], [Priority]) VALUES (12, NULL, N'Laptop - Thiết bị IT', N'laptop', 0)
INSERT [dbo].[GroupProducts] ([GroupID], [ParentGroupID], [GroupName], [Icon], [Priority]) VALUES (13, NULL, N'Tivi - Thiết bị nghe nhìn', N'television', 0)
INSERT [dbo].[GroupProducts] ([GroupID], [ParentGroupID], [GroupName], [Icon], [Priority]) VALUES (14, NULL, N'Làm đẹp - Sức khỏe', N'heart', 0)
INSERT [dbo].[GroupProducts] ([GroupID], [ParentGroupID], [GroupName], [Icon], [Priority]) VALUES (15, NULL, N'Thời trang - Phụ kiện', N'diamond', 0)
INSERT [dbo].[GroupProducts] ([GroupID], [ParentGroupID], [GroupName], [Icon], [Priority]) VALUES (16, NULL, N'Nhà cửa - Đời sống', N'home', 0)
INSERT [dbo].[GroupProducts] ([GroupID], [ParentGroupID], [GroupName], [Icon], [Priority]) VALUES (17, NULL, N'Bách hóa Online', N'coffee', 0)
INSERT [dbo].[GroupProducts] ([GroupID], [ParentGroupID], [GroupName], [Icon], [Priority]) VALUES (18, NULL, N'Mẹ và Bé', N'child', 0)
INSERT [dbo].[GroupProducts] ([GroupID], [ParentGroupID], [GroupName], [Icon], [Priority]) VALUES (19, NULL, N'Thể thao - Dã ngoại', N'soccer-ball-o', 0)
SET IDENTITY_INSERT [dbo].[GroupProducts] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [Detail], [Price], [SalePrice], [Stock], [GroupID], [UseMultiColor], [Active]) VALUES (1, N'
Ba lô Harati FX V1', N'Balo laptop Harati FX du?c thi?t k? mang phong cách và ki?u dáng th? thao, Balo phù h?p v?i nh?ng b?n cá tính và nang d?ng. Ba lô có d? b?n hoàn h?o khi may t? ch?t li?u v?i cao c?p và khóa kéo ch?t lu?ng cao cho b?n yên tâm s? d?ng lâu dài.', 188100, 99000, NULL, 2, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Detail], [Price], [SalePrice], [Stock], [GroupID], [UseMultiColor], [Active]) VALUES (3, N'fsdfsdfsdfds', N'gdfgfdgfdgfd', 0, 0, NULL, 4, NULL, 0)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Detail], [Price], [SalePrice], [Stock], [GroupID], [UseMultiColor], [Active]) VALUES (6, N'34223432', N'hgfhgfhgfh', 0, 0, NULL, 5, NULL, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([ColorID], [ColorName], [HexCode]) VALUES (1, N'Đỏ', N'FF0D0D')
INSERT [dbo].[Color] ([ColorID], [ColorName], [HexCode]) VALUES (2, N'Đen', N'000000')
INSERT [dbo].[Color] ([ColorID], [ColorName], [HexCode]) VALUES (3, N'Vàng', N'FFFB0A')
INSERT [dbo].[Color] ([ColorID], [ColorName], [HexCode]) VALUES (4, N'Hồng', N'FF0AB1')
INSERT [dbo].[Color] ([ColorID], [ColorName], [HexCode]) VALUES (5, N'Xanh dương', N'0A8DFF')
INSERT [dbo].[Color] ([ColorID], [ColorName], [HexCode]) VALUES (6, N'Cam', N'FF7C0A')
INSERT [dbo].[Color] ([ColorID], [ColorName], [HexCode]) VALUES (7, N'Xanh lá', N'02C736')
INSERT [dbo].[Color] ([ColorID], [ColorName], [HexCode]) VALUES (8, N'Tím', N'7A00CC')
SET IDENTITY_INSERT [dbo].[Color] OFF
INSERT [dbo].[ColorProducts] ([ProductID], [ColorID]) VALUES (1, 1)
INSERT [dbo].[ColorProducts] ([ProductID], [ColorID]) VALUES (1, 2)
INSERT [dbo].[ColorProducts] ([ProductID], [ColorID]) VALUES (1, 3)
INSERT [dbo].[ColorProducts] ([ProductID], [ColorID]) VALUES (1, 4)
INSERT [dbo].[Configurations] ([ConfigName], [Value], [Description]) VALUES (N'site_title', N'bán hàng', N'Tiêu đề trang web')
INSERT [dbo].[Configurations] ([ConfigName], [Value], [Description]) VALUES (N'support_email', N'admin@sieunoob.vn', N'Email hỗ trợ')
INSERT [dbo].[Configurations] ([ConfigName], [Value], [Description]) VALUES (N'support_phone', N'01207774140', N'Số điện thoại hỗ trợ')
SET IDENTITY_INSERT [dbo].[Menus] ON 

INSERT [dbo].[Menus] ([MenuID], [MenuName], [Link], [ParentMenuID], [Priority], [Label], [Hot]) VALUES (1, N'Home', N'/Home', NULL, 0, N'', 1)
INSERT [dbo].[Menus] ([MenuID], [MenuName], [Link], [ParentMenuID], [Priority], [Label], [Hot]) VALUES (2, N'Khuyến mãi', N'/KhuyenMai', NULL, 0, NULL, 0)
SET IDENTITY_INSERT [dbo].[Menus] OFF
