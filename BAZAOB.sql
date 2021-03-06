USE [master]
GO
/****** Object:  Database [Projekt]    Script Date: 16.07.2022 02:00:13 ******/
CREATE DATABASE [Projekt]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Projekt', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Projekt.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Projekt_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Projekt_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Projekt] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Projekt].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Projekt] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Projekt] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Projekt] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Projekt] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Projekt] SET ARITHABORT OFF 
GO
ALTER DATABASE [Projekt] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Projekt] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Projekt] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Projekt] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Projekt] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Projekt] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Projekt] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Projekt] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Projekt] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Projekt] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Projekt] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Projekt] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Projekt] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Projekt] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Projekt] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Projekt] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Projekt] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Projekt] SET RECOVERY FULL 
GO
ALTER DATABASE [Projekt] SET  MULTI_USER 
GO
ALTER DATABASE [Projekt] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Projekt] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Projekt] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Projekt] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Projekt] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Projekt] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Projekt', N'ON'
GO
ALTER DATABASE [Projekt] SET QUERY_STORE = OFF
GO
USE [Projekt]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 16.07.2022 02:00:13 ******/
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
/****** Object:  Table [dbo].[Klient]    Script Date: 16.07.2022 02:00:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Klient](
	[id_klient] [int] IDENTITY(1,1) NOT NULL,
	[imie] [varchar](50) NOT NULL,
	[nazwisko] [varchar](50) NOT NULL,
	[mail] [varchar](100) NOT NULL,
	[telefon] [varchar](9) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_klient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pracownik]    Script Date: 16.07.2022 02:00:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pracownik](
	[id_pracownik] [int] IDENTITY(1,1) NOT NULL,
	[imie] [varchar](50) NOT NULL,
	[nazwisko] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pracownik] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produkt]    Script Date: 16.07.2022 02:00:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produkt](
	[id_produkt] [int] IDENTITY(1,1) NOT NULL,
	[nazwa] [varchar](255) NOT NULL,
	[cena] [int] NOT NULL,
	[ilosc] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_produkt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zamowienie]    Script Date: 16.07.2022 02:00:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zamowienie](
	[id_zamowienia] [int] IDENTITY(1,1) NOT NULL,
	[id_pracownik] [int] NOT NULL,
	[id_produkt] [int] NOT NULL,
	[id_klient] [int] NOT NULL,
	[ilosc] [int] NOT NULL,
	[stan] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_zamowienia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Klient] ON 

INSERT [dbo].[Klient] ([id_klient], [imie], [nazwisko], [mail], [telefon]) VALUES (1, N'Andrzej', N'Malina', N'andmal@poczta.pl', N'123321123')
INSERT [dbo].[Klient] ([id_klient], [imie], [nazwisko], [mail], [telefon]) VALUES (2, N'Michał', N'Stopa', N'stopamichał@poczta.pl', N'234546777')
INSERT [dbo].[Klient] ([id_klient], [imie], [nazwisko], [mail], [telefon]) VALUES (3, N'Aneta', N'Trąbka', N'Atrabka@poczta.pl', N'689348125')
SET IDENTITY_INSERT [dbo].[Klient] OFF
GO
SET IDENTITY_INSERT [dbo].[Pracownik] ON 

INSERT [dbo].[Pracownik] ([id_pracownik], [imie], [nazwisko]) VALUES (1, N'Jan', N'Kowalski')
INSERT [dbo].[Pracownik] ([id_pracownik], [imie], [nazwisko]) VALUES (2, N'Krzysztof', N'Nowak')
SET IDENTITY_INSERT [dbo].[Pracownik] OFF
GO
SET IDENTITY_INSERT [dbo].[Produkt] ON 

INSERT [dbo].[Produkt] ([id_produkt], [nazwa], [cena], [ilosc]) VALUES (2, N'Monitor', 500, 30)
INSERT [dbo].[Produkt] ([id_produkt], [nazwa], [cena], [ilosc]) VALUES (3, N'Procesor', 800, 50)
INSERT [dbo].[Produkt] ([id_produkt], [nazwa], [cena], [ilosc]) VALUES (4, N'Płyta Główna', 600, 40)
INSERT [dbo].[Produkt] ([id_produkt], [nazwa], [cena], [ilosc]) VALUES (5, N'Pamięć Ram', 200, 100)
SET IDENTITY_INSERT [dbo].[Produkt] OFF
GO
SET IDENTITY_INSERT [dbo].[Zamowienie] ON 

INSERT [dbo].[Zamowienie] ([id_zamowienia], [id_pracownik], [id_produkt], [id_klient], [ilosc], [stan]) VALUES (4, 1, 3, 3, 5, N'Nie wysłano')
INSERT [dbo].[Zamowienie] ([id_zamowienia], [id_pracownik], [id_produkt], [id_klient], [ilosc], [stan]) VALUES (5, 2, 2, 1, 3, N'Wysłano')
INSERT [dbo].[Zamowienie] ([id_zamowienia], [id_pracownik], [id_produkt], [id_klient], [ilosc], [stan]) VALUES (6, 1, 4, 2, 7, N'Nie wysłano')
SET IDENTITY_INSERT [dbo].[Zamowienie] OFF
GO
ALTER TABLE [dbo].[Zamowienie]  WITH CHECK ADD FOREIGN KEY([id_klient])
REFERENCES [dbo].[Klient] ([id_klient])
GO
ALTER TABLE [dbo].[Zamowienie]  WITH CHECK ADD FOREIGN KEY([id_pracownik])
REFERENCES [dbo].[Pracownik] ([id_pracownik])
GO
ALTER TABLE [dbo].[Zamowienie]  WITH CHECK ADD FOREIGN KEY([id_produkt])
REFERENCES [dbo].[Produkt] ([id_produkt])
GO
USE [master]
GO
ALTER DATABASE [Projekt] SET  READ_WRITE 
GO
