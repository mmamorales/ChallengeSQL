USE [challenge]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[divisiones](
	[Division id] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[Revenue] [int] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[divisiones] ([Division id], [Year], [Revenue]) VALUES (1, 2018, 60)
GO
INSERT [dbo].[divisiones] ([Division id], [Year], [Revenue]) VALUES (1, 2021, 40)
GO
INSERT [dbo].[divisiones] ([Division id], [Year], [Revenue]) VALUES (1, 2020, 70)
GO
INSERT [dbo].[divisiones] ([Division id], [Year], [Revenue]) VALUES (2, 2021, -10)
GO
INSERT [dbo].[divisiones] ([Division id], [Year], [Revenue]) VALUES (3, 2018, 20)
GO
INSERT [dbo].[divisiones] ([Division id], [Year], [Revenue]) VALUES (3, 2016, 40)
GO
INSERT [dbo].[divisiones] ([Division id], [Year], [Revenue]) VALUES (4, 2021, 50)
GO

/*query que resuelve el problema*/
select [Division id]
from divisiones
where Year = 2021
and Revenue >= 0

GO
DROP TABLE [dbo].[divisiones]