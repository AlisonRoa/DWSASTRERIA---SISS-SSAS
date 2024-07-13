USE [SastreriaDW]
GO
ALTER TABLE [dbo].[FactSalida] DROP CONSTRAINT [Ref_DimTiempo_1]
GO
ALTER TABLE [dbo].[FactSalida] DROP CONSTRAINT [Ref_DimMateriales]
GO
ALTER TABLE [dbo].[FactSalida] DROP CONSTRAINT [Ref_DimEmpleado]
GO
ALTER TABLE [dbo].[FactPedidos] DROP CONSTRAINT [RefDimTrabajo]
GO
ALTER TABLE [dbo].[FactPedidos] DROP CONSTRAINT [RefDimClientes]
GO
ALTER TABLE [dbo].[FactPedidos] DROP CONSTRAINT [Ref_DimTiempo_]
GO
ALTER TABLE [dbo].[FactPedidos] DROP CONSTRAINT [Ref_DimTiempo]
GO
ALTER TABLE [dbo].[FactEntrada] DROP CONSTRAINT [RefDimTiempo]
GO
ALTER TABLE [dbo].[FactEntrada] DROP CONSTRAINT [RefDimMateriales]
GO
ALTER TABLE [dbo].[FactEntrada] DROP CONSTRAINT [RefDimEmpleado]
GO
/****** Object:  Table [dbo].[FactSalida]    Script Date: 27/5/2024 13:58:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactSalida]') AND type in (N'U'))
DROP TABLE [dbo].[FactSalida]
GO
/****** Object:  Table [dbo].[FactPedidos]    Script Date: 27/5/2024 13:58:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactPedidos]') AND type in (N'U'))
DROP TABLE [dbo].[FactPedidos]
GO
/****** Object:  Table [dbo].[FactEntrada]    Script Date: 27/5/2024 13:58:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactEntrada]') AND type in (N'U'))
DROP TABLE [dbo].[FactEntrada]
GO
/****** Object:  Table [dbo].[DimTrabajo]    Script Date: 27/5/2024 13:58:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DimTrabajo]') AND type in (N'U'))
DROP TABLE [dbo].[DimTrabajo]
GO
/****** Object:  Table [dbo].[DimTiempo]    Script Date: 27/5/2024 13:58:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DimTiempo]') AND type in (N'U'))
DROP TABLE [dbo].[DimTiempo]
GO
/****** Object:  Table [dbo].[DimMateriales]    Script Date: 27/5/2024 13:58:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DimMateriales]') AND type in (N'U'))
DROP TABLE [dbo].[DimMateriales]
GO
/****** Object:  Table [dbo].[DimEmpleado]    Script Date: 27/5/2024 13:58:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DimEmpleado]') AND type in (N'U'))
DROP TABLE [dbo].[DimEmpleado]
GO
/****** Object:  Table [dbo].[DimClientes]    Script Date: 27/5/2024 13:58:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DimClientes]') AND type in (N'U'))
DROP TABLE [dbo].[DimClientes]
GO
/****** Object:  Table [dbo].[DimClientes]    Script Date: 27/5/2024 13:58:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimClientes](
	[IdDimcliente] [int] IDENTITY(1,1) NOT NULL,
	[idcliente] [int] NULL,
	[nombres] [nvarchar](30) NULL,
	[apellidos] [nvarchar](30) NULL,
 CONSTRAINT [PKDimClientes] PRIMARY KEY CLUSTERED 
(
	[IdDimcliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimEmpleado]    Script Date: 27/5/2024 13:58:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimEmpleado](
	[IdDimempleado] [int] IDENTITY(1,1) NOT NULL,
	[idempleado] [int] NULL,
	[nombres] [nvarchar](30) NULL,
	[apellidos] [nvarchar](30) NULL,
 CONSTRAINT [PKDimEmpleado] PRIMARY KEY CLUSTERED 
(
	[IdDimempleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimMateriales]    Script Date: 27/5/2024 13:58:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimMateriales](
	[IdDimmaterial] [int] IDENTITY(1,1) NOT NULL,
	[idmaterial] [int] NULL,
	[nommaterial] [nvarchar](50) NULL,
 CONSTRAINT [PKDimmateriales] PRIMARY KEY CLUSTERED 
(
	[IdDimmaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimTiempo]    Script Date: 27/5/2024 13:58:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimTiempo](
	[IdDimtiempo] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [datetime] NULL,
	[anio] [int] NULL,
	[mes_nombre] [varchar](15) NULL,
	[dia_nombre] [varchar](15) NULL,
	[dia_num] [int] NULL,
	[mes_num] [int] NULL,
	[trimestre] [int] NULL,
	[semestre] [int] NULL,
 CONSTRAINT [PKDimtiempo] PRIMARY KEY CLUSTERED 
(
	[IdDimtiempo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimTrabajo]    Script Date: 27/5/2024 13:58:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimTrabajo](
	[IdDimtrabajo] [int] IDENTITY(1,1) NOT NULL,
	[idtrabajo] [int] NULL,
	[descripcion] [nvarchar](100) NULL,
 CONSTRAINT [PKDimtrabajo] PRIMARY KEY CLUSTERED 
(
	[IdDimtrabajo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactEntrada]    Script Date: 27/5/2024 13:58:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactEntrada](
	[idFTentrada] [int] IDENTITY(1,1) NOT NULL,
	[IdDimempleado] [int] NOT NULL,
	[IdDimmaterial] [int] NOT NULL,
	[IdDimtiempo] [int] NOT NULL,
	[cantidad] [int] NULL,
	[total] [decimal](10, 0) NULL,
 CONSTRAINT [PKFTentrada] PRIMARY KEY CLUSTERED 
(
	[idFTentrada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactPedidos]    Script Date: 27/5/2024 13:58:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactPedidos](
	[IdFt_pedido] [char](10) NOT NULL,
	[idDimtiempoPedido] [int] NOT NULL,
	[IdDimtiempoentrega] [int] NOT NULL,
	[IdDimcliente] [int] NOT NULL,
	[IdDimtrabajo] [int] NOT NULL,
	[cantidad] [int] NULL,
	[precio] [decimal](10, 0) NULL,
 CONSTRAINT [PKFTpedidos] PRIMARY KEY CLUSTERED 
(
	[IdFt_pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactSalida]    Script Date: 27/5/2024 13:58:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactSalida](
	[IdFTsalida] [int] IDENTITY(1,1) NOT NULL,
	[IdDimmaterial] [int] NOT NULL,
	[IdDimempleado] [int] NOT NULL,
	[IdDimtiempo] [int] NOT NULL,
	[cantidad] [int] NULL,
	[total] [decimal](10, 0) NULL,
 CONSTRAINT [PKFTsalida] PRIMARY KEY CLUSTERED 
(
	[IdFTsalida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FactEntrada]  WITH CHECK ADD  CONSTRAINT [RefDimEmpleado] FOREIGN KEY([IdDimempleado])
REFERENCES [dbo].[DimEmpleado] ([IdDimempleado])
GO
ALTER TABLE [dbo].[FactEntrada] CHECK CONSTRAINT [RefDimEmpleado]
GO
ALTER TABLE [dbo].[FactEntrada]  WITH CHECK ADD  CONSTRAINT [RefDimMateriales] FOREIGN KEY([IdDimmaterial])
REFERENCES [dbo].[DimMateriales] ([IdDimmaterial])
GO
ALTER TABLE [dbo].[FactEntrada] CHECK CONSTRAINT [RefDimMateriales]
GO
ALTER TABLE [dbo].[FactEntrada]  WITH CHECK ADD  CONSTRAINT [RefDimTiempo] FOREIGN KEY([IdDimtiempo])
REFERENCES [dbo].[DimTiempo] ([IdDimtiempo])
GO
ALTER TABLE [dbo].[FactEntrada] CHECK CONSTRAINT [RefDimTiempo]
GO
ALTER TABLE [dbo].[FactPedidos]  WITH CHECK ADD  CONSTRAINT [Ref_DimTiempo] FOREIGN KEY([idDimtiempoPedido])
REFERENCES [dbo].[DimTiempo] ([IdDimtiempo])
GO
ALTER TABLE [dbo].[FactPedidos] CHECK CONSTRAINT [Ref_DimTiempo]
GO
ALTER TABLE [dbo].[FactPedidos]  WITH CHECK ADD  CONSTRAINT [Ref_DimTiempo_] FOREIGN KEY([IdDimtiempoentrega])
REFERENCES [dbo].[DimTiempo] ([IdDimtiempo])
GO
ALTER TABLE [dbo].[FactPedidos] CHECK CONSTRAINT [Ref_DimTiempo_]
GO
ALTER TABLE [dbo].[FactPedidos]  WITH CHECK ADD  CONSTRAINT [RefDimClientes] FOREIGN KEY([IdDimcliente])
REFERENCES [dbo].[DimClientes] ([IdDimcliente])
GO
ALTER TABLE [dbo].[FactPedidos] CHECK CONSTRAINT [RefDimClientes]
GO
ALTER TABLE [dbo].[FactPedidos]  WITH CHECK ADD  CONSTRAINT [RefDimTrabajo] FOREIGN KEY([IdDimtrabajo])
REFERENCES [dbo].[DimTrabajo] ([IdDimtrabajo])
GO
ALTER TABLE [dbo].[FactPedidos] CHECK CONSTRAINT [RefDimTrabajo]
GO
ALTER TABLE [dbo].[FactSalida]  WITH CHECK ADD  CONSTRAINT [Ref_DimEmpleado] FOREIGN KEY([IdDimempleado])
REFERENCES [dbo].[DimEmpleado] ([IdDimempleado])
GO
ALTER TABLE [dbo].[FactSalida] CHECK CONSTRAINT [Ref_DimEmpleado]
GO
ALTER TABLE [dbo].[FactSalida]  WITH CHECK ADD  CONSTRAINT [Ref_DimMateriales] FOREIGN KEY([IdDimmaterial])
REFERENCES [dbo].[DimMateriales] ([IdDimmaterial])
GO
ALTER TABLE [dbo].[FactSalida] CHECK CONSTRAINT [Ref_DimMateriales]
GO
ALTER TABLE [dbo].[FactSalida]  WITH CHECK ADD  CONSTRAINT [Ref_DimTiempo_1] FOREIGN KEY([IdDimtiempo])
REFERENCES [dbo].[DimTiempo] ([IdDimtiempo])
GO
ALTER TABLE [dbo].[FactSalida] CHECK CONSTRAINT [Ref_DimTiempo_1]
GO
