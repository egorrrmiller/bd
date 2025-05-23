USE [master]
GO
/****** Object:  Database [Дружинин]    Script Date: 16.05.2025 20:33:35 ******/
CREATE DATABASE [Дружинин]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Дружинин', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Дружинин.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Дружинин_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Дружинин_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Дружинин] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Дружинин].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Дружинин] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Дружинин] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Дружинин] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Дружинин] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Дружинин] SET ARITHABORT OFF 
GO
ALTER DATABASE [Дружинин] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Дружинин] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Дружинин] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Дружинин] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Дружинин] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Дружинин] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Дружинин] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Дружинин] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Дружинин] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Дружинин] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Дружинин] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Дружинин] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Дружинин] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Дружинин] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Дружинин] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Дружинин] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Дружинин] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Дружинин] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Дружинин] SET  MULTI_USER 
GO
ALTER DATABASE [Дружинин] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Дружинин] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Дружинин] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Дружинин] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Дружинин] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Дружинин] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Дружинин] SET QUERY_STORE = ON
GO
ALTER DATABASE [Дружинин] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Дружинин]
GO
/****** Object:  Table [dbo].[Академики]    Script Date: 16.05.2025 20:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Академики](
	[ФИО] [nvarchar](255) NULL,
	[Дата_рождения] [nvarchar](255) NULL,
	[Специализация] [nvarchar](255) NULL,
	[Год_присвоения_звания] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Дисциплина]    Script Date: 16.05.2025 20:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Дисциплина](
	[Код] [float] NULL,
	[Объем] [float] NULL,
	[Название] [nvarchar](255) NULL,
	[Исполнитель] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Зав_Кафедрой]    Script Date: 16.05.2025 20:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Зав_Кафедрой](
	[Таб_номер] [float] NULL,
	[Стаж] [float] NULL,
	[F3] [nvarchar](255) NULL,
	[F4] [nvarchar](255) NULL,
	[F5] [nvarchar](255) NULL,
	[F6] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Заявка]    Script Date: 16.05.2025 20:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Заявка](
	[Номер] [nvarchar](255) NULL,
	[Код] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Инженер]    Script Date: 16.05.2025 20:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Инженер](
	[Таб_номер] [float] NULL,
	[Специальность] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Кафедра]    Script Date: 16.05.2025 20:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Кафедра](
	[Шифр] [nvarchar](255) NULL,
	[Название] [nvarchar](255) NULL,
	[Факультет] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Преподаватель]    Script Date: 16.05.2025 20:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Преподаватель](
	[Таб_номер] [float] NULL,
	[Звание] [nvarchar](255) NULL,
	[Степень] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Сотрудник]    Script Date: 16.05.2025 20:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Сотрудник](
	[Таб_номер] [float] NULL,
	[Шифр] [nvarchar](255) NULL,
	[Фамилия] [nvarchar](255) NULL,
	[Должность] [nvarchar](255) NULL,
	[Зарплата] [nvarchar](255) NULL,
	[Шеф] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Специальность]    Script Date: 16.05.2025 20:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Специальность](
	[Номер] [nvarchar](255) NULL,
	[Направление] [nvarchar](255) NULL,
	[Шифр] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Страны]    Script Date: 16.05.2025 20:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Страны](
	[Название] [nvarchar](255) NULL,
	[Столица] [nvarchar](255) NULL,
	[Площадь] [float] NULL,
	[Население] [float] NULL,
	[Континент] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Страны1]    Script Date: 16.05.2025 20:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Страны1](
	[Страна] [nvarchar](255) NULL,
	[Столица] [nvarchar](255) NULL,
	[Часть света] [nvarchar](255) NULL,
	[Население тыс# чел#] [float] NULL,
	[Площадь тыс# кв# км] [float] NULL,
	[Тип управления] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Студент]    Script Date: 16.05.2025 20:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Студент](
	[Рег_номер] [float] NULL,
	[Номер] [nvarchar](255) NULL,
	[Фамилия] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Управление]    Script Date: 16.05.2025 20:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Управление](
	[ID] [float] NULL,
	[Вид] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Факультет]    Script Date: 16.05.2025 20:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Факультет](
	[Аббревиатура] [nvarchar](255) NULL,
	[Название] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Экзамен]    Script Date: 16.05.2025 20:33:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Экзамен](
	[Дата] [datetime] NULL,
	[Код] [float] NULL,
	[Рег_номер] [float] NULL,
	[Таб_номер] [float] NULL,
	[Аудитория] [nvarchar](255) NULL,
	[Оценка] [float] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Дружинин] SET  READ_WRITE 
GO
