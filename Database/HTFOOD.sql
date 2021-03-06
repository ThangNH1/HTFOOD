USE [master]
GO

CREATE DATABASE [HTFOOD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HTFOOD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\HTFOOD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HTFOOD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\HTFOOD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HTFOOD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HTFOOD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HTFOOD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HTFOOD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HTFOOD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HTFOOD] SET ARITHABORT OFF 
GO
ALTER DATABASE [HTFOOD] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [HTFOOD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HTFOOD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HTFOOD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HTFOOD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HTFOOD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HTFOOD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HTFOOD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HTFOOD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HTFOOD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HTFOOD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HTFOOD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HTFOOD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HTFOOD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HTFOOD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HTFOOD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HTFOOD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HTFOOD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HTFOOD] SET  MULTI_USER 
GO
ALTER DATABASE [HTFOOD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HTFOOD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HTFOOD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HTFOOD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HTFOOD] SET DELAYED_DURABILITY = DISABLED 
GO
USE [HTFOOD]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_cthd](
	[mahd] [varchar](10) NULL,
	[masp] [varchar](10) NULL,
	[slmua] [int] NULL
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_hoadon](
	[mahd] [varchar](10) NOT NULL,
	[tenkhach] [nvarchar](50) NULL,
	[manv] [varchar](10) NULL,
	[ngayhd] [date] NULL,
	[tongtien] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[mahd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_nhanvien](
	[manv] [varchar](10) NOT NULL,
	[vitri] [nvarchar](20) NULL,
	[ten] [nvarchar](50) NULL,
	[matkhau] [varchar](41) NULL,
	[ngaysinh] [date] NULL,
	[cmnd] [varchar](12) NULL,
	[dienthoai] [varchar](12) NULL,
	[email] [varchar](50) NULL,
	[diachi] [nvarchar](255) NULL,
	[per] [int] NULL,
 CONSTRAINT [PK__tbl_nhan__7A21B37DF82E3DA6] PRIMARY KEY CLUSTERED 
(
	[manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_sanpham](
	[masp] [varchar](10) NOT NULL,
	[loai] [int] NULL,
	[tensp] [nvarchar](50) NULL,
	[nhacc] [nvarchar](50) NULL,
	[giatien] [decimal](18, 0) NULL,
	[giamgia] [int] NULL,
	[soluong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_cthd] ([mahd], [masp], [slmua]) VALUES (N'HD001', N'HT001', 2)
INSERT [dbo].[tbl_cthd] ([mahd], [masp], [slmua]) VALUES (N'HD001', N'HT003', 1)
INSERT [dbo].[tbl_cthd] ([mahd], [masp], [slmua]) VALUES (N'HD001', N'HT009', 1)
INSERT [dbo].[tbl_cthd] ([mahd], [masp], [slmua]) VALUES (N'HD001', N'HT011', 1)
INSERT [dbo].[tbl_cthd] ([mahd], [masp], [slmua]) VALUES (N'HD002', N'HT001', 1)
INSERT [dbo].[tbl_cthd] ([mahd], [masp], [slmua]) VALUES (N'HD003', N'HT001', 1)
INSERT [dbo].[tbl_cthd] ([mahd], [masp], [slmua]) VALUES (N'HD004', N'HT001', 1)
INSERT [dbo].[tbl_cthd] ([mahd], [masp], [slmua]) VALUES (N'HD007', N'HT001', 1)
INSERT [dbo].[tbl_cthd] ([mahd], [masp], [slmua]) VALUES (N'HD007', N'HT032', 1)
INSERT [dbo].[tbl_cthd] ([mahd], [masp], [slmua]) VALUES (N'HD007', N'HT009', 1)
INSERT [dbo].[tbl_cthd] ([mahd], [masp], [slmua]) VALUES (N'HD008', N'HT001', 1)
INSERT [dbo].[tbl_cthd] ([mahd], [masp], [slmua]) VALUES (N'HD008', N'HT003', 1)
INSERT [dbo].[tbl_cthd] ([mahd], [masp], [slmua]) VALUES (N'HD008', N'HT032', 1)
INSERT [dbo].[tbl_cthd] ([mahd], [masp], [slmua]) VALUES (N'HD008', N'HT020', 1)
INSERT [dbo].[tbl_cthd] ([mahd], [masp], [slmua]) VALUES (N'HD007', N'HT003', 1)
INSERT [dbo].[tbl_hoadon] ([mahd], [tenkhach], [manv], [ngayhd], [tongtien]) VALUES (N'HD001', N'Thắng', N'admin', CAST(N'2020-12-29' AS Date), CAST(171600 AS Decimal(18, 0)))
INSERT [dbo].[tbl_hoadon] ([mahd], [tenkhach], [manv], [ngayhd], [tongtien]) VALUES (N'HD002', N'Sơn', N'admin', CAST(N'2020-12-29' AS Date), CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[tbl_hoadon] ([mahd], [tenkhach], [manv], [ngayhd], [tongtien]) VALUES (N'HD003', N'Đại', N'admin', CAST(N'2020-12-29' AS Date), CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[tbl_hoadon] ([mahd], [tenkhach], [manv], [ngayhd], [tongtien]) VALUES (N'HD004', N'Đức', N'admin', CAST(N'2020-12-29' AS Date), CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[tbl_hoadon] ([mahd], [tenkhach], [manv], [ngayhd], [tongtien]) VALUES (N'HD007', N'Nam', N'admin', CAST(N'2020-12-29' AS Date), CAST(138980 AS Decimal(18, 0)))
INSERT [dbo].[tbl_hoadon] ([mahd], [tenkhach], [manv], [ngayhd], [tongtien]) VALUES (N'HD008', N'Nhã', N'admin', CAST(N'2020-12-29' AS Date), CAST(84080 AS Decimal(18, 0)))
INSERT [dbo].[tbl_nhanvien] ([manv], [vitri], [ten], [matkhau], [ngaysinh], [cmnd], [dienthoai], [email], [diachi], [per]) VALUES (N'admin', N'admin', N'Nguyễn Huy Thắng', N'8755f7968d9bbf3c7ef67580fc3af4d6ceaa45e6', CAST(N'1999-07-18' AS Date), N'175007213', N'0978985880', N'thang@htfood.com', N'Q.7, Tp.Hồ Chí Minh', 1)
INSERT [dbo].[tbl_nhanvien] ([manv], [vitri], [ten], [matkhau], [ngaysinh], [cmnd], [dienthoai], [email], [diachi], [per]) VALUES (N'NV001', N'Đầu bếp', N'Phan Quốc Đại', N'26cf5f4c10db89e073916bb01d923a1375a3f374', CAST(N'1999-03-17' AS Date), N'173219428', N'0353637985', N'dai@htfood.com', N'Q.1, TP.HCM', 0)
INSERT [dbo].[tbl_nhanvien] ([manv], [vitri], [ten], [matkhau], [ngaysinh], [cmnd], [dienthoai], [email], [diachi], [per]) VALUES (N'NV1', N'Nhân viên', N'Đỗ Văn Nam', N'901eccfcc875d5507ec55b4461d4ca129d39240f', CAST(N'1999-03-06' AS Date), N'162492013', N'0377218492', N'nam@htfood.com', N'Q.Bình Thạnh, Tp.Hồ Chí Minh', 0)
INSERT [dbo].[tbl_nhanvien] ([manv], [vitri], [ten], [matkhau], [ngaysinh], [cmnd], [dienthoai], [email], [diachi], [per]) VALUES (N'NV3', N'Quản lý', N'Lê Thọ Đức', N'afa9bcb70b112b381907bc6dd2b10ae248713048', CAST(N'1999-07-24' AS Date), N'174629327', N'0357436357', N'duc@htfood.com', N'Q.9, Tp.Hồ Chí Minh', 0)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT001', 1, N'Bánh Mì Gà Xé', N'HT FOOD', CAST(20000 AS Decimal(18, 0)), 1, 93)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT002', 1, N'Gà Lắc Phô Mai', N'HT FOOD', CAST(10000 AS Decimal(18, 0)), 0, 100)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT003', 1, N'Bánh Gạo Cay', N'HT FOOD', CAST(40000 AS Decimal(18, 0)), 2, 97)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT004', 1, N'Bánh Mì Hải Sản', N'HT FOOD', CAST(6000 AS Decimal(18, 0)), 0, 100)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT005', 1, N'Khoai Tây Lắc Phô Mai', N'HT FOOD', CAST(20000 AS Decimal(18, 0)), 0, 100)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT006', 1, N'Gà Patoto', N'HT FOOD', CAST(25000 AS Decimal(18, 0)), 2, 100)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT007', 1, N'Bánh Tráng Lắc', N'HT FOOD', CAST(10000 AS Decimal(18, 0)), 0, 100)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT008', 1, N'Xúc Xích Phô Mai', N'HT FOOD', CAST(10000 AS Decimal(18, 0)), 0, 100)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT009', 1, N'Thập Cẩm Chiên', N'HT FOOD', CAST(70000 AS Decimal(18, 0)), 3, 98)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT010', 1, N'Thập Cẩm Sốt Cay(N)', N'HT FOOD', CAST(50000 AS Decimal(18, 0)), 1, 100)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT011', 1, N'Hải Sản Mayonaise', N'HT FOOD', CAST(25000 AS Decimal(18, 0)), 2, 99)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT012', 1, N'Hoành Thánh', N'HT FOOD', CAST(10000 AS Decimal(18, 0)), 0, 100)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT013', 1, N'Chả Cá Trứng Cút', N'HT FOOD', CAST(10000 AS Decimal(18, 0)), 0, 100)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT014', 1, N'Hot Dog Hàn Quốc', N'HT FOOD', CAST(20000 AS Decimal(18, 0)), 1, 100)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT015', 1, N'Cá Sữa bắp', N'HT FOOD', CAST(10000 AS Decimal(18, 0)), 0, 100)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT016', 2, N'Trà Sữa Tropical', N'HT FOOD', CAST(25000 AS Decimal(18, 0)), 1, 100)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT017', 2, N'Trà Dragon', N'HT FOOD', CAST(29000 AS Decimal(18, 0)), 1, 100)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT018', 2, N'Chanh Vàng Nam Mỹ', N'HT FOOD', CAST(25000 AS Decimal(18, 0)), 2, 100)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT019', 2, N'Sữa Tươi Chân Đ.Đen', N'HT FOOD', CAST(20000 AS Decimal(18, 0)), 1, 100)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT020', 2, N'Hồng Trà', N'HT FOOD', CAST(13000 AS Decimal(18, 0)), 0, 99)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT021', 2, N'Lục Trà', N'HT FOOD', CAST(13000 AS Decimal(18, 0)), 0, 100)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT022', 2, N'Trà Olong', N'HT FOOD', CAST(14000 AS Decimal(18, 0)), 0, 100)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT023', 2, N'Olong Cheese', N'HT FOOD', CAST(24000 AS Decimal(18, 0)), 2, 100)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT024', 2, N'Hoa Hồng Cheese', N'HT FOOD', CAST(27000 AS Decimal(18, 0)), 1, 100)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT028', 2, N'Xoài Cheese', N'HT FOOD', CAST(27000 AS Decimal(18, 0)), 1, 100)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT029', 2, N'Trà Dưa Lưới', N'HT FOOD', CAST(27000 AS Decimal(18, 0)), 1, 100)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT030', 2, N'Trà Cherry Anh Đào', N'HT FOOD', CAST(29000 AS Decimal(18, 0)), 2, 100)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT031', 2, N'Cocacola Lon', N'Coca-Cola', CAST(12000 AS Decimal(18, 0)), 1, 100)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT032', 2, N'Pepsi Lon', N'PepsiCo', CAST(12000 AS Decimal(18, 0)), 1, 98)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT033', 2, N'Nước Khoáng', N'Vĩnh Hảo', CAST(5000 AS Decimal(18, 0)), 0, 100)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT034', 2, N'Bò Húc Thái', N'RedBull', CAST(13000 AS Decimal(18, 0)), 0, 100)
INSERT [dbo].[tbl_sanpham] ([masp], [loai], [tensp], [nhacc], [giatien], [giamgia], [soluong]) VALUES (N'HT035', 2, N'Mirinda Cam (Lon)', N'PepsiCo', CAST(12000 AS Decimal(18, 0)), 1, 100)
ALTER TABLE [dbo].[tbl_cthd]  WITH CHECK ADD  CONSTRAINT [FK_chth_hoadon] FOREIGN KEY([mahd])
REFERENCES [dbo].[tbl_hoadon] ([mahd])
GO
ALTER TABLE [dbo].[tbl_cthd] CHECK CONSTRAINT [FK_chth_hoadon]
GO
ALTER TABLE [dbo].[tbl_cthd]  WITH CHECK ADD  CONSTRAINT [FK_hoadon_sanpham] FOREIGN KEY([masp])
REFERENCES [dbo].[tbl_sanpham] ([masp])
GO
ALTER TABLE [dbo].[tbl_cthd] CHECK CONSTRAINT [FK_hoadon_sanpham]
GO
ALTER TABLE [dbo].[tbl_hoadon]  WITH CHECK ADD  CONSTRAINT [FK_hoadon_nhanvien] FOREIGN KEY([manv])
REFERENCES [dbo].[tbl_nhanvien] ([manv])
GO
ALTER TABLE [dbo].[tbl_hoadon] CHECK CONSTRAINT [FK_hoadon_nhanvien]
GO
USE [master]
GO
ALTER DATABASE [HTFOOD] SET  READ_WRITE 
GO
