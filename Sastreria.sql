USE [Sastreria]
GO
ALTER TABLE [dbo].[Pedidos] DROP CONSTRAINT [RefClientes]
GO
ALTER TABLE [dbo].[Pedidos] DROP CONSTRAINT [Ref_Empleado]
GO
ALTER TABLE [dbo].[Materiales] DROP CONSTRAINT [RefMarca]
GO
ALTER TABLE [dbo].[Materiales] DROP CONSTRAINT [RefColor]
GO
ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [RefCargo]
GO
ALTER TABLE [dbo].[DetalleSalida] DROP CONSTRAINT [RefSalida]
GO
ALTER TABLE [dbo].[DetalleSalida] DROP CONSTRAINT [Ref_Material]
GO
ALTER TABLE [dbo].[DetallePedidos] DROP CONSTRAINT [RefTrabajo]
GO
ALTER TABLE [dbo].[DetallePedidos] DROP CONSTRAINT [RefPedidos]
GO
ALTER TABLE [dbo].[DetalleEntrada] DROP CONSTRAINT [RefMaterial]
GO
ALTER TABLE [dbo].[DetalleEntrada] DROP CONSTRAINT [RefEntrada]
GO
/****** Object:  Table [dbo].[Trabajo]    Script Date: 27/5/2024 13:55:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Trabajo]') AND type in (N'U'))
DROP TABLE [dbo].[Trabajo]
GO
/****** Object:  Table [dbo].[Salida]    Script Date: 27/5/2024 13:55:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Salida]') AND type in (N'U'))
DROP TABLE [dbo].[Salida]
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 27/5/2024 13:55:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pedidos]') AND type in (N'U'))
DROP TABLE [dbo].[Pedidos]
GO
/****** Object:  Table [dbo].[Materiales]    Script Date: 27/5/2024 13:55:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Materiales]') AND type in (N'U'))
DROP TABLE [dbo].[Materiales]
GO
/****** Object:  Table [dbo].[Marca]    Script Date: 27/5/2024 13:55:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Marca]') AND type in (N'U'))
DROP TABLE [dbo].[Marca]
GO
/****** Object:  Table [dbo].[Entrada]    Script Date: 27/5/2024 13:55:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Entrada]') AND type in (N'U'))
DROP TABLE [dbo].[Entrada]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 27/5/2024 13:55:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleado]') AND type in (N'U'))
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[DetalleSalida]    Script Date: 27/5/2024 13:55:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DetalleSalida]') AND type in (N'U'))
DROP TABLE [dbo].[DetalleSalida]
GO
/****** Object:  Table [dbo].[DetallePedidos]    Script Date: 27/5/2024 13:55:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DetallePedidos]') AND type in (N'U'))
DROP TABLE [dbo].[DetallePedidos]
GO
/****** Object:  Table [dbo].[DetalleEntrada]    Script Date: 27/5/2024 13:55:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DetalleEntrada]') AND type in (N'U'))
DROP TABLE [dbo].[DetalleEntrada]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 27/5/2024 13:55:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Color]') AND type in (N'U'))
DROP TABLE [dbo].[Color]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 27/5/2024 13:55:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clientes]') AND type in (N'U'))
DROP TABLE [dbo].[Clientes]
GO
/****** Object:  Table [dbo].[Cargo]    Script Date: 27/5/2024 13:55:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cargo]') AND type in (N'U'))
DROP TABLE [dbo].[Cargo]
GO
/****** Object:  Table [dbo].[Cargo]    Script Date: 27/5/2024 13:55:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cargo](
	[idcargo] [int] IDENTITY(1,1) NOT NULL,
	[nomcargo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PKCargo] PRIMARY KEY CLUSTERED 
(
	[idcargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 27/5/2024 13:55:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[idcliente] [int] IDENTITY(1,1) NOT NULL,
	[inss] [int] NOT NULL,
	[nombres] [nvarchar](30) NOT NULL,
	[apellidos] [nvarchar](30) NOT NULL,
	[direccion] [nvarchar](30) NULL,
	[telefono] [nvarchar](30) NULL,
 CONSTRAINT [PKClientes] PRIMARY KEY CLUSTERED 
(
	[idcliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 27/5/2024 13:55:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[idcolor] [int] IDENTITY(1,1) NOT NULL,
	[nomcolor] [nvarchar](50) NOT NULL,
 CONSTRAINT [PKColor] PRIMARY KEY CLUSTERED 
(
	[idcolor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleEntrada]    Script Date: 27/5/2024 13:55:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleEntrada](
	[iddetalleentrada] [int] IDENTITY(1,1) NOT NULL,
	[identrada] [int] NOT NULL,
	[idmaterial] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [PKDetalleentrada] PRIMARY KEY CLUSTERED 
(
	[iddetalleentrada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetallePedidos]    Script Date: 27/5/2024 13:55:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetallePedidos](
	[iddetallepedido] [int] IDENTITY(1,1) NOT NULL,
	[idtrabajo] [int] NOT NULL,
	[idpedido] [int] NOT NULL,
	[precio] [decimal](10, 0) NULL,
 CONSTRAINT [PKDetallepedidos] PRIMARY KEY CLUSTERED 
(
	[iddetallepedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleSalida]    Script Date: 27/5/2024 13:55:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleSalida](
	[iddetallesalida] [int] IDENTITY(1,1) NOT NULL,
	[idsalida] [int] NOT NULL,
	[idmaterial] [int] NOT NULL,
	[cantidad] [int] NULL,
 CONSTRAINT [PKDetallesalida] PRIMARY KEY CLUSTERED 
(
	[iddetallesalida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 27/5/2024 13:55:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[Idempleado] [int] IDENTITY(1,1) NOT NULL,
	[nombres] [nvarchar](30) NULL,
	[apellidos] [nvarchar](30) NULL,
	[inss] [int] NOT NULL,
	[direccion] [nvarchar](30) NULL,
	[telefono] [nvarchar](30) NULL,
	[salario] [float] NOT NULL,
	[idcargo] [int] NOT NULL,
 CONSTRAINT [PKEmpleado] PRIMARY KEY CLUSTERED 
(
	[Idempleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Entrada]    Script Date: 27/5/2024 13:55:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entrada](
	[identrada] [int] IDENTITY(1,1) NOT NULL,
	[descripción] [nvarchar](50) NOT NULL,
	[fechaentrada] [date] NOT NULL,
	[total] [decimal](10, 0) NOT NULL,
 CONSTRAINT [PKEntrada] PRIMARY KEY CLUSTERED 
(
	[identrada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marca]    Script Date: 27/5/2024 13:55:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marca](
	[idmarca] [int] IDENTITY(1,1) NOT NULL,
	[nommarca] [nvarchar](50) NOT NULL,
 CONSTRAINT [PKMarca] PRIMARY KEY CLUSTERED 
(
	[idmarca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materiales]    Script Date: 27/5/2024 13:55:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materiales](
	[idmaterial] [int] IDENTITY(1,1) NOT NULL,
	[nommaterial] [nvarchar](50) NOT NULL,
	[idmarca] [int] NOT NULL,
	[idcolor] [int] NOT NULL,
 CONSTRAINT [PKMateriales] PRIMARY KEY CLUSTERED 
(
	[idmaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 27/5/2024 13:55:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[idpedido] [int] IDENTITY(1,1) NOT NULL,
	[descripción] [nvarchar](50) NOT NULL,
	[fechapedido] [date] NOT NULL,
	[fechaentrega] [date] NOT NULL,
	[idcliente] [int] NOT NULL,
	[idempleado] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [PKPedidos] PRIMARY KEY CLUSTERED 
(
	[idpedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salida]    Script Date: 27/5/2024 13:55:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salida](
	[idsalida] [int] IDENTITY(1,1) NOT NULL,
	[descripción] [nvarchar](50) NOT NULL,
	[fechasalida] [date] NOT NULL,
	[total] [decimal](10, 0) NOT NULL,
 CONSTRAINT [PKSalida] PRIMARY KEY CLUSTERED 
(
	[idsalida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trabajo]    Script Date: 27/5/2024 13:55:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trabajo](
	[idtrabajo] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [nvarchar](100) NOT NULL,
	[precio] [float] NOT NULL,
 CONSTRAINT [PKTrabajo] PRIMARY KEY CLUSTERED 
(
	[idtrabajo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cargo] ON 

INSERT [dbo].[Cargo] ([idcargo], [nomcargo]) VALUES (1, N'Cortador')
INSERT [dbo].[Cargo] ([idcargo], [nomcargo]) VALUES (2, N'Sastre')
INSERT [dbo].[Cargo] ([idcargo], [nomcargo]) VALUES (3, N'Medidas')
INSERT [dbo].[Cargo] ([idcargo], [nomcargo]) VALUES (4, N'Comprador de Telas')
INSERT [dbo].[Cargo] ([idcargo], [nomcargo]) VALUES (5, N'Cajero')
SET IDENTITY_INSERT [dbo].[Cargo] OFF
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (1, 528654944, N'Abel Antonio', N'Abad Urcuyo', N'Managua', N'8.46406e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (2, 562606180, N'Alba Iris', N'Abalos Borge', N'Managua', N'8.72779e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (3, 774213300, N'Alba Maria', N'Abarca Albarado', N'Managua', N'8.41577e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (4, 397749559, N'Ana Maria', N'Abad Valle', N'Managua', N'8.39434e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (5, 536820211, N'Ana Cecilia', N'Abarca Aguilar', N'Managua', N'8.02744e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (6, 368225867, N'Araceli Yaneth', N'Abarca Aguilar', N'Managua', N'7.31431e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (7, 358420446, N'Aurora De Jesus', N'Abarca Aguilar', N'Managua', N'7.54364e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (8, 595587269, N'Benito Alexander', N'Abarca Acuða', N'Managua', N'7.25387e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (9, 532045817, N'Braulio Jose', N'Abarca Aguilar', N'Managua', N'8.29303e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (10, 776197215, N'Brenda Maria', N'Abad Valle', N'Managua', N'8.16805e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (11, 310947645, N'Candida Rosa', N'Abarca Abarca', N'Managua', N'7.24155e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (12, 681128010, N'Candida Rosa', N'Abarca Alvarado', N'Managua', N'7.43291e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (13, 360912225, N'Carlota Del Carmen', N'Abad Rivera', N'Managua', N'7.74728e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (14, 773258117, N'Carolina Del Rosario', N'Abad Sequeira', N'Managua', N'8.56593e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (15, 423324726, N'Carlos Alberto', N'Abarca Aguilar', N'Managua', N'8.13007e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (16, 134455192, N'Cecilia Maria', N'Abarca Aguilar', N'Managua', N'8.81222e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (17, 439509976, N'Cesar Augusto', N'Abarca Aguilar', N'Managua', N'7.51594e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (18, 355385567, N'Dania Yanery', N'Abad Molina', N'Managua', N'8.05506e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (19, 307492339, N'Danfer Jose', N'Abad Martinez', N'Managua', N'7.01386e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (20, 502527909, N'Edwin Uriel', N'Abad Lopez', N'Managua', N'8.49034e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (21, 405787541, N'Edwing Edrel', N'Abad Solis', N'Managua', N'7.76377e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (22, 693461735, N'Edwin Rafael', N'Abarca Aguilar', N'Managua', N'7.60825e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (23, 251930564, N'Eliezer David', N'Abad Molina', N'Managua', N'7.41e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (24, 256448133, N'Erica De Los Angeles', N'Abadalah Largaespada', N'Managua', N'8.36085e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (25, 722719998, N'Erick Antonio', N'Abarca Abarca', N'Managua', N'8.12056e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (26, 778459783, N'Erwin Dario', N'Abarca Alvarado', N'Managua', N'8.61644e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (27, 734685645, N'Flor De Maria', N'Abad Urroz', N'Managua', N'8.84353e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (28, 583460233, N'Flor Dely', N'Abarca Aguilar', N'Managua', N'8.07811e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (29, 450638159, N'Francisca Esmeralda', N'Abad Duron', N'Managua', N'7.44579e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (30, 110055949, N'Francisco Javier', N'Abad Palacios', N'Managua', N'8.65509e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (31, 241277152, N'Freddy Alberto', N'Abad Duron', N'Managua', N'7.0434e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (32, 297800374, N'Freddie Jose', N'Abarca Aguilar', N'Managua', N'7.82574e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (33, 285762883, N'Grethel Nedeska', N'Abad Prado', N'Managua', N'7.11559e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (34, 382273361, N'Jonathan Amhed', N'Abad Potosme', N'Managua', N'7.90657e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (35, 768295765, N'Jorge Reynaldo', N'Abad Duran', N'Managua', N'8.04916e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (36, 561849090, N'Jorge Luis', N'Abad Flores', N'Managua', N'8.1339e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (37, 737029891, N'Jorge Isaac', N'Abad Herrera', N'Managua', N'7.42166e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (38, 308141157, N'Jorge Alberto', N'Abarca Abarca', N'Managua', N'7.12826e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (39, 610807372, N'Jose Gregorio', N'Abad Duran', N'Managua', N'7.0884e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (40, 536189767, N'Jose Alberto', N'Abad Palavicini', N'Managua', N'7.06467e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (41, 653280222, N'Jose De La Luz', N'Abarca Abarca', N'Managua', N'8.60503e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (42, 493101113, N'Jose Amilcar', N'Abarca Aguilar', N'Managua', N'8.75122e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (43, 191653422, N'Jose Antonio', N'Abarca Aguilar', N'Managua', N'7.63804e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (44, 767400622, N'Jose Maria', N'Abarca Aguilar', N'Managua', N'8.14226e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (45, 651657531, N'Juan Carlos', N'Abad Hernandez', N'Managua', N'8.60995e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (46, 348867059, N'Juan Francisco', N'Abad Palavicini', N'Managua', N'8.70322e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (47, 761794751, N'Julia Del Carmen', N'Abad Ponce', N'Managua', N'7.17796e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (48, 234607365, N'Julio Cesar', N'Abad Meza', N'Managua', N'7.82574e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (49, 358495970, N'Julio Cesar', N'Abalos Mayrena', N'Managua', N'7.41211e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (50, 479172849, N'Julio Cesar', N'Abarca Alvarado', N'Managua', N'8.60254e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (51, 329474012, N'Kilmar Daniel', N'Abad Garcia', N'Managua', N'8.0789e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (52, 101343863, N'Leonardo Jose', N'Abarca Acuða', N'Managua', N'8.37795e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (53, 428393792, N'Lilliam Mercedes', N'Abarca Aguilar', N'Managua', N'7.81119e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (54, 625568985, N'Linda Maria', N'Abad Sequeira', N'Managua', N'7.69829e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (55, 318330069, N'Lizbeth Alexandra', N'Abalos Rodriguez', N'Managua', N'7.98489e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (56, 505635846, N'Magaly Patricia', N'Abarca Abarca', N'Managua', N'8.79088e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (57, 788971139, N'Manuel Adan', N'Abarca Aguirre', N'Managua', N'8.45938e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (58, 197542594, N'Maria Giovanna', N'Abad Angulo', N'Managua', N'7.82067e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (59, 115544259, N'Maria Leonarda', N'Abad Duron', N'Managua', N'8.5973e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (60, 638779117, N'Maria Auxiliadora', N'Abad Larios', N'Managua', N'7.95118e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (61, 331058672, N'Maria De La Cruz', N'Abad Pallavicini', N'Managua', N'7.11769e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (62, 420891604, N'Maria Alejandra', N'Abad Valle', N'Managua', N'7.68358e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (63, 542039909, N'Maria Del Carmen', N'Abad Valle', N'Managua', N'7.04794e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (64, 492966367, N'Maria Del Socorro', N'Abarca Abarca', N'Managua', N'8.49894e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (65, 700108586, N'Maria Consepcion', N'Abarca Aguilar', N'Managua', N'7.5013e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (66, 264956788, N'Maria De Lourdes', N'Abarca Aguilar', N'Managua', N'8.51969e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (67, 278340526, N'Maria Luisa', N'Abarca Aguilar', N'Managua', N'7.90724e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (68, 605842646, N'Marisol Guadalupe', N'Abarca Aguirre', N'Managua', N'8.69868e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (69, 541806242, N'Mario Augusto', N'Abad Rivera', N'Managua', N'7.56217e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (70, 349184581, N'Marvin Miguel', N'Abad Sequeira', N'Managua', N'8.82647e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (71, 710847909, N'Marlon Eduardo', N'Abad Urcuyo', N'Managua', N'7.91237e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (72, 289057484, N'Marvin Ismael', N'Abad Valle', N'Managua', N'7.42702e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (73, 395954752, N'Marvin Raul', N'Abarca Aguilar', N'Managua', N'7.8253e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (74, 216967526, N'Mayra Azucena', N'Abad Palavicini', N'Managua', N'7.30347e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (75, 291373420, N'Mayra Del Socorro', N'Abarca Aguilar', N'Managua', N'7.18269e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (76, 619108680, N'Mercedes Yanisseth', N'Abad Larios', N'Managua', N'7.04539e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (77, 141894579, N'Michael Antonio', N'Abarca Aguilera', N'Managua', N'7.17837e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (78, 462354408, N'Miguel Heriberto', N'Abad Potosme', N'Managua', N'7.15637e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (79, 322153600, N'Mildred Yaoska', N'Abad Prado', N'Managua', N'7.38275e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (80, 344975722, N'Neysi Del Socorro', N'Abarca Aguilar', N'Managua', N'7.95162e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (81, 140357695, N'Odili Del Carmen', N'Abalo Gutierrez', N'Managua', N'8.8787e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (82, 692014330, N'Rosa Emilia', N'Abarca Aguilar', N'Managua', N'7.07052e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (83, 164987377, N'Sandra Marina', N'Abad Palavicini', N'Managua', N'7.68467e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (84, 252403865, N'Scarleth Maria', N'Abad Robelo', N'Managua', N'8.75359e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (85, 671496386, N'Sheyla Damaris', N'Abarca Aguirre', N'Managua', N'8.52419e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (86, 201123241, N'Sixto Pastor', N'Abarca Aguilar', N'Managua', N'8.69454e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (87, 534023889, N'Socorro De La Cruz', N'Abad Duron', N'Managua', N'8.28238e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (88, 781458833, N'Tomasa Ricarda', N'Abad Palavicini', N'Managua', N'8.30706e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (89, 638877011, N'Vicente Antonio', N'Abarca Aguilar', N'Managua', N'8.35409e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (90, 658002273, N'Xiomara Del Socorro', N'Abarca Aguilar', N'Managua', N'7.21678e+007')
INSERT [dbo].[Clientes] ([idcliente], [inss], [nombres], [apellidos], [direccion], [telefono]) VALUES (91, 113682822, N'Yeni Lissette', N'Abad Molina', N'Managua', N'7.62021e+007')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([idcolor], [nomcolor]) VALUES (1, N'Azul')
INSERT [dbo].[Color] ([idcolor], [nomcolor]) VALUES (2, N'Rojo')
INSERT [dbo].[Color] ([idcolor], [nomcolor]) VALUES (3, N'Verde')
INSERT [dbo].[Color] ([idcolor], [nomcolor]) VALUES (4, N'Amarillo')
INSERT [dbo].[Color] ([idcolor], [nomcolor]) VALUES (5, N'Plomo')
INSERT [dbo].[Color] ([idcolor], [nomcolor]) VALUES (6, N'Negro')
INSERT [dbo].[Color] ([idcolor], [nomcolor]) VALUES (7, N'Neutro')
SET IDENTITY_INSERT [dbo].[Color] OFF
GO
SET IDENTITY_INSERT [dbo].[DetalleEntrada] ON 

INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (1, 8, 14, 48)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (2, 2, 5, 11)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (3, 1, 17, 27)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (4, 17, 1, 30)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (5, 13, 16, 12)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (6, 29, 20, 34)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (7, 23, 19, 15)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (8, 12, 17, 7)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (9, 26, 17, 39)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (10, 3, 20, 33)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (11, 18, 17, 28)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (12, 6, 4, 43)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (13, 22, 7, 38)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (14, 20, 7, 7)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (15, 26, 12, 26)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (16, 2, 4, 40)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (17, 9, 1, 4)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (18, 6, 15, 27)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (19, 15, 17, 17)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (20, 9, 5, 23)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (21, 18, 5, 49)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (22, 31, 20, 17)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (23, 4, 16, 49)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (24, 3, 14, 49)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (25, 1, 12, 41)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (26, 13, 16, 28)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (27, 27, 3, 21)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (28, 23, 7, 1)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (29, 16, 9, 10)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (30, 27, 18, 36)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (31, 11, 8, 10)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (32, 18, 5, 31)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (33, 4, 14, 41)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (34, 10, 13, 22)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (35, 27, 10, 7)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (36, 7, 5, 13)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (37, 24, 20, 47)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (38, 31, 11, 38)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (39, 15, 16, 39)
INSERT [dbo].[DetalleEntrada] ([iddetalleentrada], [identrada], [idmaterial], [cantidad]) VALUES (40, 2, 15, 25)
SET IDENTITY_INSERT [dbo].[DetalleEntrada] OFF
GO
SET IDENTITY_INSERT [dbo].[DetallePedidos] ON 

INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (1, 18, 20, CAST(38 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (2, 2, 10, CAST(16 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (3, 6, 15, CAST(27 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (4, 30, 31, CAST(26 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (5, 31, 10, CAST(18 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (6, 18, 33, CAST(38 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (7, 14, 25, CAST(43 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (8, 19, 22, CAST(43 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (9, 30, 21, CAST(23 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (10, 33, 25, CAST(41 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (11, 22, 5, CAST(9 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (12, 21, 17, CAST(16 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (13, 9, 10, CAST(43 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (14, 6, 27, CAST(39 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (15, 13, 31, CAST(29 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (16, 22, 5, CAST(11 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (17, 22, 10, CAST(41 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (18, 33, 11, CAST(22 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (19, 18, 23, CAST(41 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (20, 28, 27, CAST(47 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (21, 18, 8, CAST(8 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (22, 31, 30, CAST(37 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (23, 2, 31, CAST(17 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (24, 27, 13, CAST(34 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (25, 28, 10, CAST(17 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (26, 4, 9, CAST(49 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (27, 21, 24, CAST(21 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (28, 17, 24, CAST(31 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (29, 29, 19, CAST(30 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (30, 5, 22, CAST(32 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (31, 4, 27, CAST(24 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (32, 27, 18, CAST(3 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (33, 37, 7, CAST(41 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (34, 6, 18, CAST(46 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (35, 21, 27, CAST(49 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (36, 5, 2, CAST(46 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (37, 24, 23, CAST(4 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (38, 28, 29, CAST(31 AS Decimal(10, 0)))
INSERT [dbo].[DetallePedidos] ([iddetallepedido], [idtrabajo], [idpedido], [precio]) VALUES (39, 32, 32, CAST(5 AS Decimal(10, 0)))
SET IDENTITY_INSERT [dbo].[DetallePedidos] OFF
GO
SET IDENTITY_INSERT [dbo].[DetalleSalida] ON 

INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (1, 2, 2, 28)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (2, 3, 1, 1)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (3, 19, 8, 42)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (4, 4, 9, 42)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (5, 30, 7, 1)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (6, 5, 8, 36)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (7, 3, 11, 11)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (8, 29, 5, 42)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (9, 31, 14, 21)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (10, 18, 14, 27)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (11, 27, 13, 32)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (12, 14, 1, 29)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (13, 13, 4, 1)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (14, 5, 12, 4)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (15, 32, 1, 39)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (16, 18, 3, 2)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (17, 8, 20, 13)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (18, 1, 20, 5)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (19, 3, 1, 30)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (20, 19, 19, 45)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (21, 20, 12, 43)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (22, 3, 4, 48)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (23, 3, 2, 43)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (24, 27, 13, 33)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (25, 4, 15, 15)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (26, 25, 4, 30)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (27, 7, 8, 38)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (28, 7, 1, 4)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (29, 20, 6, 39)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (30, 10, 5, 34)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (31, 23, 9, 25)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (32, 16, 11, 14)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (33, 6, 7, 32)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (34, 22, 13, 4)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (35, 20, 2, 11)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (36, 22, 10, 19)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (37, 31, 7, 8)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (38, 16, 2, 48)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (39, 17, 12, 12)
INSERT [dbo].[DetalleSalida] ([iddetallesalida], [idsalida], [idmaterial], [cantidad]) VALUES (40, 21, 16, 14)
SET IDENTITY_INSERT [dbo].[DetalleSalida] OFF
GO
SET IDENTITY_INSERT [dbo].[Empleado] ON 

INSERT [dbo].[Empleado] ([Idempleado], [nombres], [apellidos], [inss], [direccion], [telefono], [salario], [idcargo]) VALUES (1, N'Abel Antonio', N'Abad Urcuyo', 224707438, N'Managua', N'7.81173e+007', 23521, 2)
INSERT [dbo].[Empleado] ([Idempleado], [nombres], [apellidos], [inss], [direccion], [telefono], [salario], [idcargo]) VALUES (2, N'Alba Iris', N'Abalos Borge', 578146336, N'Managua', N'8.3878e+007', 8795, 1)
INSERT [dbo].[Empleado] ([Idempleado], [nombres], [apellidos], [inss], [direccion], [telefono], [salario], [idcargo]) VALUES (3, N'Alba Maria', N'Abarca Albarado', 415651726, N'Managua', N'7.76405e+007', 11733, 3)
INSERT [dbo].[Empleado] ([Idempleado], [nombres], [apellidos], [inss], [direccion], [telefono], [salario], [idcargo]) VALUES (4, N'Ana Maria', N'Abad Valle', 598860352, N'Managua', N'7.7303e+007', 12923, 2)
INSERT [dbo].[Empleado] ([Idempleado], [nombres], [apellidos], [inss], [direccion], [telefono], [salario], [idcargo]) VALUES (5, N'Ana Cecilia', N'Abarca Aguilar', 160948881, N'Managua', N'7.44577e+007', 22110, 5)
INSERT [dbo].[Empleado] ([Idempleado], [nombres], [apellidos], [inss], [direccion], [telefono], [salario], [idcargo]) VALUES (6, N'Araceli Yaneth', N'Abarca Aguilar', 406201774, N'Managua', N'8.06572e+007', 20667, 3)
INSERT [dbo].[Empleado] ([Idempleado], [nombres], [apellidos], [inss], [direccion], [telefono], [salario], [idcargo]) VALUES (7, N'Aurora De Jesus', N'Abarca Aguilar', 210625436, N'Managua', N'7.55558e+007', 21751, 4)
INSERT [dbo].[Empleado] ([Idempleado], [nombres], [apellidos], [inss], [direccion], [telefono], [salario], [idcargo]) VALUES (8, N'Benito Alexander', N'Abarca Acuða', 728598260, N'Managua', N'8.26085e+007', 12108, 3)
INSERT [dbo].[Empleado] ([Idempleado], [nombres], [apellidos], [inss], [direccion], [telefono], [salario], [idcargo]) VALUES (9, N'Braulio Jose', N'Abarca Aguilar', 587686537, N'Managua', N'7.03573e+007', 12232, 3)
INSERT [dbo].[Empleado] ([Idempleado], [nombres], [apellidos], [inss], [direccion], [telefono], [salario], [idcargo]) VALUES (10, N'Brenda Maria', N'Abad Valle', 106476698, N'Managua', N'7.71305e+007', 9566, 4)
INSERT [dbo].[Empleado] ([Idempleado], [nombres], [apellidos], [inss], [direccion], [telefono], [salario], [idcargo]) VALUES (11, N'Candida Rosa', N'Abarca Abarca', 110232055, N'Managua', N'8.3952e+007', 11235, 2)
INSERT [dbo].[Empleado] ([Idempleado], [nombres], [apellidos], [inss], [direccion], [telefono], [salario], [idcargo]) VALUES (12, N'Candida Rosa', N'Abarca Alvarado', 399372299, N'Managua', N'8.33024e+007', 20623, 5)
INSERT [dbo].[Empleado] ([Idempleado], [nombres], [apellidos], [inss], [direccion], [telefono], [salario], [idcargo]) VALUES (13, N'Carlota Del Carmen', N'Abad Rivera', 763982257, N'Managua', N'7.14502e+007', 24827, 5)
INSERT [dbo].[Empleado] ([Idempleado], [nombres], [apellidos], [inss], [direccion], [telefono], [salario], [idcargo]) VALUES (14, N'Carolina Del Rosario', N'Abad Sequeira', 339041194, N'Managua', N'8.04554e+007', 23536, 2)
INSERT [dbo].[Empleado] ([Idempleado], [nombres], [apellidos], [inss], [direccion], [telefono], [salario], [idcargo]) VALUES (15, N'Carlos Alberto', N'Abarca Aguilar', 569061948, N'Managua', N'8.75728e+007', 21523, 4)
INSERT [dbo].[Empleado] ([Idempleado], [nombres], [apellidos], [inss], [direccion], [telefono], [salario], [idcargo]) VALUES (16, N'Cecilia Maria', N'Abarca Aguilar', 165535173, N'Managua', N'7.90957e+007', 15002, 2)
INSERT [dbo].[Empleado] ([Idempleado], [nombres], [apellidos], [inss], [direccion], [telefono], [salario], [idcargo]) VALUES (17, N'Cesar Augusto', N'Abarca Aguilar', 752623083, N'Managua', N'7.59024e+007', 17198, 4)
INSERT [dbo].[Empleado] ([Idempleado], [nombres], [apellidos], [inss], [direccion], [telefono], [salario], [idcargo]) VALUES (18, N'Dania Yanery', N'Abad Molina', 226621993, N'Managua', N'7.9604e+007', 8400, 2)
INSERT [dbo].[Empleado] ([Idempleado], [nombres], [apellidos], [inss], [direccion], [telefono], [salario], [idcargo]) VALUES (19, N'Danfer Jose', N'Abad Martinez', 167106327, N'Managua', N'8.00265e+007', 15853, 4)
INSERT [dbo].[Empleado] ([Idempleado], [nombres], [apellidos], [inss], [direccion], [telefono], [salario], [idcargo]) VALUES (20, N'Edwin Uriel', N'Abad Lopez', 612973248, N'Managua', N'8.02614e+007', 7521, 5)
SET IDENTITY_INSERT [dbo].[Empleado] OFF
GO
SET IDENTITY_INSERT [dbo].[Entrada] ON 

INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (1, N'entrada #1', CAST(N'2016-10-20' AS Date), CAST(90 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (2, N'entrada #2', CAST(N'2016-10-22' AS Date), CAST(90 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (3, N'entrada #3', CAST(N'2016-10-24' AS Date), CAST(88 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (4, N'entrada #4', CAST(N'2016-10-26' AS Date), CAST(55 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (5, N'entrada #5', CAST(N'2016-10-28' AS Date), CAST(92 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (6, N'entrada #6', CAST(N'2016-10-30' AS Date), CAST(73 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (7, N'entrada #7', CAST(N'2016-11-01' AS Date), CAST(99 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (8, N'entrada #8', CAST(N'2016-11-03' AS Date), CAST(84 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (9, N'entrada #9', CAST(N'2016-11-05' AS Date), CAST(66 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (10, N'entrada #10', CAST(N'2016-11-07' AS Date), CAST(53 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (11, N'entrada #11', CAST(N'2016-11-09' AS Date), CAST(50 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (12, N'entrada #12', CAST(N'2016-11-11' AS Date), CAST(74 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (13, N'entrada #13', CAST(N'2016-11-13' AS Date), CAST(83 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (14, N'entrada #14', CAST(N'2016-11-15' AS Date), CAST(65 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (15, N'entrada #15', CAST(N'2016-11-17' AS Date), CAST(80 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (16, N'entrada #16', CAST(N'2016-11-19' AS Date), CAST(66 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (17, N'entrada #17', CAST(N'2016-11-21' AS Date), CAST(97 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (18, N'entrada #18', CAST(N'2016-11-23' AS Date), CAST(99 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (19, N'entrada #19', CAST(N'2016-11-25' AS Date), CAST(76 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (20, N'entrada #20', CAST(N'2016-11-27' AS Date), CAST(51 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (21, N'entrada #21', CAST(N'2016-11-29' AS Date), CAST(52 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (22, N'entrada #22', CAST(N'2016-12-01' AS Date), CAST(89 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (23, N'entrada #23', CAST(N'2016-12-03' AS Date), CAST(85 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (24, N'entrada #24', CAST(N'2016-12-05' AS Date), CAST(57 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (25, N'entrada #25', CAST(N'2016-12-07' AS Date), CAST(65 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (26, N'entrada #26', CAST(N'2016-12-09' AS Date), CAST(81 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (27, N'entrada #27', CAST(N'2016-12-11' AS Date), CAST(64 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (28, N'entrada #28', CAST(N'2016-12-13' AS Date), CAST(100 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (29, N'entrada #29', CAST(N'2016-12-15' AS Date), CAST(68 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (30, N'entrada #30', CAST(N'2016-12-17' AS Date), CAST(96 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (31, N'entrada #31', CAST(N'2016-12-19' AS Date), CAST(99 AS Decimal(10, 0)))
INSERT [dbo].[Entrada] ([identrada], [descripción], [fechaentrada], [total]) VALUES (32, N'entrada #32', CAST(N'2016-12-21' AS Date), CAST(79 AS Decimal(10, 0)))
SET IDENTITY_INSERT [dbo].[Entrada] OFF
GO
SET IDENTITY_INSERT [dbo].[Marca] ON 

INSERT [dbo].[Marca] ([idmarca], [nommarca]) VALUES (1, N'Sincatex')
INSERT [dbo].[Marca] ([idmarca], [nommarca]) VALUES (2, N'Mezclilla')
INSERT [dbo].[Marca] ([idmarca], [nommarca]) VALUES (3, N'Gamuza')
INSERT [dbo].[Marca] ([idmarca], [nommarca]) VALUES (4, N'Poliester')
INSERT [dbo].[Marca] ([idmarca], [nommarca]) VALUES (5, N'Oxford')
INSERT [dbo].[Marca] ([idmarca], [nommarca]) VALUES (6, N'Twill')
INSERT [dbo].[Marca] ([idmarca], [nommarca]) VALUES (7, N'Popelín')
INSERT [dbo].[Marca] ([idmarca], [nommarca]) VALUES (8, N'Neutro')
SET IDENTITY_INSERT [dbo].[Marca] OFF
GO
SET IDENTITY_INSERT [dbo].[Materiales] ON 

INSERT [dbo].[Materiales] ([idmaterial], [nommaterial], [idmarca], [idcolor]) VALUES (1, N'tela manta', 7, 6)
INSERT [dbo].[Materiales] ([idmaterial], [nommaterial], [idmarca], [idcolor]) VALUES (2, N'tela lino', 5, 5)
INSERT [dbo].[Materiales] ([idmaterial], [nommaterial], [idmarca], [idcolor]) VALUES (3, N'tela sincatex1,1', 5, 1)
INSERT [dbo].[Materiales] ([idmaterial], [nommaterial], [idmarca], [idcolor]) VALUES (4, N'hilo', 3, 2)
INSERT [dbo].[Materiales] ([idmaterial], [nommaterial], [idmarca], [idcolor]) VALUES (5, N'hilo', 1, 1)
INSERT [dbo].[Materiales] ([idmaterial], [nommaterial], [idmarca], [idcolor]) VALUES (6, N'tela manta', 2, 7)
INSERT [dbo].[Materiales] ([idmaterial], [nommaterial], [idmarca], [idcolor]) VALUES (7, N'tela lino', 5, 2)
INSERT [dbo].[Materiales] ([idmaterial], [nommaterial], [idmarca], [idcolor]) VALUES (8, N'tela sincatex1,2', 8, 2)
INSERT [dbo].[Materiales] ([idmaterial], [nommaterial], [idmarca], [idcolor]) VALUES (9, N'hilo', 5, 7)
INSERT [dbo].[Materiales] ([idmaterial], [nommaterial], [idmarca], [idcolor]) VALUES (10, N'hilo', 8, 5)
INSERT [dbo].[Materiales] ([idmaterial], [nommaterial], [idmarca], [idcolor]) VALUES (11, N'tela manta', 6, 7)
INSERT [dbo].[Materiales] ([idmaterial], [nommaterial], [idmarca], [idcolor]) VALUES (12, N'tela lino', 7, 7)
INSERT [dbo].[Materiales] ([idmaterial], [nommaterial], [idmarca], [idcolor]) VALUES (13, N'tela sincatex1,3', 8, 5)
INSERT [dbo].[Materiales] ([idmaterial], [nommaterial], [idmarca], [idcolor]) VALUES (14, N'hilo', 6, 1)
INSERT [dbo].[Materiales] ([idmaterial], [nommaterial], [idmarca], [idcolor]) VALUES (15, N'hilo', 5, 6)
INSERT [dbo].[Materiales] ([idmaterial], [nommaterial], [idmarca], [idcolor]) VALUES (16, N'tela manta', 3, 4)
INSERT [dbo].[Materiales] ([idmaterial], [nommaterial], [idmarca], [idcolor]) VALUES (17, N'tela lino', 1, 3)
INSERT [dbo].[Materiales] ([idmaterial], [nommaterial], [idmarca], [idcolor]) VALUES (18, N'tela sincatex1,4', 4, 4)
INSERT [dbo].[Materiales] ([idmaterial], [nommaterial], [idmarca], [idcolor]) VALUES (19, N'hilo', 3, 3)
INSERT [dbo].[Materiales] ([idmaterial], [nommaterial], [idmarca], [idcolor]) VALUES (20, N'hilo', 2, 1)
SET IDENTITY_INSERT [dbo].[Materiales] OFF
GO
SET IDENTITY_INSERT [dbo].[Pedidos] ON 

INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (1, N'Pedido 1', CAST(N'2016-09-10' AS Date), CAST(N'2016-09-12' AS Date), 47, 6, 4)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (2, N'Pedido 2', CAST(N'2016-09-11' AS Date), CAST(N'2016-09-13' AS Date), 58, 2, 1)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (3, N'Pedido 3', CAST(N'2016-09-12' AS Date), CAST(N'2016-09-14' AS Date), 6, 8, 5)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (4, N'Pedido 4', CAST(N'2016-09-13' AS Date), CAST(N'2016-09-15' AS Date), 50, 9, 3)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (5, N'Pedido 5', CAST(N'2016-09-14' AS Date), CAST(N'2016-09-16' AS Date), 50, 7, 4)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (6, N'Pedido 6', CAST(N'2016-09-15' AS Date), CAST(N'2016-09-17' AS Date), 74, 20, 1)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (7, N'Pedido 7', CAST(N'2016-09-16' AS Date), CAST(N'2016-09-18' AS Date), 23, 14, 4)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (8, N'Pedido 8', CAST(N'2016-09-17' AS Date), CAST(N'2016-09-19' AS Date), 76, 20, 5)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (9, N'Pedido 9', CAST(N'2016-09-18' AS Date), CAST(N'2016-09-20' AS Date), 30, 11, 1)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (10, N'Pedido 10', CAST(N'2016-09-19' AS Date), CAST(N'2016-09-21' AS Date), 52, 9, 3)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (11, N'Pedido 11', CAST(N'2016-09-20' AS Date), CAST(N'2016-09-22' AS Date), 66, 13, 3)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (12, N'Pedido 12', CAST(N'2016-09-21' AS Date), CAST(N'2016-09-23' AS Date), 14, 15, 4)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (13, N'Pedido 13', CAST(N'2016-09-22' AS Date), CAST(N'2016-09-24' AS Date), 67, 20, 1)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (14, N'Pedido 14', CAST(N'2016-09-23' AS Date), CAST(N'2016-09-25' AS Date), 82, 2, 5)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (15, N'Pedido 15', CAST(N'2016-09-24' AS Date), CAST(N'2016-09-26' AS Date), 76, 7, 2)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (16, N'Pedido 16', CAST(N'2016-09-25' AS Date), CAST(N'2016-09-27' AS Date), 31, 6, 3)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (17, N'Pedido 17', CAST(N'2016-09-26' AS Date), CAST(N'2016-09-28' AS Date), 65, 1, 2)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (18, N'Pedido 18', CAST(N'2016-09-27' AS Date), CAST(N'2016-09-29' AS Date), 3, 20, 4)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (19, N'Pedido 19', CAST(N'2016-09-28' AS Date), CAST(N'2016-09-30' AS Date), 51, 13, 5)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (20, N'Pedido 20', CAST(N'2016-09-29' AS Date), CAST(N'2016-10-01' AS Date), 55, 15, 3)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (21, N'Pedido 21', CAST(N'2016-09-30' AS Date), CAST(N'2016-10-02' AS Date), 70, 5, 5)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (22, N'Pedido 22', CAST(N'2016-10-01' AS Date), CAST(N'2016-10-03' AS Date), 1, 7, 5)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (23, N'Pedido 23', CAST(N'2016-10-02' AS Date), CAST(N'2016-10-04' AS Date), 16, 12, 5)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (24, N'Pedido 24', CAST(N'2016-10-03' AS Date), CAST(N'2016-10-05' AS Date), 90, 4, 1)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (25, N'Pedido 25', CAST(N'2016-10-04' AS Date), CAST(N'2016-10-06' AS Date), 17, 14, 1)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (26, N'Pedido 26', CAST(N'2016-10-05' AS Date), CAST(N'2016-10-07' AS Date), 83, 18, 1)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (27, N'Pedido 27', CAST(N'2016-10-06' AS Date), CAST(N'2016-10-08' AS Date), 7, 17, 5)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (28, N'Pedido 28', CAST(N'2016-10-07' AS Date), CAST(N'2016-10-09' AS Date), 64, 7, 2)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (29, N'Pedido 29', CAST(N'2016-10-08' AS Date), CAST(N'2016-10-10' AS Date), 61, 17, 5)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (30, N'Pedido 30', CAST(N'2016-10-09' AS Date), CAST(N'2016-10-11' AS Date), 23, 5, 2)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (31, N'Pedido 31', CAST(N'2016-10-10' AS Date), CAST(N'2016-10-12' AS Date), 49, 20, 5)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (32, N'Pedido 32', CAST(N'2016-10-11' AS Date), CAST(N'2016-10-13' AS Date), 49, 13, 5)
INSERT [dbo].[Pedidos] ([idpedido], [descripción], [fechapedido], [fechaentrega], [idcliente], [idempleado], [cantidad]) VALUES (33, N'Pedido 33', CAST(N'2016-10-12' AS Date), CAST(N'2016-10-14' AS Date), 54, 5, 5)
SET IDENTITY_INSERT [dbo].[Pedidos] OFF
GO
SET IDENTITY_INSERT [dbo].[Salida] ON 

INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (1, N'Salida #1', CAST(N'2016-10-20' AS Date), CAST(50 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (2, N'Salida #2', CAST(N'2016-10-22' AS Date), CAST(64 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (3, N'Salida #3', CAST(N'2016-10-24' AS Date), CAST(90 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (4, N'Salida #4', CAST(N'2016-10-26' AS Date), CAST(91 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (5, N'Salida #5', CAST(N'2016-10-28' AS Date), CAST(65 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (6, N'Salida #6', CAST(N'2016-10-30' AS Date), CAST(57 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (7, N'Salida #7', CAST(N'2016-11-01' AS Date), CAST(56 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (8, N'Salida #8', CAST(N'2016-11-03' AS Date), CAST(58 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (9, N'Salida #9', CAST(N'2016-11-05' AS Date), CAST(57 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (10, N'Salida #10', CAST(N'2016-11-07' AS Date), CAST(68 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (11, N'Salida #11', CAST(N'2016-11-09' AS Date), CAST(69 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (12, N'Salida #12', CAST(N'2016-11-11' AS Date), CAST(52 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (13, N'Salida #13', CAST(N'2016-11-13' AS Date), CAST(85 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (14, N'Salida #14', CAST(N'2016-11-15' AS Date), CAST(89 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (15, N'Salida #15', CAST(N'2016-11-17' AS Date), CAST(62 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (16, N'Salida #16', CAST(N'2016-11-19' AS Date), CAST(76 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (17, N'Salida #17', CAST(N'2016-11-21' AS Date), CAST(72 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (18, N'Salida #18', CAST(N'2016-11-23' AS Date), CAST(64 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (19, N'Salida #19', CAST(N'2016-11-25' AS Date), CAST(76 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (20, N'Salida #20', CAST(N'2016-11-27' AS Date), CAST(50 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (21, N'Salida #21', CAST(N'2016-11-29' AS Date), CAST(80 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (22, N'Salida #22', CAST(N'2016-12-01' AS Date), CAST(90 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (23, N'Salida #23', CAST(N'2016-12-03' AS Date), CAST(97 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (24, N'Salida #24', CAST(N'2016-12-05' AS Date), CAST(83 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (25, N'Salida #25', CAST(N'2016-12-07' AS Date), CAST(56 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (26, N'Salida #26', CAST(N'2016-12-09' AS Date), CAST(73 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (27, N'Salida #27', CAST(N'2016-12-11' AS Date), CAST(96 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (28, N'Salida #28', CAST(N'2016-12-13' AS Date), CAST(66 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (29, N'Salida #29', CAST(N'2016-12-15' AS Date), CAST(93 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (30, N'Salida #30', CAST(N'2016-12-17' AS Date), CAST(81 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (31, N'Salida #31', CAST(N'2016-12-19' AS Date), CAST(71 AS Decimal(10, 0)))
INSERT [dbo].[Salida] ([idsalida], [descripción], [fechasalida], [total]) VALUES (32, N'Salida #32', CAST(N'2016-12-21' AS Date), CAST(62 AS Decimal(10, 0)))
SET IDENTITY_INSERT [dbo].[Salida] OFF
GO
SET IDENTITY_INSERT [dbo].[Trabajo] ON 

INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (1, N'Puesta de Ziper', 80)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (2, N'Hechura de Pantalon', 57)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (3, N'Hechura de Vestido', 120)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (4, N'Hechura de Shorts', 92)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (5, N'Puesta de Ziper', 85)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (6, N'Hechura de Pantalon', 56)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (7, N'Hechura de Vestido', 66)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (8, N'Hechura de Shorts', 121)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (9, N'Puesta de Ziper', 181)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (10, N'Hechura de Pantalon', 56)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (11, N'Hechura de Vestido', 88)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (12, N'Hechura de Shorts', 100)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (13, N'Puesta de Ziper', 115)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (14, N'Hechura de Pantalon', 197)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (15, N'Hechura de Vestido', 106)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (16, N'Hechura de Shorts', 106)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (17, N'Puesta de Ziper', 109)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (18, N'Hechura de Pantalon', 199)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (19, N'Hechura de Vestido', 122)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (20, N'Hechura de Shorts', 102)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (21, N'Puesta de Ziper', 99)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (22, N'Hechura de Pantalon', 172)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (23, N'Hechura de Vestido', 60)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (24, N'Hechura de Shorts', 83)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (25, N'Puesta de Ziper', 82)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (26, N'Hechura de Pantalon', 62)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (27, N'Hechura de Vestido', 82)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (28, N'Hechura de Shorts', 76)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (29, N'Puesta de Ziper', 73)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (30, N'Hechura de Pantalon', 196)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (31, N'Hechura de Vestido', 78)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (32, N'Hechura de Shorts', 104)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (33, N'Puesta de Ziper', 94)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (34, N'Hechura de Pantalon', 53)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (35, N'Hechura de Vestido', 129)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (36, N'Hechura de Shorts', 130)
INSERT [dbo].[Trabajo] ([idtrabajo], [descripcion], [precio]) VALUES (37, N'Puesta de Ziper', 161)
SET IDENTITY_INSERT [dbo].[Trabajo] OFF
GO
ALTER TABLE [dbo].[DetalleEntrada]  WITH CHECK ADD  CONSTRAINT [RefEntrada] FOREIGN KEY([identrada])
REFERENCES [dbo].[Entrada] ([identrada])
GO
ALTER TABLE [dbo].[DetalleEntrada] CHECK CONSTRAINT [RefEntrada]
GO
ALTER TABLE [dbo].[DetalleEntrada]  WITH CHECK ADD  CONSTRAINT [RefMaterial] FOREIGN KEY([idmaterial])
REFERENCES [dbo].[Materiales] ([idmaterial])
GO
ALTER TABLE [dbo].[DetalleEntrada] CHECK CONSTRAINT [RefMaterial]
GO
ALTER TABLE [dbo].[DetallePedidos]  WITH CHECK ADD  CONSTRAINT [RefPedidos] FOREIGN KEY([idpedido])
REFERENCES [dbo].[Pedidos] ([idpedido])
GO
ALTER TABLE [dbo].[DetallePedidos] CHECK CONSTRAINT [RefPedidos]
GO
ALTER TABLE [dbo].[DetallePedidos]  WITH CHECK ADD  CONSTRAINT [RefTrabajo] FOREIGN KEY([idtrabajo])
REFERENCES [dbo].[Trabajo] ([idtrabajo])
GO
ALTER TABLE [dbo].[DetallePedidos] CHECK CONSTRAINT [RefTrabajo]
GO
ALTER TABLE [dbo].[DetalleSalida]  WITH CHECK ADD  CONSTRAINT [Ref_Material] FOREIGN KEY([idmaterial])
REFERENCES [dbo].[Materiales] ([idmaterial])
GO
ALTER TABLE [dbo].[DetalleSalida] CHECK CONSTRAINT [Ref_Material]
GO
ALTER TABLE [dbo].[DetalleSalida]  WITH CHECK ADD  CONSTRAINT [RefSalida] FOREIGN KEY([idsalida])
REFERENCES [dbo].[Salida] ([idsalida])
GO
ALTER TABLE [dbo].[DetalleSalida] CHECK CONSTRAINT [RefSalida]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [RefCargo] FOREIGN KEY([idcargo])
REFERENCES [dbo].[Cargo] ([idcargo])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [RefCargo]
GO
ALTER TABLE [dbo].[Materiales]  WITH CHECK ADD  CONSTRAINT [RefColor] FOREIGN KEY([idcolor])
REFERENCES [dbo].[Color] ([idcolor])
GO
ALTER TABLE [dbo].[Materiales] CHECK CONSTRAINT [RefColor]
GO
ALTER TABLE [dbo].[Materiales]  WITH CHECK ADD  CONSTRAINT [RefMarca] FOREIGN KEY([idmarca])
REFERENCES [dbo].[Marca] ([idmarca])
GO
ALTER TABLE [dbo].[Materiales] CHECK CONSTRAINT [RefMarca]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [Ref_Empleado] FOREIGN KEY([idempleado])
REFERENCES [dbo].[Empleado] ([Idempleado])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [Ref_Empleado]
GO
ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [RefClientes] FOREIGN KEY([idcliente])
REFERENCES [dbo].[Clientes] ([idcliente])
GO
ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [RefClientes]
GO
