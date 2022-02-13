USE [challenge]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[saludos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[saludos] ON 
GO
INSERT [dbo].[saludos] ([id], [Name]) VALUES (1, N'Bob')
GO
INSERT [dbo].[saludos] ([id], [Name]) VALUES (2, N'Sam')
GO
INSERT [dbo].[saludos] ([id], [Name]) VALUES (3, N'Jill')
GO
INSERT [dbo].[saludos] ([id], [Name]) VALUES (4, N'Jim')
GO
INSERT [dbo].[saludos] ([id], [Name]) VALUES (5, N'Sally')
GO
INSERT [dbo].[saludos] ([id], [Name]) VALUES (6, N'Jess')
GO
INSERT [dbo].[saludos] ([id], [Name]) VALUES (7, N'Will')
GO
SET IDENTITY_INSERT [dbo].[saludos] OFF
GO

/*query que resuelve el problema*/
select id,Name,'¡Hola '+Name+'! ¿Cómo estás hoy?' Saludo
from saludos

GO
DROP TABLE [dbo].[saludos]