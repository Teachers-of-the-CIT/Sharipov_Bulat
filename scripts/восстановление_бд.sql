USE [Perfumer]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 05.11.2022 11:54:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IssuePoint]    Script Date: 05.11.2022 11:54:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssuePoint](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostalCode] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Street] [nvarchar](50) NOT NULL,
	[House] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 05.11.2022 11:54:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [date] NOT NULL,
	[DeliveryDate] [date] NOT NULL,
	[IssuePointId] [int] NULL,
	[ClientId] [int] NULL,
	[ReceiveCode] [nvarchar](50) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 05.11.2022 11:54:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ProductId] [int] NULL,
	[Count] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 05.11.2022 11:54:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[CategoryId] [int] NULL,
	[Discount] [float] NOT NULL,
	[StockCount] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Manufacturer] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Image] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 05.11.2022 11:54:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[Login] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name]) VALUES (1, N'Мужской парфюм')
INSERT [dbo].[Category] ([Id], [Name]) VALUES (2, N'Женский парфюм')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (6, N'А112Т4', 1, 5, 6, 660, N'Dragon', N'Одеколон', N'Одеколон Dragon Parfums Dragon Noir, 100 мл', NULL)
INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (7, N'F893T5', 2, 2, 14, 327, N'Paris Line', N'Туалетная вода', N'Туалетная вода Paris Line Parfums Cosa Nostra Platinum, 100 мл', NULL)
INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (8, N'G832G6', 2, 4, 7, 368, N'Paris Line', N'Туалетная вода', N'Туалетная вода Paris Line Parfums Vodka Extreme, 100 мл', NULL)
INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (9, N'E530Y6', 2, 3, 9, 519, N'Parfums Constantine', N'Парфюмерная вода', N'Парфюмерная вода Parfums Constantine Mademoiselle 5, 50 мл', NULL)
INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (10, N'F346G5', 2, 3, 18, 450, N'Today Parfum', N'Туалетная вода', N'Туалетная вода Today Parfum G-Club Egoist, 100 мл', NULL)
INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (11, N'J432E4', 2, 2, 4, 341, N'Paris Line', N'Туалетная вода', N'Туалетная вода Paris Line Parfums Dollar, 100 мл', NULL)
INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (12, N'D344Y7', 2, 5, 16, 223, N'Today Parfum', N'Парфюмерная вода', N'Парфюмерная вода Today Parfum Prestige №6 Eclat, 17 мл', NULL)
INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (13, N'V324R5', 2, 3, 5, 519, N'Parfums Constantine', N'Парфюмерная вода', N'Парфюмерная вода Parfums Constantine Mademoiselle 7, 50 мл', NULL)
INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (14, N'E245R5', 2, 5, 2, 1000, N'Dilis Parfum', N'Туалетная вода', N'Туалетная вода Dilis Parfum Mila, 100 мл', NULL)
INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (15, N'D378D3', 2, 3, 16, 1500, N'Dilis Parfum', N'Туалетная вода', N'Духи Dilis Parfum Classic Collection №18, 30 мл', NULL)
INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (16, N'C323R4', 2, 4, 8, 4100, N'TRUSSARDI', N'Парфюмерная вода', N'Парфюмерная вода TRUSSARDI Donna Trussardi (2011), 50 мл', NULL)
INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (17, N'H732R5', 1, 5, 7, 500, N'Paris Line', N'Туалетная вода', N'Туалетная вода Paris Line Parfums Cosa Nostra, 100 мл', NULL)
INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (18, N'R464G6', 2, 2, 11, 290, N'Dilis Parfum', N'Духи', N'Духи Dilis Parfum Ночная Фиалка, 9.5 мл', NULL)
INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (19, N'S346H6', 2, 4, 12, 1000, N'Dilis Parfum', N'Туалетная вода', N'Туалетная вода Dilis Parfum Steelman Zone, 100 мл', NULL)
INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (20, N'K535G6', 1, 2, 5, 1200, N'Yves de Sistelle', N'Парфюмерная вода', N'Парфюмерная вода Yves de Sistelle Incidence pour Femme, 65 мл', NULL)
INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (21, N'G532R5', 2, 3, 16, 640, N'Parfums Constantine', N'Парфюмерная вода', N'Парфюмерная вода Parfums Constantine New York Perfume Six, 50 мл', NULL)
INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (22, N'K742T5', 2, 4, 6, 900, N'Dilis Parfum', N'Туалетная вода', N'Туалетная вода Dilis Parfum Cool&Grey, 100 мл', NULL)
INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (23, N'R563E3', 2, 4, 9, 418, N'Today Parfum', N'Туалетная вода', N'Туалетная вода Today Parfum G-Club Millioner, 100 мл', NULL)
INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (24, N'E573G6', 1, 5, 13, 1087, N'Dilis Parfum', N'Духи', N'Духи Dilis Parfum Classic Collection №34, 30 мл', NULL)
INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (25, N'H647R5', 2, 4, 6, 555, N'Parfums Constantine', N'Туалетная вода', N'Туалетная вода Parfums Constantine Gentleman №3, 100 мл', NULL)
INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (26, N'F344S4', 2, 2, 9, 546, N'Today Parfum', N'Туалетная вода', N'Туалетная вода Today Parfum Cola Cherry, 50 мл', NULL)
INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (27, N'L533E4', 2, 4, 15, 3900, N'HUGO BOSS', N'Туалетная вода', N'Туалетная вода HUGO BOSS Boss Bottled, 50 мл', NULL)
INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (28, N'D526R4', 1, 3, 6, 3600, N'DOLCE & GABBANA', N'Парфюмерная вода', N'Парфюмерная вода DOLCE & GABBANA Dolce&Gabbana pour', NULL)
INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (29, N'S753T5', 2, 4, 3, 5200, N'DOLCE & GABBANA', N'Парфюмерная вода', N'Парфюмерная вода DOLCE & GABBANA Dolce Shine, 75 мл', NULL)
INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (30, N'D634D4', 1, 2, 14, 367, N'Paris Line', N'Туалетная вода', N'Туалетная вода Paris Line Parfums Dollar Diamond, 100 мл', NULL)
INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (31, N'V472S3', 1, 4, 7, 2640, N'LACOSTE', N'Парфюмерная вода', N'Парфюмерная вода LACOSTE Lacoste pour Femme, 30 мл', NULL)
INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (32, N'A436H7', 1, 4, 12, 1000, N'Dilis Parfum', N'Туалетная вода', N'Туалетная вода Dilis Parfum Aqua Cool, 100 мл', NULL)
INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (33, N'O875F6', 1, 2, 5, 600, N'Dilis Parfum', N'Парфюмерная вода', N'Dilis Parfum Мужской Walker Breeze', NULL)
INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (34, N'E479G6', 1, 5, 3, 6100, N'HUGO BOSS', N'Туалетная вода', N'Туалетная вода HUGO BOSS Boss Bottled, 100 мл', NULL)
INSERT [dbo].[Product] ([Id], [Code], [CategoryId], [Discount], [StockCount], [Price], [Manufacturer], [Name], [Description], [Image]) VALUES (35, N'V493E3', 1, 2, 8, 3200, N'DOLCE & GABBANA', N'Туалетная вода', N'Туалетная вода DOLCE & GABBANA 3 L''Imperatrice, 50 мл', NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Role], [FirstName], [LastName], [MiddleName], [Login], [Password]) VALUES (12, N'Администратор', N'Глеб', N'Федоров', N'Михайлович', N'o@outlook.com', N'2L6KZG')
INSERT [dbo].[Users] ([Id], [Role], [FirstName], [LastName], [MiddleName], [Login], [Password]) VALUES (13, N'Администратор', N'Софья', N'Семенова', N'Дмитриевна', N'hr6zdl@yandex.ru', N'uzWC67')
INSERT [dbo].[Users] ([Id], [Role], [FirstName], [LastName], [MiddleName], [Login], [Password]) VALUES (14, N'Администратор', N'Егор', N'Васильев', N'Германович', N'kaft93x@outlook.com', N'8ntwUp')
INSERT [dbo].[Users] ([Id], [Role], [FirstName], [LastName], [MiddleName], [Login], [Password]) VALUES (15, N'Менеджер', N'Ирина', N'Смирнова', N'Александровна', N'dcu@yandex.ru', N'YOyhfR')
INSERT [dbo].[Users] ([Id], [Role], [FirstName], [LastName], [MiddleName], [Login], [Password]) VALUES (16, N'Менеджер', N'Андрей', N'Петров', N'Владимирович', N'19dn@outlook.com', N'RSbvHv')
INSERT [dbo].[Users] ([Id], [Role], [FirstName], [LastName], [MiddleName], [Login], [Password]) VALUES (17, N'Менеджер', N'Максим', N'Егоров', N'Андреевич', N'pa5h@mail.ru', N'rwVDh9')
INSERT [dbo].[Users] ([Id], [Role], [FirstName], [LastName], [MiddleName], [Login], [Password]) VALUES (18, N'Клиент', N'Артур', N'Никитин', N'Алексеевич', N'281av0@gmail.com', N'LdNyos')
INSERT [dbo].[Users] ([Id], [Role], [FirstName], [LastName], [MiddleName], [Login], [Password]) VALUES (19, N'Клиент', N'Максим', N'Киселев', N'Сергеевич', N'8edmfh@outlook.com', N'gynQMT')
INSERT [dbo].[Users] ([Id], [Role], [FirstName], [LastName], [MiddleName], [Login], [Password]) VALUES (20, N'Клиент', N'Тимур', N'Борисов', N'Егорович', N'sfn13i@mail.ru', N'AtnDjr')
INSERT [dbo].[Users] ([Id], [Role], [FirstName], [LastName], [MiddleName], [Login], [Password]) VALUES (21, N'Клиент', N'Арсений', N'Климов', N'Тимурович', N'g0orc3x1@outlook.com', N'JlFRCZ')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT ('Новый') FOR [Status]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [StockCount]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([ClientId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([IssuePointId])
REFERENCES [dbo].[IssuePoint] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
