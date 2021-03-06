USE [master]
GO
/****** Object:  Database [task1]    Script Date: 29.07.2021 12:16:54 ******/
CREATE DATABASE [task1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'task1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\task1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'task1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\task1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [task1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [task1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [task1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [task1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [task1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [task1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [task1] SET ARITHABORT OFF 
GO
ALTER DATABASE [task1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [task1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [task1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [task1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [task1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [task1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [task1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [task1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [task1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [task1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [task1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [task1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [task1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [task1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [task1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [task1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [task1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [task1] SET RECOVERY FULL 
GO
ALTER DATABASE [task1] SET  MULTI_USER 
GO
ALTER DATABASE [task1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [task1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [task1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [task1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [task1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [task1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'task1', N'ON'
GO
ALTER DATABASE [task1] SET QUERY_STORE = OFF
GO
USE [task1]
GO
/****** Object:  Table [dbo].[address]    Script Date: 29.07.2021 12:16:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[address](
	[cps_unit] [smallint] NOT NULL,
	[street_number] [smallint] NULL,
	[street_direction] [char](1) NULL,
	[street_name] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[state] [nvarchar](50) NULL,
	[zip] [int] NULL,
	[ward] [tinyint] NULL,
	[community_area_id] [tinyint] NULL,
	[geographic_area_id] [tinyint] NULL,
	[il_senat_district] [tinyint] NULL,
	[il_rep_district] [tinyint] NULL,
	[us_congressional_district] [tinyint] NULL,
	[cook_county_district] [tinyint] NULL,
	[census_block] [bigint] NULL,
	[latitude] [float] NULL,
	[attitude] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[cps_unit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[charter_type]    Script Date: 29.07.2021 12:16:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[charter_type](
	[id] [tinyint] NOT NULL,
	[name] [varchar](45) NULL,
 CONSTRAINT [PK_charter_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[community]    Script Date: 29.07.2021 12:16:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[community](
	[community_area_id] [tinyint] NOT NULL,
	[community_area_name] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[community_area_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[geographic_area]    Script Date: 29.07.2021 12:16:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[geographic_area](
	[geographic_area_id] [tinyint] NOT NULL,
	[geographic_area_name] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[geographic_area_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[governance]    Script Date: 29.07.2021 12:16:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[governance](
	[id] [tinyint] NOT NULL,
	[name] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[grades]    Script Date: 29.07.2021 12:16:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grades](
	[cps_unit] [smallint] NOT NULL,
	[from] [char](4) NOT NULL,
	[upto] [char](4) NULL,
	[grade_type] [char](1) NULL,
 CONSTRAINT [PK_grades] PRIMARY KEY CLUSTERED 
(
	[cps_unit] ASC,
	[from] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NCES]    Script Date: 29.07.2021 12:16:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCES](
	[cps_unit] [smallint] NOT NULL,
	[school_identitier] [int] NULL,
	[school_state_identitier] [tinyint] NULL,
	[school_district_identitier] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cps_unit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[program_types]    Script Date: 29.07.2021 12:16:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[program_types](
	[id] [tinyint] NOT NULL,
	[name] [nvarchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[school_category]    Script Date: 29.07.2021 12:16:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[school_category](
	[id] [tinyint] NOT NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[school_program_types]    Script Date: 29.07.2021 12:16:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[school_program_types](
	[cps_unit] [smallint] NOT NULL,
	[program_types_id] [tinyint] NOT NULL,
 CONSTRAINT [PK_school_program_types] PRIMARY KEY CLUSTERED 
(
	[cps_unit] ASC,
	[program_types_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[school_type]    Script Date: 29.07.2021 12:16:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[school_type](
	[id] [tinyint] NOT NULL,
	[school_type_name] [nvarchar](50) NULL,
	[subtype1] [nvarchar](50) NULL,
	[sub_type_name] [nvarchar](50) NULL,
	[sub_type_2] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[schools]    Script Date: 29.07.2021 12:16:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schools](
	[cps_unit] [smallint] NOT NULL,
	[school_id] [int] NULL,
	[school_name] [nvarchar](80) NULL,
	[full_name] [nvarchar](80) NULL,
	[ISBE_name] [nvarchar](60) NULL,
	[ISBE_id] [nvarchar](50) NULL,
	[oracle_id] [int] NULL,
	[class] [bit] NULL,
	[school_category_id] [tinyint] NULL,
	[governance_id] [tinyint] NULL,
	[charter_type_id] [tinyint] NULL,
	[school_type_id] [tinyint] NULL,
 CONSTRAINT [PK__schools__0733C28D0EAE587F] PRIMARY KEY CLUSTERED 
(
	[cps_unit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[address]  WITH NOCHECK ADD  CONSTRAINT [FK_addres_geographic_area] FOREIGN KEY([geographic_area_id])
REFERENCES [dbo].[geographic_area] ([geographic_area_id])
GO
ALTER TABLE [dbo].[address] CHECK CONSTRAINT [FK_addres_geographic_area]
GO
ALTER TABLE [dbo].[address]  WITH CHECK ADD  CONSTRAINT [FK_address_community1] FOREIGN KEY([community_area_id])
REFERENCES [dbo].[community] ([community_area_id])
GO
ALTER TABLE [dbo].[address] CHECK CONSTRAINT [FK_address_community1]
GO
ALTER TABLE [dbo].[grades]  WITH NOCHECK ADD  CONSTRAINT [FK_grades_schools] FOREIGN KEY([cps_unit])
REFERENCES [dbo].[schools] ([cps_unit])
GO
ALTER TABLE [dbo].[grades] CHECK CONSTRAINT [FK_grades_schools]
GO
ALTER TABLE [dbo].[school_program_types]  WITH NOCHECK ADD  CONSTRAINT [FK_school_program_types_program_types] FOREIGN KEY([program_types_id])
REFERENCES [dbo].[program_types] ([id])
GO
ALTER TABLE [dbo].[school_program_types] CHECK CONSTRAINT [FK_school_program_types_program_types]
GO
ALTER TABLE [dbo].[school_program_types]  WITH NOCHECK ADD  CONSTRAINT [FK_school_program_types_schools] FOREIGN KEY([cps_unit])
REFERENCES [dbo].[schools] ([cps_unit])
GO
ALTER TABLE [dbo].[school_program_types] CHECK CONSTRAINT [FK_school_program_types_schools]
GO
ALTER TABLE [dbo].[schools]  WITH NOCHECK ADD  CONSTRAINT [FK_address_schools] FOREIGN KEY([cps_unit])
REFERENCES [dbo].[address] ([cps_unit])
GO
ALTER TABLE [dbo].[schools] CHECK CONSTRAINT [FK_address_schools]
GO
ALTER TABLE [dbo].[schools]  WITH NOCHECK ADD  CONSTRAINT [FK_schools_charter_type] FOREIGN KEY([charter_type_id])
REFERENCES [dbo].[charter_type] ([id])
GO
ALTER TABLE [dbo].[schools] CHECK CONSTRAINT [FK_schools_charter_type]
GO
ALTER TABLE [dbo].[schools]  WITH NOCHECK ADD  CONSTRAINT [FK_schools_governance] FOREIGN KEY([governance_id])
REFERENCES [dbo].[governance] ([id])
GO
ALTER TABLE [dbo].[schools] CHECK CONSTRAINT [FK_schools_governance]
GO
ALTER TABLE [dbo].[schools]  WITH NOCHECK ADD  CONSTRAINT [FK_schools_NCES] FOREIGN KEY([cps_unit])
REFERENCES [dbo].[NCES] ([cps_unit])
GO
ALTER TABLE [dbo].[schools] CHECK CONSTRAINT [FK_schools_NCES]
GO
ALTER TABLE [dbo].[schools]  WITH NOCHECK ADD  CONSTRAINT [FK_schools_school_category] FOREIGN KEY([school_category_id])
REFERENCES [dbo].[school_category] ([id])
GO
ALTER TABLE [dbo].[schools] CHECK CONSTRAINT [FK_schools_school_category]
GO
ALTER TABLE [dbo].[schools]  WITH NOCHECK ADD  CONSTRAINT [FK_schools_school_type] FOREIGN KEY([school_type_id])
REFERENCES [dbo].[school_type] ([id])
GO
ALTER TABLE [dbo].[schools] CHECK CONSTRAINT [FK_schools_school_type]
GO
USE [master]
GO
ALTER DATABASE [task1] SET  READ_WRITE 
GO
