USE [challenge]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[paridad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Value] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[paridad] ON 
GO
INSERT [dbo].[paridad] ([id], [Value]) VALUES (1, 4)
GO
INSERT [dbo].[paridad] ([id], [Value]) VALUES (2, 11)
GO
INSERT [dbo].[paridad] ([id], [Value]) VALUES (3, 57)
GO
INSERT [dbo].[paridad] ([id], [Value]) VALUES (4, 24)
GO
INSERT [dbo].[paridad] ([id], [Value]) VALUES (5, 47)
GO
SET IDENTITY_INSERT [dbo].[paridad] OFF
GO

/*query que resuelve el problema*/
select id,iif(Value % 2 = 0, 'par','impar')
from paridad

GO
DROP TABLE [dbo].[paridad]