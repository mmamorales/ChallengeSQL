USE [challenge]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[edades](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Age] [smallint] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[edades] ON 
GO
INSERT [dbo].[edades] ([id], [Name], [Age]) VALUES (1, N'Bob', 21)
GO
INSERT [dbo].[edades] ([id], [Name], [Age]) VALUES (2, N'Sam', 19)
GO
INSERT [dbo].[edades] ([id], [Name], [Age]) VALUES (3, N'Jill', 18)
GO
INSERT [dbo].[edades] ([id], [Name], [Age]) VALUES (4, N'Jim', 21)
GO
INSERT [dbo].[edades] ([id], [Name], [Age]) VALUES (5, N'Sally', 19)
GO
INSERT [dbo].[edades] ([id], [Name], [Age]) VALUES (6, N'Jess', 20)
GO
INSERT [dbo].[edades] ([id], [Name], [Age]) VALUES (7, N'Will', 21)
GO
SET IDENTITY_INSERT [dbo].[edades] OFF
GO

/*query que resuelve el problema*/
select sum(Age) 'suma de edades'
from edades

GO
DROP TABLE [dbo].[edades]
