USE [master]
GO
/****** Object:  Database [QuanLyQuanAn]    Script Date: 18/10/2017 8:34:54 CH ******/
CREATE DATABASE [QuanLyQuanAn]
GO
ALTER DATABASE [QuanLyQuanAn] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyQuanAn].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyQuanAn] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyQuanAn] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyQuanAn] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyQuanAn] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyQuanAn] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyQuanAn] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyQuanAn] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyQuanAn] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyQuanAn] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyQuanAn] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyQuanAn] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyQuanAn] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyQuanAn] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyQuanAn] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyQuanAn] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyQuanAn] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyQuanAn] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyQuanAn] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyQuanAn] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyQuanAn] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyQuanAn] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyQuanAn] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyQuanAn] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyQuanAn] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyQuanAn] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyQuanAn] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyQuanAn] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyQuanAn] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QuanLyQuanAn]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 18/10/2017 8:34:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHD] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuongBan] [int] NOT NULL,
	[GiaBan] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 18/10/2017 8:34:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] NOT NULL,
	[MaNV] [int] NOT NULL,
	[NgayHD] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 18/10/2017 8:34:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] NOT NULL,
	[TenNV] [varchar](255) NOT NULL,
	[SoDT] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 18/10/2017 8:34:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] NOT NULL,
	[TenSP] [varchar](255) NOT NULL,
	[GiaBan] [int] NOT NULL,
	[GiaNhap] [int] NOT NULL,
	[SoLuongCo] [int] NOT NULL,
	[KMKemTheo] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuongBan], [GiaBan]) VALUES (1, 2002, 1, 250000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuongBan], [GiaBan]) VALUES (2, 2008, 1, 40000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuongBan], [GiaBan]) VALUES (3, 2006, 1, 30000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuongBan], [GiaBan]) VALUES (4, 2003, 1, 140000)
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayHD]) VALUES (1, 1001, CAST(N'2017-08-12' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayHD]) VALUES (2, 1001, CAST(N'2017-08-12' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayHD]) VALUES (3, 1001, CAST(N'2017-08-12' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayHD]) VALUES (4, 1001, CAST(N'2017-08-12' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayHD]) VALUES (5, 1002, CAST(N'2017-08-12' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayHD]) VALUES (6, 1002, CAST(N'2017-08-12' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayHD]) VALUES (7, 1003, CAST(N'2017-08-12' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayHD]) VALUES (8, 1003, CAST(N'2017-08-12' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayHD]) VALUES (9, 1001, CAST(N'2017-08-12' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayHD]) VALUES (10, 1001, CAST(N'2017-08-13' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayHD]) VALUES (11, 1002, CAST(N'2017-08-13' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayHD]) VALUES (12, 1004, CAST(N'2017-08-14' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayHD]) VALUES (13, 1005, CAST(N'2017-08-14' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayHD]) VALUES (14, 1001, CAST(N'2017-08-15' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayHD]) VALUES (15, 1001, CAST(N'2017-08-15' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayHD]) VALUES (16, 1001, CAST(N'2017-08-15' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayHD]) VALUES (17, 1002, CAST(N'2017-08-15' AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayHD]) VALUES (18, 1002, CAST(N'2017-08-15' AS Date))
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SoDT]) VALUES (1001, N'Trung', 123213411)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SoDT]) VALUES (1002, N'Tri', 94893812)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SoDT]) VALUES (1003, N'Hieu', 91232183)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SoDT]) VALUES (1004, N'Cuong', 12312311)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SoDT]) VALUES (1005, N'Lanh', 9123123)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [SoDT]) VALUES (1006, N'Bao', 123214412)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [GiaNhap], [SoLuongCo], [KMKemTheo]) VALUES (2000, N'3DuiGaChienXu', 120000, 100000, 200, N'Khong')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [GiaNhap], [SoLuongCo], [KMKemTheo]) VALUES (2001, N'GaXe', 80000, 50000, 200, N'Khong')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [GiaNhap], [SoLuongCo], [KMKemTheo]) VALUES (2002, N'GaNguyenCon', 350000, 250000, 100, N'Pepsi')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [GiaNhap], [SoLuongCo], [KMKemTheo]) VALUES (2003, N'3DuiGaChienOt', 140000, 100000, 200, N'Khong')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [GiaNhap], [SoLuongCo], [KMKemTheo]) VALUES (2004, N'RauTron', 20000, 100000, 1000, N'Khong')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [GiaNhap], [SoLuongCo], [KMKemTheo]) VALUES (2005, N'BanhQuy', 50000, 30000, 1000, N'Khong')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [GiaNhap], [SoLuongCo], [KMKemTheo]) VALUES (2006, N'Hamburger', 30000, 20000, 1000, N'Khong')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [GiaNhap], [SoLuongCo], [KMKemTheo]) VALUES (2007, N'KhoaiTayChien', 40000, 30000, 1000, N'Khong')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [GiaNhap], [SoLuongCo], [KMKemTheo]) VALUES (2008, N'Combo1DuiGa', 40000, 30000, 200, N'1Com')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [GiaNhap], [SoLuongCo], [KMKemTheo]) VALUES (2009, N'Combo8MiengGa', 295000, 240000, 200, N'4banhquy')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [GiaBan], [GiaNhap], [SoLuongCo], [KMKemTheo]) VALUES (2010, N'ComboTexSampler', 85000, 60000, 200, N'Pepsi')
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
USE [master]
GO
ALTER DATABASE [QuanLyQuanAn] SET  READ_WRITE 
GO
