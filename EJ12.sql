USE [challenge]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nombres nac](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idNac] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Age] [int] NOT NULL,
 CONSTRAINT [PK_nombres nac] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vencimientos](
	[id] [int] NOT NULL,
	[Fvto] [date] NOT NULL,
 CONSTRAINT [PK_vencimientos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[nombres nac] ON 
GO
INSERT [dbo].[nombres nac] ([id], [idNac], [Name], [Age]) VALUES (1, 1, N'Bob', 21)
GO
INSERT [dbo].[nombres nac] ([id], [idNac], [Name], [Age]) VALUES (2, 1, N'Sam', 19)
GO
INSERT [dbo].[nombres nac] ([id], [idNac], [Name], [Age]) VALUES (3, 2, N'Jill', 18)
GO
INSERT [dbo].[nombres nac] ([id], [idNac], [Name], [Age]) VALUES (4, 3, N'Jim', 21)
GO
INSERT [dbo].[nombres nac] ([id], [idNac], [Name], [Age]) VALUES (5, 4, N'Sally', 19)
GO
INSERT [dbo].[nombres nac] ([id], [idNac], [Name], [Age]) VALUES (6, 2, N'Jess', 20)
GO
INSERT [dbo].[nombres nac] ([id], [idNac], [Name], [Age]) VALUES (7, 3, N'Will', 21)
GO
SET IDENTITY_INSERT [dbo].[nombres nac] OFF
GO
INSERT [dbo].[vencimientos] ([id], [Fvto]) VALUES (1, CAST(N'2023-10-01' AS Date))
GO
INSERT [dbo].[vencimientos] ([id], [Fvto]) VALUES (2, CAST(N'2025-05-22' AS Date))
GO
INSERT [dbo].[vencimientos] ([id], [Fvto]) VALUES (5, CAST(N'2023-01-22' AS Date))
GO
INSERT [dbo].[vencimientos] ([id], [Fvto]) VALUES (6, CAST(N'2028-06-15' AS Date))
GO
ALTER TABLE [dbo].[nombres nac]  WITH CHECK ADD  CONSTRAINT [FK_nombres nac_decripcion nac] FOREIGN KEY([idNac])
REFERENCES [dbo].[descripcion nac] ([id])
GO
ALTER TABLE [dbo].[nombres nac] CHECK CONSTRAINT [FK_nombres nac_decripcion nac]
GO

/*query que resuelve el problema*/
select [nombres nac].id,[nombres nac].Name,[nombres nac].Age,vencimientos.Fvto
from [nombres nac]
left join vencimientos on [nombres nac].id=vencimientos.id

GO
DROP TABLE [dbo].[nombres nac]

GO
DROP TABLE [dbo].[vencimientos]