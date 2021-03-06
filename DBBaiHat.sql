USE [master]
GO
/****** Object:  Database [DBBaiHat]    Script Date: 9/5/2021 4:18:26 PM ******/
CREATE DATABASE [DBBaiHat]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBBaiHat', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DBBaiHat.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBBaiHat_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DBBaiHat_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DBBaiHat] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBBaiHat].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBBaiHat] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBBaiHat] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBBaiHat] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBBaiHat] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBBaiHat] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBBaiHat] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBBaiHat] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBBaiHat] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBBaiHat] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBBaiHat] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBBaiHat] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBBaiHat] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBBaiHat] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBBaiHat] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBBaiHat] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DBBaiHat] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBBaiHat] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBBaiHat] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBBaiHat] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBBaiHat] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBBaiHat] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBBaiHat] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBBaiHat] SET RECOVERY FULL 
GO
ALTER DATABASE [DBBaiHat] SET  MULTI_USER 
GO
ALTER DATABASE [DBBaiHat] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBBaiHat] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBBaiHat] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBBaiHat] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBBaiHat] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBBaiHat] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DBBaiHat', N'ON'
GO
ALTER DATABASE [DBBaiHat] SET QUERY_STORE = OFF
GO
USE [DBBaiHat]
GO
/****** Object:  Table [dbo].[ALBUM]    Script Date: 9/5/2021 4:18:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALBUM](
	[ma_album] [char](10) NOT NULL,
	[ten_album] [nvarchar](200) NOT NULL,
	[namphathanh] [date] NOT NULL,
 CONSTRAINT [PK_ALBUM] PRIMARY KEY CLUSTERED 
(
	[ma_album] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BAIHAT]    Script Date: 9/5/2021 4:18:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAIHAT](
	[ma_baihat] [char](10) NOT NULL,
	[ten_baihat] [nvarchar](100) NOT NULL,
	[ma_theloai] [char](10) NOT NULL,
	[ma_album] [char](10) NOT NULL,
	[ma_casi] [char](10) NOT NULL,
	[ma_tacgia] [char](10) NOT NULL,
	[ma_hangsanxuat] [char](10) NOT NULL,
	[loi_baihat] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_BAIHAT] PRIMARY KEY CLUSTERED 
(
	[ma_baihat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BAIHAT_CASI]    Script Date: 9/5/2021 4:18:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAIHAT_CASI](
	[ma_casi] [char](10) NOT NULL,
	[ma_baihat] [char](10) NOT NULL,
 CONSTRAINT [PK_BAIHAT_CASI_1] PRIMARY KEY CLUSTERED 
(
	[ma_casi] ASC,
	[ma_baihat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CASI]    Script Date: 9/5/2021 4:18:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CASI](
	[ma_casi] [char](10) NOT NULL,
	[ten_casi] [nvarchar](50) NOT NULL,
	[thongtin_casi] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_CASI] PRIMARY KEY CLUSTERED 
(
	[ma_casi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HANGSANXUAT]    Script Date: 9/5/2021 4:18:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HANGSANXUAT](
	[ma_hangsanxuat] [char](10) NOT NULL,
	[ten_hangsanxuat] [nvarchar](100) NOT NULL,
	[thongtin_hangsanxuat] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_HANGSANXUAT] PRIMARY KEY CLUSTERED 
(
	[ma_hangsanxuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TACGIA]    Script Date: 9/5/2021 4:18:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TACGIA](
	[ma_tacgia] [char](10) NOT NULL,
	[ten_tacgia] [nvarchar](50) NOT NULL,
	[thongtin_tacgia] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_TACGIA] PRIMARY KEY CLUSTERED 
(
	[ma_tacgia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THELOAI]    Script Date: 9/5/2021 4:18:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THELOAI](
	[ma_theloai] [char](10) NOT NULL,
	[ten_theloai] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_THELOAI] PRIMARY KEY CLUSTERED 
(
	[ma_theloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album01   ', N'Những Bản Ballad Hay Nhất', CAST(N'2019-02-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album02   ', N'Con Duong Mua', CAST(N'2017-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album03   ', N'Trang giấy trắng', CAST(N'2012-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album04   ', N'The Remix 2016', CAST(N'2016-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album05   ', N'Vũ Trụ Song Song', CAST(N'2019-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album06   ', N'Sky tour', CAST(N'2020-06-12' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album07   ', N'Ai Con Cho Ai', CAST(N'2010-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album08   ', N'Nguoi Ay', CAST(N'2017-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album09   ', N'Tuyen tap nhung bai hat hay nhat cua Trung Quan Idol', CAST(N'2014-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album10   ', N'Chạm đáy nỗi đau', CAST(N'2008-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album11   ', N'Công chúa mắt nai', CAST(N'2011-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album12   ', N'Khởi hành', CAST(N'2014-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album13   ', N'Một triệu năm ánh sáng', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album14   ', N'Run', CAST(N'2014-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album15   ', N'Anh nhớ em người yêu cũ', CAST(N'2014-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album16   ', N'Xe Dap', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album17   ', N'Anh Khac Hay Em Khac', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album18   ', N'Tâm 9', CAST(N'2017-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album19   ', N'Vol 10. Tìm lại bầu trời', CAST(N'2012-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album20   ', N'The Best Of Hoang Ton', CAST(N'2015-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album21   ', N'Anh Doi Em Nha', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album22   ', N'Da Tung Vo Gia', CAST(N'2019-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album23   ', N'Mat Tri Nho', CAST(N'2016-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album24   ', N'Toi La Ai Trong Em', CAST(N'2019-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album25   ', N'Thuan Theo Y Troi', CAST(N'2021-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album26   ', N'Khi Nguoi Lon Co Don', CAST(N'2019-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album27   ', N'Lac Giua Nhan Gian', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album28   ', N'T Mini Album', CAST(N'2021-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album29   ', N'Ten on Ten', CAST(N'2018-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album30   ', N'Nếu', CAST(N'2010-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album31   ', N'Kí ức của mưa', CAST(N'2010-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album32   ', N'Love Songs 4', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album33   ', N'Người Nào Đó', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album34   ', N'NGUYEN TEAM DI VAO HET', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album35   ', N'Nến Và Hoa
', CAST(N'2018-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album36   ', N'No Nê', CAST(N'2021-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album37   ', N'The Best Of Karik (Best Of Karik)', CAST(N'2014-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album38   ', N'Lão đại', CAST(N'2014-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album39   ', N'Kobukovu
', CAST(N'2016-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album40   ', N'One Day', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album41   ', N'Dreamee', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album42   ', N'Chuỗi Ngày Vắng Em', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album43   ', N'Chiec Khan Gio Am', CAST(N'2020-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album44   ', N'Chỉ cần em hạnh phúc', CAST(N'2018-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album45   ', N'Trai Tim Em Cung Biet Dau', CAST(N'2017-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album46   ', N'Vội Vã Yêu Nhau Vội Vã Rời', CAST(N'2014-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album47   ', N'Best of Phạm Quỳnh Anh', CAST(N'2016-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album48   ', N'U1', CAST(N'2011-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album49   ', N'Den Khi Nao Quen', CAST(N'2014-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album50   ', N'Ngày Gió Ngừng Trôi', CAST(N'2018-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album51   ', N'Ngo', CAST(N'2011-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album52   ', N'Chờ đông', CAST(N'2019-01-01' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album53   ', N'Cò lớn - Mong thế giới bình yên', CAST(N'2008-05-12' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album54   ', N'Chuyện tình không dĩ vãng', CAST(N'2009-06-24' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album55   ', N'Chim sáo ngày xưa', CAST(N'2007-05-05' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album56   ', N'Còn tuổi nào cho em', CAST(N'2018-03-04' AS Date))
INSERT [dbo].[ALBUM] ([ma_album], [ten_album], [namphathanh]) VALUES (N'Album57   ', N'Đường tôi đi dài theo đất nước', CAST(N'2015-12-04' AS Date))
GO
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH00      ', N'Chạm đáy nỗi đau', N'TL08      ', N'Album10   ', N'CS10      ', N'TG01      ', N'HSX01     ', N'Luôn bên em là tôi...
Lâu nay không chút thay đổi...
Thế nhưng bây giờ em
Muốn chia tay vì tôi vẫn còn trẻ con
Babe! Kajima!
Stay here with me! Kajima
Hụt hẫng ...
Gạt nước mắt nhớ ngày buồn nhất ...
Không muốn ai thay mình
Chăm sóc em những ngày tới!
Thoáng nghĩ đã đau lòng
Nhưng trách ai đây ngoài tôi...
Em bước đi nhẹ nhàng...
(Em đang xa tôi nhẹ nhàng)
Nhưng trong anh bão tố!
(Giấu hết bão tố trong tim)
Nghẹn câu: "Em đừng đi nữa..."
Nhưng tại môi mím chặt
Chẳng thể một lần nói ra...
Chẳng ai có thể chỉ một ngày mà tốt hơn
Chẳng lầm lỗi nào chỉ một giây mà xóa mờ
Mình không thể lâu dài,
Chỉ vì tôi ngây ngô!
(Ngốc nghếch nên tình thơ mới chết
Vô vọng trong bóng tối mình tôi)
Thời gian sẽ minh chứng tất cả
Và cũng có thể
Ngoảnh đi bỏ mặc chúng ta
Ngón tay ấy buông xuôi vì chẳng cần tôi ở bên
Đã từ chối cơ hội để đời tôi vững vàng
Ngồi khóc giữa cơn mưa
Mới thấu đâu là chạm đáy của nỗi đau
Ngày cuối ở bên
Môi tôi không thể nuôi can đảm để thốt lên
Rời xa vòng tay
Em cho tôi cảm giác nhung nhớ đến thế nào
Từ biệt chưa nói câu chào mà sao muốn bước đi vội?
Mới... có nhau thôi lại xóa hết những yêu thương rồi?
Bàn tay tôi nắm chặt
Ngước lên bầu trời để nước mắt không tuôn rơi
Người là ánh sáng dẫn tôi tìm những giấc mơ
Giờ phía trước mịt mù
Trong bóng tối nỗi sợ
I am losing you
Babe! Kajima!
Stay here with me! Kajima
Hụt hẫng ... . . . . . . . .
Gạt nước mắt nhớ ngày buồn nhất ...
Từ sâu trong lòng
Không muốn ai thay mình chăm sóc em những ngày tới!
Thoáng nghĩ đã đau lòng nhưng trách ai đây ngoài tôi...
Em bước đi nhẹ nhàng...
(Em đang xa tôi nhẹ nhàng)
Nhưng trong anh bão tố!
(Giấu hết bão tố trong tim)
Nghẹn câu: "Em đừng đi nữa..."
Nhưng tại môi mím chặt
Chẳng thể một lần nói ra...
Chẳng ai có thể chỉ một ngày mà tốt hơn
Chẳng lầm lỗi nào chỉ một giây mà xóa mờ
Mình không thể lâu dài,
Chỉ vì tôi ngây ngô!
(Ngốc nghếch nên tình thơ mới chết
Vô vọng trong bóng tối mình tôi)
Thời gian sẽ minh chứng tất cả
Và cũng có thể
Ngoảnh đi bỏ mặc chúng ta
Ngón tay ấy buông xuôi
Vì chẳng cần tôi ở bên
Đã từ chối cơ hội để đời tôi vững vàng
Ngồi khóc giữa cơn mưa
Mới thấu đâu là
Chạm đáy của nỗi đau
Babe! Babe! Kajima...
Babe! Kajima
Mình không thể lâu dài,
Chỉ vì tôi ngây ngô!
Thời gian sẽ minh chứng tất cả
Và cũng có thể
Ngoảnh đi bỏ mặc chúng ta.
Ngón tay ấy buông xuôi
Vì chẳng cần tôi ở bên
Đã từ chối cơ hội
Để đợi tôi vững vàng
Ngồi khóc giữa cơn mưa,
Mới thấu đâu là.
Chạm đáy của nỗi đau...
Không muốn ai thay mình
Chăm sóc em những ngày tới!
Thoáng nghĩ đã đau lòng
Nhưng trách ai đây ngoài tôi...')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH01      ', N'Vũ trụ song song', N'TL03      ', N'Album05   ', N'CS05      ', N'TG02      ', N'HSX02     ', N'Một giấc mơ không dài, sao vẫn phải nhung nhớ
Sao vẫn phải mong ngóng ai quay về với anh
Em đã từng nghe, lời yêu thương nào buồn đến thế
Em có từng nghe, lời dặn dò nào đau đến thế

Bởi vì anh, giấu em đi khỏi tâm trí
Xin cho em về, về một nơi rất xa loài người
Về một nơi phía sau mặt trời có anh đi cạnh em

Xin cho em về, về một nơi rất xa cuộc đời
Về một nơi phía sau bộn bề Có anh đi cạnh em.')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH02      ', N'Trang giấy trắng', N'TL11      ', N'Album03   ', N'CS03      ', N'TG98      ', N'HSX03     ', N'Anh nhớ lúc mới biết yêu lần đầu
Tình ta trong sáng như trang giấy trắng
Anh vẽ bức tranh yêu đương thật đẹp
Trong đó có hai trái tim kề bên
Nguyện thề đi chung trên con đường yêu
Dẫu thế nào ta vẫn ở bên nhau.
Trang giấy trắng đó đến nay hao gầy
Vì em xa anh ra đi chốn ấy
Anh ở nơi đây cô đơn bao ngày
Năm tháng trái tim vẫn luôn còn đây
Mà người xa anh xa luôn tầm tay
Hứa quay về sao anh chờ hoài chẳng thấy?
(Em hỡi...)
Mãi mong người trở về
Tìm lại phút giây đôi ta hẹn thề
Cùng nhau bước đi trên con đường về
Ngày xưa chúng ta vẫn hay thường mơ
Một ngày như thế.
Đến bây giờ người về
Người lại bước đi bên ai vậy kìa
Để cho nỗi đau tôi thêm nặng nề
Giờ đây ấm êm biết em có nghe
Chỉ riêng mỗi anh mãi mong chờ em
Mà sao em nỡ
Người về, tình không về')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH03      ', N'Con đường mưa', N'TL11      ', N'Album02   ', N'CS02      ', N'TG03      ', N'HSX04     ', N'Nếu ngày xưa bước đi nhanh qua con đường mưa
Thì anh đã không gặp người
Nếu ngày xưa em nhìn anh nhưng không mỉm cười
Thì anh đã không mộng mơ
Nếu tình ta chẳng phải xa khi đang đậm sâu
Thì anh đã không đau buồn
Nếu lòng anh không còn yêu em hơn chính mình
Thì anh đã quên được em
Làm sao để đường xưa đừng in dấu chân anh mỗi ngày
Làm sao cho lòng anh thôi gọi tên em trong mỗi giấc mơ
Làm sao để mưa mùa thu đừng rơi khi anh đang nhớ em
Làm sao khi thấy mưa anh không buồn
Làm sao để quên niềm vui
Niềm hạnh phúc khi anh có người
Làm sao quên ngày chia tay
Lệ em rơi trên đôi mắt cay
Làm sao để thôi chờ mong
Làm sao tim anh thôi đừng mơ
Rằng ngày mai thấy em quay trở về
Nếu ngày xưa bước đi nhanh qua con đường mưa
Thì anh đã không gặp người
Nếu ngày xưa em nhìn anh nhưng không mỉm cười
Thì anh đã không mộng mơ
Nếu thời gian có quay về trước khi gặp em
Thì anh vẫn xin đi cùng
Nếu ngày xưa mưa mùa thu rơi trên lối về
Thì anh vẫn không vội qua
Làm sao để đường xưa đừng in dấu chân anh mỗi ngày
Làm sao cho lòng anh thôi gọi tên em trong mỗi giấc mơ
Làm sao để mưa mùa thu đừng rơi khi anh đang nhớ em
Làm sao khi thấy mưa anh không buồn
Làm sao để quên niềm vui
Niềm hạnh phúc khi anh có người
Làm sao quên ngày chia tay
Lệ em rơi trên đôi mắt cay
Làm sao để thôi chờ mong
Làm sao tim anh thôi đừng mơ
Rằng ngày mai thấy em quay trở về
Làm sao để quên niềm vui
Niềm hạnh phúc khi anh có người
Làm sao quên ngày chia tay
Lệ em rơi trên đôi mắt cay
Làm sao để thôi chờ mong
Làm sao tim anh thôi đừng mơ
Rằng ngày mai thấy em quay trở về
Rằng ngày mai thấy em quay trở về')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH04      ', N'Khuôn mặt đáng thương', N'TL06      ', N'Album04   ', N'CS06      ', N'TG04      ', N'HSX05     ', N'Đôi môi này đi về ai?
Ehhhh
Ok đêm nay sẽ là một đêm tuyệt vời
No no no no
Yes sir
A ha, Sơn Tùng M-TP!
Cơn mơ màng
Mùi hương theo làn gió cuốn em đi, kề bên vai ai từng đêm?
Ehhhh nhẹ nhàng rời nơi anh
Ehhhh ai giấu em đi?
Mang em về, liệu rằng em còn nhớ
Tiếng yêu không, ở đây ngay phía sau em này
Ehhhh lặng một mình anh thôi
Níu giữ lại những âm thầm và nhớ
Đừng khiến đôi môi dịu êm phải chịu ngàn giọt nước mắt đắng cay
Hạt mưa rơi
Tình chơi vơi
Giấc mơ này biết đi về đâu?
Bài hát khi xưa anh viết bây giờ phải đặt dấu chấm hết thôi
Ở cuối con đường anh xin một điều ước
Cho em bình yên vững đôi chân!
Cánh hoa úa tàn
Bức tranh vén màn
Bóng ai xa ngút ngàn
Nước mắt rơi ướt tràn
Sầu làn mi khép
Tình buồn ai ép
Biết đi về chốn đâu, khuôn mặt đáng thương?
Tấm thân héo mòn
Nỗi đau có còn
Đắng cay em đã chọn
Chính em đã chọn
Rời làn hơi ấm
Tình này không thấm
Biết ai còn nhớ ai, khuôn mặt đáng thương.
Cánh hoa úa tàn
Em giờ không phải em mà
Anh thề không phải em mà
Khuôn mặt em yêu vẫn thế nhưng có lẽ cảm xúc đã quá nhạt phai mà
Nơi đâu cho anh cảm xúc thăng hoa?
Nơi đâu anh nhìn khoảng cách đôi ta?
Không gian đâu có chắc cho em nhìn ra?
Một con người đến từ hôm qua
Em giờ đang ở nơi nào?
Cơn gió mang em đến nơi nào?
Bên cạnh ai kia ở nơi nào?
Đôi chân em lang thang đến nơi nào?
Nói cho anh nghe
Bước đi vội vàng
Em đang đi bên ai đó?
Đừng khiến đôi môi dịu êm phải chịu ngàn giọt nước mắt đắng cay
Hạt mưa rơi
Tình chơi vơi
Giấc mơ này biết đi về đâu?
Bài hát khi xưa anh viết bây giờ phải đặt dấu chấm hết thôi
Ở cuối con đường anh xin một điều ước
Cho em bình yên vững đôi chân!
Cánh hoa úa tàn
Bức tranh vén màn
Bóng ai xa ngút ngàn
Nước mắt rơi ứa tràn
Sầu làn mi khép
Tình buồn ai ép
Biết đi về chốn đâu, khuôn mặt đáng thương?
Tấm thân héo mòn
Nỗi đau có còn
Đắng cay em đã chọn
Chính em đã chọn
Rời làn hơi ấm
Tình này không thấm
Biết ai còn nhớ ai, khuôn mặt đáng thương.
Cánh hoa úa tàn
Cánh hoa úa tàn
Cánh hoa úa tàn
Cánh hoa úa tàn
Yeh eh yehhh
La la la la
Oh oh oh oh oh
La la la la
Oh oh oh oh oh
La la la la
Yeh eh yeh eh yehhhhh
Ngày đó ấm áp ấy sẽ mãi mãi không bên em nữa đâu
Làn gió ấm áp ấy sẽ mãi mãi không ôm em như trước
Lời nói ấm áp ấy sẽ mãi mãi không bên em nữa đâu
Ở đó, chớ có nhớ, có khóc vấn vương về ai nơi này
Ngày đó ấm áp ấy sẽ mãi mãi không bên em nữa đâu
Làn gió ấm áp ấy sẽ mãi mãi không ôm em như trước
Lời nói ấm áp ấy sẽ mãi mãi không bên em nữa đâu
Ở đó, chớ có nhớ, có khóc vấn vương về ai nơi này
Cánh hoa úa tàn
Khuôn mặt đáng thương
Oh uh oh uh oh ohh
Yeh eh yeh eh yeh hee
Yeah! Yêu em!')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH05      ', N'Ánh nắng của anh', N'TL11      ', N'Album01   ', N'CS01      ', N'TG04      ', N'HSX06     ', N'Từ bao lâu naу anh cứ mãi cô đơn bơ vơ
Bao lâu rồi ai đâu haу
Ngàу cứ thế trôi qua miên man
Riêng anh một mình nơi đâу
Những phút giâу trôi qua tầm taу
Ϲhờ một ai đó đến bên anh
Lặng nghe những tâm tư nàу
Là tia nắng ấm
Là em đến bên anh
Ϲho vơi đi ưu phiền ngàу hôm qua
Nhẹ nhàng xóa đi bao mâу đen vâу quanh cuộc đời nơi anh
Phút giâу anh mong đến tình уêu ấу
Giờ đâу là em người anh mơ ước bao đêm
Ѕẽ luôn thật gần bên em
Ѕẽ luôn là vòng taу ấm êm
Ѕẽ luôn là người уêu em
Ϲùng em đi đến chân trời
Lắng nghe từng nhịp tim anh
Lắng nghe từng lời anh muốn nói
Vì em luôn đẹp nhất khi em cười
Vì em luôn là tia nắng trong anh
Không xa rời
Bình minh dẫn lối
Ngàу sau có em luôn bên anh trên con đường ta chung đôi
Niềm hạnh phúc như trong cơn mơ
Ϲhưa bao giờ anh nghĩ tới
Phút giâу ta trao nhau tình уêu ấу
Giờ đâу là em
Người anh sẽ mãi không quên
Ѕẽ luôn thật gần bên em
Ѕẽ luôn là vòng taу ấm êm
Ѕẽ luôn là người уêu em
Ϲùng em đi đến chân trời
Lắng nghe từng nhịp tim anh
Lắng nghe từng lời anh muốn nói
Vì em luôn đẹp nhất khi em cười
Vì em luôn là tia nắng trong anh
Không xa rời
Ѕẽ luôn thật gần bên em
Ѕẽ luôn là vòng taу ấm êm
Ѕẽ luôn là người уêu em
Ϲùng em đi đến chân trời
Lắng nghe từng nhịp tim anh
Lắng nghe từng lời anh muốn nói
Vì em luôn đẹp nhất khi em cười
Vì em luôn là tia nắng trong anh
Không xa rời
Vì em luôn là tia nắng trong anh
Không xa rời')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH06      ', N'Chạy ngay đi', N'TL08      ', N'Album06   ', N'CS06      ', N'TG05      ', N'HSX05     ', N'Từng phút cứ mãi trôi xa phai nhòa dần kí ức giữa đôi ta
Từng chút nỗi nhớ hôm qua đâu về lạc bước cứ thế phôi pha
Con tim giờ không cùng chung đôi nhịp
Nụ cười lạnh băng còn đâu nồng ấm thân quen
Vô tâm làm ngơ thờ ơ tương lai ai ngờ
Quên đi mộng mơ ngày thơ tan theo sương mờ
Mưa lặng thầm đường vắng chiều nay
In giọt lệ nhòe khóe mắt sầu cay
Bao hẹn thề tàn úa vụt bay
Trôi dạt chìm vào những giấc nồng say
Quay lưng chia hai lối
Còn một mình anh thôi
Giả dối bao trùm bỗng chốc lên ngôi
Trong đêm tối
Bầu bạn cùng đơn côi
Suy tư anh kìm nén đã bốc cháy yêu thương trao em rồi
Đốt sạch hết
Son môi hồng vương trên môi bấy lâu
Hương thơm dịu êm mê man bấy lâu (Đốt sạch hết)
Anh không chờ mong quan tâm nữa đâu
Tương lai từ giờ như bức tranh em quên tô màu (Đốt sạch hết)
Xin chôn vùi tên em trong đớn đau
Nơi hiu quạnh tan hoang ngàn nỗi đau (Đốt sạch hết)
Dư âm tàn tro vô vọng phía sau
Đua chen dày vò xâu xé quanh thân xác nát nhàu
Chạy ngay đi
Trước khi
Mọi điều dần tồi tệ hơn
Chạy ngay đi
Trước khi
Lòng hận thù cuộn từng cơn
Tựa giông tố
Đến bên ghé thăm
Từ nơi
Hố sâu tối tăm
Chạy đi
Trước khi
Mọi điều dần tồi tệ hơn
Không còn ai cạnh bên em ngày mai
Tạm biệt một tương lai ngang trái
Không còn ai cạnh bên em ngày mai
Tạm biệt một tương lai ngang trái
Không còn ai cạnh bên em ngày mai
Tạm biệt một tương lai ngang trái
Không còn ai cạnh bên em ngày mai
Tạm biệt một tương lai ngang trái
Yeah, buông bàn tay
Buông xuôi hi vọng buông bình yên (Buông)
Đâu còn nguyên tháng ngày rực rỡ phai úa hằn sâu triền miên
Vết thương cứ thêm, khắc thêm, mãi thêm
Chà đạp vùi dập dẫm lên tiếng yêu ấm êm
Nhìn lại niềm tin từng trao giờ sao
Sau bao ngu muội sai lầm anh vẫn yếu mềm
Căn phòng giam cầm thiêu linh hồn cô độc em trơ trọi kêu gào xót xa
Căm hận tuôn trào dâng lên nhuộm đen ghì đôi vai đừng mong chờ thứ tha
(Chính em gây ra mà
Những điều vừa diễn ra
Chính em gây ra mà, chính em gây ra mà
Những điều vừa diễn ra
Hết thật rồi)
Đốt sạch hết
Son môi hồng vương trên môi bấy lâu
Hương thơm dịu êm mê man bấy lâu (Đốt sạch hết)
Anh không chờ mong quan tâm nữa đâu
Tương lai từ giờ như bức tranh em quên tô màu (Đốt sạch hết)
Xin chôn vùi tên em trong đớn đau
Nơi hiu quạnh tan hoang ngàn nỗi đau (Đốt sạch hết)
Dư âm tàn tro vô vọng phía sau
Đua chen dày vò xâu xé quanh thân xác nát nhàu
Chạy ngay đi
Trước khi
Mọi điều dần tồi tệ hơn
Chạy ngay đi
Trước khi
Lòng hận thù cuộn từng cơn
Tựa giông tố
Đến bên ghé thăm
Từ nơi
Hố sâu tối tăm
Chạy đi
Trước khi
Mọi điều dần tồi tệ hơn
Không còn ai cạnh bên em ngày mai
Tạm biệt một tương lai ngang trái
Không còn ai cạnh bên em ngày mai
Tạm biệt một tương lai ngang trái
Không còn ai cạnh bên em ngày mai
Tạm biệt một tương lai ngang trái
Không còn ai cạnh bên em ngày mai
Tạm biệt một tương lai ngang trái
Đốt sạch hết
Ohhh...
(Chính em gây ra mà, chính em gây ra mà)
Đốt sạch hết
Ohhh...
Đừng nhìn anh với khuôn mặt xa lạ, xin
Đừng lang thang trong tâm trí anh từng đêm nữa
Quên đi, quên đi hết đi
Quên đi, quên đi hết đi
Thắp lên điều đáng thương lạnh giá ôm trọn giấc mơ vụn vỡ
Bốc cháy lên cơn hận thù trong anh (Quên đi, quên đi, quên đi hết đi)
Cơn hận thù trong anh
Bốc cháy lên cơn hận thù trong anh
Ai khơi dậy cơn hận thù trong anh?
Bốc cháy lên cơn hận thù trong anh (Quên đi, quên đi, quên đi hết đi)
Cơn hận thù trong anh
Bốc cháy lên cơn hận thù trong anh
Ai khơi dậy cơn hận thù trong anh? (Ai cô đơn rồi)
Không còn ai cạnh bên em ngày mai
Tạm biệt một tương lai ngang trái (Ai cô đơn rồi)
Không còn ai cạnh bên em ngày mai
Tạm biệt một tương lai ngang trái (Ai cô đơn rồi)
Không còn ai cạnh bên em ngày mai
Tạm biệt một tương lai ngang trái (Ai cô đơn rồi)
Không còn ai cạnh bên em ngày mai
Tạm biệt một tương lai ngang trái')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH07      ', N'Chúng ta không thuộc về nhau', N'TL08      ', N'Album06   ', N'CS06      ', N'TG05      ', N'HSX05     ', N'Hứa rằng chúng ta sẽ thuộc về nhau đêm nay nhá
Nếu mà thuộc về nhau thì tay chân, tay chân, tay chân
Tay chân đâu? Tay chân đâu, đâu?
Tay chân đâu? Tay chân đâu, đâu rồi?
Tay chân đâu? Tay chân đâu, đâu? Yea-yeah
Niềm tin đã mất, giọt nước mắt cuốn kí ức anh chìm sâu
Tình về nơi đâu, cô đơn đôi chân lạc trôi giữa bầu trời
Màn đêm che dấu từng góc tối khuất lấp phía sau bờ môi
Tại vì anh thôi, yêu say mê nên đôi khi quá dại khờ (Ayy)
Nhắm mắt ơ thờ, anh không muốn lạc vào trong nỗi đau này
Phía trước bây giờ ai đang nắm chật bàn tay của em vậy (Gì nào?)
Mông lung như một trò đùa (Gì ạ?)
Anh xin giơ tay rút lui thôi
Ê! Do ai?
Trách ai bây giờ
Đây này, đây này, đây này, đây này, đây nào
Gì nào?
Chúng ta không thuộc về nhau (Gì ạ?)
Chúng ta không thuộc về nhau (Gì nào?)
Chúng ta không thuộc về nhau
Em hãy cứ đi bên người mà em cần
Trái tim có thuộc về nhau không?
Giấc mơ có là của nhau không?
Xoá câu ca buồn chiều mưa
Anh lỡ xóa luôn yêu thương ngày xưa rồi
Chúng ta có thuộc (về nhau)
Tay chân đâu? (Chúng ta không thuộc...)
Tay chân đâu?
Tay chân đâu? (Chúng ta không thuộc về nhau)
Tay chân đâu?
Tay chân đâu? (Chúng ta không thuộc về nhau)
Tay chân đâu?
I love you guys
Hey, từng đêm qua, cơn mưa bao vây chia rời đôi ta
Em, ngày hôm qua, cuốn gió theo mây đi về nơi xa
Trời xanh rộng bao la, Anh lê đôi chân mình
Bơ vơ lang thang có lẽ em đang yên vui bên nhân tình
Quên đi (để anh nhớ)
Hơi men (để anh mơ)
Nơi đâu
Nhắm mắt ơ thờ, anh không muốn lạc vào trong nỗi đau này
Phía trước bây giờ ai đang nắm chật bàn tay của em vậy?
Mông lung như một trò (đùa)
Anh xin giơ tay rút lui thôi
Do ai, trách ai bây giờ?
Đây này, đây này, đây này, đây này
Đây này, đây này, đây này, đây này, ê, ê
Chúng ta có thuộc về nhau không? (Có)
Chúng ta có thuộc về nhau không? (Có)
Chúng ta có thuộc về nhau không này? (Chúng ta không thuộc về nhau)
Quá ngọt ngào luôn! Một lần nữa này (Em hãy cứ đi bên người mà em cần)
Trái tim không thuộc về nhau (Ê, ê)
Giấc mơ không là của nhau (Ê, ê)
Xoá câu ca buồn chiều mưa
Anh đây lỡ xóa luôn (Yêu thương ngày xưa rồi)
Tay đâu?
Chúng ta có thuộc về (nhau)?
Chúng ta có thuộc về nhau?
Tay chân đâu? Tay chân đâu?
Tay chân đâu rồi? (Chúng ta không thuộc về nhau)
Nhá! (Chúng ta không thuộc)
Nhá!
Nhá!
Chúng ta có thuộc về nhau, đúng không?
Có thuộc về nhau không đấy? (Có)
Có thuộc về nhau không? Hà Nội ơi! (Có)
(Chúng ta không thuộc về nhau)
Nếu mà thuộc về nhau thì tay chân này?
Nếu mà thuộc về nhau thì tay chân này?
One này, two này, đừng để ta chờ một lần nữa này!
Chúng ta có thuộc (về) nhau
(Chúng ta không thuộc) về nhau
(Chúng ta không thuộc) về nhau
(Em hãy cứ đi bên người mà em cần)
Trái tim không thuộc về nhau (Nhạc hay thì giơ tay, nhạc hay thì giơ)
Giấc mơ không là của nhau (Whoo! Bên này thì sao nào?)
Xoá câu ca buồn chiều mưa
Anh lỡ xóa luôn yêu thương ngày xưa rồi
(Chúng ta không thuộc về nhau)
Ayy-y-ay-y-ay-y-ayy
Ayy-y-ay-y-ay-y-ayy
Ayy-y-ay-y-ay-y-ayy
Nhạc hay thì giơ tay, nhạc hay thì giơ tay!
Hey
Hey
Hey
Hey
Hey
Don''t forget me!
Remember my face, bro!')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH08      ', N'Đã 5 năm', N'TL11      ', N'Album07   ', N'CS07      ', N'TG97      ', N'HSX18     ', N'Đã 5 năm rồi đó
Anh vẫn nhớ ngày ấy
Ai ngang qua thật khẽ
Hé môi xinh dịu dàng.

Ánh nắng chiếu bờ vai
Mái tóc khẽ đùa gió
Để nụ cười em khiến tim anh xuyến xao.

Rồi từ đó, được gặp em
Cùng hạnh phúc bước chung con đường
Để thời gian
Nhẹ nhàng trôi.

Ngọt ngào hương đôi môi em thơm
Và ánh mắt trao anh mỗi sớm
Em nhẹ đưa cánh tay
Ôm lên má hồng
Gần em thấy có vui không

Đợi anh nhé em yêu nơi xa
Để thời gian trôi qua
Mình sẽ mãi luôn có nhau
Trong tiếng cười
Và em hãy nhớ rằng
"Tình yêu mãi dành trao em".')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH09      ', N'Xa một cuộc tình', N'TL11      ', N'Album07   ', N'CS07      ', N'TG06      ', N'HSX18     ', N'Xa một cuộc tình
Người đi nhưng trái tim vẫn còn
Em về, nơi nào, đâu đó từng đêm về
Nhớ đôi vai mềm
Gọi giấc mơ ngọt ngào gối chăn mặn nồng
Ôm từng ngày buồn
Để ta vẫn biết đau hỡi tình
Em về, nơi nào, đâu đó mùa thu tàn
Cất cho riêng mình
Một chút thôi vấn vương gió bay hoài niệm
Mưa có về
Qua lối xưa trôi đi ngàn dấu vết còn
Anh nhớ em
Nhói đau khi duyên tình đã vỡ tan
Tình như vút bay
Anh đau con tim, cuốn trôi đi ngàn nỗi nhớ
Sáng nay ai ngồi xa xăm, lá rơi khi nào thu tới
Viết riêng cho mình anh thôi
Xa một cuộc tình
Người đi nhưng trái tim vẫn còn
Em về, nơi nào, đâu đó từng đêm về
Nhớ đôi vai mềm
Gọi giấc mơ ngọt ngào gối chăn mặn nồng
Ôm từng ngày buồn
Để ta vẫn biết đau hỡi tình
Em về, nơi nào, đâu đó mùa thu tàn
Cất cho riêng mình
Một chút thôi vấn vương gió bay hoài niệm
Mưa có về
Qua lối xưa trôi đi ngàn dấu vết còn
Anh nhớ em
Nhói đau khi duyên tình đã vỡ tan
Tình như vút bay
Anh đau con tim, cuốn trôi đi ngàn nỗi nhớ
Sáng nay ai ngồi xa xăm, lá rơi khi nào thu tới
Viết riêng cho mình anh thôi
Mưa có về
Qua lối xưa trôi đi ngàn dấu vết còn
Anh nhớ em
Nhói đau khi duyên tình đã vỡ tan
Tình như vút bay
Anh đau con tim, cuốn trôi đi ngàn nỗi nhớ
Sáng nay ai ngồi xa xăm, lá rơi khi nào thu tới
Viết riêng cho mình anh thôi
Viết riêng cho mình anh thôi')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH10      ', N'Người ấy', N'TL11      ', N'Album08   ', N'CS08      ', N'TG96      ', N'HSX40     ', N'Hôm qua anh thấy, ôi, người ấy
Đang trong tay với cô nào đấy?
Giật mình nhận ra không phải em
Chẳng biết em bây giờ đang ở đâu?
Bao lâu ta đã không gặp nhau?
Bao lâu chưa hỏi thăm vài câu?
Nào ngờ hôm nay anh thấy thế này
Chẳng biết phải nên làm gì đây?
Chưa một lần anh hết thắc mắc, sao em lìa xa anh này?
Để tiếp tục con đường yêu bên cạnh người ấy
Chưa một lần anh ngưng suy nghĩ, anh đã làm sai điều gì?
Hay là còn điều gì anh chưa bằng người ấy?
Người ấy có tốt với em, yêu em như anh đã từng yêu?
Người ấy có biết tính em hay trách móc, thích nuông chiều?
Anh nhớ em nhiều
Anh nhớ em nhiều
Sao để lòng vơi bớt đi bao đêm đợi mong?
Người ấy có lớn tiếng hay luôn khiến em đau buồn không?
Người ấy có biết quý em hay yêu thương em thật lòng?
Anh nhớ em nhiều
Anh nhớ em nhiều
Sao cho lòng vơi bớt đi nỗi buồn, nỗi đau trong lòng anh
Chưa một lần anh hết thắc mắc, sao em lìa xa anh này?
Để tiếp tục con đường yêu bên cạnh người ấy
Chưa bao giờ anh ngưng suy nghĩ, anh đã làm sai điều gì?
Hay là còn điều gì anh chưa bằng người ấy?
Người ấy có tốt với em, yêu em như anh đã từng yêu?
Người ấy có biết tính em hay trách móc, thích nuông chiều?
Anh nhớ em nhiều
Anh nhớ em nhiều
Sao cho lòng vơi bớt đi bao đêm đợi mong?
Người ấy có lớn tiếng hay luôn khiến em đau buồn không?
Người ấy có biết quý em hay yêu thương em thật lòng?
Anh nhớ em nhiều
Anh nhớ em nhiều
Sao cho lòng vơi bớt đi nỗi buồn, nỗi đau trong lòng anh
Người ấy có tốt với em, yêu em như anh đã từng yêu?
Người ấy có biết tính em hay trách móc, thích nuông chiều?
Anh nhớ em nhiều
Nhớ em nhiều
Cho lòng vơi bớt đi bao đêm đợi mong?
Người ấy có tốt với em, có yêu nhiều không?
Người ấy có biết tính em hay trách móc, thích nuông chiều?
Anh nhớ em nhiều
Anh nhớ em nhiều
Sao cho lòng vơi bớt đi bao đêm đợi mong?
Người ấy có lớn tiếng hay luôn khiến em đau buồn không?
Người ấy có biết quý em hay yêu thương em thật lòng?
Anh nhớ em nhiều
Anh nhớ em nhiều
Sao cho lòng vơi bớt đi nỗi buồn, nỗi đau trong lòng anh
Người ấy')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH100     ', N'Ngỡ', N'TL03      ', N'Album51   ', N'CS51      ', N'TG07      ', N'HSX40     ', N'Anh bỗng thấy nhớ em nhiều
Anh thấy lòng chợt lẻ loi
Cô đơn cùng với đêm dài
Cứ trôi theo anh từng ngày
Em ơi giờ đây anh cần
Cần một bờ vai em ơi
Nhưng không cạnh ai lúc này
Để anh có nơi tựa vào
Anh nhớ lại những kỷ niệm
Mà sao trong anh buồn thế
Anh nghe cơn gió đang về
Như em gần kề bên anh
Anh đưa đôi mắt anh tìm
Nhưng không thấy em ở đây
Anh yêu em quá mất rồi
Nên ngỡ như em về thôi
Anh bỗng thấy nhớ em nhiều
Anh thấy lòng chợt lẻ loi
Cô đơn cùng với đêm dài
Cứ trôi theo anh từng ngày
Em ơi giờ đây anh cần
Cần một bờ vai em ơi
Nhưng không cạnh ai lúc này
Để anh có nơi tựa vào
Anh nhớ lại những kỷ niệm
Mà sao trong anh buồn thế
Anh nghe cơn gió đang về
Như em gần kề bên anh
Anh đưa đôi mắt anh tìm
Nhưng không thấy em ở đây
Anh yêu em quá mất rồi
Nên ngỡ như em về thôi
Anh nhớ lại những kỷ niệm
Mà sao trong anh buồn thế
Anh nghe cơn gió đang về
Như em gần kề bên anh
Anh đưa đôi mắt anh tìm
Nhưng không thấy em ở đây
Anh yêu em quá mất rồi
Nên ngỡ như em về thôi')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH101     ', N'Trăm năm không quên', N'TL03      ', N'Album51   ', N'CS51      ', N'TG08      ', N'HSX41     ', N'Không gian mênh mông quá, những niềm vui khi xưa vẫn đây
Sao mi hoen cay bóng dáng người tình ngày nào đâu thấy
Khi xưa nơi đây có gió với mây theo ta hát ca
Giờ ngồi đây hôm nay gió mây đã xa cô đơn đưa ta về đâu?
Ngày em ra đi anh như hóa điên nỗi đau không ngừng
Thương nhớ không nguôi (Thương nhớ không nguôi)
Cơn đau hoài không dứt (Không dứt)
Rồi anh ra đi nơi xa cố quên vết thương hôm nào
Yêu dấu ta trao
Nhưng sao lòng vẫn đau?
Người ơi có nghe không?
Lòng anh có riêng em thôi
Dù anh ra đi, để cố quên lòng vẫn mãi sao không thể quên
Người ơi có nghe không?
Lòng anh vẫn trông mong
Dù là trăm năm sau khi xa đời anh vẫn không quên
Không gian mênh mông quá, những niềm vui khi xưa vẫn đây
Sao mi hoen cay bóng dáng người tình ngày nào đâu thấy
Khi xưa nơi đây có gió với mây theo ta hát ca
Giờ ngồi đây hôm nay gió mây đã xa cô đơn đưa ta về đâu?
Ngày em ra đi anh như hóa điên nỗi đau không ngừng
Thương nhớ không nguôi (Thương nhớ không nguôi)
Cơn đau hoài không dứt (Không dứt)
Rồi anh ra đi nơi xa cố quên vết thương hôm nào
Yêu dấu ta trao
Nhưng sao lòng vẫn đau?
Người ơi có nghe không?
Lòng anh có riêng em thôi
Dù anh ra đi, để cố quên lòng vẫn mãi sao không thể quên
Người ơi có nghe không?
Lòng anh vẫn trông mong
Dù là trăm năm sau khi xa đời anh vẫn không quên
Người ơi có nghe không?
Lòng anh có riêng em thôi
Dù anh ra đi, để cố quên lòng vẫn mãi sao không thể quên
Người ơi có nghe không?
Lòng anh vẫn trông mong
Dù là trăm năm sau khi xa đời anh vẫn không quên
Dù là trăm năm sau khi xa đời
Anh vẫn không quên')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH102     ', N'Chờ đông', N'TL05      ', N'Album52   ', N'CS52      ', N'TG09      ', N'HSX07     ', N'Em ơi có phải ngoài trời đang mưa
Em ơi có phải trời đã sang đông
Mùa đông giá băng, anh đang chờ
Mùa đông ái ân, anh đang tìm
Tìm màu áo cưới cho em
Ô hay mắt tình lại buồn hay sao?
Khi anh đã nguyện một đời yêu em
Dù cho nét môi kia phai mờ
Dù cho mắt xanh kia hững hờ
Mà dù năm tháng phôi pha
Ta quen biết nhau, khi tàn xuân
Ta yêu thiết tha, khi hè sang
Và khi thu đến anh gom ánh sao
Cho đêm đen kết thành vương miện
Để mùa đông đám cưới đôi mình
Em ơi sít lại thật gần bên anh
Cho em nở một nụ cười xinh xinh
Từ đây những đêm trăng thanh đầy
Mình không lẻ loi, không ưu sầu
Nguyện cầu ta mãi bên nhau
Ta quen biết nhau, khi tàn xuân
Ta yêu thiết ta, khi hè sang
Và khi thu đến anh gom ánh sao
Cho đêm đen kết thành vương miện
Để mùa đông đám cưới đôi mình
Em ơi sít lại thật gần bên anh
Cho em nở một nụ cười xinh xinh
Từ đây những đêm trăng thanh đầy
Mình không lẻ loi, không ưu sầu
Nguyện cầu ta mãi bên nhau
Từ đây những đêm trăng thanh đầy
Mình không lẻ loi, không ưu sầu
Nguyện cầu ta mãi bên nhau')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH103     ', N'Áo hoa', N'TL05      ', N'Album52   ', N'CS52      ', N'TG10      ', N'HSX07     ', N'Ơ ơ ơ ơ
Chứ theo anh, theo anh lên những ngôi đền
Chén vàng chén ngọc, đắm chìm sông ơ sâu
Ơ ơ ơ ơ
Mặt trời vàng, và mắt em nâu
Cho anh gửi Huế, một câu thơ ơ tình
Gặp nhau cái thuở ban đầu
Áo xanh áo ơ xanh mà em mặc một màu thiên thanh
Dáng em (dáng em thì răng nè) đẹp tựa trong tranh
Tình trong đôi mắt mà tình trong đôi mắt duyên lành mình đã trao
Bữa sau em mặc áo vàng
Áo em ơ em mà nở rộ một bông cúc vàng
Dịu dàng làn điệu dân ca
Mà nghe ai hát mà mà nghe ai hát duyên thề của lứa đôị
Anh về, anh về hái nụ hoa si (ơ ... ơ)
Gieo hương thơm cả đưởng đi lối về
Dẫu đời cỏn lắm nhiêu khẽ
Yêu em yêu cả bốn bề áo hoa
Hôm nay em mặc áo hường
Vẫn là em đó thiên đường anh mơ
Mong rằng có chút đợi chờ trong đôi mắt đó mà
Mà trong đôi mắt đó còn mơ mơ những gì
Anh về, anh về hái nụ hoa si (ơ ... ơ)
Gieo hương thơm cả đưởng đi lối về
Dẫu đời cỏn lắm nhiêu khẽ
Yêu em yêu cả bốn bốn bề áo hoa
Hôm nay em mặc áo hường
Vẫn là em đó thiên đường mà anh mơ
Mong rằng có chút đợi chờ trong đôi mắt đó mà
Mà trong đôi mắt đó còn mơ
Mơ những... gì')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH104     ', N'Gió về miền xuôi', N'TL05      ', N'Album52   ', N'CS52      ', N'TG11      ', N'HSX08     ', N'Gió về miền xuôi
Anh đưa em cuối nẻo cuối đường
Gió đầu non gió lọt đầu ghềnh (gió lộng đầu gành)
Đường em đi đường nở hoa khắp luống cày
Trên đường em đi đường nở hoa khắp chiến trường
Gió... gió về là về miền xuôi
Anh đưa em nước lớn nước ròng
Để em qua sông qua suối thăm chồng
Gió về miền xuôi qua bốn vịnh năm vòi
Đò vẫn đưa đưa ngược xuôi
Em ơi em ơi!
Đường về quê ta mấy bước, đường về quê xa mấy ngõ
Mà sao người nỡ bỏ quên đường
Trên đường em đi đường nở hoa khắp luống cày
Trên đường em đi đường nở hoa khắp chiến trường')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH105     ', N'Biển tình', N'TL05      ', N'Album52   ', N'CS52      ', N'TG11      ', N'HSX09     ', N'Nằm nghe sóng vỗ từng lớp xa
Bọt tràn theo từng làn gió đưa
Một vầng trăng sáng với tình yêu chúng ta
Vượt ngàn hải lý cũng không xa
Biển rộng đất trời chỉ có ta
Thì giòng ngân hà mình cũng qua
Biển không biên giới, như tình anh với em
Hơn cả những vì sao đêm...
Trăng nhô lên cao, trăng gác trên đầu núi
Mây xanh xanh lơ vì đắm say tình mới
Đến đây với em mà ngỡ trong giấc mơ
Mắt em âu sầu là cả một trời thơ
Không gian im nghe nhịp đôi tim hẹn ước
Mong sao tương lai đường trăng ta cùng bước
Xiết tay dắt nhau mình lánh xa thế nhân
Lánh xa ưu phiền đắng cay trần gian
Đời anh sẽ đẹp vì có em
Ngày dài sẽ làm mình nhớ thêm
Biển xanh cát trắng, sóng hòa nhịp ái ân
Không còn những chiều bâng khuâng...')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH106     ', N'Mười năm tình cũ', N'TL05      ', N'Album52   ', N'CS52      ', N'TG12      ', N'HSX13     ', N'Mười năm không gặp tưởng tình đã cũ
Mây bay bao năm tưởng mình đã quên
Như mưa bay đi một trời thương nhớ
Em ơi, bên kia có còn mắt buồn?
Mười năm cách biệt một lần bỡ ngỡ
Quên đi quên đi mộng buồn bấy lâu
Nhưng em yêu ơi, một vùng ký ức
Vẫn gọi tên em cả một trời yêu
Cả một trời yêu bao giờ trở lại?
Ôi ta xa nhau tưởng chừng như đã
Ôi ta yêu nhau để lòng cứ ngỡ
Tình bất phân ly tình vẫn như mơ
Đành nhủ lòng thôi giã từ kỷ niệm
Cho qua bao năm mộng buồn quên dấu
Nhưng sao bao năm ngày dài qua mãi
Trong em hôm nay thấy tình còn đây
Mười năm cách biệt tình đành quên lãng
Như mây như mưa bay đi muôn phương
Nhưng em yêu ơi, một dòng thư cũ
Mãi còn trong ta một đời cuồng điên
Cả một trời yêu bao giờ trở lại?
Ôi ta xa nhau tưởng chừng như đã
Ôi ta yêu nhau để lòng cứ ngỡ
Tình bất phân ly tình vẫn như mơ
Đành nhủ lòng thôi giã từ kỷ niệm
Cho qua bao năm mộng buồn quên dấu
Nhưng sao bao năm ngày dài qua mãi
Trong em hôm nay thấy tình còn đây
Mười năm cách biệt hình như em đã
Quên câu yêu thương ta trao cho nhau
Em ơi, bên kia còn chăng nhung nhớ
Như anh hôm nay thấy mưa trở về
Như anh hôm nay thấy lòng tiếc nhớ
Mười năm không gặp
Mười năm nhớ thương!')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH107     ', N'Anh biết em đi chẳng trở về', N'TL05      ', N'Album52   ', N'CS52      ', N'TG12      ', N'HSX14     ', N'Anh biết em đi chẳng trở về
Dặm ngàn liễu khuất với sương che
Em đừng quay lại nhìn anh nữa
Anh biết em đi chẳng trở về
Không phải vì anh, chẳng tại em
Hoa thu tàn tạ, rụng bên thềm
Ân tình sớm nở, chiều phai úa
Không phải vì anh, chẳng tại em
Bên gốc thông xưa, mình lỡ ghi
Tình ta âu yếm lúc đam mê
Thôi đành xóa lời thề trăng nước
Bên gốc thông xưa, mình lỡ ghi
Em nhớ nhung chi, giọt hương huyền
Đàn xưa đã lỗi khúc tơ duyên
Tơ trời không đượm tình âu yếm
Em nhớ nhung chi, giọt hương huyền
Bể cạn sao mờ, núi cũng tan
Tình kia sao giữ được muôn vàn
Em đừng giận tình phai úa
Bể cạn sao mờ, núi cũng tan
Anh biết em đi chẳng trở về
Dặm ngàn liễu khuất với sương che
Em đừng quay lại nhìn anh nữa
Anh biết em đi chẳng trở về
Em đừng quay lại nhìn anh nữa
Anh biết em đi chẳng trở về')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH108     ', N'Cháu yêu bà', N'TL09      ', N'Album53   ', N'CS53      ', N'TG95      ', N'HSX47     ', N'Bà ơi bà cháu yêu bà lắm
Tóc bà trắng màu trắng như mây
Cháu yêu bà cháu nắm bàn tay
Khi cháu vâng lời cháu biết bà vui...

Bà ơi bà cháu yêu bà lắm
Tóc bà trắng màu trắng như mây
Cháu yêu bà cháu nắm bàn tay
Khi cháu vâng lời cháu biết bà vui...')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH109     ', N'Mẹ yêu không nào', N'TL09      ', N'Album53   ', N'CS53      ', N'TG13      ', N'HSX47     ', N'Con cò bé bé
Nó đậu cành tre
đi không hỏi mẹ
Biết đi đường nào
Khi đi em hỏi
Khi về em chào
Miệng em chúm chím
Mẹ có yêu không nào
Con cò bé bé
Nó đậu cành tre
đi không hỏi mẹ
Biết đi đường nào
Khi đi em hỏi
Khi về em chào
Miệng em chúm chím
Mẹ có yêu không nào
Con cò bé bé
Nó đậu cành tre
đi không hỏi mẹ
Biết đi đường nào
Khi đi em hỏi
Khi về em chào
Miệng em chúm chím
Mẹ có yêu không nào
Con cò bé bé
Nó đậu cành tre
đi không hỏi mẹ
Biết đi đường nào
Khi đi em hỏi
Khi về em chào
Miệng em chúm chím
Mẹ có yêu không nào
Miệng em chúm chím
Mẹ có yêu không nào')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH11      ', N'Đã biết sẽ có ngày hôm qua', N'TL11      ', N'ALbum08   ', N'CS08      ', N'TG14      ', N'HSX13     ', N'Em dù rằng tình ta đã cách xa
Dù rằng ai kia đang đứng chờ em
Hãy ở lại đây, hãy đứng lại đây mấy phút giây rồi đi
Mơ, một ngày anh mơ đôi ta có thể trở lại
Mình cùng chung đôi bước tiếp trên con đường dài
Giật mình tỉnh giấc không thể chung vai
Sai thì anh đã sai sao trách được ai
Giờ thì tình yêu đã nhạt phai
Đành thôi câm nín, đành thôi lặng im
Em bước đi cùng ai
Xin, nhận lời xin lỗi từ anh dù đã muộn màng
Dù tình yêu mới của em đã quá nồng nàn
Dù tình đôi ta đã trót dở dang
Giờ ở nơi đây còn lại gì cho chúng ta
Chúng ta đã gió mây xa như thế mà
Giá như ngày xưa đôi ta không yêu quá vội vã
Biết đâu sẽ chẳng có ngày hôm qua
Giờ đây tình yêu đôi ta là như thế sao
Chắc quay trở lại là chuyện không thể nào
Giấc mơ mà anh dựng xây giờ đây đã vội tắt
Chắc em cũng sẽ chẳng về bên anh
Sai thì anh đã sai sao trách được ai
Giờ thì tình yêu đã nhạt phai
Đành thôi câm nín, đành thôi lặng im
Em bước đi cùng ai
Xin, nhận lời xin lỗi từ anh dù đã muộn màng
Dù tình yêu mới của em đã quá nồng nàn
Dù tình đôi ta đã trót dở dang
Giờ ở nơi đây còn lại gì cho chúng ta
Chúng ta đã gió mây xa như thế mà
Giá như ngày xưa đôi ta không yêu quá vội vã
Biết đâu sẽ chẳng có ngày, ngày hôm qua
Giờ đây tình yêu đôi ta là như thế sao
Chắc quay trở lại là chuyện không thể nào
Giấc mơ mà anh dựng xây giờ đây đã vội tắt
Chắc em cũng sẽ chẳng về bên anh
Giờ ở nơi đây còn lại gì cho chúng ta
Chúng ta đã gió mây xa như thế mà
Giá như ngày xưa đôi ta không yêu quá vội vã
Biết đâu sẽ chẳng có ngày, ngày hôm qua
Giờ đây tình yêu đôi ta là như thế sao
Chắc quay trở lại là chuyện không thể nào
Giấc mơ mà anh dựng xây giờ đây đã vội tắt
Chắc em cũng sẽ chẳng về bên anh
Giấc mộng giờ đã tan rồi
Em giờ đây cũng xa rồi
Lấy gì để tiếc mơ ước
Khi người em muốn không là anh')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH110     ', N'Cả nhà thương nhau', N'TL09      ', N'Album53   ', N'CS53      ', N'TG14      ', N'HSX47     ', N'Ba thương con vì con giống mẹ
Mẹ thương con vì con giống ba
Cả nhà ta cùng thương yêu nhau
Xa là nhớ, gần nhau là cười
Ba thương con vì con giống mẹ
Mẹ thương con vì con giống ba
Cả nhà ta cùng thương yêu nhau
Xa là nhớ, gần nhau là cười
Ba thương con vì con giống mẹ
Mẹ thương con vì con giống ba
Cả nhà ta cùng thương yêu nhau
Xa là nhớ, gần nhau là cười
Ba thương con vì con giống mẹ
Mẹ thương con vì con giống ba
Cả nhà ta cùng thương yêu nhau
Xa là nhớ, gần nhau là cười
Ba thương con vì con giống mẹ
Mẹ thương con vì con giống ba
Cả nhà ta cùng thương yêu nhau
Xa là nhớ, gần nhau là cười
Ba thương con vì con giống mẹ
Mẹ thương con vì con giống ba
Cả nhà ta cùng thương yêu nhau
Xa là nhớ, gần nhau là cười
Xa là nhớ, gần nhau là cười')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH111     ', N'Trái đất này là của chúng mình', N'TL09      ', N'Album53   ', N'CS53      ', N'TG15      ', N'HSX47     ', N'Bồ câu ơi tiếng chim gù thương mến
Hải âu ơi cánh chim vờn trên sóng
Cùng bay nào
Cho trái đất quay
Cùng bay nào
Cho trái đất quay
Trái đất này là của chúng mình
Quả bóng xanh bay giữa trời xanh
Bồ câu ơi tiếng chim gù thương mến
Hải âu ơi cánh chim vờn trên sóng
Cùng bay nào
Cho trái đất quay
Cùng bay nào
Cho trái đất quay
Trái đất này là của chúng mình
Vàng trắng đen tuy khác màu da
Bạn yêu ơi, chúng ta là hoa quý
Đầy hương thơm nắng tô màu tươi thắm
Màu hoa nào
Cũng quý cũng thơm
Màu da nào
Cũng quý cũng thơm
Trái đất này là của chúng mình
Cùng xiết tay môi thắm cười xinh
Bình minh ơi khúc ca này êm ấm
Học chăm ngoan đắp xây đời tươi sáng
Hành tinh này
Là của chúng ta
Hành tinh này
Là của chúng ta
Trái đất này là của chúng mình
Quả bóng xanh bay giữa trời xanh
Bồ câu ơi tiếng chim gù thương mến
Hải âu ơi cánh chim vờn trên sóng
Cùng bay nào
Cho trái đất quay
Cùng bay nào
Cho trái đất quay
Trái đất này là của chúng mình
Vàng trắng đen tuy khác màu da
Bạn yêu ơi, chúng ta là hoa quý
Đầy hương thơm nắng tô màu tươi thắm
Màu hoa nào
Cũng quý cũng thơm
Màu da nào
Cũng quý cũng thơm
Trái đất này là của chúng mình
Cùng xiết tay môi thắm cười xinh
Bình minh ơi khúc ca này êm ấm
Học chăm ngoan đắp xây đời tươi sáng
Hành tinh này
Là của chúng ta
Hành tinh này
Là của chúng ta
Hành tinh này
Là của chúng ta
Hành tinh này
Là của chúng ta')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH112     ', N'Bắc Kim Thang', N'TL09      ', N'Album53   ', N'CS53      ', N'TG15      ', N'HSX47     ', N'Bắc kim thang cà lang bí rợ
Cột qua kèo là kèo qua cột
Chú bán dầu qua cầu mà té
Chú bán ếch ở lại làm chi
Con le le đánh trống thổi kèn
Con bìm bịp thổi tò tí te tò te, tò te...
Bắc kim thang, oh, bắc kim thang
Câu hát cũ nhưng khi nghe lại thì như buộc thắt tim gan
Đóng hết cửa và tắt hết đèn để nghe chuyện kể dân gian
Bỏ vào lon một hai viên kẹo xong rồi mình thắp cây nhang
Vì âm bính sẽ trở về vào tháng bảy
Lướt đi ngao du và nhẹ nhàng như nước chảy
Ít ai quan tâm và cũng ít ai nghe thấy
Nên người ta thường không tin cho đến khi được trông thấy
Ricky OTD anh không nói lố
Bàn câu cơ dân chơi hay mang ra đi xin số
Lời đầu tiên nó xin ông bà bên trên phù hộ
Nhưng mục đích chính là xin con số về đập con lô
Và nổi tiếng miền tây chính là Châu Đốc An Giang
Thất Sơn, núi bảy trấn giữ linh hồn lang thang
Ai chờ ai đến 12 giờ đêm?
Tay chân lạnh toát nằm bên bờ kênh
Bắc kim thang cà lang bí rợ
Cột qua kèo là kèo qua cột
Chú bán dầu qua cầu mà té
Chú bán ếch ở lại làm chi
Con le le đánh trống thổi kèn
Con bìm bịp thổi tò tí te tò te, tò te...
Bắc kim thang, oh, bắc kim thang
Câu chuyện dân gian bắt đầu từ một ngôi làng
Chú bán ếch và anh bán dầu bắt đầu kết đôi thành bạn
Tình cảm anh em của họ khắng khít như là bầu bí một giàn
Rồi con bìm bịp và con le le đưa cho điềm báo là
Đừng đi ngang qua con sông kia trước khi đến sáu giờ
Vào đêm trăng tà rất dễ đục nước béo cò
Đi qua đó nhớ phải ngó chừng ma da kéo giò
Cây cầu trơn, trơn, trơn trượt
Chờ người lang thang qua là lấy mạng
Chiếm lấy linh hồn để được ngày chở về dương gian
Tước đi ánh sáng, chú bán dầu rơi vào đêm tàn
Không thể ngăn cản, chú bán ếch không thể ngăn cản
Kết cục, người đi ngang qua đây chỉ để lại xác thịt
Mắt buồn, người ở lại làm chi giữa cuộc đời bất hạnh
Khi mà con bìm bịp, le le hoà thanh cùng nhau
Cất tiếng hát cốt cũng là cảnh báo đời sau
Bắc kim thang cà lang bí rợ
Cột qua kèo là kèo qua cột
Chú bán dầu qua cầu mà té
Chú bán ếch ở lại làm chi
Con le le đánh trống thổi kèn
Con bìm bịp thổi tò tí te tò te, tò te...')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH113     ', N'Hai con thằn lằn con', N'TL09      ', N'Album53   ', N'CS53      ', N'TG16      ', N'HSX47     ', N'Hai con thằn lằn con
Đùa nhau cắn nhau đứt đuôi
Cha thằn lằn buồn thiu
Gọi chúng đến mới mắng cho
Hai con thằn lằn con
Đuôi thì to nhưng đã đứt rồi
Ôi đớn đau quá trời
Chúng khóc la tơi bời
Hai con thằn lằn con
Đùa nhau cắn nhau đứt đuôi
Cha thằn lằn buồn thiu
Gọi chúng đến mới mắng cho
Hai con thằn lằn con
Đuôi thì to nhưng đã đứt rồi
Ôi đớn đau quá trời
Chúng khóc la tơi bời
Hai con thằn lằn con
Đùa nhau cắn nhau đứt đuôi
Cha thằn lằn buồn thiu
Gọi chúng đến mới mắng cho
Hai con thằn lằn con
Đuôi thì to nhưng đã đứt rồi
Ôi đớn đau quá trời
Chúng khóc la tơi bời
Hai con thằn lằn con
Đùa nhau cắn nhau đứt đuôi
Cha thằn lằn buồn thiu
Gọi chúng đến mới mắng cho
Hai con thằn lằn con
Đuôi thì to nhưng đã đứt rồi
Ôi đớn đau quá trời
Chúng khóc la tơi bời
Hai con thằn lằn con
Đùa nhau cắn nhau đứt đuôi
Cha thằn lằn buồn thiu
Gọi chúng đến mới mắng cho
Hai con thằn lằn con
Đuôi thì to nhưng đã đứt rồi
Ôi đớn đau quá trời
Chúng khóc la tơi bời
Hai con thằn lằn con
Đùa nhau cắn nhau đứt đuôi
Cha thằn lằn buồn thiu
Gọi chúng đến mới mắng cho
Hai con thằn lằn con
Đuôi thì to nhưng đã đứt rồi
Ôi đớn đau quá trời
Chúng khóc la tơi bời
Hai con thằn lằn con
Đùa nhau cắn nhau đứt đuôi
Cha thằn lằn buồn thiu
Gọi chúng đến mới mắng cho
Hai con thằn lằn con
Đuôi thì to nhưng đã đứt rồi
Ôi đớn đau quá trời
Chúng khóc la tơi bời
Hai con thằn lằn con
Đuôi thì to nhưng đã đứt rồi
Ôi đớn đau quá trời
Chúng khóc la tơi bời')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH114     ', N'Chị ong nâu', N'TL09      ', N'Album53   ', N'CS53      ', N'TG16      ', N'HSX47     ', N'Chị ong nâu nâu nâu nâu
Chị bay đi đâu đi đâu ?
Bác gà trống mới gáy, ông mặt trời mới dậy
Mà trên những cành hoa em đã thấy chị bay.

Bé ngoan của chị ơi, hôm nay trời nắng tươi
Chị bay đi tìm nhụy, làm mật ong nuôi đời.
Chị vâng theo bố mẹ, chăm làm không nên lười.

Trời xanh xanh xanh xanh xanh xanh.
Chị ong bay nhanh bay nhanh, hoa nở những cánh thắm
Trên mình mật trĩu nặng, chị ong uốn mình qua nghiêng đôi cánh chào hoa.

Bé ngoan của chị ơi, hôm nay trời nắng tươi
Đường vui hoa phuợng đỏ, ngày ngày nhớ ôn bài.
Đừng quên cô giáo dặn, chăm học không nên lười.

Chị ong nâu nâu nâu nâu
Chị bay đi đâu đi đâu ?
Bác gà trống mới gáy, ông mặt trời mới dậy
Mà trên những cành hoa em đã thấy chị bay.

Bé ngoan của chị ơi, hôm nay trời nắng tươi
Chị bay đi tìm nhụy, làm mật ong nuôi đời.
Chị vâng theo bố mẹ, chăm làm không nên lười.')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH115     ', N'Alibaba', N'TL09      ', N'Album53   ', N'CS53      ', N'TG17      ', N'HSX47     ', N'Khi xưa Alibaba như vầng trăng sáng chiếu trên trần gian (Alibaba)
Hôm nay Alibaba như chàng dũng sĩ hát vang lời ca (Alibaba)
Khi xưa Alibaba như vầng trăng sáng chiếu trên trần gian (Alibaba)
Hôm nay Alibaba như chàng dũng sĩ hát vang lời ca (Alibaba)
Chuyện xưa đã kể rất hay vầng trăng sáng ước mơ một đêm về
Để xóa hết những bóng mây mù che khuất ánh trăng êm đẹp
Nào ta cùng hát vang và theo điệu trống
Chuyện xưa cho em khúc ca với ba lời ca ngọt ngào
Vần trăng rạng sáng
Soi trần giang đẹp thấy chàng dũng sĩ đã mang niềm vui đến cho mọi người
Nào ta cùng hát vang và theo điệu trống
Và hãy nói với tinh thần chàng dũng sĩ Alibaba
Tìm mùa xuân bằng bao khúc hát vui tươi đẹp bao ước mơ
Mang đến cho đời niềm vui cõi trần')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH116     ', N'Cháu vẽ ông mặt trời', N'TL09      ', N'Album53   ', N'CS53      ', N'TG17      ', N'HSX14     ', N'Cháu vẽ ông mặt trời
Miệng ông cười thật tươi,
Như miệng cười cô giáo
dạy cháu hát, dạy cháu chơi

Cháu vẽ ông mặt trời
Chúm mây ở cạnh ông,
Như ở cạnh cô giáo
Là mái tóc của bé thơ')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH117     ', N'Sầu tím thiệp hồng', N'TL05      ', N'Album54   ', N'CS54      ', N'TG18      ', N'HSX49     ', N'Từ lúc quen nhau chưa nói một lời gì, tỏ tình ta mến nhau.
Nhiều đêm ngắm sao mơ ước duyên mình bê''n lâu, suốt đời tình khă''c sâu.
Nhớ thương đầy vơi mộng thấy ai mỉm cươ''i, làn môi xinh tuyệt vời.
Để rồi buồn ơi, ánh trăng soi còn đó,
Và nghe hơi gió biết rằng mình vừa mơ.
Khi yêu hồn như nở hoa xây mộng tuyệt vời,
Nắm tương lai trong bàn tay một câu nói thôi.
Đôi khi gặp nhau muốn khơi nhưng rồi lại thôi,
Nói ra e ngại, mặc theo gió trôi.
Hôm nay nhìn xe kết hoa xuôi ngược nẻo đường,
Gửi thư trao cho người yêu, vài câu luyến thương.
Hân hoan hồn như, nở hoa trông chờ hồi âm,
Đă''ng cay trong lòng, chỉ thấy thiệp hồng.
Chiều tím không mây đường cũ bước lần về, buồn nghe day dứt tim.
Nhìn xe kết hoa màu trắng ngỡ rằng mình mơ, pháo hồng nhuộm tím đường.
Lá thu chậm rơi từng lá nghe buồn buồn, tưởng bước ai tìm về.
Mở rộng vòng tay, đón anh nhưng nào thấy.
Sầu dâng lên tim biết bao giờ cho khuây?
Hôm nay nhìn xe kết hoa xuôi ngược nẻo đường,
Gửi thư trao cho người yêu, vài câu luyến thương.
Hân hoan hồn như, nở hoa trông chờ hồi âm,
Đă''ng cay trong lòng, chỉ thấy thiệp hồng.
Chiều tím không mây đường cũ bước lần về, buồn nghe day dứt tim.
Nhìn xe kết hoa màu trắng ngỡ rằng mình mơ, pháo hồng nhuộm tím đường.
Lá thu chậm rơi từng lá nghe buồn buồn, tưởng bước ai tìm về.
Mở rộng vòng tay, đón anh nhưng nào thấy.
Sầu dâng lên tim biết bao giờ cho khuây?
Mở rộng vòng tay, đón anh nhưng nào thấy.
Sầu dâng lên tim... biết bao giờ cho... khuây?')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH118     ', N'Đắp mộ cuộc tình', N'TL05      ', N'Album54   ', N'CS54      ', N'TG18      ', N'HSX53     ', N'Xây giấc mộng ban đầu, yêu người thuở mới đôi mươi
Em đang độ trăng tròn, từng ngày qua phố
Áo em trắng cả đường về, lá thư ướp mộng học trò
Mối tình xanh như khúc hát.
Ai đã hẹn với thề để rồi lỡ mối duyên thơ ra đi chẳng giã từ
Ngày em thay áo, áo hoa pháo đỏ rượu nồng
Có ai nát cả cõi lòng đứng nhìn em bước bên chồng.
Hai mươi năm cuộc mộng dở dang
Khắc sâu bóng nàng, lắng trong cung đàn
Em giờ ở đâu hẳn vui duyên mới?
Hai mươi năm cuộc rượu còn đây
Uống qua tháng ngày, cố quên đi người
Say hoài sầu không vơi
Tình riêng ta tiếc uống thêm ly này.
Ôm giấc mộng lỡ làng, những chiều lắng tiếng mưa rơi
Đêm say chờ trăng tàn từng thu thay lá
Lá rơi đắp mộ cuộc tình
Lá bay chất nặng tuổi đời nhớ người ta rót ly này.')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH119     ', N'Đập vỡ cây đàn', N'TL05      ', N'Album54   ', N'CS54      ', N'TG19      ', N'HSX34     ', N'Đập vỡ cây đàn giận đời đập vỡ cây đàn
Người ơi người ơi! Tình ơi tình ơi!
Đập vỡ cây đàn giận đời bạc trắng như vôi
Giận người điên đảo quên lời
Đập vỡ cây đàn giận người con gái yêu đàn
Buồn ơi buồn ơi! Làm sao để nguôi
Đập vỡ cây đàn giận người đổi trắng thay đen
Giận đời trở như bàn tay
Chuyện ngày qua, tôi gặp người con gái
Mang giọng ca thật buồn
Em bảo tôi rằng: Anh đi học đàn
Để đàn theo lúc em ca, những ngày hoa mộng đời ta
Tôi yêu nàng nên vội vàng lên tỉnh
Đi tìm theo học đàn
Sau một năm trường, tôi trở về quê hương
Nhưng người em gái, ngày ấy đã đi rồi
Tôi hỏi thăm dò từng người trong xóm tin nàng
Nàng đâu nàng đâu, nàng đâu nàng đâu
Người báo tin buồn nàng gặp nhạc sĩ vang danh
Rồi cùng xây đắp gia đình
Tôi xót thương nàng và rồi tôi khóc thương mình
Đời ơi còn chi, đàn ơi biệt ly
Đập vỡ cây đàn giận người đổi trắng thay đen
Giận đời trở như bàn tay')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH12      ', N'Dấu mưa', N'TL11      ', N'Album09   ', N'CS09      ', N'TG19      ', N'HSX51     ', N'Một cơn mưa đi qua
Để lại
Những ký ức anh và em
Tìm em trong cơn mưa
Anh thẫn thờ
Lần theo những dấu vết đánh rơi
Tưởng như rất gần mà ngờ đâu đã rất xa
Vụt mất theo cơn mưa ngày qua
Tưởng như rất lạ mà ngờ đâu sao quá quen
Là lúc em ngang đời ta
Chiều cuối con đường mình nhìn ngắm hoàng hôn
Ẩn sâu trong tiếng tí tách rơi
Chờ mãi nơi này một cảm giác quá lạ thường
Cảm giác cho anh nhận ra
I love you
I love you so
Khoảnh khắc cho anh nhận ra
I love you
I love you so
Khoảnh khắc cho anh gần em
Một cơn mưa đi qua
Để lại
Những ký ức anh và em
Tìm em trong cơn mưa
Anh thẫn thờ
Lần theo những dấu vết đánh rơi
Tưởng như rất gần mà ngờ đâu đã rất xa
Vụt mất theo cơn mưa ngày qua
Tưởng như rất lạ mà ngờ đâu sao quá quen
Là lúc em ngang đời ta
Chiều cuối con đường mình nhìn ngắm hoàng hôn
Ẩn sâu trong tiếng tí tách rơi
Chờ mãi nơi này, một cảm giác quá lạ thường
Cảm giác cho anh nhận ra
I love you
I love you so
Khoảnh khắc cho anh nhận ra
I love you
I love you so
Khoảnh khắc cho anh gần em
Chiều cuối con đường mình nhìn ngắm hoàng hôn
Ẩn sâu trong tiếng tí tách rơi
Chờ mãi nơi này một cảm giác quá lạ thường
Cảm giác cho anh nhận ra
I love you (I love you)
I love you so (I love you so)
Khoảnh khắc cho anh nhận ra
I love you (I love you)
I love you so
Khoảnh khắc cho anh gần em')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH120     ', N'Mưa trên phố Huế', N'TL05      ', N'Album54   ', N'CS54      ', N'TG99      ', N'HSX54     ', N'Chiều nay mưa trên phố Huế
Kiếp giang hồ không bến đợi
Mà mưa rơi vẫn rơi rơi hoài
Cho lòng nhớ ai
Ngày chia tay hôm nao còn đây
Nước trên sông Hương còn đầy
Tình đã xa gió mưa u hoài
Mắt lệ ngắn dài
Chiều mưa trên Kinh Đô Huế
Tiếng mưa còn vương kỷ niệm
Ngày quen nhau dưới chân Thiên Mụ
Em còn nhớ không?
Chợ Đông Ba khi mình qua
Lá me bay bay là đà
Chiều thiết tha có anh bên mình
Mà ngỡ hôm qua
Hò ơi... Ơi hò...
Chiều mưa phố buồn
Chiều mưa phố xưa u buồn có ai mong đợi
Một người biền biệt nơi mô
Để nhớ với thương một người
Chiều nay mưa trên phố Huế
Biết ai đã quên ai rồi
Hạt mưa rơi vẫn rơi rơi đều
Cho lòng u hoài
Ngày xưa mưa rơi thì sao
Bây chừ nghe mưa lại buồn
Vì tiếng mưa, tiếng mưa trong lòng
Làm mình cô đơn
Hò ơi... Ơi hò...
Chiều mưa phố buồn
Chiều mưa phố xưa u buồn có ai mong đợi
Một người biền biệt nơi mô
Để nhớ với thương một người
Chiều nay mưa trên phố Huế
Biết ai đã quên ai rồi
Hạt mưa rơi vẫn rơi rơi đều
Cho lòng u hoài
Ngày xưa mưa rơi thì sao
Bây chừ nghe mưa lại buồn
Vì tiếng mưa, tiếng mưa trong lòng
Làm mình cô đơn
Ngày xưa mưa rơi thì sao
Bây chừ nghe mưa lại buồn
Vì tiếng mưa, tiếng mưa trong lòng
Làm mình cô đơn')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH121     ', N'Neo đậu bến quê', N'TL05      ', N'Album54   ', N'CS54      ', N'TG20      ', N'HSX55     ', N'Câu đò đưa thầm gọi, tôi ghé về tuổi thơ
Người xưa đâu xa vắng, ai đưa tôi qua đò
Ngô mướt dài bãi quê, gió chiều chiều rượi mát
Đàn trâu chậm ngoài đê, vẫn đi về lối cũ
Xuống đò một mình tôi
Với dòng sông tuổi thơ
Và một giọng đò đưa
Vẫn neo đậu bến xưa
Lang thang đi bốn phương trời
Nay về sông quê tắm mát
Sông Lam biết khi mô cho cạn
Đục trong, đục trong nhục vinh hỡi người
Câu đò đưa thầm goi, tôi ghé về tuổi thơ
Vầng trăng non ngơ ngác, theo tôi đi chân trần
Cây đến kỳ trổ hoa, chuyến đò đầy rời bến
Em hát rằng đến duyên, em lấy chồng năm ấy
Hát lại giọng đò đưa, như mẹ ru hồn tôi
Điệu buồn và điệu thương, sao cháy lòng đến thế
Sông Lam biết khi mô cho cạn, như tình quê hương trong tôi
Sông Lam biết khi mô cho cạn
Người ơi! Đục trong câu hát cháy lòng
Hát lại giọng đò đưa, như mẹ ru hồn tôi
Điệu buồn và điệu thương, sao cháy lòng đến thế
Sông Lam biết khi mô cho cạn, như tình quê hương trong tôi
Sông Lam biết khi mô cho cạn
Người ơi! Đục trong câu hát cháy lòng
Người về neo đậu bến mô, hồn tôi, bến quê neo đậu người ơi!')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH122     ', N'Gõ cửa trái tim', N'TL05      ', N'Album54   ', N'CS54      ', N'TG21      ', N'HSX30     ', N'Gõ cửa trái tim van em được vào
Dù tình xót đau chung thân huyệt đào
Ngủ vùi với chiêm bao
Nỗi niềm mắt xanh xao
Nhưng anh vẫn ngóng tim em mở cửa.
Gõ cửa trái tim sao em hững hờ
Ngõ hồn tái tê năm canh thẫn thờ
Nhện lòng mắc giăng tơ
Để một mối bơ vơ
Khi không em nhốt anh trong đợi chờ
Ôi cửa tim em bằng vàng
Nên tiếng yêu nghe bẽ bàng
Để anh gõ cửa miên man
Mà em không chút hỏi han
Anh buồn lang thang
Gõ cửa trái tim nghe xa nghìn trùng
Đèn mờ hắt hiu cô đơn tận cùng
Đàn lỡ phím sai cung
Tình này cũng mông lung
Tim em ai bắn mũi tên lạnh lùng')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH123     ', N'Ca dao em và tôi', N'TL05      ', N'Album55   ', N'CS55      ', N'TG21      ', N'HSX52     ', N'Cắt nửa vầng trăng
Cắt nửa vầng trăng
Tôi làm con đò nhỏ
Chặt đôi câu thơ
Bẻ đôi câu thơ
Tôi làm mái chèo lướt sóng
Đưa tôi về
Đưa tôi về
Với người tôi yêu
Để cùng hát khúc dân ca
Quê mình
Để tôi sống giữa
Bao nhiêu ân tình
Bao ân tình
Mộc mạc làng quê
Trưa nắng hè
Gọi nhau
Râm ran chè xanh
Cùng em khoác chiếc áo tơi
Ra đồng
Dù trời đổ nắng chang chang
Vẫn quàng
Để nghĩa tình
đừng nhạt đừng phai
Thương nhau rồi
đừng cởi áo cho ai
Chuyện tình tôi cứ lênh đênh
Dòng trôi
Và người con gái tôi yêu
Nơi làng quê
Có ai ngờ
Chân lấm bùn
Mà tôi ngỡ gót chân tiên
Cắt nửa vầng trăng
Cắt nửa vầng trăng
Tôi làm con đò nhỏ
Chặt đôi câu thơ
Bẻ đôi câu thơ
Tôi làm mái chèo lướt sóng
Đưa tôi về
Đưa tôi về
Với người tôi yêu
Để cùng ngâm khúc ca dao
Quê mùa
Để nghe tiếng sáo
Thênh thênh cánh cò
đã có lần
Em giận hờn tôi
đêm ra đồng
Em đổ ánh trăng vàng đi
Nào ngờ chẳng chút nguôi ngoai
Vương buồn
Vầng trăng lại sáng trong hơn
đầy đồng
Câu ca rằng
Hết giận rồi thương
áo nâu sầm
Em nhuộm tình tôi
Nào đâu dễ có phôi phai
Thời gian
Còn đây mãi khúc ca dao
Em và tôi
Chốn quê nghèo
Ta có mình
Một ngày bằng mấy trăm năm
Hỡi người
Cắt nửa vầng trăng
Cắt nửa vầng trăng
Tôi làm con đò nhỏ
Chặt đôi câu thơ
Bẻ đôi câu thơ
Tôi làm mái chèo lướt sóng
Đưa tôi về
Đưa tôi về
Với người tôi yêu
Đưa tôi về
Đưa tôi về
Với người tôi yêu
Đưa tôi về
Đưa tôi về')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH124     ', N'Tóc em đuôi gà', N'TL05      ', N'Album55   ', N'CS55      ', N'TG22      ', N'HSX59     ', N'Này cô bé có mái tóc đuôi gà
Đạp xe trên phố
Phố đông người qua
Chờ anh với nếu có lỡ ai cười
Thì anh sẽ nói:
"Tình cờ sánh đôi"
Này cô bé có mái tóc đuôi gà
Đạp xe nhanh quá
Khiến anh hụt hơi
Chờ anh với
Sắp tới ngã tư rồi
Thì xin em hãy
Chầm chậm mà thôi
Tóc đuôi gà trong gió
Bay nhẹ ngây ngất lòng anh
Nắng xuân hồng môi thắm
Em cười chúm chím thật xinh
Ước chi làm cơn gió
Hay là tia nắng
Dạo quanh phố vui
(A há ...)
Chớ vội vàng em hãy coi chừng
Kẻo không kịp thắng
Giữa con đường thành phố đông người
Đừng nên chạy nhanh
Để anh còn nhìn ngắm
Em cười trong nắng
Tóc em đuôi gà
Này cô bé có mái tóc đuôi gà
Chiều nay trên phố
Đón em về qua
Tà áo trắng
Vẫn trắng mãi trong anh
Nụ cười ai đó
Mà lòng vấn vương
Này cô bé
Bé có biết chăng là
Vòng xe lăn bánh
Khiến anh ngẩn ngơ
Nào ai biết
Có những nỗi mong chờ
Vì anh yêu mãi
Tóc em đuôi gà
Này cô bé có mái tóc đuôi gà
Đạp xe trên phố
Phố đông người qua
Chờ anh với nếu có lỡ ai cười
Thì anh sẽ nói:
"Tình cờ sánh đôi"
Này cô bé có mái tóc đuôi gà
Đạp xe nhanh quá
Khiến anh hụt hơi
Chờ anh với
Sắp tới ngã tư rồi
Thì xin em hãy
Chầm chậm mà thôi
Tóc đuôi gà trong gió
Bay nhẹ ngây ngất lòng anh
Nắng xuân hồng môi thắm
Em cười chúm chím thật xinh
Ước chi làm cơn gió
Hay là tia nắng
Dạo quanh phố vui
(A há ...)
Chớ vội vàng em hãy coi chừng
Kẻo không kịp thắng
Giữa con đường thành phố đông người
Đừng nên chạy nhanh
Để anh còn nhìn ngắm
Em cười trong nắng
Tóc em đuôi gà
Này cô bé có mái tóc đuôi gà
Chiều nay trên phố
Đón em về qua
Tà áo trắng
Vẫn trắng mãi trong anh
Nụ cười ai đó
Mà lòng vấn vương
Này cô bé
Bé có biết chăng là
Vòng xe lăn bánh
Khiến anh ngẩn ngơ
Nào ai biết
Có những nỗi mong chờ
Vì anh yêu mãi
Tóc em đuôi gà
Nào ai biết
Có những nỗi mong chờ
Vì anh yêu mãi
Tóc em đuôi gà')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH125     ', N'Còn tuổi nào cho em', N'TL10      ', N'Album56   ', N'CS56      ', N'TG22      ', N'HSX10     ', N'Tuổi nào nhìn lá vàng úa chiều nay
Tuổi nào ngồi hát mây bay ngang trời
Tay măng trôi trên vùng tóc dài
Bao nhiêu cơn mơ vừa tuổi này
Tuổi nào ngơ ngác tìm tiếng gió heo may
Tuổi nào vừa thoáng buồn áo gầy vai
Tuổi nào ghi dấu chân chim qua trời
Xin cho tay em còn muốt dài
Xin cho cô đơn vào tuổi này
Tuổi nào lang thang thành phố tóc mây cài
Em xin tuổi nào còn tuổi nào cho nhau
Trời xanh trong mắt em sâu
Mây xuống vây quanh giọt sầu
Em xin tuổi nào
Còn tuổi trời hư vô
Bàn tay che dấu lệ nhòa
Ôi buồn!
Tuổi nào ngồi khóc tình đã nghìn thu
Tuổi nào mơ kết mây trong sương mù
Xin chân em qua từng phiến ngà
Xin mây xe thêm mầu áo lụa
Tuổi nào thôi hết từng tháng năm mong chờ...')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH126     ', N'Diễm xưa', N'TL10      ', N'Album56   ', N'CS56      ', N'TG23      ', N'HSX11     ', N'Mưa vẫn mưa bay trên tầng tháp cổ
Dài tay em mấy thuở mắt xanh xao
Nghe lá thu mưa reo mòn gót nhỏ
Đường dài hun hút cho mắt thêm sâu
Mưa vẫn hay mưa trên hàng lá nhỏ
Buổi chiều ngồi ngóng những chuyến mưa qua
Trên bước chân em âm thầm lá đổ
Chợt hồn xanh buốt cho mình xót xa
Chiều nay còn mưa sao em không lại
Nhỡ mai trong cơn đau vùi
Làm sao có nhau, hằn lên nỗi đau
Bước chân em xin về mau
Mưa vẫn hay mưa cho đời biển động
Làm sao em biết bia đá không đau
Xin hãy cho mưa qua miền đất rộng
Để người phiêu lãng quên mình lãng du
Xin hãy cho mưa qua miền đất rộng
Ngày sau sỏi đá cũng cần có nhau')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH127     ', N'Hạ trắng', N'TL10      ', N'Album56   ', N'CS56      ', N'TG23      ', N'HSX12     ', N'Gọi nắng trên vai em gầy, đường xa áo bay.
Nắng qua mắt buồn, lòng hoa bướm say.
Lối em đi về trời không có mây.
Đường đi suốt mùa nắng lên thắp đầy.
Gọi nắng cho cơn mê chiều nhiều hoa trắng bay.
Cho tay em dài gầy thêm nắng mai.
Bước chân em về nào anh có hay.
Gọi em cho nắng chết trên sông dài.
Thôi xin ơn đời, trong cơn mê này, gọi mùa thu tới.
Tôi đưa em về, chân em bước nhẹ, trời buồn gió cao.
Đời xin có nhau, dài cho mãi sau, nắng không gọi sầu.
Áo xưa dù nhàu cũng xin bạc đầu gọi mãi tên nhau.
Thôi xin ơn đời, trong cơn mê này, gọi mùa thu tới.
Tôi đưa em về, chân em bước nhẹ, trời buồn gió cao.
Đời xin có nhau, dài cho mãi sau, nắng không gọi sầu.
Áo xưa dù nhàu cũng xin bạc đầu gọi mãi tên nhau.
Thôi xin ơn đời, trong cơn mê này, gọi mùa thu tới.
Tôi đưa em về, chân em bước nhẹ, trời buồn gió cao.
Đời xin có nhau, dài cho mãi sau, nắng không gọi sầu.
Áo xưa dù nhàu cũng xin bạc đầu gọi mãi tên nhau.')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH128     ', N'Đường tôi dài theo đất nước', N'TL04      ', N'Album57   ', N'CS57      ', N'TG24      ', N'HSX56     ', N'Đời giao liên bước tôi đi dài theo theo đất nước
Đường tôi đi núi chênh vênh có mây bay dưới chân giăng thành
Đời tôi như những con thoi, dệt tình yêu quê hương đất nước.
Đời tôi như cánh chim bay cánh chim bay suốt dãy trường sơn
ôi non xanh nước biếc luôn luôn dìu chân ta bước tiếp
Nghĩ cũng lắm gian nguy giống nhưng mà quê hương rớm máu.
Dẫu thác lũ băng băng, dẫu bão núi dông rừng
Dù đường chân trời nghiêng hề chi.
Đường trường sơn từng quên nhịp đi
Những bước chân coi khinh gian nguy
Dẫu giá buốt chân tay
Dẫu nắng khét đôi vai
Gùi nặng vai rừng khuya vực sâu
Ngày ngày qua đường mây đèo cao
Vẫn vui cùng trường sơn mấy thương yêu
Đời giao liên bước tôi đi dài theo theo đất nước
Đường tôi đi núi chênh vênh có mây bay dưới chân giăng thành
Đời tôi như những con thoi, dệt tình yêu quê hương đất nước.
Đời tôi như cánh chim bay cánh chim bay suốt dãy trường sơn
ôi non xanh nước biếc luôn luôn dìu chân ta bước tiếp
Nghĩ cũng lắm gian nan chung quanh đạn bom rơi chắn lối
đất nước vẫn bên tôi rẽ lối vết chân nai
Đường Trường Sơn thuộc như bàn tay
Từng bờ khe cầu treo ngọn cây
Những bước đi đi theo tương lai
Đất nước vẫn bên tôi, suối róc rách trăng soi
Đường hiện ra gần theo tầng mây
Cảnh đẹp như giục tâm hồn tôi
Đất anh hùng, Trường Sơn mấy thương yêu
Đời giao liên bước tôi đi, dài theo theo đất nước
Đường tôi đi núi chênh vênh, có mây bay dưới chân giăng thành
Đời tôi như những con thoi, dệt tình yêu quê hương thống nhất
Đời tôi như cánh chim bay, cánh chim bay suốt dãy Trường Sơn
Ôi non xanh núi biếc, luôn luôn dìu chân ta bước tiếp
Cũng lắm lúc gian nan, chung quanh đạn bom rơi chắn lối
Đất nước vẫn bên tôi, rẽ lối vết chân nai
Đường Trường Sơn thuộc như bàn tay
Từng bờ khe cầu treo ngọn cây
Những bước đi đi theo tương lai
Đất nước vẫn bên tôi, suối róc rách trăng soi
Đường hiện ra gần theo tầng mây
Cảnh đẹp như giục tâm hồn tôi
Đất anh hùng, Trường Sơn mấy thương yêu')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH129     ', N'Ta ra trận hôm nay', N'TL04      ', N'Album57   ', N'CS57      ', N'TG24      ', N'HSX57     ', N'Ta đi giữa mùa xuân trên đường ra trận.
Chào quê hương nhằm tiền phương mạnh bước.
Lời nước non như càng giục giã lòng ta.
Băng qua muôn núi ngàn sông rộn vui tiếng ca.

Rung ring lá ngụy trang lưng đèo gió lộng.
Tuổi thanh niên đời hăng say nhịp sống.
Nhìn suối khe bom đạn giặc đã cày sâu.
Ta đi với những bàn tay san hố giữ cầu.

Hành quân ta lại hành quân
núi sông nâng bước đôi chân ta lên đường.
Xa trập trùng mà dốc núi đường trơn.
Đôi chân bao chiến sĩ bước mòn đá xanh.

Ta đi tiếp bước cha anh.
Khi nào còn giặc ta đây còn hành quân xa.
Chiến trướng còn gọi ta vẫn còn hành quân xa.
Ta còn hành quân xa. Ta còn hành quân xa
')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH13      ', N'Thả vào mưa', N'TL11      ', N'Album09   ', N'CS09      ', N'TG25      ', N'HSX15     ', N'Mưa một ngày vội vã không em
Như mong chờ từng vệt nắng
Sưởi ấm con tim lạnh căm
Giờ người ra đi mất rồi
Chỉ còn mưa rớt giữa trời
Lặng lẽ, lần tìm ra tiếng mưa rơi
Âm thanh của ngày xưa cũ
Dần khuất sau nơi màn mưa
Vội vàng chạy theo cơn gió
Chớp mắt chỉ còn lại những kỉ niệm
Nụ hôn tan theo bóng mưa
Đường quen không ai đón đưa!
Thả thật nhẹ nỗi nhớ vào trong tiếng mưa đang rơi
Nhờ mưa, gửi em nơi cuối chân trời
Có nghe từng giọt yêu thương tuôn rơi
Người đừng bước đi vội
Hãy ở yên đấy để anh chạy đến ôm em vào lòng
Hãy thật thà để nói rằng ta vẫn yêu thương nhau
Nụ hôn vẹn nguyên buổi chiều hôm ấy
Thế giới như đang vội vàng trôi mau
Chỉ có đôi ta dừng lại bên nhau
Anh muốn hét lên
Anh đang muốn hét lên
Rằng anh yêu em!
Lặng lẽ, lần tìm ra tiếng mưa rơi
Âm thanh của ngày xưa cũ
Dần khuất sau nơi màn mưa
Vội vàng chạy theo cơn gió
Chớp mắt chỉ còn lại những kỉ niệm
Nụ hôn tan theo bóng mưa
Đường quen không ai đón đưa!
Thả thật nhẹ nỗi nhớ vào trong tiếng mưa đang rơi
Nhờ mưa, gửi em nơi cuối chân trời
Có nghe từng giọt yêu thương tuôn rơi
Người đừng bước đi vội
Hãy ở yên đấy để anh chạy đến ôm em vào lòng
Hãy thật thà để nói rằng ta vẫn yêu thương nhau
Nụ hôn vẹn nguyên buổi chiều hôm ấy
Thế giới như đang vội vàng trôi mau
Chỉ có đôi ta dừng lại bên nhau
Anh muốn hét lên
Anh đang muốn hét lên
Rằng anh yêu em!
Tìm những yêu thương vô tình vụt trôi (rằng anh yêu em)
Tìm đâu khi một mai thức giấc
Anh chạy đến khoảng trời năm ấy
Nơi góc phố mình hẹn hò nhau
Ước thầm người sẽ đến
Lại mỉm cười bên anh
Thả thật nhẹ nỗi nhớ vào trong tiếng mưa đang rơi
Nhờ mưa, gửi em nơi cuối chân trời
Có nghe từng giọt yêu thương tuôn rơi
Người đừng bước đi vội
Hãy ở yên đấy để anh chạy đến ôm em vào lòng
Hãy thật thà để nói mình yêu thương nhau
Nụ hôn vẹn nguyên buổi chiều hôm ấy
Thế giới như đang vội vàng trôi mau
Chỉ có đôi ta dừng lại bên nhau
Anh muốn hét lên
Anh đang muốn hét lên
Rằng anh yêu em!')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH130     ', N'Hành khúc ngày và đêm', N'TL04      ', N'Album57   ', N'CS57      ', N'TG25      ', N'HSX56     ', N'Rất dài và rất xa,
Là những ngày thương nhớ.
Nơi cháy lên ngọn lửa,
Là trái tim thương yêu,
Là trai tim yêu thương...

Anh đang mùa hành quân pháo lăn dài chiến dịch
Bồi hồi đêm xuất kích chờ nghe tiếng pháo ran.
Ngôi sao như mắt anh trong những đêm không ngủ.
Giáo án em vẫn mở cho ánh sao bay vào.

Ngày và đêm xa nhau đâu chỉ dài và nhớ,
Thời gian trong cách trở đốt cháy lửa tình yêu.
Pháo anh lên đồi cao nã vào đầu giặc Mỹ,
Bục giảng dưới hầm sâu em cũng là chiến sĩ.

Cái chết cúi gục đầu,
Cuộc đời xanh tươi trẻ ngày đêm ta bên nhau,
Những năm dài chiến đấu,
Ngày đêm ta bên nhau những năm dài chiến đấu.
Đêm ngày trong chiến đấu, anh với em sống vẫn gần nhau.
')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH131     ', N'Đất nước tình yêu', N'TL04      ', N'Album57   ', N'CS57      ', N'TG26      ', N'HSX57     ', N'Khi nói yêu anh, vườn cây đầy hoa trái
Khi anh nắm tay em, mây giăng giăng bay chỉ còn ánh trăng mờ
Và khi chúng yêu nhau chẳng kẻ thù nào làm con tim ta yếu mềm.

Ôi Việt Nam, đất nước tình yêu
Bên lũy tre xanh xây nhiều công trình
Giọng hò thiết tha, tình yêu đất nước chan hòa.

Khi em tiễn anh đi, đồng quê màu xanh lúa
Yêu cây súng trong tay, anh giữ yên ngọt ngào tiếng ru hời
Và khi chúng ta xa nhau, gặt nhiều mùa vàng
Tiền phương anh vui thắng giặc.

Ôi Việt Nam, đất nước tình yêu
Anh dắt em đi ôn nhiều kỷ niệm
Cùng nhiều ước mơ, cuộc sống mãi mãi mong chờ.
')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH132     ', N'Anh ở đầu sông em cuối sông', N'TL04      ', N'Album57   ', N'CS57      ', N'TG26      ', N'HSX57     ', N'Anh ở đầu sông em cuối sông,
Uống chung dòng nước Vàm Cỏ Đông
Thương nhau đã chín ba mùa lúa
Chưa ngày gặp lại nhớ mênh mông.
Ôi bát ngát chân trời miền Hạ
Tím tình yêu tím cả ước mong.
Gió, gió nhớ thương ai mà lay bờ lá
Để bìm bịp kêu con nước lớn ròng
Đất quê ta xanh xanh triền lá
Giặc nhảy vào lá hoá rừng chông
Nước quê ta dập dềnh tôm cá
Giặc lội vào nước dựng thành đồng.
Anh ở đầu sông em cuối sông
Uống chung dòng nước Vàm Cỏ Đông
Thương nhau ta hẹn trong mùa tới
Em đón anh về thỏa chờ mong.
Em đón anh về thoả chờ mong.')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH133     ', N'Trường Sơn Đông, Trường Sơn Tây', N'TL04      ', N'Album57   ', N'CS57      ', N'TG27      ', N'HSX56     ', N'Cùng mắc võng trên rừng Trường Sơn hai đứa ở hai đầu xa thẳm
Đường ra trận mùa này đẹp lắm.
Trường Sơn Đông nhớ Trường Sơn Tây.
Trường Sơn Tây anh đi
Thương em thương em bên ấy mưa nhiều
Con đường mà gánh gạo muỗi bay rừng già cho dài mà tay áo
Hết rau rồi em có lấy măng không
Còn em thương bên tây anh mùa đông nước khe cạn bướm bay lèn đá
Biết lòng anh say miền đất lạ là chắc em lo đường chắn bom thù.
Anh lên xe trời đổ cơn mưa cái gạt nước xua đi nỗi nhớ
Em xuống núi nắng về rực rỡ cái nhành cây gạt mối riêng tư
Từ nơi em đưa sang bên nơi anh những binh đoàn nối nhau ra tiền tuyến
Như tình yêu nối lời vô tận là Đông Trường Sơn nối Tây Trường Sơn.')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH134     ', N'Hồ trên núi', N'TL04      ', N'Album57   ', N'CS57      ', N'TG27      ', N'HSX56     ', N'Núi ư núi
Thuyền ư thuyền
Mây ư mây
Nước ư nước
Thuyền ta ngược thuyền ta xuôi
Giữa dòng nước bạc
Nhịp chèo ta bơi
Ai đắp đập ai phá núi
Cho hồ nước đầy là mặt gương soi
Non xanh mà nước biếc ối a
Khoan nhặt mái chèo ừ là
Khoan nhặt mái chèo ối à
Nhìn bóng chiều in ngấn nước
Ta nhìn đất trời
Một dòng nghiêng soi
Nghe tiếng rừng nghe tiếng suối
Xôn xang mái chèo
Nhịp đời sinh sôi
Thuyền về mà bến mới ôi a
Cá nặng lưới đầy ừ là
Cá nặng lưới đầy ối à
Thuyền ta ngược thuyền ta xuôi
Giữa dòng nước bạc
Nhịp chèo ta bơi
Ai đắp đập ai phá núi
Cho hồ nước đầy là mặt gương soi
Non xanh mà nước biếc ối a
Khoan nhặt mái chèo ừ là
Khoan nhặt mái chèo ối à
Nhìn bóng chiều in ngấn nước
Ta nhìn đất trời
Một dòng nghiêng soi
Nghe tiếng rừng nghe tiếng suối
Xôn xang mái chèo
Nhịp đời sinh sôi
Thuyền về mà bến mới ôi a
Cá nặng lưới đầy ừ là
Cá nặng lưới đầy ối à
Núi ư núi
Thuyền ư thuyền
Mây ư mây
Nước ư nước...')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH135     ', N'Tàu anh qua núi', N'TL04      ', N'Album57   ', N'CS57      ', N'TG28      ', N'HSX57     ', N'Đi dọc Việt Nam theo bánh con tàu quay
Qua đèo Hải Vân mây bay đỉnh núi
Nhớ khi xưa qua đèo qua suối
Mà lòng ta mơ, tàu qua núi cao
Ngày hôm nay thênh thang con đường lớn
Tàu anh đi trong yêu thương chào đón
Xao xuyến bao niềm vui, tha thiết con tàu đi
Là thương nhau, em bắt cầu cho tàu anh tới
Là yêu nhau, mấy suối em cũng lội
Là yêu nhau, mấy núi em cũng trèo


Con tàu Việt Nam đi suốt bốn mùa vui
Qua đèo Hải Vân mây bay đỉnh núi
Nhớ thương nhau em chờ anh tới
Mà tàu anh đi vượt qua núi cao
Trời quê hương trong xanh như lời hát
Biển quê hương ru êm êm bờ cát
Đưa chúng ta cùng đi, ra Bắc hay về Nam
Là thương nhau, cho con tàu qua đèo qua núi
Là yêu nhau, mấy suối em cũng lội
Là yêu nhau, mấy núi em cũng trèo')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH14      ', N'Em không sai chúng ta sai', N'TL11      ', N'Album10   ', N'CS10      ', N'TG28      ', N'HSX16     ', N'Không thể tin vào giây phút ấy
Không ngờ đến ngày ta chia tay
Xin lỗi anh không giữ lời hứa
Không một ai được phép
Tổn thương lên người con gái ấy
Nhưng dù sao điều anh muốn biết
Khoảng cách nào mà ta tạo ra dấu chấm hết?
Phải nhận đau một lần mới thấu
Nếu đã là của nhau không giữ chặt tay sẽ vụt mất về sau
Anh thật sự ngu ngốc
Bảo vệ người ấy cũng không xong
Nỡ làm người yêu khóc
Thế thì còn xứng đáng yêu không?
Anh biết rằng anh sai
Nhưng không bao giờ tha thứ
Người nào tổn thương đến trái tim em như anh đã từng như thế
Anh thật lòng xin lỗi
Nhưng chẳng thể níu kéo nên thôi
Vẫn là vì anh sai
Vẫn là anh cố chấp ngày dài
Ðiều sau cuối anh làm
Nụ cười em đem hết đi
Cứ gói nỗi buồn lại để anh mang
Bao lần ta bỏ qua cho nhau
Nhưng nỗi lòng cả hai tạo ra nhiều vết xước
Hình như sau mọi lần cãi vã
Anh dần dần nhận ra ta không còn...
Thân nhau yêu nhau như lúc ngày xưa
Anh thật sự ngu ngốc
Bảo vệ người ấy cũng không xong
Nỡ làm người yêu khóc
Thế thì còn xứng đáng yêu không?
Anh biết rằng anh sai
Nhưng không bao giờ tha thứ
Người nào tổn thương đến trái tim em như anh đã từng như thế
Anh thật lòng xin lỗi
Nhưng chẳng thể níu kéo nên thôi
Vẫn là vì anh sai
Vẫn là anh cố chấp ngày dài
Ðiều sau cuối anh làm
Nụ cười em đem hết đi
Cứ gói nỗi buồn lại để anh mang
Đành để em cứ đi như vậy
Nếu em không còn yêu anh nữa
Mỏi mệt vì tình yêu đến vậy
Chia tay để tìm người tốt hơn (em sẽ quay trở về)
Giật mình anh mới biết anh quá vô tâm
Đến ngay cả một người cũng đánh mất
Anh thật sự ngu ngốc
Bảo vệ người ấy cũng không xong
Nỡ làm người yêu khóc
Thế thì còn xứng đáng yêu không?
Anh biết rằng anh sai
Nhưng không bao giờ tha thứ
Người làm tổn thương đến trái tim em như anh đã từng như thế
Anh thật lòng xin lỗi
Nhưng chẳng thể níu kéo nên thôi
Vẫn là vì anh sai
Nhưng vẫn là anh cố chấp ngày dài
Ðiều sau cuối anh làm
Nụ cười em đem hết đi
Cứ gói nỗi buồn lại để anh mang
Ðiều sau cuối anh làm
Niềm vui em hãy đem theo
Cứ gói nỗi buồn lại để anh mang')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH15      ', N'Màu nước mắt', N'TL11      ', N'Album12   ', N'CS12      ', N'TG29      ', N'HSX17     ', N'Đối với anh cô ấy có thể là tình yêu
Nhưng đối với tôi cô ấy là duy nhất
Đối với anh cô ấy có thể là tia nắng
Nhưng đối với tôi cô ấy là mặt trời
Mặt trời trong tim tôi
Hà ha há ha
Mặt trời trong tim tôi
Hà ha há hà
Người đến sau đôi khi chỉ là nhất thời theo cảm xúc
Mặc nỗi đau vỡ nát cả bầu trời
Cô ấy là tất cả thế giới đối với tôi
Cả bầu trời rơi nghiêng trôi theo màu nước mắt
Ngày giông bão đi qua vô tình mang hạt nắng phai mờ
Điều gì buồn hơn khi đánh mất người mình thương
Anh có thể đến bên cô ấy mỗi khi cần
Liệu có thể đánh đổi tất cả vì cô ấy
Làm ơn hãy buông tay xin trả lại mọi thứ nguyên vẹn
Đừng để tình yêu thêm lỗi lầm
Đối với anh cô ấy có thể là tình yêu
Nhưng đối với tôi cô ấy là duy nhất
Đối với anh cô ấy có thể là tia nắng
Nhưng đối với tôi cô ấy là mặt trời
Mặt trời trong tim tôi
Hà ha há ha
Mặt trời trong tim tôi
Hà ha há hà
Người đến sau đôi khi chỉ là nhất thời theo cảm xúc
Mặc nỗi đau vỡ nát cả bầu trời
Cô ấy là tất cả thế giới đối với tôi
Cả bầu trời rơi nghiêng trôi theo màu nước mắt
Ngày giông bão đi qua vô tình mang hạt nắng phai mờ
Điều gì buồn hơn khi đánh mất người mình thương
Anh có thể đến bên cô ấy mỗi khi cần
Liệu có thể đánh đổi tất cả vì cô ấy
Làm ơn hãy buông tay xin trả lại mọi thứ nguyên vẹn
Đừng để tình yêu thêm lỗi lầm
Cô ấy là tất cả thế giới đối với tôi
Cô ấy là tất cả thế giới đối với tôi
Cả bầu trời rơi nghiêng trôi theo màu nước mắt
Ngày giông bão đi qua vô tình mang hạt nắng phai mờ
Cô ấy là tất cả thế giới đối với tôi
Cả bầu trời rơi nghiêng trôi theo màu nước mắt
Ngày giông bão đi qua vô tình mang hạt nắng phai mờ
Điều gì buồn hơn khi đánh mất người mình thương
Anh có thể đến bên cô ấy mỗi khi cần
Liệu có thể đánh đổi tất cả vì cô ấy
Làm ơn hãy buông tay xin trả lại mọi thứ nguyên vẹn
Đừng để tình yêu thêm lỗi lầm
Đừng để tình yêu thêm lỗi lầm')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH16      ', N'Trong trí nhớ của anh', N'TL11      ', N'Album12   ', N'CS12      ', N'TG29      ', N'HSX18     ', N'Trong trí nhớ của anh còn vẹn nguyên bóng hình em
Và những điều ngọt ngào lúc xưa dường như vẫn đây
Trong trí nhớ của anh, là bao ước muốn dài lâu
Bao ước hẹn ngày ta có nhau đến tận mãi sau
Trong trí nhớ của anh là ngày em xa rời anh
Sao những lời hẹn thề lúc xưa trôi đi quá nhanh
Bao phút chốc giờ đây chợt như một giấc mộng say
Anh thấy mình lạc lõng giữa bao kỉ niệm đong đầy
Và nếu thời gian quay về đây
Liệu trái tim kia có đổi thay
Sẽ có còn từng ngày ấm êm mối tình vẫn đắm say
Chỉ là những yêu thương đầu môi
Từng phút giây như mây nhẹ trôi
Và tình yêu ngày đó chỉ có trong giấc mơ thôi
Trong trí nhớ của anh')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH17      ', N'Hành tinh ánh sáng', N'TL01      ', N'Album13   ', N'CS13      ', N'TG30      ', N'HSX19     ', N'Em này em bé ơi
Làm cách nào mà va vào đời anh thế?
Còn anh người nhiều vết thương
Chẳng ý định trước gặp ai
Chẳng còn tin điều gì là mãi mãi
Một giây phút bất chợt gặp
Hai thế giới chào hỏi nhau
Ba bốn câu chuyện ta cười như quen rất lâu
Khoảnh khắc ấy anh dừng lại
Chẳng thể giấu vẻ khờ dại
Vì anh đã thấy tim vui trở lại
Từng ngày qua anh biết
Cô gái thương anh từ lâu
Lắm lúc chẳng nói một câu
Đôi khi hay quên trước sau
Và anh biết cô gái hay ôm anh đằng sau
Đã biết nghĩ cho đôi ta dài lâu
Đã lớn hơn em của ngày đầu
Này em bé ơi, thật lòng anh muốn hỏi
Điều gì ở anh làm em trở nên yêu mất lối
Cần câu trả lời cho anh thôi bâng khuâng mỗi tối
Biết em chẳng nghĩ suy nhiều
Biết em chỉ muốn thấu hiểu
Chính em khiến anh tin lại tình yêu
Cũng bởi một điều
Từng ngày qua anh biết
Cô gái thương anh từ lâu
Lắm lúc chẳng nói một câu
Đôi khi hay quên trước sau
Và anh biết cô gái hay ôm anh đằng sau
Đã biết nghĩ cho đôi ta dài lâu
Đã lớn hơn em của ngày đầu
Hành tinh ánh sáng của anh đây
Chỉ anh cô đơn cùng gió mây
Vũ trụ bao la
Bỏ qua tất cả
Em chọn yêu anh ở thế giới khác lạ
Đường anh đi rất nhiều chông gai
Vậy em có can đảm ở lại?
Hứa với anh dù có khó khăn
Ta vẫn thật gần
Từng ngày qua anh biết
Cô gái thương anh từ lâu
Lắm lúc chẳng nói một câu
Đôi khi hay quên trước sau
Và anh biết cô gái hay ôm anh đằng sau
Đã biết nghĩ cho đôi ta dài lâu
Đã lớn hơn em của ngày đầu')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH18      ', N'Tìm hành tinh khác ', N'TL01      ', N'Album13   ', N'CS13      ', N'TG30      ', N'HSX20     ', N'Cất hết kí ức, cho vào ngăn đông vĩnh hằng
Sắp xếp tất cả, không để chúng có vết hằn
Trả em về cuộc sống tự do
Bay lượn đây đó, không có anh lo
Thế giới anh đấy, vẫn là những áo sơ mi trắng
Đôi ba cuốn sách, anh đọc khi nắng ôm đường vắng
Khác một điều thôi
Là mỗi tối, anh độc thoại với ca khúc không lời
Có lẽ anh hơi ngây ngô không nhận ra
Có lẽ em muốn là
Tìm hành tinh khác
Để em hạnh phúc hơn
Khác...
Để em là em hơn
Khác...
Chẳng cần em thao thức mỗi đêm
Suy tư gì thêm
Vì có thể là em
Cần vệ tinh khác
Để em được vui hơn
Khác...
Để em chẳng muốn lớn
Khác...
Chẳng cần em thao thức mỗi đêm
Suy tư gì thêm, vì tất cả vỡ đôi
Va vào nhau, ta như trao tình yêu lần đầu
Khi xa, ta như chưa từng yêu lần nào
Thật khó để nói ai đã phạm lỗi
Cảm giác mệt mỏi đã kéo hai ta phải chia đôi
Gối và chăn không thích thiếu khi cần được sưởi ấm
Vẫn là anh, nhưng giờ đây chỉ còn lại hiu quạnh
Thật khó để hỏi, dù chẳng chung lối
Rằng những đêm tối có khiến em phải đơn côi?
Thế giới anh đấy, vẫn là những áo sơ mi trắng
Đôi ba cuốn sách, anh đọc khi nắng ôm đường vắng
Khác một điều thôi
Là mỗi tối, anh độc thoại với ca khúc không lời
Có lẽ anh hơi ngây ngô không nhận ra
Có lẽ em muốn là
Tìm hành tinh khác
Để em hạnh phúc hơn
Khác...
Để em là em hơn
Khác...
Chẳng cần em thao thức mỗi đêm
Suy tư gì thêm
Vì có thể là em
Cần vệ tinh khác?
Để em được vui hơn
Khác...
Để em chẳng muốn lớn
Khác...
Chẳng cần em thao thức mỗi đêm
Suy tư gì thêm, vì có thật là em
Lúc mới yêu
Với anh mỗi chiều là mỗi kí ức anh nâng niu
Những niềm vui bé xíu
Và khi đã chia tay mới hay những ngày không anh
Thì em vẫn ổn, mọi thứ vẫn rất tốt
Tìm hành tinh khác
Để em hạnh phúc hơn
Khác...
Để em là em hơn
Khác...
Chẳng cần em thao thức mỗi đêm
Suy tư gì thêm
Vì có thể là em
Cần vệ tinh khác?
Để em được vui hơn
Khác...
Để em chẳng muốn lớn
Khác...
Chẳng cần em thao thức mỗi đêm
Suy tư gì thêm, vì tất cả vỡ đôi')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH19      ', N'Phi hành gia cô đơn', N'TL01      ', N'Album13   ', N'CS13      ', N'TG31      ', N'HSX21     ', N'Ngày thơ bé anh luôn ước mơ bay cao
Bay ra khỏi Trái Đất và biến mất trong không gian
Được nhìn ngắm ngàn tinh tú đang vẫy chào
Chu du thật tự do tựa như gió trên thiên đàng
Từng ngày nguyện cầu nuôi lớn thêm dần
Và anh vẫn ân cần vun đắp cho hoài bão thêm cao
Từng ngày miệt mài trên chính con tàu
Mà anh đã tô màu
Và một lòng nung nấu
Và anh ước sẽ được như phi hành gia
Đặt chân đến những vì sao của ngân hà
Ước mơ ngày bé yêu làm sao
Chưa biết thế nào
Là nỗi cô đơn khi đã bay lên rất cao
Bao nhiêu năm trôi qua anh bỗng lớn nhanh thay
Đi qua nhiều vấp ngã và cũng đã lắm đắng cay
Anh vẫn giữ chặt mơ ước ở trong tay
Anh tin ngày nào đó mình sẽ cất cao cánh bay
Từng ngày nguyện cầu nuôi lớn thêm dần
Và anh vẫn ân cần vun đắp cho hoài bão thêm cao
Từng ngày miệt mài trên chính con tàu
Mà anh đã tô màu
Và một lòng nung nấu
Và anh ước sẽ được như phi hành gia
Đặt chân đến những vì sao của ngân hà
Ohhh oohhh ooh
Chỉ một mình cô đơn giữa trời cao
Trên chính con tàu vũ trụ mà anh luôn ước ao từ thuở nào
Anh đã từng mơ anh sẽ bay lên thật cao
Ung dung tự do vui đùa giữa những vì sao
Lấp lánh lung linh nhưng rất xa
Cô đơn toả sáng giữa ngân hà
Anh đã từng mơ anh sẽ như phi hành gia
Bay đến vì sao qua hành tinh không vội vã
Lấp lánh lung linh nhưng rất xa
Cô đơn tung bay giữa muôn ngã
Và anh đã tung sải cánh bay thật xa
Đặt chân đến những khung trời mới lớn bao la
Ohhh oohhh oohh
Chỉ một mình cô đơn giữa trời cao
Trên chính con tàu vũ trụ mà anh luôn ước ao
Hình tượng ấy anh từng thấy phi thường thế
Giờ đã lớn anh lại thấy rất ngô nghê
Oooh oooh oohh
Chỉ một mình cô đơn giữa trời cao
Trên chính con tàu vũ trụ mà anh luôn ước ao từ thuở nào')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH20      ', N'Run', N'TL07      ', N'Album14   ', N'CS36      ', N'TG32      ', N'HSX22     ', N'Let''s get away
Get away
Một buổi sáng, mặt trời lên dần
Ngày qua ngày, buồn ơi tan dùm
Giờ không có thời gian để buồn thêm một lần nữa
Chỉ muốn sáng thức giấc thấy lòng mình nô nức
I keep run to a place where lights don''t fade
It''s me a Vietnamese 22 today
Gotta get away, wanna get away
Get up, go and seize the day
Cuộc sống trôi qua luôn có một ngày mới
Hết trang giấy này lại sang một trang mới
Sáng dậy hứng khởi, mặt rạng ngời tươi vui
Hôm qua là ngày hôm qua bye bye bao buồn tủi
Tình yêu, lơ lửng thế thôi
Em xa anh một quãng đường nữa rồi
Núi xa biển có mấy ngàn dặm thôi
Thỏ mà đi trốn sói chạy cách xa mấy đồi
Kính thưa quý vị và các bạn đây là Suboi
Trên radio Thỏ im lặng Da quiet bunny
Xin được tường thuật trực tiếp đường đua
S-U-B-O-I đang tăng tốc nhanh dần
So I just run, run, run, run
So I just run, run, run, run
So I just, so I just
Run
There I go (run, run, run, run)
So I just run, run, run, run
So I just, so I just
Và đây là bài hát tôi hát mỗi buổi sáng
Quên ngày xưa khi bước chân hoang tàn
Kết thúc tại đây, một bài hát
Ba lô trên vai nói với tôi sẵn sàng
Đi để đi
Đi để lòng nhẹ nhõm
Đi để đi, đường dài phía trước, tiếp bước tôi đi
Không thời gian để phí, hay nhụt chí bước lui, hay phải đi luồng cúi
Cuz you better give it up if you try to bring me down
I better tell you how I''m walking on right now
Tôi nói 1 là 1, 2 là 2
Nếu tôi nói 1 rưỡi chắc tôi đã phải lòng ai
Bao giờ, bao giờ em nói tên anh Baozer
Bao giờ gặp nhau ở nơi không ai ngờ
Bao giờ tôi đi nhanh vì thế tôi không chờ
Đích đến của sự khởi đầu có lẽ không còn xa nữa
Trên đường chạy số 7
Vận động viên S-U-B-O-I đang chuẩn bị cho lần tăng tốc thứ 2 của mình
Tôi là Suboi từ radio quite bunny
Ở đây tôi thấy S-U-B-O-I như một cơn lốc đi qua
And then I run, run, run, run
And then I run, run, run, run
Then I just, then I just
Run
There I go (run, run, run, run)
And then I run (run, run, run)
And then I run (then I just)
(Then I just)
And then I
And then I run
There I go
There I go
Và khi tôi đi, thật xa
Những bài học không bao giờ phai nhoà
Và khi tôi đi, thật xa
Nước mắt đổi lấy bài học mỗi khi đêm qua
Và khi tôi đi, thật xa
Đi đâu Sài Gòn vẫn mãi là nhà
Và khi tôi đi, thật xa')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH21      ', N'Người ta hiểu', N'TL07      ', N'Album14   ', N'CS36      ', N'TG32      ', N'HSX23     ', N'Một người con gái, với hai vườn lê ki ma
Quá trình lúc đó diễn ra rồi con đến vui cả nhà
"Mẹ ơi" không phải là chữ đầu đời
Vẫn mừng khôn xiếc dù biết lời nói đầu thường là "ba"
Mà gia đình ta đáng giá
Bằng mấy cuộc đời người ta
Không tin xoè tay ra đếm
Bao nhiêu người mới tới lượt ta chứ?
Đến khi tôi trôi, trôi đi thật xa
Tôi biết mẹ hiểu nhưng mẹ không nói
"Đằng nào nó hổng bay về nhà"
Người ta
Ý kiến ý cò, ý kiến có nhằm nhò
Ngon thì bước đến bóp cò, thay vì đứng đó nói mò
Đi ra từ hẻm nhỏ gan to,
Để con nhỏ ăn thỏ ăn nhiều cỏ cho nó phiêu
Ai suy nghĩ nhiều được mất
Được mất thì, cuộc đời vẫn cược
Tôi cược con thuyền, tôi là biên tập viên
Cho con thuyền vượt sóng, một ngày nóng
Tôi cược cả khúc sông cả biển rộng
Người ta hiểu, hay không hiểu
Đời tui cũng vậy người ta hiểu hay không hiểu ...
Người ta hiểu, hay không hiểu (hiểu?)
Đời tui cũng vậy người ta hiểu hay không hiểu ...
Mẹ cho tôi đôi mắt nâu
Đời cho tôi đôi mắt sầu
Ông trời mới cho tôi đôi mắt sâu, dòm cho thấu
No, no, no, no ... There i go
Papers on the desk wait for me to roll
Để cho nắng vẫn là nắng, mưa mãi là mưa
Hôm nay nắng đã nhìn thấy mưa chưa?
Bao giờ hai người gặp nhau tv đời cũ cũng bảy màu
Còn lại màu xám cứ để hater chìm sâu, hater còn lâu
Nếu họ là Bboy, tôi là Easy Roc
Nếu họ là rocker, tôi là Chilli Peppers
Nếu họ là rider, hi! tôi là Shumacher
Nếu họ muốn say hi! Space ship
See me from the sky you know!
All day stay fly, stay high all night
All day stay fly, stay high all night
All day stay fly, stay high all night
All day stay fly, stay high all night
Người ta hiểu, hay không hiểu
Đời tui cũng vậy người ta hiểu hay không hiểu ...
Người ta hiểu, hay không hiểu
Đời tui cũng vậy người ta hiểu hay không hiểu ...
Lah - lah - lah ...
Cười vào sự nguyền rủa, cười sự phân bua
Cười vào sự trả đũa, cười lòng người ăn thua
Cười vào sự ganh đua
Cười luôn cả những lời nói thân mật nhưng chanh chua.
Haha, tôi xin thua')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH22      ', N'Sài Gòn', N'TL07      ', N'Album14   ', N'CS36      ', N'TG33      ', N'HSX24     ', N'Con nhớ nơi con đã được sinh ra
Con có đi đâu đây vẫn là nhà
Con sống tha hương nơi nào như phương mẹ cha
Con nhớ anh con tháng ngày bôn ba
Con nhớ em con vui đùa quanh nhà
Con nhớ chị con lo đàn em không màng thêm
Oh
Ai đi, đi về nơi đây
Ôm chặt hai tay
Gia đình con đây
Nhớ hoài
Từ đâu người trở về
Lòng giữ nguyên câu thề
Người Sài Gòn vẫn thế
Dù thói đời tái tê
Lịch sử còn mân mê
Tương lai của nhân thế
Hôm nay con trở về
Sài Gòn còn đẹp ghê
Tâm điểm khu vực Đông Nam Á
Người qua lại dù gần hay xa
Bạn xứ khác có người còn coi là nhà
Sao mình có thể không yêu nước ta
Dù kẹt xe khói bụi phố xá
Đẹp thướt tha tà áo dài bước qua
Ở Sài Gòn người ta nói chuyện đơn giản
Không mỉa mai châm biếm sâu xa
La la la la la ...
Sài Gòn, mưa nắng thất thường
Nhiều khi mấy đứa con gái chúng tôi cũng thất thường
Nhưng cũng khó mà không hiểu được
Bởi vì sao
Thẳng thắn chẳng phải là người Sài Gòn đó sao
Tính tình thoáng, nhưng không hề dễ dãi
Cái gì không ưa, không một lời mỉa mai, sẽ nói
Ai không quen điều này thì cho tôi xin lỗi
Giận thì tôi chịu thôi, chứ không nói lời gian dối
Nghe này
Gửi lời yêu lắm quê hương Việt Nam
Yêu từ con sông mải rông chảy ra biển như tình mẫu tử thiêng liêng yep
Sài Gòn, hơn 300 năm
Tình người ở đây dài tới vô cực năm
Và chỉ có Sài Gòn mới hiểu tại sao
Sài Gòn ơi
Sài Gòn ơi
Con nhớ nơi con đã được sinh ra
Con có đi đâu đây vẫn là nhà
Con sống tha hương nơi nào như phương mẹ cha
Ai đi, đi về nơi đây
Ôm chặt hai tay
Gia đình con đây
Nhớ hoài
Tôi nhớ hình ảnh chiều mưa,
Gánh bánh dừa núp trong một buồng điện thoại không cửa
Tôi thương Sài Gòn nhiều hơn nữa
Rồi tôi nhớ một câu chuyện xưa,
Ba tôi kể trong những lần quay quần cơm bữa
Tôi thương Sài Gòn, thương Sài Gòn ...
Ai đi, đi về nơi đây
Đi về nơi đây ...
La la la la la ...')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH23      ', N'Anh nhớ em người yêu cũ', N'TL08      ', N'Album15   ', N'CS15      ', N'TG33      ', N'HSX25     ', N'Ngày hôm nay cô đơn anh lại nhớ đến em vô cùng
Giờ đây em ra sao không biết em sống như thế nào
Từ khi ta chia tay, em theo người về nơi phương ấy
Có khi nào em nhớ anh ở đây
Màn đêm vây quanh anh, anh cần cái nắm tay thật chặt
Cần em sau lưng anh ôm lấy anh giống như lúc đầu
Mình chia tay bao lâu những kỷ niệm mình anh chôn giấu
Anh nhớ em người yêu cũ của anh
Người yêu anh không lí do và rồi ra đi không đắn đo
Dẫu anh đã cố gắng mang cho em bao niềm vui
Tưởng tình yêu đậm sâu nào ngờ đâu lại nhiều nước mắt
Yêu thì hạnh phúc mà kết thúc thì lại đau
Thời gian không cho vết thương lòng lành đâu em ơi biết không
Có chăng chỉ có thể cho ta quên dần niềm đau
Bởi vậy đôi lần hay giận mình không tìm được nỗi nhớ
Nhớ em người khóc thương về ai
Nhớ em người khóc thương về ai
Ngày hôm nay cô đơn anh lại nhớ đến em vô cùng
Giờ đây em ra sao không biết em sống như thế nào đây
Từ khi ta chia tay em theo người về nơi phương ấy
Có khi nào em nhớ anh ở đây
Màn đêm vây quanh anh anh cần cái nắm tay thật chặt
Cần em sau lưng anh ôm lấy anh giống như lúc đầu
Mình chia tay bao lâu những kỷ niệm mình anh chôn giấu
Anh nhớ em người yêu cũ của anh
Người yêu anh không lí do và rồi ra đi không đắn đo
Dẫu anh đã cố gắng mang cho em bao niềm vui
Tưởng tình yêu đậm sâu nào ngờ đâu lại nhiều nước mắt
Yêu thì hạnh phúc mà kết thúc thì lại đau
Thời gian không cho vết thương lòng lành đâu em ơi biết không
Có chăng chỉ có thể cho ta quên dần niềm đau
Bởi vậy đôi lần hay giận mình không tìm được nỗi nhớ
Nhớ em người khóc thương về ai
Người yêu anh không lí do và rồi ra đi không đắn đo
Dẫu anh đã cố gắng mang cho em bao niềm vui
Tưởng tình yêu đậm sâu nào ngờ đâu lại nhiều nước mắt
Yêu thì hạnh phúc mà kết thúc thì lại đau
Thời gian không cho vết thương lòng lành đâu em ơi biết không
Có chăng chỉ có thể cho ta quên dần niềm đau
Bởi vậy đôi lần hay giận mình không tìm được nỗi nhớ
Nhớ em người khóc thương về ai')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH24      ', N'Nhớ em', N'TL08      ', N'Album15   ', N'CS15      ', N'TG34      ', N'HSX26     ', N'Ánh trăng mỏng manh, khẽ rơi bên thềm
Nhẹ như khúc ca êm đềm
đóa hoa mùa thu, xanh ngát hương đêm
đợi chờ ai trong nỗi nhớ dâng đầy
Khi màn đêm về trên phố xa
Anh lặng nghe lòng anh nhớ em da diết
Mùa thu qua, theo bước chân em đã xa xôi rồi
đê lại đây, một mùa đông lạnh giá
Và anh nhớ, khoảng khắc khi anh chìm trong mắt em
Nụ cười hồn nhiên, trái tim anh bỗng chợt như cháy trên
Những phút giây cồn cào, nỗi nhớ em dâng trào
Từng trong mưa, anh luôn nhắc tên em
Người yêu ơi
Hạnh phúc đôi khi nhẹ như gió bay
Lạnh lùng trong đêm, ánh trăng đang tan dần qua ngón tay
Nụ hoa khẽ vội vàng
TỪng chiếc lá sớm nay rơi đầy lối anh về
đêm, dòng sông nhìn mây trắng bay
Anh, thầm mong thời gian sẽ không bay mất
Lời yêu thương như áng mây trôi cuối nơi chân trời
để giờ đây chỉ còn anh thầm nhớ
Và anh biết, lời hứa bên nhau chỉ như giấc mơ
Nhạt nhòa thời gian
Trái tim anh như lặng câm vỡ tan
Trên phím cây dương cầm
Anh nhớ em âm thầm
Chợt nhận ra trên khóe mắt se cay
Người yêu hỡi
Hạnh phúc đôi khi nhẹ như gió bay
Một lần chia tay, dẫu bao yêu thương chỉ như khói mây
Trong cơn gió lạnh lùng
Từng chiếc lá sớm nay, rơi đầy lối anh về
Rơi đầy, lối anh về
Dẫu bão tố phong ba có qua trong cuộc đời
Thì trọn đời anh vẫn nhớ em
NGƯời yêu hỡi
Hạnh phúc đôi khi nhẹ như gió bay
MỘt lần chia tay, dẫu bao yêu thương chỉ như khói mây
Trong cơn gió lạnh lùng,
TỪng chiếc lá sớm nay, rơi đầy lối anh về
RƠi đầy... lối anh về...')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH25      ', N'Mảnh ghép đã vỡ', N'TL08      ', N'Album15   ', N'CS15      ', N'TG35      ', N'HSX27     ', N'Ngày tháng anh lệ rơi
Vì khóc bao đêm nhớ mong một người
Niềm đau chôn sâu cay đắng khi em vô tình lãng quên
Giờ anh biết phải làm sao
Để xoá đi bao kỷ niệm
Thật quá khó khi anh vẫn còn yêu em
Ở nơi phương trời xa kia
Đã khiến trong em đổi thay thật rồi
Tình yêu bao năm đậm sâu sẽ mãi chỉ là giấc mơ
Giờ em đã có người yêu thay thế trong anh rất nhiều
Còn đâu nữa thời gian như trước em dành cho anh
Lời hứa chia tay hôm qua sao quá nghiệt ngã
Bật khóc trong đêm anh nghe tiếng em lần cuối
Chẳng lẽ anh chỉ là người làm cho khoảng trống cho em
Mỗi khi em buồn
Hạnh phúc nay đã vỡ tan như hoa thủy tinh
Mảnh ghép yêu thương trong anh sẽ không bao giờ lành
Học cách quên đi một người quá khó
Vì nỗi đau ngày qua cứ để lại
Sẽ không bao giờ phôi phai')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH26      ', N'Chỉ có thể là yêu', N'TL08      ', N'Album15   ', N'CS15      ', N'TG35      ', N'HSX28     ', N'Khi ta chưa biết nhau,
Ngày thật hoang sơ
Khi ta chưa biết nhau,
Đêm quá mịt mờ,
Nỗi nhớ bơ vơ
Chẳng biết đi về đâu,
Khi bóng cô đơn đầy trên khắp lối

Khi anh chưa biết em,
Giấc mơ chỉ là mơ thôi,
Khi anh chưa biết em,
Mong chờ thương nhớ.
Chỉ là thoáng vội chưa biết tiếc nuối mong manh.

Chưa biết khi phải cách xa,
Con tim ôi sao nghẹn ngào trong buốt giá
Giờ thì anh đã biết,
Đã biết em ơi,
Yêu thương tuyệt vời
Giờ thì anh đã biết,
Đã biết em ơi,
Đam mê đắm đuối.

Một ánh mắt nồng nàn,
Một vòng tay ôm khiến bóng đêm tan.
Cho cô đơn quên lãng
Một phút chóc vội vàng,
Để giờ mình anh với tiếc nhớ mênh mang,
Yêu thương ơi sao vội tan

Chỉ có thể là yêu thôi,
Vì khi đã xa em rồi,
Giọt buồn rơi chẳng nguôi
Chỉ có thể là yêu thôi,
Chỉ có khi bên người,
Chỉ có khi bên người ...

Chỉ có thể là yêu thôi,
Chỉ có thể là yêu thôi
Vì khi đã xa em rồi
Giọt buồn rơi chẳng nguôi
Chỉ có thể là yêu thôi,
Chỉ có thể là yêu thôi,
Chỉ có khi bên người,chỉ có khi bên người ...
')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH27      ', N'Xe đạp', N'TL11      ', N'Album16   ', N'CS16      ', N'TG36      ', N'HSX31     ', N'Dường như nắng đã làm má em thêm hồng
Làn mây bay đã yêu tóc em
Trộm nhìn anh khẽ cười khiến em thẹn thùng
Áo trắng em bay giờ tan trường
Đạp xe nơi sân trường tóc em buông dài
Lặng thinh anh ngóng trông đã lâu
Người ngẩn ngơ đứng nhìn đánh rơi nụ cười
Rồi em xao xuyến, chợt nghe vu vơ
Gần lại bên anh em nghe tim em âm áp
Là lần em nghe tim em vu vơ xuyến xao
Đợi anh góc phố quen mình em
Chỉ mình em và nỗi nhớ mong dù có nhau
Đạp xe trên phố tan trường
Thấp thoáng thấy bóng em ngoan hiền
Tim anh lặng giữa phố đông người
Ngập ngừng trên môi không nói ra
Ngày nào nụ cười em bé thơ
Bên em bạn bè cùng tới lớp
Giờ chờ em đã lớn xinh
Một lần bên em hỡi
Nắng gió sân trường vui đùa
Ngồi tựa vai nhau anh đưa em qua bao con phố
Và anh nói thật dịu dàng rằng đã yêu rất lâu rồi
Nụ cười em cho anh ngàn mơ ước
Từng chiều nguyện mong ngóng
Vẫn đó nơi hàng cây già
Đợi nhau vu vơ anh mang tên em trong giấc mơ
Rồi mùa thi chợt đến
Bồi hồi nhìn phượng rơi
Để chờ một chút mưa cho đôi mình
Được đứng bên nhau thật lâu
Giờ trên từng bước chân cuộc đời anh đã có một người để ngóng trông
Em đã nhìn thấy anh trong đời nhìn thấy anh và sẽ bên người mãi mãi
Đạp xe nơi sân trường tóc em buông dài
Lặng thinh anh ngóng trông đã lâu
Người ngẩn ngơ đứng nhìn đánh rơi nụ cười
Rồi em xao xuyến chợt nghe vu vơ
Một lần bên em hỡi
Nắng gió sân trường vui đùa
Ngồi tựa vai nhau anh đưa em qua bao con phố
Và anh nói thật dịu dàng
Rằng đã yêu rất lâu rồi
Nụ cười em cho anh ngàn mơ ước
Từng chiều nguyện mong ngóng
Vẫn đó nơi hàng cây già
Đợi nhau vu vơ anh mang tên em trong giấc mơ
Rồi mùa thi chợt đến
Bồi hồi nhìn phượng rơi
Để chờ một chút mưa cho đôi mình
Những ký ức bên nhau thật lâu')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH28      ', N'Anh khác hay em khác', N'TL01      ', N'Album17   ', N'CS17      ', N'TG36      ', N'HSX32     ', N'Có phải em hết yêu anh rồi
Em hãy nói đi người ơi
Anh vô tâm hay là anh đã sai
Mà dường như ta dần xa cách
Em nói đôi ta không hợp
Em nói anh không còn như trước
Nhưng tạo sao em ơi
Những lúc ta bên nhau
Bàn tay em không muốn ôm anh thật lâu
Và dường như anh hiểu ra một điều
Em đã khác xưa nhiều lắm
Và dường như anh hiểu ra một điều
Em đã hết yêu anh phải không
Vậy thì anh sẽ bước ra đi
Trả lại em những ngày anh chưa đến
Và khi anh ra đi em sẽ nhận ra
Không ai yêu em như anh đã từng yêu
Có phải em hết yêu anh rồi
Em hãy nói đi người ơi
Anh vô tâm hay là anh đã sai
Mà dường như ta dần xa cách
Em nói đôi ta không hợp
Em nói anh không còn như trước
Nhưng tại sao em ơi
Những lúc ta bên nhau
Bàn tay em không muốn ôm anh thật lâu
Và dường như anh hiểu ra một điều
Em đã khác xưa nhiều lắm
Và dường như anh hiểu ra một điều
Em đã hết yêu anh phải không
Vậy thì anh sẽ bước ra đi
Trả lại em những ngày anh chưa đến
Và khi anh ra đi em sẽ nhận ra
Không ai yêu em như anh đã từng yêu
Và dường như anh hiểu ra một điều
Em đã khác xưa nhiều lắm
Và dường như anh hiểu ra một điều
Em đã hết yêu anh phải không
Vậy thì anh sẽ bước ra đi
Trả lại em những ngày anh chưa đến
Và khi anh ra đi em sẽ nhận ra
Không ai yêu em như anh đã từng yêu')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH29      ', N'Anh yêu người khác rồi', N'TL11      ', N'Album17   ', N'CS17      ', N'TG37      ', N'HSX68     ', N'Anh yêu người khác rồi
Người ấy cũng như em rất tuyệt vời
Ở bên người ta cũng rất vui
Người ấy cho anh thế nào là yêu
Thời gian chia tay cũng lâu rồi
Anh nghĩ anh sẽ quên em được
Thực ra anh đang rối mình
Anh yêu để trốn một tình yêu
Đem yêu thương thả vào dòng sông
Dòng sông chảy siết quá nét những nỗi buồn
Đem kỉ niệm vào bài thơ
Chỉ là giấy nên đốt sẽ bốc cháy
Có khi giật mình chợt lòng ta bỗng vui
Quên một người mà ta không nên nhớ
Bước trên đường đời thì ai cũng thế thôi
Muốn đứng phải đau một lần
Anh sẽ trả lại từng kỉ niệm đón đưa
Những nhành hoa giận hờn khi vô cớ
Sẽ không còn gì vì anh đã khác xưa
Anh đã quên em thật rồi
Anh yêu người khác rồi
Anh yêu người khác rồi
Người ấy cũng như em rất tuyệt vời
Ở bên người ta cũng rất vui
Người ấy cho anh thế nào là yêu
Thời gian chia tay cũng lâu rồi
Anh nghĩ anh sẽ quên em được
Thực ra anh đang rối mình
Anh yêu để trốn một tình yêu
Đem yêu thương thả vào dòng sông
Dòng sông chảy siết quá nét những nỗi buồn
Đem kỉ niệm vào bài thơ
Chỉ là giấy nên đốt sẽ bốc cháy
Có khi giật mình chợt lòng ta bỗng vui
Quên một người mà ta không nên nhớ
Bước trên đường đời thì ai cũng thế thôi
Muốn đứng phải đau một lần
Anh sẽ trả lại từng kỉ niệm đón đưa
Những nhành hoa giận hờn khi vô cớ
Sẽ không còn gì vì anh đã khác xưa
Anh đã quên em thật rồi
Anh yêu người khác rồi
Có khi giật mình chợt lòng ta bỗng vui
Quên một người mà ta không nên nhớ
Bước trên đường đời thì ai cũng thế thôi
Muốn đứng phải đau một lần
Anh sẽ trả lại từng kỉ niệm đón đưa
Những nhành hoa giận hờn khi vô cớ
Sẽ không còn gì vì anh đã khác xưa
Anh đã quên em thật rồi
Anh yêu người khác rồi')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH30      ', N'Yêu lại từ đầu', N'TL11      ', N'Album17   ', N'CS17      ', N'TG38      ', N'HSX68     ', N'Em ơi! Hình như chúng mình
Đã hết yêu nhau mất rồi
Tại vì sao em hãy nói đi
Hay vì anh vô tâm hững hờ
Nên vô tình đánh mất hai ta
Rất khó để đến với nhau
Đừng buông xuôi tình yêu chúng mình
Mình đã hứa với nhau những gì
Mình hãy giữ trọn vẹn lời hứa
Hãy cho ta yêu nhau thêm một lần nữa
Mình tạm chia tay nhau nhé em
Để ta biết đc có yêu nhau không?
Mình tự cho nhau hai lối đi
Để xem quãng đường của ai xa hơn
Thời gian sẽ nói lên tất cả
Nếu ta còn yêu sẽ quay trở về
Thì lúc đó hai ta sẽ cùng mở rộng trái tim
Và cùng cho nhau
Yêu lại từ đầu
Em ơi! Hình như chúng mình
Đã hết yêu nhau mất rồi
Tại vì sao em hãy nói đi
Hay vì anh vô tâm hững hờ
Nên vô tình đánh mất hai ta
Rất khó để đến với nhau
Đừng buông xuôi tình yêu chúng mình
Mình đã hứa với nhau những gì
Mình hãy giữ trọn vẹn lời hứa
Hãy cho ta yêu nhau thêm một lần nữa
Mình tạm chia tay nhau nhé em
Để ta biết đc có yêu nhau không?
Mình tự cho nhau hai lối đi
Để xem quãng đường của ai xa hơn
Thời gian sẽ nói lên tất cả
Nếu ta còn yêu sẽ quay trở về
Thì lúc đó hai ta sẽ cùng mở rộng trái tim
Và cùng cho nhau...
Yêu lại từ đầu
Mình tạm chia tay nhau nhé em
Để ta biết đc có yêu nhau không?
Mình tự cho nhau hai lối đi
Để xem quãng đường của ai xa hơn
Thời gian sẽ nói lên tất cả
Nếu ta còn yêu sẽ quay trở về
Thì lúc đó hai ta sẽ cùng mở rộng trái tim
Và cùng cho nhau
Mình tạm chia tay nhau nhé em
Để ta biết đc có yêu nhau không?
Mình tự cho nhau hai lối đi
Để xem quãng đường của ai xa hơn
Thời gian sẽ nói lên tất cả
Nếu ta còn yêu sẽ quay trở về
Thì lúc đó hai ta sẽ cùng mở rộng trái tim
Và cùng cho nhau
Yêu lại từ đầu')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH31      ', N'Đừng hỏi em ', N'TL11      ', N'Album18   ', N'CS18      ', N'TG39      ', N'HSX68     ', N'Đừng hỏi em vì sao
Tình yêu ta úa màu
Đừng trách em vì sao giấc mơ tàn mau
Đừng hỏi em vì sao
Ngày đôi ta bắt đầu
Một chiếc hôn nồng sâu đã đưa ta về đâu?
Mình đã yêu nhau thật lâu
Mình hứa với nhau những điều
Em vẫn không thể quên lá thư nằm trên gối
Dòng viết yêu thương từ anh
Là những xót xa trong em
Anh nỡ đi thật xa để em lại ngủ yên
Đừng hỏi em giờ sao
Giờ em như thế nào
Đừng cố va vào nhau, nỗi đau ngày nào
Đừng trách em vì sao
Lặng im trong nỗi sầu
Mình có vui gì đâu nếu ta không còn nhau
Ngày tháng trôi qua thật mau
Giờ chúng ta cũng xa nhau
Em vẫn không thể tin lúc em đọc thư ấy
Dòng viết yêu thương từ anh
Là những xót xa trong em
Anh nỡ đi thật xa để em lại ngủ yên
Đừng hỏi em vì sao
Đừng trách em vì sao
Mình có vui gì đâu nếu ta không còn nhau
Đừng hỏi em vì sao
Hãy hỏi anh làm sao
Nếu có quay về
Đến lúc nào anh lại xa?')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH32      ', N'Cô ấy là ai', N'TL01      ', N'Album18   ', N'CS18      ', N'TG40      ', N'HSX68     ', N'Đừng nói điều gì, đừng nói thêm chi
Giọt nước trên mi, giờ đã tràn ly
Người đã nơi đây, và đứng bên ai
Và chiếc hôn kia, chẳng lẽ là sai
Và cô ấy là ai, người anh yêu là ai
Em đâu biết điều gì, sao anh không nói gì
Và giờ anh đừng nghĩ, rằng ta không biệt ly
Chẳng còn gì để em hối tiếc
Anh chỉ là kẻ nói dối khoác lên lớp áo vô tội
Đừng khiến em tin rằng anh ko có lỗi
Anh chỉ là kẻ nói dối khi em tin anh thay đổi
Đừng khiến con tim này thêm đau nhức nhối
Lời hứa trên môi, giờ đã phai phôi
Ngày tháng chia đôi giờ đây là giây phút cuối
Anh chỉ là kẻ nói dối khoác lên lớp áo vô tội
Đừng khiến em đau
Đừng dối gian theo, ngày tháng trôi nhanh
Và chính em đây, người đã tin anh
Dù đã bao nhiêu lầm lỗi trôi qa
Lòng vẫn xót xa và vẫn thứ tha
Và cô ấy là ai, người anh yêu là ai
Em đâu biết điều gì, sao anh không nói gì
Và giờ anh đừng nghĩ, rằng ta không biệt ly
Chẳng còn gì để em hối tiếc
Anh chỉ là kẻ nói dối khoác lên lớp áo vô tội
Đừng khiến em tin rằng anh ko có lỗi
Anh chỉ là kẻ nói dối khi em tin anh thay đổi
Đừng khiến con tim này thêm đau nhức nhối
Lời hứa trên môi, giờ đã phai phôi
Ngày tháng chia đôi giờ đây là giây phút cuối
Anh chỉ là kẻ nói dối khoác lên lớp áo vô tội
Đừng khiến em đau
Đừng khiến em đau
Khiến em đau
Anh chỉ là kẻ nói dối khoác lên lớp áo vô tội
Đừng khiến em tin rằng anh ko có lỗi
Anh chỉ là kẻ nói dối khi em tin anh thay đổi
Đừng khiến con tim này thêm đau nhức nhối
Lời hứa trên môi, giờ đã phai phôi
Ngày tháng chia đôi giờ đây là giây phút cuối
Anh chỉ là kẻ nói dối khoác lên lớp áo vô tội
Đừng khiến em đau')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH33      ', N'Anh chưa từng biết', N'TL11      ', N'Album18   ', N'CS18      ', N'TG40      ', N'HSX65     ', N'Chẳng thể ngờ là có lẽ mấy phút nữa chuyện tình mình sẽ khác
Quá đắn đo vì đôi tay ta chưa từng buông, chưa từng buông
Ngày xưa ấy như nước hoa sau tai, em xức cho ta thơm nồng
Dù quý giá nhưng chẳng lâu hương phai, ta thôi quyến luyến ngọt ngào
Ôi không
Anh chưa từng biết
Em đã yêu anh, đã yêu anh bao nhiêu
Thế nên anh không thể hiểu
Khi hôm nay đến em hụt hẫng ra sao
Vì anh chưa bao giờ
Chưa bao giờ hy sinh sinh những ước muốn
Rồi cam tâm mỗi ngày
Em mỗi ngày mong anh thỏa giấc mơ
Và sau bấy nhiêu điều, bấy nhiêu điều khi vinh hoa trước mắt
Chẳng níu giữ một người, giữ một người phía sau thầm lặng
Vì anh chưa từng biết
Những năm dài nhiều khi lênh đênh sóng dữ, em nhìn anh cay đắng
Có đôi lần bờ vai nơi em anh tựa nương, anh tựa nương
Ngày gian khó em đã luôn ở đây, thương anh như cả thiên đường
Để đến lúc yêu dấu theo gió bay, em mới cảm thấy vụn vỡ
Hạnh phúc mãi mãi biến mất
Vì anh chưa bao giờ
Chưa bao giờ hy sinh sinh những ước muốn
Rồi cam tâm mỗi ngày
Em mỗi ngày mong anh thỏa giấc mơ
Và sau bấy nhiêu điều, bấy nhiêu điều khi vinh hoa trước mắt
Chẳng níu giữ một người, giữ một người phía sau thầm lặng
Vì anh chưa từng biết
Vì anh chưa từng biết
Vì anh chưa bao giờ
Chưa bao giờ hy sinh sinh những ước muốn
Rồi cam tâm mỗi ngày
Em mỗi ngày mong anh thỏa giấc mơ
Và sau bấy nhiêu điều, bấy nhiêu điều khi vinh hoa trước mắt
Chẳng níu giữ một người, giữ một người phía sau thầm lặng
Vì anh chưa từng biết em đã yêu anh, đã yêu anh bao nhiêu
Vì anh chưa từng biết, em đã yêu anh, đã yêu anh')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH34      ', N'Tìm lại bầu trời', N'TL11      ', N'Album19   ', N'CS19      ', N'TG41      ', N'HSX68     ', N'Anh khóc vì giờ đây anh đã mất em rồi.
Anh khóc vì giờ đây em đã xa thật rồi.
Anh nhớ lời hẹn ước ta không xa rời, mà giờ đây sao chỉ anh lẻ loi.
Anh cứ cố gắng tại sao vẫn cứ xa vời.
Anh và em dường như ta đã hết yêu nhau rồi.
Em hãy nói cho anh nghe đi hỡi người yêu ơi, tại sao giờ chúng ta lìa đôi.
Tại anh đã vô tâm hay tại anh không quan tâm em mỗi ngày.
Để giờ đây khi lời anh nói em không tin anh nữa vậy
Trong tình yêu đôi lúc ta hay giận hờn anh biết
Nhưng anh thấy giờ em không còn yêu anh
Vậy thôi anh cho em đi về nơi em chưa bắt đầu ...
Nơi mà em khi chưa quen anh, anh thấy em vui hơn nhiều...
Anh xin lỗi vì đã cướp mất khoảng trời của em
Nhưng có người sẽ cho em lại một bầu trời.')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH35      ', N'Gửi ngàn lời yêu', N'TL11      ', N'Album19   ', N'CS19      ', N'TG42      ', N'HSX77     ', N'Chiều bâng khuâng trên phố dài
Từng đàn chim bay theo nhau về cuối bầu trời
Có chút cô đơn nào vẫn âm thầm lãng du
Trong ánh mắt chợt dâng lên bao nỗi niềm.
Im lặng đêm về
Ngọn đèn khuya hiu hắt mờ
Một vì sao rơi đơn côi như nỗi đợi chờ
Có chút chơi vơi nào rơi bên thềm cỏ mây
Chợt khúc hát mang bao ưu tư về đây.
Ở nơi phương trời xa rất xa
Em có biết đêm dài anh đã qua
Khi riêng mình anh thầm nhớ từng phím môi mềm
Nụ hôn em mong manh dịu êm.
Buồn xanh xao trên lối về
Lặng thầm trong đêm phiêu du câu hát đợi chờ
Lấp lánh ánh sao rơi phía chân trời rất xa
Chợt tình anh mang bao yêu thương gửi đến em.
Welcome to Yeucahat.com
Ngư yêu, bến bờ xa ngút ngàn
Từ sâu trái tim này anh nhớ em
Đã bao mùa, bao ngày nắng rồi mưa vơi đầy
Tình yêu anh trao em mãi không phai.
Người yêu ơi trong lòng anh nhớ em
Dù năm tháng anh vẫn mong chờ em
Mong một ngày ấm nồng thơm làn tóc, môi hôn em đầy
Cầm tay em, sẽ mãi chẳng rời xa.')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH36      ', N'Bài hát tặng em', N'TL08      ', N'Album20   ', N'CS20      ', N'TG42      ', N'HSX77     ', N'Bao nhiêu đêm anh luôn trông mong một người là em đó
Khi cô đơn anh luôn nghĩ đến một người là em đó
Có biết bao dại khờ
Có biết bao đợi chờ
Riêng anh tưởng mình đang trong mơ
Và anh như thêm ngu ngơ vẩn vơ từ ngày mà em tới
Em mang cho anh bao yêu thương và một cuộc sống mới
Cứ lớn thêm từng ngày
Cứ vấn vương từng ngày
Những giây phút ta gần bên nhau
Này em, niềm hạnh phúc trong anh là được nắm đôi tay nhỏ bé
Của em, hãy giữ mãi nụ cười ấy nhé
Và ngàn lời yêu trong anh như tia nắng mai
Đang chờ đợi một ngày nào bình minh tới
Là khi em hé môi cười
Bao giây phút tuyệt vời
Mang ánh sáng cho tâm hồn anh
Một điều nguyện ước là dù ngày mai cách xa
Tình yêu đó sẽ vẫn mãi trong tim ta
Một bài hát dành tặng chẳng nói lên tất cả
Nhưng anh hứa, sẽ mãi hát vang câu ca
Bao nhiêu đêm anh luôn trông mong một người là em đó
Khi cô đơn anh luôn nghĩ đến một người là em đó
Có biết bao dại khờ
Có biết bao đợi chờ
Riêng anh tưởng mình đang trong mơ
Và anh như thêm ngu ngơ vẩn vơ từ ngày mà em tới
Em mang cho anh bao yêu thương và một cuộc sống mới
Cứ lớn thêm từng ngày
Cứ vấn vương từng ngày
Những giây phút ta gần bên nhau
Này em, niềm hạnh phúc trong anh là được nắm đôi tay nhỏ bé
Của em, hãy giữ mãi nụ cười ấy nhé
Và ngàn lời yêu trong anh như tia nắng mai
Đang chờ đợi một ngày nào bình minh tới
Là khi em hé môi cười
Bao giây phút tuyệt vời
Mang ánh sáng cho tâm hồn anh
Một điều nguyện ước là dù ngày mai cách xa
Tình yêu đó sẽ vẫn mãi trong tim ta
Một bài hát dành tặng chẳng nói lên tất cả
Nhưng anh hứa...
Hứa sẽ mãi mãi luôn quan tâm bên em
Dù bao sóng gió vòng tay ấy luôn dành trọn
Cho em
Người dấu yêu
Và ngàn lời yêu trong anh như tia nắng mai
Đang chờ đợi một ngày nào bình minh tới
Là khi em hé môi cười
Bao giây phút tuyệt vời
Mang ánh sáng cho tâm hồn anh
Một điều nguyện ước là dù ngày mai cách xa
Tình yêu đó sẽ vẫn mãi trong tim ta
Một bài hát dành tặng chẳng nói lên tất cả
Nhưng anh hứa, sẽ mãi hát vang câu ca')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH37      ', N'Dành cho em ', N'TL08      ', N'Album20   ', N'CS20      ', N'TG43      ', N'HSX77     ', N'Anh vẫn nhớ đến lúc em hé môi cười
Hay những lúc vu vơ hờn ghen
Anh sẽ nhớ mãi mãi đến lúc bên em
Dù cách xa trong tim hoài mong
Tình yêu em trao anh khiến anh thay đổi
Để bình minh trong anh thức giấc, nhớ em
Viết nên bao câu chuyện
Mà hai ta vẫn luôn nguyện cầu
Rồi bao đêm thầm mong thầm mơ về em biết không anh đang suy tư
Cuộc đời anh chẳng cần đâu những điều quá xa
Chỉ cần em hiểu anh và biết rằng anh mãi mãi yêu em mà thôi
Vì trong anh em là điều duy nhất
Dành cho em ngàn câu ca và thương yêu đó
Dành cho em tia nắng ấm cùng bao cơn gió
Dành cho em dành cho em niềm đam mê tuyệt vời
Mà anh muốn nắm lấy trong giấc mơ
Mọi âu lo hãy quên đi vì anh ở đó
Là chiếc bóng mong bên em dìu bước em đi
Ở trên con đường dài có hai chúng ta
Rồi bao đêm thầm mong thầm mơ về em biết không anh đang suy tư
Cuộc đời anh chẳng cần đâu những điều quá xa
Chỉ cần em hiểu anh và biết rằng anh mãi mãi yêu em người ơi
Vì trong anh em là điều duy nhất
Dành cho em ngàn câu ca và thương yêu đó
Dành cho em tia nắng ấm cùng bao cơn gió
Dành cho em dành cho em niềm đam mê tuyệt vời
Mà anh muốn nắm lấy trong giấc mơ
Mọi âu lo hãy quên đi vì anh ở đó
Là chiếc bóng mong bên em dìu bước em đi
Ở trên con đường dài có hai chúng ta
Dành cho em ngàn câu ca và thương yêu đó
Dành cho em tia nắng ấm cùng bao cơn gió
Dành cho em dành cho em niềm đam mê tuyệt vời
Mà anh muốn nắm lấy trong giấc mơ
Mọi âu lo hãy quên đi vì anh ở đó
Là chiếc bóng mong bên em dìu bước em đi (dìu em đi)
Ở trên con đường dài có hai... chúng ta')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH38      ', N'Em không quay về', N'TL01      ', N'Album20   ', N'CS20      ', N'TG43      ', N'HSX77     ', N'Oh-oh, uh-oh, uh-oh uh-oh ah
Oh-oh, uh-oh, uh-oh uh-oh ah
Oh oh oh oh, yeah
Kể từ khi người đi mùa đông càng rét thêm
Cho lòng anh ngày đêm nghĩ đến em
Anh vẫn luôn nhớ về
Từng lời ta cùng nhau ước thề
Nhưng giờ đây tình yêu đã vỡ tan
Để mình anh hòa theo từng làn gió miên man
Lang thang nơi đó
Nơi yên vui nay đã mãi xa một người chỉ còn nỗi nhớ
Đành lạc loài chơ vơ như cánh én mãi nơi phương nào
Và giờ người ra đi
Trong con tim không nghĩ suy
Để lệ hoen đôi mi
Anh cần chi những hoài nghi khi em không trở lại
Chỉ còn lại đôi vai
Trong cơn mơ không có ai
Lời ngọt ngào bên tai về ngày mai anh đã sai
Em không quay về
Vì em không quay về
Ooh-ah, em không quay về
Ooh-ah, em không quay về, không quay về
Let me talk to you now
Nào lật lại quá khứ
Và một lần nhìn về mọi chuyện xem đâu là lý do
Khiến cho hai ta hai nơi phương xa
Em hãy nói xem những điều từ trước giờ em không thật thà
Em cứ ngây thơ rồi bất ngờ quay ngoắt cho ánh mắt mờ
Em hãy nói xem
Còn điều gì trong khi yêu anh em vẫn muốn giấu?
Hay tại vài tờ tiền polyme đang phe phất xung quanh em đủ loại màu
Cộng thêm từng lời ngọt ngào đầy mùi rượu của vài ba gã nhà giàu
Trong đêm khuya đưa em tìm lại một vài cuộc tình tại vài ba chiếc nhà lầu
Em hãy nói xem còn lại điều gì em vẫn muốn giấu?
Nơi yên vui nay đã mãi xa một người chỉ còn lại nỗi nhớ
Đành lạc loài và chơ vơ như cánh én mãi nơi phương nào
Và giờ người ra đi
Trong con tim không nghĩ suy
Để lệ hoen đôi mi
Anh cần chi những hoài nghi khi em không trở lại
Chỉ còn lại đôi vai
Trong cơn mơ không có ai
Lời ngọt ngào bên tai về ngày mai anh đã sai
Em không quay về
Vì em không quay về
Ooh-ah, em không quay về
Ooh-ah, em không quay về
Không quay về, ooh
Người ra đi để cho lòng anh thêm đau
Phải làm sao để anh quên đi được em
Người yêu hỡi
Và giờ người ra đi
Trong con tim không nghĩ suy
Để lệ hoen đôi mi
Anh cần chi những hoài nghi khi em không trở lại
Chỉ còn lại đôi vai
Trong cơn mơ không có ai
Lời ngọt ngào bên tai về ngày mai anh đã sai
Em không quay về
Và giờ người ra đi
Trong con tim không nghĩ suy
Để lệ hoen đôi mi
Anh cần chi những hoài nghi khi em không trở lại
Chỉ còn lại đôi vai
Trong cơn mưa không có ai
Lời ngọt ngào bên tai về ngày mai anh đã sai
Em không quay về
Vì em không quay về (ooh-ah, ooh-ah)')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH39      ', N'Anh đợi em nha', N'TL01      ', N'Album21   ', N'CS21      ', N'TG44      ', N'HSX63     ', N'Tại sao anh luôn luôn cần em
Khi em chẳng một lần nhớ anh
Anh tự hỏi sao em lảng tránh
Mỗi khi em đọc tin nhắn của anh
Tại sao anh luôn phải bày tỏ
Là tình cảm anh như thế đó
Cớ sao cứ thương em chẳng cần một lí do.

Rồi từng đêm anh ngắm trời cao
Chọn một vì sao để ước ao
Chẳng cần thời gian để nghĩ suy
Nhắm mắt lại và anh ước có em
Nhiều người bảo sao anh khờ thế
Tại sao yêu gì yêu lắm thế
Biết đâu phía sau em còn nhiều người khác anh.

Chẳng cần suy nghĩ anh vẫn chọn em
Là người sẻ chia ở bên anh mặc
Dù em con nít nên em đôi khi bỏ mặc anh đi
Chuyện là em vẫn vô tư chẳng khi nào
Em hỏi anh đang sống sao
Nhớ em, ghét em hay là hờn ghen thế nào
Bao giờ quan tâm.
(Dành em thêm chút không gian cho riêng mình
Trưởng thành hơn em sẽ hiểu
Chẳng ai muốn yêu em nhiều như anh đã yêu
Anh đợi em nha.)

Anh từng suy nghĩ đôi khi giận em
Rồi anh cũng nguôi chẳng để tâm chi
Vì em chưa trải qua khổ đau ly biệt nên chẳng quý
Vẫn yêu em lắm nên chắc anh nên đợi
Em trưởng thành thêm chút thôi
Chớ nên phút giây nóng vội để lạc mất em.
')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH40      ', N'Giúp anh trả lời những câu hỏi', N'TL08      ', N'Album21   ', N'CS21      ', N'TG44      ', N'HSX63     ', N'Hôm qua anh mơ hay tất cả là sự thật
Sao môi anh run và nước mắt vẫn tuôn
Mắt anh đắm lệ, hy vọng em sẽ về
Cầu mong mọi thứ sẽ tốt hơn trước đừng tệ thêm đi
Em tay trong tay trao nụ hôn ấy giữa ban ngày
Xem ra anh chẳng còn là gì của em
Mắt anh nhắm lại, không thể thêm nhẫn nại
Mặc dù cho em là người con gái anh yêu rất nhiều
Một lòng một dạ để yêu ai đó quá khó phải không?
Hãy trả lời câu hỏi của anh một cách thật lòng
Ngoài người mà em luôn nói là mãi yêu còn một người nữa
Người đó đã biết hay chưa? Đã biết bên em đã có anh chưa?
Thôi em đi đi không cần phải nói ra làm gì
Buông tay anh ra, đừng như thế nữa mà
Mắt anh nhắm lại, không thể thêm nhẫn nại
Mặc dù cho em là người con gái anh yêu rất nhiều
Một lòng một dạ để yêu ai đó quá khó phải không?
Hãy trả lời câu hỏi của anh một cách thật lòng
Ngoài người mà em luôn nói là mãi yêu còn một người nữa
Người đó đã biết hay chưa? Đã biết bên em đã có anh chưa?
Chẳng hiểu vì gì mà anh vượt khốn khó để yêu em
Bỏ qua tất cả để em có hạnh phúc êm đềm
Phải bỏ ngoài tai lời nói chẳng thích nghe về em như thế
Vậy mà cách đây một ngày chính mắt anh thấy mọi thứ đổi thay
Chúng ta nay khác rồi
Giờ hai người hai lối hoh-hoh-hoh-hohh
Một lòng một dạ để yêu ai đó quá khó phải không?
Hãy trả lời câu hỏi của anh một cách thật lòng
Ngoài người mà em luôn nói là mãi yêu còn một người nữa
Người đó đã biết hay chưa? Đã biết bên em đã có anh chưa?')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH41      ', N'Lắng nghe nước mắt', N'TL02      ', N'Album22   ', N'CS22      ', N'TG45      ', N'HSX78     ', N'Buổi sáng hôm ấy thấy em chợt khóc
Rồi vội vàng lau thật nhanh nước mắt
Vẫn biết ta đã sai khi gặp nhau
Vì em... đã có... người yêu
Goodbye... I''m fine... xin đừng bận tâm
Đừng buồn vì những gì ta đã có
Anh biết sẽ vẫn quan tâm nhiều lắm
Dù anh... chẳng... là ai
(Em có thể dối anh trong lời nói
Nhưng làm sao giấu được trong ánh mắt
Tình yêu thì không có sai hoặc đúng
Chỉ cần trái tim rung động)
Nghẹn ngào giây phút ta chấp nhận sống không cần nhau
Chẳng khác chi Trái Đất này làm sao tồn tại không có mặt Trời
Chỉ biết lặng nhìn em quay lưng bước đi ... lòng anh thắt lại
Nghĩ đến mình sẽ không gặp lại...
Tình yêu đâu phải ai cũng may mắn tìm được nhau
Chẳng giống như chúng ta tìm được nhau rồi lại hoang phí duyên Trời
Tại sao phải rời xa nhau mãi mãi
Biết đến khi nào... chúng ta...
Nhận ra chẳng thể quên được nhau ...')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH42      ', N'Dưới những cơn mưa', N'TL02      ', N'Album22   ', N'CS22      ', N'TG45      ', N'HSX79     ', N'Trời trắng xoá màu mưa
Mọi thứ đang lu mờ quá nhanh
Phố vắng ướt nhoà
Đã khắc sâu hơn những nỗi buồn
Nhận ra ngần ấy năm, em vẫn không thuộc về anh
Anh đã có tất cả nhưng tim em thì không
Và những gì đã từng tồn tại giữa hai chúng ta
Có lẽ không phải tình yêu em mong đợi
Ngày mà em quyết rời anh
Mọi thứ cứ ngỡ vẫn nguyên vẹn
Nhưng thật ra từ sâu trong lòng anh
Hy vọng cuối đã tắt
Nếu đang yêu nhau chỉ cần nhìn mưa sẽ nhớ nhau hơn?
Thế nhưng sao chia tay lại sợ giọt mưa thấm đẫm cô đơn
Cứ phải nghĩ hoài
Giờ ai kia đang ở đâu và đang vui như thế nào?
Có ai chỉ còn một mình mà không ghét những cơn mưa?
Lý do chia tay là gì, chẳng còn ý nghĩa cho ai
Khi người ở lại giờ đã mất đi tất cả
Chỉ muốn tin chính mình
Oh no babe, sao em lại mang những cảm xúc sẻ chia với ai
Mang hết những ấm áp xa khỏi nơi tim anh
How you feel that I am breaking up inside
When you leave my life
I get lost in my mind
Mưa làm đêm dài hơn em biết không?
Anh lại mang ký ức trở về
Sao anh không thể nào buông tay để quên được em?
Nếu đang yêu nhau chỉ cần nhìn mưa sẽ nhớ nhau hơn?
Thế nhưng sao chia tay lại sợ giọt mưa thấm đẫm cô đơn
Cứ phải nghĩ hoài
Giờ ai kia đang ở đâu và đang vui như thế nào?
Có ai chỉ còn một mình mà không ghét những cơn mưa?
Lý do chia tay là gì, chẳng còn ý nghĩa cho ai
Khi người ở lại giờ đã mất đi tất cả
Chỉ muốn tin chính mình
Đã lâu ánh sáng Mặt Trời chẳng còn sưởi ấm nơi đây
Ký ức của đôi ta đang chìm dần vào trong góc tối tim anh
Chỉ còn đôi lần được mơ thấy ta lúc xưa
Làm anh thêm nhớ em
Có ai chỉ còn một mình mà không ghét những cơn mưa?
Lý do chia tay là gì, chẳng còn ý nghĩa cho ai
Khi người ở lại giờ đã mất đi tất cả
Nhìn mưa tuôn nỗi đau')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH43      ', N'Mất trí nhớ', N'TL02      ', N'Album23   ', N'CS23      ', N'TG46      ', N'HSX80     ', N'Một mùa xuân anh nghĩ về em.
Một mùa hạ anh nhớ về em.
Một mùa thu anh yêu em rất nhiều.
Và mùa đông anh lại không nhớ em...
Một thứ nữa anh nghĩ về em.
Một ngày nữa anh nhớ về em.
Một tháng nữa anh yêu em rất nhiều.
Và năm nữa anh lại không nhớ em...

Ngày anh khóc đêm nguyện cầu
Nhìn ngày tháng nỗi buồn trong anh
Không thể nào nhớ những gì.
Anh ước rằng anh sẽ nhớ được em.
Cảm giác đó trong lòng anh.
Và trí nhớ trái tim của anh
Chẳng thể nào nhớ được gì.
Anh ước rằng anh sẽ nhớ được em.

Một mùa xuân anh nghĩ ... về em.
Một mùa hạ anh lại nghĩ về em
Một mùa thu anh yêu em rất nhiều!
Và mùa đông anh lại không nhớ em.
Một thứ nữa anh nghĩ về em.
Một ngày nữa anh nhớ về em
Một tháng nữa anh yêu em rất nhiều...!
Và năm nữa anh lại không nhớ em...
Ngày anh khóc đêm nguyện cầu.
Nhìn ngày tháng nỗi buồn trong anh.
Không thể nào nhớ những gì.
Anh cầu mong anh sẽ nhớ được em.
Cảm giác đó trong lòng anh.
Và trí nhớ trái tim của anh.
Không thể nào nhớ những gì.
Anh ước rằng anh sẽ nhớ được em...

Ước muốn qua đêm nay sẽ lại nhớ đến hô ù ơ...
Những tháng năm bên nhau ôi đẹp biết bao!
Nước mắt em cứ rơi chỉ làm cho anh đớn đau vì chẳng nhớ gì?
Anh là 1 cơn mưa xoá đi niềm đau...
Ngày em khóc đêm nguyện cầu
Nhìn ngày tháng nỗi buồn trong anh
Không thể nào nhớ những gì?
Em cầu mong anh sẽ nhớ được em.
Cảm giác đó trong lòng em.
Và trí nhớ trái tim của anh.
Không thể nào nhớ những gì.
Anh ước rằng anh sẽ nhớ được em.
Không thể nào nhớ những gì.
Anh ước rằng anh sẽ nhớ được em...
')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH44      ', N'Anh không sao đâu', N'TL02      ', N'Album23   ', N'CS23      ', N'TG46      ', N'HSX81     ', N'Đi qua bao nhiêu khó khăn
Đi qua bao nhiêu
Nỗi thăng trầm
Đôi lúc anh mệt mỏi
Chỉ có em ở bên
Là người mang đến
Cho anh những tiếng cười
Em ơi lại gần anh nữa đi
Em hãy nhìn thẳng
Mắt anh này
Anh sẽ rất hạnh phúc
Nếu sớm mai tỉnh giấc
Người đầu tiên anh
Trông thấy chính là em
Làm vợ anh nhé
Anh có
Một bờ vai đủ rộng
Một vòng tay ấm
Một trái tim
Luôn thấu hiểu em
Làm vợ anh nhé
Anh sẽ luôn là
Người che chở
Mang đến cho em
Sự bình yên
Dù mai mưa nắng
Anh sẽ luôn là
Người dẫn lối
Buồn vui gian khó
đã có anh ở đây sẻ chia
Chẳng cần em phải
Lo lắng hay bận tâm điều gì
Và giờ hãy hứa
Trọn đời yêu anh
Nhé em
Em ơi lại gần anh nữa đi
Em hãy nhìn thẳng
Mắt anh này
Anh sẽ rất hạnh phúc
Nếu sớm mai tỉnh giấc
Người đầu tiên anh
Trông thấy chính là em
Làm vợ anh nhé
Anh có
Một bờ vai đủ rộng
Một vòng tay ấm
Một trái tim
Luôn thấu hiểu em
Làm vợ anh nhé
Anh sẽ luôn là
Người che chở
Mang đến cho em
Sự bình yên
Dù mai mưa nắng
Anh sẽ luôn là
Người dẫn lối
Buồn vui gian khó
đã có anh ở đây sẻ chia
Chẳng cần em phải
Lo lắng hay bận tâm điều gì
Và giờ hãy hứa
Trọn đời yêu anh
Nhé em
Làm vợ anh nhé
Anh có
Một bờ vai đủ rộng
Một vòng tay ấm
Một trái tim
Luôn thấu hiểu em
Làm vợ anh nhé
Anh sẽ luôn là
Người che chở
Mang đến cho em
Sự bình yên
Dù mai mưa nắng
Anh sẽ luôn là
Người dẫn lối
Buồn vui gian khó
đã có anh ở đây sẻ chia
Chẳng cần em phải
Lo lắng hay bận tâm điều gì
Chỉ cần em hứa
Trọn đời yêu anh
Làm vợ anh nhé em')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH45      ', N'Tôi là ai trong em', N'TL03      ', N'Album24   ', N'CS10      ', N'TG47      ', N'HSX82     ', N'Nếu ngày mai đi qua
Những khoảng trời thông xanh
Nếu thời gian quay lại
Có mối tình mang tên
Những khoảng trời thông xanh
Bỗng trở thành xa xôi
Như là ánh mắt nào
Lúc ta chào tạm biệt
Muốn nói em nghe về giấc mơ
Muốn nói em nghe thật gần
Rồi ta sẽ đi những con đường hôm nay
Sẽ giữ tay lại trong tay
Giữ từng hơi ấm thật lâu
Đồi thông cao nghe hết những lời ban mai
Nhung nhớ đong đầy sương rơi
Và chờ nghe em nói, một lần cho mai sau
Tôi là ai trong em?
Cứ nhìn sâu trong tim
Nếu mình hai tâm hồn
Nếu nỗi buồn chia đôi
Có mùa đông trên cao
Có mùa hạ trong veo
Giọt nước mắt để dành
Cho một nụ hôn sâu
Những khoảng trời thông xanh
Bỗng trở thành xa xôi
Như là ánh mắt nào
Lúc ta chào tạm biệt
Muốn nói em nghe về giấc mơ
Muốn nói em nghe thật gần
Rồi ta sẽ đi những con đường hôm nay
Sẽ giữ tay lại trong tay
Giữ từng hơi ấm thật lâu
Đồi thông cao nghe hết những lời ban mai
Nhung nhớ đong đầy sương rơi
Và chờ nghe em nói, một lần cho mai sau
Rồi ta sẽ đi những con đường hôm nay
Sẽ giữ tay lại trong tay
Giữ từng hơi ấm thật lâu
Đồi thông cao nghe hết những lời ban mai
Nhung nhớ đong đầy sương rơi
Và chờ nghe em nói, một lần cho mai sau
Tôi là ai trong em?
Cứ nhìn sâu trong tim
Nếu mình hai tâm hồn
Nếu nỗi buồn chia đôi
Có mùa đông trên cao
Có mùa hạ trong veo
Giọt nước mắt để dành
Cho một nụ hôn sâu')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH46      ', N'Sau tất cả', N'TL03      ', N'Album24   ', N'CS10      ', N'TG47      ', N'HSX78     ', N'Sau tất cả
Mình lại trở về với nhau
Tựa như chưa bắt đầu
Tựa như ta vừa mới quen
Sau tất cả
Lòng chẳng hề đổi thay
Từng ngày xa lìa khiến con tim bồi hồi
Và ta lại gần nhau hơn nữa
Có những lúc đôi ta giận hờn
Thầm trách nhau không một ai nói điều gì
Thời gian cứ chậm lại, từng giây phút sao quá dài
Để khiến anh nhận ra mình cần em hơn
Tình yêu cứ thế đong đầy trong anh từng ngày
Vì quá yêu em nên không thể làm gì khác
Chỉ cần ta mãi luôn dành cho nhau những chân thành
Mọi khó khăn cũng chỉ là thử thách
Vì trái tim ta luôn luôn thuộc về nhau
Sau tất cả
Mình lại chung lối đi
Đoạn đường ta có nhau
Bàn tay nắm chặt bấy lâu
Sau tất cả
Mình cùng nhau sẻ chia
Buồn phiền không thể khiến đôi tim nhạt nhoà
Và ta lại gần nhau hơn nữa
Có những lúc đôi ta giận hờn
Thầm trách nhau không một ai nói điều gì
Thời gian cứ chậm lại, từng giây phút sao quá dài
Để khiến anh nhận ra mình cần em hơn
Tình yêu cứ thế đong đầy trong anh từng ngày
Vì quá yêu em nên không thể làm gì khác
Chỉ cần ta mãi luôn dành cho nhau những chân thành
Mọi khó khăn cũng chỉ là thử thách
Vì trái tim ta luôn luôn thuộc về nhau
Giữ chặt bàn tay
Mình cùng nhau đi hết bao tháng ngày
Mọi điều gian khó ta luôn vượt qua
Để khiến ta nhận ra mình gần nhau hơn
Tình yêu cứ thế đong đầy trong anh từng ngày
Vì quá yêu em nên không thể làm gì khác
Chỉ cần ta mãi luôn dành cho nhau những chân thành
Mọi khó khăn cũng chỉ là thử thách
Vì trái tim ta luôn luôn
Thuộc về nhau')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH47      ', N'Thuận theo ý trời ', N'TL03      ', N'Album25   ', N'CS25      ', N'TG48      ', N'HSX79     ', N'Chỉ có cách anh lùi bước
Để em thấy đường đi phía trước
Vì anh cứ bên em là bão với giông hoài
Vậy thì tại sao không dừng lại
Khổ vẫn ở cạnh nhau
Tình yêu tốt chẳng như vậy đâu
Vậy anh xin một lần làm trái ý mình
Xa em là anh quyết định
Chỉ tại mình cãi số, yêu nhầm chỗ
Ngoan cố dẫu bao giày vò
Chẳng phải người sẽ ở cạnh nhau suốt đời
Lìa xa nhau là thuận theo ý trời
Chỉ nghĩ tới ngày ta cách rời
Là anh thấy tâm can rối bời
Mà anh phải làm thôi
Để trái tim em nghỉ ngơi
Thời gian qua chắc em cũng đã mệt rồi
Chỉ có cách anh lùi bước
Để em thấy đường đi phía trước
Vì anh cứ bên em là bão với giông hoài
Vậy thì tại sao không dừng lại
Khổ vẫn ở cạnh nhau
Tình yêu tốt chẳng như vậy đâu
Vậy anh xin một lần làm trái ý mình
Xa em là anh quyết định
Chỉ tại mình cãi số, yêu nhầm chỗ
Ngoan cố dẫu bao giày vò
Chẳng phải người sẽ ở cạnh nhau suốt đời
Lìa xa nhau là thuận theo ý trời
Chỉ nghĩ tới ngày ta cách rời
Là anh thấy tâm can rối bời
Mà anh phải làm thôi
Để trái tim em nghỉ ngơi
Thời gian qua chắc em cũng đã mệt rồi
Khổ vẫn ở cạnh nhau
Tình yêu tốt chẳng như vậy đâu
Vậy anh xin một lần làm trái ý mình
Xa em là anh quyết định
Chỉ tại mình cãi số, yêu nhầm chỗ
Ngoan cố dẫu bao giày vò
Chẳng phải người sẽ ở cạnh nhau suốt đời
Lìa xa nhau là thuận theo ý trời
Vậy em ơi, ngày ta cách rời
Em phải hứa với anh một lời
Là em sẽ tìm nơi
Mà chỉ có mỗi niềm vui
Thời gian qua chắc em cũng đã mệt rồi')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH48      ', N'Cưới nhau đi', N'TL03      ', N'Album25   ', N'CS25      ', N'TG48      ', N'HSX80     ', N'Hỡi em yêu !
Anh chỉ muốn nói 1 điều
Lấy anh đi, để thôi đường về cô liêu
Bên nhau sớm chiều
Thương nhau thật nhiều
Và yêu như chưa từng yêu
Hỡi anh yêu !
Em cũng muốn nói 1 lời
Mình cưới nha anh
Vì em chỉ cần anh thôi
Yêu anh mất rồi
Chưa bao giờ nguôi
Vì sinh ra để thành đôi
Đừng ngại ngần gọi tên em đi
Đừng ngại ngần gọi tên anh đi
Đừng ngại ngần gọi tên nhau đi
Mình cưới nhau đi
Chần chờ gì chồng ơi em đây
Chần chờ gì vợ ơi anh đây
Lời tuyệt vời nào hơn hôm nay
Mình cưới nhau ngay
Yes i do
Anh sẽ mãi là chồng của em
Yes i do
Em sẽ mãi là vợ của anh
Hôn nhau đi em còn chờ gì
Hôn em đi anh còn chờ gì
Từ nay về sau mình chung bước đi
Yes i do
Anh yêu em hơn ngày đắm say
Yes i do
Em yêu anh trong từng phút giây
Yêu nhau đến mai về sau
Yêu nhau đến khi bạc đầu
Mình sẽ hạnh phúc suốt nơi đâu
Chỉ cần có nhau.')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH49      ', N'Khi người lớn cô đơn', N'TL03      ', N'Album26   ', N'CS26      ', N'TG49      ', N'HSX81     ', N'Thành phố bé thế thôi
Mà tìm hoài chẳng được
Tìm hoài sao chẳng thấy nhau giữa chốn đông người
Thành phố bé đến thế thôi
Mà tìm hoài không thấy
Chút ấm áp
Chút yêu thương riêng mình
Chiều đứng giữa ngã tư
Nhìn dòng xe tấp nập
Dừng lại bên quán nước, khu chợ vắng thưa người
Nào nhắm mắt chút thôi
Mặt trời đang không hát
Nắng sắp tắt, chẳng buông lời hình như
Chiều tôi lên xe loay hoay giữa thành phố không màu
Nhạc Trịnh ngân lên nghe da diết gầy hao
Mùi thuốc lá bay bay
Mùi cafe sao đắng lòng
Trạm xe dừng không ai đón đưa
Là vì tôi cô đơn giữa đường phố thân thuộc
Là vì tôi hôm nay cô đơn giữa đời trôi
Rồi có những đêm mưa
Nằm nghe câu ca rất xưa
Từ radio phát lên, nghe thật buồn
Thành phố bé thế thôi
Mà tìm hoài chẳng được
Tìm hoài sao chẳng thấy nhau giữa chốn đông người
Nào nhắm mắt chút thôi
Mặt trời đang không hát
Nắng sắp tắt, chẳng buông lời hình như
Chiều tôi lên xe loay hoay giữa thành phố không màu
Nhạc Trịnh ngân lên nghe da diết gầy hao
Mùi thuốc lá bay bay
Mùi cafe sao đắng lòng
Trạm xe dừng không ai đón đưa
Là vì tôi cô đơn giữa đường phố thân thuộc
Là vì tôi hôm nay cô đơn giữa đời trôi
Rồi có những đêm mưa
Nằm nghe câu ca rất xưa
Từ radio phát lên nghe buồn lắm
Là vì tôi cô đơn giữa đường phố thân thuộc
Là vì tôi hôm nay cô đơn giữa đời trôi
Rồi có những đêm mưa
Nằm nghe câu ca rất xưa
Từ radio phát lên, nghe buồn lắm
Là vì tôi cô đơn giữa đường phố thân thuộc
Là vì tôi hôm nay cô đơn giữa đời trôi
Rồi có những đêm mưa
Nằm nghe câu ca rất xưa
Từ radio phát lên, nghe thật buồn
Người lớn cô đơn, tự mình trong bao nghĩ suy
Ngồi bên ai sao thấy riêng tôi quạnh hiu')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH50      ', N'Cha già rồi đúng không', N'TL03      ', N'Album26   ', N'CS26      ', N'TG49      ', N'HSX43     ', N'Cha thường kể nhiều lắm về thời niên thiếu
Cha hay đạp xe mỗi sáng cóc cách tới trường
Ngay khu phố trước nhà,
Có cụ già bán bánh thơm lừng
Những chiếc bánh bao tròn ấm áp khói bay
Mẹ kể ngày xưa thời đấy trông mẹ đẹp lắm
Cha con say đắm say đuối nhớ tương hoài tư
Ôi những tối hẹn hò, chiếc xe đạp đưa đón nhau về
Những năm tháng tươi đẹp của tuổi thanh xuân
Cha già rồi đúng không?!
Mắt kém, tay chân thì run
Cha già rồi đúng không?!
Sao cứ nói lung tung chuyện cũ
Cả cuộc đời với cha
Chỉ sống để yêu một người là mẹ của các con thôi!
Có lẽ, cuộc đời còn có bao nhiêu lần 10 năm nữa...
(Từ là từ phu tướng. Bảo kiếm sắc phong lên đàng.
Vào ra luống trông tin nàng. Năm canh mơ màng)
Dạ cổ hoài lang tình tang cha thường hay hát,
Cha hay nhắc tôi nhiều thứ đã nghe hoài tai
Ôi những lúc tan trường,
Chiếc xe đạp cha đón con về
Những năm tháng tươi đẹp của tuổi thanh xuân
Cha già rồi đúng không?!
Cứ hát mãi câu ca "Hoài Lang"
Cha già rồi đúng không?!
Con xin lỗi cha, con thật vô tâm
Cả cuộc đời của cha
Chỉ sống với những ước mơ ngày thơ tự vẽ nơi tim
Có lẽ, cuộc đời còn có bao nhiêu lần 10 năm nữa...
Cha kể tôi nghe.')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH51      ', N'Cùng nhìn nhau già nua', N'TL06      ', N'Album27   ', N'CS27      ', N'TG50      ', N'HSX82     ', N'Chợt tỉnh giấc anh bỗng thấy nhớ về em
Chợt tỉnh giấc con tim anh như thắt lại
Chợt tỉnh giấc bao nhiêu ưu tư
Bao lo toan muộn phiền nơi đây tan biến đi
Người làm cho con tim anh đang xuyến xao
Người làm cho con tim anh đang khờ dại, điên lên vì nhớ em
Đừng ngại ngần em ơi, nào hãy đến bên anh này
Chỉ cần hai ta luôn được ở bên nhau
Không cần biết mai sau có được như lúc đầu
Thì anh vẫn luôn đậm sâu, một tình yêu luôn dài lâu
Mình cùng bên nhau mãi mãi
Chỉ cần hai ta luôn được ở bên nhau
Dẫu dòng dòng đời cuốn xoay có đớn đau
Thì vẫn luôn có nhau suốt đời
Mình cùng nhìn nhau già nua
Chợt tỉnh giấc anh bỗng thấy nhớ về em
Chợt tỉnh giấc con tim anh như thắt lại
Chợt tỉnh giấc bao nhiêu ưu tư
Bao lo toan muộn phiền nơi đây tan biến đi
Người làm cho con tim anh đang xuyến xao
Người làm cho con tim anh đang khờ dại, điên lên vì nhớ em
Đừng ngại ngần em ơi, nào hãy đến bên anh này
Chỉ cần hai ta luôn được ở bên nhau
Không cần biết mai sau có được như lúc đầu
Thì anh vẫn luôn đậm sâu, một tình yêu luôn dài lâu
Mình cùng bên nhau mãi mãi
Chỉ cần hai ta luôn được ở bên nhau
Dẫu dòng dòng đời cuốn xoay có đớn đau
Thì vẫn luôn có nhau suốt đời
Mình cùng nhìn nhau già nua
Chỉ cần hai ta luôn được ở bên nhau
Không cần biết mai sau có được như lúc đầu
Thì anh vẫn luôn đậm sâu, một tình yêu luôn dài lâu
Mình cùng bên nhau mãi mãi
Chỉ cần hai ta luôn được ở bên nhau
Dẫu dòng dòng đời cuốn xoay có đớn đau
Thì vẫn luôn có nhau suốt đời
Mình cùng nhìn nhau già nua')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH52      ', N'Lỗi của anh', N'TL06      ', N'Album27   ', N'CS27      ', N'TG50      ', N'HSX76     ', N'Trả lại cho em đêm bình yên như ngày anh chưa hề đến
Trả em khoảng trời không buồn đau, không còn suy tư về nhau
Chuyện đã thế rồi, cũng đành thôi giờ đây mình như người dưng ngược lối
Ừ thì anh biết chẳng một ai có thể ở bên đời mãi
Cũng chẳng có ai có thể yêu một tình yêu không nhạt phai
Nếu đánh mất hy vọng, người hãy mở lòng, chào đón một tình yêu mới
Anh xin lỗi vì đã không gần em
Lúc yếu đuối trong lòng em
Cần anh và mong anh ở bên vỗ về
Anh xin lỗi vì tuổi xuân của em
Cứ héo úa qua từng đêm
Chờ anh mà anh mãi chạy theo đam mê
Anh xin lỗi vì đến bên đời em
Lúc tay trắng không làm nên
Một tương lai thật ấm êm cho chúng mình
Về bên ấy hạnh phúc sẽ gọi tên
Người ấy sẽ bước tiếp cùng em
Vì em mà xây giấc mơ thật lung linh
Trả lại cho em đêm bình yên như ngày anh chưa hề đến
Trả em khoảng trời không buồn đau, không còn suy tư về nhau
Chuyện đã thế rồi, cũng đành thôi giờ đây mình như người dưng ngược lối
Ừ thì anh biết chẳng một ai có thể ở bên đời mãi
Cũng chẳng có ai có thể yêu một tình yêu không nhạt phai
Nếu đánh mất hy vọng, người hãy mở lòng, chào đón một tình yêu mới
Anh xin lỗi vì đã không gần em
Lúc yếu đuối trong lòng em
Cần anh và mong anh ở bên vỗ về
Anh xin lỗi vì tuổi xuân của em
Cứ héo úa qua từng đêm
Chờ anh mà anh mãi chạy theo đam mê
Anh xin lỗi vì đến bên đời em
Lúc tay trắng không làm nên
Một tương lai thật ấm êm cho chúng mình
Về bên ấy hạnh phúc sẽ gọi tên
Người ấy sẽ bước tiếp cùng em
Vì em mà xây giấc mơ thật lung linh
Anh xin lỗi vì đã không gần em
Lúc yếu đuối trong lòng em
Cần anh và mong anh ở bên vỗ về
Anh xin lỗi vì tuổi xuân của em
Cứ héo úa qua từng đêm
Chờ anh mà anh mãi chạy theo đam mê
Anh xin lỗi vì đến bên đời em
Lúc tay trắng không làm nên
Một tương lai thật ấm êm cho chúng mình
Về bên ấy hạnh phúc sẽ gọi tên
Người ấy sẽ bước tiếp cùng em
Vì em mà xây giấc mơ thật lung linh
Vì em mà xây giấc mơ
Thật lung linh')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH53      ', N'Nước mắt em lau bằng tình yêu mới', N'TL06      ', N'Album28   ', N'CS28      ', N'TG51      ', N'HSX76     ', N'Lạc vào những nỗi buồn lạc vào nơi góc quen
Để một mình gặm nhấm từng bản nhạc buồn mới cất lên
Vòng tay đã buông rời nhau, nước mắt em lau bằng tình yêu mới
Thành phố đã quá chật, đừng nên cố níu tay
Để rồi một lần nữa lại nhận về mình những đắng cay
Đêm nay xin cho ngủ quên, để nỗi nhớ kia anh gửi lại bóng đêm
Gót chân cứ vô thức sao ngỡ như bước trên lối quen
Những vì sao vụt tắt phía trước anh bỗng chốc tối đen
Đi về đâu khi con đường kia đưa ta vào hư vô
Còn lại gì khi bao quanh anh nơi đây là mây mờ
Những lời hứa ai nói hôm trước nay đã tan biến đi đâu
Những định kiến ngăn cách ta đến bên nhau nay đã thêm sâu
Cứ như tất cả đã là số phận
Anh chẳng biết sửa chữa từ đâu
Đôi khi anh đã muốn vứt hết thế giới này
Đôi khi anh đã muốn trốn chạy tương lai
Đưa em đi đến những nơi xa không quay về
Chỉ còn lại mình đôi ta đón nắng mai
Nhưng nay hai ta đã không đi bên nhau rồi
Nơi đây anh vẫn đứng một mình anh thôi
Khúc nhạc buồn dường như lại vang lên
Tất cả những ký ức khi xưa lại hiện về ám ảnh trong đêm
Lạc vào những nỗi buồn lạc vào nơi góc quen
Để một mình gặm nhấm từng bản nhạc buồn mới cất lên
Vòng tay đã buông rời nhau, nước mắt em lau bằng tình yêu mới
Thành phố đã quá chật, đừng nên cố níu tay
Để rồi một lần nữa lại nhận về mình những đắng cay
Đêm nay xin cho ngủ quên, để nỗi nhớ kia anh gửi lại bóng đêm.
Những ngày buồn thương và đời anh chỉ toàn quen những người lạ
Mối tình ngày xưa tưởng ngủ sâu chợt ngày kia quay về nhà
Ngồi trên sofa nhâm nhi ly cafe hỏi anh ra sao có thêm bao niềm vui mới
Yêu thêm bao nhiêu người và quen thêm bao người rồi
Những cuộc chăn gối trong cơn say những lời ân ái xong quên ngay
Anh kiếm niềm vui để rồi vui xong rồi
Sao riêng mình anh căn phòng này
Anh làm bạn với bóng đêm và nỗi nhớ em
Mối tình đã cũ anh chôn sâu, mỗi ngày gặm nhấm trong tim anh
Gió khẽ bên tai kể chuyện cũ trên phố quen
Về kỷ niệm ngày xưa nay vừa đủ nhớ vừa đủ quên
Vị mặn đắng trên đầu môi một cảm giác khó gọi tên
Sống trong giấc mơ khi xưa nhưng người không còn ở bên
Vì lời ai chưa nói hay vì lời đã nói ra
Tỉnh dậy sáng hôm sau, cơn mưa tầm tã tối qua
Không nhớ bằng cách nào mà đôi chân kia đưa tới nhà
Nhưng nắng mới đã lên đánh lừa ta rằng mọi thứ đã trôi qua
Nhưng quá khứ đôi khi hiện về ám ảnh như bóng ma
Ở sau lưng, không nhìn thấy không có nghĩa là đã xa
Đôi khi trong đêm thấy mình trong mê cung không lối ra
Để lại thức dậy bên trong thành phố trống rỗng vì thiếu một nửa của chúng ta
Những vỉa hè cũng thật dài nhưng chẳng dẫn ta tới đâu
Những bước chân vẫn miệt mài nhưng ta chẳng đến với nhau.
Lạc vào những nỗi buồn lạc vào nơi góc quen
Để một mình gặm nhấm từng bản nhạc buồn mới cất lên
Vòng tay đã buông rời nhau, nước mắt em lau bằng tình yêu mới.
Thành phố đã quá chật, đừng nên cố níu tay
Để rồi một lần nữa lại nhận về mình những đắng cay
Đêm nay xin cho ngủ quên, để nỗi nhớ kia anh gửi lại bóng đêm.
Những ngày buồn thương và đời anh chỉ toàn quen những người lạ
Mối tình ngày xưa tưởng ngủ sâu chợt ngày kia quay về nhà
Ngồi trên sofa nhâm nhi ly cafe hỏi anh ra sao có thêm bao niềm vui mới
Yêu thêm bao nhiêu người và quen thêm bao người rồi
')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH54      ', N'Có ai thương em như anh', N'TL06      ', N'Album28   ', N'CS28      ', N'TG51      ', N'HSX76     ', N'Đường về chiều mưa rơi
Thấy anh cùng ai bước chung
Bỗng nhiên bao nhiêu ký ức quen thuộc
Cứ hiện lên làm em thấy buồn

Hình như anh đang vui
Vì thấy anh mỉm cười rất tươi
Nắm tay anh rồi ai đó ôm anh
Mắt nhẹ cay vì phút yếu mềm

Thời gian trôi qua mà anh vẫn giữ những tấm hình của đôi ta
Ngày mình chia xa và anh đã nói đằng sau anh luôn vẫn chờ

Làm gì có ai thương em như vậy
Có ai cần em đến thế
Có ai chia tay mà vẫn mong từng ngày
Mong niềm vui dù em thuộc về ai

Làm gì có ai thương em như vậy
Có ai vẫn luôn ở đấy
Đứng sau lưng em để những khi chơi vơi
Mang bình yên chẳng mang gì xa xôi
Có ai thương em...

Đường mình giờ chia đôi
Hãy cất em vào quá khứ thôi
Cứ yên lặng nhẹ như áng mây trôi
Để chẳng ai buồn ai đứng đợi

Thời gian trôi qua mà anh vẫn giữ những tấm hình của đôi ta
Ngày mình chia xa và anh đã nói đằng sau anh luôn vẫn chờ
Làm gì có ai thương em như vậy
Có ai cần em đến thế
Có ai chia tay mà vẫn mong từng ngày
Có Ai Thương Em Như Anh lyrics on
Mong niềm vui dù em thuộc về ai
Làm gì có ai thương em như vậy
Có ai vẫn luôn ở đấy
Đứng sau lưng em để những khi chơi vơi
Mang bình yên chẳng mang gì xa xôi
Có ai thương em như vậy
Có ai cần em đến thế
Có ai chia tay mà vẫn mong từng ngày
Mong niềm vui dù em thuộc về ai
Có ai thương em như vậy

Có ai vẫn luôn ở đấy
Đứng sau lưng em để những khi chơi vơi
Mang bình yên chẳng mang gì xa xôi
Có ai thương em như vậy...
Có ai thương em như anh...
Có ai cần em như anh..')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH55      ', N'Giả vờ say', N'TL07      ', N'Album29   ', N'CS29      ', N'TG52      ', N'HSX78     ', N'Đêm qua ai đã ôm lấy em hôn thật sâu
Dù cho chẳng biết em ở đâu tên gì
Đưa tay lướt nhẹ trên mắt môi, làm tim em bồi hồi
Lòng đã bối rối em bước đi nhanh
Còn lại vệt son trên áo là của em đó
Còn lại mùi hương quyến rũ là của anh đó, là của anh đó!
Gần hơn nữa đi, em chẳng muốn tỉnh giấc đâu
Hay ta cứ say hoài, để mai này chẳng xa rời nhau
Gần hơn nữa đi em chẳng muốn lạc mất nhau
Hay ta cứ say hoài
Hãy nói với em anh không hề say
Hãy nói với em anh chỉ giả vờ say
Hãy nói với em anh không hề say
Hãy nói với em anh không hề say
Đêm qua ai đã ôm lấy em hôn thật sâu
Dù cho chẳng biết em ở đâu tên gì
Đưa tay lướt nhẹ trên mắt môi, làm tim em bồi hồi
Lòng đã bối rối em bước đi nhanh
Còn lại vệt son trên áo là của em đó (là của em đó)
Còn lại mùi hương quyến rũ là của anh đó, là của anh đó!
Gần hơn nữa đi, em chẳng muốn tỉnh giấc đâu
Hay ta cứ say hoài, để mai này chẳng xa rời nhau
Gần hơn nữa đi em chẳng muốn lạc mất nhau
Hay ta cứ say hoài
Hãy nói với em anh không hề say
Hãy nói với em anh chỉ giả vờ say
Hãy nói với em anh không hề say
Đôi tay anh đã ve vuốt
Anh không hề say
Do anh giả vờ say
Đôi tay anh đã ve vuốt sao gọi là say
Gần hơn nữa đi (hãy nói với em anh không hề say, chỉ giả vờ say)
Gần hơn nữa đi (hãy nói với em anh không hề say, chỉ giả vờ say)
Gần hơn nữa đi (hãy nói với em anh không hề say, chỉ giả vờ say)
Gần hơn nữa đi (hãy nói với em anh không hề say, chỉ giả vờ say)')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH56      ', N'Goi em di', N'TL07      ', N'Album29   ', N'CS29      ', N'TG52      ', N'HSX78     ', N'Tối hôm qua trong em tự dưng thật khác mà
Ngồi cạnh bên người xa lạ, oh mama
Và có lẽ sáng hôm nay nhịp tim đập khác thường
Kìa ai đây mà chung đường giờ lại vấn vương
Thì ra anh đấy mà chàng đẹp trai đêm qua
Lạnh lùng đến thế mà còn chưa biết tên nhau đâu
Đừng lặng im như gã khờ
Đừng giả vờ ngây thơ
Một một không tám không cầm máy lên đi anh
Gọi em đi (gọi em đi)
Gọi em đi
Gọi em đi (gọi em đi)
Gọi em đi
Gọi em đi tìm kiếm ai làm gì
Gọi em đi, gọi đi tìm kiếm ai làm gì
Gọi em đi, đi tìm kiếm ai làm gì
Oh my life
Và có lẽ sáng hôm nay nhịp tim đập khác thường
Kìa ai đây mà chung đường giờ lại vấn vương
Thì ra anh đấy mà chàng đẹp trai đêm qua
Lạnh lùng đến thế mà còn chưa biết tên nhau đâu
Đừng lặng im như gã khờ
Đừng giả vờ ngây thơ
Một một không tám không cầm máy lên đi anh
Gọi em đi, gọi em đi
Gọi em đi
Gọi em đi tìm kiếm ai làm gì
Gọi em đi, gọi em đi
Gọi em đi, đi tìm kiếm ai làm gì
Gọi em đi, gọi em đi
Gọi em đi
Gọi em đi tìm kiếm ai làm gì
Gọi em đi, gọi em đi
Gọi em đi, đi tìm kiếm ai làm gì
Gọi em đi đắn đo làm gì
Để nghe tiếng em cười
Gọi em đi đắn đo làm gì
Để nghe em than thở
Gọi em đi đắn đo làm gì
Để nghe tiếng em cười
Gọi em đi đắn đo làm gì
Nghe em than thở
Gọi em đi
Gọi em đi, cầm máy lên đi anh
Gọi em đi
Một một không tám không gọi em đi tìm kiếm ai làm gì
Gọi em đi
Gọi em đi, mạnh mẽ lên đi anh
Gọi em đi
Gọi em đi, gọi em đi tìm kiếm ai làm gì
Ah, gọi em đi, đi tìm kiếm ai làm gì
Ah, gọi em đi, đi tìm kiếm ai làm gì')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH57      ', N'Nếu', N'TL08      ', N'Album30   ', N'CS30      ', N'TG53      ', N'HSX79     ', N'Đêm anh nghe sao lạnh quá,
Buốt giá đôi bờ môi vì lời em hứa sẽ quay trở về,
Đợi hoài em trong u mê biết em giờ phương trời nao.
Nếu con tim anh gục ngã cố xóa bóng hình em
Dù tình yêu đó mong manh hi vọng
Đành vùi chôn bao yêu bước đi
Dù lòng anh vẫn.
Nhớ em đêm từng đêm,
Nhớ em đến từng giờ,
Chờ một giấc mơ em sẽ quay về,
Sưởi ấm trái tim cô đơn từng ngày,
Loay hoay từng đêm,
Không biết về đâu.
Nếu như một ngày mai,
Em không quay trở lại,
Thì lòng vẫn yêu em mãi không thôi,
Khi đã yêu một người nguyện lòng yêu mãi thôi,
Sẽ chẳng đổi thay dù em không quay về.
Sao cứ lạnh lùng, cứ thờ ơ
Để tim anh từng ngày mong nhớ ngẩn ngơ
Người yêu ơi, trong giấc mơ dài
Đêm anh nghe sao lạnh quá,
Buốt giá đôi bờ môi vì lời em hứa sẽ quay trở về,
Đợi hoài em trong u mê biết em giờ phương trời nao.
Nếu con tim anh gục ngã cố xóa bóng hình em
Dù tình yêu đó mong manh hi vọng
Đành vùi chôn bao yêu bước đi
Dù lòng anh vẫn.
Nhớ em đêm từng đêm,
Nhớ em đến từng giờ,
Chờ một giấc mơ em sẽ quay về,
Sưởi ấm trái tim cô đơn từng ngày,
Loay hoay từng đêm,
Không biết về đâu.
Nếu như một ngày mai,
Em không quay trở lại,
Thì lòng vẫn yêu em mãi không thôi,
Khi đã yêu một người nguyện lòng yêu mãi thôi,
Sẽ chẳng đổi thay dù em không quay về.
Nhớ em đêm từng đêm,
Nhớ em đến từng giờ,
Chờ một giấc mơ em sẽ quay về,
Sưởi ấm trái tim cô đơn từng ngày,
Loay hoay từng đêm,
Không biết về đâu.
Nếu như một ngày mai,
Em không quay trở lại,
Thì lòng vẫn yêu em mãi không thôi,
Khi đã yêu một người nguyện lòng yêu mãi thôi,
Sẽ chẳng đổi thay dù em không quay về.
Sao cứ lạnh lùng, cứ thờ ơ
Để tim anh từng ngày mong nhớ ngẩn ngơ
Người yêu ơi, trong giấc mơ dài')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH58      ', N'Quay về đi', N'TL08      ', N'Album30   ', N'CS30      ', N'TG54      ', N'HSX80     ', N'Đếm chiếc lá rơi ngoài hiên vắng
Có biết đâu em đã quá muộn màng
Một nửa thương nhớ anh mang trao người
Giờ mất nhau, tim có nhói đau?
Sẽ mãi mãi chỉ là cơn gió
Gió khẽ lay cho tim anh khẽ bồi hồi
Một nửa thương nhớ anh mang trao người
Để mất nhau tim nghe nhói đau
Quay về đi, quay về đi cho anh hết đợi chờ
Bao lời yêu trong lòng anh vẫn chưa nói thành lời
Vì sao ngày xưa khi bên nhau anh đâu có hiểu rằng
Một ngày mất nhau sẽ rất đau
Quay về đi, quay về đi bao yêu dấu ngày đầu
Mưa còn rơi hay lòng em vẫn cứ mãi nguyện cầu
Dù cho ngày sau không bên nhau xin mưa hãy một lần
Mưa ơi mang anh quay về đi
Sẽ mãi mãi chỉ là cơn gió
Gió khẽ lay cho tim em khẽ bồi hồi
Một nửa thương nhớ anh mang trao người
Để mất nhau tim nghe nhói đau
Quay về đi, quay về đi cho anh hết đợi chờ
Bao lời yêu trong lòng anh vẫn chưa nói thành lời
Vì sao ngày xưa khi bên nhau anh đâu có hiểu rằng
Một ngày mất nhau sẽ rất đau
Quay về đi, quay về đi bao yêu dấu ngày đầu
Mưa còn rơi hay lòng em vẫn cứ mãi nguyện cầu
Dù cho ngày sau không bên nhau xin mưa hãy một lần
Mưa ơi mang anh quay về đi
Quay về đi, quay về đi cho anh hết đợi chờ
Bao lời yêu trong lòng anh vẫn chưa nói thành lời
Vì sao ngày xưa khi bên nhau em đâu có hiểu rằng
Một ngày mất nhau sẽ rất đau
Quay về đi, quay về đi bao yêu dấu ngày đầu
Mưa còn rơi hay lòng em vẫn cứ mãi nguyện cầu
Dù cho ngày sau không bên nhau xin mưa hãy một lần
Mưa ơi mang em quay về đi')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH59      ', N'Ký ức của mưa', N'TL03      ', N'Album31   ', N'CS31      ', N'TG55      ', N'HSX37     ', N'Đến khi cơn mưa rơi mang theo dòng suy tư
Trôi qua đôi tay em ôm bao ngày mong manh
Giấc mơ hôm qua đôi ta trao nhau bao ngày bên mưa
Bao yêu thương, bao nhiêu kỉ niệm khi xưa
Thời gian trôi qua nơi đây nhưng em nghe nào đâu hay
Cố đếm những cơn mưa rơi thật buồn đêm nay
Lấp đi xua tan đi cơn mưa ta quay lại bên nhau
Khi anh mang cho em bao niềm thương đau
Cười vì một người không thật lòng yêu em
But why you lie, I cry
Khi con tim anh nay đã dành cho ai
Just smile, goodbye
Walk in the rain, I''m walking in the pain
Để nỗi đau trong cơn mưa trôi đi bao nước mắt
Của giấc mơ hôm nay đang tàn phai
Có lúc nào con tim anh nghĩ lại
Tell me our love, you were came to hurt me
Nếu lúc xưa em trao anh từng ngọt ngào kí ức
Hãy để cơn mưa kia mang dần đi, cuốn đi xóa đi mãi
Hey listen to me boy
I just want tell you something
Còn được gì ngoài thời gian khi anh luôn kề bên tai
Từng lời ngọt ngào yêu thương để rồi người lại "Say goodbye!"
Giọt nước mắt ngắn dài, còn gì để nghĩ lại
Một thời gian quá bi hài
Oh! Never my mind
Đến khi cơn mưa rơi mang theo dòng suy tư
Trôi qua đôi tay em ôm bao ngày mong manh
Giấc mơ hôm qua đôi ta trao nhau bao ngày bên mưa
Bao yêu thương, bao nhiêu kỉ niệm khi xưa
Thời gian trôi qua nơi đây nhưng em nghe nào đâu hay
Cố đếm những cơn mưa rơi thật buồn đêm nay
Lấp đi xua tan đi cơn mưa ta quay lại bên nhau
Khi anh mang cho em bao niềm thương đau
Cười vì một người không thật lòng yêu em
But why you lie, I cry
Khi con tim anh nay đã dành cho ai
Just smile, goodbye
Walk in the rain, I''m walking in the pain
Để nỗi đau trong cơn mưa trôi đi bao nước mắt
Của giấc mơ hôm nay đang tàn phai
Có lúc nào con tim anh nghĩ lại
Tell me our love, you were came to hurt me
Nếu lúc xưa em trao anh từng ngọt ngào kí ức
Hãy để cơn mưa kia mang dần đi, cuốn đi xóa đi mãi
And now
I know I will forget everything about you
Because you hurt me
Còn được gì ngoài thời gian khi anh luôn kề bên tai
Từng lời ngọt ngào yêu thương để rồi người lại "Say goodbye!"
Giọt nước mắt ngắn dài, còn gì để nghĩ lại
Một thời gian quá bi hài
Oh! Never my mind
Ký ức của mưa đã xóa tan thật rồi
Và giọt nước mắt của em nay đã không còn rơi
Sẽ cố gắng bước đi trên đôi chân mệt nhoài
Now I will try, and I won''t cry
Walk in the rain, I''m walking in the pain
Để nỗi đau trong cơn mưa trôi đi bao nước mắt
Của giấc mơ hôm nay đang tàn phai
Có lúc nào con tim anh nghĩ lại
Tell me our love, you were came to hurt me
Nếu lúc xưa em trao anh từng ngọt ngào kí ức
Hãy để cơn mưa kia mang dần đi, cuốn đi xóa đi mãi')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH60      ', N'Chỉ em với mưa', N'TL03      ', N'Album31   ', N'CS31      ', N'TG56      ', N'HSX36     ', N'Góc phố này nơi mình quen nhau
Có những chiều mưa rơi ướt vai
Có những lần mình hẹn ngày mai
Hẹn yêu mãi hẹn chung lối đi...
Có một lần anh chẳng qua nữa
Cứ thế xa... xa mãi nơi em,
để những mùa nhuộm màu thương nhớ
Phố xa xôi đã vãng người qua...
Còn lại anh còn bao yêu thương
Nơi góc phố bóng em xa mờ
Và con tim anh dành nơi ai
Là bờ vai là màu tóc rối...
Mùa thu sang hàng cây xao xác
Lá rơi đầy đã qua ngày xanh
Ngược thời gian ngược về quá khứ
Có trái tim đã hóa vụn vỡ...
Chắc bây giờ nơi này yên ấm
Nếu như a không nói cách xa
để những mùa nhuộm màu thương nhớ
Phố xa xôi đã vãn người qua')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH61      ', N'Gửi người yêu cũ', N'TL03      ', N'Album32   ', N'CS32      ', N'TG57      ', N'HSX35     ', N'Người hỏi sau khi chia tay
Em sống vui, hay đang buồn
Rồi làm như anh lo lắng, anh quan tâm
Và hỏi sau khi chia tay
Em đã yêu thêm thêm một người khác
Rồi thản nhiên sao có thể không biết là
Em học yêu bản thân hơn
Em học quen với cô đơn
Cố quên một điều mà em ngỡ là mãi mãi
Anh tàn nhẫn bỏ em đi
Không màng đến chút nghĩ suy
Để em ở lại nhìn đâu cũng đau
Vì em yếu đuối
Muôn đời em vẫn yếu đuối
Em che hết đi bằng những gượng cười
Chẳng để ai nhận ra
Rằng em yếu đuối
Muôn đời em vẫn yếu đuối
Anh không phải em đâu thể hiểu được
Nếu như không mạnh mẽ em biết phải thế nào
Người hỏi sau khi chia tay
Em sống vui, hay đang buồn
Rồi làm như anh lo lắng, anh quan tâm
Và hỏi sau khi chia tay
Em đã yêu thêm thêm một người khác
Rồi thản nhiên sao có thể không biết là
Em học yêu bản thân hơn
Em học quen với cô đơn
Cố quên một điều mà em ngỡ là mãi mãi
Anh tàn nhẫn bỏ em đi
Không màng đến chút nghĩ suy
Để em ở lại nhìn đâu cũng đau
Vì em yếu đuối
Muôn đời em vẫn yếu đuối
Em che hết đi bằng những gượng cười
Chẳng để ai nhận ra
Rằng em yếu đuối
Muôn đời em vẫn yếu đuối
Anh không phải em đâu thể hiểu được
Nếu như không mạnh mẽ em biết phải thế nào
Vì em yếu đuối
Muôn đời em vẫn yếu đuối
Em che hết đi bằng những gượng cười
Chẳng để ai nhận ra
Rằng em yếu đuối
Muôn đời em vẫn yếu đuối
Anh không phải em đâu thể hiểu được
Nếu như không mạnh mẽ em biết phải thế nào
Nếu như không mạnh mẽ em biết phải thế nào')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH62      ', N'Càng trưởng thành càng cô đơn', N'TL03      ', N'Album32   ', N'CS32      ', N'TG58      ', N'HSX33     ', N'Nhìn lại lâu nay em vẫn cứ thế
Gồng cả đôi vai gánh vác thế giới
Chuyện ở bên ai em không nghĩ tới
Chỉ muốn an nhiên không muộn phiền
Mỗi ngày trôi đi cũng không khác mấy
Lầm lũi cô đơn ai ai cũng thấy
Vài lần yêu đương em đau thế đấy
Tự hứa không yêu thêm một ai
Nhìn chung quanh dường như chỉ thấy
Có mỗi riêng em trên thế gian
Và cuộc sống đâu thể sẽ luôn công bằng đúng sai
Rồi những đêm thẫn thờ trống vắng
Lòng bỗng nhớ rằng đã bao lâu, mình chẳng thể yêu ai
Có phải càng lớn khôn
Càng thêm thấy cô đơn
Càng né tránh những nơi ồn ào
Tự mình bước qua giông bão
Có phải càng lớn khôn
Người ta sẽ cô đơn
Vì tình yêu chính là điều dễ dàng
Đổi thay nhất trên đời
Giả vờ con tim như không cảm xúc
Giả vờ nhân duyên vẫn chưa đến lúc
Giả vờ cô đơn vẫn luôn hạnh phúc
Dù khóc cho qua đi sợ hãi
Nhìn chung quanh dường như chỉ thấy
Có mỗi riêng em trên thế gian
Và cuộc sống đâu thể sẽ luôn công bằng đúng sai
Rồi những đêm thẫn thờ trống vắng
Lòng bỗng nhớ rằng đã bao lâu, mình chẳng thể yêu ai
Có phải càng lớn khôn
Càng thêm thấy cô đơn
Càng né tránh những nơi ồn ào
Tự mình bước qua giông bão
Có phải càng lớn khôn
Người ta sẽ cô đơn
Vì tình yêu chính là điều dễ dàng
Đổi thay nhất trên đời
Đã có lắm quá khứ đắng cay dày xéo em vẫn không quên
Bao nhiêu năm sợ hãi cơn đau dìm em vào sâu bóng tối
Có phải càng lớn khôn
Càng thêm thấy cô đơn
Càng né tránh những nơi ồn ào
Tự mình bước qua giông bão
Có phải càng lớn khôn
Người ta sẽ cô đơn
Vì tình yêu chính là điều dễ dàng
Đổi thay nhất trên đời
Tình yêu chính là điều dễ dàng
Đổi thay nhất trên đời')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH63      ', N'Người nào đó', N'TL07      ', N'Album33   ', N'CS33      ', N'TG59      ', N'HSX75     ', N'Tình cờ mình quen biết
Vào một ngày trời xanh nắng
Buông xuôi nơi con tim
Đưa đôi chân em đang bước đi với những câu chuyện buồn
Đừng nhìn về quá khứ
Đừng tự làm nhòe đôi mắt mình
Mong em sẽ vui hơn, khi phía trước đường dài kia sẽ mãi luôn
Có một người lặng lẽ đứng bên em vô hình
Giấu đi những tâm tư của mình và
Nghĩ đến em từng thương nhớ ấy đang đong đầy
Một người lặng lẽ sống bên em chân thành
Đến khi vết thương trong em lành lại
Gió sẽ mang niềm vui ấm áp hơn mỗi ngày
Và em sẽ là giấc mơ mỗi đêm anh trông chờ
Dù anh không thể đến bên em và trao những ngọt ngào
Thì em hãy luôn sống những phút giây em yêu đời
Và một người nào đó sẽ luôn theo sau những bước chân
Dẫn lối em đến nơi bình yên
Beside your heart, beside your tears
I love you so much, so I stay here
Anh đứng đây nhìn cuộc sống em tràn đầy
Mà tại sao những điều trống rỗng lại làm vai em lạnh gầy?
Gió bấc nơi đây, xoa dịu vòng tay
Anh chưa gặp người con gái nào làm trái tim này phải say
Everyday, everynight, I can''t say anything in my mind
Có một người lặng lẽ đứng bên em vô hình
Giấu đi những tâm tư của mình và
Nghĩ đến em từng thương nhớ ấy đang đong đầy
Một người lặng lẽ sống bên em chân thành
Đến khi vết thương trong em lành lại
Gió sẽ mang niềm vui ấm áp hơn mỗi ngày
Và em sẽ là giấc mơ mỗi đêm anh trông chờ
Dù anh không thể đến bên em và trao những ngọt ngào
Thì em hãy luôn sống những phút giây em yêu đời
Và một người nào đó sẽ luôn theo sau những bước chân
Dẫn lối em đến nơi bình yên
Đi theo sau với những giấc mơ
Chỉ cần thấy những nỗi buồn em tan biến đi
Và hãy mãi nở nụ cười trên môi mềm
Cầu mong nơi ấy
Bình yên sẽ khiến những rung động trở về
Và em sẽ là giấc mơ mỗi đêm anh trông chờ
Dù anh không thể đến bên em và trao những ngọt ngào
Thì em hãy luôn sống những phút giây em yêu đời
Và một người nào đó sẽ luôn theo sau những bước chân
(Luôn theo sau những bước chân dẫn lối em đến nơi bình yên)
Và em sẽ là giấc mơ mỗi đêm anh trông chờ
Dù anh không thể đến bên em và trao những ngọt ngào (để trao những ngọt ngào)
Thì em hãy luôn sống những phút giây em yêu đời
Và một người nào đó sẽ luôn theo sau những bước chân
Dẫn lối em đến nơi bình yên')
GO
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH64      ', N'Cơn mưa cuối', N'TL07      ', N'Album33   ', N'CS33      ', N'TG60      ', N'HSX75     ', N'Lâu nay ta quên nhau chưa?
Lời ca anh viết vẫn đó dấu vết cơn mưa
Thà là em xoá hết để cố 1 lần đau
Nhưng em đâu biết có phút chốc, ta cần nhau...
Có đôi lần anh dấu
Cho anh là hoạ sỹ em là hoa, babe
Xem như mình đang vẽ lên bình yên, babe
Anh đang tô màu lên mắt em
Một màu xanh rất hiền hoà...
Anh luôn nhìn cuộc sống như vần thơ, babe
Chơi vơi trong ngàn câu chữ như là mơ, babe
Nghiêng nghiêng đôi vai để em gối lên hằng đêm
It''s gonna be alright, girl
Nếu cứ sống cho những mê man chìm sâu
Rồi nhận ra em đâu còn đây, sương khói giăng đầy
Bàn chân anh đi tiếp đi tìm em, trong màn mưa, mưa lạnh hơn
Làm sao xoá hết dấu vết em nơi tim này?
Giấu em vào niềm tin mình
(Mưa nhắc anh đừng)
Giấu em trong đôi mắt tìm
Vì mưa biết nơi anh giờ này
It''s nothing, it''s nothing in mah heart... in mah heart
Và mưa cũng giống em, lạnh lùng vô tình
Giống em, luôn yêu chính mình
Hãy cứ để mưa rơi nhẹ nhàng
It''s nothing, it''s nothing in mah heart... in mah heart
Là nước mắt anh đó không phải mưa đâu
Góc đường nào ta đón đưa nhau
Phố nào đã ta cười nói
Khung trời nào bên vấn vương đầu
Gió nào trên tóc em mượt
Thu nào ta nói yêu nhau
Cơn mưa nào môi ta mềm ướt
Cơn mưa nào đã mang thương... Hold up
Cơn mưa đó lại vừa qua
Mang yên bình nơi anh đi thật xa
Anh đã buồn thật nhiều cho em vui
Giờ nụ cười trên môi là của người ta
Anh sẽ đau nỗi đau cho hai đứa
Thêm chút buồn có đáng gì đâu
Anh sẽ khóc luôn phần đôi mi em
Nụ cười đó em dành cho người sau
Anh chỉ muốn nói là
Baby im sorry, buồn vương lên trên mi hiền
Tâm tư với nỗi buồn này em không gánh phải chịu
Anh không muốn nói, chỉ vì không muốn em biết rằng
Anh care nhất nhiều và anh cũng phút có yếu lòng
Sau bình yên là đổ vỡ
Trước cô đơn là nỗi nhớ
Em, giờ anh đang nhớ nhưng không muốn cô đơn
Nên sẽ dừng ở đây mãi, chắc sẽ bớt đau hơn
Giấu em vào niềm tin mình
(Mưa nhắc anh đừng)
Giấu em trong đôi mắt tìm
Vì mưa biết nơi anh giờ này
It''s nothing, it''s nothing in mah heart... in mah heart
Và mưa cũng giống em, lạnh lùng vô tình
Giống em, luôn yêu chính mình
Hãy cứ để mưa rơi nhẹ nhàng
It''s nothing, it''s nothing in mah heart... in mah heart
Nếu lỡ bước xa xôi, em đi cùng mưa ấy có lẽ quên rồi
Mình anh vẽ tiếp những chân trời
Rồi vò nát khi mây đen về giăng khắp lối
Em chưa bao giờ biết
Uhhh, và mưa chẳng bao giờ muốn ngừng
Còn anh cứ dối, lòng mình (lòng mình)
Giấu em vào lòng mình
Chờ 1 ngày mưa cuối, đến cuốn lấy em đi, far away...
Giờ đây anh không là gì
Nơi đây vẹn nguyên như khi em chưa từng đi
Sau bao cố gắng vẫn chỉ một mình anh
Nơi đây cùng cơn mưa kia, tí tách
Sau bao cố gắng còn lại nơi đây vẫn chỉ anh và cơn mưa
Phố dường như buồn hơn xưa
Ngày em đi anh loanh quanh trong quá khứ
Tìm nhưng chẳng còn ai nữa
Anh hy vọng đây là cơn mưa cuối để bắt đầu ngày nắng cho nơi kia em vui
Nơi đây mọi thứ như mờ nhạt mưa về bên khung cửa vẫn chỉ riêng anh thôi
Nếu biêt trước hôm nay em sẽ đi ngày đó anh vẫn yêu và nhiều hơn thế nữa
Nếu biết trước hôm nay em sẽ đi ngày đó anh đã không gieo buồn lên đôi mi
Và anh mong cơn mưa này sẽ qua cơn đau này sẽ qua và đừng quay về nữa
Dù là ai trong ta đã có lỗi quá khứ đó vẫn đẹp như em và cơn mưa
Giấu em vào niềm tin mình
(Mưa nhắc anh đừng)
Giấu em trong đôi mắt tìm
Vì mưa biết nơi anh giờ này
It''s nothing, it''s nothing in mah heart... in mah heart
Và mưa cũng giống em, lạnh lùng vô tình
Giống em, luôn yêu chính mình
Hãy cứ để mưa rơi nhẹ nhàng
It''s nothing, it''s nothing in mah heart... in mah heart')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH65      ', N'Đã lỡ yêu em nhiều', N'TL01      ', N'Album33   ', N'CS33      ', N'TG61      ', N'HSX75     ', N'Đã lỡ yêu em nhiều rồi thì anh chỉ biết ngắm mưa
Nhìn qua hàng cây được bao nhiêu hạt mưa
Là trong anh được bấy nhiêu nỗi nhớ em
Đã lỡ yêu em nhiều rồi thì anh chỉ biết đếm sao
Nhìn lên trời cao được bao nhiêu vì sao
Là trong lòng anh còn bấy nhiêu những nỗi lo
Sợ mình đánh mất em khi, thu vừa sang, lá xanh bỗng úa vàng
Khi mưa còn chưa tới, em thay người yêu mới, oh no no
Sợ mình sẽ khiến em yêu phai nhạt hơn giữa mênh mông bộn bề.
Em ơi chờ anh với
(Chỉ biết nói cho em nghe vậy thôi.)
Vì đã lỡ yêu em rồi, chẳng dám hứa xa xôi
Cứ nhắm mắt em lại và feel my love
Dù nắng mưa bao mùa
Thì tình anh vẫn luôn đây mà
Chẳng phải kiếm đâu xa
Vẫn giữ đó bầu trời của riêng chúng ta
Để gió mang đi về một nơi không người.
Đã lỡ yêu em nhiều rồi thì anh chỉ biết thế thôi
Dù mai về sau mình không bên cạnh nhau
Dù tim mình đau khi biết em đã lỡ yêu người
Đã lỡ yêu em nhiều rồi thì anh sẽ bất chấp luôn
Dù mưa, dù giông, dù sông sâu, biển xa
Dù nắng cháy anh cũng không hề lo
Chỉ sợ mình đánh mất em khi, thu vừa sang, lá xanh bỗng úa vàng
Khi mưa còn chưa tới, em thay người yêu mới, oh no no
Sợ mình sẽ khiến em yêu phai nhạt hơn giữa mênh mông bộn bề
Em ơi chờ anh với
(Chỉ biết nói cho em nghe vậy thôi)
Vì đã lỡ yêu em rồi, chẳng dám hứa xa xôi
Cứ nhắm mắt em lại và feel my love
Dù nắng mưa bao mùa
Thì tình anh vẫn luôn đây mà
Chẳng phải kiếm đâu xa
Vẫn giữ đó bầu trời của riêng chúng ta
Để gió mang đi về 1 nơi không người
Đã lỡ yêu. nah nah nah
U know, oh lỡ yêu... nah nah nah
I love you so, bei I love you so
Mình phải bước chậm lại vì ngày mai rất dài
Đã lỡ yêu. nah nah nah
U know, oh lỡ yêu... nah nah nah
I love you so, bei I love you so
Mình phải bước chậm lại, chậm lại.
Vì biết đâu, sớm mai thức dậy
Em không còn đây ôm anh, nhẹ hôn anh
Để tình ta cứ trôi lững lờ
Chờ giông và bão cuốn đi bất ngờ
Rồi lỡ đâu, giấc mơ không thành
Em không còn kề vai anh, tình mong manh
Một người đứng cứ trông với chờ, người kia thì ôm giấc mơ.
Vì đã lỡ yêu em rồi, chẳng dám hứa xa xôi
(Chẳng dám hứa thêm gì nữa no no no no no)
Cứ nhắm mắt em lại và feel my love
(Can you feel my love, love bei?)
Dù nắng mưa bao mùa
Tình anh vẫn đây mà
Chẳng phải kiếm đâu xa (Love U so much)
Vẫn giữ đó bầu trời của riêng chúng ta (Love U so much)
(Love U so much, I love U so much)
Để gió mang đi về một nơi không người.
Đã lỡ yêu, vì một người lỡ yêu, lỡ yêu.')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH66      ', N'Sao cũng được', N'TL07      ', N'Album34   ', N'CS34      ', N'TG62      ', N'HSX75     ', N'Anh có thể chờ em từ sáng đến tối
Chỉ để thấy em trong bộ đồ anh yêu
Có em ngồi phía sau
Đi đâu cũng được
Em không cần mang son mỗi khi gặp anh
Năm phút sau son sẽ mờ ngay thôi
Vì em thích anh hôn lên môi
Nên đâu cũng được
Em không cần mang makeup từ sáng đến tối
Anh trót yêu luôn mộc mạc nơi em
Em vẫn lung linh khi cần
Em sao cũng đẹp
Rồi mai này ta già đi
Em muốn trước sân nhà đầy hoa
Anh nói em còn bên anh
Thì anh sao cũng được
Anh có thể chờ em từ sáng đến tối
Chỉ để thấy em trong bộ đồ anh yêu
Có em ngồi phía sau
Đi đâu cũng được
Em không cần mang son mỗi khi gặp anh
Năm phút sau son sẽ mờ ngay thôi
Vì em thích anh hôn lên môi
Nên đâu cũng được
Em không cần mang makeup từ sáng đến tối
Anh trót yêu luôn mộc mạc nơi em
Em vẫn lung linh khi cần
Em sao cũng đẹp
Rồi mai này ta già đi
Em muốn trước sân nhà đầy hoa
Anh nói em còn bên anh
Thì anh sao cũng được
Anh nói em còn bên anh
Thì anh sao cũng được')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH67      ', N'Bigcityboy', N'TL07      ', N'Album34   ', N'CS34      ', N'TG62      ', N'HSX75     ', N'Em on top, không phải trending
Không phải YouTube, không phải trên Zing
Anh on top, em ở trên anh
Beat Touliver drop người ta gọi tên anh
Big city
Big city boi
Big city
Big city boi
Big city
Big city-Spacespeakers in da house make some mother fucker noise ay
Thả tim đầy story em (thả)
Nhắn tin đầy trong DM (slide)
Có phiền thì sorry em (sorry)
Đón, 10 giờ pm? (ten)
Yea em thích coi sea game (dô)
Hợp âm anh thích là Cm (đô)
Xe em thích BM
Việc anh thích là see em
Trói em bằng cà vạt (trói)
Penhouse trên Đà Lạt (đồi)
Nếu mà ngoan em sẽ bị thương (đôi)
Nếu mà hư em sẽ được phạt
K-r-a-z-y about u
Hay là mang thêm friend đi không sao đâu
Yea anh không thường say yes
Với em không thể say no
Nhìn anh lúc nào cũng fresh
Make them haters say wow
Big city
Big city boi
Big city
Big city boi
Big city
Big city-Spacespeakers in da house make some mother fucker noise
Shall we up all night, what u gonna do
Ngay sát DJ, what u gonna do
Them bottles keep coming, what u gonna do
Thành phố này không ngủ, tell me what u gonna do, ay
Từ lầu cao cho tới cuối ngõ
Mang chất đường phố về tận lối nhỏ
Đáy quần vẫn dưới gối oh
Rap game này anh đại diện không thể chối bỏ
Nhạc đơn giản, không phải cầu kì
Đừng hỏi anh tình yêu màu gì (không biết)
Mấy thằng ghét anh muốn spotlight
Sorry anh là cầu chì
Không lòng vòng anh như Hải Phòng (gang gang)
Thích anh rồi phải không? (gia)
Không cần vội em như Hà Nội (trưởng)
Cần thêm thời gian em mới trải lòng
Cần em như anh Cần Thơ (Cần Thơ)
Thật ra anh chỉ muốn em gần hơn (gần chút)
Thật ra anh chỉ muốn ta tương tác
Anh còn chưa ngủ, em nói ngừng mơ
Không chịu ngủ anh như Sài Gòn (Sài Gòn)
Party với bạn all night long (all night)
Nếu mà đó là, đó là thứ em muốn (tell me)
Anh có thể làm cho em, cho em hài lòng
Nghiện thuốc có thể Lào Cai (cai)
Nhưng nghiện em không thể nào cai (không cần)
Trai hư anh không phải diễn
Nhưng trai tốt anh phải vào vai
Big city
Big city boi
Big city
Big city boi
Big city
Big city-Spacespeakers in da house make some mother fucker noise
Shall we up all night, what u gonna do
Ngay sát DJ, what u gonna do
Them bottles keep coming, what u gonna do
Thành phố này không ngủ, tell me what u gonna do, ay
Big city
Big city boi
Big city
Big city boi
Big city
Big city-Spacespeakers in da house make some mother fucker noise
Shall we up all night, what u gonna do
Ngay sát DJ, what u gonna do
Them bottles keep coming, what u gonna do
Thành phố này không ngủ, tell me what u gonna do, ay')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH68      ', N'Nến và hoa', N'TL07      ', N'Album35   ', N'CS35      ', N'TG63      ', N'HSX75     ', N'Buccellati lấp lánh ươm lên tai với nét mặt rạng ngời
Maserati hai cánh ngăn cho em tách biệt đường đời
Lướt xuống phố không phanh băng qua nhanh khuôn viên mỗi tối
Dinh cơ dăng tay sẵn lối, nơi xa hoa lộng lẫy gọi mời
Đố ai bằng em buông dăm ba câu yêu thương bao anh xin chết
Ngắm em mà xem đôi chân thon khoe ra đâu ai chịu được nhiệt
Ngấm hơn cả men em gieo cơn say nên lâu nay không ai tiếc
Hàng đống quà tặng em cho từng đêm đặc biệt
"Em chỉ cần nếm mùi tiền là quên hết muộn phiền
Thế nên anh làm em xao xuyến"
Một lời em nói trong đêm mang tới mây đen
Vùi lấp đi cho em mất tầm nhìn
Vậy thì cần gì nến và hoa
Vì em cũng chỉ đến rồi xa
Vậy thì cần gì nến và hoa
Khi chính em là một món quà
Và ngọn đèn khuya cũng đã tắt, từng lời đắm đuối cũng đã mệt
Chỉ còn hơi men lay lắt gọi mời hắn tới sát bên em
Ôi phong thái này, quần áo này lại ngập đầy mùi giàu sang
Cho em đắm say, em ngất ngây và rồi đôi mắt ấy lịm dần
Chợt giật mình nhìn quanh khi tỉnh giấc
Em bị trói chặt không mảnh vải che thân
Cố gắng tìm thật nhanh một lối thoát nhưng dường như hơi thở của hắn đã xán đến lại gần
Những vết cứa trên da vết tím bầm nói lên điều nhắc nhở về sự thật tàn nhẫn
Em bây giờ chỉ còn là chiến lợi phẩm trong một kiếp đời hoang dâm
"Em chỉ cần nếm mùi tiền là quên hết muộn phiền
Thế nên anh làm em xao xuyến"
Một lời em nói trong đêm mang tới mây đen
Vùi lấp đi cho em mất tầm nhìn
Giờ thì cần gì nến và hoa
Vì em cũng chỉ đến rồi xa
Giờ thì cần gì nến và hoa
Khi chính em là một món quà')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH69      ', N'Yêu 5', N'TL07      ', N'Album35   ', N'CS35      ', N'TG64      ', N'HSX38     ', N'Xin những bối rối này cứ thế lên ngôi
Xin con tim rẽ lối tìm giây phút nghẹn lời
Cho thêm chơi vơi, để những ánh mắt đôi môi
Chạm nhau mang theo gọi mời, o-oo-oh
Xin cho ta tan vào những đắm đuối miên man
Khi em ghé ngang đời chợt mang sắc hương thiên đàng
Và cho những ấm áp lại đến lấp kín nhân gian
Ngày ta yên vui cùng nàng
Nhẹ nhàng âu yếm giữa chốn mơ
Cùng tìm kiếm bao ý thơ
Để đắm say trong tiếng nhạc du dương
Hồn sa theo bước ta ngẩn ngơ
Dù ngàn kiếp ta vẫn chờ
Chỉ cần có phút giây này trao yêu thương
''Cause, baby, it''s always you
It''s always you
It''s always you
It''s always you, it''s always you
''Cause, baby, it''s always you
It''s always you
It''s always you
It''s always you, it''s always you
Ta như đi qua hết bao nhiêu mê say trên đời
Như yêu thêm cả nghìn kiếp khi ta một giây bên người
Vì chỉ cẩn một ánh nhìn mà em trao
Là tuổi xuân của ta như hóa được thành chiêm bao
Với mỗi sáng thức giấc nghe em bên ta vui cười
Cho đêm ta ngây ngất, ru tai êm qua đôi lời
Đầy ngọt ngào và trong veo, cùng hòa làm trăng sao
Dìu dắt đôi tim bên nhau đi theo bao yêu thương dâng trào
Và ta xin đánh đổi một rừng tia nắng để lấy chút hơi ấm của em
Xin đổi đi hết tiền bạc danh tiếng, những thứ hàng trăm người thèm
Bởi cả ngàn điều phù phiếm đâu bằng một thoáng môi mềm
Khi đời này sẽ mang đầy nuối tiếc nếu không có nàng ở bên
Nhìn em ta mới thêm yêu từng khoảnh khắc
Mang hết tương tư giấu vào theo từng bản nhạc
Để mai này tình nở như muôn hoa không tàn sắc
Lưu giữ mãi nơi này một câu chuyện ngàn năm
Nhẹ nhàng âu yếm giữa chốn mơ
Cùng tìm kiếm bao ý thơ
Để đắm say trong tiếng nhạc du dương
Hồn sa theo bước ta ngẩn ngơ
Dù ngàn kiếp ta vẫn chờ
Chỉ cần có phút giây này trao yêu thương
It''s always you, it''s always you
It''s always you
It''s always you
It''s always you, it''s always you')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH70      ', N'Công', N'TL02      ', N'Album36   ', N'CS36      ', N'TG65      ', N'HSX39     ', N'I''ma young Vietnamese lady who''s this?
(Who''s this? Who''s this?)
I''ma young Vietnamese lady who''s this?
(Ai đó? Ai đó?)
Real Saigonese pop showbiz don''t fit!
(Real Saigonese pop showbiz don''t fit!)
Real Saigonese pop showbiz don''t fit!
(Real Saigonese pop showbiz don''t fit!)
Công việc không nó cũng bình thường
Cộng với tình bạn nó tốt hơn
Công việc xong mỗi thằng một đường
Công việc với bạn một trăm chương
Công mà thêm chấm là cộng
Công việc không cấm người xung phong
Công việc cuối tháng là thêm phong bì
Công đưa cho người ta là ra sông
Đưa cho người ta, công bao ngày qua (là ra sòng)
Đưa cho người ta, công bao ngày qua (là ra sòng)
Đưa cho người ta, công bao ngày qua (là ra sòng)
Đưa cho người ta, công bao ngày qua (là ra sòng)
No I don''t need no name for our friendship
The middle finger nails are french tips
They did not eat with me when I fail
Now I get up again saying "Hi Tèo!"
Đời cần gì một cái tên cho tình bạn mình
Thông minh hay không đâu cần chứng minh như Trạng Quỳnh
Không cần đêm khi chờ phone của ai
Speed dial number one ey, tôi là tổng đài
Càng nói nhiều, càng ít làm, càng chán
Càng kiểm soát, càng mất kiểm soát
Càng nói nhiều, càng ít làm, càng chán
Càng kiểm soát, càng mất kiểm soát
I''ma young Vietnamese lady, who''s this?
25 fo life not a cookie cutter bitch
The modern H-C-M-C, deep within is the real Saigonese
Pop showbiz don''t fit
I''ma young Vietnamese lady, who''s this?
25 fo life not a cookie cutter bitch
The modern H-C-M-C, deep within is the real Saigonese
Pop showbiz don''t fit
Đời nghệ sỹ sướng ca vô loài?
Ở đời có mấy thằng cha có mấy điệp khúc ca hoài
Stereotype not my social life
In fact you better say goodbye to this genocide
I might made a lil bit of money
Everyday out with a bag of cookies
I was hungry, worry bout the blurry future
All I knew was to make it in a hurry
So how do I see my destiny when the amount of negativities speak to me
Er''ryday Google Translate: "Fuck what they know!"
I believe the answer you know
You are some fucked up homie
But I ain''t give up homie
You got your world I got my world
I would never judge ya homie.
When you get high on ya ego
Oh ain''t you tired people
Cuz I don''t need the tittle to read the bible
Just wanna be enlighten yo
Người nào mà có đường bay xa
Mà lại không nhớ ngày hôm qua
Nhịn người nhiều quá, nhiều người làm quá
Nụ cười gì mà phá ngày đêm ra
Nhưng sao không sống ngày hôm nay
Mà làm bạn với còng hai tay
Nhịn người nhiều quá, nhiều người làm quá
Nụ cười gì mà phá ngày đêm ra
Càng nói nhiều, càng ít làm, càng chán
Càng kiểm soát, càng mất kiểm soát
Càng nói nhiều, càng ít làm, càng chán
Càng kiểm soát, càng mất kiểm soát
Imma young Vietnamese lady, who''s this?
25 for life not a cookie cutter bitch
The modern H-C-M-C, deep within is the real Saigonese
Pop showbiz don''t fit
Imma young Vietnamese lady, who''s this?
25 for life not a cookie cutter bitch
The modern H-C-M-C, deep within is the real Saigonese
Pop showbiz don''t fit
Đời nghệ sỹ sướng ca vô loài
Ở đời có mấy thằng cha có mấy điệp khúc ca hoài
Stereotype not my social life
In fact you better say goodbye to this genocide
Imma young Vietnamese lady, who''s this?
Imma young Vietnamese lady, who''s this?
Imma young Vietnamese lady, who''s this?')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH71      ', N'Chớ không', N'TL02      ', N'Album36   ', N'CS36      ', N'TG66      ', N'HSX41     ', N'Hi, bao nhiêu lâu chưa gặp!
Năm nay 25 hay 30, 35?
Thirty under thirty hay Suboi đi xin săm.
Ai nói giấc mơ đã chết khi ta qua 25?
Opp!
Thôi ta đâu quá quan tâm.
Feeling myself như phụ nữ của năm.
I''m really really hot, mic gặp beat nam châm.
And my flow như mưa lì xì.
Em Supa Dupa fly như má tui missy.
Nhịp tim phải thót cho em ít oxy.
Hip thì phải hop chỉ có nhất không có nhì.
Anh muốn hôn đôi môi em, đôi môi em whisky, tasty.
Đi trên mainstream hay là under.
Đời đã quá hẹp con nương tựa nhà thờ.
Phát ván cờ này chỉ có freedom mà thôi.
Tên tôi là Suboi đưa thế giới bạn vào nôi.
Những thứ kia không rơi xuống đây như cho không.
Và thế giới này như sương mai bay trong gian- không.
Anh ơi anh có vui không baby
Anh ơi anh có vui không baby
Leo tháng leo thang
Vô công ty cho thi đua
Theo tháng theo thang
Kêu talent vô phân bua
Nói bao nhiêu khi mà tiếng nói bay xung quanh hai bên tai.
Hay là tiếng nói vang chông chanh như Lý Thông trong tâm ai?
Cốc, Cốc
Ai gọi đó? - Tôi là Thỏ
Nếu là Thỏ - Cho xem tai
Nếu ba gai - Thôi bye bye
Hôm nay thứ hai tôi đi làm, vô càm ràm, nói về mấy thứ đau cả hàm
Và chúng ta đã hơn 25 yah
Những thứ kia không rơi xuống đây như cho không.
Và thế giới này như sương mai bay trong gian- không.
Anh ơi anh có vui không baby
Anh ơi anh có vui không baby
Những thứ kia không rơi xuống đây như cho không.
Và thế giới này như sương mai bay trong gian- không.
Anh ơi anh có vui không baby
Anh ơi anh có vui không baby
Nghi ngờ điều mình nói
Tin vào điều mình làm
Qua từng lần mình đói
Phim của những người phàm
Khi tôi rờ vô túi nỗi lo tôi đếm từng tờ
Vậy mà đếm không hết ước mơ (!) -
Đôi khi không có bún bò cho mày no nê
Mồ hôi mồ kê đói mì gói cũng ô kê
Ô kê, gì cũng được anh ơi
Cho em vô bưng bê lương xi nhê
Cho tiền nhà, mỗi sáng ly cà phê Ban Mê
"Can I be the C.E.O of your company?
Can I sell you out but you still be friend with me?
Can I can be oh! Oh Can I can I? ..."
Can I can be oh! Oh Can I can I?
Tôi có phải sắt đá đâu mà - giả vờ
Ngồi Trái Đất này là mình chúng mình đang ở nhờ
Tay chân hoạt động, tim đập, hai mũi thở
Hồi đó cũng nằm coi mấy thứ ởm dở
Rồi khen mình xuất sắc! Ờ thay vì cân nhắc
Ờ tại vì check yourself don''t ever break yourself
Cả đời, chỉ có 1 đứa đem theo
25 cũng quay lại hồi nhỏ tập bỏ ống heo
Những thứ kia không rơi xuống đây như cho không.
Và thế giới này như sương mai bay trong gian- không.
Anh ơi anh có vui không baby
Anh ơi anh có vui không baby')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH72      ', N'Em bé', N'TL03      ', N'Album37   ', N'CS37      ', N'TG67      ', N'HSX12     ', N'Baby em tự dưng muốn đi gym hằng ngày
Baby em từ nay sẽ chăm skincare
Baby em thề em sẽ chăm ăn healthy
Bae - bae - bae - bae - bae ''cause
Muốn nước da em da em da em mãi luôn trắng tươi hồng hào
Muốn có eo thon và gầy, muốn trong vòng tay của anh
Muốn tấm thân em thân em thân em mãi luôn trẻ trung tràn trề
Bae - bae - bae ''cause
Để anh vẫn luôn gọi em là em bé
Dẫu 40, 60, 80 anh vẫn luôn chung tình
Vẫn ủi an, chở che, cảm thông cho em
Đôi khi em tự dưng lại nắng
Rồi em tự dưng lại mưa
Hoặc đôi lần em ở giữa
Để anh vẫn luôn gọi em là em bé
Dẫu 40, 60, 80 em vẫn luôn như vậy
Vẫn thích anh, muốn anh, có anh ở đây bên em
Như là xương cần khớp
Và như học sinh cần "lớp"
Lớp lớp lớp lớp lớp you
Bae bae bae bae bae bae bae baby
Bae bae bae bae bae bae bae baby
Bae bae bae bae bae bae bae baby
Bae bae bae bae bae bae bae baby
So clean, so fresh
Là những gì mà anh nghĩ về em
Ngày thường hay Tết, thiếu hơi một chút là không quen
Cứ mộc mạc đơn giản như mọi ngày
Anh cũng đã tự say như điếu đổ
Người đã xinh còn đáng yêu thế này
Coi như từ nay là tim anh hết chỗ
Khi em muốn thật hơn cả selfie, thì việc dễ nhất là ăn đồ healthy
Còn nếu em tin là mình luôn hợp ý
Vậy thì nghe anh thế này cho đỡ nghĩ
Em ốm, anh ốm
Em béo, anh béo theo
Em sao, anh vậy
Có thế nào thì anh vẫn lẽo đẽo
Nên đừng quá lo lắng những thứ bề
Ngoài sẽ khiến tình cảm mình rẽ duyên
Chuyện nắng mưa trong em thất thường
Ra sao yên tâm ở đây có anh chia sẻ liền
Bất kể ngày hay đêm mặc định là anh cứ luôn nghiện em như là kẻ điên
Có tụt kí hay béo không phanh, với anh vẫn không ai xinh bằng em
Em sợ mai này anh sẽ không còn thương em
Sẽ không còn ôm và hôn em mỗi ngày
Em chỉ muốn rằng em mai luôn là em bé
Và anh sẽ luôn là của bé
Để anh vẫn luôn gọi em là em bé
Dẫu 40, 60, 80 anh vẫn luôn chung tình
Vẫn ủi an, chở che, cảm thông cho em
Đôi khi em tự dưng lại nắng
Rồi em tự dưng lại mưa
Hoặc đôi lần em ở giữa
Để anh vẫn luôn gọi em là em bé
Dẫu 40, 60, 80 em vẫn luôn như vậy
Vẫn thích anh, muốn anh, có anh ở đây bên em
Như là xương cần khớp
Và như học sinh cần "lớp"
Lớp lớp lớp lớp lớp you moaz
Bae bae bae bae bae bae bae baby
Bae bae bae bae bae bae bae baby
Bae bae bae bae bae bae bae baby
Bae bae bae bae bae bae bae baby')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH73      ', N'Đau vậy đủ rồi', N'TL03      ', N'Album37   ', N'CS37      ', N'TG68      ', N'HSX42     ', N'Xa nhau lâu nay anh quen ai chưa?
Có ai yêu anh như em khi xưa
Mặc sáng đêm luôn mong gặp anh
Riêng em chưa khi nao em nguôi ngoai
Đôi môi em vẫn chưa trao cho ai
Chỉ có mỗi riêng anh, anh
Từ ngày đó trái tim em đã hiểu được rằng
Cố mấy cũng chẳng thể nào về với nhau, chỉ thấy đau
Vì cứ ngỡ chúng ta nay mai sẽ trở lại
Có biết đâu hy vọng vội vàng đã sai, em đã sai
Anh đừng chờ nữa
Hãy yêu một người khác đi
Đừng trở thành kẻ tình si, vì em mà phải nặng lòng suy nghĩ
Anh đừng chờ nữa
Hãy yêu một người khác đi
Đừng trông mong em làm chi, giờ cố gắng đâu được gì
Cũng bởi vì
Đau vì nhau vậy là quá đủ rồi
Đau vì nhau vậy là quá đủ rồi
Đau vì nhau vậy là quá đủ rồi
Đừng gặp nhau nữa
Đau vì nhau vậy là quá đủ rồi
Đau vì nhau vậy là quá đủ rồi
Đau vì nhau vậy là quá đủ rồi
Đừng tìm nhau nữa
Ta từng xem nhau như hơi thở, ngày tháng bên nhau là thiên đàng
Nhưng mọi thứ giờ đã tan vỡ, tất cả chỉ còn là biển cạn
(Kể từ khi tình mình bơ vơ)
Anh không khác gì kẻ điên loạn
(Từng ngày chờ người về trong mơ)
Nỗi buồn trong anh ngày càng miên man
Câu chuyện ta như là con thuyền vừa giăng buồm ra khơi
Hân hoan chưa bao lâu giờ này lại chơi vơi
Sầu vương trên mi em khóc gần như không nên lời
Còn anh không sao yêu thêm được ai ở trên đời
Mới hôm qua còn đây vì đâu mà nay lại xa quá
Anh không tin bàn tay của nhau giờ xa quá
Từ ngày mắt môi, trái tim, dáng em xa
Với anh tình yêu sao thật lạ
Từ ngày đó trái tim em đã hiểu được rằng
Cố mấy cũng chẳng thể nào về với nhau, chỉ thấy đau
Vì cứ ngỡ chúng ta nay mai sẽ trở lại
Có biết đâu hy vọng vội vàng đã sai, em đã sai
Anh đừng chờ nữa
Hãy yêu một người khác đi
Đừng trở thành kẻ tình si, vì em mà phải nặng lòng suy nghĩ
Anh đừng chờ nữa
Hãy yêu một người khác đi
Đừng trông mong em làm chi, giờ cố gắng đâu được gì
Cũng bởi vì
Đau vì nhau vậy là quá đủ rồi
Đau vì nhau vậy là quá đủ rồi
Đau vì nhau vậy là quá đủ rồi
Đừng gặp nhau nữa
Đau vì nhau vậy là quá đủ rồi
Đau vì nhau vậy là quá đủ rồi
Đau vì nhau vậy là quá đủ rồi
Đừng tìm nhau nữa
Không ngờ là thế
Giờ ta phải dừng ở đây
Rời xa cơn mơ ngày ấy, rời xa yêu thương từng cầm trong tay
Không ngờ là thế
Dù qua bao năm đổi thay
Dòng nước mắt có ngừng lay, mình vẫn nhớ nhau thế này
Anh từng nghĩ cuộc tình này không cách chi mà nghiêng ngã
Cho đến khi em và kỷ niệm nằm sâu dưới biển cả
Ngay khi anh vừa kịp hình dung những điều đang diễn ra
Cũng là lúc cảm giác đau đớn không còn lời diễn tả
Ta xa ta xa nhau (Nỗi nhớ này về đâu)
Ta xa ta xa nhau (Phút cố chấp ngày đầu)
Ta xa ta xa nhau (Từ nay mãi về sau)
Ta nợ hết tất cả những thứ thuộc về nhau
Nói thế mà
Mắt môi này, trái tim này nhớ anh
Chẳng thể nào, chẳng thể nào lãng quên
Trái tim này, trái tim này mỏng manh
Nhớ anh nhiều vẫn chẳng thể ở bênXa nhau lâu nay anh quen ai chưa?
Có ai yêu anh như em khi xưa
Mặc sáng đêm luôn mong gặp anh
Riêng em chưa khi nao em nguôi ngoai
Đôi môi em vẫn chưa trao cho ai
Chỉ có mỗi riêng anh, anh
Từ ngày đó trái tim em đã hiểu được rằng
Cố mấy cũng chẳng thể nào về với nhau, chỉ thấy đau
Vì cứ ngỡ chúng ta nay mai sẽ trở lại
Có biết đâu hy vọng vội vàng đã sai, em đã sai
Anh đừng chờ nữa
Hãy yêu một người khác đi
Đừng trở thành kẻ tình si, vì em mà phải nặng lòng suy nghĩ
Anh đừng chờ nữa
Hãy yêu một người khác đi
Đừng trông mong em làm chi, giờ cố gắng đâu được gì
Cũng bởi vì
Đau vì nhau vậy là quá đủ rồi
Đau vì nhau vậy là quá đủ rồi
Đau vì nhau vậy là quá đủ rồi
Đừng gặp nhau nữa
Đau vì nhau vậy là quá đủ rồi
Đau vì nhau vậy là quá đủ rồi
Đau vì nhau vậy là quá đủ rồi
Đừng tìm nhau nữa
Ta từng xem nhau như hơi thở, ngày tháng bên nhau là thiên đàng
Nhưng mọi thứ giờ đã tan vỡ, tất cả chỉ còn là biển cạn
(Kể từ khi tình mình bơ vơ)
Anh không khác gì kẻ điên loạn
(Từng ngày chờ người về trong mơ)
Nỗi buồn trong anh ngày càng miên man
Câu chuyện ta như là con thuyền vừa giăng buồm ra khơi
Hân hoan chưa bao lâu giờ này lại chơi vơi
Sầu vương trên mi em khóc gần như không nên lời
Còn anh không sao yêu thêm được ai ở trên đời
Mới hôm qua còn đây vì đâu mà nay lại xa quá
Anh không tin bàn tay của nhau giờ xa quá
Từ ngày mắt môi, trái tim, dáng em xa
Với anh tình yêu sao thật lạ
Từ ngày đó trái tim em đã hiểu được rằng
Cố mấy cũng chẳng thể nào về với nhau, chỉ thấy đau
Vì cứ ngỡ chúng ta nay mai sẽ trở lại
Có biết đâu hy vọng vội vàng đã sai, em đã sai
Anh đừng chờ nữa
Hãy yêu một người khác đi
Đừng trở thành kẻ tình si, vì em mà phải nặng lòng suy nghĩ
Anh đừng chờ nữa
Hãy yêu một người khác đi
Đừng trông mong em làm chi, giờ cố gắng đâu được gì
Cũng bởi vì
Đau vì nhau vậy là quá đủ rồi
Đau vì nhau vậy là quá đủ rồi
Đau vì nhau vậy là quá đủ rồi
Đừng gặp nhau nữa
Đau vì nhau vậy là quá đủ rồi
Đau vì nhau vậy là quá đủ rồi
Đau vì nhau vậy là quá đủ rồi
Đừng tìm nhau nữa
Không ngờ là thế
Giờ ta phải dừng ở đây
Rời xa cơn mơ ngày ấy, rời xa yêu thương từng cầm trong tay
Không ngờ là thế
Dù qua bao năm đổi thay
Dòng nước mắt có ngừng lay, mình vẫn nhớ nhau thế này
Anh từng nghĩ cuộc tình này không cách chi mà nghiêng ngã
Cho đến khi em và kỷ niệm nằm sâu dưới biển cả
Ngay khi anh vừa kịp hình dung những điều đang diễn ra
Cũng là lúc cảm giác đau đớn không còn lời diễn tả
Ta xa ta xa nhau (Nỗi nhớ này về đâu)
Ta xa ta xa nhau (Phút cố chấp ngày đầu)
Ta xa ta xa nhau (Từ nay mãi về sau)
Ta nợ hết tất cả những thứ thuộc về nhau
Nói thế mà
Mắt môi này, trái tim này nhớ anh
Chẳng thể nào, chẳng thể nào lãng quên
Trái tim này, trái tim này mỏng manh
Nhớ anh nhiều vẫn chẳng thể ở bên')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH74      ', N'Bước tới', N'TL01      ', N'Album38   ', N'CS38      ', N'TG69      ', N'HSX44     ', N'Yeah, Lão Đại tới
Tao nói là
Yeah, Lão Đại tới
Tao cần thấy cái nơi cao nhất
Quả đất đang ở nơi nao
Để tao đứng lên trên đỉnh đó, nói với họ rằng đây là tao
Một câu nhất thiên hạ, vô đối thủ rằng đây là Wowy
Tao đẩy mọi thứ vượt mức quy định mọi người hỏi tao làm gì
Tao cứ đi tới không ngại vật cản, ý chí dẹp nó từ xa
Quá khứ tao tới từ chỗ mà thiên lý nhãn cũng không nhìn ra
Từ điển tao có đủ chữ nhưng mà chỉ không có từ còn xa
Bởi tao xoá những thứ tiêu cực không giúp tao thành con người hoàn hảo
Chân tao không mỏi bởi chông gai tao không coi ra gì
Và nắng không đủ chói chỉ làm mồ hôi cặn bã ra đi
Tay tao để chỉ, cho biết thằng Wowy này gan lì
Còn mắt tao nhìn thấu những cạm bẫy hai bên đường đi
Có một con đường, mà độc nhất chỉ có mình tao, yeah
Đó là con đường, mà mọi người gọi underground, yeah
Tao đang từng bước, mà ông cha tao đã đi qua, yeah
Con đường tao đi, có tên gọi là người đi trước nà
Khi tao bước tới (yeah)
Mặt đất như quay ngược (yeah)
Khi tao bước tới (yeah)
Tao thấy tao là người đi trước
Mày bước lên đi, mày bước lên đi, mày bước lên đi, lên phía trước
Mày bước lên đi, mày bước lên đi, để cho anh em còn thấy được
Mày bước lên đi, mày bước lên đi, mày bước lên đi, lên phía trước
Chân trái chân phải, chân trái chân phải làm cho mặt đất này quay ngược
Yeah, Lão Đại tới
Tao nói là
Yeah, Lão Đại tới
Tao nhớ có người đã nói với tao là mày không được phép
Tao sống theo luật của tao là con đại bàng không sợ con tép
Tránh đi chỗ khác, đó không phải là luật của tao
Đéo đi chỗ khác thì mày làm con cặc gì nhau
Đây là lúc để tao đi (đây là lúc để tao đi)
Chứng minh tao là nam nhi (chứng minh tao là nam nhi)
Đầu đội trời chân tao đạp đất (đầu đội trời chân tao đạp đất)
Để chứng minh ai là nhất (để chứng minh ai là nhất)
Nếu mày hỏi tao tên là chi (nếu mày hỏi tao tên là chi)
Nếu chưa rõ, tên tao là Wy (nếu chưa rõ, tên tao là Wy)
Sống trên đời là chữ tín (sống trên đời là chữ tín)
Nếu không có nó là bị quýnh (nếu không có nó là bị quýnh)
Nếu muốn trở thành đại ca (nếu muốn trở thành đại ca)
Điều trước tiên là có chữ đại (điều trước tiên là có chữ đại)
Sau đó có tất cả (sau đó có tất cả)
Thì mới được trở thành đại ca (thì mới được trở thành đại ca)
Mày bước lên đi, mày bước lên đi, mày bước lên đi, lên phía trước
Mày bước lên đi, mày bước lên đi, để cho anh em còn thấy được
Mày bước lên đi, mày bước lên đi, mày bước lên đi, lên phía trước
Chân trái chân phải, chân trái chân phải làm cho mặt đất này quay ngược
Yeah, Lão Đại tới
Tao nói là
Yeah, Lão Đại tới
Bước đi của tao
Bước đi của tao
Bước đi của tao
Bước đi của tao đập tan nát sân khấu này (again)
Bước đi của tao, làm trái đất này ngừng quay
Bước đi của tao, làm thay đổi đêm đen này
Bước đi của tao, làm ánh đèn đó phải xoay
Bước đi của tao, đập tan nát sân khấu này
Có một con đường, mà độc nhất chỉ có mình tao, yeah
Đó là con đường, mà mọi người gọi underground, yeah
Tao đang từng bước, mà ông cha tao đã đi qua
Con đường tao đi, có tên gọi là người đi trước nà
Khi tao bước tới
Mặt đất như quay ngược
Khi tao bước tới
Tao thấy tao là người đi trước
Mày bước lên đi, mày bước lên đi, mày bước lên đi, lên phía trước
Mày bước lên đi, mày bước lên đi, để cho anh em còn thấy được
Mày bước lên đi, mày bước lên đi, mày bước lên đi, lên phía trước
Chân trái chân phải, chân trái chân phải làm cho mặt đất này quay ngược
Yeah, Lão Đại tới
Tao nói là
Yeah, Lão Đại tới')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH75      ', N'Đánh nó đi', N'TL07      ', N'Album38   ', N'CS38      ', N'TG70      ', N'HSX45     ', N'Tao biết/ mày cắn/ mày xé/ mày xài / vũ khí (í í í)
Nhưng tay tao thì không/ tao sẽ đấm trái móc phải /ngay hàm trong
Biết đâm/ biết chém/ vì tiền và vì con bồ nhí (í í í)
Còn tao chỉ đi ngang trúng tao mà kiếm chuyện/ thì coi như là xong
Đừng có đụng vào tao/ lý tiểu long còn chết/ mày là chuyện tào lao
Người ta nói tao tệ/ thứ không nên dây vào/ mày còn kiếm tao là sao
Tao oánh không cần phe/ rượt mày không cần xe/ biết mày sẽ tới đây/
Tao nghe họ la là (chơi đi)/ tao nghe họ la là (la là)
Đánh nó đi (ey x 6)
Đánh nó đi (ey x 6)
Đánh nó đi (ey x 6)
Đánh nó đi (ey x 6)
Đánh nó để nó nhớ mặt tao/ điều mà tao muốn / là cho nó biết ai cao
Đánh nó/ Chân tao chỉ lướt qua/ đế giày in vào mặt ép máu mày phun ra
Đánh nó/ nó cố thoát ra xa/ nhưng đéo cách nào/ để cho nó cóóó thể chạy ra
Đánh nó/ tao/ chắc/ thằng/ chó/ này/ tao/ phải/ đánh đánh đánh đánh đánh
Chừa đi /đánh cho bầm dập/ cho tan nát mày nhớ phải chừa đi
Phải chừa nghe chưa / bỏ tính bố láo mày nhớ phải chừa đi
Lão đại đã dặn / tại sao mày không nhớ / tao nhắc / để cho mày
Mày là người chịu / tao biết / niếu tao dừng thì mọi người la nữa
Đánh nó đi (ey x 6)
Đánh nó đi (ey x 6)
Đánh nó đi (ey x 6)
Đánh nó đi (ey x 6)
Đập mọi người đập nó đi
Đập đập đập đập nó đi Đập mọi người đập nó đi
Đập đập đập đập nó đi Đánh nó đi (ey x 6)
Đừng cho nó quay lại, đừng cho nó quay lại
Đánh nó đi (ey x 6)
Đừng cho nó quay lại đừng cho nó quay lại
Đánh nó đi (ey x 6)
Đừng cho nó quay lại đừng cho nó quay lại
Đánh nó đi (ey x 6)
Đừng cho nó quay lại đừng cho nó quay lại
Đánh nó đi Đánh nó đi Đánh nó đi Đánh nó đi
Đừng chọc tao')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH76      ', N'Mơ', N'TL03      ', N'Album39   ', N'CS39      ', N'TG71      ', N'HSX48     ', N'Là những mộng mơ, chưa cầm được nóng tay
Gọi anh là người đàn ông với những quả bóng bay
Và đêm nay anh điên không có cần che đậy
Anh lơ lửng giữa con đường có hai bên làn xe chạy
Anh không mơ một ngày nào đó nổi lên chốc lát nửa vời
Anh chỉ muốn khi tim còn đập là còn được hát giữa đời
Vì có là một con đom đóm hay trở nên sáng như sao
Thì ta cũng có một thanh xuân đẹp trước khi ngày tháng hư hao
Có những đêm anh nằm co mơ ngày trong xanh hoan ca
Không lo được, không lo mất, ưu phiền trong anh tan ra
Và anh hát như người đàn ông không cần điều gì chăm bẵm đâu
Em sẽ lạc vào trong con ngõ tâm hồn của anh thăm thẳm sâu
Một ngày thứ nhạc mà anh chơi không chỉ lan truyền trong xó xỉnh nữa
Đi muôn nơi, đến muôn tai, không cần thiết phải có chỉnh sửa
Anh chưa bao giờ được dạy về cách để trở nên rất giàu
Thế nên yên tâm một điều là nhạc anh sẽ còn mơ, mơ đến rất lâu
Ai ơi trót thân mơ màng
Loay hoay mấy tầng trần gian
Nhiều đêm ta thấy ta đi tìm
Tìm thân ta suốt bao năm rồi
Mơ đi giữa cây xanh rừng
Bay lên với tầng trời cao
Ta trôi giữa con sông dài
I''m dreamin'' till morning light
Anh có một túi mơ to giấu trong lớp ngoài gầy guộc
Và cuộc sống luôn tìm mọi cách để mà đục khoét như bầy chuột
Lấy đi hết những gì đẹp nhất để rồi thì ai cũng như ai
Ngập trong những lo toan cuộc sống, hôm qua, hôm nay cũng như mai
Anh không đưa em bay cao vì sau lưng anh không có lông vũ
Thế giới của anh bé xíu anh là lao công kiêm luôn ông chủ
Anh không có những khu vườn ngập tràn hoa trái lạ và thơm
Tặng em cả cánh đồng mơ, mơ xơ xác như rạ và rơm
Cuộc đời là một áng mây và mỗi chúng ta là hạt nước
Chúng ta rơi
Ôi chúng ta rơi
Chẳng thể nào làm khác được
Và cuối hành trình, ai rồi cũng sẽ vỡ ra
Ta chỉ mơ nơi ta rơi xuống mặt đất khô cằn kia sẽ nở hoa
Những giấc mơ không thể lấp đầy cơn đói
Nhưng đó là cách để khiến tâm tư ngày nào đó được đâm chồi
Và sẽ thật tệ nếu bỏ đi niềm mơ mà sống
Cặm cụi đi suốt cuộc đời rồi trở ra biển ra sông
Ai ơi trót thân mơ màng
Loay hoay mấy tầng trần gian
Nhiều đêm ta thấy ta đi tìm
Tìm thân ta suốt bao năm rồi
Mơ đi giữa cây xanh rừng
Bay lên với tầng trời cao
Ta trôi giữa con sông dài
I''m dreamin'' till morning light
Ai ơi trót thân mơ màng
Loay hoay mấy tầng trần gian
Nhiều đêm ta thấy ta đi tìm
Tìm thân ta suốt bao năm rồi
Mơ đi giữa cây xanh rừng
Bay lên với tầng trời cao
Ta trôi giữa con sông dài
I''m dreamin'' till morning light
Ai ơi trót thân mơ màng
Ai ơi trót thân mơ màng
Ai ơi trót thân mơ màng
Ai ơi trót thân mơ màng')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH77      ', N'Cô gái bàn bên', N'TL03      ', N'Album39   ', N'CS39      ', N'TG72      ', N'HSX46     ', N'Dìa dia
Ah
Chiều ráng đỏ bên quán nhỏ
Quán nhỏ không sáng tỏ
"Cho ly đen đá không đường anh ơi"
Chợt thấy đầu thuốc bàn bên kia thoáng đỏ
Anh bồi bàn mang ra hai cốc
Một cho anh, một cho em
Tay em khuấy một trời xoáy lốc
Cà phê đen, cà phê đen
Đủ chật để nhìn nhau cho thật rõ
Đủ tối để thấy khói kia lửng lơ
Đủ lặng nghe trang sách kia lật giở
Nơi đây quá đủ cho những gã hay mơ
Mình cùng chia nhau mảnh không gian này
Anh là thằng nhóc chân anh không mang giày
Đầu anh chưa nghĩ quá nhiều điều sâu xa
"Dối lòng sẽ bị quạ bắt diều hâu tha"
(Và bây giờ thì)
Tắt những cuộc gọi tắt cả email
Flow anh sẽ dắt tay em đi theo
Đến nột nơi chẳng ai biết là nơi nào
Nơi mà nỗi buồn trở nên bé tí teo
Nơi mà u sầu mỏng như là cánh ve
Nụ cười em nở tròn như là bánh xe
Môi không cần son, mắt không ướt nhòe
Nơi mưa không cần trú, nơi nắng không cần che
Đôi khi anh đã quên đi hiện tại
Quên cả quá khứ quên luôn cả tương lai
Em có bao giờ thấy thời gian như ngừng lại?
Trong một khoảnh khắc ta không nhớ mình là ai
Mình cùng chia nhau mảnh không gian này
Anh là thằng nhóc chân anh không mang giày
Đầu anh chưa nghĩ quá nhiều điều sâu xa
Dối lòng sẽ bị quạ bắt diều hâu tha!
Em có thể gọi người như anh là gã điên
Vì điều đó đúng nên cũng thấy chả phiền
Ai cũng thay đổi chỉ có anh là bất biến
Em đang đối diện với gã mơ không ngả nghiêng
Một lần em ơi em là ai em hãy quên
Những gì em có là cảm xúc không có tên
Không có hạnh phúc
Không có muộn phiền
Đối diện với em là gã trai bên bàn bên
Em có từng mơ, mơ những giấc rất xanh tươi
Khi kim đồng hồ ngưng, em có thấy lòng chơi vơi?
Soi qua làn khói em soi rõ tim người
Không biết nói câu gì chỉ biết ngồi hát xong cười
Muốn lại ngồi với em vào một chiều tàn
Lòng vui như thể nhặt được nhiều vàng
Tâm tư rộn rã tiếng con sóng ngoài xa
Đông nhưng sao thấy như đang nóng ngoài da
Mình lại chia nhau mảnh không gian này
Em là cô nhóc chân em không mang giày
Đầu em không nghĩ quá nhiều điều sâu xa
Dối lòng sẽ bị quạ bắt diều hâu tha
Bản chất mình vẫn chỉ là hai người lạ
Gặp gỡ tình cờ khi năm thì mười họa
Có hai người lạ gặp nhau ở quán quen
Đốt lên hai đốm lửa trong ngày trời xám đen
Kể những câu chuyện không đầu không đuôi
Nếm những cảm xúc không màu không mùi
Tâm tư không giấu không vùi
Bình yên là lúc lòng không sầu không vui
Nghe như tiếng cơn gió xôn xao trong lòng em
Khi hai ta vẫn chưa biết tên nhau chưa kịp quen
Rồi tình cờ ngồi lại bên nhau
Nói bâng quơ những điều gì
Nói vu vơ những lạ kì
Chợt ta thành những người mơ
Nhắm mắt, để ta biết thấy
Bịt tai, để ta biết nghe
Đứng lại, để ta biết chạy
Ra đi, để ta biết về
Ngừng hơi, để ta biết thở
Vỗ về, để ta biết đau
Quên đi, để ta biết nhớ
Xa lạ, để ta biết nhau
Em có từng mơ, mơ những giấc rất xanh tươi
Khi kim đồng hồ ngưng, ở 4 giờ 20
Soi qua làn khói em soi rõ tim người
Không biết nói câu gì chỉ biết ngồi hát xong cười')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH78      ', N'Có em chờ', N'TL03      ', N'Album40   ', N'CS40      ', N'TG73      ', N'HSX17     ', N'Từ lần đầu tiên ta đi bên nhau em đã biết tim mình đánh rơi rồi
Từ lần đầu tiên môi hôn trao nhau em đã biết không thể yêu thêm ai
Cách anh cười cong môi
Cách anh lặng lẽ ngồi
Ngồi nhìn bóng tối lặng thầm thời gian trôi
Người đàn ông em yêu đôi khi có những phút giây yếu đuối không ngờ
Ngoài kia nếu có khó khăn quá
Về nhà anh nhé, có em chờ
Có môi mềm thơm thơm
Có dư vị mỗi bữa cơm
Xuân hạ thu đông đều có em chờ
Yo
Có định mệnh nào bao nhiêu lâu anh đã ao ước
Có vần thơ nào bao nhiêu đêm anh đi tìm hoài
Và nếu khoảng cách là một nghìn bước
Thì em chỉ cần bước một bước
Anh sẽ bước 999 bước còn lại
Bước về phía em
Nơi mà em thấy nắng mai
Nơi con tim em biết yên bình và mong thế thôi
That right
Tình yêu là những ánh sáng lấp lánh
Đèn vàng thắp lên bên ô cửa nhỏ
Tình yêu là những dịu êm từng đêm
Mình cùng ăn tối và nghe mưa rơi
Biết sẽ có những lúc
Trái tim đau đớn khôn nguôi
Vẫn yêu và yêu và yêu thế thôi
Và lần đầu tiên con tim như rụng rời
Lần đầu tiên anh không nói nên lời
Giấc mơ nào có đâu xa
Tình yêu nơi đó có hai ta
Nơi tóc em quá mượt mà
Con phố xưa đón đưa và
Em sẽ yêu mãi anh tháng năm dài
Bao nhiêu tháng ngày tăm tối
Khi mà có em ghé qua
Nỗi buồn cũng phải buông trôi
Khi giờ ta có em và
Một ngàn khúc ca quanh ta
Xin em đừng giận anh nhé
Bởi vì đôi khi anh là ah
Người đàn ông em yêu đôi khi có những phút giây yếu đuối không ngờ
Ngoài kia nếu có khó khăn quá
Về nhà anh nhé, có em chờ
Có môi mềm thơm thơm
Có dư vị mỗi bữa cơm
Xuân hạ thu đông đều có em chờ
Tình yêu là những ánh sáng lấp lánh
Đèn vàng thắp lên bên ô cửa nhỏ
Tình yêu là những dịu êm từng đêm
Mình cùng ăn tối và nghe mưa rơi
Biết sẽ có những lúc
Trái tim đau đớn khôn nguôi
Vẫn yêu và yêu và yêu thế thôi
What is love
Can you feel it
What is love
Can you feel it
What is love
Oh-oh-oh-oh
What is love
Just tell me baby
What is love
Just tell me baby
What is love
Oh-oh-oh
Tình yêu là những ánh sáng lấp lánh
Đèn vàng thắp lên bên ô cửa nhỏ
Tình yêu là những dịu êm từng đêm
Mình cùng ăn tối và nghe mưa rơi
Biết sẽ có những lúc
Trái tim đau đớn khôn nguôi
Vẫn yêu và yêu và yêu thế thôi')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH79      ', N'Đừng yêu nữa em mệt rồi', N'TL03      ', N'Album40   ', N'CS40      ', N'TG74      ', N'HSX64     ', N'Đã bao giờ anh nghe
Có vài điều khi yêu
Một là không nói dối
Hai là không nói dối nhiều lần
Cớ sao toàn thấy nước mắt?
Cớ sao toàn những vết cắt?
Có lẽ nào đến lúc
Khi hai ta đã hết yêu
Cứ đi rồi sẽ đến
Cứ im lặng sẽ qua
Một người như thế đấy
Yêu là yêu đến hết đời này
Em không là thế giới ấy
Em thật là nhỏ bé thôi
Tại sao em cứ ấp úng mãi không bao giờ nói ra?
Có lẽ em yêu anh nhiều quá
Nên là em chẳng dám buông ra
Có lẽ anh thấy em mạnh mẽ
Nên là anh chẳng muốn vỗ về
Yêu anh bằng trọn con tim ấy
Đớn đau nhiều lắm anh biết không?
Cứ cho đi rồi nhận ra tim em vỡ đôi thêm đau
Có lẽ không nên yêu nhiều thế
Bởi tình yêu sẽ nói em nghe
Với trái tim ưu tư vụn vỡ
Nên làm quen với những bơ vơ
Có khi chỉ vì anh không xứng đáng với ba chữ yêu nữa rồi
Thế thôi em xin dừng lại đừng yêu nữa nhé anh ơi
Em mệt rồi
Cứ đi rồi sẽ đến
Cứ im lặng sẽ qua
Một người như thế đấy
Yêu là yêu đến hết đời này
Em không là thế giới ấy
Em thật là nhỏ bé thôi
Tại sao em cứ ấp úng mãi không bao giờ nói ra?
Có lẽ em yêu anh nhiều quá
Nên là em chẳng dám buông ra
Có lẽ anh thấy em mạnh mẽ
Nên là anh chẳng muốn vỗ về
Yêu anh bằng trọn con tim ấy
Đớn đau nhiều lắm anh biết không?
Cứ cho đi rồi nhận ra tim em vỡ đôi thêm đau
Có lẽ không nên yêu nhiều thế
Bởi tình yêu sẽ nói em nghe
Với trái tim ưu tư vụn vỡ
Nên làm quen với những bơ vơ
Có khi chỉ vì anh không xứng đáng với ba chữ yêu nữa rồi
Thế thôi em xin dừng lại đừng yêu nữa nhé anh ơi
Em mệt rồi
Đôi khi em nghĩ
Thật lòng em muốn cám ơn anh vì đã bên em ngày qua
Dừng lại thôi chỉ mong tìm lại một chút bình yên
Có lẽ không nên yêu nhiều thế
Bởi tình yêu sẽ nói em nghe
Với trái tim ưu tư vụn vỡ
Nên làm quen với những bơ vơ
Có khi chỉ vì anh không xứng đáng với ba chữ yêu nữa rồi
Thế thôi em xin dừng lại đừng yêu nữa nhé anh ơi
Em mệt rồi')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH80      ', N'Xuân hạ thu đông rồi lại xuân', N'TL11      ', N'Album41   ', N'CS41      ', N'TG75      ', N'HSX62     ', N'Gửi anh người yêu ở nơi xa chẳng gặp
Chẳng biết phải bao giờ anh mới ghé thăm
Cứ thế đêm ngày trôi
Thấp thoáng mấy năm rồi
Chắc anh giờ đây quen cuộc sống mới
Đợi anh mà xuân hạ thu đông cũng tàn
Lại thêm mùa xuân, mùa xuân nữa đã sang
Ước muốn được gặp nhau, chẳng biết đến bao giờ
Để em cứ mãi một mình trong bao giấc mơ
Chẳng sợ phải đợi anh thật lâu
Điều em lo nhất
Chẳng biết bao lâu, bao lâu, bao lâu, sẽ kéo dài bao lâu
Giá như đây, chỉ là một giấc mộng
Thức dậy anh vẫn vòng tay ôm chặt
Chẳng có cách xa đâu
Chẳng sợ phải đợi anh thật lâu
Người em thương nhất
Chẳng biết bao lâu, bao lâu, bao lâu, thật ra là bao lâu
Đến khi chờ đợi là thói quen
Dù thời gian đáng ghét
Cũng chẳng nghĩa lý gì, làm yêu chỉ thêm yêu
Anh vẫn biết vì anh mà đôi ta thế này
Anh chỉ ước gì có thể mang em đến đây
Ước muốn được gặp nhau
Chắc sẽ sớm thôi mà
Để em sẽ không một mình trong bao giấc mơ
Chẳng sợ phải đợi anh thật lâu
Điều em lo nhất
Chẳng biết bao lâu, bao lâu, bao lâu, sẽ kéo dài bao lâu?
Giá như đây, chỉ là một giấc mộng
Thức dậy anh vẫn vòng tay ôm chặt
Chẳng có cách xa đâu
Chẳng sợ phải đợi anh thật lâu
Người em thương nhất
Chẳng biết bao lâu, bao lâu, bao lâu, thật ra là bao lâu
Đến khi chờ đợi là thói quen
Dù thời gian đáng ghét
Cũng chẳng nghĩa lý gì, làm yêu chỉ thêm yêu
Và giá như anh ở đây để thấy em đã cố gắng bao nhiêu
Và phải cố trở nên mạnh mẽ nhiều lúc dù nước mắt cứ rơi
Chẳng sợ phải đợi anh thật lâu
Người em thương nhất
Chẳng biết bao lâu, bao lâu, bao lâu, thật ra là bao lâu
Dù thời gian đáng ghét
Đợi anh mà xuân, hạ, thu, đông cũng tàn
Lại thêm mùa xuân, mùa xuân nữa đã sang')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH81      ', N'Từ thích thích thành thương thương', N'TL11      ', N'Album41   ', N'CS41      ', N'TG76      ', N'HSX61     ', N'Anh ơi, em đâu dám nói
Khi con tim em đang bối rối
Những lần mình hẹn nhau
Những lần không thành câu
Những ngại ngùng buồn vu vơ trong trái tim này
Những lần ôm mộng mơ, ôi tay nắm tay
Biết làm gì? Giờ em nhận ra
Từ thích thích thành yêu yêu rồi thương thương
Nên em đành viết chiếc thư tình, thư tình
Để thay em nói hết tâm tư trong mình
Mong anh đừng nói những lời từ chối
Em chỉ cần biết tâm tư anh thế thôi
Em ơi, anh đâu dễ dàng nói ra nên lời
Rằng trong lòng anh từ lâu cũng thấy rối bời
Nhưng hai ta nên chầm chậm thế thôi, em à!
Từ thích thích, thành yêu yêu, rồi thương thương
Ngày anh thấy, thấy tim đập nhanh lúc bên em
Là anh đã biết, biết anh chẳng có một đường lui
Thấy, thấy như trạm xăng với ô-tô
Vì gặp em là anh chỉ đổ mà thôi
Nên em đành viết chiếc thư tình, thư tình
Để thay em nói hết tâm tư trong mình
Mong anh đừng nói những lời từ chối
Em chỉ cần biết tâm tư anh thế thôi
Tà-ta-tá-ta-tà-tá-ta-ta-tà-ta-rà
Tà-ra-đà-đà-đa-ta-tà-tà-ta-tá-ta
Nếu mình yêu ai hết lòng
Người ta cũng chờ mong để đáp lại
Thì trên đời đâu tồn tại hai chữ "đơn phương"
Nếu mình yêu ai hết lòng
Người ta cũng chờ mong để đáp lại
Thì trên đời đâu tồn tại hai chữ "đơn phương"
Tà-ta-tá-ta-tà-tá-ta-ta-tà-ta-rà
Tà-ra-đá-đa-đà-ta-ra-tà-ta-tá-ta
Tà-ta-tá-ta-tà-tá-ta-ta-tà-ta-rà
Tà-ra-đà-đà-đa-ta-tà-tà-ta-tá-ta
Nếu mình yêu ai hết lòng
Người ta cũng chờ mong để đáp lại
Thì trên đời đâu tồn tại hai chữ "đơn phương"
Nếu mình yêu ai hết lòng
Người ta cũng chờ mong để đáp lại
Thì trên đời đâu tồn tại hai chữ "đơn phương"
Thì trên đời đâu tồn tại hai chữ "đơn phương"')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH82      ', N'Chuỗi ngày vắng em', N'TL11      ', N'Album42   ', N'CS42      ', N'TG77      ', N'HSX60     ', N'Từ khi em bước ra đi
Cõi lòng anh ngập tràn bao giá băng
Căn phòng vắng ngày đêm anh vẫn đợi chờ
Mãi đợi chờ...
Giờ em đang ở nơi đâu
Có được vui và có nhớ đến anh
Bao ngày tháng rời xa
Anh mới biết rằng
Em đã lãng quên tình anh
Năm tháng đã trôi qua
Là chuỗi ngày vắng em
Tình yêu của anh và em giờ đây không còn
Cho con tim anh bàng hoàng vỡ nát...
Anh biết là cuộc đời này sẽ không có em bên cạnh
Anh ngỡ là cuộc đời này chỉ là giấc mơ mà thôi
Anh hát một bài tình ca để dành tặng riêng đến em
Chỉ mong em hạnh phúc mãi thôi
Bao kỷ niệm đẹp của nhau làm sao có thể quên được
Sao nỡ đành lòng vội vàng em lãng quên bao lời yêu
Anh vẫn nguyện cầu một điều gửi ngàn vì sao sáng cao chúc em được
Mãi êm đềm
Hạnh phúc bên người mình yêu
Giờ em đang ở nơi đâu
Có được vui và có nhớ đến anh
Bao ngày tháng rời xa
Anh mới biết rằng
Em đã lãng quên tình anh
Năm tháng đã trôi qua
Là chuỗi ngày vắng em
Tình yêu của anh và em giờ đây không còn
Cho con tim anh bàng hoàng vỡ nát
Anh biết là cuộc đời này sẽ không có em bên cạnh
Anh ngỡ là cuộc đời này chỉ là giấc mơ mà thôi
Anh hát một bài tình ca để dành tặng riêng đến em
Chỉ mong em hạnh phúc mãi thôi
Bao kỷ niệm đẹp của nhau làm sao có thể quên được
Sao nỡ đành lòng vội vàng em lãng quên bao lời yêu
Anh vẫn nguyện cầu một điều gửi ngàn vì sao sáng cao
Chúc em được
Mãi êm đềm, hạnh phúc bên người mình yêu
Anh biết là cuộc đời này sẽ không có em bên cạnh
Anh ngỡ là cuộc đời này chỉ là giấc mơ mà thôi
Anh hát một bài tình ca để dành tặng riêng đến em
Chỉ mong em hạnh phúc mãi thôi
Bao kỷ niệm đẹp của nhau làm sao có thể quên được
Sao nỡ đành lòng vội vàng em lãng quên bao lời yêu
Anh vẫn nguyện cầu một điều gửi ngàn vì sao sáng cao
Chúc em được
Mãi êm đềm, hạnh phúc bên người mình yêu')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH83      ', N'Nỗi đau mình anh', N'TL11      ', N'Album42   ', N'CS42      ', N'TG78      ', N'HSX65     ', N'Cố nhắm mắt anh bước đi thật nhanh, xóa hết quá khứ em và anh
Dẫu cho xót xa mấy cũng đành
Vì bao lời em đã hứa anh chẳng còn tin nữa
Ta không thể về lại như lúc xưa
Lúc anh khốn khó nhất em ở đâu, đã nói mãi mãi luôn vì nhau
Cớ sao chỉ anh với nỗi sầu
Giờ thôi ngày vui đã hết, ân tình nay đã chết
Em hãy xem tình ta là dĩ vãng
Giờ đây đường hai ta không đi chung lối
Nuối tiếc mấy cũng qua rồi
Em ơi, quên anh đi như đã từng
Về với hạnh phúc bên ai
Về với tình yêu em chọn
Nhớ thương trong anh đã chết
Dù cho giờ đây em đi anh đau lắm
Nuốt nước mắt trong âm thầm
Nhưng anh không thể quên bao lỗi lầm
Nhìn em rời bước xa anh
Hạnh phúc sao quá mong manh
Đớn đau hôm nay anh giữ không thể phai mờ
Cố nhắm mắt anh bước đi thật nhanh, xóa hết quá khứ em và anh
Dẫu cho xót xa mấy cũng đành
Vì bao lời em đã hứa, anh chẳng còn tin nữa
Ta không thể về lại như lúc xưa
Lúc anh khốn khó nhất em ở đâu, đã nói mãi mãi luôn vì nhau
Cớ sao chỉ anh với nỗi sầu (cớ sao chỉ mỗi anh thôi?)
Giờ thôi ngày vui đã hết, ân tình nay đã chết
Em hãy xem tình ta là dĩ vãng
Giờ đây đường hai ta không đi chung lối
Nuối tiếc mấy cũng qua rồi
Em hãy quên anh đi như đã từng
Về với hạnh phúc bên ai
Về với tình yêu em chọn
Nhớ thương trong anh đã chết
Dù cho giờ đây em đi anh đau lắm
Nước mắt rớt trong âm thầm
Nhưng anh không thể quên bao lỗi lầm
Nhìn em rời bước xa anh
Hạnh phúc sao quá mong manh
Đớn đau hôm nay anh giữ
Giờ đây đường hai ta không đi chung lối
Nuối tiếc mấy cũng qua rồi
Em ơi, quên anh đi như đã từng
Về với hạnh phúc bên ai
Về với tình yêu em chọn
Nhớ thương trong anh đã chết
Dù cho giờ đây em đi anh đau lắm
Nuốt nước mắt trong âm thầm
Nhưng anh không thể quên bao lỗi lầm
Nhìn em rời bước xa anh
Hạnh phúc sao quá mong manh
Đớn đau hôm nay anh giữ
Không thể phai mờ')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH84      ', N'Chiếc khăn gió ấm', N'TL11      ', N'Album43   ', N'CS43      ', N'TG79      ', N'HSX67     ', N'Ở bên kia bầu trời, về đêm chắc đang lạnh dần
Và em giờ đang chìm trong giấc mơ êm đềm
Gửi mây mang vào phòng, vòng tay của anh nồng nàn
Nhẹ nhàng ôm cho em yên giấc ngủ ngon
Ở bên đây bầu trời, thì mưa cứ rơi hững hờ
Để tim anh cồn cào và da diết trong nỗi nhớ
Dường như anh nhớ về em
Gửi cho em đêm lung linh và tiếng sóng nơi biển lớn
Gửi em những ngôi sao trên cao, tặng em chiếc khăn gió ấm
Để em thấy chẳng hề cô đơn, để em thấy mình gần bên nhau
Để em vững tin vào tình yêu hai chúng ta
Rồi cơn mưa đêm qua đi, ngày mai lúc em thức giấc
Nắng mai sẽ hôn lên môi em, nụ hôn của anh ấm áp
Và em hãy cười nhiều em nhé
Vì em mãi là niềm hạnh phúc của anh mà thôi
Ở bên kia bầu trời, về đêm chắc đang lạnh dần
Và em giờ đang chìm trong giấc mơ êm đềm
Gửi mây mang vào phòng, vòng tay của anh nồng nàn
Nhẹ nhàng ôm cho em yên giấc ngủ ngon
Ở bên đây bầu trời, thì mưa cứ rơi hững hờ
Để tim anh cồn cào và da diết trong nỗi nhớ
Dường như anh nhớ về em
Gửi cho em đêm lung linh và tiếng sóng nơi biển lớn
Gửi em những ngôi sao trên cao, tặng em chiếc khăn gió ấm
Để em thấy chẳng hề cô đơn, để em thấy mình gần bên nhau
Để em vững tin vào tình yêu hai chúng ta
Rồi cơn mưa đêm qua đi, ngày mai lúc em thức giấc
Nắng mai sẽ hôn lên môi em, nụ hôn của anh ấm áp
Và em hãy cười nhiều em nhé
Vì em mãi là niềm hạnh phúc của anh mà thôi
Gửi cho em đêm lung linh và tiếng sóng nơi biển lớn
Gửi em những ngôi sao trên cao, tặng em chiếc khăn gió ấm
Để em thấy chẳng hề cô đơn, để em thấy mình gần bên nhau
Để em vững tin vào tình yêu hai chúng ta
Rồi cơn mưa đêm qua đi, ngày mai lúc em thức giấc
Nắng mai sẽ hôn lên môi em, nụ hôn của anh ấm áp
Và em hãy cười nhiều em nhé
Vì em mãi là niềm hạnh phúc của anh mà thôi
Rồi cơn mưa đêm qua đi, ngày mai lúc em thức giấc
Nắng mai sẽ hôn lên môi em, nụ hôn của anh ấm áp
Và em hãy cười nhiều em nhé
Vì em mãi là niềm hạnh phúc của anh mà thôi')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH85      ', N'Chân tình', N'TL05      ', N'Album43   ', N'CS43      ', N'TG80      ', N'HSX58     ', N'Mùa xuân vừa đến hoa về trên những bàn tay
Và em vừa đến thay màu áo mới vì anh
Nguyện cho ngày tháng êm đềm như những sớm mai
Những nhọc nhằn chớm quen, vẫn trong ngần mắt em đang nhìn về anh
Và anh lại nhớ những giờ em đứng chờ trông
Một mình lặng lẽ ướt lạnh trong mưa vì anh
Tình yêu tìm thấy nguyên vẹn trong đêm bão giông
Giữa hoang tàn lãng quên nơi cuối đường có em riêng chờ đợi anh
Như chưa từng có những phút lìa xa
Giấu gương mặt trên vai anh khóc òa
Những con đường anh đi rồi cũng đưa anh về bên em
Như anh được sống giây phút đầu tiên
Có em tận đến những giây cuối cùng
Suốt cuộc đời em không quên chân tình dành hết cho anh
Và anh lại nhớ những giờ em đứng chờ trông
Một mình lặng lẽ ướt lạnh trong mưa vì anh
Tình yêu tìm thấy nguyên vẹn trong đêm bão giông
Giữa hoang tàn lãng quên nơi cuối đường có em riêng chờ đợi anh
Như chưa từng có những phút lìa xa
Giấu gương mặt trên vai anh khóc òa
Những con đường anh đi rồi cũng đưa anh về bên em
Như em được sống giây phút đầu tiên
Có anh tận đến những giây cuối cùng
Suốt cuộc đời em không quên chân tình dành hết cho anh
Như chưa từng có những phút lìa xa
Giấu gương mặt trên vai anh khóc òa
Những con đường anh đi rồi cũng đưa anh về bên em
Như anh được sống giây phút đầu tiên
Có em tận đến những giây cuối cùng
Suốt cuộc đời em không quên chân tình dành hết cho anh
Suốt cuộc đời em không quên chân tình dành hết cho anh')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH86      ', N'Chỉ cần em hạnh phúc', N'TL11      ', N'Album44   ', N'CS44      ', N'TG81      ', N'HSX69     ', N'Tình yêu đôi lúc không cùng cảm giác yêu thương từ hai người
Dù cho hạnh phúc em chọn là ai, không phải anh!
Chỉ cần em nói em buồn
Anh sẽ đến bên em để nghe tâm sự của em
Dù cho con tim này vỡ nát
Dù một lần đã cố nói với anh
Là tình yêu em đã chọn thật nhiều nỗi đau
Rằng lòng mình chỉ biết nói với em
Lời quan tâm của một người bạn thân
Vẫn cứ lắng nghe con tim em như thế nào?
Người mình yêu không vui phải làm sao?
Cứ thế trôi qua bao nhiêu tháng ngày
Em có hay?
Đối với anh khi đưa ra hai con đường
Bỏ mặc em hay anh sẽ bên em?
Dẫu có thêm bao nhiêu nỗi buồn hay nỗi đau!
Anh sẽ bên em
Sẽ bên em
Người yêu ơi
Dù một lần đã cố nói với anh
Là tình yêu em đã chọn thật nhiều nỗi đau
Rằng lòng mình chỉ biết nói với em
Lời quan tâm của một người bạn thân
Vẫn cứ lắng nghe con tim em như thế nào?
Người mình yêu không vui phải làm sao?
Cứ thế trôi qua bao nhiêu tháng ngày
Em có hay?
Đối với anh khi đưa ra hai con đường
Bỏ mặc em hay anh sẽ bên em?
Dẫu có thêm bao nhiêu nỗi buồn hay nỗi đau!
Anh cũng đã biết được nhiều điều
Khi yêu người ta thường hi sinh tất cả cho người mình yêu
Anh không thể không quan tâm em hỡi!
Vẫn cứ lắng nghe con tim em như thế nào?
Người mình yêu không vui phải làm sao?
Cứ thế trôi qua bao nhiêu tháng ngày
Em có hay?
Đối với anh khi đưa ra hai con đường
Bỏ mặc em hay anh sẽ ở bên em?
Dẫu có thêm bao nhiêu nỗi buồn hay nỗi đau!
Anh sẽ bên em
Sẽ bên em
Người hỡi')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH87      ', N'Ngã tư đường', N'TL11      ', N'Album44   ', N'CS44      ', N'TG82      ', N'HSX70     ', N'Ngã tư đường mình gặp lại nhau
Vẫn ánh mắt ta nhìn nhau ngày nào
Vẫn câu nói "Anh giờ ra sao?"
Vẫn câu nói "Giờ anh thế nào?"
Ngã tư đường mình lại gặp nhau
Câu hỏi cũ em hỏi anh ngày nào
"Anh vẫn còn yêu em phải không?"
Anh không trả lời, lặng yên chỉ biết nhìn em
Câu trả lời chắc em biết được
Sao hỏi anh làm chi em hỡi
Anh vẫn là anh như ngày nào
Yêu một người không dễ quên được đâu
Trên bầu trời cơn mưa bất chợt
Như hòa chung vào niềm đau anh
Em nghẹn ngào "Trời mưa mất rồi
Thôi chào anh, em phải đi rồi"
Ngã tư đường mình lại gặp nhau
Câu hỏi cũ em hỏi anh ngày nào
"Anh vẫn còn yêu em phải không?"
Anh không trả lời, lặng yên chỉ biết nhìn em
Câu trả lời chắc em biết được
Sao hỏi anh làm chi em hỡi
Anh vẫn là anh như ngày nào
Yêu một người không dễ quên được đâu
Trên bầu trời cơn mưa bất chợt
Như hòa chung vào niềm đau anh
Em nghẹn ngào "Trời mưa mất rồi
Thôi chào anh em phải đi rồi"
Câu trả lời chắc em biết được
Sao hỏi anh làm chi em hỡi
Anh vẫn là anh như ngày nào
Yêu một người không dễ quên được đâu
Trên bầu trời cơn mưa bất chợt
Như hòa chung vào niềm đau anh
Em nghẹn ngào "Trời mưa mất rồi
Thôi chào anh em phải đi rồi"
Em nghẹn ngào "Trời mưa mất rồi
Thôi chào anh, em phải đi rồi"')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH88      ', N'Trái tim em cũng biết đau', N'TL11      ', N'Album45   ', N'CS45      ', N'TG83      ', N'HSX71     ', N'Trái tim của em rất đau
Chỉ muốn buông tình ta ở đây
Vì cho đến giờ chẳng có ai biết em tồn tại
Những lần chào nhau bối rối
Người ở bên cạnh anh chẳng nghi ngờ
Lòng em lại chẳng nhẹ nhàng
Lời biệt ly buồn đến mấy cũng không thể nào
Làm cho em gục ngã đến mức tuyệt vọng
Chỉ là vết thương sâu một chút thôi anh à
Ngày mà anh tìm đến, em tin anh thật lòng
Và yêu em bằng những cảm xúc tự nguyện
Làm em quá yêu nên mù quáng đến yếu lòng
Là ngày chúng ta bắt đầu những sai lầm
Dù cho bây giờ trái tim anh dành hết cho em và yêu em rất nhiều
Nhưng sau này sẽ ra sao?
Em không thể cố tiếp tục nữa
Chẳng bao giờ em trách anh
Chỉ biết im lặng như thế thôi
Khóc trong lòng không nói ra mới xót xa
Sáng nay mình em trước gương
Lại nhớ một người em rất thương
Một người đã làm cuộc sống em khác đi rất nhiều
Nếu sau này anh vẫn thế
Thì hãy trân trọng người ở bên cạnh
Và yêu người ấy thật nhiều
Lời biệt ly buồn đến mấy cũng không thể nào
Làm cho em gục ngã đến mức tuyệt vọng
Chỉ là vết thương sâu một chút thôi anh à
Ngày mà anh tìm đến, em tin anh thật lòng
Và yêu em bằng những cảm xúc tự nguyện
Làm em quá yêu nên mù quáng đến yếu lòng
Là ngày chúng ta bắt đầu những sai lầm
Dù cho bây giờ tim anh dành hết cho em và yêu em rất nhiều
Nhưng sau này sẽ ra sao?
Em không thể cố tiếp tục nữa
Lời biệt ly buồn đến mấy cũng không thể nào
Làm cho em gục ngã đến mức tuyệt vọng
Chỉ là vết thương sâu một chút thôi anh à
Ngày mà anh tìm đến, em tin anh thật lòng
Và yêu em bằng những cảm xúc tự nguyện
Làm em quá yêu nên mù quáng đến yếu lòng
Là ngày chúng ta bắt đầu những sai lầm
Dù cho bây giờ trái tim anh dành hết cho em và yêu em rất nhiều
Nhưng sau này sẽ ra sao?
Em không thể cố tiếp tục nữa
Chẳng bao giờ em trách anh
Chỉ biết im lặng như thế thôi
Khóc trong lòng không nói ra mới xót xa')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH89      ', N'Yêu một người vô tâm', N'TL11      ', N'Album45   ', N'CS45      ', N'TG84      ', N'HSX72     ', N'Cạnh bên một người vô tâm
Là nước mắt tuôn âm thầm
Là yêu quá lâu một người đã chẳng còn chút động lòng?
Đợi anh mới biết đêm dài
Tin anh chẳng chút nghi ngại
Vì yêu nên em trao hết tương lai
Tại sao không giống như xưa?
Đến lúc nước mắt thay mưa
Nhưng hối hận cũng không kịp nữa
Nhìn lại người con gái anh từng rất nâng niu
Dù ngày đêm vẫn không ngại gió mưa
Quấn quýt thuở ban đầu anh giờ đâu nhớ
Đánh đổi tất cả bình yên em đã có
Để rồi đau thấu đến nghẹn lời
Nhớ một thời ai hứa không xa rời
Tưởng rằng mình may mắn khi được ở bên anh
Chuyện tình ta ngỡ tồn tại suốt đời
Ngỡ sẽ yêu lâu dài ai ngờ không phải
Em từng cố dỗ dành con tim yếu đuối
Để rồi đau đến thấu trời
Phút xa rời ai cũng cạn lời
Ngoài ô cửa là mưa rơi
Em phải trách mình ngây thơ
Tại sao cứ đợi anh quan tâm nhiều hơn
Em chỉ đứng đằng sau nhiều điều
Trong cuộc sống của anh bây giờ
Chỉ vì, vì không thể giữ dây tơ tình mình
Tình yêu mù quáng là khi yêu lầm
Một người vương vấn còn yêu đơn phương một người nhẫn tâm
Ngoài em anh có yêu ai?
Quan tâm chăm sóc cho ai?
Mà sao anh vô tâm với em hoài
Rồi bỗng sét đánh bên tai
Người nói "Tất cả đã phai"
"Chẳng có gì tốt trên đời mãi"
Nhìn lại người con gái anh từng rất nâng niu
Dù ngày đêm vẫn không ngại gió mưa
Quấn quýt thuở ban đầu anh giờ đâu nhớ
Đánh đổi tất cả bình yên em đã có
Để rồi đau thấu đến nghẹn lời
Nhớ một thời ai hứa không xa rời
Tưởng rằng mình may mắn khi được ở bên anh
Chuyện tình ta ngỡ tồn tại suốt đời
Ngỡ sẽ yêu lâu dài ai ngờ không phải
Em từng cố dỗ dành con tim yếu đuối
Để rồi đau đến thấu trời
Phút xa rời ai cũng cạn lời
Thật lòng em đã nghĩ anh từng rất yêu em
Thật lòng yêu đến cuối cuộc đời
Chẳng để tâm bão giông lúc nào sẽ tới
Chỉ là chút rung động phải không anh ơi?
Chỉ là giây phút nhất thời?
Trách duyên trời đã khiến ta xa rời
Chỉ là chút rung động mà sao em ơi
Chỉ là giây phút nhất thời
Vỡ duyên trời, anh mất em một đời')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH90      ', N'Vội Vã Yêu Nhau Vội Vã Rời', N'TL08      ', N'Album46   ', N'CS46      ', N'TG85      ', N'HSX73     ', N'Mình quen nhau chưa được lâu và rồi đã yêu
Tưởng đâu duyên sẽ đậm sâu bền chặt với nhau
Anh không ngờ tình yêu đến sớm và cũng kết thúc quá vội
Vội yêu nhau và chúng ta lại vội vã rời.

Từ đây em sẽ học quên những gì đáng quên
Và em vẫn nhớ về anh một người đã yêu
Khi mà cuộc tình ta dang dở chỉ biết trách bản thân mình
Quá vội vàng nên chúng ta để lạc mất nhau.

Đặt bàn tay lên trái tim em
Tự biết em không quên anh được
Có thật sự là ta sẽ quên
Hay nghe nhắc tên thì tim lại đau.

Vội vàng yêu nên đắng với cay
Giờ chúng ta chia hai con đường
Nếu định mệnh buộc ta với nhau
Thì ngày sau sẽ có khi ta quay về.
')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH91      ', N'Học cách đi một mình', N'TL02      ', N'Album46   ', N'CS46      ', N'TG86      ', N'HSX74     ', N'Kể từ giờ thì hai ta đã cách xa
Anh sẽ đi con đường anh
Không có em đi cùng
Và từ đây em cũng không
Còn anh trong đêm mùa đông
Ôm chặt em để cho vơi lạnh lùng
Từng kỉ niệm mà hai ta đã trải qua
Em khắc ghi trong lòng em
Nhưng chắc anh quên rồi!?
Vì giờ đây bên cạnh anh
Một bờ vai không phải em
Người mới đến khiến anh
Xóa đi những kỉ niệm
Nhiều lần bật khóc
Níu tay anh quay trở lại
Bởi vì còn yêu anh
Em quên bản thân mình
Cố gắng không làm cho
Lay chuyển tâm hồn anh
Buông tay em anh đã ra đi vội vàng
Đành phải học cách
Bước đi không anh bên cạnh
Học một mình em đi
Khi anh đã không cần
Có lẽ qua thời gian
Em sẽ quên được anh
Nhưng vết thương
Chắc sẽ không bao giờ lành!?
Kể từ giờ thì hai ta đã cách xa
Anh sẽ đi con đường anh
Không có em đi cùng
Và từ đây em cũng không
Còn anh trong đêm mùa đông
Ôm chặt em để cho vơi lạnh lùng
Từng kỉ niệm mà hai ta đã trải qua
Em khắc ghi trong lòng em
Nhưng chắc anh quên rồi!?
Vì giờ đây bên cạnh anh
Một bờ vai không phải em
Người mới đến khiến anh
Xóa đi những kỉ niệm
Nhiều lần bật khóc
Níu tay anh quay trở lại
Bởi vì còn yêu anh
Em quên bản thân mình
Cố gắng không làm cho
Lay chuyển tâm hồn anh
Buông tay em anh đã ra đi vội vàng
Đành phải học cách
Bước đi không anh bên cạnh
Học một mình em đi
Khi anh đã không cần
Có lẽ qua thời gian
Em sẽ quên được anh
Nhưng vết thương
Chắc sẽ không bao giờ lành!?
Nhiều lần bật khóc
Níu tay anh quay trở lại
Bởi vì còn yêu anh
Em quên bản thân mình
Cố gắng không làm cho
Lay chuyển tâm hồn anh
Buông tay em anh đã ra đi vội vàng
Đành phải học cách
Bước đi không anh bên cạnh
Học một mình em đi
Khi anh đã không cần
Có lẽ qua thời gian
Em sẽ quên được anh
Nhưng vết thương
Chắc sẽ không bao giờ lành!?')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH92      ', N'Hạnh phúc mới', N'TL03      ', N'Album47   ', N'CS47      ', N'TG87      ', N'HSX75     ', N'Nhưng giờ đây, hai ta chia cách muôn trùng mây
Giấc mơ ngàn thu đón anh bình yên chốn ấy
Trong tương lai một mình em trên lối đi này
Thương nhớ hoài kỷ niệm xưa chung bước dưới mưa bay.

Ngày hôm nao chia tay anh nói như lời trăn trối em đừng u sầu
Gạt lệ thương đau nếu chúng ta không còn nhau.
Con đường em và anh nguyện đi suốt đời
Một khi không còn anh là qua hết rồi
Chỉ mong có ai cùng em bước tiếp mới vui lòng anh

Và hôm nay em đang đi tới trên đoạn đường mới như lời anh rồi
Một hạnh phúc mới em hứa cho anh mỉm cười
Cho dù em và ai cùng đi suốt đời
Thì vẫn như còn anh cùng em chung lối
Em ước rằng, chốn xa xôi anh được yên vui.')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH93      ', N'Bụi bay vào mắt', N'TL03      ', N'Album47   ', N'CS47      ', N'TG88      ', N'HSX76     ', N'Em phải thức bao nhiêu đêm và em phải đếm bao nhiêu canh
Để thấy em luôn được nép trong vòng tay anh
Mà em nào đâu khóc, bụi bay vào mắt thôi
Bụi bay vào đêm trông ngóng chân ai qua thềm
Em phải ước bao nhiêu câu và em phải nếm bao nhiêu đau
Để mím môi đón ánh mắt anh lời chia tay
Mà anh nào có lỗi, lỗi do em ko giữ được người
Vẫy tay chào anh đường anh đi vắng em rồi
Lặng nhìn anh quay lưng bước đi, bụi bay vào mắt chứ em đâu khóc đâu
Lần cuối chẳng muốn níu kéo trái tim người quay về
Nhìn đi anh ơi trời xa, từng cách chim nghiêng nghiêng cuối con đường
Ở nơi đó còn có một người mong anh
Lặng nhìn anh quay lưng bước đi, bụi bay vào mắt chứ em đâu khóc đâu
Dù em đây yêu anh mãi đến từng tế bào
Bụi kia sao bay vào mắt làm khoé mi rưng rưng đến nghẹn ngào
Thì anh hôm nay và tình yêu của anh cũng là bụi trong mắt em thôi
Em phải ước bao nhiêu câu và em phải nếm bao nhiêu đau
Để mím môi đón ánh mắt anh lời chia tay
Mà anh nào có lỗi, lỗi do em ko giữ được người
Vẫy tay chào anh đường anh đi vắng em rồi
Lặng nhìn anh quay lưng bước đi, bụi bay vào mắt chứ em đâu khóc đâu
Lần cuối chẳng muốn níu kéo trái tim người quay về
Nhìn đi anh ơi trời xa, từng cách chim nghiêng nghiêng cuối con đường
Ở nơi đó còn có một người mong anh
Lặng nhìn anh quay lưng bước đi, bụi bay vào mắt chứ em đâu khóc đâu
Dù em đây yêu anh mãi đến từng tế bào
Bụi kia sao bay vào mắt làm khoé mi rưng rưng đến nghẹn ngào
Thì anh hôm nay và tình yêu của anh cũng là bụi trong mắt em thôi
Lặng nhìn anh quay lưng bước đi, bụi bay vào mắt chứ em đâu khóc đâu
Lần cuối chẳng muốn níu kéo trái tim người quay về
Nhìn đi anh ơi trời xa, từng cách chim nghiêng nghiêng cuối con đường
Ở nơi đó còn có một người mong anh
Lặng nhìn anh quay lưng bước đi, bụi bay vào mắt chứ em đâu khóc đâu
Dù em yêu anh mãi đến từng tế bào
Bụi kia sao bay vào mắt làm khoé mi rưng rưng đến nghẹn ngào
Thì anh hôm nay và tình yêu của anh cũng là bụi trong mắt em thôi')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH94      ', N'Thà rằng như thế', N'TL11      ', N'Album48   ', N'CS48      ', N'TG89      ', N'HSX77     ', N'Cố giấu nước mắt lặng thầm nhìn nhau nghe nhói lòng
Biết nói chi đây 1 câu trước khi biệt ly
Chiều buồn nghẹn ngào buông lơi chút ánh sáng ngọt ngào
Tựa như níu kéo bước chân người đi
Hãy cố nhắm mắt tìm đường vượt qua cơn bão lòng
Hãy cố quên nhau dù cho xót xa lệ rơi
Để lại cuộc tình trong cơn hấp hối chút ngọt ngào
Người hỡi hôn nhau đi lần cuối
Thà như thế thà rằng như thế
Thà đừng cố níu kéo nát tan lòng nhau chi hỡi em
Thà như thế thà rằng như thế
Thà đừng nhắc đến nữa những ân tình đã phôi pha
Giấc mơ qua rồi
Chẳng còn gì, ta biết chẳng còn gì
Cho nhau hỡi em dù con tim nát tan
Thôi ta cũng đành chia tay ...')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH95      ', N'Vầng trăng cô đơn', N'TL08      ', N'Album48   ', N'CS48      ', N'TG90      ', N'HSX78     ', N'Đừng khóc, đừng buồn nghe em
Chỉ làm cho thêm đớn đau
Tàn đêm nay là mình chia tay
Một người xa cách phương trời.
Tình lỡ, một người xa xăm
Một người lệ rơi đứng trông
Em hỡi còn gì cho nhau
Hay chỉ còn nỗi nhớ thương đầy vơi.
Em ơi đêm nay, vầng trăng kia như chứng minh
Tình đôi ta hôm nao, bao thiết tha mặn nồng
Đêm nay hai đứa, một vầng trăng xưa
Mà đôi tim, đôi tim cách xa.
Ôm bao đau thương, mình anh cô đơn chốn đây
Ngày mai em ra đi, chôn giấu bao kỷ niệm
Trôi theo năm tháng, để lại nơi đây
Mình anh với vầng trăng cô đơn.')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH96      ', N'Tìm trong hư vô', N'TL02      ', N'Album49   ', N'CS49      ', N'TG91      ', N'HSX79     ', N'Ngày anh ra đi là em biết được rằng
Trái tim anh không hề yêu em
Biết bao lời anh nói
Những ngọt ngào khi đó vì sao hỡi anh...hay tại vì ai?

Tìm trong hư vô, tìm trong vô vọng
Từ nay chúng ta không chung lối về..
Có khi nào anh biết
Trái tim này đau lắm..lệ vương khoé mi thôi đành chia ly

Làm sao để trái tim anh về lại đây
Vì tình yêu ấy với em như là tất cả
Mà sao hôm nay anh vô tâm đành đi
Để em lại mình trong đắng cay

Làm sao níu kéo anh quay trở về đây
Từng ngày hạnh phúc mãi không thể nào vội xoá
Để em được sống hết trọn đời vì anh
Những đau thương em đành mang
')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH97      ', N'Người về', N'TL02      ', N'Album49   ', N'CS49      ', N'TG92      ', N'HSX80     ', N'Mẹ có hay chăng con về
Chiều nay thời gian đứng im để nghe
Nghe gió trong tim tràn trề
Nụ cười nhăn nheo bỗng dưng lệ nhoè

Con thấy mẹ yêu đã già
Hẳn là miền quê những năm vừa qua
Chiếc bóng in trên vách nhà
Một ngày một đêm tóc sương phai mờ

Mẹ ơi, mẹ ơi, chuông chùa nào la đà
Nhớ tới, nhớ tới những linh hồn vắng nhà
Một vòng hương trắng xóa
Tình người trong thương nhớ
Gửi người chiến sĩ chết trong xa mờ

Em có hay chăng anh về
Thoạt nhìn người yêu ngỡ trong mộng mê
Ai dám mong chi xuân về
Nào ngờ vườn đêm có bông hoa kề

Anh nhớ những khi não nề
Sầu trên nẽo xa chắn ngang đường đi
Nhưng nước non chưa yên bề
Thì đành tình duyên gát bên lời thề

Em ơi, em ơi xích lại gần đây nào
Nhớ tới, nhớ tới những duyên và số nghèo
Trời làm cơn mưa bão, tình nồng như tơ liễu
Buồn vì ai đó khóc ai trong chiều

Con có hay chăng cha về, lời ca hồn nhiên líu lo ngoài kia
Chinh chiến đã qua một thì, tuổi thơ nở trên biết bao ê chề

Thôi đã hết cơn chia lìa, từ nay mầm non lớn trong tình quê
Như gió thu sau tháng hè, thổi về ruộng nâu lúa tươi xanh rì

Con ơi, con ơi tiếng cười nở chan hòa
Nhớ tới, nhớ tới biết bao trẻ thiếu nhà
Ngoài đường trời đông giá
Một đàn chim nhỏ bé
Gọi về chia sớt miếng cơm khoanh cà')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH98      ', N'Thế nhé anh', N'TL03      ', N'Album50   ', N'CS50      ', N'TG93      ', N'HSX81     ', N'Em đã khóc đã khóc rất nhiều
Khi anh nói đôi mình phải chia tay
Anh có biết giọt nước mắt này
Em đã khóc bao nhiêu lần vì anh.

Anh có biết trên thế giới này
Em yêu nhất chỉ mình anh thôi
Anh có biết những lúc em vui
Em cũng chỉ muốn bên anh mà thôi.

Mà sao anh đã quên hết
Quên những gì mà anh đã hứa
Anh giờ đây...
Không là anh của ngày xưa.

Em đã khóc khóc nhiều lắm
Em đã khóc cho hai đứa mình
Anh hãy nhớ trong tình yêu
Khi đánh mất sẽ không thể tìm lại.

Em sẽ xem chuyện tình ta
Chỉ là cơn gió thoáng qua thôi mà
Em sẽ chúc anh hạnh phúc
Và đường anh bước
Sẽ có người thay em...
')
INSERT [dbo].[BAIHAT] ([ma_baihat], [ten_baihat], [ma_theloai], [ma_album], [ma_casi], [ma_tacgia], [ma_hangsanxuat], [loi_baihat]) VALUES (N'BH99      ', N'Hoàng hôn ấm áp', N'TL03      ', N'Album50   ', N'CS50      ', N'TG94      ', N'HSX82     ', N'Đôi khi em không hiểu vì sao, em ra đi để cuộc tình phôi phai
Bỏ lại một mình anh lẻ loi thao thức đêm dài
Khi cơn đau đã lắng quá rồi, đôi khi em vẫn tự hỏi lòng rằng giờ này có khi nào ta vẫn còn nhớ bao lời yêu đã trao
Dù cuộc tình mình nay đã xa thật xa nhưng anh không quên bao nhiêu chiều ấm áp
Mình tựa đầu ngồi ngắm hoàng hôn mơ giấc mơ hồng
Dù giờ này mình anh lẻ loi trong hoàng hôn.Nhưng anh tin sẽ đến một ngày không xa
Mình lại về, về đây với nhau sưởi ấm hoàng hôn
Nhưng anh tin sẽ đến một ngày không xa
Mình lại về, về đây với nhau sưởi ấm hoàng hôn')
GO
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS01      ', N'BH05      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS02      ', N'BH03      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS03      ', N'BH02      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS05      ', N'BH01      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS06      ', N'BH04      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS06      ', N'BH06      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS06      ', N'BH07      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS07      ', N'BH08      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS07      ', N'BH09      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS08      ', N'BH10      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS08      ', N'BH11      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS09      ', N'BH12      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS09      ', N'BH13      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS10      ', N'BH00      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS10      ', N'BH14      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS10      ', N'BH45      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS10      ', N'BH46      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS12      ', N'BH15      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS12      ', N'BH16      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS13      ', N'BH17      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS13      ', N'BH18      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS13      ', N'BH19      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS15      ', N'BH23      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS15      ', N'BH24      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS15      ', N'BH25      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS15      ', N'BH26      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS16      ', N'BH27      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS17      ', N'BH28      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS17      ', N'BH29      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS17      ', N'BH30      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS18      ', N'BH31      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS18      ', N'BH32      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS18      ', N'BH33      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS19      ', N'BH34      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS19      ', N'BH35      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS20      ', N'BH36      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS20      ', N'BH37      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS20      ', N'BH38      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS21      ', N'BH39      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS21      ', N'BH40      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS22      ', N'BH41      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS22      ', N'BH42      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS23      ', N'BH43      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS23      ', N'BH44      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS25      ', N'BH47      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS25      ', N'BH48      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS26      ', N'BH49      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS26      ', N'BH50      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS27      ', N'BH51      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS27      ', N'BH52      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS28      ', N'BH53      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS28      ', N'BH54      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS29      ', N'BH55      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS29      ', N'BH56      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS30      ', N'BH57      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS30      ', N'BH58      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS31      ', N'BH59      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS31      ', N'BH60      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS32      ', N'BH61      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS32      ', N'BH62      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS33      ', N'BH63      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS33      ', N'BH64      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS33      ', N'BH65      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS34      ', N'BH66      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS34      ', N'BH67      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS35      ', N'BH68      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS35      ', N'BH69      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS36      ', N'BH20      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS36      ', N'BH21      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS36      ', N'BH22      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS36      ', N'BH70      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS36      ', N'BH71      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS37      ', N'BH72      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS37      ', N'BH73      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS38      ', N'BH74      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS38      ', N'BH75      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS39      ', N'BH76      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS39      ', N'BH77      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS40      ', N'BH78      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS40      ', N'BH79      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS41      ', N'BH80      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS41      ', N'BH81      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS42      ', N'BH82      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS42      ', N'BH83      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS43      ', N'BH84      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS43      ', N'BH85      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS44      ', N'BH86      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS44      ', N'BH87      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS45      ', N'BH88      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS45      ', N'BH89      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS46      ', N'BH90      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS46      ', N'BH91      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS47      ', N'BH92      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS47      ', N'BH93      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS48      ', N'BH94      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS48      ', N'BH95      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS49      ', N'BH96      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS49      ', N'BH97      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS50      ', N'BH98      ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS50      ', N'BH99      ')
GO
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS51      ', N'BH100     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS51      ', N'BH101     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS52      ', N'BH102     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS52      ', N'BH103     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS52      ', N'BH104     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS52      ', N'BH105     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS52      ', N'BH106     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS52      ', N'BH107     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS53      ', N'BH108     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS53      ', N'BH109     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS53      ', N'BH110     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS53      ', N'BH111     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS53      ', N'BH112     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS53      ', N'BH113     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS53      ', N'BH114     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS53      ', N'BH115     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS53      ', N'BH116     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS54      ', N'BH117     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS54      ', N'BH118     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS54      ', N'BH119     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS54      ', N'BH120     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS54      ', N'BH121     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS54      ', N'BH122     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS55      ', N'BH123     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS55      ', N'BH124     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS56      ', N'BH125     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS56      ', N'BH126     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS56      ', N'BH127     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS57      ', N'BH128     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS57      ', N'BH129     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS57      ', N'BH130     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS57      ', N'BH131     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS57      ', N'BH132     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS57      ', N'BH133     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS57      ', N'BH134     ')
INSERT [dbo].[BAIHAT_CASI] ([ma_casi], [ma_baihat]) VALUES (N'CS57      ', N'BH135     ')
GO
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS01      ', N'Đức Phúc', N'Đức Phúc (sinh ngày 15 tháng 10 năm 1996), tên đầy đủ là Nguyễn Đức Phúc là một ca sĩ, quán quân Giọng hát Việt mùa 3')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS02      ', N'Cao Thái Sơn', N'Cao Thái Sơn là một ca sĩ Việt Nam sinh tại Hà Nội nhưng quê quán tại Thừa Thiên – Huế. Anh được biết đến với vai trò là ca sĩ Việt Nam hát theo dòng nhạc trẻ')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS03      ', N'Phạm Trưởng', N'Phạm Trưởng là một ca sĩ, nhạc sĩ Việt Nam và là cựu thành viên của nhóm nhạc Vboys. Anh hát với thể loại nhạc Pop-ballad, R&B nổi tiếng với ca khúc do chính anh sáng tác như: Đàn ông là thế, Xin lỗi anh đã sai, Hai ba năm, Trang giấy trắng')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS04      ', N'Soobin Hoàng Sơn', N'Nguyễn Hoàng Sơn, nghệ danh Soobin Hoàng Sơn hay SOOBIN là một nam ca sĩ, nhạc sĩ, rapper, nhà sản xuất âm nhạc thuộc công ty SpaceSpeakers Group tại Việt Nam. Anh là một trong số ít nam ca sĩ tại Việt Nam có khả năng thể hiện được nhiều dòng nhạc và kĩ năng trình diễn sân khấu nổi bật')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS05      ', N'Vũ', N'Hoàng Thái Vũ (sinh ngày 3 tháng 10 năm 1995 tại Hà Nội), thường được biết đến với nghệ danh Vũ (cách điệu là Vũ.) là ca sĩ kiêm sáng tác nhạc người Việt Nam')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS06      ', N'Sơn Tùng MTP', N'Nguyễn Thanh Tùng, thường được biết đến với nghệ danh Sơn Tùng M-TP, là một nam ca sĩ kiêm sáng tác nhạc, rapper và diễn viên người Việt Nam')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS07      ', N'Anh Khang', N'Anh Khang (tên đầy đủ là Hoàng Anh Khang) sinh ra trong gia đình có truyền thống nghệ thuật với ông là giám đốc Nhà hát Tuồng Trung ương – NSƯT Hoàng Khiềm và chị gái là ca sĩ Ngọc Anh - cựu thành viên 3A')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS08      ', N'Trịnh Thăng Bình', N'Trịnh Thăng Bình (sinh ngày 30 tháng 4 năm 1988 tại Thành phố Hồ Chí Minh) là một ca sĩ, nhạc sĩ, diễn viên và nhà sản xuất âm nhạc người Việt Nam')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS09      ', N'Trung Quân Idol', N'Bùi Nguyễn Trung Quân với nghệ danh Trung Quân Idol là ca sĩ người Việt Nam. Anh được biết đến sau khi tham gia Thần tượng âm nhạc Việt Nam mùa thứ ba năm 2010 và liên tục ra các bài hit cho đến nay')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS10      ', N'Erik', N'Lê Trung Thành, thường được biết đến với nghệ danh Erik là một nam ca sĩ kiêm vũ công người Việt Nam. Anh từng tham gia chương trình Giọng hát Việt nhí năm 2013 và sau đó trở thành thành viên nhóm nhạc Monstar')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS11      ', N'Miu Lê', N'Lê Ánh Nhật hay còn được khán giả biết đến với nghệ danh là Miu Lê, sinh ngày 05 tháng 07 năm 1991 tại Thành phố Hồ Chí Minh là một nữ ca sĩ, diễn viên người Việt Nam')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS12      ', N'Nguyễn Trần Trung Quân', N'Nguyễn Trần Trung Quân là một ca sĩ, nhà sản xuất âm nhạc. Theo học tại Học viện Âm nhạc Quốc gia Việt Nam từ nhỏ, Trung Quân sớm tham gia sự nghiệp ca hát chuyên nghiệp thông qua nhiều cuộc thi trên toàn quốc, tiêu biểu có giải “Ca sĩ trẻ triển vọng” dòng nhạc nhẹ tại Sao Mai 2011 và top 4 cuộc thi Sao Mai điểm hẹn')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS13      ', N'Vũ Cát Tường', N'Vũ Cát Tường là một nữ ca sĩ, nhạc sĩ và nhà sản xuất âm nhạc người Việt Nam. Bên cạnh giọng hát tốt, Vũ Cát Tường còn được biết đến với khả năng sáng tác, kết hợp nhiều thể loại nhạc khác nhau như R&B, neo soul, pop, electropop, blues, jazz, alternative rock, funk, ballad')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS14      ', N'Đinh Mạnh Ninh', N'Đinh Mạnh Ninh là một ca sĩ của Việt Nam, anh vừa hoạt động một mình vừa là thành viên của nhóm nhạc nam M4U. Anh được xem là một trong những ca sĩ trẻ được yêu thích hiện nay và đã giành được nhiều giải thưởng quan trọng')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS15      ', N'Minh Vương', N'Minh Vương hay còn gọi là Minh Vương M4U là nam ca sĩ và nhạc sĩ nhạc trẻ của Việt Nam, thuộc sở trường pop ballad')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS16      ', N'Thuỳ Chi', N'Thùy Chi, tên thật là Trần Thùy Chi là một nữ ca sĩ Việt Nam, được biết đến qua các bài hát trên Internet')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS17      ', N'Khắc Việt', N'Khắc Việt tên thật là Nguyễn Khắc Việt là một ca sĩ, nhạc sĩ Việt Nam. Anh theo dòng nhạc pop-ballad')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS18      ', N'Mỹ Tâm', N'Phan Thị Mỹ Tâm, thường được biết đến với nghệ danh Mỹ Tâm, là một nữ ca sĩ kiêm sáng tác nhạc, đạo diễn, diễn viên và giám khảo truyền hình người Việt Nam. Sinh ra tại Đà Nẵng, cô sớm bộc lộ năng khiếu về âm nhạc và liên tiếp giành chiến thắng tại nhiều cuộc thi ca hát lớn nhỏ lúc còn ở độ tuổi thiếu niên')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS19      ', N'Tuấn Hưng', N'Nguyễn Tuấn Hưng, sinh ngày 5 tháng 10 năm 1978 tại Hà Nội, là một ca sĩ nhạc trẻ của Việt Nam')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS20      ', N'Hoàng Tôn', N'Hoàng Tôn, sinh tại TP. HCM. Hoàng Tôn được sinh ra trong gia đình âm nhạc có bố là nhạc công còn mẹ là giảng viên thanh nhạc của nhạc viện TP. HCM, anh có khả năng: Sáng tác, hòa âm, chơi piano, guitar, poker và hát tiếng Anh rất tốt')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS21      ', N'Vương Anh Tú', N'Vương Anh Tú là một ca sĩ, nhạc sĩ người Việt Nam. Anh hoạt động chủ yếu với tư cách là nhạc sĩ và đã có nhiều sáng tác trở thành thương hiệu của các ca sĩ trẻ trong nước. Sau bản hit "Giúp Anh Trả Lời Những Câu Hỏi" và “Anh Cứ Đi Đi”, Vương Anh Tú đã được khán giả trong và ngoài nước để mắt đến')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS22      ', N'Mr.Siro', N'Vương Quốc Tuân, thường được biết đến với nghệ danh Mr. Siro, sinh ngày 14 tháng 11 năm 1981 tại Thành phố Hồ Chí Minh, là một nhạc sĩ và ca sĩ người Việt Nam. Mr')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS23      ', N'Chi Dân', N'Chi Dân tên thật là Nguyễn Trung Hiếu là một nam ca sĩ kiêm sáng tác nhạc người Việt Nam')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS24      ', N'Hoàng Dũng', N'Nguyễn Hoàng Dũng, hay còn được biết đến với nghệ danh Hoàng Dũng, là một nam ca sĩ, nhạc sĩ tại Việt Nam. Anh từng đạt danh hiệu Á quân cuộc thi Giọng Hát Việt năm 2015 và lọt top 10 Bài hát hay nhất năm 2016')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS25      ', N'Bùi Anh Tuấn', N'Bùi Anh Tuấn là một nam ca sĩ người Việt Nam. Anh bắt đầu được biết đến khi giành lần lượt giải nhất cuộc thi Coca-Cola Music Award và Ngôi Sao Tiếng Hát Truyền Hình năm 2011, và trở nên nổi tiếng trong giới trẻ kể từ khi tham gia The Voice Vietnam 2012 với ca khúc Nơi Tình Yêu Bắt Đầu của nhạc sĩ Phùng Tiến Minh')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS26      ', N'Phạm Hồng Phước', N'Phạm Hồng Phước, là một nam ca sĩ, nhạc sĩ, diễn viên điện ảnh người Việt Nam. Nổi danh từ chương trình Vietnam Idol 2012, Phạm Hồng Phước tự viết nhạc và trình diễn với tư cách ca sĩ solo, đồng thời hợp tác với nhiều ca sĩ khác tại Việt Nam')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS27      ', N'Ngô Kiến Huy', N'Ngô Kiến Huy tên thật là Lê Thành Dương là một nam ca sĩ, diễn viên, người dẫn chương trình người Việt Nam')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS28      ', N'Tóc Tiên', N'Tóc Tiên là một nữ ca sĩ người Việt Nam. Tiên đã vinh dự giành giải Cống hiến 2019 ở hạng mục "Bài hát của năm" cho Có ai thương em như anh. Cô từng là ca sĩ của Trung tâm Thúy Nga và thường xuyên biểu diễn trong các chương trình Paris By Night của trung tâm')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS29      ', N'Đông Nhi', N'Mai Hồng Ngọc, thường được biết đến với nghệ danh Đông Nhi là một nữ ca sĩ kiêm sáng tác nhạc và diễn viên người Việt Nam')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS30      ', N'Noo Phước Thịnh', N'Mai Hồng Ngọc, thường được biết đến với nghệ danh Đông Nhi là một nữ ca sĩ kiêm sáng tác nhạc và diễn viên người Việt Nam')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS31      ', N'Bảo Thy', N'Trần Thị Thúy Loan, thường được biết đến với nghệ danh Bảo Thy, là một nữ ca sĩ, nhạc sĩ, diễn viên điện ảnh, người dẫn chương trình, người mẫu ảnh kiêm nhà kinh doanh người Việt Nam')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS32      ', N'Hồ Ngọc Hà', N'Hồ Ngọc Hà là một nữ ca sĩ diễn viên và người mẫu nổi tiếng người Việt Nam. Hồ Ngọc Hà bắt đầu sự nghiệp người mẫu từ năm 15 tuổi với chiều cao ấn tượng 1m72 và đạt nhiều giải thưởng. Cô chuyển sang ca hát bằng việc ra mắt album đầu tay 24 giờ 7 ngày năm 2004')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS33      ', N'JustaTee', N'Nguyễn Thanh Tuấn, thường được biết đến với nghệ danh JustaTee hay JayTee là một nam rapper, ca sĩ kiêm sáng tác nhạc người Việt Nam. Anh từng giành được 1 giải Cống hiến và là một trong những rapper rất thành công và được đông đảo khán giả trong thị trường âm nhạc Việt Nam biết đến và yêu mến.')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS34      ', N'Binz', N'Lê Nguyễn Trung Đan, thường được biết đến với nghệ danh Binz hay Binz Da Poet, là một nam rapper, người viết bài hát người Mỹ gốc Việt')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS35      ', N'Rhymastic', N'Vũ Đức Thiện, được biết đến với nghệ danh Rhymastic hoặc Young Crizzal, là một rapper, nhạc sĩ, ca sĩ, nhà sản xuất âm nhạc người Việt Nam và là thành viên của nhóm SpaceSpeakers.Anh được nhiều người đánh giá là một rapper rất toàn diện tại Việt Nam ở thời điểm hiện tại khi có khả năng thể hiện đa dạng thể loại, chủ đề')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS36      ', N'Suboi', N'Hàng Lâm Trang Anh, thường được biết đến với nghệ danh Suboi, là một nữ rapper, ca sĩ, người viết bài hát và diễn viên người Việt Nam. Cô được mệnh danh là "Nữ hoàng nhạc hip-hop" tại Việt Nam')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS37      ', N'Karik', N'Phạm Hoàng Khoa thường được biết đến với nghệ danh Karik là một rapper, nhạc sĩ người Việt Nam. Anh được biết đến với tư cách là rapper người Việt đầu tiên giành giải thưởng MTV Việt Nam vào năm 2011')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS38      ', N'Wowy', N'Nguyễn Ngọc Minh Huy, thường được biết đến với nghệ danh Wowy, là một rapper, nhà sáng tác ca khúc người Việt Nam. Anh là một trong những rapper tiên phong ở miền Nam khi bắt đầu hoạt động trong nhóm SouthGanz năm 2006')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS39      ', N'Đen Vâu', N'Nguyễn Đức Cường, thường được biết đến với nghệ danh Đen Vâu hay Đen là một nam rapper và nhạc sĩ người Việt Nam. Đen Vâu từng giành được 1 giải Cống hiến và là "một trong số ít nghệ sĩ thành công từ làn sóng underground và âm nhạc indie" của Việt Nam')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS40      ', N'Min', N'Nguyễn Minh Hằng, được biết đến với nghệ danh MIN, là một nữ ca sĩ, vũ công và nhà sản xuất âm nhạc người Việt Nam. Sau một thời gian được biết đến với tư cách là thành viên của nhóm nhảy St.319, cô ra mắt với tư cách ca sĩ solo vào năm 2013 với đĩa đơn đầu tay "Tìm"')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS41      ', N'Amee', N'Trần Huyền My, thường được biết đến với nghệ danh Amee là một nữ ca sĩ và diễn viên người Việt Nam. Cô hiện đang là nghệ sĩ trực thuộc St.319 Entertainment')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS42      ', N'Châu Khải Phong', N'Châu Khải Phong tên thật là Lê Văn Thuận, sinh ngày: 30/10/1986. Quê quán của anh tại Nghệ An. Anh sở hữu chiều cao 1m73 và nặng 71kg. Châu Khải Phong sinh ra trong một gia đình làm nông ở miền Trung')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS43      ', N'Khánh Phương', N'Khánh Phương là một ca sĩ nhạc trẻ Việt Nam, đồng thời còn là người sáng lập và cựu thành viên của nhóm nhạc MP5. Sau khi các thành viên trong nhóm tách ra hát đơn thì Khánh Phương chính thức bước vào con đường hát đơn của mình từ đầu năm 2006')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS44      ', N'Hồ Quang Hiếu', N'Hồ Quang Hiếu là một nam ca sĩ nhạc trẻ Việt Nam. Hiếu sở hữu khuôn mặt khá điển trai, chất giọng đẹp, ấm áp phù hợp với các ca khúc ballad nhẹ nhàng, thành công sau bài hit đầu tiên trong sự nghiệp âm nhạc của mình trích từ album cùng tên "Chỉ cần em hạnh phúc"')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS45      ', N'Bảo Anh', N'Bảo Anh có tên đầy đủ là Nguyễn Hoài Bảo Anh là một nữ ca sĩ kiêm diễn viên truyền hình nổi tiếng người Việt Nam. Cô được biết đến lần đầu khi tham gia chương trình Giọng hát Việt mùa đầu tiên năm 2012. Bảo Anh hiện đang làm công việc kinh doanh cùng gia đình')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS46      ', N'Lương Bích Hữu', N'Lương Bích Hữu, là một nữ ca sĩ, nhạc sĩ, diễn viên truyền hình, diễn viên nhạc kịch, người mẫu ảnh kiêm nhà sản xuất âm nhạc nổi tiếng người Việt gốc Hoa')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS47      ', N'Phạm Quỳnh Anh', N'Phạm Quỳnh Anh là một nữ ca sĩ, nhạc sĩ, diễn viên, người mẫu ảnh kiêm nhà sản xuất âm nhạc người Việt Nam. Cô từng là thành viên của nhóm nhạc Sắc Màu và H.A.T')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS48      ', N'Ưng Hoàng Phúc', N'Ưng Hoàng Phúc tên thật là Nguyễn Quốc Thanh là một nam ca sĩ, diễn viên, nhà sản xuất điện ảnh, vũ công người Việt Nam. Anh từng là ca sĩ độc quyền của công ty Thế giới Giải Trí')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS49      ', N'Thu Thuỷ', N'Thu Thủy có tên đầy đủ là Nguyễn Thu Thủy là một nữ ca sĩ, nhạc sĩ, nhà sản xuất âm nhạc, người mẫu ảnh kiêm người dẫn chương trình nổi tiếng người Việt Nam. Đỉnh cao sự nghiệp của cô là bài hit ''Think of you'' phát hành năm 2007 cho đến nhiều năm sau cư dân mạng vẫn tìm nghe ca khúc')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS50      ', N'Trương Quỳnh Anh', N'Trương Quỳnh Anh là một nữ ca sĩ, diễn viên Việt Nam. Cô được biết đến với vai nữ chính trong bộ phim "Một ngày không có em" và album đầu tay "Đơn côi, phía sau nụ cười"')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS51      ', N'Quang Hà ', N'Quang Hà tên thật Vũ Hoàng Hà là một nam ca sĩ Việt Nam. Quang Hà được khán giả biết đến với ca khúc Cô bé mắt nai, Những ngọn nến trong đêm và Ngỡ')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS52      ', N'Ngô Trung Quang', N'Ngô Trung QuangNgày sinh=, 1997/07/20 Ngô Trung Quang là một ca sĩ đoạt giải quán quân chương trình Thần tượng Bolero 2016. Hiện nay, Trung Quang đang là ca sĩ trực thuộc công ty quản lý HT Production, dưới sự dẫn dắt của Đan Trường và ông bầu Hoàng Tuấn')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS53      ', N'Xuân Mai', N'Xuân Mai có tên đầy đủ là Trương Hoàng Xuân Mai là một nữ ca sĩ kiêm diễn viên truyền hình người Việt Nam. Cô bước chân vào lĩnh vực ca hát từ khi còn rất nhỏ, năm 2 tuổi cô đã đi biểu diễn và bán khá chạy với loạt album & liveshow đầu tay "Con cò bé bé" dưới định dạng VCD')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS54      ', N'Quang Lê', N'Quang Lê tên thật là Lê Hữu Nghị, là một ca sĩ hải ngoại, cộng tác với Trung tâm Thúy Nga từ Paris By Night 66: Người Tình và Quê Hương, nhưng hiện tại hoạt động chủ yếu ở Việt Nam')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS55      ', N'Quang Linh', N'Quang Linh là một ca sĩ chuyên hát về dòng nhạc dân ca, đặc biệt là dòng nhạc Huế. Ngoài ra, anh còn hát nhạc trẻ cũng như nhạc đương đại. Quang Linh thành công với các ca khúc: Chim sáo ngày xưa, Ai ra xứ Huế, Chân quê, Thương quá Việt Nam, Tóc em đuôi gà, Ca dao em và tôi, Bạn tôi')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS56      ', N'Miu Lê', N'Lê Ánh Nhật hay còn được khán giả biết đến với nghệ danh là Miu Lê, sinh ngày 05 tháng 07 năm 1991 tại Thành phố Hồ Chí Minh là một nữ ca sĩ, diễn viên người Việt Nam')
INSERT [dbo].[CASI] ([ma_casi], [ten_casi], [thongtin_casi]) VALUES (N'CS57      ', N'Anh Thơ', N'Anh Thơ, là một nữ ca sĩ nổi tiếng. Anh Thơ và Lan Anh là một trong những giọng ca hàng đầu Việt Nam hiện nay đối với những ca khúc thuộc dòng nhạc thính phòng và cách mạng truyền thống')
GO
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX01     ', N'ERIK - Official', N'Business enquiries: 0989996455 - Mr. Phan Anh
 Mail: erik.officialacc@gmail.com')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX02     ', N'Vũ - Official', N'Tôi là Vũ, đơn giản, tôi là Vũ?
Nhiều thứ linh tinh thôi :D

MỌI NGƯỜI SUBSCRIBE KÊNH CỦA VŨ ĐỂ XEM NGAY CÁC VIDEO MỚI NHẤT.
► SUBSCRIBE CHANNEL: http://bit.ly/VuOfficial

Mọi người theo dõi thông tin của Tôi tại đây:
► Fanpage: https://www.facebook.com/hoangthaivuofficial
► Instagram: https://www.instagram.com/toilavu/
---------------------
© Bản quyền thuộc về Vũ Official
© Copyright by Vũ Official  ☞ Do not Reup')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX03     ', N'Dong Giao Production', N'DONG GIAO Production, nhà sản xuất sản phẩm Video giải trí chuyên nghiệp đã và đang sản xuất rất nhiều chương trình giải trí, hài kịch liveshow chất lượng. ')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX04     ', N'Cao Thai Son Production', N'Contact Info : hoangquoctuanit1911@gmail.com (Mr. Tuấn)
Hotline : 0938.85.2921 (Mr. Tuấn) ')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX05     ', N' MTP Entertainment', N'M-TP ENTERTAINMENT sở hữu toàn bộ các nội dung có liên quan đến nghệ sĩ thuộc quyền quản lý của công ty và các sản phẩm do công ty sản xuất.
Mọi vấn đề liên quan đến quyền tác giả và quyền sở hữu vui lòng liên hệ công ty để được hỗ trợ.')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX06     ', N'Tripple D', N'Triple D tên thật là Dương Đại Dương. Anh được biết đến là một trong những thành viên của nhóm hip hop đình đám của Hà Nội – SpaceSpeakers. - Triple D đã khẳng định bản lĩnh riêng của mình trong vai trò: nhạc sĩ, producer cho đến DJ.')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX07     ', N'Đan nguyên', N'Nguyễn Đặng Đan (sinh ngày 9 tháng 7 năm 1984) thường được biết đến với nghệ danh Đan Nguyên, là một ca sĩ hải ngoại thành công với dòng nhạc vàng')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX08     ', N'hoài sa', N'Bùi Đình Hoài Sa ... Bùi Đình Hoài Sa (tên khai sinh là Bùi Hải Sơn, còn được biết với nghệ danh khác là Hy Sa B hay SaSha, sinh ngày 11 tháng 12 năm 1991')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX09     ', N'Loan châu', N'Ninh Cát Loan Châu (sinh ngày 15 tháng 9 năm 1973) là một ca sĩ gốc Việt. Cô được phát hiện đầu tiên bởi giám đốc âm nhạc Trúc Hồ ở trung tâm Asia năm 1996.')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX10     ', N'Hương tràm', N'Phạm Thị Hương Tràm (sinh ngày 15 tháng 5 năm 1995 tại Thành phố Vinh, Nghệ An), thường được biết đến với nghệ danh Hương Tràm, là một nữ ca sĩ người Việt ')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX11     ', N'Trang thiên', N'Thiên Trang tên thật là Huỳnh Thị Hai (sinh ngày 1 tháng 2 năm 1951) tại Sài Gòn, là một nữ ca sĩ thuộc dòng nhạc vàng. Ngoài ra cô còn là diễn viên')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX12     ', N'Amee & Karik', N'Trần Huyền My (sinh ngày 23 tháng 3 năm 2000), thường được biết đến với nghệ danh Amee là một nữ ca sĩ và diễn viên người Việt Nam.')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX13     ', N'Hong Van Entertainment', N'Hồng Vân Entertainment, nơi tổng hợp những Vlog mới nhất, những tập kịch mới và hay nhất của Nghệ Sĩ Hồng Vân')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX14     ', N'Quỳnh hợp', N'Quỳnh Hợp được gọi là ''nhạc sĩ của lính'', ''nhạc sĩ của biển đảo, của Trường Sa'' nhưng hơn hết, chị là nhạc sĩ của những nẻo tâm hồn từ biên cương hải đảo đến cả những tâm hồn tha hương')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX15     ', N'Đen vâu official', N'Nguyễn Đức Cường (sinh ngày 13 tháng 5 năm 1989), thường được biết đến với nghệ danh Đen Vâu hay Đen là một nam rapper và nhạc sĩ người Việt Nam.')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX16     ', N'Khắc hưng', N'Khắc Hưng tên đầy đủ là Nguyễn Khắc Hưng, còn có nghệ danh KHÙNG (sinh ngày 12 tháng 12 năm 1992 tại Yên Bái) là một nhà sản xuất âm nhạc, nhạc sĩ, ca sĩ người Việt Nam')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX17     ', N'Min', N'Min trở thành một trong những thành viên nổi bật nhất của nhóm nhảy St.319. Cô cũng chính là thành viên đầu tiên có video dance cover quảng bá solo')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX18     ', N'HTV Entertainment', N'HTV hiện đang là tập đoàn truyền thông đa phương tiện chủ lực, quan trọng hàng đầu ... Đây là một hãng truyền hình tư nhân thuộc Giáo hội Công giáo VNCH')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX19     ', N'Châu khải phong', N'Châu Khải Phong sinh năm 1986, tên thật là Lê Văn Thuận, được biết đến là một ca sỹ trẻ khá nổi tiếng trong giới trẻ được đông đảo khán giả biết đến và yêu ')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX20     ', N'Tuấn Chelsea Group', N'Tuấn Chelsea là cái tên không lạ trên các bìa CD, DVD của ca sĩ hot nhất hiện nay. Anh là đạo diễn, quay phim được các ca sĩ khó tính lựa chọn,')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX21     ', N'Khánh Phương', N'Khánh Phương (tên đầy đủ Phạm Khánh Phương, sinh ngày 4 tháng 11 năm 1981 tại thành phố Hồ Chí Minh) là một ca sĩ nhạc trẻ Việt Nam, đồng thời còn là người sáng lập và cựu thành viên của nhóm nhạc MP5 (2001 - 2004) (cùng với Trương Thế Vinh, Trần Tuyên, Phương Tài).')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX22     ', N'Trần lê quỳnh', N'Trần Lê Quỳnh (sinh ngày 18/08/1978 tại Hà Nội, quê gốc ở Hải Dương, Việt Nam) là một nhạc sĩ Việt Nam, là con trai của nhà văn Trần Hoài Dương. Anh là tác giả của các ca khúc như "Chân tình", "Cô gái đến từ hôm qua", "Tuyết rơi mùa hè" và "Nhớ gấp ngàn lần hơn"...')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX23     ', N'Hồ quang hiếu TV', N'Hồ Quang Hiếu (sinh ngày 20 tháng 9 năm 1986) là một nam ca sĩ nhạc trẻ Việt Nam. Hiếu sở hữu khuôn mặt điển trai, chất giọng đẹp, ấm áp')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX24     ', N'Lương bích hữu', N'Lương Bích Hữu (sinh năm 1984) là một nữ ca sĩ người Việt gốc Hoa được biết đến nhiều qua các ca khúc dành cho giới trẻ. Cô còn được giới truyền thông cũng như khán giả hâm mộ đặt cho biệt danh Cô gái Trung Hoa')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX25     ', N'Phan mạnh quỳnh', N'Phan Mạnh Quỳnh (sinh ngày 10 tháng 1 năm 1990) là một ca sĩ kiêm nhạc sĩ của Việt Nam. ... Anh giành được một đề cử Cống hiến cho bài "Huyền thoại" năm 2019')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX26     ', N'Khánh Phạm', N'Kenbi Khánh Phạm tên thật là Phạm Duy Khánh được biết đến là ''ông trùm chân dài 9X'' có tiếng trong làng mẫu Việt Nam. Bằng tình yêu với nghệ thuật cùng với niềm đam mê thời trang của mình chàng trai trẻ tuổi này đã tự xây dựng cho mình một câu lạc bộ riêng và nhanh chóng sở hữu đội ngũ ''chân dài'' 9X chất lượng.')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX27     ', N'Phạm quỳnh anh', N'Phạm Quỳnh Anh (sinh ngày 20 tháng 8 năm 1984 tại Hà Nội) là một nữ ca sĩ, nhạc sĩ, diễn viên, người mẫu ảnh kiêm nhà sản xuất âm nhạc người Việt Nam.')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX28     ', N'Ưng hoàng phúc', N'Ưng Hoàng Phúc ... Ưng Hoàng Phúc tên thật là Nguyễn Quốc Thanh (sinh ngày 18 tháng 8 năm 1981 tại xã Kiến An, huyện Chợ Mới, tỉnh An Giang) là một nam ca sĩ')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX29     ', N'Ngọc sơn', N'Ngọc Sơn (sinh ngày 26 tháng 11 năm 1968) là một ca sĩ, nhạc sĩ người Việt Nam. Anh được biết đến với biệt danh là "ông hoàng nhạc sến" hay "Michael Ngọc ..')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX30     ', N'Nhật kim anh', N'Nhật Kim Anh ... Nhật Kim Anh tên thật là Đỗ Thị Kim Huê (sinh ngày 15 tháng 8 năm 1985 tại Thanh Hóa) là một nữ ca sĩ và diễn viên nổi tiếng người Việt Nam.')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX31     ', N'Tăng phúc official', N'aChào mừng bạn đến với Kênh YouTube chính thức của Tăng Phúc!
Welcome to Tang Phuc''s Official YouTube Channel !')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX32     ', N'Vương quang long', N'a')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX33     ', N'Đàm Vĩnh Hưng', N'Đàm, là một ca sĩ Việt Nam. Đàm Vĩnh Hưng là một nghệ sĩ đã giành được 2 giải Cống hiến và hàng loạt các giải thưởng lớn nhỏ khác ở trong nước')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX34     ', N'Quang Lê', N'Quang Lê (sinh năm 1979) tên thật là Lê Hữu Nghị, là một ca sĩ hải ngoại, cộng tác với Trung tâm Thúy Nga từ Paris By Night 66: Người Tình và Quê Hương,')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX35     ', N'Đan Nguyên', N'Nguyễn Đặng Đan (sinh ngày 9 tháng 7 năm 1984) thường được biết đến với nghệ danh Đan Nguyên, là một ca sĩ hải ngoại thành công với dòng nhạc vàng')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX36     ', N'Đàm Vĩnh Hưng', N'Đàm, là một ca sĩ Việt Nam. Đàm Vĩnh Hưng là một nghệ sĩ đã giành được 2 giải Cống hiến và hàng loạt các giải thưởng lớn nhỏ khác ở trong nước')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX37     ', N'Tuần vũ', N'Ca sĩ Tuấn Vũ tên thật là Nguyễn Văn Tài (sinh ngày 16 tháng 12 năm 1959 tại Phan Thiết, Việt Nam), là một nam ca sĩ nổi tiếng người Việt sống ở hải ngoại.')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX38     ', N'Xuân Giao', N'Tên thật là Trương Xuân Giao, sinh ngày 2 tháng 1 năm 1932. Quê tại Như Quỳnh, Văn Lâm, Hưng Yên. Hiện cư trú tại quận Hai Bà Trưng, Hà Nội.
')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX39     ', N'Lê Xuân Thọ', N'Nhạc sĩ Lê Xuân Thọ sinh ngày 5 tháng 5 năm 1939 tại Thanh Liêm, Hà Nam. Hiện sống tại Hà Nội.Ông nguyên là kỹ sư làm việc tại ngành đường sắt.')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX40     ', N'Avata entertainment', N'Avatar Entertainment is a management, production, and foreign sales company working with talented creators throughout the world.
')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX41     ', N'Phạm Văn Minh', N'Phạm Văn Minh · Khánh Băng (1935-2005) nhạc sĩ Việt Nam · Phạm Văn Minh (sinh 1956): đại tá giám đốc công an tỉnh Bắc Giang, đại biểu Quốc hội Việt Nam khóa XII')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX42     ', N'Trương Quang Lục', N'Trương Quang Lục (1935 - ) là nhạc sĩ Việt Nam. Ông sinh ngày 25 tháng 2 năm 1933, quê tại xã Tịnh Khê (Sơn Mỹ), huyện Sơn Tịnh, tỉnh Quãng ...')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX43     ', N'Dân ca Nam Bộ', N'Dân ca Việt Nam là một thể loại âm nhạc cổ truyền, qua việc truyền khẩu, truyền ngón các bài dân ca, mỗi người diễn xướng có quyền ứng tác tự do, góp phần sáng tạo của mình vào tác phẩm trong quá trình biểu diễn.')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX44     ', N'Candy Ngọc Hà', N'Ca sĩ nhí Candy Ngọc Hà năm nay 7 tuổi, gây ấn tượng bởi vẻ bề ngoài xinh xắn, dễ thương và cách ăn mặc giống như một cô công chúa. Đến với chương trình, em làm một tấm thiệp vô cùng đáng yêu, trong thiệp là cây kem và gấu bông tặng mẹ. ... Chính vì thế nên em rất yêu mẹ.')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX45     ', N'Tân Huyền', N'Tân Huyền (1931-2008), tên thật Phan Văn Tần, là một nhạc sĩ thuộc thể loại nhạc cách mạng của Việt Nam. Ông sinh vào ngày 5 tháng 4 năm 1931 tại Đức Thọ')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX46     ', N'Nguyễn Ngọc Thiện', N'Nguyễn Ngọc Thiện (sinh ngày 27 tháng 3 năm 1959) là một chính khách Việt Nam. Ông nguyên là Ủy viên Ban chấp hành Trung ương Đảng khóa XII, ...')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX47     ', N'Xuân Mai', N'Xuân Mai có tên đầy đủ là · Trương Hoàng Xuân Mai (sinh ngày 05 tháng 01 năm 1995 tại Thành phố Hồ Chí Minh) là một nữ ca sĩ kiêm diễn viên truyền hình người ...')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX48     ', N'Hoài Linh', N'Võ Nguyễn Hoài Linh (sinh ngày 18 tháng 12 năm 1969), thường được biết đến với nghệ danh Hoài Linh, là một nghệ sĩ hài người Việt Nam')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX49     ', N'Bằng kiều', N'Bằng Kiều, tên đầy đủ là Nguyễn Bằng Kiều, sinh ngày 13 tháng 07 năm 1973 tại Hà Nội, là một ca sĩ Việt Nam. Bằng Kiều từng tham gia các ban nhạc Chìa khóa')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX50     ', N'Quang Lê', N'Quang Lê (sinh năm 1979) tên thật là Lê Hữu Nghị, là một ca sĩ hải ngoại, cộng tác với Trung tâm Thúy Nga từ Paris By Night 66: Người Tình và Quê Hương,')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX51     ', N'Trung Quân Idol', N'Bùi Nguyễn Trung Quân với nghệ danh Trung Quân Idol (sinh ngày 20 tháng 1 năm 1989 tại Đà Lạt) là ca sĩ người Việt Nam. ')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX52     ', N'Quang Linh', N'Quang Lê (sinh năm 1979) tên thật là Lê Hữu Nghị, là một ca sĩ hải ngoại, cộng tác với Trung tâm Thúy Nga từ Paris By Night 66: Người Tình và Quê Hương,')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX53     ', N'Lê Quyên', N'Vũ Lệ Quyên (sinh ngày 2 tháng 4 năm 1981) là nữ ca sĩ người Việt Nam. Sinh ra tại thủ đô Hà Nội trong một gia đình giàu truyền thống nghệ thuật, cha là văn công và mẹ là nghệ sĩ hát chèo, Lệ Quyên sớm bộc lộ năng khiếu bẩm sinh về âm nhạc ngay từ khi còn ở độ tuổi nhi đồng.')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX54     ', N'Khánh ly', N'Khánh Ly (tên thật: Nguyễn Thị Lệ Mai, sinh ngày 6 tháng 3 năm 1945) là một nữ danh ca người Mỹ gốc Việt, nổi tiếng với giọng nữ trung trầm (Mezzo-alto)')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX55     ', N'Thu Hiền', N'NSND Thu Hiền (tên thật Nguyễn Thị Thanh Hiền, sinh ngày 3 tháng 5 năm 1952) là một nữ ca sĩ lớn của Việt Nam, nổi tiếng với những ca khúc nhạc cách mạng')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX56     ', N'Trọng Tấn', N'Trọng Tấn (sinh ngày 19 tháng 01 năm 1976) là một ca sĩ Việt Nam người Thanh Hóa có sở trường là các nhạc phẩm truyền thống và cách mạng, có chất giọng Tenor')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX57     ', N'Anh Thơ & Minh Quân', N'Anh Thơ là một trong những ca sĩ nổi tiếng thuộc dòng nhạc thính phòng và ... Nơi ấy quê mình; Tháng ba Tây Nguyên; Chuyến đò quê hương; Biển hát lời anh ca ')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX58     ', N'Tân Nhàn', N'Tân Nhàn sinh năm 1982 tại Hà Nam Ninh (hiện nay tách ra 3 tỉnh Hà Nam, Nam Định và Ninh Bình), là một nữ ca sĩ trẻ người Việt Nam từng giành 1 giải Cống ')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX59     ', N'Lê Dung', N'Nghệ sĩ nhân dân Lê Dung (1951-2001) là một giọng ca lớn nổi tiếng, có vị trí trong nền opera Việt Nam, nghệ sĩ tiên phong cho nền âm nhạc cổ điển Việt Nam cả về trình diễn lẫn giảng dạy và là niềm tự hào của nền âm nhạc Việt Nam, có giọng soprano. ... Bà còn là nghệ sĩ đã làm rạng danh cho nền opera của Việt Nam.')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX60     ', N'Pop Music', N'Nhạc pop (viết tắt của cụm từ tiếng Anh: Popular music, tiếng Việt: nhạc đại chúng) là một thể loại của nhạc đương đại và rất phổ biến trong làng nhạc đại ...')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX61     ', N'Trần quang entertainment', N'Kênh Youtube chính thức của nhạc sỹ Trần Quang (Official Youtube channel of musician Tran Quang)Là nơi để nhạc sĩ Trần Quang giới thiệu các sản phẩm âm nhạc ..')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX62     ', N'HI entertainment', N'HI Entertainment là công ty quản lý các ngôi sao: Erik, ALEX Dương Quốc Anh, Bảo Uyên, Lan Khuê... HI Entertainment là công ty quản lý các ngôi sao')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX63     ', N'Officical Music Video', N'Video âm nhạc (tiếng Anh: Music video hoặc MV) là một dạng phim ngắn hợp nhất bài hát và hình ảnh, được sản xuất với mục đích khuyến mại hoặc nghệ thuật.')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX64     ', N'Big Hit Entertainment Pony Canyon', N'"Run" là một bài hát của nhóm nhạc nam Hàn Quốc BTS và là bài hát chủ đề được trích từ mini album thứ tư của nhóm, The Most Beautiful Moment in Life, Pt. 2 (2015). Phiên bản tiếng Hàn được phát hành bởi Big Hit Entertainment vào ngày 30 tháng 11 năm 2015 tại Hàn Quốc')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX65     ', N'The band', N'The Band là ban nhạc roots rock người Canada-Mỹ với thành phần ban đầu bao gồm Rick Danko (bass, double bass, fiddle, trombone, hát), Levon Helm ')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX66     ', N'Minh Vương M4U', N'Minh Vương sinh ngày 21/12/1984, từng là cựu thành viên của nhóm nhạc nam đình đám M4U được các bạn học sinh - sinh viên rất yêu thích những năm 2000')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX67     ', N'Mỹ tâm', N'Phan Thị Mỹ Tâm (sinh ngày 16 tháng 1 năm 1981), thường được biết đến với nghệ danh Mỹ Tâm, là một nữ ca sĩ kiêm sáng tác nhạc, đạo diễn, diễn viên')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX68     ', N'Tuấn hưng', N'Nguyễn Tuấn Hưng, sinh ngày 5 tháng 10 năm 1978 tại Hà Nội, là một ca sĩ nhạc trẻ của Việt Nam. Anh được công chúng biết đến qua vai trò là thành viên của nhóm nhạc Quả dưa hấu - nhóm nhạc nổi tiếng của Hà Nội vào những năm cuối thế kỉ 20')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX69     ', N'Thanh Hoa', N'Thanh Hoa (12 tháng 10 năm 1950) là một nữ ca sĩ lớn của Việt Nam, được coi là cây đại cổ thụ che bóng mát cả một khoảng trời nghệ thuật Việt Nam.')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX70     ', N'Chi Dân', N'Chi Dân tên thật là Nguyễn Trung Hiếu (sinh ngày 2 tháng 6 năm 1989 tại huyện Kiên Lương, tỉnh Kiên Giang) là một nam ca sĩ kiêm sáng tác nhạc người Việt')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX71     ', N'Hoàng dũng', N'Nguyễn Hoàng Dũng, hay còn được biết đến với nghệ danh Hoàng Dũng (sinh ngày 4 tháng 11 năm 1995), là một nam ca sĩ, nhạc sĩ tại Việt Nam.')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX72     ', N'Bùi anh tuấn', N'Anh là cựu sinh viên của Nhạc viện Thành phố Hồ Chí Minh. Anh sinh ra trong một gia đình không có ai hoạt động trong lĩnh vực nghệ thuật nhưng lại có nhiều thành tích trong sự nghiệp')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX73     ', N'Ali Hoàng Dương', N'Ali Hoàng Dương là ca sĩ từng đạt danh hiệu quán quân của Giọng hát Việt 2017, anh có lợi thế về giọng ca đầy nội lực cùng gương mặt sáng')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX74     ', N'Ngô kiến huy', N'Ngô Kiến Huy sinh ngày 29 tháng 6 năm 1988 tại Thành phố Hồ Chí Minh. Huy được biết với vai trò ca sĩ có chất giọng nam cao, với dòng nhạc pop - ballad, ')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX75     ', N'Tou Liver', N'Nguyễn Hoàng (sinh ngày 21 tháng 1 năm 1987 tại Hà Nội) được biết đến với nghệ danh Touliver, là một DJ/Producer nổi tiếng của Việt Nam.')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX76     ', N'Đông nhi', N'Mai Hồng Ngọc (sinh ngày 13 tháng 10 năm 1988), thường được biết đến với nghệ danh Đông Nhi là một nữ ca sĩ kiêm sáng tác nhạc và diễn viên người Việt Nam.')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX77     ', N'Quang Dũng', N'Quang Dũng, tên thật là Thái Văn Dũng (sinh ngày 8 tháng 8 năm 1975 tại Quy Nhơn, Bình Định) là một ca sĩ Việt Nam dòng nhạc nhẹ, nhạc trữ tình,')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX78     ', N'Hoàng châu', N'Hoàng Châu (sinh năm 26 tháng 9 năm 1976) là một nữ ca sĩ người Việt Nam. Cô được biết đến với vai trò là một nữ ca sĩ chủ yếu hát theo dòng nhạc trẻ Việt Nam. Khởi đầu thành công với thể loại nhạc dân ca, cô từng được mệnh danh là "diva" hay "nữ hoàng nhạc sến miền Tây"')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX79     ', N'Nguyễn Hải phong', N'Nguyễn Hải Phong (sinh ngày 21 tháng 5 năm 1982 tại Huế) là một nhạc sĩ, ca sĩ và nhà sản xuất âm nhạc nổi tiếng của Việt Nam')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX80     ', N'Bảo thy', N'Trần Thị Thúy Loan (sinh ngày 02 tháng 06 năm 1988 tại Thành phố Hồ Chí Minh), thường được biết đến với nghệ danh Bảo Thy, là một nữ ca sĩ, nhạc sĩ,')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX81     ', N'Hồ ngọc hà', N'Hồ Ngọc Hà (tên khai sinh là Hồ Thị Ngọc Hà, sinh ngày 25 tháng 11 năm 1984) là một nữ ca sĩ diễn viên và người mẫu nổi tiếng người Việt Nam')
INSERT [dbo].[HANGSANXUAT] ([ma_hangsanxuat], [ten_hangsanxuat], [thongtin_hangsanxuat]) VALUES (N'HSX82     ', N'Hoài sa', N'Bùi Đình Hoài Sa ... Bùi Đình Hoài Sa (tên khai sinh là Bùi Hải Sơn, còn được biết với nghệ danh khác là Hy Sa B hay SaSha, sinh ngày 11 tháng 12 năm 1991')
GO
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG01      ', N'Mr. Siro', N'Vương Quốc Tuân, thường được biết đến với nghệ danh Mr. Siro, sinh ngày 14 tháng 11 năm 1981 tại Thành phố Hồ Chí Minh,[1] là một nhạc sĩ và ca sĩ người Việt Nam. Mr. Siro là một nghệ sĩ tài năng trong làng nhạc Việt khi anh có thể vừa thể hiện thành công những ca khúc của mình vừa sáng tác những tác phẩm thành công cho nhiều ca sĩ khác. Âm nhạc của Mr. Siro luôn nhẹ nhàng, sâu lắng nhưng lại da diết và mang đến cảm giác day dứt, ám ảnh rất sâu mỗi khi nghe nên rất để lại ấn tượng dai dẳng trong lòng khán giả yêu nhạc.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG02      ', N'Thái Vũ', N'Hoàng Thái Vũ (sinh ngày 3 tháng 10 năm 1995 tại Hà Nội), thường được biết đến với nghệ danh Vũ (cách điệu là Vũ.) là ca sĩ kiêm sáng tác nhạc người Việt Nam.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG03      ', N'Phạm Trưởng', N'Phạm Trưởng (sinh ngày 28 tháng 1 năm 1985 tại Bình Định[1]) là một ca sĩ, nhạc sĩ Việt Nam và là cựu thành viên của nhóm nhạc Vboys. Anh hát với thể loại nhạc Pop-ballad, R&B nổi tiếng với ca khúc do chính anh sáng tác như: Đàn ông là thế, Xin lỗi anh đã sai, Hai ba năm, Trang giấy trắng.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG04      ', N'Cao Thái Sơn', N'Cao Thái Sơn (sinh ngày 22 tháng 9 năm 1985) là một ca sĩ Việt Nam sinh tại Hà Nội nhưng quê quán tại Thừa Thiên – Huế. Anh được biết đến với vai trò là ca sĩ Việt Nam hát theo dòng nhạc trẻ. Trước đây, anh theo học ở trường Cao đẳng văn hoá nghệ thuật và Trường kinh doanh và công nghệ Hà Nội.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG05      ', N'Sơn Tùng MTP', N'Nguyễn Thanh Tùng (sinh ngày 5 tháng 7 năm 1994), thường được biết đến với nghệ danh Sơn Tùng M-TP, là một nam ca sĩ kiêm sáng tác nhạc, rapper và diễn viên người Việt Nam.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG06      ', N'Đức Phúc', N'Nguyễn Đức Phúc (sinh ngày 15 tháng 10 năm 1996) là một nam ca sĩ người Việt Nam được biết đến rộng rãi với tư cách quán quân của The Voice Vietnam 2015')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG07      ', N'Khắc Hưng', N'Khắc Hưng là em trai ca sĩ Khắc Việt. Anh là cựu sinh viên của Học viện Âm nhạc Quốc gia Việt Nam. Những sáng tác đầu tiên của Khắc Việt có sự phụ giúp của em trai trong phần phối khí. Hiện tại, Khắc Hưng đang là nhạc sĩ, nhà sản xuất trẻ có tiếng tại Việt Nam, anh chính là người đứng sau một số hit của các ca sĩ trẻ như Nguyễn Trần Trung Quân, Min, Erik, Đức Phúc, Trọng Hiếu, Miu Lê, nhóm nhạc Monstar,... ')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG08      ', N'Anh Khang', N'Anh Khang sinh năm 1989, tên đầy đủ là Hoàng Anh Khang, được biết đến là nam ca sĩ rất thành công ở thể loại nhạc trẻ, đồng thời anh cũng tạo ấn tượng mạnh bởi việc hát lại những nhạc phẩm dân ca Việt Nam theo một lối hát đương đại mới mẻ mà vẫn thắm đượm tính truyền thống.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG09      ', N'Justa Tee', N'Nguyễn Thanh Tuấn (sinh ngày 1 tháng 11 năm 1991), thường được biết đến với nghệ danh JustaTee hay JayTee là một nam rapper, ca sĩ kiêm sáng tác nhạc')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG10      ', N'Nguyễn nhất huy', N'Nguyễn Nhất Huy ... Sinh ngày: 26-02-1975 tại Cà Mau. Hội viên Hội Âm Nhạc Tp HCM. Ca khúc có nhiều cảm xúc nhất: Tình Mẹ, Nghĩ Về Cha, Người Thầy, Người Về Cuối ')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG11      ', N'Binz', N'Binz (24/05/1988) - ca sĩ/nhạc sĩ/rapper/producer. Anh học tập tại trường Đại học The Art Institute ở Mỹ và khi trở về Việt Nam, anh gia nhập SpaceSpeakers')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG12      ', N'Rhymastic', N'Vũ Đức Thiện (sinh ngày 8 tháng 4 năm 1991), được biết đến với nghệ danh Rhymastic (gọi tắt là Rhym) hoặc Young Crizzal (YC), là một rapper, nhạc sĩ, ca sĩ')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG13      ', N'Hoàng phương', N'Hoàng Phương, tên thật Nguyễn Kim Hoàng (1943 – 19 tháng 10 năm 2002) là một nhạc sĩ nhạc vàng tại miền Nam Việt Nam trước năm 1975 và có cả sáng tác sau')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG14      ', N'Hoàng sơn giang', N'Hoàng Sơn Giang tốt nghiệp thủ khoa thạc sĩ ngành quản lý văn hóa - nghệ thuật tại Trường ĐH Văn hóa TP.HCM.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG15      ', N'Amee', N'Trần Huyền My (sinh ngày 23 tháng 3 năm 2000), thường được biết đến với nghệ danh Amee là một nữ ca sĩ và diễn viên người Việt Nam.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG16      ', N'Trịnh thăng bình', N'Trịnh Thăng Bình (sinh ngày 30 tháng 4 năm 1988 tại Thành phố Hồ Chí Minh) là một ca sĩ, nhạc sĩ, diễn viên và nhà sản xuất âm nhạc người Việt Nam.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG17      ', N'Karik', N'Phạm Hoàng Khoa thường được biết đến với nghệ danh Karik (sinh 12 tháng 4 năm 1989) là một rapper, nhạc sĩ người Việt Nam')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG18      ', N'Phạm tuyên', N'Phạm Tuyên (sinh ngày 12 tháng 1 năm 1930) là một nhạc sĩ nổi tiếng người Việt Nam, cựu Chủ tịch Hội Âm nhạc Hà Nội, tác giả của bài hát "Như có Bác trong ngày vui đại thắng"')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG19      ', N'Osad', N'OSAD, trang thông tin chính thức về nhạc OSAD, toàn bộ bài hát mới nhất đầy đủ video clip MV hot nhất và album hay nhất của OSAD.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG20      ', N'Vũ Cát tường', N'Vũ Cát Tường (sinh ngày 2 tháng 10 năm 1992) là một nữ ca sĩ, nhạc sĩ và nhà sản xuất âm nhạc người Việt Nam. Bên cạnh giọng hát tốt, Vũ Cát Tường còn được biết đến với khả năng sáng tác, kết hợp nhiều thể loại nhạc khác nhau')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG21      ', N'Đen Vâu', N'Nguyễn Đức Cường (sinh ngày 13 tháng 5 năm 1989), thường được biết đến với nghệ danh Đen Vâu hay Đen là một nam rapper và nhạc sĩ người Việt Nam.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG22      ', N'Kai Dinh', N'Kai Đinh (tên thật là Đinh Lê Hoàng Vỹ, sinh ngày 17 tháng 10 năm 1992) là một nhạc sĩ, nhà sản xuất âm nhạc và ca sĩ Việt Nam.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG23      ', N'Nguyễn Phúc Thiện', N'Nguyễn Phúc Thiện là em trai của nhạc sĩ Only C. Anh sáng tác và sản xuất nhiều sản phẩm âm nhạc cho công ty OnlyC Production, cũng như hợp tác với nhiều ca')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG24      ', N'Hứa kim tuyền', N'Hứa Kim Tuyền (sinh ngày 8 tháng 1 năm 1995), là một nam nhạc sĩ, nhà sản xuất âm nhạc của St.319 Entertainmen')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG25      ', N'Duy Cường', N'Duy Cường (tên khai sinh là Phạm Duy Cường, sinh năm 1956) là một nhạc sĩ hòa âm nổi tiếng với phong cách hòa âm bán cổ điển của Việt Nam tại hải ngoại.
')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG26      ', N'Khắc Việt', N'Khắc Việt tên thật là Nguyễn Khắc Việt (sinh ngày 30 tháng 8 năm 1987) là một ca sĩ, nhạc sĩ Việt Nam. Anh theo dòng nhạc pop-ballad.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG27      ', N'Hồ nguyễn', N'Không có thông tin')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG28      ', N'Nguyễn văn chung', N'Nguyễn Văn Chung sinh ngày 12 tháng 4 năm 1983 tại thành phố Hồ Chí Minh. Tốt nghiệp bậc Trung học tại trường Lê Hồng Phong, anh theo học tại Khoa Ngoại ngữ')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG29      ', N'Trần lê quỳnh', N'Trần Lê Quỳnh (sinh ngày 18/08/1978 tại Hà Nội, quê gốc ở Hải Dương, Việt Nam) là một nhạc sĩ Việt Nam, là con trai của nhà văn Trần Hoài Dương')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG30      ', N'Hồ quang hiếu', N'Hồ Quang Hiếu (sinh ngày 20 tháng 9 năm 1986) là một nam ca sĩ nhạc trẻ Việt Nam. Hiếu sở hữu khuôn mặt điển trai, chất giọng đẹp, ấm áp')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG31      ', N'Khánh đơn', N'Khánh Đơn sinh năm 1987, là nam nhạc sĩ nổi tiếng với nhiều bài hit đình đám như Quên cách yêu, Sao băng khóc, Tạm biệt người anh yêu')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG32      ', N'Halmet Trương', N'Hamlet Trương tên thật là Lê Văn Trương (sinh ngày 22 tháng 9 năm 1988) là nam ca sĩ, nhạc sĩ và MC người Việt Nam. Anh hoạt động tại nhiều lĩnh vực')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG33      ', N'Thái thịnh', N'Thái Thịnh tên thật Trần Quang Vinh (sinh ngày 1 tháng 7 năm 1966) tại Biên Hòa, là một nhạc sĩ Việt Nam, nổi tiếng là một trong số những nhạc sĩ tiên phong')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG34      ', N'Đức Thịnh', N'Đức Thịnh tên đầy đủ là Đỗ Đức Thịnh (24 tháng 12 năm 1975) là một diễn viên, đạo diễn điện ảnh, đạo diễn sân khấu và nhà biên kịch người Việt Nam.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG35      ', N'Quang huy', N'Quang Huy (nhà quản lý) ... Năm 2001, Nguyễn Quang Huy sáng lập nên công ty Giải trí thế giới Wepro, một trong những công ty giải trí lớn nhất ở Việt Nam hiện nay ')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG36      ', N'Ưng hoàng phúc', N'Ưng Hoàng Phúc ... Ưng Hoàng Phúc tên thật là Nguyễn Quốc Thanh (sinh ngày 18 tháng 8 năm 1981 tại xã Kiến An, huyện Chợ Mới, tỉnh An Giang) là một nam ca sĩ')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG37      ', N'Ngọc sơn', N'Ngọc Sơn (sinh ngày 26 tháng 11 năm 1968) là một ca sĩ, nhạc sĩ người Việt Nam. Anh được biết đến với biệt danh là "ông hoàng nhạc sến" hay "Michael Ngọc ..')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG38      ', N'Phạm việt hoàng', N'Phạm Việt Hoàng là một nhạc sĩ trẻ được từng “làm mưa làm gió” trên các bảng xếp hạng âm nhạc vào khoảng năm 2011 đến 2013, anh được biết đến qua nhiều bản hit đình đám của nhóm nhạc hai thành viên The Men')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG39      ', N'Huỳnh quốc huy', N'Huỳnh Quốc Huy (tên thật là Huỳnh Quốc Huy, sinh ngày 24/10/1991 tại Tây Ninh), là nam nhạc sĩ trẻ người Việt Nam.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG40      ', N'Vũ quốc bình', N'Nhạc sĩ Vũ Quốc Bình (Bình Tây) - một tay trống mạnh mẽ mà phiêu lãng. Anh là gương mặt quen thuộc đồng hành hơn 20 năm cùng nhạc sĩ Trương Anh')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG41      ', N'Trần Thiện thanh', N'Trần Thiện Thanh (12 tháng 6 năm 1942 – 13 tháng 5 năm 2005) là một trong những nhạc sĩ Việt Nam nổi tiếng nhất giai đoạn trước 1975.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG42      ', N'Trịnh Quang Lộc', N'Trần Quang Lộc (1949–2020)[1] là một nhạc sĩ Việt Nam được biết đến nhiều qua hai sáng tác Về đây nghe em, Có phải em mùa thu Hà Nội.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG43      ', N'Anh Việt Thu', N'Anh Việt Thu (tên thật Huỳnh Hữu Kim Sang, 1939-1975) là nhạc sĩ người Việt Nam nổi tiếng từ trước năm 1975 tại miền Nam Việt Nam.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG44      ', N'Lam Phương', N'Lam Phương (20 tháng 3 năm 1937 – 22 tháng 12 năm 2020) là một nhạc sĩ tiêu biểu của dòng nhạc đại chúng, nhạc trữ tình, tân nhạc Việt Nam với 217 tác phẩm ...')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG45      ', N'Trần Quảng Nam', N'Trần Quảng Nam ... Trần Quảng Nam sinh ngày 15 tháng 2 - 1955 (Ất Mùi) tại Tam Kỳ, Quảng Nam. Anh học tiểu học tại Ðà Nẵng, trung học tại trường Quốc Gia Nghĩa Tử ...')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG46      ', N'Anh Bằng', N'Anh Bằng (5 tháng 5, 1926 – 12 tháng 11, 2015) là một nhạc sĩ tiêu biểu của dòng nhạc vàng lẫn nhạc hải ngoại. Ông là thành viên nhóm Lê Minh Bằng')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG47      ', N'Xuân Giao', N'Tên thật là Trương Xuân Giao, sinh ngày 2 tháng 1 năm 1932. Quê tại Như Quỳnh, Văn Lâm, Hưng Yên. Hiện cư trú tại quận Hai Bà Trưng, Hà Nội.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG48      ', N'Xuân Mai', N'Xuân Mai có tên đầy đủ là Trương Hoàng Xuân Mai[1] (sinh ngày 05 tháng 01 năm 1995 tại Thành phố Hồ Chí Minh) là một nữ ca sĩ kiêm diễn viên truyền hình người Việt Nam')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG49      ', N'Trịnh Thăng Bình', N'Trịnh Thăng Bình (sinh ngày 30 tháng 4 năm 1988 tại Thành phố Hồ Chí Minh) là một ca sĩ, nhạc sĩ, diễn viên và nhà sản xuất âm nhạc người Việt Nam.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG50      ', N'Phan Văn Minh', N'Ông sinh năm 1815 tại làng Cái Mơn, huyện Mỏ Cày, tỉnh Vĩnh Long (nay là xã Vĩnh Thành, huyện Chợ Lách, tỉnh Bến Tre).')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG51      ', N'Trương Quang Lục', N'Trương Quang Lục (sinh 25 tháng 2 năm 1933, quê ở Tịnh Khê, Sơn Tịnh, Quảng Ngãi) là một nhạc sĩ Việt Nam.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG52      ', N'Dân Ca Nam Bộ', N'Dân ca Việt Nam là một thể loại âm nhạc cổ truyền của Việt Nam, hiện vẫn đang được sáng tác. Âm nhạc này có nhiều làn điệu từ khắp các miền cộng đồng người')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG53      ', N'Đồng Dao', N'Đồng Dao (tiếng Trung: 童瑶; sinh ngày 11 tháng 8 năm 1985) là một nữ diễn viên người Trung Quốc.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG54      ', N'Tân Huyền', N'Tân Huyền (1931-2008), tên thật Phan Văn Tần, là một nhạc sĩ thuộc thể loại nhạc cách mạng của Việt Nam. Ông sinh vào ngày 5 tháng 4 năm 1931[1] tại Đức Thọ, Hà Tĩnh.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG55      ', N'Nguyễn Ngọc Thiện', N'Nhạc sĩ Nguyễn Ngọc Thiện sinh năm 1951
Chính trị gia Nguyễn Ngọc Thiện sinh năm 1959, Bộ trưởng Bộ Văn hóa Thể thao và Du lịch Việt Nam')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG56      ', N'Tân Huyền', N'Tân Huyền (1931-2008), tên thật Phan Văn Tần, là một nhạc sĩ thuộc thể loại nhạc cách mạng của Việt Nam. Ông sinh vào ngày 5 tháng 4 năm 1931[1] tại Đức Thọ, Hà Tĩnh.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG57      ', N'Hoài Linh', N'Võ Nguyễn Hoài Linh (sinh ngày 18 tháng 12 năm 1969), thường được biết đến với nghệ danh Hoài Linh, là một nghệ sĩ hài người Việt Nam.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG58      ', N'Vũ Thanh', N'Vũ Thanh (giản thể: 武清区; phồn thể: 武清區; bính âm: Wǔqīng Qū) là một khu (quận) thuộc thành phố Thiên Tân, Trung Quốc. Quận nằm ở tây bắc Thiên Tân, gần Đại Vận Hà và giáp với tỉnh Hà Bắc.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG59      ', N'Lê Mộng Bảo', N'Lê Mộng Bảo (1923-2007) là một nhạc sĩ nhạc vàng trước năm 1975 với ca khúc nổi tiếng Đập vỡ cây đàn. Ông có một số bút danh khác là Tùng Vân, Tuyết Sơn, Anh Bảo, Hoa Linh Bảo.[1]')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG60      ', N'Trung Quân Idol', N'Bùi Nguyễn Trung Quân với nghệ danh Trung Quân Idol (sinh ngày 20 tháng 1 năm 1989 tại Đà Lạt) là ca sĩ người Việt Nam. Anh được biết đến sau khi tham gia')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG61      ', N'Tôn nữ Thụy Khương', N'Lê Minh Bằng là một nhóm sáng tác ca khúc nhạc vàng thành lập năm 1966 và hoạt động đến năm 1975, tên ghép từ nghệ danh của ba nhạc sĩ thành viên Lê Dinh, Minh Kỳ và Anh Bằng.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG62      ', N'An Thuyên', N'An Thuyên tên đầy đủ là Nguyễn An Thuyên (sinh ngày 15 tháng 8 năm 1949 tại Quỳnh Lưu, Nghệ An; mất ngày 3 tháng 7 năm 2015 tại Bệnh viện Trung ương Quân đội 108, Hà Nội) là một nhạc sĩ, nhạc công, thiếu tướng Quân đội nhân dân Việt Nam.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG63      ', N'Vinh Sử', N'Vinh Sử (sinh năm 1944) tên thật là Bùi Vinh Sử là một nhạc sĩ nhạc vàng có nhiều sáng tác được yêu thích.

')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG64      ', N'Thế Hiển', N'Thế Hiển, tên thật là Nguyễn Thế Hiển, có nguồn ghi là Lại Thế Hiển (sinh ngày 8 tháng 12 năm 1955) là một ca sĩ, nhạc sĩ Việt Nam, hội viên Hội âm nhạc thành phố Hồ Chí Minh, được nhà nước Việt Nam phong tặng danh hiệu Nghệ sĩ Ưu tú năm 2012')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG65      ', N'Trịnh Công Sơn', N'Trịnh Công Sơn (28 tháng 2 năm 1939 – 1 tháng 4 năm 2001) là một nam nhạc sĩ người Việt Nam. Ông được coi là một trong những nhạc sĩ lớn của Tân nhạc Việt Nam với nhiều tác phẩm rất nổi tiếng')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG66      ', N'Vũ Trọng Hối', N'Vũ Trọng Hối có tên khai sinh Vũ Mạnh Giới,[1] là nhạc sĩ, mang quân hàm đại tá Quân đội nhân dân Việt Nam, cán bộ sáng tác thuộc Phòng Văn nghệ Quân đội. Ông là một trong những nhạc sĩ quân đội nổi tiếng thời Kháng chiến chống Mỹ cứu nước với một bản sắc riêng biệt và độc đáo')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG67      ', N'Văn An', N'Văn An (1929–2011), nhạc sĩ Việt Nam.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG68      ', N'Phan Huỳnh Điểu', N'Phan Huỳnh Điểu (sinh ngày 11 tháng 11 năm 1924[1] - mất ngày 29 tháng 6 năm 2015)[2] là một trong những nhạc sĩ tiêu biểu nhất của dòng nhạc cách mạng Việt Nam trong thế kỉ XX.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG69      ', N'Lê Giang', N'Diễn viên Lê Giang sinh năm 1972 tại một tỉnh miền Tây Nam bộ. Với chất giọng cao, khỏe bẩm sinh, cô trở thành đào chính tại các gánh hát tỉnh khi mới 15 tuổi')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG70      ', N'Phó Đức Phương', N'Phó Đức Phương (23 tháng 7 năm 1944[1] - 19 tháng 9 năm 2020) là một nhạc sĩ sáng tác ca khúc quần chúng dòng nhạc trữ tình Việt Nam, từng nhận được 1 đề cử tại giải Cống hiến. Quê ông ở Đa Ngưu -Tân Tiến (Văn Giang - Hưng Yên).Phó Đức Phương (23 tháng 7 năm 1944[1] - 19 tháng 9 năm 2020) là một nhạc sĩ sáng tác ca khúc quần chúng dòng nhạc trữ tình Việt Nam, từng nhận được 1 đề cử tại giải Cống hiến. Quê ông ở Đa Ngưu -Tân Tiến (Văn Giang - Hưng Yên).')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG71      ', N'Phan Lạc Hoa', N'Nhạc sĩ Phan Lạc Hoa nhập Khoa Thanh nhạc Nhạc viện Hà Nội muộn hơn Thanh Hoa 3 năm. Anh là cán bộ được cử đi học, đã lớn tuổi và từng trải hơn so với cô bé Thanh 19 tuổi, đen nhẻm, bé như cây nấm và có đôi mắt sắc lẻm.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG72      ', N'Erik', N'Lê Trung Thành (sinh ngày 13 tháng 10 năm 1997 tại Hà Nội), thường được biết đến với nghệ danh Erik là một nam ca sĩ kiêm vũ công người Việt Nam.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG73      ', N'Nguyễn trần trung quân', N'Nguyễn Trần Trung Quân (sinh ngày 16 tháng 11 năm 1992 tại Hà Nội) là một ca sĩ, nhà sản xuất âm nhạc. Theo học tại Học viện Âm nhạc Quốc gia Việt Nam từ nhỏ')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG74      ', N'Bang Rap Monster', N'RM (rapper) (đổi hướng từ Rap Monster)
tháng 9 năm 1994), thường được biết đến với nghệ danh RM (trước đây là Rap Monster), là một nam rapper, nhạc sĩ và nhà sản xuất âm nhạc người Hàn Quốc.
60 kB (6.044 từ) - 10:32, ngày 27 tháng 7 năm 2021')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG75      ', N'Suboi & Mino', N'Suboi tên thật là Hàng Lâm Trang Anh, sinh năm 1990. Cô là nữ rapper nổi bật nhất của làng nhạc Việt Nam với cá tính không thể trộn lẫn.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG76      ', N'Cao nhật minh', N'chưa có thông tin')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG77      ', N'Minh Vương M4U', N'Minh Vương sinh ngày 21/12/1984, từng là cựu thành viên của nhóm nhạc nam đình đám M4U được các bạn học sinh - sinh viên rất yêu thích những năm 2000')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG78      ', N'Mỹ Tâm', N'Phan Thị Mỹ Tâm (sinh ngày 16 tháng 1 năm 1981), thường được biết đến với nghệ danh Mỹ Tâm, là một nữ ca sĩ kiêm sáng tác nhạc, đạo diễn, diễn viên')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG79      ', N'Phan mạnh quỳnh', N'Phan Mạnh Quỳnh (sinh ngày 10 tháng 1 năm 1990) là một ca sĩ kiêm nhạc sĩ của Việt Nam. ... Anh giành được một đề cử Cống hiến cho bài "Huyền thoại" năm 2019')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG80      ', N'Nguyễn Đình San', N'NS Nguyễn Đình San. Sinh ngày 3/3/1946. Quê : Thị xã Phú Thọ, tỉnh Phú Thọ. 

Tốt nghiệp Khoa Văn Đại học Tổng hợp năm 1968. 

Là nhạc sĩ, nhà văn, tiến sĩ tâm lý học.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG81      ', N'Đỗ ái tử', N'Nhạc sĩ Đỗ Ái Tử sinh ra và lớn lên tại tp Biên Hòa, Đồng Nai. Hiện đang công tác trong ngành y tế tại khoa cấp cứu bệnh viện Nguyễn Trãi tp HCM')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG82      ', N'Hoàng Tôn', N'Hoàng Tôn (15/11/1988) tên đầy đủ là Nguyễn Hoàng Tôn, sinh tại TP.HCM. Hoàng Tôn được sinh ra trong gia đình âm nhạc có bố là nhạc công còn mẹ là giảng viên')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG83      ', N'Vương anh tú', N'Vương Anh Tú (sinh ngày 16 tháng 09 năm 1989 tại Thành Phố Hồ Chí Minh) là một ca sĩ, nhạc sĩ người Việt Nam. Anh hoạt động chủ yếu với tư cách là nhạc sĩ và đã có nhiều sáng tác trở thành thương hiệu của các ca sĩ trẻ trong nước.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG84      ', N'Hồng Quang', N'Ngô Hồng Quang (sinh ngày 14 tháng 12 năm 1983) là nhạc công, nhạc sĩ và ca sĩ. Anh là một trong số những nghệ sĩ đương đại hàng đầu tại Việt Nam và có công trong việc tìm tòi, cũng như phổ biến đàn chiêng dây đến công chúng.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG85      ', N'Chi Dân', N'Chi Dân tên thật là Nguyễn Trung Hiếu (sinh ngày 2 tháng 6 năm 1989 tại huyện Kiên Lương, tỉnh Kiên Giang) là một nam ca sĩ kiêm sáng tác nhạc người Việt')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG86      ', N'Việt anh', N'NSND Việt Anh (sinh năm 1956) là một diễn viên, nghệ sĩ cải lương, đạo diễn người Việt Nam. Ông hoạt động trong nhiều lĩnh vực như chính kịch')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG87      ', N'Châu đăng khoa', N'Châu Đăng Khoa là cựu sinh viên Trường Đại học Kinh tế Thành phố Hồ Chí Minh, đồng thời là sinh viên Nhạc viện Thành phố Hồ Chí Minh, khoa Thanh nhạc.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG88      ', N'Phạm Hồng phước', N'Phạm Hồng Phước (sinh ngày 13 tháng 5 năm 1991), là một nam ca sĩ, nhạc sĩ, diễn viên điện ảnh người Việt Nam. Nổi danh từ chương trình Vietnam Idol 2012,')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG89      ', N'Lương minh hiếu', N'Không có thông tin')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG90      ', N'Huỳnh quốc hưng', N'Không có thông tin')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG91      ', N'Nhóm Da lab', N'a LAB bao gồm 4 thành viên: Rabbit Run (Nguyễn Trọng Đức), MPaKK (Trần Minh Phương), JGKiD (Quách Văn Thơm), và Emcee L (Nguyễn Hoàng Long). Da LAB là một ban nhạc rap được thành lập bởi 3 thành viên: Rabbit Run, MPaKK, JGKiD.')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG92      ', N'Bùi công nam', N'Bùi Công Nam (sinh ngày 3 tháng 8, 1994) là một ca sĩ kiêm nhạc sĩ người Việt Nam. Anh bắt đầu được biết đến khi tham gia chương trình Bài hát hay nhất ')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG93      ', N'Đỗ hiếu', N'Đỗ Hiếu tên thật là Đỗ Ngọc Hiếu (sinh ngày 3 tháng 9 năm 1989) là nhạc sĩ, nhà sản xuất người Việt Nam. Ngoài ra, anh còn là nghệ sĩ giành được 3 đề cử')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG94      ', N'Vũ quốc việt', N'Vũ Quốc Việt vốn là tốt nghiệp khoa văn cao đẳng sư phạm & nghiêm cứu ngôn ngữ học, rồi tiếp tục theo học khoa Lý luận - Sáng tác - Chỉ huy')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG95      ', N'Nhật ngân', N'Ông tên thật Trần Nhật Ngân, sinh ngày 24 tháng 11 năm 1942, là con út trong một gia đình có 6 anh chị em, cha mất sớm. Mặc dù nguyên quán ở Hoàng Kim, ')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG96      ', N'Thủy tiên', N'Trần Thị Thủy Tiên (sinh ngày 25 tháng 11 năm 1985 tại Kiên Giang), thường được biết đến với nghệ danh Thủy Tiên là một nữ ca sĩ kiêm sáng tác nhạc và diễn viên')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG97      ', N'Sỹ luân', N'ỹ Luân (sinh ngày 5 tháng 5 năm 1982) là một nhạc sĩ, ca sĩ, MC và cũng là một diễn viên Việt Nam. Trước đây anh là học sinh của trường Trung học Phổ thông ')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG98      ', N'Nguyễn hoàng duy', N'Nguyễn Hoàng Duy là người đứng sau những bản hit đình đám của Noo Phước Thịnh, Bảo Thy, Hiền Thục')
INSERT [dbo].[TACGIA] ([ma_tacgia], [ten_tacgia], [thongtin_tacgia]) VALUES (N'TG99      ', N'Nguyễn hồng thuận', N'Nguyễn Hồng Thuận là một trong những nhạc sĩ nổi tiếng của Việt Nam. Anh có tài năng viết nhạc bẩm sinh, sinh năm 1981')
GO
INSERT [dbo].[THELOAI] ([ma_theloai], [ten_theloai]) VALUES (N'TL01      ', N'EDM')
INSERT [dbo].[THELOAI] ([ma_theloai], [ten_theloai]) VALUES (N'TL02      ', N'Acoustic')
INSERT [dbo].[THELOAI] ([ma_theloai], [ten_theloai]) VALUES (N'TL03      ', N'Indie')
INSERT [dbo].[THELOAI] ([ma_theloai], [ten_theloai]) VALUES (N'TL04      ', N'Nhạc cách mạng')
INSERT [dbo].[THELOAI] ([ma_theloai], [ten_theloai]) VALUES (N'TL05      ', N'Trữ tình & Bolero')
INSERT [dbo].[THELOAI] ([ma_theloai], [ten_theloai]) VALUES (N'TL06      ', N'Remix')
INSERT [dbo].[THELOAI] ([ma_theloai], [ten_theloai]) VALUES (N'TL07      ', N'Hip-hop')
INSERT [dbo].[THELOAI] ([ma_theloai], [ten_theloai]) VALUES (N'TL08      ', N'R&B')
INSERT [dbo].[THELOAI] ([ma_theloai], [ten_theloai]) VALUES (N'TL09      ', N'Nhạc thiếu nhi')
INSERT [dbo].[THELOAI] ([ma_theloai], [ten_theloai]) VALUES (N'TL10      ', N'Nhạc Trịnh')
INSERT [dbo].[THELOAI] ([ma_theloai], [ten_theloai]) VALUES (N'TL11      ', N'Pop Ballad')
GO
ALTER TABLE [dbo].[BAIHAT]  WITH CHECK ADD  CONSTRAINT [FK_BAIHAT_ALBUM] FOREIGN KEY([ma_album])
REFERENCES [dbo].[ALBUM] ([ma_album])
GO
ALTER TABLE [dbo].[BAIHAT] CHECK CONSTRAINT [FK_BAIHAT_ALBUM]
GO
ALTER TABLE [dbo].[BAIHAT]  WITH CHECK ADD  CONSTRAINT [FK_BAIHAT_HANGSANXUAT] FOREIGN KEY([ma_hangsanxuat])
REFERENCES [dbo].[HANGSANXUAT] ([ma_hangsanxuat])
GO
ALTER TABLE [dbo].[BAIHAT] CHECK CONSTRAINT [FK_BAIHAT_HANGSANXUAT]
GO
ALTER TABLE [dbo].[BAIHAT]  WITH CHECK ADD  CONSTRAINT [FK_BAIHAT_TACGIA] FOREIGN KEY([ma_tacgia])
REFERENCES [dbo].[TACGIA] ([ma_tacgia])
GO
ALTER TABLE [dbo].[BAIHAT] CHECK CONSTRAINT [FK_BAIHAT_TACGIA]
GO
ALTER TABLE [dbo].[BAIHAT]  WITH CHECK ADD  CONSTRAINT [FK_BAIHAT_THELOAI] FOREIGN KEY([ma_theloai])
REFERENCES [dbo].[THELOAI] ([ma_theloai])
GO
ALTER TABLE [dbo].[BAIHAT] CHECK CONSTRAINT [FK_BAIHAT_THELOAI]
GO
ALTER TABLE [dbo].[BAIHAT_CASI]  WITH CHECK ADD  CONSTRAINT [FK_BAIHAT_CASI_BAIHAT] FOREIGN KEY([ma_baihat])
REFERENCES [dbo].[BAIHAT] ([ma_baihat])
GO
ALTER TABLE [dbo].[BAIHAT_CASI] CHECK CONSTRAINT [FK_BAIHAT_CASI_BAIHAT]
GO
ALTER TABLE [dbo].[BAIHAT_CASI]  WITH CHECK ADD  CONSTRAINT [FK_BAIHAT_CASI_CASI] FOREIGN KEY([ma_casi])
REFERENCES [dbo].[CASI] ([ma_casi])
GO
ALTER TABLE [dbo].[BAIHAT_CASI] CHECK CONSTRAINT [FK_BAIHAT_CASI_CASI]
GO
USE [master]
GO
ALTER DATABASE [DBBaiHat] SET  READ_WRITE 
GO
