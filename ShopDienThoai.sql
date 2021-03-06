USE [master]
GO
/****** Object:  Database [ShopDienThoai]    Script Date: 09/05/2017 20:56:23 ******/
CREATE DATABASE [ShopDienThoai]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopDienThoai', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ShopDienThoai.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ShopDienThoai_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ShopDienThoai_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ShopDienThoai] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopDienThoai].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopDienThoai] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopDienThoai] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopDienThoai] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopDienThoai] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopDienThoai] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopDienThoai] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShopDienThoai] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopDienThoai] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopDienThoai] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopDienThoai] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopDienThoai] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopDienThoai] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopDienThoai] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopDienThoai] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopDienThoai] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShopDienThoai] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopDienThoai] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopDienThoai] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopDienThoai] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopDienThoai] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopDienThoai] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopDienThoai] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopDienThoai] SET RECOVERY FULL 
GO
ALTER DATABASE [ShopDienThoai] SET  MULTI_USER 
GO
ALTER DATABASE [ShopDienThoai] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopDienThoai] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopDienThoai] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopDienThoai] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ShopDienThoai] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ShopDienThoai', N'ON'
GO
USE [ShopDienThoai]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 09/05/2017 20:56:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 09/05/2017 20:56:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 09/05/2017 20:56:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 09/05/2017 20:56:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 09/05/2017 20:56:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 09/05/2017 20:56:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 09/05/2017 20:56:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBL] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [int] NOT NULL,
	[MaTK] [nvarchar](128) NOT NULL,
	[TenTK] [nvarchar](256) NOT NULL,
	[NoiDung] [nvarchar](2048) NOT NULL,
	[ThoiGian] [date] NOT NULL,
	[TinhTrang] [int] NOT NULL CONSTRAINT [DF_BinhLuan_TinhTrang]  DEFAULT ((1)),
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[MaBL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietSP]    Script Date: 09/05/2017 20:56:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSP](
	[MaSP] [int] NULL,
	[ChiTietSP] [nvarchar](500) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 09/05/2017 20:56:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[MaTK] [int] NULL,
	[MaSP] [int] NULL,
	[SoLuong] [int] NULL,
	[GiaTien] [int] NULL,
	[MaTinhTrang] [int] NULL,
	[BiXoa] [int] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HangSP]    Script Date: 09/05/2017 20:56:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangSP](
	[MaHang] [int] IDENTITY(1,1) NOT NULL,
	[TenHang] [nvarchar](50) NULL,
	[BiXoa] [int] NOT NULL CONSTRAINT [DF_HangSP_BiXoa]  DEFAULT ((0)),
 CONSTRAINT [PK_HangSP] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 09/05/2017 20:56:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[BiXoa] [int] NOT NULL CONSTRAINT [DF_LoaiSP_BiXoa]  DEFAULT ((0)),
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiTK]    Script Date: 09/05/2017 20:56:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTK](
	[MaLoaiTK] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiTK] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiTK] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 09/05/2017 20:56:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[MaHang] [int] NULL,
	[MaLoai] [int] NULL,
	[HinhAnh] [nvarchar](50) NULL,
	[TinhTrang] [int] NULL,
	[GiaBan] [int] NULL,
	[SoLuong] [int] NULL,
	[ThongTin] [nvarchar](500) NULL,
	[GhiChu] [nvarchar](50) NULL,
	[BiXoa] [int] NOT NULL CONSTRAINT [DF_SanPham_BiXoa]  DEFAULT ((0)),
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 09/05/2017 20:56:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTK] [int] IDENTITY(1,1) NOT NULL,
	[TenTaiKhoan] [varchar](20) NULL,
	[MatKhau] [varchar](50) NULL,
	[MaLoaiTK] [int] NOT NULL CONSTRAINT [DF_TaiKhoan_MaLoaiTK]  DEFAULT ((2)),
	[HoTen] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[SoDienThoai] [varchar](11) NULL,
	[NgaySinh] [date] NULL,
	[MaTinhThanh] [int] NULL,
	[BiXoa] [int] NOT NULL CONSTRAINT [DF_TaiKhoan_BiXoa]  DEFAULT ((0)),
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TinhThanh]    Script Date: 09/05/2017 20:56:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhThanh](
	[MaTinhThanh] [int] IDENTITY(1,1) NOT NULL,
	[TenTinhThanh] [nvarchar](50) NULL,
 CONSTRAINT [PK_TinhThanh] PRIMARY KEY CLUSTERED 
(
	[MaTinhThanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TinhTrangDH]    Script Date: 09/05/2017 20:56:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhTrangDH](
	[MaTinhTrang] [int] IDENTITY(1,1) NOT NULL,
	[TenTinhTrang] [nvarchar](50) NULL,
 CONSTRAINT [PK_TinhTrangDH] PRIMARY KEY CLUSTERED 
(
	[MaTinhTrang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TinhTrangSP]    Script Date: 09/05/2017 20:56:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhTrangSP](
	[MaTinhTrang] [int] IDENTITY(1,1) NOT NULL,
	[TenTinhTrang] [nvarchar](50) NULL,
 CONSTRAINT [PK_TinhTrangSP] PRIMARY KEY CLUSTERED 
(
	[MaTinhTrang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201705041235215_InitialCreate', N'Template.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EDC36107D2FD07F10F4D416CECA9726488DDD04CEDA6E8DC617649DA06F0157E2AE8548942A518E8DA25FD6877E527FA14389BAF1A2CBAEBCBB0E020416393C331C0EC9E170B8FFFDF3EFF8ED83EF19F7388ADD804CCC83D1BE696062078E4B961333A18B17AFCDB76FBEFF6E7CE6F80FC6A79CEE88D1414B124FCC3B4AC363CB8AED3BECA378E4BB7614C4C1828EECC0B790135887FBFBBF58070716060813B00C63FC2121D4F571FA019FD380D838A409F22E03077B312F879A598A6A5C211FC721B2F1C4BCC57EE8218A4719A9699C782E023166D85B98062224A0888290C71F633CA3514096B3100A9077FB1862A05B202FC65CF8E392BC6B3FF60F593FACB2610E6527310DFC9E8007475C3196D87C25F59A85E2407567A062FAC87A9DAA6F625E38382DFA1078A00091E1F1D48B18F1C4BC2C589CC4E115A6A3BCE128833C8F00EE6B107D195511F78CCEEDF60A433A1CEDB37F7BC634F16812E109C1098D90B767DC2473CFB57FC78FB7C1174C264707F3C5D1EB97AF9073F4EA677CF4B2DA53E82BD0D50AA0E8260A421C816C7851F4DF34AC7A3B4B6C5834ABB4C9B402B60473C2342ED1C37B4C96F40E66CBE16BD338771FB0939770E3FA485C9842D08846097C5E259E87E61E2EEAAD469EECFF06AE872F5F0DC2F50ADDBBCB74E805FE30712298571FB097D6C6776E984DAFDA787FE664E751E0B3EFBA7D65B59F674112D9AC338196E416454B4CEBD28DADD2783B9934831ADEAC73D4DD376D26A96CDE4A52D6A1556642CE62D3B32197F769F976B6B8933084C14B4D8B69A4C9E0849D6A2434DD337282D2680EBA1A0D81CE7CCB6BE0998F5C6F8045B00317703E166EE4E3A297EF023039447ACB7C83E218D600E73714DF35880E7F0E20FA0CDB4904A639A3C80F9F9CDBCD5D40F055E2CF99C56F8ED7604373FB353847360DA233C25AAD8DF73EB0BF04093D23CE29CCDF8FD4CE01D9E7ADEB770718449C13DBC6717C0EC68C9D6900BE750E7841E8D1616F38B63A6DDB09997AC8F5D55E88B08E7ECE494B4F444D2179231A329547D224EAFB60E9926EA2E6A47A51338A565139595F511958374939A55ED094A055CE8C6A301F2F1DA1E19DBC1476F7BDBCF5366FDD5A5051E30C5648FC2B26388265CCB94194E2889423D065DDD886B3900E1F63FAE47B53CAE913F292A159AD341BD24560F8D990C2EEFE6C48C584E27BD7615E4987A34F4E0CF09DE8D5A7AAF6392748B6E9E950EBE6A6996F660DD04D9793380E6C379D058AA0170F59D4E5071FCE688F5F64BD116320D0313074976D7950027D3345A3BA26A7D8C3141B277616149CA2D8468EAC46E890D343B07C47550856C642EAC2FD24F1044BC7116B84D821288699EA122A4F0B97D86E88BC562D092D3B6E61ACEF050FB1E61487983086AD9AE8C25C1DFA6002147C844169D3D0D8AA585CB3216ABC56DD98B7B9B0E5B84B11898DD8648BEFACB14BEEBF3D8961366B6C03C6D9AC922E0268C378DB30507E56E96A00E2C165D70C543831690C94BB541B31D0BAC6B660A075953C3B03CD8EA85DC75F38AFEE9A79D60FCA9BDFD61BD5B505DBACE963C74C33F33DA10D85163892CDF374CE2AF103551CCE404E7E3E8BB9AB2B9A08039F615A0FD994FEAED20FB59A4144236A022C0DAD05945F004A40D284EA215C1ECB6B948E7B113D60F3B85B232C5FFB05D88A0DC8D8D58BD00AA1FEBA5434CE4EA78FA26785354846DEE9B050C1511884B878D53BDE4129BAB8ACAC982EBE701F6FB8D2313E180D0A6AF15C354ACA3B33B89672D36CD792CA21EBE392ADA525C17DD26829EFCCE05AE236DAAE248553D0C32D584B45F52D7CA0C996473A8ADDA6A81B5B5972142F185B9A2CAAF1250A43972C2B5955BCC498652955D317B3FEE9467E8661D9B122EBA890B6E04483082DB1500BAC41D273378AE929A2688E589C67EAF81299726FD52CFF39CBEAF6290F62BE0FE4D4EC6F7E57285CDBD7365AD913E100E7D03D9FB933690C5D31F8EAE6064B71431E8A1461FB69E0253ED17B57FAD6D9E55DB57D5622238C2D417EC97B925425F9B875BD771A1579460C314285E7B2FA28E92174BACEFDCEAAB675BEA81E250F4D555174E1AAAD8D9ACE85E93E52A26BD87FA05A119E6646F17C942A002FEA8951496990C02A75DD51EB592755CC7A4D774421B5A40A2954F590B29A405213B25AB1129E46A36A8AEE1CE494912ABA5CDB1D59913C52855654AF80AD9059ACEB8EAAC82FA9022BAABB6397C926E20ABAC37B96F6C0B2DAA6951D68D7DBB534184FB31C0EB3E955EEEDAB4095E29E58FC665E02E3E53B694ADA53DD6AA6940531D633250D867ECDA95D77D7979CC63B7A3D66ED0EBBB6AC37DDE1EBF1FA19EC939A8574A213490AEEC5C94E38C18DF969AAFDB18C74BCCA484C2357236CE98F31C5FE88118C667F7A53CFC56C01CF092E11711738A659DE8679B87F70283CB9D99DE72F561C3B9EE234AA7B03531FB30DA460917B14D97728921322D6782252824AB1E60BE2E08789F957DAEA380D5BB0BFD2E23DE322FE48DC3F13A8B88D126CFC2D27780E9332DF7CB6DAD1070EDDB57AF1C7E7ACE99E711DC18C3936F6055DAE32C2F5670FBDA4C99AAE21CDCA8F219EEF84AABD3750A20A1362F5E70573970EF2B42097F2071F3DFCD85734E5F381B510154F0486C21B4485BA2700AB6069D3FF1DF8A469FA7FBFCEAA9F03AC229AF629804BFA83890F01BA2F4379CB2D6E358A03D12696A454CFAD89D46B65556E7B6F92F2ADD79AE8724E750FB835F2A657B08C6796723CD8EEA8C8281E0C7B9BA6FDE469C4BB92395CE6746C3761789339C20DB741DF546AF00E24B3299273B69F00BC695BD30571773C8BB25F9AEF8E191B4FD9DA7E32EFA68D4D17E6DD7163EB95B2BB63B6B6ADFD73CB96D6790BDD7A02AE9C4BA4B98C51C582DB126CB3C0399CF0E7011841E65166EF22D5195D4DD9A82D0C4B123D537D2A99C8589A38125F89A2996DBFBEF20DBFB1B39CA699AD2601B389375FFF1B79739A66DE9AB4C66DA4062B130B55E9DA2DEB5853EED3734A05AEF5A425F3BCCD676DBC597F4E99BF8328A5367B3477C4CF27D17710950C39757A24F6CAD7BDB077567E4111F6EFD85D9610ECF71409B66BBB664173411641BE790B12E5244284E61253E4C0967A125177816C0AD52CC69C3EEC4EE376ECA6638E9D0B729DD030A1D065ECCFBD5AC08B39014DFCD3ECE5BACCE3EB30FD8D9221BA0062BA2C367F4DDE25AEE714729F2B62421A08E65DF0882E1B4BCA22BBCBC702E92A201D81B8FA0AA728CFE688AFC90CDDE3556403F37B8F97C87E2C23803A90F681A8AB7D7CEAA26584FC986394EDE1136CD8F11FDEFC0FCC8EC06948540000, N'6.1.3-40302')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'9bf9cfe9-a52b-419f-8249-56113283400e', N'Admin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9c646d5b-2ee3-4993-aca4-315a3f012326', N'9bf9cfe9-a52b-419f-8249-56113283400e')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'9c646d5b-2ee3-4993-aca4-315a3f012326', N'admin@gmail.com', 0, N'AG5d2dkhpG99cb26wUUmdeDP1cu6r91GjwrXzVcmwWx4j74icYqOEDz760XffCQktw==', N'f784511f-ac9c-41f4-9c66-f63530aa9720', NULL, 0, 0, NULL, 0, 0, N'admin@gmail.com')
SET IDENTITY_INSERT [dbo].[BinhLuan] ON 

INSERT [dbo].[BinhLuan] ([MaBL], [MaSP], [MaTK], [TenTK], [NoiDung], [ThoiGian], [TinhTrang]) VALUES (1, 5, N'9c646d5b-2ee3-4993-aca4-315a3f012326', N'admin@gmail.com', N'asdas', CAST(N'2017-05-09' AS Date), 0)
INSERT [dbo].[BinhLuan] ([MaBL], [MaSP], [MaTK], [TenTK], [NoiDung], [ThoiGian], [TinhTrang]) VALUES (2, 5, N'9c646d5b-2ee3-4993-aca4-315a3f012326', N'admin@gmail.com', N'asdas1231231231', CAST(N'2017-05-09' AS Date), 0)
INSERT [dbo].[BinhLuan] ([MaBL], [MaSP], [MaTK], [TenTK], [NoiDung], [ThoiGian], [TinhTrang]) VALUES (3, 5, N'9c646d5b-2ee3-4993-aca4-315a3f012326', N'admin@gmail.com', N'thoi di ma', CAST(N'2017-05-09' AS Date), 0)
INSERT [dbo].[BinhLuan] ([MaBL], [MaSP], [MaTK], [TenTK], [NoiDung], [ThoiGian], [TinhTrang]) VALUES (4, 5, N'9c646d5b-2ee3-4993-aca4-315a3f012326', N'admin@gmail.com', N'hihi', CAST(N'2017-05-09' AS Date), 0)
INSERT [dbo].[BinhLuan] ([MaBL], [MaSP], [MaTK], [TenTK], [NoiDung], [ThoiGian], [TinhTrang]) VALUES (5, 5, N'9c646d5b-2ee3-4993-aca4-315a3f012326', N'admin@gmail.com', N'hihiasda', CAST(N'2017-05-09' AS Date), 0)
INSERT [dbo].[BinhLuan] ([MaBL], [MaSP], [MaTK], [TenTK], [NoiDung], [ThoiGian], [TinhTrang]) VALUES (6, 5, N'9c646d5b-2ee3-4993-aca4-315a3f012326', N'admin@gmail.com', N'hihiasda', CAST(N'2017-05-09' AS Date), 0)
INSERT [dbo].[BinhLuan] ([MaBL], [MaSP], [MaTK], [TenTK], [NoiDung], [ThoiGian], [TinhTrang]) VALUES (7, 5, N'9c646d5b-2ee3-4993-aca4-315a3f012326', N'admin@gmail.com', N'a', CAST(N'2017-05-09' AS Date), 0)
INSERT [dbo].[BinhLuan] ([MaBL], [MaSP], [MaTK], [TenTK], [NoiDung], [ThoiGian], [TinhTrang]) VALUES (8, 5, N'9c646d5b-2ee3-4993-aca4-315a3f012326', N'admin@gmail.com', N'asda', CAST(N'2017-05-09' AS Date), 0)
INSERT [dbo].[BinhLuan] ([MaBL], [MaSP], [MaTK], [TenTK], [NoiDung], [ThoiGian], [TinhTrang]) VALUES (9, 5, N'9c646d5b-2ee3-4993-aca4-315a3f012326', N'admin@gmail.com', N'a', CAST(N'2017-05-09' AS Date), 0)
INSERT [dbo].[BinhLuan] ([MaBL], [MaSP], [MaTK], [TenTK], [NoiDung], [ThoiGian], [TinhTrang]) VALUES (10, 5, N'9c646d5b-2ee3-4993-aca4-315a3f012326', N'admin@gmail.com', N'aa', CAST(N'2017-05-09' AS Date), 0)
INSERT [dbo].[BinhLuan] ([MaBL], [MaSP], [MaTK], [TenTK], [NoiDung], [ThoiGian], [TinhTrang]) VALUES (11, 5, N'9c646d5b-2ee3-4993-aca4-315a3f012326', N'admin@gmail.com', N'á', CAST(N'2017-05-09' AS Date), 0)
INSERT [dbo].[BinhLuan] ([MaBL], [MaSP], [MaTK], [TenTK], [NoiDung], [ThoiGian], [TinhTrang]) VALUES (12, 5, N'9c646d5b-2ee3-4993-aca4-315a3f012326', N'admin@gmail.com', N'â', CAST(N'2017-05-09' AS Date), 0)
INSERT [dbo].[BinhLuan] ([MaBL], [MaSP], [MaTK], [TenTK], [NoiDung], [ThoiGian], [TinhTrang]) VALUES (13, 4, N'9c646d5b-2ee3-4993-aca4-315a3f012326', N'admin@gmail.com', N'12', CAST(N'2017-05-09' AS Date), 0)
INSERT [dbo].[BinhLuan] ([MaBL], [MaSP], [MaTK], [TenTK], [NoiDung], [ThoiGian], [TinhTrang]) VALUES (16, 4, N'9c646d5b-2ee3-4993-aca4-315a3f012326', N'admin@gmail.com', N'a', CAST(N'2017-05-09' AS Date), 0)
SET IDENTITY_INSERT [dbo].[BinhLuan] OFF
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (4, N'Màn Hình: 5.1 inch (1440 x 2560 pixels);Ram: 3GB;Chip: Exynos 8890;Hệ Điều Hành: Andoid 6.0')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (5, N'Màn Hình: 4.7 inch(1334 x 750 pixel);Ram: 2GB; Chip: Apple A10;Hệ Điều Hành:IOS 10')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (6, N'Màn Hình: 4.7 inch(1334 x 750 pixel);Ram: 2GB; Chip: Apple A10;Hệ Điều Hành:IOS 10')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (7, N'Màn Hình: 4.7 inch(1334 x 750 pixel);Ram: 2GB; Chip: Apple A10;Hệ Điều Hành:IOS 10')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (8, N'Màn Hình: 5.1 inch (1440 x 2560 pixels);Ram: 3GB;Chip: Exynos 8890;Hệ Điều Hành: Andoid 6.0')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (9, N'Màn Hình: 4.7 inch(1334 x 750 pixel);Ram: 2GB; Chip: Apple A10;Hệ Điều Hành:IOS 10')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (10, N'Màn Hình: 5.1 inch (1440 x 2560 pixels);Ram: 3GB;Chip: Exynos 8890;Hệ Điều Hành: Andoid 6.0')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (11, N'Màn Hình: 5.5 inch (1920 x 1080 pixels);Ram: 4GB;Chip: Helio P10 8 nhân;Hệ Điều Hành: Andoid 5.1')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (12, N'Màn Hình: 5 inch (1280 x 720 pixels);Ram: 2GB;Chip: Snapdragon 410 4 nhân;Hệ Điều Hành: Andoid 5.1')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (13, N'Màn Hình: 5.2 inch (1920 x 1080 pixels);Ram: 3GB;Chip: Snapdragon 810 8 nhân;Hệ Điều Hành: Andoid 6.0')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (14, N'Màn Hình: 6 inch (1920 x 1080 pixels);Ram: 3GB;Chip: Helio P10 8 nhân;Hệ Điều Hành: Andoid 6.0')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (15, N'Màn Hình: 5.5 inch (4096 x 2160 pixels);Ram: 4GB;Chip: Exynos 8890 8 nhân;Hệ Điều Hành: Andoid 6.0')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (16, N'Màn Hình: 5.5 inch (4096 x 2160 pixels);Ram: 4GB;Chip: Exynos 8890 8 nhân;Hệ Điều Hành: Andoid 6.0')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (17, N'Màn Hình: 5.5 inch (4096 x 2160 pixels);Ram: 4GB;Chip: Exynos 8890 8 nhân;Hệ Điều Hành: Andoid 6.0')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (18, N'Màn Hình: 5.7 inch (4096 x 2160 pixels);Ram: 4GB;Chip: Exynos 7420 8 nhân;Hệ Điều Hành: Andoid 6.0')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (19, N'Màn Hình: 5.3 inch (1280 x 720 pixels);Ram: 2GB;Chip: MT6735 4 nhân;Hệ Điều Hành: Andoid 6.0')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (20, N'Màn Hình: 5.3 inch (1280 x 720 pixels);Ram: 1.5GB;Chip: MTK 6582 4 nhân;Hệ Điều Hành: Andoid 5.0')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (21, N'Màn Hình: 5.2 inch (4096 x 2160 pixels);Ram: 4GB;Chip: Snapdragon 4 nhân;Hệ Điều Hành: Andoid 6.0')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (22, N'Màn Hình: 5 inch (1920 x 1080 pixels);Ram: 2GB;Chip: Snapdragon 617 8 nhân;Hệ Điều Hành: Andoid 6.0')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (23, N'Màn Hình: 5.5 inch (1920 x 1080 pixels);Ram: 4GB;Chip: MTK Helio P10 8 nhân;Hệ Điều Hành: Andoid 6.0')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (24, N'Màn Hình: 5.2 inch (4096 x 2160 pixels);Ram: 3GB;Chip: MTK Helio X10 8 nhân;Hệ Điều Hành: Andoid 5.0')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (25, N'Màn Hình: 5 inch (1280 x 720 pixels);Ram: 2GB;Chip: MTK Helio P10 8 nhân;Hệ Điều Hành: Andoid 6.0')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (26, N'Màn Hình: 6.4 inch (1920 x 1080 pixels);Ram: 6GB;Chip: Snapdragon 821;Hệ Điều Hành: Andoid 6.0')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (27, N'Màn Hình: 5.7 inch (1920 x 1080 pixels);Ram: 4/6GB;Chip: Snapdragon 821;Hệ Điều Hành: Andoid 6.0')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (28, N'Màn Hình: 4 inch (1136 x 640 pixels);Ram: 2GB;Chip: Apple A9 2 nhân;Hệ Điều Hành: IOS 10')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (29, N'Màn Hình: 5.5 inch (1334 x 750 pixels);Ram: 2GB;Chip: Apple A9 2 nhân;Hệ Điều Hành: IOS 10')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (30, N'Màn Hình: 5.7 inch (1920 x 1080 pixels);Ram: 4/6GB;Chip: Snapdragon 821;Hệ Điều Hành: Android 6.0')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (31, N'Màn Hình: 5.15 inch (1920 x 1080 pixels);Ram: 3/4GB;Chip: Snapdragon 821;Hệ Điều Hành: Android 6.0')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (32, N'Màn Hình: 5.3 inch (2560 x 1440 pixels);Ram: 4GB;Chip: Snapdragon 820;Hệ Điều Hành: Android 6.0')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (33, N'Màn Hình: 12.9 inch (2560 x 1440 pixels);Ram: 4GB;Chip: Apple A9 2 nhân;Hệ Điều Hành: IOS 9.0')
INSERT [dbo].[ChiTietSP] ([MaSP], [ChiTietSP]) VALUES (34, N'Màn Hình: 9.7 inch (2560 x 1440 pixels);Ram: 2GB;Chip: Tripe Core 1.5Ghz;Hệ Điều Hành: IOS 8.0')
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([MaDonHang], [MaTK], [MaSP], [SoLuong], [GiaTien], [MaTinhTrang], [BiXoa]) VALUES (3, 1, 5, 1, 12300000, 1, 0)
INSERT [dbo].[DonHang] ([MaDonHang], [MaTK], [MaSP], [SoLuong], [GiaTien], [MaTinhTrang], [BiXoa]) VALUES (4, 2, 7, 2, 10000000, 1, 0)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
SET IDENTITY_INSERT [dbo].[HangSP] ON 

INSERT [dbo].[HangSP] ([MaHang], [TenHang], [BiXoa]) VALUES (1, N'Samsung', 0)
INSERT [dbo].[HangSP] ([MaHang], [TenHang], [BiXoa]) VALUES (2, N'Apple', 0)
INSERT [dbo].[HangSP] ([MaHang], [TenHang], [BiXoa]) VALUES (3, N'Sony', 0)
INSERT [dbo].[HangSP] ([MaHang], [TenHang], [BiXoa]) VALUES (4, N'Xiaomi', 0)
INSERT [dbo].[HangSP] ([MaHang], [TenHang], [BiXoa]) VALUES (5, N'HTC', 0)
INSERT [dbo].[HangSP] ([MaHang], [TenHang], [BiXoa]) VALUES (6, N'Oppo', 0)
INSERT [dbo].[HangSP] ([MaHang], [TenHang], [BiXoa]) VALUES (7, N'LG', 0)
INSERT [dbo].[HangSP] ([MaHang], [TenHang], [BiXoa]) VALUES (8, N'Toshiba', 0)
SET IDENTITY_INSERT [dbo].[HangSP] OFF
SET IDENTITY_INSERT [dbo].[LoaiSP] ON 

INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [BiXoa]) VALUES (1, N'SmartPhone', 0)
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [BiXoa]) VALUES (2, N'Table', 0)
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [BiXoa]) VALUES (3, N'Laptop', 0)
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [BiXoa]) VALUES (4, N'Con Cas', 1)
SET IDENTITY_INSERT [dbo].[LoaiSP] OFF
SET IDENTITY_INSERT [dbo].[LoaiTK] ON 

INSERT [dbo].[LoaiTK] ([MaLoaiTK], [TenLoaiTK]) VALUES (1, N'Qu?n tr? viên')
INSERT [dbo].[LoaiTK] ([MaLoaiTK], [TenLoaiTK]) VALUES (2, N'Ngu?i dùng')
SET IDENTITY_INSERT [dbo].[LoaiTK] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (4, N'SamSung Galaxy A7', 1, 1, N'samsunggalaxya7.jpg', NULL, 7200000, 3, N'<p>M&agrave;n H&igrave;nh: 5.1 inch (1440 x 2560 pixels)</p><p>Ram: 3GB</p><p>Chip: Exynos 8890</p><p>Hệ Điều H&agrave;nh: Andoid 6.0</p>', N'new', 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (5, N'Iphone 7 plus', 1, 1, N'iphone7plus.jpg', NULL, 15900000, 0, N'<p>M&agrave;n H&igrave;nh: 4.7 inch(1334 x 750 pixel)</p><p>Ram: 2GB</p><p>Chip: Apple A10</p><p>Hệ Điều H&agrave;nh:IOS 10</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (6, N'Iphone 6', 1, 1, N'iphone6.jpg', NULL, 8990000, 3, N'<p>M&agrave;n H&igrave;nh: 4.7 inch(1334 x 750 pixel)</p><p>Ram: 2GB</p><p>Chip: Apple A10</p><p>Hệ Điều H&agrave;nh:IOS 10</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (7, N'Iphone 6 plus', 1, 1, N'iphone6plus.jpg', NULL, 11900000, 6, N'<p>M&agrave;n H&igrave;nh: 4.7 inch(1334 x 750 pixel)</p><p>Ram: 2GB</p><p>Chip: Apple A10</p><p>Hệ Điều H&agrave;nh:IOS 10</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (8, N'Sony Xperia X', 1, 1, N'sonyxperiax.jpg', NULL, 12990000, 1, N'<p>M&agrave;n H&igrave;nh: 5.1 inch (1440 x 2560 pixels)</p><p>Ram: 3GB</p><p>Chip: Exynos 8890</p><p>Hệ Điều H&agrave;nh: Andoid 6.0</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (9, N'Iphone 6s', 1, 1, N'iphone6s.jpg', NULL, 14990000, 7, N'<p>M&agrave;n H&igrave;nh: 4.7 inch(1334 x 750 pixel)</p><p>Ram: 2GB</p><p>Chip: Apple A10</p><p>Hệ Điều H&agrave;nh:IOS 10</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (10, N'Sony Xperia XZ', 1, 1, N'sonyxperiaxz.jpg', NULL, 12300000, 3, N'<p>M&agrave;n H&igrave;nh: 5.1 inch (1440 x 2560 pixels)</p><p>Ram: 3GB</p><p>Chip: Exynos 8890</p><p>Hệ Điều H&agrave;nh: Andoid 6.0</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (11, N'Oppo F1 Plus', 1, 1, N'oppof1plus.jpg', NULL, 7000000, 10, N'<p>M&agrave;n H&igrave;nh: 5.5 inch (1920 x 1080 pixels)</p><p>Ram: 4GB</p><p>Chip: Helio P10 8 nh&acirc;n</p><p>Hệ Điều H&agrave;nh: Andoid 5.1</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (12, N'Oppo A37', 1, 1, N'oppoa37.jpg', NULL, 5600000, 6, N'<p>M&agrave;n H&igrave;nh: 5 inch (1280 x 720 pixels)</p><p>Ram: 2GB</p><p>Chip: Snapdragon 410 4 nh&acirc;n</p><p>Hệ Điều H&agrave;nh: Andoid 5.1</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (13, N'Sony Xperia Z5 Dual', 1, 1, N'sonyxperiaz5dual.jpg', NULL, 1500000, 3, N'<p>M&agrave;n H&igrave;nh: 5.2 inch (1920 x 1080 pixels)</p><p>Ram: 3GB</p><p>Chip: Snapdragon 810 8 nh&acirc;n</p><p>Hệ Điều H&agrave;nh: Andoid 6.0</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (14, N'Sony Xperia XA Ultra', 1, 1, N'sonyxperiaxaultra.jpg', NULL, 7000000, 8, N'<p>M&agrave;n H&igrave;nh: 6 inch (1920 x 1080 pixels)</p><p>Ram: 3GB</p><p>Chip: Helio P10 8 nh&acirc;n</p><p>Hệ Điều H&agrave;nh: Andoid 6.0</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (15, N'SamSung Galaxy S7E Blue', 1, 1, N'samsunggalaxys7edgeblue.jpg', NULL, 16500000, 12, N'<p>M&agrave;n H&igrave;nh: 5.5 inch (4096 x 2160 pixels)</p><p>Ram: 4GB</p><p>Chip: Exynos 8890 8 nh&acirc;n</p><p>Hệ Điều H&agrave;nh: Andoid 6.0</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (16, N'SamSung Galaxy S7 EDGE', 1, 1, N'samsunggalaxys7edge.jpg', NULL, 14000000, 15, N'<p>M&agrave;n H&igrave;nh: 5.5 inch (4096 x 2160 pixels)</p><p>Ram: 4GB</p><p>Chip: Exynos 8890 8 nh&acirc;n</p><p>Hệ Điều H&agrave;nh: Andoid 6.0</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (17, N'SamSung Galaxy S7E Pink', 1, 1, N'samsunggalaxys7edgepink.jpg', NULL, 16000000, 2, N'<p>M&agrave;n H&igrave;nh: 5.5 inch (4096 x 2160 pixels)</p><p>Ram: 4GB</p><p>Chip: Exynos 8890 8 nh&acirc;n</p><p>Hệ Điều H&agrave;nh: Andoid 6.0</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (18, N'SamSung Galaxy Note 5', 1, 1, N'samsunggalaxynote5.jpg', NULL, 9000000, 6, N'<p>M&agrave;n H&igrave;nh: 5.7 inch (4096 x 2160 pixels)</p><p>Ram: 4GB</p><p>Chip: Exynos 7420 8 nh&acirc;n</p><p>Hệ Điều H&agrave;nh: Andoid 6.0</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (19, N'LG X Power', 1, 1, N'lgxpower.jpg', NULL, 5600000, 9, N'<p>M&agrave;n H&igrave;nh: 5.3 inch (1280 x 720 pixels)</p><p>Ram: 2GB</p><p>Chip: MT6735 4 nh&acirc;n</p><p>Hệ Điều H&agrave;nh: Andoid 6.0</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (20, N'LG K10', 1, 1, N'lgk10.jpg', NULL, 5700000, 12, N'<p>M&agrave;n H&igrave;nh: 5.3 inch (1280 x 720 pixels)</p><p>Ram: 1.5GB</p><p>Chip: MTK 6582 4 nh&acirc;n</p><p>Hệ Điều H&agrave;nh: Andoid 5.0</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (21, N'HTC 10', 1, 1, N'htc10.jpg', NULL, 10600000, 24, N'<p>M&agrave;n H&igrave;nh: 5.2 inch (4096 x 2160 pixels)</p><p>Ram: 4GB</p><p>Chip: Snapdragon 4 nh&acirc;n</p><p>Hệ Điều H&agrave;nh: Andoid 6.0</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (22, N'HTC One A9', 1, 1, N'htconea9.jpg', NULL, 7800000, 2, N'<p>M&agrave;n H&igrave;nh: 5 inch (1920 x 1080 pixels)</p><p>Ram: 2GB</p><p>Chip: Snapdragon 617 8 nh&acirc;n</p><p>Hệ Điều H&agrave;nh: Andoid 6.0</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (23, N'HTC Desire 10 Pro', 1, 1, N'htcdesire10pro.jpg', NULL, 7900000, 7, N'<p>M&agrave;n H&igrave;nh: 5.5 inch (1920 x 1080 pixels)</p><p>Ram: 4GB</p><p>Chip: MTK Helio P10 8 nh&acirc;n</p><p>Hệ Điều H&agrave;nh: Andoid 6.0</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (24, N'HTC One Me', 1, 1, N'htconeme.jpg', NULL, 6500000, 3, N'<p>M&agrave;n H&igrave;nh: 5.2 inch (4096 x 2160 pixels)</p><p>Ram: 3GB</p><p>Chip: MTK Helio X10 8 nh&acirc;n</p><p>Hệ Điều H&agrave;nh: Andoid 5.0</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (25, N'HTC One A9s', 1, 1, N'htconea9s.jpg', NULL, 8000000, 7, N'<p>M&agrave;n H&igrave;nh: 5 inch (1280 x 720 pixels)</p><p>Ram: 2GB</p><p>Chip: MTK Helio P10 8 nh&acirc;n</p><p>Hệ Điều H&agrave;nh: Andoid 6.0</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (26, N'Xiaomi Mi Mix', 1, 1, N'xiaomimimix.jpg', NULL, 14000000, 2, N'<p>M&agrave;n H&igrave;nh: 6.4 inch (1920 x 1080 pixels)</p><p>Ram: 6GB</p><p>Chip: Snapdragon 821</p><p>Hệ Điều H&agrave;nh: Andoid 6.0</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (27, N'Xiaomi Mi Note 2', 1, 1, N'xiaomiminote2.jpg', NULL, 9700000, 5, N'<p>M&agrave;n H&igrave;nh: 5.7 inch (1920 x 1080 pixels)</p><p>Ram: 4/6GB</p><p>Chip: Snapdragon 821</p><p>Hệ Điều H&agrave;nh: Andoid 6.0</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (28, N'Iphone SE', 1, 1, N'iphonese.jpg', NULL, 8900000, 12, N'<p>M&agrave;n H&igrave;nh: 4 inch (1136 x 640 pixels)</p><p>Ram: 2GB</p><p>Chip: Apple A9 2 nh&acirc;n</p><p>Hệ Điều H&agrave;nh: IOS 10</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (29, N'Iphone 6s Plus', 1, 1, N'iphone6splus.jpg', NULL, 14800000, 4, N'<p>M&agrave;n H&igrave;nh: 5.5 inch (1334 x 750 pixels)</p><p>Ram: 2GB</p><p>Chip: Apple A9 2 nh&acirc;n</p><p>Hệ Điều H&agrave;nh: IOS 10</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (30, N'Xiaomi Mi5s Plus', 1, 1, N'xiaomimi5splus.jpg', NULL, 8900000, 6, N'<p>M&agrave;n H&igrave;nh: 5.7 inch (1920 x 1080 pixels)</p><p>Ram: 4/6GB</p><p>Chip: Snapdragon 821</p><p>Hệ Điều H&agrave;nh: Android 6.0</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (31, N'Xiaomi Mi5s', 1, 1, N'xiaomimi5s.jpg', NULL, 10000000, 2, N'<p>M&agrave;n H&igrave;nh: 5.15 inch (1920 x 1080 pixels)</p><p>Ram: 3/4GB</p><p>Chip: Snapdragon 821</p><p>Hệ Điều H&agrave;nh: Android 6.0</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (32, N'LG G5', 1, 1, N'lgg5.jpg', NULL, 7800000, 6, N'<p>M&agrave;n H&igrave;nh: 5.3 inch (2560 x 1440 pixels)</p><p>Ram: 4GB</p><p>Chip: Snapdragon 820</p><p>Hệ Điều H&agrave;nh: Android 6.0</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (33, N'iPad Pro Wifi 32GB', 1, 1, N'ipadprowifi32gb.jpg', NULL, 16500000, 12, N'<p>M&agrave;n H&igrave;nh: 12.9 inch (2560 x 1440 pixels)</p><p>Ram: 4GB</p><p>Chip: Apple A9 2 nh&acirc;n</p><p>Hệ Điều H&agrave;nh: IOS 9.0</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (34, N'iPad Air 2 Cellula 128GB', 1, 1, N'ipadair2cellular128gbnowatermark.jpg', NULL, 15490000, 10, N'<p>M&agrave;n H&igrave;nh: 9.7 inch (2560 x 1440 pixels)</p><p>Ram: 2GB</p><p>Chip: Tripe Core 1.5Ghz</p><p>Hệ Điều H&agrave;nh: IOS 8.0</p>', NULL, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (35, N'1', 1, 1, N'1', 1, 1, 1, N'1', N'1', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (36, N'lg', 4, 3, N'a.png', 1, 20000000, 2, N'sd', N'new', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (41, N'lg', 2, 2, N'b', 1, 10000000, 1, N'we', N'new', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (42, N'1', 1, 1, N'1', 1, 1, 1, N'1', N'1', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (43, N'ABC', 1, 1, NULL, 0, 1, 1, N'Hihi', N'New', 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [ThongTin], [GhiChu], [BiXoa]) VALUES (44, N'ABC', 1, 1, N'aa.jpg', NULL, 1, 1, N'1', N'1', 1)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([MaTK], [TenTaiKhoan], [MatKhau], [MaLoaiTK], [HoTen], [Email], [SoDienThoai], [NgaySinh], [MaTinhThanh], [BiXoa]) VALUES (1, N'admin', N'25f9e794323b453885f5181f1b624d0b', 1, N'Huỳnh Vinh Phát', N'Theshadow159@yahoo.com', N'01212130469', CAST(N'1996-11-08' AS Date), 63, 0)
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTaiKhoan], [MatKhau], [MaLoaiTK], [HoTen], [Email], [SoDienThoai], [NgaySinh], [MaTinhThanh], [BiXoa]) VALUES (2, N'user1', N'25f9e794323b453885f5181f1b624d0b', 2, N'user1', N'abc@yahoo.com', N'01212121212', CAST(N'1995-07-13' AS Date), 61, 0)
INSERT [dbo].[TaiKhoan] ([MaTK], [TenTaiKhoan], [MatKhau], [MaLoaiTK], [HoTen], [Email], [SoDienThoai], [NgaySinh], [MaTinhThanh], [BiXoa]) VALUES (3, N'user2', N'25f9e794323b453885f5181f1b624d0b', 2, N'user23', N'xyz@yahoo.com', N'01313131313', CAST(N'1995-08-14' AS Date), 23, 0)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
SET IDENTITY_INSERT [dbo].[TinhThanh] ON 

INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (1, N'An Giang')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (2, N'Bà Rịa - Vùng Tàu')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (3, N'Bắc Giang')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (4, N'Bắc Kạn')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (5, N'Bạc Liêu')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (6, N'Bắc Ninh')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (7, N'Bến Tre')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (8, N'Bình Định')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (9, N'Bình Dương')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (10, N'Bình Phước')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (11, N'Bình Thuận')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (12, N'Cà Mau')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (13, N'Cao Bằng')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (14, N'Đắk Lắk')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (15, N'Đắk Nông')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (16, N'Điện Biên')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (17, N'Đồng Nai')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (18, N'Đồng Tháp')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (19, N'Gia Lai')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (20, N'Hà Giang')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (21, N'Hà Nam')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (22, N'Hà Tĩnh')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (23, N'Hải Dương')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (24, N'Hậu Giang')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (25, N'Hòa Bình')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (26, N'Hưng Yên')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (27, N'Khánh Hòa')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (28, N'Kiên Giang')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (29, N'Kon Tum')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (30, N'Lai Châu')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (31, N'Lâm Đồng')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (32, N'Lạng Sơn')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (33, N'Lào Cai')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (34, N'Long An')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (35, N'Nam Định')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (36, N'Nghệ An')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (37, N'Ninh Bình')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (38, N'Ninh Thuận')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (39, N'Phú Thọ')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (40, N'Quảng Bình')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (41, N'Quảng Nam')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (42, N'Quảng Ngãi')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (43, N'Quảng Ninh')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (44, N'Quảng Trị')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (45, N'Sóc Trăng')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (46, N'Sơn La')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (47, N'Tây Ninh')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (48, N'Thái Bình')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (49, N'Thái Nguyên')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (50, N'Thanh Hóa')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (51, N'Thừa Thiên Huế')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (52, N'Tiền Giang')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (53, N'Trà Vinh')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (54, N'Tuyên Quang')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (55, N'Vĩnh Long')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (56, N'Vĩnh Phúc')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (57, N'Yên Bái')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (58, N'Phú Yên')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (59, N'Cần Thơ')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (60, N'Đà Nẵng')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (61, N'Hải Phòng')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (62, N'Hà Nội')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (63, N'TP HCM')
SET IDENTITY_INSERT [dbo].[TinhThanh] OFF
SET IDENTITY_INSERT [dbo].[TinhTrangDH] ON 

INSERT [dbo].[TinhTrangDH] ([MaTinhTrang], [TenTinhTrang]) VALUES (1, N'Đang giao')
INSERT [dbo].[TinhTrangDH] ([MaTinhTrang], [TenTinhTrang]) VALUES (2, N'Đã giao')
INSERT [dbo].[TinhTrangDH] ([MaTinhTrang], [TenTinhTrang]) VALUES (3, N'Hủy')
INSERT [dbo].[TinhTrangDH] ([MaTinhTrang], [TenTinhTrang]) VALUES (4, N'Đang trong kho')
SET IDENTITY_INSERT [dbo].[TinhTrangDH] OFF
SET IDENTITY_INSERT [dbo].[TinhTrangSP] ON 

INSERT [dbo].[TinhTrangSP] ([MaTinhTrang], [TenTinhTrang]) VALUES (0, N'Hết hàng')
INSERT [dbo].[TinhTrangSP] ([MaTinhTrang], [TenTinhTrang]) VALUES (1, N'Còn hàng')
SET IDENTITY_INSERT [dbo].[TinhTrangSP] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 09/05/2017 20:56:23 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 09/05/2017 20:56:23 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 09/05/2017 20:56:23 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 09/05/2017 20:56:23 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 09/05/2017 20:56:23 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 09/05/2017 20:56:23 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_AspNetUsers] FOREIGN KEY([MaTK])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_AspNetUsers]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_AspNetUsers1] FOREIGN KEY([TenTK])
REFERENCES [dbo].[AspNetUsers] ([UserName])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_AspNetUsers1]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_SanPham]
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSP_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietSP] CHECK CONSTRAINT [FK_ChiTietSP_SanPham]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_TaiKhoan] FOREIGN KEY([MaTK])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_TaiKhoan]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_TinhTrangDH] FOREIGN KEY([MaTinhTrang])
REFERENCES [dbo].[TinhTrangDH] ([MaTinhTrang])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_TinhTrangDH]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_HangSP] FOREIGN KEY([MaHang])
REFERENCES [dbo].[HangSP] ([MaHang])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_HangSP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSP] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_TinhTrangSP] FOREIGN KEY([TinhTrang])
REFERENCES [dbo].[TinhTrangSP] ([MaTinhTrang])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_TinhTrangSP]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_LoaiTK] FOREIGN KEY([MaLoaiTK])
REFERENCES [dbo].[LoaiTK] ([MaLoaiTK])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_LoaiTK]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_TinhThanh] FOREIGN KEY([MaTinhThanh])
REFERENCES [dbo].[TinhThanh] ([MaTinhThanh])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_TinhThanh]
GO
USE [master]
GO
ALTER DATABASE [ShopDienThoai] SET  READ_WRITE 
GO
