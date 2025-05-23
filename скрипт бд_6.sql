USE [master]
GO
/****** Object:  Database [Сдача экзамена ЛР_6]    Script Date: 10.05.2025 13:15:13 ******/
CREATE DATABASE [Сдача экзамена ЛР_6]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Сдача экзамена ЛР_6', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Сдача экзамена ЛР_6.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Сдача экзамена ЛР_6_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Сдача экзамена ЛР_6_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Сдача экзамена ЛР_6].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET ARITHABORT OFF 
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET  MULTI_USER 
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET QUERY_STORE = ON
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Сдача экзамена ЛР_6]
GO
/****** Object:  Table [dbo].[Дисциплина]    Script Date: 10.05.2025 13:15:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Дисциплина](
	[Код] [int] NOT NULL,
	[Объем] [int] NOT NULL,
	[Название] [nvarchar](255) NOT NULL,
	[Исполнитель] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Дисциплина] PRIMARY KEY CLUSTERED 
(
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Заявка]    Script Date: 10.05.2025 13:15:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Заявка](
	[Номер] [nvarchar](255) NOT NULL,
	[Код] [int] NOT NULL,
 CONSTRAINT [PK_Заявка] PRIMARY KEY CLUSTERED 
(
	[Номер] ASC,
	[Код] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Кафедра]    Script Date: 10.05.2025 13:15:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Кафедра](
	[Шифр] [nvarchar](255) NOT NULL,
	[Название] [nvarchar](255) NOT NULL,
	[Факультет] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Кафедра] PRIMARY KEY CLUSTERED 
(
	[Шифр] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Преподаватель]    Script Date: 10.05.2025 13:15:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Преподаватель](
	[Таб_номер] [int] NOT NULL,
	[Звание] [nvarchar](255) NOT NULL,
	[Степень] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Преподаватель] PRIMARY KEY CLUSTERED 
(
	[Таб_номер] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Специальность]    Script Date: 10.05.2025 13:15:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Специальность](
	[Номер] [nvarchar](255) NOT NULL,
	[Направление] [nvarchar](255) NOT NULL,
	[Шифр] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Специальность] PRIMARY KEY CLUSTERED 
(
	[Номер] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Студент]    Script Date: 10.05.2025 13:15:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Студент](
	[Рег_номер] [int] NOT NULL,
	[Номер] [nvarchar](255) NOT NULL,
	[Фамилия] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Студент] PRIMARY KEY CLUSTERED 
(
	[Рег_номер] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Факультет]    Script Date: 10.05.2025 13:15:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Факультет](
	[Аббревиатура] [nvarchar](255) NOT NULL,
	[Название] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Факультет] PRIMARY KEY CLUSTERED 
(
	[Аббревиатура] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Экзамен]    Script Date: 10.05.2025 13:15:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Экзамен](
	[Код_экзамена] [int] IDENTITY(1,1) NOT NULL,
	[Код_дисциплины] [int] NOT NULL,
	[Дата] [date] NOT NULL,
	[Рег_номер] [int] NOT NULL,
	[Таб_номер] [int] NOT NULL,
	[Аудитория] [nvarchar](255) NOT NULL,
	[Оценка] [float] NOT NULL,
 CONSTRAINT [PK_Экзамен] PRIMARY KEY CLUSTERED 
(
	[Код_экзамена] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Дисциплина] ([Код], [Объем], [Название], [Исполнитель]) VALUES (101, 320, N'Математика', N'вм')
INSERT [dbo].[Дисциплина] ([Код], [Объем], [Название], [Исполнитель]) VALUES (102, 160, N'Информатика', N'пи')
INSERT [dbo].[Дисциплина] ([Код], [Объем], [Название], [Исполнитель]) VALUES (103, 160, N'Физика', N'оф')
INSERT [dbo].[Дисциплина] ([Код], [Объем], [Название], [Исполнитель]) VALUES (202, 120, N'Базы данных', N'ис')
INSERT [dbo].[Дисциплина] ([Код], [Объем], [Название], [Исполнитель]) VALUES (204, 160, N'Электроника', N'эф')
INSERT [dbo].[Дисциплина] ([Код], [Объем], [Название], [Исполнитель]) VALUES (205, 80, N'Программирование', N'пи')
INSERT [dbo].[Дисциплина] ([Код], [Объем], [Название], [Исполнитель]) VALUES (209, 80, N'Моделирование', N'мм')
GO
INSERT [dbo].[Заявка] ([Номер], [Код]) VALUES (N'01,03,04', 101)
INSERT [dbo].[Заявка] ([Номер], [Код]) VALUES (N'01,03,04', 205)
INSERT [dbo].[Заявка] ([Номер], [Код]) VALUES (N'01,03,04', 209)
INSERT [dbo].[Заявка] ([Номер], [Код]) VALUES (N'09,03,02', 101)
INSERT [dbo].[Заявка] ([Номер], [Код]) VALUES (N'09,03,02', 102)
INSERT [dbo].[Заявка] ([Номер], [Код]) VALUES (N'09,03,02', 103)
INSERT [dbo].[Заявка] ([Номер], [Код]) VALUES (N'09,03,02', 202)
INSERT [dbo].[Заявка] ([Номер], [Код]) VALUES (N'09,03,02', 205)
INSERT [dbo].[Заявка] ([Номер], [Код]) VALUES (N'09,03,02', 209)
INSERT [dbo].[Заявка] ([Номер], [Код]) VALUES (N'09,03,03', 101)
INSERT [dbo].[Заявка] ([Номер], [Код]) VALUES (N'09,03,03', 102)
INSERT [dbo].[Заявка] ([Номер], [Код]) VALUES (N'09,03,03', 103)
INSERT [dbo].[Заявка] ([Номер], [Код]) VALUES (N'09,03,03', 202)
INSERT [dbo].[Заявка] ([Номер], [Код]) VALUES (N'09,03,03', 205)
INSERT [dbo].[Заявка] ([Номер], [Код]) VALUES (N'14,03,02', 101)
INSERT [dbo].[Заявка] ([Номер], [Код]) VALUES (N'14,03,02', 102)
INSERT [dbo].[Заявка] ([Номер], [Код]) VALUES (N'14,03,02', 103)
INSERT [dbo].[Заявка] ([Номер], [Код]) VALUES (N'14,03,02', 204)
INSERT [dbo].[Заявка] ([Номер], [Код]) VALUES (N'38,03,05', 101)
INSERT [dbo].[Заявка] ([Номер], [Код]) VALUES (N'38,03,05', 103)
INSERT [dbo].[Заявка] ([Номер], [Код]) VALUES (N'38,03,05', 202)
INSERT [dbo].[Заявка] ([Номер], [Код]) VALUES (N'38,03,05', 209)
GO
INSERT [dbo].[Кафедра] ([Шифр], [Название], [Факультет]) VALUES (N'вм', N'Высшая математика', N'ен')
INSERT [dbo].[Кафедра] ([Шифр], [Название], [Факультет]) VALUES (N'ис', N'Информационные системы', N'ит')
INSERT [dbo].[Кафедра] ([Шифр], [Название], [Факультет]) VALUES (N'мм', N'Математическое моделирование', N'фм')
INSERT [dbo].[Кафедра] ([Шифр], [Название], [Факультет]) VALUES (N'оф', N'Общая физика', N'ен')
INSERT [dbo].[Кафедра] ([Шифр], [Название], [Факультет]) VALUES (N'пи', N'Прикладная информатика', N'ит')
INSERT [dbo].[Кафедра] ([Шифр], [Название], [Факультет]) VALUES (N'эф', N'Экспериментальная физика', N'фм')
GO
INSERT [dbo].[Преподаватель] ([Таб_номер], [Звание], [Степень]) VALUES (101, N'профессор', N'д. т.н.')
INSERT [dbo].[Преподаватель] ([Таб_номер], [Звание], [Степень]) VALUES (102, N'доцент', N'к. ф.-м. н.')
INSERT [dbo].[Преподаватель] ([Таб_номер], [Звание], [Степень]) VALUES (105, N'доцент', N'к. т.н.')
INSERT [dbo].[Преподаватель] ([Таб_номер], [Звание], [Степень]) VALUES (201, N'профессор', N'д. ф.-м. н.')
INSERT [dbo].[Преподаватель] ([Таб_номер], [Звание], [Степень]) VALUES (202, N'доцент', N'к. ф.-м. н.')
INSERT [dbo].[Преподаватель] ([Таб_номер], [Звание], [Степень]) VALUES (301, N'профессор', N'д. т.н.')
INSERT [dbo].[Преподаватель] ([Таб_номер], [Звание], [Степень]) VALUES (302, N'доцент', N'к. т.н.')
INSERT [dbo].[Преподаватель] ([Таб_номер], [Звание], [Степень]) VALUES (401, N'профессор', N'д. т.н.')
INSERT [dbo].[Преподаватель] ([Таб_номер], [Звание], [Степень]) VALUES (402, N'доцент', N'к. т.н.')
INSERT [dbo].[Преподаватель] ([Таб_номер], [Звание], [Степень]) VALUES (403, N'ассистент', N'–')
INSERT [dbo].[Преподаватель] ([Таб_номер], [Звание], [Степень]) VALUES (501, N'профессор', N'д. ф.-м. н.')
INSERT [dbo].[Преподаватель] ([Таб_номер], [Звание], [Степень]) VALUES (502, N'профессор', N'д. ф.-м. н.')
INSERT [dbo].[Преподаватель] ([Таб_номер], [Звание], [Степень]) VALUES (503, N'доцент', N'к. ф.-м. н.')
INSERT [dbo].[Преподаватель] ([Таб_номер], [Звание], [Степень]) VALUES (601, N'профессор', N'д. ф.-м. н.')
GO
INSERT [dbo].[Специальность] ([Номер], [Направление], [Шифр]) VALUES (N'01,03,04', N'Прикладная математика', N'мм')
INSERT [dbo].[Специальность] ([Номер], [Направление], [Шифр]) VALUES (N'09,03,02', N'Информационные системы и технологии', N'ис')
INSERT [dbo].[Специальность] ([Номер], [Направление], [Шифр]) VALUES (N'09,03,03', N'Прикладная информатика', N'пи')
INSERT [dbo].[Специальность] ([Номер], [Направление], [Шифр]) VALUES (N'14,03,02', N'Ядерные физика и технологии', N'эф')
INSERT [dbo].[Специальность] ([Номер], [Направление], [Шифр]) VALUES (N'38,03,05', N'Бизнес-информатика', N'ис')
GO
INSERT [dbo].[Студент] ([Рег_номер], [Номер], [Фамилия]) VALUES (10101, N'09,03,03', N'Николаева Н, Н,')
INSERT [dbo].[Студент] ([Рег_номер], [Номер], [Фамилия]) VALUES (10102, N'09,03,03', N'Иванов И, И,')
INSERT [dbo].[Студент] ([Рег_номер], [Номер], [Фамилия]) VALUES (10103, N'09,03,03', N'Крюков К, К,')
INSERT [dbo].[Студент] ([Рег_номер], [Номер], [Фамилия]) VALUES (20101, N'09,03,02', N'Андреев А, А,')
INSERT [dbo].[Студент] ([Рег_номер], [Номер], [Фамилия]) VALUES (20102, N'09,03,02', N'Федоров Ф, Ф,')
INSERT [dbo].[Студент] ([Рег_номер], [Номер], [Фамилия]) VALUES (30101, N'14,03,02', N'Бондаренко Б, Б,')
INSERT [dbo].[Студент] ([Рег_номер], [Номер], [Фамилия]) VALUES (30102, N'14,03,02', N'Цветков К, К,')
INSERT [dbo].[Студент] ([Рег_номер], [Номер], [Фамилия]) VALUES (30103, N'14,03,02', N'Петров П, П,')
INSERT [dbo].[Студент] ([Рег_номер], [Номер], [Фамилия]) VALUES (50101, N'01,03,04', N'Сергеев С, С,')
INSERT [dbo].[Студент] ([Рег_номер], [Номер], [Фамилия]) VALUES (50102, N'01,03,04', N'Кудрявцев К, К,')
INSERT [dbo].[Студент] ([Рег_номер], [Номер], [Фамилия]) VALUES (80101, N'38,03,05', N'Макаров М, М,')
INSERT [dbo].[Студент] ([Рег_номер], [Номер], [Фамилия]) VALUES (80102, N'38,03,05', N'Яковлев Я, Я,')
GO
INSERT [dbo].[Факультет] ([Аббревиатура], [Название]) VALUES (N'Гн', N'Гуманитарные науки')
INSERT [dbo].[Факультет] ([Аббревиатура], [Название]) VALUES (N'Ен', N'Естественные науки')
INSERT [dbo].[Факультет] ([Аббревиатура], [Название]) VALUES (N'Ит', N'Информационные технологии')
INSERT [dbo].[Факультет] ([Аббревиатура], [Название]) VALUES (N'Фм', N'Физико-математический')
GO
SET IDENTITY_INSERT [dbo].[Экзамен] ON 

INSERT [dbo].[Экзамен] ([Код_экзамена], [Код_дисциплины], [Дата], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (1, 102, CAST(N'2015-06-05' AS Date), 10101, 102, N'т505', 4)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Код_дисциплины], [Дата], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (2, 102, CAST(N'2015-06-05' AS Date), 10102, 102, N'т505', 4)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Код_дисциплины], [Дата], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (3, 202, CAST(N'2015-06-05' AS Date), 20101, 202, N'т506', 4)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Код_дисциплины], [Дата], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (4, 202, CAST(N'2015-06-05' AS Date), 20102, 202, N'т506', 3)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Код_дисциплины], [Дата], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (5, 102, CAST(N'2015-06-07' AS Date), 30101, 105, N'ф419', 3)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Код_дисциплины], [Дата], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (6, 102, CAST(N'2015-06-07' AS Date), 30102, 101, N'т506', 4)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Код_дисциплины], [Дата], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (7, 102, CAST(N'2015-06-07' AS Date), 80101, 102, N'м425', 5)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Код_дисциплины], [Дата], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (8, 205, CAST(N'2015-06-09' AS Date), 80102, 402, N'м424', 4)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Код_дисциплины], [Дата], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (9, 209, CAST(N'2015-06-09' AS Date), 20101, 302, N'ф333', 3)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Код_дисциплины], [Дата], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (10, 101, CAST(N'2015-06-10' AS Date), 10101, 501, N'т506', 4)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Код_дисциплины], [Дата], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (11, 101, CAST(N'2015-06-10' AS Date), 10102, 501, N'т506', 4)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Код_дисциплины], [Дата], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (12, 204, CAST(N'2015-06-10' AS Date), 30102, 601, N'ф349', 5)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Код_дисциплины], [Дата], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (13, 209, CAST(N'2015-06-10' AS Date), 80101, 301, N'э105', 5)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Код_дисциплины], [Дата], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (14, 209, CAST(N'2015-06-10' AS Date), 80102, 301, N'э105', 4)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Код_дисциплины], [Дата], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (15, 101, CAST(N'2015-06-12' AS Date), 80101, 502, N'с324', 4)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Код_дисциплины], [Дата], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (16, 101, CAST(N'2015-06-15' AS Date), 30101, 503, N'ф417', 4)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Код_дисциплины], [Дата], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (17, 101, CAST(N'2015-06-15' AS Date), 50101, 501, N'ф201', 5)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Код_дисциплины], [Дата], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (18, 101, CAST(N'2015-06-15' AS Date), 50102, 501, N'ф201', 3)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Код_дисциплины], [Дата], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (19, 103, CAST(N'2015-06-15' AS Date), 10101, 403, N'ф414', 4)
INSERT [dbo].[Экзамен] ([Код_экзамена], [Код_дисциплины], [Дата], [Рег_номер], [Таб_номер], [Аудитория], [Оценка]) VALUES (20, 102, CAST(N'2015-06-17' AS Date), 10101, 102, N'т505', 5)
SET IDENTITY_INSERT [dbo].[Экзамен] OFF
GO
ALTER TABLE [dbo].[Заявка]  WITH CHECK ADD  CONSTRAINT [FK_Заявка_Дисциплина] FOREIGN KEY([Код])
REFERENCES [dbo].[Дисциплина] ([Код])
GO
ALTER TABLE [dbo].[Заявка] CHECK CONSTRAINT [FK_Заявка_Дисциплина]
GO
ALTER TABLE [dbo].[Заявка]  WITH CHECK ADD  CONSTRAINT [FK_Заявка_Специальность] FOREIGN KEY([Номер])
REFERENCES [dbo].[Специальность] ([Номер])
GO
ALTER TABLE [dbo].[Заявка] CHECK CONSTRAINT [FK_Заявка_Специальность]
GO
ALTER TABLE [dbo].[Кафедра]  WITH CHECK ADD  CONSTRAINT [FK_Кафедра_Факультет] FOREIGN KEY([Факультет])
REFERENCES [dbo].[Факультет] ([Аббревиатура])
GO
ALTER TABLE [dbo].[Кафедра] CHECK CONSTRAINT [FK_Кафедра_Факультет]
GO
ALTER TABLE [dbo].[Специальность]  WITH CHECK ADD  CONSTRAINT [FK_Специальность_Кафедра] FOREIGN KEY([Шифр])
REFERENCES [dbo].[Кафедра] ([Шифр])
GO
ALTER TABLE [dbo].[Специальность] CHECK CONSTRAINT [FK_Специальность_Кафедра]
GO
ALTER TABLE [dbo].[Экзамен]  WITH CHECK ADD  CONSTRAINT [FK_Экзамен_Дисциплина] FOREIGN KEY([Код_дисциплины])
REFERENCES [dbo].[Дисциплина] ([Код])
GO
ALTER TABLE [dbo].[Экзамен] CHECK CONSTRAINT [FK_Экзамен_Дисциплина]
GO
ALTER TABLE [dbo].[Экзамен]  WITH CHECK ADD  CONSTRAINT [FK_Экзамен_Преподаватель] FOREIGN KEY([Таб_номер])
REFERENCES [dbo].[Преподаватель] ([Таб_номер])
GO
ALTER TABLE [dbo].[Экзамен] CHECK CONSTRAINT [FK_Экзамен_Преподаватель]
GO
ALTER TABLE [dbo].[Экзамен]  WITH CHECK ADD  CONSTRAINT [FK_Экзамен_Студент] FOREIGN KEY([Рег_номер])
REFERENCES [dbo].[Студент] ([Рег_номер])
GO
ALTER TABLE [dbo].[Экзамен] CHECK CONSTRAINT [FK_Экзамен_Студент]
GO
USE [master]
GO
ALTER DATABASE [Сдача экзамена ЛР_6] SET  READ_WRITE 
GO
