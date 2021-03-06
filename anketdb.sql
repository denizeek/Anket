USE [master]
GO
/****** Object:  Database [anket]    Script Date: 23.4.2022 00:28:32 ******/
CREATE DATABASE [anket] ON  PRIMARY 
( NAME = N'AnketDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\AnketDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AnketDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\AnketDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [anket].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [anket] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [anket] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [anket] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [anket] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [anket] SET ARITHABORT OFF 
GO
ALTER DATABASE [anket] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [anket] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [anket] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [anket] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [anket] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [anket] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [anket] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [anket] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [anket] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [anket] SET  DISABLE_BROKER 
GO
ALTER DATABASE [anket] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [anket] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [anket] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [anket] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [anket] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [anket] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [anket] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [anket] SET RECOVERY FULL 
GO
ALTER DATABASE [anket] SET  MULTI_USER 
GO
ALTER DATABASE [anket] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [anket] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'anket', N'ON'
GO
USE [anket]
GO
/****** Object:  User [deniz]    Script Date: 23.4.2022 00:28:32 ******/
CREATE USER [deniz] FOR LOGIN [deniz] WITH DEFAULT_SCHEMA=[dbo]
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'deniz'
GO
/****** Object:  Table [dbo].[cevaplar]    Script Date: 23.4.2022 00:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cevaplar](
	[cevapno] [int] IDENTITY(1,1) NOT NULL,
	[cevap] [nvarchar](max) NULL,
	[soruno] [int] NULL,
	[oy] [int] NULL,
 CONSTRAINT [PK_cevaplar] PRIMARY KEY CLUSTERED 
(
	[cevapno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sorular]    Script Date: 23.4.2022 00:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sorular](
	[soruno] [int] IDENTITY(1,1) NOT NULL,
	[soru] [nvarchar](max) NULL,
 CONSTRAINT [PK_sorular] PRIMARY KEY CLUSTERED 
(
	[soruno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[cevaplar] ON 

INSERT [dbo].[cevaplar] ([cevapno], [cevap], [soruno], [oy]) VALUES (1, N'Evet', 1, 2)
INSERT [dbo].[cevaplar] ([cevapno], [cevap], [soruno], [oy]) VALUES (2, N'Hayır', 1, 4)
INSERT [dbo].[cevaplar] ([cevapno], [cevap], [soruno], [oy]) VALUES (3, N'AKP', 2, 2)
INSERT [dbo].[cevaplar] ([cevapno], [cevap], [soruno], [oy]) VALUES (4, N'CHP', 2, 3)
INSERT [dbo].[cevaplar] ([cevapno], [cevap], [soruno], [oy]) VALUES (5, N'MHP', 2, 2)
INSERT [dbo].[cevaplar] ([cevapno], [cevap], [soruno], [oy]) VALUES (6, N'HDP', 2, 1)
INSERT [dbo].[cevaplar] ([cevapno], [cevap], [soruno], [oy]) VALUES (7, N'İYİ Parti', 2, 1)
INSERT [dbo].[cevaplar] ([cevapno], [cevap], [soruno], [oy]) VALUES (8, N'Diğer', 2, 2)
INSERT [dbo].[cevaplar] ([cevapno], [cevap], [soruno], [oy]) VALUES (9, N'0-4000', 3, 3)
INSERT [dbo].[cevaplar] ([cevapno], [cevap], [soruno], [oy]) VALUES (10, N'4001-8000', 3, 1)
INSERT [dbo].[cevaplar] ([cevapno], [cevap], [soruno], [oy]) VALUES (11, N'8001+', 3, 4)
INSERT [dbo].[cevaplar] ([cevapno], [cevap], [soruno], [oy]) VALUES (12, N'Eğitim yok', 4, 0)
INSERT [dbo].[cevaplar] ([cevapno], [cevap], [soruno], [oy]) VALUES (13, N'İlkokul', 4, 0)
INSERT [dbo].[cevaplar] ([cevapno], [cevap], [soruno], [oy]) VALUES (14, N'Lise', 4, 0)
INSERT [dbo].[cevaplar] ([cevapno], [cevap], [soruno], [oy]) VALUES (15, N'Önlisans', 4, 1)
INSERT [dbo].[cevaplar] ([cevapno], [cevap], [soruno], [oy]) VALUES (16, N'Lisans', 4, 0)
INSERT [dbo].[cevaplar] ([cevapno], [cevap], [soruno], [oy]) VALUES (17, N'Yüksek Lisans', 4, 1)
SET IDENTITY_INSERT [dbo].[cevaplar] OFF
GO
SET IDENTITY_INSERT [dbo].[sorular] ON 

INSERT [dbo].[sorular] ([soruno], [soru]) VALUES (1, N'Sigara kullanıyor musunuz?')
INSERT [dbo].[sorular] ([soruno], [soru]) VALUES (2, N'Hangi partiye oy verirsini?')
INSERT [dbo].[sorular] ([soruno], [soru]) VALUES (3, N'Gelir seviyeniz nedir?')
INSERT [dbo].[sorular] ([soruno], [soru]) VALUES (4, N'Eğitim durumunuz nedir?')
SET IDENTITY_INSERT [dbo].[sorular] OFF
GO
ALTER TABLE [dbo].[cevaplar]  WITH CHECK ADD  CONSTRAINT [FK_cevaplar_sorular] FOREIGN KEY([soruno])
REFERENCES [dbo].[sorular] ([soruno])
GO
ALTER TABLE [dbo].[cevaplar] CHECK CONSTRAINT [FK_cevaplar_sorular]
GO
USE [master]
GO
ALTER DATABASE [anket] SET  READ_WRITE 
GO
