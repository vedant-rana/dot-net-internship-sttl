USE [master]
GO
/****** Object:  Database [OrdersDB]    Script Date: 29-02-2024 19:42:53 ******/
CREATE DATABASE [OrdersDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OrdersDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\OrdersDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OrdersDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\OrdersDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [OrdersDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OrdersDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OrdersDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OrdersDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OrdersDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OrdersDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OrdersDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [OrdersDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OrdersDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OrdersDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OrdersDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OrdersDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OrdersDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OrdersDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OrdersDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OrdersDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OrdersDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OrdersDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OrdersDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OrdersDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OrdersDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OrdersDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OrdersDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OrdersDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OrdersDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OrdersDB] SET  MULTI_USER 
GO
ALTER DATABASE [OrdersDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OrdersDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OrdersDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OrdersDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OrdersDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OrdersDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [OrdersDB] SET QUERY_STORE = OFF
GO
USE [OrdersDB]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 29-02-2024 19:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] IDENTITY(1001,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Address] [text] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItem]    Script Date: 29-02-2024 19:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItem](
	[OrderItemId] [int] IDENTITY(1001,1) NOT NULL,
	[OrderId] [int] NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [decimal](10, 2) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 29-02-2024 19:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1001,1) NOT NULL,
	[CustomerId] [int] NULL,
	[OrderDate] [date] NULL,
	[TotalAmount] [decimal](10, 2) NULL,
	[Status] [varchar](50) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 29-02-2024 19:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1001,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[Description] [text] NULL,
	[Price] [decimal](10, 2) NULL,
	[StockQuantity] [int] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerId], [Name], [Email], [Address], [IsDeleted]) VALUES (1001, N'John Doe', N'johndoe@example.com', N'Ahmedabad', 1)
INSERT [dbo].[Customer] ([CustomerId], [Name], [Email], [Address], [IsDeleted]) VALUES (1002, N'Jane Smith', N'janesmith@example.com', N'456 Oak Avenue, Somewhere', 1)
INSERT [dbo].[Customer] ([CustomerId], [Name], [Email], [Address], [IsDeleted]) VALUES (1003, N'Alice Johnson', N'alicej@example.com', N'789 Pine Road, Anywhere', 1)
INSERT [dbo].[Customer] ([CustomerId], [Name], [Email], [Address], [IsDeleted]) VALUES (1004, N'Bob Brown', N'bobbrown@example.com', N'101 Maple Lane, Everywhere', 0)
INSERT [dbo].[Customer] ([CustomerId], [Name], [Email], [Address], [IsDeleted]) VALUES (1005, N'Charlie Davis', N'charlied@example.com', N'202 Birch Street, Nowhere', 0)
INSERT [dbo].[Customer] ([CustomerId], [Name], [Email], [Address], [IsDeleted]) VALUES (1006, N'Shreyash', N'shrey@example.com', N'Ujjain', 0)
INSERT [dbo].[Customer] ([CustomerId], [Name], [Email], [Address], [IsDeleted]) VALUES (1007, N'Atul', N'Atul@example.com', N'123 Elm Street, Anytown', 0)
INSERT [dbo].[Customer] ([CustomerId], [Name], [Email], [Address], [IsDeleted]) VALUES (1008, N'Vedant', N'ved@example.com', N'GJ', 0)
INSERT [dbo].[Customer] ([CustomerId], [Name], [Email], [Address], [IsDeleted]) VALUES (1009, N'Hari bhai', N'hari@gmail.com', N'GMDC ground', 1)
INSERT [dbo].[Customer] ([CustomerId], [Name], [Email], [Address], [IsDeleted]) VALUES (1010, N'Vedant', N'vedant@gmail.com', N'Ahmedabad', 0)
INSERT [dbo].[Customer] ([CustomerId], [Name], [Email], [Address], [IsDeleted]) VALUES (1011, N'Shreyash', N'shrey@example.com', N'Ujjain MP', 0)
INSERT [dbo].[Customer] ([CustomerId], [Name], [Email], [Address], [IsDeleted]) VALUES (1012, N'Shreyash', N'shrey@example.com', N'Ujjain MP', 0)
INSERT [dbo].[Customer] ([CustomerId], [Name], [Email], [Address], [IsDeleted]) VALUES (1013, N'Vedant', N'ved@example.com', N'Ahmedabad', 0)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderItem] ON 

INSERT [dbo].[OrderItem] ([OrderItemId], [OrderId], [ProductId], [Quantity], [UnitPrice], [IsDeleted]) VALUES (1001, 1002, 1003, 1, CAST(1500.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[OrderItem] ([OrderItemId], [OrderId], [ProductId], [Quantity], [UnitPrice], [IsDeleted]) VALUES (1002, 1002, 1002, 2, CAST(800.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[OrderItem] ([OrderItemId], [OrderId], [ProductId], [Quantity], [UnitPrice], [IsDeleted]) VALUES (1003, 1003, 1003, 1, CAST(600.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[OrderItem] ([OrderItemId], [OrderId], [ProductId], [Quantity], [UnitPrice], [IsDeleted]) VALUES (1004, 1004, 1004, 1, CAST(150.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[OrderItem] ([OrderItemId], [OrderId], [ProductId], [Quantity], [UnitPrice], [IsDeleted]) VALUES (1005, 1005, 1005, 2, CAST(250.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[OrderItem] ([OrderItemId], [OrderId], [ProductId], [Quantity], [UnitPrice], [IsDeleted]) VALUES (1006, 1004, 1002, 2, CAST(1200.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[OrderItem] ([OrderItemId], [OrderId], [ProductId], [Quantity], [UnitPrice], [IsDeleted]) VALUES (1007, 1013, 1008, 2, CAST(50.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[OrderItem] ([OrderItemId], [OrderId], [ProductId], [Quantity], [UnitPrice], [IsDeleted]) VALUES (1008, 1012, 1007, 4, CAST(3596.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[OrderItem] ([OrderItemId], [OrderId], [ProductId], [Quantity], [UnitPrice], [IsDeleted]) VALUES (1009, 1013, 1007, 2, CAST(1798.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[OrderItem] ([OrderItemId], [OrderId], [ProductId], [Quantity], [UnitPrice], [IsDeleted]) VALUES (1010, 1016, 1006, 5, CAST(1000.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[OrderItem] ([OrderItemId], [OrderId], [ProductId], [Quantity], [UnitPrice], [IsDeleted]) VALUES (1011, 1017, 1007, 2, CAST(1798.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[OrderItem] ([OrderItemId], [OrderId], [ProductId], [Quantity], [UnitPrice], [IsDeleted]) VALUES (1012, 1017, 1008, 2, CAST(50.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[OrderItem] ([OrderItemId], [OrderId], [ProductId], [Quantity], [UnitPrice], [IsDeleted]) VALUES (1013, 1018, 1008, 2, CAST(50.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[OrderItem] ([OrderItemId], [OrderId], [ProductId], [Quantity], [UnitPrice], [IsDeleted]) VALUES (1014, 1003, 1003, 1, CAST(600.00 AS Decimal(10, 2)), 0)
INSERT [dbo].[OrderItem] ([OrderItemId], [OrderId], [ProductId], [Quantity], [UnitPrice], [IsDeleted]) VALUES (1015, 1003, 1003, 1, CAST(600.00 AS Decimal(10, 2)), 0)
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [TotalAmount], [Status], [IsDeleted]) VALUES (1001, 1001, CAST(N'2023-01-01' AS Date), CAST(2000.00 AS Decimal(10, 2)), N'Completed', 1)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [TotalAmount], [Status], [IsDeleted]) VALUES (1002, 1002, CAST(N'2023-01-02' AS Date), CAST(1600.00 AS Decimal(10, 2)), N'Delivered', 0)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [TotalAmount], [Status], [IsDeleted]) VALUES (1003, 1003, CAST(N'2023-01-03' AS Date), CAST(850.00 AS Decimal(10, 2)), N'Processing', 0)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [TotalAmount], [Status], [IsDeleted]) VALUES (1004, 1004, CAST(N'2023-01-04' AS Date), CAST(300.00 AS Decimal(10, 2)), N'Cancelled', 0)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [TotalAmount], [Status], [IsDeleted]) VALUES (1005, 1005, CAST(N'2023-01-05' AS Date), CAST(500.00 AS Decimal(10, 2)), N'Completed', 0)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [TotalAmount], [Status], [IsDeleted]) VALUES (1006, 1002, CAST(N'2024-02-28' AS Date), CAST(1600.00 AS Decimal(10, 2)), N'Shipped', 0)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [TotalAmount], [Status], [IsDeleted]) VALUES (1008, 1004, CAST(N'2024-02-29' AS Date), CAST(0.00 AS Decimal(10, 2)), N'Processing', 0)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [TotalAmount], [Status], [IsDeleted]) VALUES (1009, 1009, CAST(N'2024-02-29' AS Date), CAST(0.00 AS Decimal(10, 2)), N'Processing', 1)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [TotalAmount], [Status], [IsDeleted]) VALUES (1010, 1005, CAST(N'2024-02-29' AS Date), CAST(0.00 AS Decimal(10, 2)), N'Dispatched', 1)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [TotalAmount], [Status], [IsDeleted]) VALUES (1011, 1004, CAST(N'2024-02-29' AS Date), CAST(0.00 AS Decimal(10, 2)), N'Processing', 1)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [TotalAmount], [Status], [IsDeleted]) VALUES (1012, 1009, CAST(N'2024-02-29' AS Date), CAST(0.00 AS Decimal(10, 2)), N'Processing', 1)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [TotalAmount], [Status], [IsDeleted]) VALUES (1013, 1003, CAST(N'2024-02-29' AS Date), CAST(0.00 AS Decimal(10, 2)), N'Processing', 0)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [TotalAmount], [Status], [IsDeleted]) VALUES (1014, 1004, CAST(N'2024-02-29' AS Date), CAST(0.00 AS Decimal(10, 2)), N'Processing', 0)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [TotalAmount], [Status], [IsDeleted]) VALUES (1015, 1002, CAST(N'2024-02-29' AS Date), CAST(0.00 AS Decimal(10, 2)), N'Processing', 0)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [TotalAmount], [Status], [IsDeleted]) VALUES (1016, 1006, CAST(N'2024-02-29' AS Date), CAST(0.00 AS Decimal(10, 2)), N'Processing', 1)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [TotalAmount], [Status], [IsDeleted]) VALUES (1017, 1006, CAST(N'2024-02-29' AS Date), CAST(1848.00 AS Decimal(10, 2)), N'Processing', 0)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [TotalAmount], [Status], [IsDeleted]) VALUES (1018, 1010, CAST(N'2024-02-29' AS Date), CAST(50.00 AS Decimal(10, 2)), N'Processing', 0)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [TotalAmount], [Status], [IsDeleted]) VALUES (1019, 1002, CAST(N'2023-01-02' AS Date), CAST(1600.00 AS Decimal(10, 2)), N'Delivered', 0)
INSERT [dbo].[Orders] ([OrderId], [CustomerId], [OrderDate], [TotalAmount], [Status], [IsDeleted]) VALUES (1020, 1002, CAST(N'2023-01-02' AS Date), CAST(1600.00 AS Decimal(10, 2)), N'Delivered', 0)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [StockQuantity], [IsDeleted]) VALUES (1001, N'Laptop', N'High-performance laptop', CAST(1200.00 AS Decimal(10, 2)), 100, 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [StockQuantity], [IsDeleted]) VALUES (1002, N'Smartphone', N'Latest model smartphone', CAST(800.00 AS Decimal(10, 2)), 100, 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [StockQuantity], [IsDeleted]) VALUES (1003, N'Tablet', N'10-inch screen tablet', CAST(6000.00 AS Decimal(10, 2)), 75, 1)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [StockQuantity], [IsDeleted]) VALUES (1004, N'Headphones', N'Noise-cancelling headphones', CAST(150.00 AS Decimal(10, 2)), 150, 1)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [StockQuantity], [IsDeleted]) VALUES (1005, N'Smartwatch', N'Smartwatch with heart rate monitor', CAST(250.00 AS Decimal(10, 2)), 200, 1)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [StockQuantity], [IsDeleted]) VALUES (1006, N'T-Shirt', N'Over Sized T-Shirt', CAST(200.00 AS Decimal(10, 2)), 75, 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [StockQuantity], [IsDeleted]) VALUES (1007, N'IPhone 15', N'Product From Apple', CAST(899.00 AS Decimal(10, 2)), 30, 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [StockQuantity], [IsDeleted]) VALUES (1008, N'temp', N'Git-Hub Learning', CAST(25.00 AS Decimal(10, 2)), 3, 0)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [StockQuantity], [IsDeleted]) VALUES (1009, N'Laptop', N'High-performance laptop', CAST(1200.00 AS Decimal(10, 2)), 50, 1)
INSERT [dbo].[Product] ([ProductId], [Name], [Description], [Price], [StockQuantity], [IsDeleted]) VALUES (1010, N'Smart Phone', N'High-performance laptop', CAST(1200.00 AS Decimal(10, 2)), 50, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[OrderItem] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
USE [master]
GO
ALTER DATABASE [OrdersDB] SET  READ_WRITE 
GO
