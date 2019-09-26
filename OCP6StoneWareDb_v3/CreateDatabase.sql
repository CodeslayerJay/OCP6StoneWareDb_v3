--==============================================
-- Initial Setup for:
-- Create Database, Stored Procedures, Seed Dumby
-- Data, Roles, Views
--==============================================

USE [master]
GO

DROP DATABASE [OCP6StoneWareDB_V3]

/****** Object:  Database [OCP6StoneWareDB_V3]    Script Date: 9/9/2019 7:28:05 PM ******/
CREATE DATABASE [OCP6StoneWareDB_V3]
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OCP6StoneWareDB_V3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET ARITHABORT OFF 
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET  ENABLE_BROKER 
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET  MULTI_USER 
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET QUERY_STORE = OFF
GO
USE [OCP6StoneWareDB_V3]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [OCP6StoneWareDB_V3]
GO
/****** Object:  Table [dbo].[Issue_Resolution]    Script Date: 9/9/2019 7:28:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Issue_Resolution](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[issue_id] [int] NOT NULL,
	[resolution_description] [nvarchar](3000) NOT NULL,
	[date_resolved] [date] NOT NULL,
 CONSTRAINT [PK_Issue_Resolution] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Issue_Status]    Script Date: 9/9/2019 7:28:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Issue_Status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Issue_Status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Issues]    Script Date: 9/9/2019 7:28:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Issues](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[status_id] [int] NOT NULL,
	[problem_description] [nvarchar](3000) NOT NULL,
	[created_at] [date] NOT NULL,
 CONSTRAINT [PK_Issues] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operating_Systems]    Script Date: 9/9/2019 7:28:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operating_Systems](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Operating_Systems] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Detail]    Script Date: 9/9/2019 7:28:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 9/9/2019 7:28:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_detail_id] [int] NOT NULL,
	[version_id] [int] NOT NULL,
	[os_id] [int] NOT NULL,
 CONSTRAINT [PK_Products_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Versions]    Script Date: 9/9/2019 7:28:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Versions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[version] [numeric](2, 1) NOT NULL,
 CONSTRAINT [PK_Versions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Issue_Resolution]  WITH CHECK ADD  CONSTRAINT [FK_Issue_Resolution_Issues] FOREIGN KEY([issue_id])
REFERENCES [dbo].[Issues] ([id])
GO
ALTER TABLE [dbo].[Issue_Resolution] CHECK CONSTRAINT [FK_Issue_Resolution_Issues]
GO
ALTER TABLE [dbo].[Issues]  WITH CHECK ADD  CONSTRAINT [FK_Issues_Products1] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Issues] CHECK CONSTRAINT [FK_Issues_Products1]
GO
ALTER TABLE [dbo].[Issues]  WITH CHECK ADD  CONSTRAINT [FK_Issues_Status] FOREIGN KEY([status_id])
REFERENCES [dbo].[Issue_Status] ([id])
GO
ALTER TABLE [dbo].[Issues] CHECK CONSTRAINT [FK_Issues_Status]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Product_Details_Operating_Systems] FOREIGN KEY([os_id])
REFERENCES [dbo].[Operating_Systems] ([id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Product_Details_Operating_Systems]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Product_Details_Versions] FOREIGN KEY([version_id])
REFERENCES [dbo].[Versions] ([id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Product_Details_Versions]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Product_Detail] FOREIGN KEY([product_detail_id])
REFERENCES [dbo].[Product_Detail] ([id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Product_Detail]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relationship between Issues and Status' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Issues', @level2type=N'CONSTRAINT',@level2name=N'FK_Issues_Status'
GO
USE [master]
GO
ALTER DATABASE [OCP6StoneWareDB_V3] SET  READ_WRITE 
GO

USE [OCP6StoneWareDB_V3]
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
BEGIN
	CREATE FULLTEXT CATALOG fulltextCatalog AS DEFAULT

	CREATE FULLTEXT INDEX ON [dbo].[Issues](problem_description)
	KEY INDEX [PK_Issues]
	ON fulltextCatalog

	CREATE FULLTEXT INDEX ON [dbo].[Issue_Resolution](resolution_description)
	KEY INDEX [PK_Issue_Resolution]
	ON fulltextCatalog
END

--===================================
-- Sample Data for testing purposes
--===================================

USE [OCP6StoneWareDB_V3]
GO

--===================================
-- Seeds
--===================================
IF  EXISTS (
	SELECT id 
		FROM Issues
		WHERE id > 0
)
DELETE FROM Issues

INSERT INTO [Issue_Status](status) VALUES('Outstanding')
INSERT INTO [Issue_Status](status) VALUES('Resolved')

IF  EXISTS (
	SELECT version 
		FROM [Versions]
		WHERE version > 0
)
DELETE FROM [Versions]

-- SEED VERSION NUMBERS
INSERT INTO [Versions](version) VALUES(1.0)
INSERT INTO [Versions](version) VALUES(1.1)
INSERT INTO [Versions](version) VALUES(1.2)
INSERT INTO [Versions](version) VALUES(1.3)
INSERT INTO [Versions](version) VALUES(2.0)
INSERT INTO [Versions](version) VALUES(2.1)

IF  EXISTS (
	SELECT name 
		FROM [Operating_Systems]
		WHERE name = 'Linux'
)
DELETE FROM [Operating_Systems]

-- SEED OPERATING SYSTEMS
INSERT INTO [Operating_Systems](name) VALUES('Linux')
INSERT INTO [Operating_Systems](name) VALUES('MacOS')
INSERT INTO [Operating_Systems](name) VALUES('Windows')
INSERT INTO [Operating_Systems](name) VALUES('Android')
INSERT INTO [Operating_Systems](name) VALUES('iOS')
INSERT INTO [Operating_Systems](name) VALUES('Windows Mobile')

IF  EXISTS (
	SELECT name 
		FROM [Product_Detail]
		WHERE name = 'Day Trader Wannabe'
)
DELETE FROM [Product_Detail]


-- SEED PRODUCTS
INSERT INTO [Product_Detail](name) VALUES('Day Trader Wannabe')
INSERT INTO [Product_Detail](name) VALUES('Investment Overlord')
INSERT INTO [Product_Detail](name) VALUES('Workout Planner')
INSERT INTO [Product_Detail](name) VALUES('Social Anxiety Planner')

--==========================
--SEED PRODUCT DETAILS
--==========================
IF  EXISTS (
	SELECT id 
		FROM [Products]
		WHERE id > 0
)
DELETE FROM [Products]

--Day Trader Wannabe 1.0
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Linux')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Windows')
)

-- Day Trader Wannabe 1.1
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Linux')
)

INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'MacOS')
)

INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Windows')
)

-- Day Trader Wannabe 1.2
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.2),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Linux')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.2),
	(SELECT id FROM [Operating_Systems] WHERE name = 'MacOS')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.2),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Windows')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.2),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Android')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.2),
	(SELECT id FROM [Operating_Systems] WHERE name = 'iOS')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.2),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Windows Mobile')
)

-- Day Trader Wannabe 1.3
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.3),
	(SELECT id FROM [Operating_Systems] WHERE name = 'MacOS')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.3),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Windows')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.3),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Android')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Day Trader Wannabe'),
	(SELECT id FROM [Versions] WHERE version = 1.3),
	(SELECT id FROM [Operating_Systems] WHERE name = 'iOS')
)

-- Investment Overlord 1.0
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Investment Overlord'),
	(SELECT id FROM [Versions] WHERE version = 1.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'MacOS')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Investment Overlord'),
	(SELECT id FROM [Versions] WHERE version = 1.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'iOS')
)

-- Investment Overlord 2.0
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Investment Overlord'),
	(SELECT id FROM [Versions] WHERE version = 2.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'MacOS')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Investment Overlord'),
	(SELECT id FROM [Versions] WHERE version = 2.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'iOS')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Investment Overlord'),
	(SELECT id FROM [Versions] WHERE version = 2.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Android')
)

-- Investment Overlord 2.1
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Investment Overlord'),
	(SELECT id FROM [Versions] WHERE version = 2.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'MacOS')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Investment Overlord'),
	(SELECT id FROM [Versions] WHERE version = 2.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Windows')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Investment Overlord'),
	(SELECT id FROM [Versions] WHERE version = 2.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Android')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Investment Overlord'),
	(SELECT id FROM [Versions] WHERE version = 2.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'iOS')
)

-- Workout Planner 1.0
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Workout Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Linux')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Workout Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'MacOS')
)

-- Workout Planner 1.1
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Workout Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Linux')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Workout Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'MacOS')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Workout Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Windows')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Workout Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Android')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Workout Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'iOS')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Workout Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Windows Mobile')
)

-- Workout Planner 2.0
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Workout Planner'),
	(SELECT id FROM [Versions] WHERE version = 2.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'MacOS')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Workout Planner'),
	(SELECT id FROM [Versions] WHERE version = 2.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Windows')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Workout Planner'),
	(SELECT id FROM [Versions] WHERE version = 2.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Android')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Workout Planner'),
	(SELECT id FROM [Versions] WHERE version = 2.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'iOS')
)

-- Social Anxiety Planner 1.0
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Social Anxiety Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'MacOS')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Social Anxiety Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Windows')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Social Anxiety Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Android')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Social Anxiety Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'iOS')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Social Anxiety Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.0),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Windows Mobile')
)

-- Social Anxiety Planner 1.1
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Social Anxiety Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'MacOS')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Social Anxiety Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Windows')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Social Anxiety Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'Android')
)
INSERT INTO [Products](product_detail_id, version_id, os_id)
VALUES(
	(SELECT id FROM [Product_Detail] WHERE name = 'Social Anxiety Planner'),
	(SELECT id FROM [Versions] WHERE version = 1.1),
	(SELECT id FROM [Operating_Systems] WHERE name = 'iOS')
)

--===================================
-- Stored Procedure to Seed Issues
--===================================

USE [OCP6StoneWareDB_V3]
GO

CREATE OR ALTER PROCEDURE AddIssueToDb(
	@product_id int, @status_id int, @problem_description varchar(3000), @created_at datetime, 
		@issue_resolution varchar(3000) = null, @date_resolved datetime = null)
AS
BEGIN
	INSERT INTO [Issues](product_id, status_id, problem_description, created_at)
		VALUES(@product_id, @status_id, @problem_description, @created_at)

	IF @issue_resolution IS NOT NULL
	BEGIN
		INSERT INTO [Issue_Resolution]
			VALUES(
				(SELECT SCOPE_IDENTITY()),
				@issue_resolution,
				@date_resolved
			)
	END
END
GO

/*==================================================
/ Seed Issues
===================================================*/
USE [OCP6StoneWareDB_V3]
GO

IF  EXISTS (
	SELECT id 
		FROM Issues
		WHERE id > 0
)
DELETE FROM Issue_Resolution
DELETE FROM Issues


EXEC dbo.AddIssueToDb @product_id = 1, @status_id = 2,
	@problem_description = 'User tried to sign in with their gmail account and keep getting an error message
		saying that the email does not exist',
	@created_at = '2019-04-21',
	@issue_resolution = 'The user was using the wrong email address.',
	@date_resolved = '2019-04-22'

EXEC dbo.AddIssueToDb @product_id = 1, @status_id = 2,
	@problem_description = 'User says product is buying two of every purchase made. If the user
		wishes to buy 10 shares of Apple stock, the product makes two transactions, each for 10
		shares.',
	@created_at = '2019-03-10',
	@issue_resolution = 'User was on a 3G network and expected the purchase to complete
		faster than it was. User clicked the Purchase button, then clicked it again when the screen
		did not change fast enough. Sent request to Development to add “in progress” animation
		when purchases are made and to disable Purchase button after first click.',
	@date_resolved = '2019-03-10'

EXEC dbo.AddIssueToDb @product_id = 4, @status_id = 1,
	@problem_description = 'User says the stock price keeps changing randomly.',
	@created_at = '2019-03-14'
	
EXEC dbo.AddIssueToDb @product_id = 6, @status_id = 1,
	@problem_description = 'User says the stock price keeps changing randomly.',
	@created_at = '2019-03-19'

EXEC dbo.AddIssueToDb @product_id = 12, @status_id = 1,
	@problem_description = 'The app keeps crashing for the user while they try to cancel an order.',
	@created_at = '2019-08-03'

EXEC dbo.AddIssueToDb @product_id = 11, @status_id = 1,
	@problem_description = 'The app keeps crashing when trying to cancel an order.',
	@created_at = '2019-08-03'

EXEC dbo.AddIssueToDb @product_id = 1, @status_id = 2,
	@problem_description = 'The user is having difficulty updating the application.',
	@created_at = '2019-02-10',
	@issue_resolution = 'Asked user to delete the older version and downloading the newest
	version that is available.',
	@date_resolved = '2019-02-10'

	EXEC dbo.AddIssueToDb @product_id = 1, @status_id = 2,
	@problem_description = 'USers are having difficulty updating the application.',
	@created_at = '2019-02-10',
	@issue_resolution = 'Advised user to delete the older version and downloading the newest
	version that is available.',
	@date_resolved = '2019-02-10'

EXEC dbo.AddIssueToDb @product_id = 13, @status_id = 2,
	@problem_description = 'User says the application is running slow.',
	@created_at = '2019-05-10',
	@issue_resolution = 'The user had 10 other applications opended at the same time. Advised to 
	close the other applications.',
	@date_resolved = '2019-05-10'

	EXEC dbo.AddIssueToDb @product_id = 20, @status_id = 2,
	@problem_description = 'User says the application is running slow.',
	@created_at = '2019-05-10',
	@issue_resolution = 'The user had 10 other applications opended at the same time. Advised to 
	close the other applications.',
	@date_resolved = '2019-05-10'

EXEC dbo.AddIssueToDb @product_id = 8, @status_id = 1,
	@problem_description = 'The user complains that the application text is not scrolling. The information is displayed
	outside the view window.',
	@created_at = '2019-08-14'

	EXEC dbo.AddIssueToDb @product_id = 12, @status_id = 1,
	@problem_description = 'The user complains that the application text is not scrolling. The information is displayed
	outside the view window.',
	@created_at = '2019-08-14'

EXEC dbo.AddIssueToDb @product_id = 10, @status_id = 1,
	@problem_description = 'The user complains that the application text is not scrolling. The information is displayed
	outside the view window.',
	@created_at = '2019-08-17'

EXEC dbo.AddIssueToDb @product_id = 8, @status_id = 1,
	@problem_description = 'App not updating the proper date for displaying the account information',
	@created_at = '2019-05-01'

EXEC dbo.AddIssueToDb @product_id = 13, @status_id = 2,
	@problem_description = 'User says the application is running slow.',
	@created_at = '2019-05-10',
	@issue_resolution = 'The user had 10 other applications opended at the same time. Advised to 
	close the other applications.',
	@date_resolved = '2019-05-10'

EXEC dbo.AddIssueToDb @product_id = 22, @status_id = 1,
	@problem_description = 'The user is not able to access the calendar.',
	@created_at = '2019-03-28'

EXEC dbo.AddIssueToDb @product_id = 22, @status_id = 1,
	@problem_description = 'Found a bug when attempting to update calendar. Error message says that the operation cannot complete
	because the date is NULL',
	@created_at = '2019-03-29'

EXEC dbo.AddIssueToDb @product_id = 13, @status_id = 2,
	@problem_description = 'The app is accepting empty entries when creating a new entry.',
	@created_at = '2019-05-10',
	@issue_resolution = 'Added validation to the entry form to check if the user is attempting to
	submit and empty form. Will display a validation error to notify the user that they cannot submit
	empty data.',
	@date_resolved = '2019-05-10'

EXEC dbo.AddIssueToDb @product_id = 3, @status_id = 1,
	@problem_description = 'The total amounts are not calculating properly.',
	@created_at = '2019-03-20'

EXEC dbo.AddIssueToDb @product_id = 3, @status_id = 1,
	@problem_description = 'User says they have found a few spelling errors in the application.',
	@created_at = '2019-01-29'

EXEC dbo.AddIssueToDb @product_id = 22, @status_id = 1,
	@problem_description = 'Found a bug when attempting to update calendar. Error message says that the operation cannot complete
	because the date is NULL',
	@created_at = '2019-03-29'

EXEC dbo.AddIssueToDb @product_id = 15, @status_id = 2,
	@problem_description = 'The application keeps locking up',
	@created_at = '2019-05-03',
	@issue_resolution = 'Advised the customer to update their operating system.',
	@date_resolved = '2019-05-10'

	EXEC dbo.AddIssueToDb @product_id = 15, @status_id = 2,
	@problem_description = 'The application keeps locking up',
	@created_at = '2019-05-03',
	@issue_resolution = 'Advising users to update their operating system.',
	@date_resolved = '2019-05-10'

EXEC dbo.AddIssueToDb @product_id = 15, @status_id = 2,
	@problem_description = 'App is not displaying properly on smaller screen devices.',
	@created_at = '2019-02-14',
	@issue_resolution = 'Added a screen size check and adjusted displaying properly',
	@date_resolved = '2019-03-10'

EXEC dbo.AddIssueToDb @product_id = 44, @status_id = 1,
	@problem_description = 'User says the application starts acting crazy when they tap the screen exactly 5 times in a row.',
	@created_at = '2019-01-20'

EXEC dbo.AddIssueToDb @product_id = 35, @status_id = 1,
	@problem_description = 'User says the application starts acting crazy when they tap the screen exactly 5 times in a row.',
	@created_at = '2019-01-20'

EXEC dbo.AddIssueToDb @product_id = 44, @status_id = 2,
	@problem_description = 'User says the planner is not displaying the correct information for dates selected.',
	@created_at = '2019-02-25',
	@issue_resolution = 'Found a bug that was not updating the calendar properly.',
	@date_resolved = '2019-07-11'

EXEC dbo.AddIssueToDb @product_id = 38, @status_id = 1,
	@problem_description = 'User says the application starts acting crazy when they tap the screen exactly 5 times in a row.',
	@created_at = '2019-01-20'

EXEC dbo.AddIssueToDb @product_id = 18, @status_id = 1,
	@problem_description = 'Found a bug when attempting to update calendar. Error message says that the operation cannot complete
	because the date is NULL',
	@created_at = '2019-08-29'

EXEC dbo.AddIssueToDb @product_id = 12, @status_id = 1,
	@problem_description = 'User is not able to update their account information',
	@created_at = '2019-06-16'

EXEC dbo.AddIssueToDb @product_id = 30, @status_id = 2,
	@problem_description = 'User says the exercises are not displaying properly and the timer is off by 2 secs.',
	@created_at = '2019-06-16',
	@issue_resolution = 'Found a bug that was setting the timer offet by 2 secs. Updated the timer.',
	@date_resolved = '2019-11-06'

EXEC dbo.AddIssueToDb @product_id = 25, @status_id = 2,
	@problem_description = 'The application is running slow for certain users in the North East Market',
	@created_at = '2019-11-16',
	@issue_resolution = 'Data carriers was experiencing heavy load times',
	@date_resolved = '2019-11-16'

EXEC dbo.AddIssueToDb @product_id = 25, @status_id = 2,
	@problem_description = 'The application is running slow for certain users in the North East Market',
	@created_at = '2019-11-16',
	@issue_resolution = 'Data carriers was experiencing heavy load times',
	@date_resolved = '2019-11-16'

EXEC dbo.AddIssueToDb @product_id = 41, @status_id = 1,
	@problem_description = 'App is stuck on loading data. No other information provided.',
	@created_at = '2019-06-23'
	
EXEC dbo.AddIssueToDb @product_id = 30, @status_id = 1,
	@problem_description = 'User is having issues loading data during certain times of the day. Between 12am and 3am eastern time.',
	@created_at = '2019-06-07'

EXEC dbo.AddIssueToDb @product_id = 5, @status_id = 2,
	@problem_description = 'User is not able to purchase more than a certain quantity of stocks',
	@created_at = '2019-04-01',
	@issue_resolution = 'Verified that there is a safety check in place to ensure massive amounts of stocks are not purchased.',
	@date_resolved = '2019-04-01'

EXEC dbo.AddIssueToDb @product_id = 5, @status_id = 2,
	@problem_description = 'Partial data is being shown for certain users in the central market',
	@created_at = '2019-04-19',
	@issue_resolution = 'Updated geo-location functionality',
	@date_resolved = '2019-04-19'

EXEC dbo.AddIssueToDb @product_id = 23, @status_id = 1,
	@problem_description = 'User says the app displays a black screen when trying to update information.',
	@created_at = '2019-06-07'

EXEC dbo.AddIssueToDb @product_id = 38, @status_id = 1,
	@problem_description = 'App keeps disconnecting from data sources.',
	@created_at = '2019-06-07'

EXEC dbo.AddIssueToDb @product_id = 40, @status_id = 1,
	@problem_description = 'Balance is updating twice',
	@created_at = '2019-01-07'

EXEC dbo.AddIssueToDb @product_id = 40, @status_id = 1,
	@problem_description = 'Previous balance is being deleted after adding new entry',
	@created_at = '2019-01-02'

EXEC dbo.AddIssueToDb @product_id = 34, @status_id = 1,
	@problem_description = 'The user cannot update their personal information',
	@created_at = '2019-05-02'

EXEC dbo.AddIssueToDb @product_id = 22, @status_id = 1,
	@problem_description = 'The user cannot reset their password. Says not getting the confimation emails to reset password.',
	@created_at = '2019-07-02'

EXEC dbo.AddIssueToDb @product_id = 9, @status_id = 2,
	@problem_description = 'User says the application is running slower than normal lately.',
	@created_at = '2019-04-19',
	@issue_resolution = 'Asked the user to update the application and restart their device.',
	@date_resolved = '2019-04-19'

EXEC dbo.AddIssueToDb @product_id = 18, @status_id = 2,
	@problem_description = 'User says the application is running slower than normal lately.',
	@created_at = '2019-02-19',
	@issue_resolution = 'Asked the user to update the application and restart their device.',
	@date_resolved = '2019-04-19'

EXEC dbo.AddIssueToDb @product_id = 24, @status_id = 2,
	@problem_description = 'Application keeps crashing and displaying error 404',
	@created_at = '2019-08-19',
	@issue_resolution = 'Had an incorrect URL for the help and contact page. Updated the URL.',
	@date_resolved = '2019-08-19'

EXEC dbo.AddIssueToDb @product_id = 21, @status_id = 1,
	@problem_description = 'The user cannot reset their password. Says not getting the confimation emails to reset password.',
	@created_at = '2019-07-02'

EXEC dbo.AddIssueToDb @product_id = 23, @status_id = 1,
	@problem_description = 'The user cannot reset their password. Says not getting the confimation emails to reset password.',
	@created_at = '2019-07-02'

EXEC dbo.AddIssueToDb @product_id = 24, @status_id = 1,
	@problem_description = 'The user cannot reset their password. Says not getting the confimation emails to reset password.',
	@created_at = '2019-07-02'

EXEC dbo.AddIssueToDb @product_id = 19, @status_id = 1,
	@problem_description = 'The user cannot reset their password. Says not getting the confimation emails to reset password.',
	@created_at = '2019-07-02'


--=====================================
-- CREATE VIEW FOR GETTING ISSUES AND
-- JOINING RELATED TABLES
--=====================================
USE [OCP6StoneWareDB_V3]
GO

CREATE VIEW VWIssues_GetAll
AS
SELECT 
		_i.id as issue_id,
		_pd.id AS product_id,
		_pd.name AS product,
		_is.status,
		_v.version,
		_os.name AS operating_system,
		_i.problem_description,
		_ir.resolution_description,
		_i.created_at,
		_ir.date_resolved
	FROM [Issues] _i
		JOIN [Issue_Status] _is ON _is.id = _i.status_id
		JOIN [Products] _p ON _p.id = _i.product_id
		JOIN [Product_Detail] _pd ON _pd.id = _p.product_detail_id
		JOIN [Operating_Systems] _os ON _os.id = _p.os_id
		JOIN [Versions] _v ON _v.id = _p.version_id
		LEFT JOIN [Issue_Resolution] _ir ON _ir.issue_id = _i.id

GO

--========================================
-- FUNCTION TO SPLIT A STRING OF KEYWORDS
-- Takes a list of comma delimited words and
-- splits into individual pieces
-- PARAMS: @keywords
--=========================================
USE [OCP6StoneWareDB_V3]
GO

CREATE FUNCTION dbo.fnSplitList ( @keywords VARCHAR(MAX) )
RETURNS
 @returnList TABLE ([Keyword] [nvarchar] (500))
AS
BEGIN

 DECLARE @keyword NVARCHAR(255)
 DECLARE @pos INT

 WHILE CHARINDEX(',', @keywords) > 0
 BEGIN
  SELECT @pos  = CHARINDEX(',', @keywords)  
  SELECT @keyword = SUBSTRING(@keywords, 1, @pos-1)

  INSERT INTO @returnList 
  SELECT @keyword

  SELECT @keywords = SUBSTRING(@keywords, @pos+1, LEN(@keywords)-@pos)
 END

 INSERT INTO @returnList
 SELECT @keywords

 RETURN
END

GO

--=================================================
--CREATE STORE PROCEDURES
--=================================================
USE [OCP6StoneWareDB_V3]
GO

-- =======================================================
-- Get all issues for all products / versions by status
-- =======================================================
USE [OCP6StoneWareDB_V3]
GO

CREATE OR ALTER PROCEDURE spIssues_GetAll(@status nvarchar(20) = 'Outstanding')
AS
BEGIN
	SET NOCOUNT ON;
	
	--// GET RESULTS FROM VIEW
	SELECT * FROM [dbo].[vwIssues_GetAll]
	WHERE status = @status
END
GO

-- ============================================================
-- Get all issues for product by daterange, version, and status
-- ============================================================
USE [OCP6StoneWareDB_V3]
GO

CREATE OR ALTER PROCEDURE spIssues_GetByDate_ForProductAndVersion(
		@product_name nvarchar(50), 
		@status nvarchar(20) = 'Outstanding',
		@start_date date = '2010-01-01', 
		@end_date date = null, 
		@version numeric(2,1))
AS
BEGIN
	SET NOCOUNT ON;
	
	IF @end_date IS NULL
	BEGIN
		SET @end_date = GETDATE()
	END

	--// GET RESULTS FROM VIEW
	SELECT * FROM [dbo].[vwIssues_GetAll]
	WHERE status = @status
	AND product = @product_name
	AND version = @version
	AND created_at between @start_date AND @end_date
END
GO

-- ============================================================
-- Get all issues/versions for product by daterange and status
-- ============================================================
USE [OCP6StoneWareDB_V3]
GO

CREATE OR ALTER PROCEDURE spIssues_GetByDateForProduct(
		@product_name nvarchar(50), 
		@status nvarchar(20) = 'Outstanding',
		@start_date date = '2010-01-01', 
		@end_date date = null)
AS
BEGIN
	SET NOCOUNT ON;

	IF @end_date IS NULL
	BEGIN
		SET @end_date = GETDATE()
	END

	--// GET RESULTS FROM VIEW
	SELECT * FROM [dbo].[vwIssues_GetAll]
	WHERE status = @status
	AND product = @product_name
	AND created_at BETWEEN @start_date AND @end_date
END
GO

-- ========================================================================
-- Get all issues for product by status, product name, and version number
-- ========================================================================
USE [OCP6StoneWareDB_V3]
GO

CREATE OR ALTER PROCEDURE spIssues_GetByStatus_ForProductAndVersion(
		@product_name nvarchar(50), 
		@version numeric(2,1), 
		@status nvarchar(20) = 'Outstanding')
AS
BEGIN
	SET NOCOUNT ON;
	
	--// GET RESULTS FROM VIEW
	SELECT * FROM [dbo].[vwIssues_GetAll]
	WHERE status = @status
	AND product = @product_name
	AND version = @version
END
GO


-- =======================================================
-- Get all issues for product by status and product name
-- =======================================================
USE [OCP6StoneWareDB_V3]
GO

CREATE OR ALTER PROCEDURE spIssues_GetByStatusForProduct(
		@product_name nvarchar(50), 
		@status nvarchar(20) = null)
AS
BEGIN
	SET NOCOUNT ON;
	IF @status IS NULL
	BEGIN
		SET @status = 'Outstanding';
	END


	--// GET RESULTS FROM VIEW
	SELECT * FROM [dbo].[vwIssues_GetAll]
	WHERE status = @status
	AND product = @product_name
END
GO

--==============================================
-- Get all issues by status and keywords
-- Searches Problem and Resolution Description
-- for keywords
--==============================================
USE [OCP6StoneWareDB_V3]
GO

CREATE OR ALTER PROCEDURE spIssues_GetAllByStatus_Keywords(
		@status nvarchar(50) = 'Outstanding', 
		@keywords nvarchar(MAX))
AS
BEGIN
	SELECT * FROM VWIssues_GetAll AS vw
		WHERE status = @status
	AND 
	(
		EXISTS (SELECT Keyword FROM dbo.fnSplitList(@keywords) WHERE vw.resolution_description LIKE '%'+Keyword+'%')
		OR EXISTS (SELECT Keyword FROM dbo.fnSplitList(@keywords) WHERE vw.problem_description LIKE '%'+Keyword+'%')
	)
END
GO
--====================================================
-- Get all issues for a product by status and keywords
--====================================================
USE [OCP6StoneWareDB_V3]
GO

CREATE OR ALTER PROCEDURE spIssues_GetAllByStatus_KeywordsForProduct(
		@product_name nvarchar(50), 
		@status nvarchar(50) = 'Outstanding', 
		@keywords nvarchar(MAX))
AS
BEGIN
	SELECT * FROM VWIssues_GetAll AS vw
		WHERE status = @status
		AND product = @product_name
	AND 
	(
		EXISTS (SELECT Keyword FROM dbo.fnSplitList(@keywords) WHERE vw.resolution_description LIKE '%'+Keyword+'%')
		OR EXISTS (SELECT Keyword FROM dbo.fnSplitList(@keywords) WHERE vw.problem_description LIKE '%'+Keyword+'%')
	)
END
GO
--=============================================================
-- Get all issues for a product by status, version and keywords
--=============================================================
USE [OCP6StoneWareDB_V3]
GO

CREATE OR ALTER PROCEDURE spIssues_GetByStatusKeywordsVersion_ForProduct(
		@product_name nvarchar(50), 
		@version numeric(2,1), 
		@status nvarchar(50) = 'Outstanding',
		@keywords nvarchar(MAX))
AS
BEGIN
	SELECT * FROM VWIssues_GetAll AS vw
		WHERE status = @status
		AND product = @product_name
		AND version = @version
	AND 
	(
		EXISTS (SELECT Keyword FROM dbo.fnSplitList(@keywords) WHERE vw.resolution_description LIKE '%'+Keyword+'%')
		OR EXISTS (SELECT Keyword FROM dbo.fnSplitList(@keywords) WHERE vw.problem_description LIKE '%'+Keyword+'%')
	)
END
GO

--=============================================================
-- Get all issues for a product by status, date range and keywords
--=============================================================
USE [OCP6StoneWareDB_V3]
GO

CREATE OR ALTER PROCEDURE spIssues_GetByStatusKeywordsDate_ForProduct(
		@product_name nvarchar(50), 
		@status nvarchar(50) = 'Outstanding', 
		@keywords nvarchar(MAX),
		@start_date date = '2010-01-01',
		@end_date date = null)
AS
BEGIN
	IF @end_date IS NULL
	BEGIN
		SET @end_date = GetDate()
	END

	SELECT * FROM VWIssues_GetAll AS vw
		WHERE status = @status
		AND product = @product_name
		AND created_at BETWEEN @start_date AND @end_date
	AND 
	(
		EXISTS (SELECT Keyword FROM dbo.fnSplitList(@keywords) WHERE vw.resolution_description LIKE '%'+Keyword+'%')
		OR EXISTS (SELECT Keyword FROM dbo.fnSplitList(@keywords) WHERE vw.problem_description LIKE '%'+Keyword+'%')
	)
END

GO
--=========================================================================
-- Get all issues for a product by status, date range, version and keywords
--==========================================================================
USE [OCP6StoneWareDB_V3]
GO

CREATE OR ALTER PROCEDURE spIssues_GetByStatusKeywordsDate_ForProductSingleVersion(
		@product_name nvarchar(50),
		@version numeric(2,1), 
		@status nvarchar(50) = 'Outstanding', 
		@keywords nvarchar(MAX),
		@start_date date = '2010-01-01',
		@end_date date = null)
AS
BEGIN
	IF @end_date IS NULL
	BEGIN
		SET @end_date = GetDate()
	END

	SELECT * FROM VWIssues_GetAll AS vw
		WHERE status = @status
		AND product = @product_name
		AND version = @version
		AND created_at BETWEEN @start_date AND @end_date
	AND 
	(
		EXISTS (SELECT Keyword FROM dbo.fnSplitList(@keywords) WHERE vw.resolution_description LIKE '%'+Keyword+'%')
		OR EXISTS (SELECT Keyword FROM dbo.fnSplitList(@keywords) WHERE vw.problem_description LIKE '%'+Keyword+'%')
	)
END

GO
--=================================
--CREATE ROLE THAT HAS ONLY ACCESS
--TO EXECUTING STORE PROCEDURES
--=================================
USE [OCP6StoneWareDB_V3]
GO

CREATE ROLE dbStoredProceduresOnlyAccess
GRANT EXEC TO dbStoredProceduresOnlyAccess
GO

