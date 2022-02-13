USE [challenge]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[opuestos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[value] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[opuestos] ON 
GO
INSERT [dbo].[opuestos] ([id], [value]) VALUES (1, -56)
GO
INSERT [dbo].[opuestos] ([id], [value]) VALUES (2, 76)
GO
INSERT [dbo].[opuestos] ([id], [value]) VALUES (3, -84)
GO
INSERT [dbo].[opuestos] ([id], [value]) VALUES (4, 96)
GO
INSERT [dbo].[opuestos] ([id], [value]) VALUES (5, -47)
GO
SET IDENTITY_INSERT [dbo].[opuestos] OFF
GO

/*query que resuelve el problema*/
select id,value * -1 opuesto
from opuestos
/*se multiplican por -1 para cambiar el signo del numero*/

GO
DROP TABLE [dbo].[opuestos]
