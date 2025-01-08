CREATE DATABASE [DBVioPerfume]

GO
ALTER DATABASE [DBVioPerfume] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBVioPerfume] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBVioPerfume] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBVioPerfume] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBVioPerfume] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBVioPerfume] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBVioPerfume] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBVioPerfume] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBVioPerfume] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBVioPerfume] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBVioPerfume] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBVioPerfume] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBVioPerfume] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBVioPerfume] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBVioPerfume] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DBVioPerfume] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBVioPerfume] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBVioPerfume] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBVioPerfume] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBVioPerfume] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBVioPerfume] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DBVioPerfume] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBVioPerfume] SET RECOVERY FULL 
GO
ALTER DATABASE [DBVioPerfume] SET  MULTI_USER 
GO
ALTER DATABASE [DBVioPerfume] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBVioPerfume] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBVioPerfume] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBVioPerfume] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBVioPerfume] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBVioPerfume] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DBVioPerfume', N'ON'
GO
ALTER DATABASE [DBVioPerfume] SET QUERY_STORE = ON
GO
ALTER DATABASE [DBVioPerfume] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DBVioPerfume]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/24/2024 10:04:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Anh]    Script Date: 4/24/2024 10:04:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anh](
	[ID] [uniqueidentifier] NOT NULL,
	[TrangThai] [int] NOT NULL,
	[DuongDan] [varchar](100) NOT NULL,
	[IDMauSac] [uniqueidentifier] NULL,
	[IDSanPham] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Anh] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChatLieu]    Script Date: 4/24/2024 10:04:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatLieu](
	[ID] [uniqueidentifier] NOT NULL,
	[Ten] [nvarchar](20) NOT NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_ChatLieu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietGioHang]    Script Date: 4/24/2024 10:04:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietGioHang](
	[ID] [uniqueidentifier] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[IDCTSP] [uniqueidentifier] NOT NULL,
	[IDNguoiDung] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ChiTietGioHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 4/24/2024 10:04:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[ID] [uniqueidentifier] NOT NULL,
	[DonGia] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[TrangThai] [int] NOT NULL,
	[IDCTSP] [uniqueidentifier] NOT NULL,
	[IDHoaDon] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietSanPham]    Script Date: 4/24/2024 10:04:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSanPham](
	[ID] [uniqueidentifier] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiaBan] [int] NOT NULL,
	[NgayTao] [datetime] NOT NULL,
	[TrangThai] [int] NOT NULL,
	[IDSanPham] [uniqueidentifier] NOT NULL,
	[IDKhuyenMai] [uniqueidentifier] NULL,
	[IDMauSac] [uniqueidentifier] NOT NULL,
	[IDKichCo] [uniqueidentifier] NOT NULL,
	[Ma] [nvarchar](100) NULL,
 CONSTRAINT [PK_ChiTietSanPham] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 4/24/2024 10:04:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[ID] [uniqueidentifier] NOT NULL,
	[BinhLuan] [nvarchar](250) NULL,
	[Sao] [int] NULL,
	[TrangThai] [int] NOT NULL,
	[NgayDanhGia] [datetime] NULL,
 CONSTRAINT [PK_DanhGia] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 4/24/2024 10:04:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[IDKhachHang] [uniqueidentifier] NOT NULL,
	[NgayTao] [datetime] NOT NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[IDKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 4/24/2024 10:04:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[ID] [uniqueidentifier] NOT NULL,
	[NgayTao] [datetime] NOT NULL,
	[NgayThanhToan] [datetime] NULL,
	[TenNguoiNhan] [nvarchar](100) NULL,
	[SDT] [nvarchar](10) NULL,
	[Email] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[TienShip] [int] NOT NULL,
	[PhuongThucThanhToan] [nvarchar](max) NULL,
	[TrangThaiGiaoHang] [int] NOT NULL,
	[IDNhanVien] [uniqueidentifier] NULL,
	[IDVoucher] [uniqueidentifier] NULL,
	[LoaiHD] [int] NOT NULL,
	[MaHD] [nvarchar](max) NOT NULL,
	[TongTien] [int] NULL,
	[GhiChu] [nvarchar](100) NULL,
	[NgayNhanHang] [datetime] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/24/2024 10:04:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[IDKhachHang] [uniqueidentifier] NOT NULL,
	[Ten] [nvarchar](100) NOT NULL,
	[Password] [varchar](max) NOT NULL,
	[GioiTinh] [int] NULL,
	[NgaySinh] [datetime] NULL,
	[Email] [varchar](250) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SDT] [varchar](10) NULL,
	[DiemTich] [int] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[IDKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 4/24/2024 10:04:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[ID] [uniqueidentifier] NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[GiaTri] [int] NOT NULL,
	[NgayApDung] [datetime] NOT NULL,
	[NgayKetThuc] [datetime] NOT NULL,
	[MoTa] [nvarchar](50) NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KichCo]    Script Date: 4/24/2024 10:04:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KichCo](
	[ID] [uniqueidentifier] NOT NULL,
	[Ten] [nvarchar](10) NOT NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_KichCo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuTichDiem]    Script Date: 4/24/2024 10:04:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuTichDiem](
	[ID] [uniqueidentifier] NOT NULL,
	[Diem] [int] NOT NULL,
	[TrangThai] [int] NOT NULL,
	[IDKhachHang] [uniqueidentifier] NULL,
	[IDQuyDoiDiem] [uniqueidentifier] NOT NULL,
	[IDHoaDon] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_LichSuTichDiem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 4/24/2024 10:04:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[ID] [uniqueidentifier] NOT NULL,
	[Ten] [nvarchar](30) NOT NULL,
	[TrangThai] [int] NOT NULL,
	[IDLoaiSPCha] [uniqueidentifier] NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MauSac]    Script Date: 4/24/2024 10:04:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MauSac](
	[ID] [uniqueidentifier] NOT NULL,
	[Ten] [nvarchar](20) NOT NULL,
	[Ma] [varchar](10) NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_MauSac] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 4/24/2024 10:04:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[ID] [uniqueidentifier] NOT NULL,
	[Ten] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[SDT] [nvarchar](20) NOT NULL,
	[DiaChi] [nvarchar](250) NOT NULL,
	[TrangThai] [int] NULL,
	[IDVaiTro] [uniqueidentifier] NOT NULL,
	[PassWord] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuyDoiDiem]    Script Date: 4/24/2024 10:04:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuyDoiDiem](
	[ID] [uniqueidentifier] NOT NULL,
	[TiLeTichDiem] [int] NOT NULL,
	[TiLeTieuDiem] [int] NOT NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_QuyDoiDiem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 4/24/2024 10:04:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[ID] [uniqueidentifier] NOT NULL,
	[Ten] [nvarchar](200) NOT NULL,
	[MoTa] [nvarchar](300) NULL,
	[TrangThai] [int] NOT NULL,
	[IDLoaiSP] [uniqueidentifier] NOT NULL,
	[IDChatLieu] [uniqueidentifier] NOT NULL,
	[Ma] [nvarchar](10) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VaiTro]    Script Date: 4/24/2024 10:04:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VaiTro](
	[ID] [uniqueidentifier] NOT NULL,
	[Ten] [nvarchar](20) NOT NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_VaiTro] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 4/24/2024 10:04:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[ID] [uniqueidentifier] NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[HinhThucGiamGia] [int] NOT NULL,
	[SoTienCan] [int] NOT NULL,
	[GiaTri] [int] NOT NULL,
	[NgayApDung] [datetime] NOT NULL,
	[NgayKetThuc] [datetime] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[MoTa] [nvarchar](50) NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_Voucher] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230916130906_DuAnTotNghiep', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230928163807_AddPasswordNhanVien', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230930125837_UpdateThuocTinhSanPham', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230930135330_UpdateChiTietBT', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231002083559_s', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231005050344_AddChiTietPTTT', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231008014048_SuaBienThe', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231011035651_AddAnhBienThe', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231011065855_AddBTisDefault', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231011070651_AlowKhuyenMaiNull', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231030040716_SuaSanPham', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231105141502_UpdateHoaDon', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231107032841_addtongTien', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231107044422_createHDOff', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231113143350_SuaPTTT', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231113145238_AddGhiChuToHoaDon', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231117013517_ThemMaSanPham', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231122174719_xoaVat-sdiem', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231201153128_SuaDBThemNgayNhanHangHoaDon', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231206103352_SuaChiTietSanPham', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231207161133_SuaKMVoucherKhSanPham', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231214153010_MaHoaMatKhau', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231214161628_UpdateNhanVien', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231215010757_InitNhanVien', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231215163422_SuaDB', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231219163516_updateSanPham', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231219164049_suaDBSabPham', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231219164623_SuaMoTaSanPham', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240406134915_SuaAdmin', N'6.0.21')
GO
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'acacc102-a13a-49e8-9302-02535acd1818', 1, N'bannerx243438169.png', NULL, N'91f4602b-f470-40ed-98aa-d401e8f6ce4d')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'10b38061-3679-41fd-8e34-163e120af9b3', 1, N'vn-11134207-7r98o-ls483ybhznwk54_tn240111168.webp', N'2e31b635-3164-4391-8007-cdee9e3b7d1a', N'30af833f-e6ae-4827-beec-44d2b14a1b02')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'286be5d0-3951-4cf1-ad7f-18142df0f1c0', 1, N'13c39e74a0de7a0c55f3ffa76d6874de.jpg_720x720q80245115511.jpg', N'a5919aa2-b789-423a-b962-6d0f51673a44', N'8506c67c-ef59-47b6-a501-53ccda063ae5')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'b07818e7-0f5a-4362-83fe-1c1926fc55c3', 1, N'e7803d472db1c67cc189dcaa77c2567f.jpg_720x720q80240749621.jpg', N'a5919aa2-b789-423a-b962-6d0f51673a44', N'4884169c-7103-4932-af8b-77b353b4019d')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'aeb00090-6ccf-4d6e-a060-3ce351733e23', 1, N'080e3fe11aed44804c64f5c7c91f8b8a243728466.jpg', NULL, N'91f4602b-f470-40ed-98aa-d401e8f6ce4d')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'2dae67c9-e10a-4529-b00d-514a2633447c', 1, N'bannerx242444235.png', NULL, N'91f4602b-f470-40ed-98aa-d401e8f6ce4d')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'8c608a84-35b2-45d3-8007-573a6f70813d', 1, N'e7803d472db1c67cc189dcaa77c2567f.jpg_720x720q80245605862.jpg', N'a5919aa2-b789-423a-b962-6d0f51673a44', N'8e8b89f2-d437-42d2-90dc-678d1770e829')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'd3ba21f9-3c18-4012-a0c2-63cb64a020df', 1, N'52227e02fad7b20c4e9db81e13c5897e245151327.jpg', N'5984fce1-b2f4-4b43-a2f0-30cb3ebefaec', N'8506c67c-ef59-47b6-a501-53ccda063ae5')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'a07aaa66-9411-4cf5-b809-66f33c1368f5', 1, N'080e3fe11aed44804c64f5c7c91f8b8a243720557.jpg', N'754c5d9d-f44b-453f-9134-a951621f6aa9', N'91f4602b-f470-40ed-98aa-d401e8f6ce4d')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'f62b4a51-4f5e-4dcb-8b7e-6bb6b43014dd', 1, N'a00069af2cfaa7980fedae6472b03987.jpg_720x720q80240419016.jpg', N'5984fce1-b2f4-4b43-a2f0-30cb3ebefaec', N'31e125aa-ea91-4941-bf9d-7981e62e1b35')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'1fde5fd6-5ee1-459c-93fd-739f77156848', 1, N'e7803d472db1c67cc189dcaa77c2567f.jpg_720x720q80245811992.jpg', N'a5919aa2-b789-423a-b962-6d0f51673a44', N'adadf1c6-22d3-468a-85a9-2c95c6018d2a')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'08b95a3d-7bf6-4a36-a44b-94ae0a1c72b6', 1, N'4739ae4c18980ac103a9004b9940ac31245326303.jpg', N'ee6bc3a6-a09c-4c1c-ae32-c22578304978', N'8506c67c-ef59-47b6-a501-53ccda063ae5')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'3b533b70-5b5b-46b9-8ef4-953fd05d8462', 1, N'Screenshot (1)242501177.png', NULL, N'91f4602b-f470-40ed-98aa-d401e8f6ce4d')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'5042500b-3559-465b-a122-a40c19f4f55e', 1, N'ad97d0ac749ce3c3e57f2ba3d2ac40fe245254202.jpg', N'f7ea0204-6a31-4891-b807-cff779915b6d', N'8506c67c-ef59-47b6-a501-53ccda063ae5')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'64d98444-b838-4b7a-ac71-a5570616c8e0', 1, N'080e3fe11aed44804c64f5c7c91f8b8a243716811.jpg', N'ee6bc3a6-a09c-4c1c-ae32-c22578304978', N'91f4602b-f470-40ed-98aa-d401e8f6ce4d')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'73fe5b22-f4b0-45ca-a8c1-a5f3b7310485', 1, N'bannerx243731121.png', NULL, N'91f4602b-f470-40ed-98aa-d401e8f6ce4d')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'94a73dbf-86fc-4b10-964b-aeb4779b676f', 1, N'f78786075b5f497a292847905e2b5715245959737.jpg', N'a5919aa2-b789-423a-b962-6d0f51673a44', N'36c65db0-0379-4302-9b80-cbe624a246bc')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'4b79b862-d1ed-4fe4-b2a0-af1c030f70f3', 1, N'e7803d472db1c67cc189dcaa77c2567f.jpg_720x720q80245637610.jpg', N'754c5d9d-f44b-453f-9134-a951621f6aa9', N'8e8b89f2-d437-42d2-90dc-678d1770e829')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'9424c6f7-0adb-4f66-8ece-b163e348c15d', 1, N'080e3fe11aed44804c64f5c7c91f8b8a243909969.jpg', N'2e31b635-3164-4391-8007-cdee9e3b7d1a', N'91f4602b-f470-40ed-98aa-d401e8f6ce4d')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'db63bcb7-590c-4d6c-9f7e-c1254a60806d', 1, N'Screenshot 2024-04-19 170634242452454.png', NULL, N'91f4602b-f470-40ed-98aa-d401e8f6ce4d')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'227fd63c-31d1-48b1-89c1-c3bcaeaf9232', 1, N'080e3fe11aed44804c64f5c7c91f8b8a243724055.jpg', N'ee6bc3a6-a09c-4c1c-ae32-c22578304978', N'91f4602b-f470-40ed-98aa-d401e8f6ce4d')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'8fad197d-ccd6-402e-a141-d732e01488ad', 1, N'bannerx242456915.png', NULL, N'91f4602b-f470-40ed-98aa-d401e8f6ce4d')
INSERT [dbo].[Anh] ([ID], [TrangThai], [DuongDan], [IDMauSac], [IDSanPham]) VALUES (N'ad0c3e26-97cc-4415-8f01-fed88da95581', 1, N'13c39e74a0de7a0c55f3ffa76d6874de.jpg_720x720q80240712772.jpg', N'754c5d9d-f44b-453f-9134-a951621f6aa9', N'4884169c-7103-4932-af8b-77b353b4019d')
GO
INSERT [dbo].[ChatLieu] ([ID], [Ten], [TrangThai]) VALUES (N'0282068c-edfd-4c76-a1b0-6f1698319eef', N'Lụa', 1)
INSERT [dbo].[ChatLieu] ([ID], [Ten], [TrangThai]) VALUES (N'0d16634e-c334-40f7-a407-982447d694d0', N'Polyme', 1)
INSERT [dbo].[ChatLieu] ([ID], [Ten], [TrangThai]) VALUES (N'7dda73f2-aae5-4659-8a86-f7f67c812dc9', N'Nhung', 1)
INSERT [dbo].[ChatLieu] ([ID], [Ten], [TrangThai]) VALUES (N'8aeacf00-8e48-4446-bbe2-fe1623973d65', N'Vải cotton', 1)
GO
INSERT [dbo].[ChiTietGioHang] ([ID], [SoLuong], [IDCTSP], [IDNguoiDung]) VALUES (N'748684b9-dc43-4779-8785-0d998ff3fc12', 1, N'df1fef02-c9d6-44cd-ae31-5eac2d19a8b0', N'e106c66d-f18d-4609-8a38-08e09d68e78c')
GO
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'bd9ba65c-817a-4cf7-b7b0-07e0421e8098', 7890, 1, 1, N'df1fef02-c9d6-44cd-ae31-5eac2d19a8b0', N'63a3febc-cc9c-47f4-a078-980971101a75')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'f76392a8-ae8f-46eb-356f-08dc6435f149', 5, 1, 0, N'5bd080e7-111d-4de5-9090-1af02dd4ea29', N'6df7be80-fcd4-4c86-8291-2c6d2b6c6913')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'f70702a5-f06c-4de5-5d5f-08dc646d38cd', 0, 2, 0, N'4ec993f8-02ef-4eb9-a795-861a491d998a', N'f8384459-e97e-44db-9973-33bc058a2a39')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'2fad54ae-447c-49b2-b483-24d9bcaba9e0', 56000, 1, 1, N'670f2484-17f4-49a2-aa0c-5a938a7bf37e', N'1861b136-ca44-40bd-93b0-467182641207')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'40e86511-0d1b-4244-94f7-3ad3b5ab17bb', 56000, 1, 1, N'670f2484-17f4-49a2-aa0c-5a938a7bf37e', N'63a3febc-cc9c-47f4-a078-980971101a75')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'1c556d96-5798-48f7-8419-42c7959f967a', 90000, 6, 1, N'e54e16df-633d-4bc9-8c1d-a22f52d7ec7d', N'94d65985-d90a-4bcf-b229-84add5975905')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'69de8df4-c774-49de-8f4e-4f5f9aecb1d9', 56000, 3, 1, N'4ec993f8-02ef-4eb9-a795-861a491d998a', N'c8655c1d-9ecc-40d7-9625-144bf336e77c')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'6c2fc2f0-0cf0-48bf-8227-7db8ed221588', 7890, 1, 1, N'df1fef02-c9d6-44cd-ae31-5eac2d19a8b0', N'c1d49a95-fb49-47f7-b1d6-1a5a1cfcd0d8')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'fd3bdf80-1237-4e33-84d6-9289a11a0282', 56000, 1, 1, N'670f2484-17f4-49a2-aa0c-5a938a7bf37e', N'c8655c1d-9ecc-40d7-9625-144bf336e77c')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'fb53721c-8997-4b49-9a43-9e51371ac1e0', 78000, 1, 1, N'e998f9a0-bc1c-4688-98f1-59a64e9a33da', N'63a3febc-cc9c-47f4-a078-980971101a75')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'c8455cbe-39fd-45f4-b6d9-b801b39ce385', 88999, 1, 1, N'6c8aec13-a562-4850-90a7-6d2935dfc42e', N'5a58b00e-7eee-466e-849d-b89f6e7eb012')
INSERT [dbo].[ChiTietHoaDon] ([ID], [DonGia], [SoLuong], [TrangThai], [IDCTSP], [IDHoaDon]) VALUES (N'2d785df5-37db-433f-a6bf-e26bb0472d95', 90000, 1, 1, N'e54e16df-633d-4bc9-8c1d-a22f52d7ec7d', N'55ceffa5-5672-4007-9d47-5e3273213f54')
GO
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'f8030ab8-5391-4170-a406-1686ffd82b83', 4, 99, CAST(N'2024-04-24T13:55:38.853' AS DateTime), 2, N'8e8b89f2-d437-42d2-90dc-678d1770e829', NULL, N'a5919aa2-b789-423a-b962-6d0f51673a44', N'65a264a7-1da7-4937-af45-0683563c98f3', N'SP3XANHXX')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'5bd080e7-111d-4de5-9090-1af02dd4ea29', 2, 5, CAST(N'2024-04-24T13:59:39.750' AS DateTime), 1, N'36c65db0-0379-4302-9b80-cbe624a246bc', NULL, N'a5919aa2-b789-423a-b962-6d0f51673a44', N'3c6dbcc1-78d9-4afe-b7bd-6ca99e321119', N'SP5XANHXXX')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'a2f73e18-7583-424d-866c-2f03af63e9db', 99, 70000, CAST(N'2024-04-24T13:51:39.323' AS DateTime), 2, N'8506c67c-ef59-47b6-a501-53ccda063ae5', NULL, N'5984fce1-b2f4-4b43-a2f0-30cb3ebefaec', N'1cda5b09-1fa5-4e55-86b4-9ab947992faf', N'SP2TIM10X')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'c57acb3a-7bc8-45f3-8c14-37c9b8779560', 2, 59000, CAST(N'2024-04-24T13:50:58.050' AS DateTime), 1, N'8506c67c-ef59-47b6-a501-53ccda063ae5', NULL, N'a5919aa2-b789-423a-b962-6d0f51673a44', N'5e863e9f-8c80-4ea6-9903-01633155e470', N'SP2XANHX')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'e998f9a0-bc1c-4688-98f1-59a64e9a33da', 2, 78000, CAST(N'2024-04-24T13:58:07.117' AS DateTime), 1, N'adadf1c6-22d3-468a-85a9-2c95c6018d2a', NULL, N'a5919aa2-b789-423a-b962-6d0f51673a44', N'5c33b977-5f2f-4abf-9f88-0934fbe6bbd5', N'SP4XANHS')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'5a23e146-2124-4b4a-a084-5a11683b349d', 2, 78888, CAST(N'2024-04-24T14:03:57.767' AS DateTime), 1, N'31e125aa-ea91-4941-bf9d-7981e62e1b35', NULL, N'5984fce1-b2f4-4b43-a2f0-30cb3ebefaec', N'65a264a7-1da7-4937-af45-0683563c98f3', N'SP7TIMXX')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'670f2484-17f4-49a2-aa0c-5a938a7bf37e', 85, 56000, CAST(N'2024-04-24T13:53:12.143' AS DateTime), 2, N'8506c67c-ef59-47b6-a501-53ccda063ae5', NULL, N'ee6bc3a6-a09c-4c1c-ae32-c22578304978', N'ca656d78-80a1-4409-933e-cc3ee5faf0d8', N'SP2NAUXXXL')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'df1fef02-c9d6-44cd-ae31-5eac2d19a8b0', 1, 7890, CAST(N'2024-04-24T14:00:54.387' AS DateTime), 1, N'30af833f-e6ae-4827-beec-44d2b14a1b02', NULL, N'2e31b635-3164-4391-8007-cdee9e3b7d1a', N'65a264a7-1da7-4937-af45-0683563c98f3', N'SP6VANGXX')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'6c8aec13-a562-4850-90a7-6d2935dfc42e', 599, 88999, CAST(N'2024-04-22T15:36:33.610' AS DateTime), 0, N'91f4602b-f470-40ed-98aa-d401e8f6ce4d', NULL, N'754c5d9d-f44b-453f-9134-a951621f6aa9', N'5e863e9f-8c80-4ea6-9903-01633155e470', N'SP1DENX')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'4618fb5c-8912-419d-adc9-7b9fec9b6152', 99, 789000, CAST(N'2024-04-24T15:07:44.520' AS DateTime), 2, N'4884169c-7103-4932-af8b-77b353b4019d', NULL, N'a5919aa2-b789-423a-b962-6d0f51673a44', N'65a264a7-1da7-4937-af45-0683563c98f3', N'SP8XANHXX')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'4ec993f8-02ef-4eb9-a795-861a491d998a', 95, 56000, CAST(N'2024-04-24T13:39:00.493' AS DateTime), 1, N'91f4602b-f470-40ed-98aa-d401e8f6ce4d', NULL, N'2e31b635-3164-4391-8007-cdee9e3b7d1a', N'1cda5b09-1fa5-4e55-86b4-9ab947992faf', N'SP1VANG10X')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'e54e16df-633d-4bc9-8c1d-a22f52d7ec7d', 894, 90000, CAST(N'2024-04-22T15:40:10.583' AS DateTime), 0, N'91f4602b-f470-40ed-98aa-d401e8f6ce4d', NULL, N'ee6bc3a6-a09c-4c1c-ae32-c22578304978', N'5e863e9f-8c80-4ea6-9903-01633155e470', N'SP1NAUX')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'e0b231d7-2293-40e5-ada3-accba39c3f55', 3, 890000, CAST(N'2024-04-24T15:07:02.717' AS DateTime), 1, N'4884169c-7103-4932-af8b-77b353b4019d', NULL, N'754c5d9d-f44b-453f-9134-a951621f6aa9', N'65a264a7-1da7-4937-af45-0683563c98f3', N'SP8DENXX')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'4320df1a-ae38-42fe-8f77-c56514f0a2ec', 2, 99, CAST(N'2024-04-24T13:56:33.177' AS DateTime), 1, N'8e8b89f2-d437-42d2-90dc-678d1770e829', NULL, N'754c5d9d-f44b-453f-9134-a951621f6aa9', N'65a264a7-1da7-4937-af45-0683563c98f3', N'SP3DENXX')
INSERT [dbo].[ChiTietSanPham] ([ID], [SoLuong], [GiaBan], [NgayTao], [TrangThai], [IDSanPham], [IDKhuyenMai], [IDMauSac], [IDKichCo], [Ma]) VALUES (N'44941a78-aa41-4665-9a69-f87ce5813fdb', 99, 78000, CAST(N'2024-04-24T13:52:42.283' AS DateTime), 2, N'8506c67c-ef59-47b6-a501-53ccda063ae5', NULL, N'f7ea0204-6a31-4891-b807-cff779915b6d', N'65a264a7-1da7-4937-af45-0683563c98f3', N'SP2DOXX')
GO
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'bd9ba65c-817a-4cf7-b7b0-07e0421e8098', N'Rất oke', 4, 1, CAST(N'2024-04-24T14:23:01.673' AS DateTime))
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'f76392a8-ae8f-46eb-356f-08dc6435f149', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'f70702a5-f06c-4de5-5d5f-08dc646d38cd', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'2fad54ae-447c-49b2-b483-24d9bcaba9e0', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'40e86511-0d1b-4244-94f7-3ad3b5ab17bb', N'hi', 5, 1, CAST(N'2024-04-24T14:23:17.000' AS DateTime))
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'1c556d96-5798-48f7-8419-42c7959f967a', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'69de8df4-c774-49de-8f4e-4f5f9aecb1d9', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'6c2fc2f0-0cf0-48bf-8227-7db8ed221588', N'rat oke', 5, 1, CAST(N'2024-04-24T15:20:14.097' AS DateTime))
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'fd3bdf80-1237-4e33-84d6-9289a11a0282', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'fb53721c-8997-4b49-9a43-9e51371ac1e0', N'sản phẩm tốt', 5, 1, CAST(N'2024-04-24T14:23:11.317' AS DateTime))
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'c8455cbe-39fd-45f4-b6d9-b801b39ce385', NULL, NULL, 0, NULL)
INSERT [dbo].[DanhGia] ([ID], [BinhLuan], [Sao], [TrangThai], [NgayDanhGia]) VALUES (N'2d785df5-37db-433f-a6bf-e26bb0472d95', NULL, NULL, 0, NULL)
GO
INSERT [dbo].[GioHang] ([IDKhachHang], [NgayTao]) VALUES (N'e106c66d-f18d-4609-8a38-08e09d68e78c', CAST(N'2024-04-24T15:00:16.780' AS DateTime))
INSERT [dbo].[GioHang] ([IDKhachHang], [NgayTao]) VALUES (N'992b39ef-127f-4349-9582-4336b5ecebbb', CAST(N'2024-04-24T13:21:56.553' AS DateTime))
INSERT [dbo].[GioHang] ([IDKhachHang], [NgayTao]) VALUES (N'e8e5a3e5-b99c-48b0-bb9d-f979e97e4ed5', CAST(N'2024-04-22T15:19:52.277' AS DateTime))
GO
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NgayThanhToan], [TenNguoiNhan], [SDT], [Email], [DiaChi], [TienShip], [PhuongThucThanhToan], [TrangThaiGiaoHang], [IDNhanVien], [IDVoucher], [LoaiHD], [MaHD], [TongTien], [GhiChu], [NgayNhanHang]) VALUES (N'c8655c1d-9ecc-40d7-9625-144bf336e77c', CAST(N'2024-04-24T15:03:24.447' AS DateTime), CAST(N'2024-04-24T15:03:24.407' AS DateTime), N'demokhach', N'0364877525', N'demokhach@gmail.com', N'khu pho 3 an phu quan 2, Xã Phình Giàng, Huyện Điện Biên Đông, Điện Biên', 30000, N'VNPay', 8, NULL, N'dcf1de69-a1ec-489e-90eb-559d4d17dc7e', 0, N'HDC8655C1D', 209200, NULL, NULL)
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NgayThanhToan], [TenNguoiNhan], [SDT], [Email], [DiaChi], [TienShip], [PhuongThucThanhToan], [TrangThaiGiaoHang], [IDNhanVien], [IDVoucher], [LoaiHD], [MaHD], [TongTien], [GhiChu], [NgayNhanHang]) VALUES (N'c1d49a95-fb49-47f7-b1d6-1a5a1cfcd0d8', CAST(N'2024-04-24T15:04:35.573' AS DateTime), CAST(N'2024-04-24T15:06:05.730' AS DateTime), N'demokhach', N'0364877525', N'demokhach@gmail.com', N'khu pho 3 an phu quan 2, Xã Thạch Lương, Huyện Văn Chấn, Yên Bái', 30000, N'COD', 6, N'2ec27ab7-5f67-4ed5-ae67-52f9c9726ebf', NULL, 0, N'HDC1D49A95', 37890, NULL, CAST(N'2024-04-24T15:06:05.730' AS DateTime))
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NgayThanhToan], [TenNguoiNhan], [SDT], [Email], [DiaChi], [TienShip], [PhuongThucThanhToan], [TrangThaiGiaoHang], [IDNhanVien], [IDVoucher], [LoaiHD], [MaHD], [TongTien], [GhiChu], [NgayNhanHang]) VALUES (N'6df7be80-fcd4-4c86-8291-2c6d2b6c6913', CAST(N'2024-04-24T15:09:46.607' AS DateTime), CAST(N'2024-04-24T15:10:27.280' AS DateTime), NULL, NULL, NULL, NULL, 0, N'Tiền mặt', 6, N'2ec27ab7-5f67-4ed5-ae67-52f9c9726ebf', NULL, 1, N'HD6DF7BE80', 5, N'oke', NULL)
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NgayThanhToan], [TenNguoiNhan], [SDT], [Email], [DiaChi], [TienShip], [PhuongThucThanhToan], [TrangThaiGiaoHang], [IDNhanVien], [IDVoucher], [LoaiHD], [MaHD], [TongTien], [GhiChu], [NgayNhanHang]) VALUES (N'f8384459-e97e-44db-9973-33bc058a2a39', CAST(N'2024-04-24T21:45:41.800' AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, N'2ec27ab7-5f67-4ed5-ae67-52f9c9726ebf', NULL, 1, N'HDF8384459', NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NgayThanhToan], [TenNguoiNhan], [SDT], [Email], [DiaChi], [TienShip], [PhuongThucThanhToan], [TrangThaiGiaoHang], [IDNhanVien], [IDVoucher], [LoaiHD], [MaHD], [TongTien], [GhiChu], [NgayNhanHang]) VALUES (N'1861b136-ca44-40bd-93b0-467182641207', CAST(N'2024-04-24T14:42:55.393' AS DateTime), CAST(N'2024-04-24T14:42:55.370' AS DateTime), N'mmmmmm mmmmmm', N'0364877525', N'mmmmmm@gmail.com', N'khu pho 3 an phu quan 2, Xã Phìn Hồ, Huyện Sìn Hồ, Lai Châu', 30000, N'VNPay', 2, NULL, NULL, 0, N'HD1861B136', 86000, NULL, NULL)
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NgayThanhToan], [TenNguoiNhan], [SDT], [Email], [DiaChi], [TienShip], [PhuongThucThanhToan], [TrangThaiGiaoHang], [IDNhanVien], [IDVoucher], [LoaiHD], [MaHD], [TongTien], [GhiChu], [NgayNhanHang]) VALUES (N'55ceffa5-5672-4007-9d47-5e3273213f54', CAST(N'2024-04-22T15:41:58.660' AS DateTime), CAST(N'2024-04-22T15:42:59.000' AS DateTime), N'mmmmmm mmmmmm', N'0364877525', N'mmmmmm@gmail.com', N'khu pho 3 an phu quan 2, Xã Long Điền, Huyện Đông Hải, Bạc Liêu', 30000, N'COD', 5, N'2ec27ab7-5f67-4ed5-ae67-52f9c9726ebf', NULL, 0, N'HD55CEFFA5', 0, N'ok', CAST(N'2024-04-22T15:42:59.000' AS DateTime))
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NgayThanhToan], [TenNguoiNhan], [SDT], [Email], [DiaChi], [TienShip], [PhuongThucThanhToan], [TrangThaiGiaoHang], [IDNhanVien], [IDVoucher], [LoaiHD], [MaHD], [TongTien], [GhiChu], [NgayNhanHang]) VALUES (N'94d65985-d90a-4bcf-b229-84add5975905', CAST(N'2024-04-22T15:45:12.727' AS DateTime), CAST(N'2024-04-22T15:45:45.493' AS DateTime), N'mmmmmm mmmmmm', N'0364877525', N'mmmmmm@gmail.com', N'khu pho 3 an phu quan 2, Xã Long Thạnh, Huyện Vĩnh Lợi, Bạc Liêu', 40000, N'COD', 6, N'2ec27ab7-5f67-4ed5-ae67-52f9c9726ebf', NULL, 0, N'HD94D65985', 580000, NULL, CAST(N'2024-04-22T15:45:45.493' AS DateTime))
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NgayThanhToan], [TenNguoiNhan], [SDT], [Email], [DiaChi], [TienShip], [PhuongThucThanhToan], [TrangThaiGiaoHang], [IDNhanVien], [IDVoucher], [LoaiHD], [MaHD], [TongTien], [GhiChu], [NgayNhanHang]) VALUES (N'63a3febc-cc9c-47f4-a078-980971101a75', CAST(N'2024-04-24T14:21:18.063' AS DateTime), CAST(N'2024-04-24T14:22:08.467' AS DateTime), N'mmmmmm mmmmmm', N'0364877525', N'mmmmmm@gmail.com', N'khu pho 3 an phu quan 2, Xã Đông Thạnh, Huyện Châu Thành, Hậu Giang', 30000, N'COD', 6, N'2ec27ab7-5f67-4ed5-ae67-52f9c9726ebf', NULL, 0, N'HD63A3FEBC', 171890, NULL, CAST(N'2024-04-24T14:22:08.467' AS DateTime))
INSERT [dbo].[HoaDon] ([ID], [NgayTao], [NgayThanhToan], [TenNguoiNhan], [SDT], [Email], [DiaChi], [TienShip], [PhuongThucThanhToan], [TrangThaiGiaoHang], [IDNhanVien], [IDVoucher], [LoaiHD], [MaHD], [TongTien], [GhiChu], [NgayNhanHang]) VALUES (N'5a58b00e-7eee-466e-849d-b89f6e7eb012', CAST(N'2024-04-22T15:44:39.843' AS DateTime), CAST(N'2024-04-22T15:45:35.107' AS DateTime), N'mmmmmm mmmmmm', N'0364877525', N'mmmmmm@gmail.com', N'khu pho 3 an phu quan 2, Xã Tú Nang, Huyện Yên Châu, Sơn La', 30000, N'COD', 4, N'2ec27ab7-5f67-4ed5-ae67-52f9c9726ebf', NULL, 0, N'HD5A58B00E', 118999, N'x', CAST(N'2024-04-22T15:45:35.107' AS DateTime))
GO
INSERT [dbo].[KhachHang] ([IDKhachHang], [Ten], [Password], [GioiTinh], [NgaySinh], [Email], [DiaChi], [SDT], [DiemTich], [TrangThai]) VALUES (N'e106c66d-f18d-4609-8a38-08e09d68e78c', N'demokhach', N'$2a$10$0WsRvWARFtP1saUwIlIGz.66qTCg8QBW4TgqmcWnBM3gSZDbXVTDy', NULL, NULL, N'demokhach@gmail.com', NULL, N'0987654327', 789, 1)
INSERT [dbo].[KhachHang] ([IDKhachHang], [Ten], [Password], [GioiTinh], [NgaySinh], [Email], [DiaChi], [SDT], [DiemTich], [TrangThai]) VALUES (N'992b39ef-127f-4349-9582-4336b5ecebbb', N'admin2', N'$2a$10$Dtd69oylpK55KA0dSj5x/uAp3OqpPZaLezJGVbdrR9OIIQxOAJavS', NULL, NULL, N'admin2@gmail.com', NULL, N'0987654322', 14189, 1)
INSERT [dbo].[KhachHang] ([IDKhachHang], [Ten], [Password], [GioiTinh], [NgaySinh], [Email], [DiaChi], [SDT], [DiemTich], [TrangThai]) VALUES (N'e8e5a3e5-b99c-48b0-bb9d-f979e97e4ed5', N'nnnnnn nnnnnn', N'$2a$10$6NFhx4g7p7tSAKsvQ..dtOJ0clpGKnPTfy2U9m.Ql1RwScFll8R5y', NULL, NULL, N'nnnnnn@gmail.com', NULL, N'0987654321', 0, 1)
GO
INSERT [dbo].[KhuyenMai] ([ID], [Ten], [GiaTri], [NgayApDung], [NgayKetThuc], [MoTa], [TrangThai]) VALUES (N'9f167f3a-8deb-4dd1-9bbd-213b8f377e40', N'KM01', 100000, CAST(N'2024-04-24T13:28:00.000' AS DateTime), CAST(N'2024-04-27T13:28:00.000' AS DateTime), N'km 30/4', 0)
INSERT [dbo].[KhuyenMai] ([ID], [Ten], [GiaTri], [NgayApDung], [NgayKetThuc], [MoTa], [TrangThai]) VALUES (N'e416bb4b-a3df-4abb-9f49-2b2ed764ee33', N'KM02', 30, CAST(N'2024-04-24T13:29:00.000' AS DateTime), CAST(N'2024-05-01T13:29:00.000' AS DateTime), N'km 30/4', 1)
GO
INSERT [dbo].[KichCo] ([ID], [Ten], [TrangThai]) VALUES (N'5e863e9f-8c80-4ea6-9903-01633155e470', N'X', 1)
INSERT [dbo].[KichCo] ([ID], [Ten], [TrangThai]) VALUES (N'65a264a7-1da7-4937-af45-0683563c98f3', N'XX', 1)
INSERT [dbo].[KichCo] ([ID], [Ten], [TrangThai]) VALUES (N'5c33b977-5f2f-4abf-9f88-0934fbe6bbd5', N'S', 1)
INSERT [dbo].[KichCo] ([ID], [Ten], [TrangThai]) VALUES (N'3c6dbcc1-78d9-4afe-b7bd-6ca99e321119', N'XXX', 1)
INSERT [dbo].[KichCo] ([ID], [Ten], [TrangThai]) VALUES (N'1cda5b09-1fa5-4e55-86b4-9ab947992faf', N'10X', 1)
INSERT [dbo].[KichCo] ([ID], [Ten], [TrangThai]) VALUES (N'ca656d78-80a1-4409-933e-cc3ee5faf0d8', N'XXXL', 1)
INSERT [dbo].[KichCo] ([ID], [Ten], [TrangThai]) VALUES (N'add670bd-a69a-4200-9267-d54cf2171795', N'XL', 1)
GO
INSERT [dbo].[LichSuTichDiem] ([ID], [Diem], [TrangThai], [IDKhachHang], [IDQuyDoiDiem], [IDHoaDon]) VALUES (N'5363bcd8-0720-41ce-8f0a-061a93ba4c2c', 0, 1, N'e8e5a3e5-b99c-48b0-bb9d-f979e97e4ed5', N'16bd37c4-cef0-4e92-9bb5-511c43d99037', N'94d65985-d90a-4bcf-b229-84add5975905')
INSERT [dbo].[LichSuTichDiem] ([ID], [Diem], [TrangThai], [IDKhachHang], [IDQuyDoiDiem], [IDHoaDon]) VALUES (N'e9348725-52c5-4318-d797-08dc62a83aaf', 0, 3, N'e8e5a3e5-b99c-48b0-bb9d-f979e97e4ed5', N'16bd37c4-cef0-4e92-9bb5-511c43d99037', N'55ceffa5-5672-4007-9d47-5e3273213f54')
INSERT [dbo].[LichSuTichDiem] ([ID], [Diem], [TrangThai], [IDKhachHang], [IDQuyDoiDiem], [IDHoaDon]) VALUES (N'69aec725-41e7-4a86-d798-08dc62a83aaf', 0, 3, N'e8e5a3e5-b99c-48b0-bb9d-f979e97e4ed5', N'16bd37c4-cef0-4e92-9bb5-511c43d99037', N'5a58b00e-7eee-466e-849d-b89f6e7eb012')
INSERT [dbo].[LichSuTichDiem] ([ID], [Diem], [TrangThai], [IDKhachHang], [IDQuyDoiDiem], [IDHoaDon]) VALUES (N'f125fcff-a22e-400c-b39f-397b57782de6', 22400, 1, N'e106c66d-f18d-4609-8a38-08e09d68e78c', N'6c81401d-2d54-43c6-b31b-d8a290a445c6', N'c8655c1d-9ecc-40d7-9625-144bf336e77c')
INSERT [dbo].[LichSuTichDiem] ([ID], [Diem], [TrangThai], [IDKhachHang], [IDQuyDoiDiem], [IDHoaDon]) VALUES (N'8960d021-ac65-49cd-af49-578ad1b94f91', 5600, 1, N'992b39ef-127f-4349-9582-4336b5ecebbb', N'6c81401d-2d54-43c6-b31b-d8a290a445c6', N'1861b136-ca44-40bd-93b0-467182641207')
INSERT [dbo].[LichSuTichDiem] ([ID], [Diem], [TrangThai], [IDKhachHang], [IDQuyDoiDiem], [IDHoaDon]) VALUES (N'edc54f5f-76b7-4b94-a8e4-b77cc6d55bcc', 0, 1, N'e8e5a3e5-b99c-48b0-bb9d-f979e97e4ed5', N'16bd37c4-cef0-4e92-9bb5-511c43d99037', N'5a58b00e-7eee-466e-849d-b89f6e7eb012')
INSERT [dbo].[LichSuTichDiem] ([ID], [Diem], [TrangThai], [IDKhachHang], [IDQuyDoiDiem], [IDHoaDon]) VALUES (N'829cb744-e245-4303-9d3c-ddc511508fa8', 0, 1, N'e106c66d-f18d-4609-8a38-08e09d68e78c', N'6c81401d-2d54-43c6-b31b-d8a290a445c6', N'6df7be80-fcd4-4c86-8291-2c6d2b6c6913')
INSERT [dbo].[LichSuTichDiem] ([ID], [Diem], [TrangThai], [IDKhachHang], [IDQuyDoiDiem], [IDHoaDon]) VALUES (N'001c5c54-acbd-470d-b3fa-df65f19078c1', 0, 1, N'e8e5a3e5-b99c-48b0-bb9d-f979e97e4ed5', N'16bd37c4-cef0-4e92-9bb5-511c43d99037', N'55ceffa5-5672-4007-9d47-5e3273213f54')
INSERT [dbo].[LichSuTichDiem] ([ID], [Diem], [TrangThai], [IDKhachHang], [IDQuyDoiDiem], [IDHoaDon]) VALUES (N'855b8c8c-40b5-42c7-9a1e-f7a583ba3d4d', 14189, 1, N'992b39ef-127f-4349-9582-4336b5ecebbb', N'6c81401d-2d54-43c6-b31b-d8a290a445c6', N'63a3febc-cc9c-47f4-a078-980971101a75')
INSERT [dbo].[LichSuTichDiem] ([ID], [Diem], [TrangThai], [IDKhachHang], [IDQuyDoiDiem], [IDHoaDon]) VALUES (N'db90be18-77d5-4ceb-a797-fb6c0654864f', 789, 1, N'e106c66d-f18d-4609-8a38-08e09d68e78c', N'6c81401d-2d54-43c6-b31b-d8a290a445c6', N'c1d49a95-fb49-47f7-b1d6-1a5a1cfcd0d8')
GO
INSERT [dbo].[LoaiSP] ([ID], [Ten], [TrangThai], [IDLoaiSPCha]) VALUES (N'fcf6ab02-0a69-44e3-696f-08dc62a55ede', N'Áo nam', 1, NULL)
INSERT [dbo].[LoaiSP] ([ID], [Ten], [TrangThai], [IDLoaiSPCha]) VALUES (N'552c8672-00c2-481e-6970-08dc62a55ede', N'Áo khoác', 1, N'fcf6ab02-0a69-44e3-696f-08dc62a55ede')
INSERT [dbo].[LoaiSP] ([ID], [Ten], [TrangThai], [IDLoaiSPCha]) VALUES (N'8c0710d8-aca2-42f6-5692-08dc6427b0c9', N'Áo sơ mi', 1, NULL)
INSERT [dbo].[LoaiSP] ([ID], [Ten], [TrangThai], [IDLoaiSPCha]) VALUES (N'76e236f8-3bc2-40fd-5693-08dc6427b0c9', N'Áo thun', 1, NULL)
INSERT [dbo].[LoaiSP] ([ID], [Ten], [TrangThai], [IDLoaiSPCha]) VALUES (N'e34e106b-2dd0-4f07-5694-08dc6427b0c9', N'Áo vest', 1, NULL)
INSERT [dbo].[LoaiSP] ([ID], [Ten], [TrangThai], [IDLoaiSPCha]) VALUES (N'6375dd2d-39b0-428b-5695-08dc6427b0c9', N'Quần jeans', 1, NULL)
INSERT [dbo].[LoaiSP] ([ID], [Ten], [TrangThai], [IDLoaiSPCha]) VALUES (N'03488eca-fd24-4cc2-5696-08dc6427b0c9', N'Quần tây', 1, NULL)
INSERT [dbo].[LoaiSP] ([ID], [Ten], [TrangThai], [IDLoaiSPCha]) VALUES (N'74e6e566-49cc-4e46-5697-08dc6427b0c9', N'Đồ bộ', 1, NULL)
INSERT [dbo].[LoaiSP] ([ID], [Ten], [TrangThai], [IDLoaiSPCha]) VALUES (N'581494fd-6306-4821-5698-08dc6427b0c9', N'Áo thun cổ tròn', 1, N'76e236f8-3bc2-40fd-5693-08dc6427b0c9')
INSERT [dbo].[LoaiSP] ([ID], [Ten], [TrangThai], [IDLoaiSPCha]) VALUES (N'3d2d0216-52d0-4e45-5699-08dc6427b0c9', N'Quần dài', 1, N'03488eca-fd24-4cc2-5696-08dc6427b0c9')
GO
INSERT [dbo].[MauSac] ([ID], [Ten], [Ma], [TrangThai]) VALUES (N'5984fce1-b2f4-4b43-a2f0-30cb3ebefaec', N'Tím', N'#480cd4', 1)
INSERT [dbo].[MauSac] ([ID], [Ten], [Ma], [TrangThai]) VALUES (N'4552f6dc-53f3-4966-a4bb-5a9328e972b8', N'Xanh la', N'#8d9b27', 1)
INSERT [dbo].[MauSac] ([ID], [Ten], [Ma], [TrangThai]) VALUES (N'a5919aa2-b789-423a-b962-6d0f51673a44', N'Xanh', N'#4723fb', 1)
INSERT [dbo].[MauSac] ([ID], [Ten], [Ma], [TrangThai]) VALUES (N'754c5d9d-f44b-453f-9134-a951621f6aa9', N'Đen', N'#000000', 1)
INSERT [dbo].[MauSac] ([ID], [Ten], [Ma], [TrangThai]) VALUES (N'ee6bc3a6-a09c-4c1c-ae32-c22578304978', N'Nâu', N'#392323', 1)
INSERT [dbo].[MauSac] ([ID], [Ten], [Ma], [TrangThai]) VALUES (N'2e31b635-3164-4391-8007-cdee9e3b7d1a', N'Vàng', N'#f4ed1a', 1)
INSERT [dbo].[MauSac] ([ID], [Ten], [Ma], [TrangThai]) VALUES (N'f7ea0204-6a31-4891-b807-cff779915b6d', N'Đỏ', N'#f40b0b', 1)
GO
INSERT [dbo].[NhanVien] ([ID], [Ten], [Email], [SDT], [DiaChi], [TrangThai], [IDVaiTro], [PassWord]) VALUES (N'4127568f-30d8-447f-83b6-45bc740051ca', N'nhanvien', N'nhanvien@gmail.com', N'0987654322', N'hcm vn', 1, N'952c1a5d-74ff-4daf-ba88-135c5440809c', N'$2a$10$6lhBQlZNs6wvg0.BJKevVeOkRFMUy4DoQjBFG.VOzQguzDhK65AXC')
INSERT [dbo].[NhanVien] ([ID], [Ten], [Email], [SDT], [DiaChi], [TrangThai], [IDVaiTro], [PassWord]) VALUES (N'2ec27ab7-5f67-4ed5-ae67-52f9c9726ebf', N'Admin', N'admin@gmail.com', N'0985143915', N'Ha Noi', 1, N'b4996b2d-a343-434b-bfe9-09f8efbb3852', N'$2a$10$Dtd69oylpK55KA0dSj5x/uAp3OqpPZaLezJGVbdrR9OIIQxOAJavS')
GO
INSERT [dbo].[QuyDoiDiem] ([ID], [TiLeTichDiem], [TiLeTieuDiem], [TrangThai]) VALUES (N'16bd37c4-cef0-4e92-9bb5-511c43d99037', 0, 0, 0)
INSERT [dbo].[QuyDoiDiem] ([ID], [TiLeTichDiem], [TiLeTieuDiem], [TrangThai]) VALUES (N'6c81401d-2d54-43c6-b31b-d8a290a445c6', 10, 10, 2)
GO
INSERT [dbo].[SanPham] ([ID], [Ten], [MoTa], [TrangThai], [IDLoaiSP], [IDChatLieu], [Ma]) VALUES (N'adadf1c6-22d3-468a-85a9-2c95c6018d2a', N'Quần tây', N'Thân: 97% Bông, 3% Elastan/ Vải Túi: 65% Polyeste, 35% Bông', 1, N'3d2d0216-52d0-4e45-5699-08dc6427b0c9', N'0d16634e-c334-40f7-a407-982447d694d0', N'SP4')
INSERT [dbo].[SanPham] ([ID], [Ten], [MoTa], [TrangThai], [IDLoaiSP], [IDChatLieu], [Ma]) VALUES (N'30af833f-e6ae-4827-beec-44d2b14a1b02', N'Áo Thun Ngắn Tay KJYT', N'a', 1, N'581494fd-6306-4821-5698-08dc6427b0c9', N'7dda73f2-aae5-4659-8a86-f7f67c812dc9', N'SP6')
INSERT [dbo].[SanPham] ([ID], [Ten], [MoTa], [TrangThai], [IDLoaiSP], [IDChatLieu], [Ma]) VALUES (N'8506c67c-ef59-47b6-a501-53ccda063ae5', N'Áo Thun Dáng Rộng Tay Lỡ', N'The Uniqlo U collection is the realization of a dedicated and skilled team of international designers based at our Paris', 1, N'581494fd-6306-4821-5698-08dc6427b0c9', N'0282068c-edfd-4c76-a1b0-6f1698319eef', N'SP2')
INSERT [dbo].[SanPham] ([ID], [Ten], [MoTa], [TrangThai], [IDLoaiSP], [IDChatLieu], [Ma]) VALUES (N'8e8b89f2-d437-42d2-90dc-678d1770e829', N'Quần Cotton Dáng Relax Dài Đến Mắt Cá', N'Thân: 97% Bông, 3% Elastan/ Vải Túi: 65% Polyeste, 35% Bông', 0, N'3d2d0216-52d0-4e45-5699-08dc6427b0c9', N'7dda73f2-aae5-4659-8a86-f7f67c812dc9', N'SP3')
INSERT [dbo].[SanPham] ([ID], [Ten], [MoTa], [TrangThai], [IDLoaiSP], [IDChatLieu], [Ma]) VALUES (N'4884169c-7103-4932-af8b-77b353b4019d', N'demo them sp', N'demo...', 0, N'581494fd-6306-4821-5698-08dc6427b0c9', N'0282068c-edfd-4c76-a1b0-6f1698319eef', N'SP8')
INSERT [dbo].[SanPham] ([ID], [Ten], [MoTa], [TrangThai], [IDLoaiSP], [IDChatLieu], [Ma]) VALUES (N'31e125aa-ea91-4941-bf9d-7981e62e1b35', N'Áo khoac nam', N'a', 1, N'552c8672-00c2-481e-6970-08dc62a55ede', N'0d16634e-c334-40f7-a407-982447d694d0', N'SP7')
INSERT [dbo].[SanPham] ([ID], [Ten], [MoTa], [TrangThai], [IDLoaiSP], [IDChatLieu], [Ma]) VALUES (N'36c65db0-0379-4302-9b80-cbe624a246bc', N'Áo Thun Ngắn Tay', N'abv', 1, N'581494fd-6306-4821-5698-08dc6427b0c9', N'0d16634e-c334-40f7-a407-982447d694d0', N'SP5')
INSERT [dbo].[SanPham] ([ID], [Ten], [MoTa], [TrangThai], [IDLoaiSP], [IDChatLieu], [Ma]) VALUES (N'91f4602b-f470-40ed-98aa-d401e8f6ce4d', N'Áo Polo Nam Premium Tay Ngắn Phối Viền Cổ Form Fitte', N'- Vải pique mịn, nhẹ được làm từ hỗn hợp cotton và polyester chống vón cục. - Với công nghệ DRY khô nhanh. - Thiết kế cơ bản đa năng và kiểu dáng dễ dàng tạo kiểu. - Cổ áo được cài khuy hoặc cởi ra trông rất đẹp. - Cổ tay áo có gân mang phong cách truyền thống.', 1, N'552c8672-00c2-481e-6970-08dc62a55ede', N'8aeacf00-8e48-4446-bbe2-fe1623973d65', N'SP1')
GO
INSERT [dbo].[VaiTro] ([ID], [Ten], [TrangThai]) VALUES (N'b4996b2d-a343-434b-bfe9-09f8efbb3852', N'Admin', 1)
INSERT [dbo].[VaiTro] ([ID], [Ten], [TrangThai]) VALUES (N'952c1a5d-74ff-4daf-ba88-135c5440809c', N'Nhân viên', 1)
GO
INSERT [dbo].[Voucher] ([ID], [Ten], [HinhThucGiamGia], [SoTienCan], [GiaTri], [NgayApDung], [NgayKetThuc], [SoLuong], [MoTa], [TrangThai]) VALUES (N'dcf1de69-a1ec-489e-90eb-559d4d17dc7e', N'VC01', 1, 50000, 20, CAST(N'2024-04-24T13:30:00.000' AS DateTime), CAST(N'2024-04-27T13:30:00.000' AS DateTime), 98, N'km 30/4', 1)
GO
/****** Object:  Index [IX_Anh_IDMauSac]    Script Date: 4/24/2024 10:04:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_Anh_IDMauSac] ON [dbo].[Anh]
(
	[IDMauSac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Anh_IDSanPham]    Script Date: 4/24/2024 10:04:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_Anh_IDSanPham] ON [dbo].[Anh]
(
	[IDSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietGioHang_IDCTSP]    Script Date: 4/24/2024 10:04:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietGioHang_IDCTSP] ON [dbo].[ChiTietGioHang]
(
	[IDCTSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietGioHang_IDNguoiDung]    Script Date: 4/24/2024 10:04:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietGioHang_IDNguoiDung] ON [dbo].[ChiTietGioHang]
(
	[IDNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietHoaDon_IDCTSP]    Script Date: 4/24/2024 10:04:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietHoaDon_IDCTSP] ON [dbo].[ChiTietHoaDon]
(
	[IDCTSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietHoaDon_IDHoaDon]    Script Date: 4/24/2024 10:04:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietHoaDon_IDHoaDon] ON [dbo].[ChiTietHoaDon]
(
	[IDHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietSanPham_IDKhuyenMai]    Script Date: 4/24/2024 10:04:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietSanPham_IDKhuyenMai] ON [dbo].[ChiTietSanPham]
(
	[IDKhuyenMai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietSanPham_IDKichCo]    Script Date: 4/24/2024 10:04:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietSanPham_IDKichCo] ON [dbo].[ChiTietSanPham]
(
	[IDKichCo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietSanPham_IDMauSac]    Script Date: 4/24/2024 10:04:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietSanPham_IDMauSac] ON [dbo].[ChiTietSanPham]
(
	[IDMauSac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ChiTietSanPham_IDSanPham]    Script Date: 4/24/2024 10:04:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_ChiTietSanPham_IDSanPham] ON [dbo].[ChiTietSanPham]
(
	[IDSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HoaDon_IDNhanVien]    Script Date: 4/24/2024 10:04:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_HoaDon_IDNhanVien] ON [dbo].[HoaDon]
(
	[IDNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_HoaDon_IDVoucher]    Script Date: 4/24/2024 10:04:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_HoaDon_IDVoucher] ON [dbo].[HoaDon]
(
	[IDVoucher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LichSuTichDiem_IDHoaDon]    Script Date: 4/24/2024 10:04:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_LichSuTichDiem_IDHoaDon] ON [dbo].[LichSuTichDiem]
(
	[IDHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LichSuTichDiem_IDKhachHang]    Script Date: 4/24/2024 10:04:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_LichSuTichDiem_IDKhachHang] ON [dbo].[LichSuTichDiem]
(
	[IDKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LichSuTichDiem_IDQuyDoiDiem]    Script Date: 4/24/2024 10:04:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_LichSuTichDiem_IDQuyDoiDiem] ON [dbo].[LichSuTichDiem]
(
	[IDQuyDoiDiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LoaiSP_IDLoaiSPCha]    Script Date: 4/24/2024 10:04:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_LoaiSP_IDLoaiSPCha] ON [dbo].[LoaiSP]
(
	[IDLoaiSPCha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_NhanVien_IDVaiTro]    Script Date: 4/24/2024 10:04:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_NhanVien_IDVaiTro] ON [dbo].[NhanVien]
(
	[IDVaiTro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SanPham_IDChatLieu]    Script Date: 4/24/2024 10:04:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_SanPham_IDChatLieu] ON [dbo].[SanPham]
(
	[IDChatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SanPham_IDLoaiSP]    Script Date: 4/24/2024 10:04:04 PM ******/
CREATE NONCLUSTERED INDEX [IX_SanPham_IDLoaiSP] ON [dbo].[SanPham]
(
	[IDLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Anh] ADD  DEFAULT ('') FOR [DuongDan]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT ((0)) FOR [LoaiHD]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (N'') FOR [MaHD]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (N'') FOR [PassWord]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ('00000000-0000-0000-0000-000000000000') FOR [IDChatLieu]
GO
ALTER TABLE [dbo].[Anh]  WITH CHECK ADD  CONSTRAINT [FK_Anh_MauSac_IDMauSac] FOREIGN KEY([IDMauSac])
REFERENCES [dbo].[MauSac] ([ID])
GO
ALTER TABLE [dbo].[Anh] CHECK CONSTRAINT [FK_Anh_MauSac_IDMauSac]
GO
ALTER TABLE [dbo].[Anh]  WITH CHECK ADD  CONSTRAINT [FK_Anh_SanPham_IDSanPham] FOREIGN KEY([IDSanPham])
REFERENCES [dbo].[SanPham] ([ID])
GO
ALTER TABLE [dbo].[Anh] CHECK CONSTRAINT [FK_Anh_SanPham_IDSanPham]
GO
ALTER TABLE [dbo].[ChiTietGioHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietGioHang_ChiTietSanPham_IDCTSP] FOREIGN KEY([IDCTSP])
REFERENCES [dbo].[ChiTietSanPham] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietGioHang] CHECK CONSTRAINT [FK_ChiTietGioHang_ChiTietSanPham_IDCTSP]
GO
ALTER TABLE [dbo].[ChiTietGioHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietGioHang_GioHang_IDNguoiDung] FOREIGN KEY([IDNguoiDung])
REFERENCES [dbo].[GioHang] ([IDKhachHang])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietGioHang] CHECK CONSTRAINT [FK_ChiTietGioHang_GioHang_IDNguoiDung]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_ChiTietSanPham_IDCTSP] FOREIGN KEY([IDCTSP])
REFERENCES [dbo].[ChiTietSanPham] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_ChiTietSanPham_IDCTSP]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_DanhGia_ID] FOREIGN KEY([ID])
REFERENCES [dbo].[DanhGia] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_DanhGia_ID]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon_IDHoaDon] FOREIGN KEY([IDHoaDon])
REFERENCES [dbo].[HoaDon] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon_IDHoaDon]
GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPham_KhuyenMai_IDKhuyenMai] FOREIGN KEY([IDKhuyenMai])
REFERENCES [dbo].[KhuyenMai] ([ID])
GO
ALTER TABLE [dbo].[ChiTietSanPham] CHECK CONSTRAINT [FK_ChiTietSanPham_KhuyenMai_IDKhuyenMai]
GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPham_KichCo_IDKichCo] FOREIGN KEY([IDKichCo])
REFERENCES [dbo].[KichCo] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietSanPham] CHECK CONSTRAINT [FK_ChiTietSanPham_KichCo_IDKichCo]
GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPham_MauSac_IDMauSac] FOREIGN KEY([IDMauSac])
REFERENCES [dbo].[MauSac] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietSanPham] CHECK CONSTRAINT [FK_ChiTietSanPham_MauSac_IDMauSac]
GO
ALTER TABLE [dbo].[ChiTietSanPham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPham_SanPham_IDSanPham] FOREIGN KEY([IDSanPham])
REFERENCES [dbo].[SanPham] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietSanPham] CHECK CONSTRAINT [FK_ChiTietSanPham_SanPham_IDSanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien_IDNhanVien] FOREIGN KEY([IDNhanVien])
REFERENCES [dbo].[NhanVien] ([ID])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien_IDNhanVien]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_Voucher_IDVoucher] FOREIGN KEY([IDVoucher])
REFERENCES [dbo].[Voucher] ([ID])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_Voucher_IDVoucher]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_GioHang_IDKhachHang] FOREIGN KEY([IDKhachHang])
REFERENCES [dbo].[GioHang] ([IDKhachHang])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_GioHang_IDKhachHang]
GO
ALTER TABLE [dbo].[LichSuTichDiem]  WITH CHECK ADD  CONSTRAINT [FK_LichSuTichDiem_HoaDon_IDHoaDon] FOREIGN KEY([IDHoaDon])
REFERENCES [dbo].[HoaDon] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichSuTichDiem] CHECK CONSTRAINT [FK_LichSuTichDiem_HoaDon_IDHoaDon]
GO
ALTER TABLE [dbo].[LichSuTichDiem]  WITH CHECK ADD  CONSTRAINT [FK_LichSuTichDiem_KhachHang_IDKhachHang] FOREIGN KEY([IDKhachHang])
REFERENCES [dbo].[KhachHang] ([IDKhachHang])
GO
ALTER TABLE [dbo].[LichSuTichDiem] CHECK CONSTRAINT [FK_LichSuTichDiem_KhachHang_IDKhachHang]
GO
ALTER TABLE [dbo].[LichSuTichDiem]  WITH CHECK ADD  CONSTRAINT [FK_LichSuTichDiem_QuyDoiDiem_IDQuyDoiDiem] FOREIGN KEY([IDQuyDoiDiem])
REFERENCES [dbo].[QuyDoiDiem] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichSuTichDiem] CHECK CONSTRAINT [FK_LichSuTichDiem_QuyDoiDiem_IDQuyDoiDiem]
GO
ALTER TABLE [dbo].[LoaiSP]  WITH CHECK ADD  CONSTRAINT [FK_LoaiSP_LoaiSP_IDLoaiSPCha] FOREIGN KEY([IDLoaiSPCha])
REFERENCES [dbo].[LoaiSP] ([ID])
GO
ALTER TABLE [dbo].[LoaiSP] CHECK CONSTRAINT [FK_LoaiSP_LoaiSP_IDLoaiSPCha]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_VaiTro_IDVaiTro] FOREIGN KEY([IDVaiTro])
REFERENCES [dbo].[VaiTro] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_VaiTro_IDVaiTro]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_ChatLieu_IDChatLieu] FOREIGN KEY([IDChatLieu])
REFERENCES [dbo].[ChatLieu] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_ChatLieu_IDChatLieu]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP_IDLoaiSP] FOREIGN KEY([IDLoaiSP])
REFERENCES [dbo].[LoaiSP] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP_IDLoaiSP]
GO
USE [master]
GO
ALTER DATABASE [DBVioPerfume] SET  READ_WRITE 
GO
