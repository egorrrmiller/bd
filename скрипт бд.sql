USE [master]
GO
/****** Object:  Database [Учебная]    Script Date: 26.04.2025 14:13:42 ******/
CREATE DATABASE [Учебная]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Учебная', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Учебная.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Учебная_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Учебная_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Учебная] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Учебная].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Учебная] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Учебная] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Учебная] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Учебная] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Учебная] SET ARITHABORT OFF 
GO
ALTER DATABASE [Учебная] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Учебная] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Учебная] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Учебная] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Учебная] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Учебная] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Учебная] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Учебная] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Учебная] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Учебная] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Учебная] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Учебная] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Учебная] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Учебная] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Учебная] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Учебная] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Учебная] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Учебная] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Учебная] SET  MULTI_USER 
GO
ALTER DATABASE [Учебная] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Учебная] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Учебная] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Учебная] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Учебная] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Учебная] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Учебная] SET QUERY_STORE = ON
GO
ALTER DATABASE [Учебная] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Учебная]
GO
/****** Object:  Table [dbo].[академики]    Script Date: 26.04.2025 14:13:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[академики](
	[Код] [int] IDENTITY(1,1) NOT NULL,
	[ФИО] [nvarchar](255) NOT NULL,
	[Дата_рождения] [date] NOT NULL,
	[Специализация] [nvarchar](255) NOT NULL,
	[Год_присвоения_звания] [int] NOT NULL,
 CONSTRAINT [PK_академики] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[страны]    Script Date: 26.04.2025 14:13:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[страны](
	[Название] [nvarchar](255) NULL,
	[Столица] [nvarchar](255) NULL,
	[Площадь] [float] NULL,
	[Население] [float] NULL,
	[Континент] [nvarchar](255) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[академики] ON 

INSERT [dbo].[академики] ([Код], [ФИО], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (1, N'Аничков Николай Николаевич', CAST(N'1885-11-03' AS Date), N'медицина', 1939)
INSERT [dbo].[академики] ([Код], [ФИО], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (2, N'Бартольд Василий Владимирович', CAST(N'1869-11-15' AS Date), N'историк', 1913)
INSERT [dbo].[академики] ([Код], [ФИО], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (3, N'Белопольский Аристарх Аполлонович', CAST(N'1854-07-13' AS Date), N'астрофизик', 1903)
INSERT [dbo].[академики] ([Код], [ФИО], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (4, N'Бородин Иван Парфеньевич', CAST(N'1847-01-30' AS Date), N'ботаник', 1902)
INSERT [dbo].[академики] ([Код], [ФИО], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (5, N'Вальден Павел Иванович', CAST(N'1863-07-26' AS Date), N'химик-технолог', 1910)
INSERT [dbo].[академики] ([Код], [ФИО], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (6, N'Вернадский Владимир Иванович', CAST(N'1863-03-12' AS Date), N'геохимик', 1908)
INSERT [dbo].[академики] ([Код], [ФИО], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (7, N'Виноградов Павел Гаврилович', CAST(N'1854-11-30' AS Date), N'историк', 1914)
INSERT [dbo].[академики] ([Код], [ФИО], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (8, N'Ипатьев Владимир Николаевич', CAST(N'1867-11-21' AS Date), N'химик', 1916)
INSERT [dbo].[академики] ([Код], [ФИО], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (9, N'Истрин Василий Михайлович', CAST(N'1865-02-22' AS Date), N'филолог', 1907)
INSERT [dbo].[академики] ([Код], [ФИО], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (10, N'Карпинский Александр Петрович', CAST(N'1847-01-07' AS Date), N'геолог', 1889)
INSERT [dbo].[академики] ([Код], [ФИО], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (11, N'Коковцов Павел Константинович', CAST(N'1861-07-01' AS Date), N'историк', 1906)
INSERT [dbo].[академики] ([Код], [ФИО], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (12, N'Курнаков Николай Семёнович', CAST(N'1860-12-06' AS Date), N'химик', 1913)
INSERT [dbo].[академики] ([Код], [ФИО], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (13, N'Марр Николай Яковлевич', CAST(N'1865-01-06' AS Date), N'лингвист', 1912)
INSERT [dbo].[академики] ([Код], [ФИО], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (14, N'Насонов Николай Викторович', CAST(N'1855-02-26' AS Date), N'зоолог', 1906)
INSERT [dbo].[академики] ([Код], [ФИО], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (15, N'Ольденбург Сергей Фёдорович', CAST(N'1863-09-26' AS Date), N'историк', 1903)
INSERT [dbo].[академики] ([Код], [ФИО], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (16, N'Павлов Иван Петрович', CAST(N'1849-09-26' AS Date), N'физиолог', 1907)
INSERT [dbo].[академики] ([Код], [ФИО], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (17, N'Перетц Владимир Николаевич', CAST(N'1870-01-31' AS Date), N'филолог', 1914)
INSERT [dbo].[академики] ([Код], [ФИО], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (18, N'Соболевский Алексей Иванович', CAST(N'1857-01-07' AS Date), N'лингвист', 1900)
INSERT [dbo].[академики] ([Код], [ФИО], [Дата_рождения], [Специализация], [Год_присвоения_звания]) VALUES (19, N'Стеклов Владимир Андреевич', CAST(N'1864-01-09' AS Date), N'математик', 1912)
SET IDENTITY_INSERT [dbo].[академики] OFF
GO
INSERT [dbo].[страны] ([Название], [Столица], [Площадь], [Население], [Континент]) VALUES (N'Австрия', N'Вена', 83858, 8741753, N'Европа')
INSERT [dbo].[страны] ([Название], [Столица], [Площадь], [Население], [Континент]) VALUES (N'Азербайджан', N'Баку', 86600, 9705600, N'Азия')
INSERT [dbo].[страны] ([Название], [Столица], [Площадь], [Население], [Континент]) VALUES (N'Албания', N'Тирана', 28748, 2866026, N'Европа')
INSERT [dbo].[страны] ([Название], [Столица], [Площадь], [Население], [Континент]) VALUES (N'Алжир', N'Алжир', 2381740, 39813722, N'Африка')
INSERT [dbo].[страны] ([Название], [Столица], [Площадь], [Население], [Континент]) VALUES (N'Ангола', N'Луанда', 1246700, 25831000, N'Африка')
INSERT [dbo].[страны] ([Название], [Столица], [Площадь], [Население], [Континент]) VALUES (N'Аргентина', N'Буэнос-Айрес', 2766890, 43847000, N'Южная Америка')
INSERT [dbo].[страны] ([Название], [Столица], [Площадь], [Население], [Континент]) VALUES (N'Афганистан', N'Кабул', 647500, 29822848, N'Азия')
INSERT [dbo].[страны] ([Название], [Столица], [Площадь], [Население], [Континент]) VALUES (N'Бангладеш', N'Дакка', 144000, 160221000, N'Азия')
INSERT [dbo].[страны] ([Название], [Столица], [Площадь], [Население], [Континент]) VALUES (N'Бахрейн', N'Манама', 701, 1397000, N'Азия')
INSERT [dbo].[страны] ([Название], [Столица], [Площадь], [Население], [Континент]) VALUES (N'Белиз', N'Бельмопан', 22966, 377968, N'Северная Америка')
INSERT [dbo].[страны] ([Название], [Столица], [Площадь], [Население], [Континент]) VALUES (N'Белоруссия', N'Минск', 207595, 9498400, N'Европа')
INSERT [dbo].[страны] ([Название], [Столица], [Площадь], [Население], [Континент]) VALUES (N'Бельгия', N'Брюссель', 30528, 11250585, N'Европа')
INSERT [dbo].[страны] ([Название], [Столица], [Площадь], [Население], [Континент]) VALUES (N'Бенин', N'Порто-Ново', 112620, 11167000, N'Африка')
INSERT [dbo].[страны] ([Название], [Столица], [Площадь], [Население], [Континент]) VALUES (N'Болгария', N'София', 110910, 7153784, N'Европа')
INSERT [dbo].[страны] ([Название], [Столица], [Площадь], [Население], [Континент]) VALUES (N'Боливия', N'Сукре', 1098580, 10985059, N'Южная Америка')
INSERT [dbo].[страны] ([Название], [Столица], [Площадь], [Население], [Континент]) VALUES (N'Ботсвана', N'Габороне', 600370, 2209208, N'Африка')
INSERT [dbo].[страны] ([Название], [Столица], [Площадь], [Население], [Континент]) VALUES (N'Бразилия', N'Бразилиа', 8511965, 206081432, N'Южная Америка')
INSERT [dbo].[страны] ([Название], [Столица], [Площадь], [Население], [Континент]) VALUES (N'Буркина-Фасо', N'Уагадугу', 274200, 19034397, N'Африка')
INSERT [dbo].[страны] ([Название], [Столица], [Площадь], [Население], [Континент]) VALUES (N'Бутан', N'Тхимпху', 47000, 784000, N'Азия')
INSERT [dbo].[страны] ([Название], [Столица], [Площадь], [Население], [Континент]) VALUES (N'Великобритания', N'Лондон', 244820, 65341183, N'Европа')
INSERT [dbo].[страны] ([Название], [Столица], [Площадь], [Население], [Континент]) VALUES (N'Венгрия', N'Будапешт', 93030, 9830485, N'Европа')
INSERT [dbo].[страны] ([Название], [Столица], [Площадь], [Население], [Континент]) VALUES (N'Венесуэла', N'Каракас', 912050, 31028637, N'Южная Америка')
INSERT [dbo].[страны] ([Название], [Столица], [Площадь], [Население], [Континент]) VALUES (N'Восточный Тимор', N'Дили', 14874, 1167242, N'Азия')
INSERT [dbo].[страны] ([Название], [Столица], [Площадь], [Население], [Континент]) VALUES (N'Вьетнам', N'Ханой', 329560, 91713300, N'Азия')
GO
USE [master]
GO
ALTER DATABASE [Учебная] SET  READ_WRITE 
GO
