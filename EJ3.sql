USE [challenge]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[siglos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Year] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[siglos] ON 
GO
INSERT [dbo].[siglos] ([id], [Year]) VALUES (1, 1776)
GO
INSERT [dbo].[siglos] ([id], [Year]) VALUES (2, 2001)
GO
INSERT [dbo].[siglos] ([id], [Year]) VALUES (3, 1643)
GO
INSERT [dbo].[siglos] ([id], [Year]) VALUES (4, 1865)
GO
INSERT [dbo].[siglos] ([id], [Year]) VALUES (5, 1969)
GO
SET IDENTITY_INSERT [dbo].[siglos] OFF
GO

/*query que resuelve el problema*/
select id,Year,left(cast(Year as varchar),2)+1 siglo
from siglos
/*se convierte el año a varchar para poder cortar la cadena de texto y tomar los dos primeros caracteres con los que se calcula el siglo.
No funcion para años que no sean de 4 cifras*/
GO
DROP TABLE [dbo].[siglos]