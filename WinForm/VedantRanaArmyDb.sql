USE [master]
GO
/****** Object:  Database [ArmyDB]    Script Date: 09-02-2024 19:32:51 ******/
CREATE DATABASE [ArmyDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ArmyDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ArmyDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ArmyDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ArmyDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ArmyDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ArmyDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ArmyDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ArmyDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ArmyDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ArmyDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ArmyDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ArmyDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ArmyDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ArmyDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ArmyDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ArmyDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ArmyDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ArmyDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ArmyDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ArmyDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ArmyDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ArmyDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ArmyDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ArmyDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ArmyDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ArmyDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ArmyDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ArmyDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ArmyDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ArmyDB] SET  MULTI_USER 
GO
ALTER DATABASE [ArmyDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ArmyDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ArmyDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ArmyDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ArmyDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ArmyDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ArmyDB] SET QUERY_STORE = OFF
GO
USE [ArmyDB]
GO
/****** Object:  Table [dbo].[ArmyOfficerRegistration]    Script Date: 09-02-2024 19:32:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArmyOfficerRegistration](
	[OfficerID] [int] IDENTITY(1001,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Phone] [varchar](15) NULL,
	[Email] [nvarchar](100) NULL,
	[Dob] [date] NULL,
	[Height] [int] NULL,
	[Weight] [int] NULL,
	[Gender] [nvarchar](7) NULL,
	[Languages] [nvarchar](50) NULL,
	[Nationality] [nvarchar](10) NULL,
	[Address] [nvarchar](255) NULL,
	[District] [nvarchar](30) NULL,
	[State] [nvarchar](30) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[OfficerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stateCity]    Script Date: 09-02-2024 19:32:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stateCity](
	[StateName] [varchar](50) NOT NULL,
	[CityName] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ArmyOfficerRegistration] ON 

INSERT [dbo].[ArmyOfficerRegistration] ([OfficerID], [Name], [Phone], [Email], [Dob], [Height], [Weight], [Gender], [Languages], [Nationality], [Address], [District], [State], [IsDeleted]) VALUES (1001, N'John Doe', N'555-0101', N'johndoe@example.com', CAST(N'1985-07-04' AS Date), 100, 75, N'others', N'English ', N'USA', N'123 Liberty St', N'Liberty State', N'Liberty State', 1)
INSERT [dbo].[ArmyOfficerRegistration] ([OfficerID], [Name], [Phone], [Email], [Dob], [Height], [Weight], [Gender], [Languages], [Nationality], [Address], [District], [State], [IsDeleted]) VALUES (1002, N'Jane Smith', N'555-0202', N'janesmith@example.com', CAST(N'1990-12-12' AS Date), 165, 65, N'Female', N'French, English', N'Canada', N'456 Unity Rd', N'Unity', N'Harmony State', 1)
INSERT [dbo].[ArmyOfficerRegistration] ([OfficerID], [Name], [Phone], [Email], [Dob], [Height], [Weight], [Gender], [Languages], [Nationality], [Address], [District], [State], [IsDeleted]) VALUES (1003, N'Alex Johnson', N'555-0303', N'alexjohnson@example.com', CAST(N'1988-03-15' AS Date), 175, 80, N'Other', N'Spanish', N'Mexico', N'789 Equality Blvd', N'Justice', N'Equality State', 1)
INSERT [dbo].[ArmyOfficerRegistration] ([OfficerID], [Name], [Phone], [Email], [Dob], [Height], [Weight], [Gender], [Languages], [Nationality], [Address], [District], [State], [IsDeleted]) VALUES (1007, N'vedant', N'', N'', CAST(N'2024-02-09' AS Date), 0, 0, N'others', N'English ', N'Indian', N'', N'', N'Gujarat', 1)
INSERT [dbo].[ArmyOfficerRegistration] ([OfficerID], [Name], [Phone], [Email], [Dob], [Height], [Weight], [Gender], [Languages], [Nationality], [Address], [District], [State], [IsDeleted]) VALUES (1008, N'Shrey', N'7878787878', N'shrey@gmail.com', CAST(N'2024-01-02' AS Date), 98, 84, N'male', N'Hindi English ', N'Indian', N'Panchvati', N'Gujarat', N'Gujarat', 0)
INSERT [dbo].[ArmyOfficerRegistration] ([OfficerID], [Name], [Phone], [Email], [Dob], [Height], [Weight], [Gender], [Languages], [Nationality], [Address], [District], [State], [IsDeleted]) VALUES (1009, N'Atul patel', N'1234567890', N'atul@gmail.com', CAST(N'2024-02-05' AS Date), 80, 70, N'male', N'Local ', N'Indian', N'Panchvati', N'Gujarat', N'Gujarat', 0)
INSERT [dbo].[ArmyOfficerRegistration] ([OfficerID], [Name], [Phone], [Email], [Dob], [Height], [Weight], [Gender], [Languages], [Nationality], [Address], [District], [State], [IsDeleted]) VALUES (1010, N'', N'', N'', CAST(N'2024-02-09' AS Date), 0, 0, N'others', N'', N'--select--', N'', N'Rajkot', N'Gujarat', 1)
INSERT [dbo].[ArmyOfficerRegistration] ([OfficerID], [Name], [Phone], [Email], [Dob], [Height], [Weight], [Gender], [Languages], [Nationality], [Address], [District], [State], [IsDeleted]) VALUES (1011, N'Vedant', N'7854678948', N'Vedant@gmail.com', CAST(N'2024-02-04' AS Date), 90, 60, N'male', N'Hindi English Local ', N'Value', N'Law Garden', N'CityName', N'StateName', 1)
INSERT [dbo].[ArmyOfficerRegistration] ([OfficerID], [Name], [Phone], [Email], [Dob], [Height], [Weight], [Gender], [Languages], [Nationality], [Address], [District], [State], [IsDeleted]) VALUES (1012, N'New ', N'648798468', N'new@gmail.com', CAST(N'2024-02-09' AS Date), 100, 20, N'male', N'Hindi English ', N'Value', N'', N'CityName', N'StateName', 1)
SET IDENTITY_INSERT [dbo].[ArmyOfficerRegistration] OFF
GO
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'--Select--', N'--Select--')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Gujarat', N'Ahmedabad')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Gujarat', N'Surat')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Gujarat', N'Vadodara')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Gujarat', N'Rajkot')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Gujarat', N'Bhavnagar')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Gujarat', N'Jamnagar')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Gujarat', N'Junagadh')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Gujarat', N'Anand')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Gujarat', N'Gandhinagar')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Gujarat', N'Nadiad')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Maharashtra', N'Mumbai')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Maharashtra', N'Pune')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Maharashtra', N'Nagpur')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Maharashtra', N'Nashik')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Maharashtra', N'Thane')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Maharashtra', N'Aurangabad')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Maharashtra', N'Solapur')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Maharashtra', N'Amravati')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Maharashtra', N'Navi Mumbai')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Maharashtra', N'Kolhapur')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Madhya Pradesh', N'Indore')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Madhya Pradesh', N'Bhopal')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Madhya Pradesh', N'Jabalpur')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Madhya Pradesh', N'Gwalior')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Madhya Pradesh', N'Ujjain')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Madhya Pradesh', N'Sagar')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Madhya Pradesh', N'Dewas')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Madhya Pradesh', N'Satna')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Madhya Pradesh', N'Ratlam')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Madhya Pradesh', N'Rewa')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Rajasthan', N'Jaipur')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Rajasthan', N'Jodhpur')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Rajasthan', N'Kota')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Rajasthan', N'Bikaner')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Rajasthan', N'Ajmer')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Rajasthan', N'Udaipur')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Rajasthan', N'Sikar')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Rajasthan', N'Alwar')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Rajasthan', N'Bharatpur')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Rajasthan', N'Pali')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Delhi', N'New Delhi')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Delhi', N'North Delhi')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Delhi', N'South Delhi')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Delhi', N'East Delhi')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Delhi', N'West Delhi')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Delhi', N'Central Delhi')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Delhi', N'North East Delhi')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Delhi', N'North West Delhi')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Delhi', N'South West Delhi')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Delhi', N'South East Delhi')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Punjab', N'Ludhiana')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Punjab', N'Amritsar')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Punjab', N'Jalandhar')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Punjab', N'Patiala')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Punjab', N'Bathinda')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Punjab', N'Hoshiarpur')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Punjab', N'Mohali')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Punjab', N'Pathankot')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Punjab', N'Moga')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Punjab', N'Sangrur')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Uttar Pradesh', N'Lucknow')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Uttar Pradesh', N'Kanpur')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Uttar Pradesh', N'Agra')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Uttar Pradesh', N'Varanasi')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Uttar Pradesh', N'Meerut')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Uttar Pradesh', N'Allahabad')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Uttar Pradesh', N'Bareilly')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Uttar Pradesh', N'Ghaziabad')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Uttar Pradesh', N'Aligarh')
INSERT [dbo].[stateCity] ([StateName], [CityName]) VALUES (N'Uttar Pradesh', N'Moradabad')
GO
ALTER TABLE [dbo].[ArmyOfficerRegistration] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
USE [master]
GO
ALTER DATABASE [ArmyDB] SET  READ_WRITE 
GO
