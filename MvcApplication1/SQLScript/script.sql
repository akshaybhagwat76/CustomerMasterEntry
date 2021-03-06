USE [demo]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 06/04/2018 08:03:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[c_id] [int] IDENTITY(1,1) NOT NULL,
	[c_email] [varchar](50) NULL,
	[c_mobile] [varchar](50) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[c_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON
INSERT [dbo].[Customers] ([c_id], [c_email], [c_mobile]) VALUES (1, N'test@gmail.com', N'78943214654')
INSERT [dbo].[Customers] ([c_id], [c_email], [c_mobile]) VALUES (2, N'test1@gmail.com', N'7978456213')
INSERT [dbo].[Customers] ([c_id], [c_email], [c_mobile]) VALUES (3, N'test2@gmail.com', N'4988465')
INSERT [dbo].[Customers] ([c_id], [c_email], [c_mobile]) VALUES (4, N'test3@gmail.com', N'451248656')
INSERT [dbo].[Customers] ([c_id], [c_email], [c_mobile]) VALUES (5, N'Test4@gmail.com', N'48653164654')
SET IDENTITY_INSERT [dbo].[Customers] OFF
/****** Object:  Table [dbo].[payment]    Script Date: 06/04/2018 08:03:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment](
	[pmt_id] [int] IDENTITY(1,1) NOT NULL,
	[paymentamt] [float] NULL,
	[c_id] [int] NULL,
 CONSTRAINT [PK_payment] PRIMARY KEY CLUSTERED 
(
	[pmt_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[payment] ON
INSERT [dbo].[payment] ([pmt_id], [paymentamt], [c_id]) VALUES (1, 10000, 1)
INSERT [dbo].[payment] ([pmt_id], [paymentamt], [c_id]) VALUES (2, 25120, 1)
INSERT [dbo].[payment] ([pmt_id], [paymentamt], [c_id]) VALUES (3, 45654, 2)
INSERT [dbo].[payment] ([pmt_id], [paymentamt], [c_id]) VALUES (4, 84535, 2)
SET IDENTITY_INSERT [dbo].[payment] OFF
/****** Object:  Table [dbo].[Address]    Script Date: 06/04/2018 08:03:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Address](
	[add_id] [int] IDENTITY(1,1) NOT NULL,
	[address] [varchar](50) NULL,
	[c_id] [int] NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[add_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Address] ON
INSERT [dbo].[Address] ([add_id], [address], [c_id]) VALUES (1, N'london', 1)
INSERT [dbo].[Address] ([add_id], [address], [c_id]) VALUES (2, N'uk', 1)
INSERT [dbo].[Address] ([add_id], [address], [c_id]) VALUES (3, N'washington', 2)
INSERT [dbo].[Address] ([add_id], [address], [c_id]) VALUES (4, N'us', 2)
SET IDENTITY_INSERT [dbo].[Address] OFF
/****** Object:  ForeignKey [FK_Address_Customers]    Script Date: 06/04/2018 08:03:44 ******/
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Customers] FOREIGN KEY([c_id])
REFERENCES [dbo].[Customers] ([c_id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Customers]
GO
/****** Object:  ForeignKey [FK_payment_Customers]    Script Date: 06/04/2018 08:03:44 ******/
ALTER TABLE [dbo].[payment]  WITH CHECK ADD  CONSTRAINT [FK_payment_Customers] FOREIGN KEY([c_id])
REFERENCES [dbo].[Customers] ([c_id])
GO
ALTER TABLE [dbo].[payment] CHECK CONSTRAINT [FK_payment_Customers]
GO
