USE [challenge]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vendidos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Amount Sold] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[vendidos] ON 
GO
INSERT [dbo].[vendidos] ([id], [Name], [Amount Sold]) VALUES (1, N'Cup', 11)
GO
INSERT [dbo].[vendidos] ([id], [Name], [Amount Sold]) VALUES (2, N'Saucer', 22)
GO
INSERT [dbo].[vendidos] ([id], [Name], [Amount Sold]) VALUES (3, N'Plate', 46)
GO
INSERT [dbo].[vendidos] ([id], [Name], [Amount Sold]) VALUES (4, N'Fork', 34)
GO
INSERT [dbo].[vendidos] ([id], [Name], [Amount Sold]) VALUES (5, N'Spoon', 45)
GO
INSERT [dbo].[vendidos] ([id], [Name], [Amount Sold]) VALUES (6, N'Knife', 78)
GO
INSERT [dbo].[vendidos] ([id], [Name], [Amount Sold]) VALUES (7, N'Mug', 23)
GO
INSERT [dbo].[vendidos] ([id], [Name], [Amount Sold]) VALUES (8, N'Glass', 64)
GO
INSERT [dbo].[vendidos] ([id], [Name], [Amount Sold]) VALUES (9, N'Tumbler', 24)
GO
SET IDENTITY_INSERT [dbo].[vendidos] OFF
GO

/*query que resuelve el problema*/
select top 5 Name,[Amount Sold]
from vendidos
order by 2 desc

GO
DROP TABLE [dbo].[vendidos]