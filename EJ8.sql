USE [challenge]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pasaportes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Country] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[pasaportes] ON 
GO
INSERT [dbo].[pasaportes] ([id], [Name], [Country]) VALUES (1, N'Bob Smith', N'United States')
GO
INSERT [dbo].[pasaportes] ([id], [Name], [Country]) VALUES (2, N'Jim Jones', N'China')
GO
INSERT [dbo].[pasaportes] ([id], [Name], [Country]) VALUES (3, N'Sam White', N'Japan')
GO
INSERT [dbo].[pasaportes] ([id], [Name], [Country]) VALUES (4, N'Jess Black', N'Canada')
GO
INSERT [dbo].[pasaportes] ([id], [Name], [Country]) VALUES (5, N'Will Wilson', N'Germany')
GO
INSERT [dbo].[pasaportes] ([id], [Name], [Country]) VALUES (6, N'Wilson Scott', N'England')
GO
INSERT [dbo].[pasaportes] ([id], [Name], [Country]) VALUES (7, N'Scott Daniels', N'France')
GO
INSERT [dbo].[pasaportes] ([id], [Name], [Country]) VALUES (8, N'Daniel Jackson', N'Canada')
GO
INSERT [dbo].[pasaportes] ([id], [Name], [Country]) VALUES (9, N'Jack Johnson', N'United States')
GO
SET IDENTITY_INSERT [dbo].[pasaportes] OFF
GO

/*query que resuelve el problema*/
select Name
from pasaportes
where Country not in ('Canada','United States')

GO
DROP TABLE [dbo].[pasaportes]