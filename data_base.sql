------------------------
-- Query 2008 R2      --
------------------------

create database curso
go
USE curso
GO
/****** Object:  Table [dbo].[CLIENTES]    Script Date: 3/24/2021 8:08:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTES](
	[CLIENTE_NO] [int] NOT NULL,
	[NOMBRE] [varchar](25) NULL,
	[LOCALIDAD] [varchar](14) NULL,
	[VENDEDOR_NO] [int] NULL,
	[DEBE] [float] NULL,
	[HABER] [float] NULL,
	[LIMITE_CREDITO] [float] NULL,
 CONSTRAINT [PK_CLIENTE_NO] PRIMARY KEY CLUSTERED 
(
	[CLIENTE_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEPARTAMENTOS]    Script Date: 3/24/2021 8:08:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPARTAMENTOS](
	[DEP_NO] [int] NOT NULL,
	[DNOMBRE] [varchar](14) NULL,
	[LOCALIDAD] [varchar](10) NULL,
 CONSTRAINT [PK_DEPARTAMENTOS_DEP_NO] PRIMARY KEY CLUSTERED 
(
	[DEP_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLEADOS]    Script Date: 3/24/2021 8:08:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLEADOS](
	[EMP_NO] [int] NOT NULL,
	[APELLIDO] [varchar](8) NULL,
	[OFICIO] [varchar](10) NULL,
	[DIRECTOR] [int] NULL,
	[FECHA_ALTA] [datetime] NULL,
	[SALARIO] [float] NULL,
	[COMISION] [float] NULL,
	[DEP_NO] [int] NULL,
 CONSTRAINT [PK_EMPLEADOS_EMP_NO] PRIMARY KEY CLUSTERED 
(
	[EMP_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PEDIDOS]    Script Date: 3/24/2021 8:08:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PEDIDOS](
	[PEDIDO_NO] [int] NOT NULL,
	[PRODUCTO_NO] [int] NULL,
	[CLIENTE_NO] [int] NULL,
	[UNIDADES] [int] NULL,
	[FECHA_PEDIDO] [datetime] NULL,
 CONSTRAINT [PK_PEDIDO_NO] PRIMARY KEY CLUSTERED 
(
	[PEDIDO_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTOS]    Script Date: 3/24/2021 8:08:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTOS](
	[PRODUCTO_NO] [int] NOT NULL,
	[DESCRIPCION] [varchar](30) NULL,
	[PRECIO_ACTUAL] [float] NULL,
	[STOCK_DISPONIBLE] [int] NULL,
 CONSTRAINT [PK_PRODUCTO_NO] PRIMARY KEY CLUSTERED 
(
	[PRODUCTO_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CLIENTES] ([CLIENTE_NO], [NOMBRE], [LOCALIDAD], [VENDEDOR_NO], [DEBE], [HABER], [LIMITE_CREDITO]) VALUES (101, N'DISTRIBUCIONES GOMEZ', N'MADRID', 7499, 0, 0, 5000)
GO
INSERT [dbo].[CLIENTES] ([CLIENTE_NO], [NOMBRE], [LOCALIDAD], [VENDEDOR_NO], [DEBE], [HABER], [LIMITE_CREDITO]) VALUES (102, N'LOGITRONICA S.L', N'BARCELONA', 7654, 0, 0, 5000)
GO
INSERT [dbo].[CLIENTES] ([CLIENTE_NO], [NOMBRE], [LOCALIDAD], [VENDEDOR_NO], [DEBE], [HABER], [LIMITE_CREDITO]) VALUES (103, N'INDUSTRIAS LACTEAS S.A.', N'LAS ROZAS', 7844, 0, 0, 10000)
GO
INSERT [dbo].[CLIENTES] ([CLIENTE_NO], [NOMBRE], [LOCALIDAD], [VENDEDOR_NO], [DEBE], [HABER], [LIMITE_CREDITO]) VALUES (104, N'TALLERES ESTESO S.A.', N'SEVILLA', 7654, 0, 0, 5000)
GO
INSERT [dbo].[CLIENTES] ([CLIENTE_NO], [NOMBRE], [LOCALIDAD], [VENDEDOR_NO], [DEBE], [HABER], [LIMITE_CREDITO]) VALUES (105, N'EDICIONES SANZ', N'BARCELONA', 7499, 0, 0, 5000)
GO
INSERT [dbo].[CLIENTES] ([CLIENTE_NO], [NOMBRE], [LOCALIDAD], [VENDEDOR_NO], [DEBE], [HABER], [LIMITE_CREDITO]) VALUES (106, N'SIGNOLOGIC S.A.', N'MADRID', 7654, 0, 0, 5000)
GO
INSERT [dbo].[CLIENTES] ([CLIENTE_NO], [NOMBRE], [LOCALIDAD], [VENDEDOR_NO], [DEBE], [HABER], [LIMITE_CREDITO]) VALUES (107, N'MARTIN Y ASOCIADOS S.L.', N'ARAVACA', 7844, 0, 0, 10000)
GO
INSERT [dbo].[CLIENTES] ([CLIENTE_NO], [NOMBRE], [LOCALIDAD], [VENDEDOR_NO], [DEBE], [HABER], [LIMITE_CREDITO]) VALUES (108, N'MANUFACTURAS ALI S.A.', N'SEVILLA', 7654, 0, 0, 5000)
GO
INSERT [dbo].[DEPARTAMENTOS] ([DEP_NO], [DNOMBRE], [LOCALIDAD]) VALUES (10, N'CONTABILIDAD', N'BARCELONA')
GO
INSERT [dbo].[DEPARTAMENTOS] ([DEP_NO], [DNOMBRE], [LOCALIDAD]) VALUES (20, N'INVESTIGACIO', N'VALENCIA')
GO
INSERT [dbo].[DEPARTAMENTOS] ([DEP_NO], [DNOMBRE], [LOCALIDAD]) VALUES (30, N'VENTAS', N'MADRID')
GO
INSERT [dbo].[DEPARTAMENTOS] ([DEP_NO], [DNOMBRE], [LOCALIDAD]) VALUES (40, N'PRODUCCIO', N'SEVILLA')
GO
INSERT [dbo].[EMPLEADOS] ([EMP_NO], [APELLIDO], [OFICIO], [DIRECTOR], [FECHA_ALTA], [SALARIO], [COMISION], [DEP_NO]) VALUES (7499, N'ALONSO', N'VENDEDOR', 7698, CAST(N'1981-02-23T00:00:00.000' AS DateTime), 1400, 400, 30)
GO
INSERT [dbo].[EMPLEADOS] ([EMP_NO], [APELLIDO], [OFICIO], [DIRECTOR], [FECHA_ALTA], [SALARIO], [COMISION], [DEP_NO]) VALUES (7521, N'LOPEZ', N'EMPLEADO', 7782, CAST(N'1981-05-08T00:00:00.000' AS DateTime), 1350.5, NULL, 10)
GO
INSERT [dbo].[EMPLEADOS] ([EMP_NO], [APELLIDO], [OFICIO], [DIRECTOR], [FECHA_ALTA], [SALARIO], [COMISION], [DEP_NO]) VALUES (7654, N'MARTI', N'VENDEDOR', 7698, CAST(N'1981-09-28T00:00:00.000' AS DateTime), 1500, 1600, 30)
GO
INSERT [dbo].[EMPLEADOS] ([EMP_NO], [APELLIDO], [OFICIO], [DIRECTOR], [FECHA_ALTA], [SALARIO], [COMISION], [DEP_NO]) VALUES (7698, N'GARRIDO', N'DIRECTOR', 7839, CAST(N'1981-05-01T00:00:00.000' AS DateTime), 3850.12, NULL, 30)
GO
INSERT [dbo].[EMPLEADOS] ([EMP_NO], [APELLIDO], [OFICIO], [DIRECTOR], [FECHA_ALTA], [SALARIO], [COMISION], [DEP_NO]) VALUES (7782, N'MARTINEZ', N'DIRECTOR', 7839, CAST(N'1981-06-09T00:00:00.000' AS DateTime), 2450, NULL, 10)
GO
INSERT [dbo].[EMPLEADOS] ([EMP_NO], [APELLIDO], [OFICIO], [DIRECTOR], [FECHA_ALTA], [SALARIO], [COMISION], [DEP_NO]) VALUES (7839, N'REY', N'PRESIDENTE', NULL, CAST(N'1981-11-17T00:00:00.000' AS DateTime), 6000, NULL, 10)
GO
INSERT [dbo].[EMPLEADOS] ([EMP_NO], [APELLIDO], [OFICIO], [DIRECTOR], [FECHA_ALTA], [SALARIO], [COMISION], [DEP_NO]) VALUES (7844, N'CALVO', N'VENDEDOR', 7698, CAST(N'1981-09-08T00:00:00.000' AS DateTime), 1800, 0, 30)
GO
INSERT [dbo].[EMPLEADOS] ([EMP_NO], [APELLIDO], [OFICIO], [DIRECTOR], [FECHA_ALTA], [SALARIO], [COMISION], [DEP_NO]) VALUES (7876, N'GIL', N'ANALISTA', 7782, CAST(N'1982-05-06T00:00:00.000' AS DateTime), 3350, NULL, 20)
GO
INSERT [dbo].[EMPLEADOS] ([EMP_NO], [APELLIDO], [OFICIO], [DIRECTOR], [FECHA_ALTA], [SALARIO], [COMISION], [DEP_NO]) VALUES (7900, N'JIMENEZ', N'EMPLEADO', 7782, CAST(N'1983-03-24T00:00:00.000' AS DateTime), 1400, NULL, 20)
GO
INSERT [dbo].[PEDIDOS] ([PEDIDO_NO], [PRODUCTO_NO], [CLIENTE_NO], [UNIDADES], [FECHA_PEDIDO]) VALUES (1000, 20, 103, 3, CAST(N'1999-10-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PEDIDOS] ([PEDIDO_NO], [PRODUCTO_NO], [CLIENTE_NO], [UNIDADES], [FECHA_PEDIDO]) VALUES (1001, 50, 106, 2, CAST(N'1999-10-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PEDIDOS] ([PEDIDO_NO], [PRODUCTO_NO], [CLIENTE_NO], [UNIDADES], [FECHA_PEDIDO]) VALUES (1002, 10, 101, 4, CAST(N'1999-10-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PEDIDOS] ([PEDIDO_NO], [PRODUCTO_NO], [CLIENTE_NO], [UNIDADES], [FECHA_PEDIDO]) VALUES (1003, 20, 105, 4, CAST(N'1999-10-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PEDIDOS] ([PEDIDO_NO], [PRODUCTO_NO], [CLIENTE_NO], [UNIDADES], [FECHA_PEDIDO]) VALUES (1004, 40, 106, 8, CAST(N'1999-10-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PEDIDOS] ([PEDIDO_NO], [PRODUCTO_NO], [CLIENTE_NO], [UNIDADES], [FECHA_PEDIDO]) VALUES (1005, 30, 105, 2, CAST(N'1999-10-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PEDIDOS] ([PEDIDO_NO], [PRODUCTO_NO], [CLIENTE_NO], [UNIDADES], [FECHA_PEDIDO]) VALUES (1006, 70, 103, 3, CAST(N'1999-11-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PEDIDOS] ([PEDIDO_NO], [PRODUCTO_NO], [CLIENTE_NO], [UNIDADES], [FECHA_PEDIDO]) VALUES (1007, 50, 101, 2, CAST(N'1999-11-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PEDIDOS] ([PEDIDO_NO], [PRODUCTO_NO], [CLIENTE_NO], [UNIDADES], [FECHA_PEDIDO]) VALUES (1008, 10, 106, 6, CAST(N'1999-11-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PEDIDOS] ([PEDIDO_NO], [PRODUCTO_NO], [CLIENTE_NO], [UNIDADES], [FECHA_PEDIDO]) VALUES (1009, 20, 105, 2, CAST(N'1999-11-26T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PEDIDOS] ([PEDIDO_NO], [PRODUCTO_NO], [CLIENTE_NO], [UNIDADES], [FECHA_PEDIDO]) VALUES (1010, 40, 102, 3, CAST(N'1999-12-08T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PEDIDOS] ([PEDIDO_NO], [PRODUCTO_NO], [CLIENTE_NO], [UNIDADES], [FECHA_PEDIDO]) VALUES (1011, 30, 106, 2, CAST(N'1999-12-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PEDIDOS] ([PEDIDO_NO], [PRODUCTO_NO], [CLIENTE_NO], [UNIDADES], [FECHA_PEDIDO]) VALUES (1012, 10, 105, 3, CAST(N'1999-12-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PEDIDOS] ([PEDIDO_NO], [PRODUCTO_NO], [CLIENTE_NO], [UNIDADES], [FECHA_PEDIDO]) VALUES (1013, 30, 106, 2, CAST(N'1999-12-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PEDIDOS] ([PEDIDO_NO], [PRODUCTO_NO], [CLIENTE_NO], [UNIDADES], [FECHA_PEDIDO]) VALUES (1014, 20, 101, 4, CAST(N'2000-01-07T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PEDIDOS] ([PEDIDO_NO], [PRODUCTO_NO], [CLIENTE_NO], [UNIDADES], [FECHA_PEDIDO]) VALUES (1015, 70, 105, 4, CAST(N'2000-01-16T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PEDIDOS] ([PEDIDO_NO], [PRODUCTO_NO], [CLIENTE_NO], [UNIDADES], [FECHA_PEDIDO]) VALUES (1017, 20, 105, 6, CAST(N'2000-01-20T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PEDIDOS] ([PEDIDO_NO], [PRODUCTO_NO], [CLIENTE_NO], [UNIDADES], [FECHA_PEDIDO]) VALUES (1018, 10, 105, 5, CAST(N'2007-10-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PEDIDOS] ([PEDIDO_NO], [PRODUCTO_NO], [CLIENTE_NO], [UNIDADES], [FECHA_PEDIDO]) VALUES (1019, 10, 105, 1, CAST(N'2007-10-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PEDIDOS] ([PEDIDO_NO], [PRODUCTO_NO], [CLIENTE_NO], [UNIDADES], [FECHA_PEDIDO]) VALUES (1020, 20, 105, 5, CAST(N'2007-10-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PEDIDOS] ([PEDIDO_NO], [PRODUCTO_NO], [CLIENTE_NO], [UNIDADES], [FECHA_PEDIDO]) VALUES (1021, 70, 103, 3, CAST(N'2007-11-09T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[PRODUCTOS] ([PRODUCTO_NO], [DESCRIPCION], [PRECIO_ACTUAL], [STOCK_DISPONIBLE]) VALUES (10, N'MESA DESPACHO MOD. GAVIOTA', 550, 44)
GO
INSERT [dbo].[PRODUCTOS] ([PRODUCTO_NO], [DESCRIPCION], [PRECIO_ACTUAL], [STOCK_DISPONIBLE]) VALUES (20, N'SILLA DIRECTOR MOD. BUFALO', 670, 15)
GO
INSERT [dbo].[PRODUCTOS] ([PRODUCTO_NO], [DESCRIPCION], [PRECIO_ACTUAL], [STOCK_DISPONIBLE]) VALUES (30, N'ARMARIO NOGAL DOS PUERTAS', 460, 20)
GO
INSERT [dbo].[PRODUCTOS] ([PRODUCTO_NO], [DESCRIPCION], [PRECIO_ACTUAL], [STOCK_DISPONIBLE]) VALUES (40, N'MESA MODELO UNI??', 340, 15)
GO
INSERT [dbo].[PRODUCTOS] ([PRODUCTO_NO], [DESCRIPCION], [PRECIO_ACTUAL], [STOCK_DISPONIBLE]) VALUES (50, N'ARCHIVADOR CEREZO', 1050, 20)
GO
INSERT [dbo].[PRODUCTOS] ([PRODUCTO_NO], [DESCRIPCION], [PRECIO_ACTUAL], [STOCK_DISPONIBLE]) VALUES (60, N'CAJA SEGURIDAD MOD B222', 280, 15)
GO
INSERT [dbo].[PRODUCTOS] ([PRODUCTO_NO], [DESCRIPCION], [PRECIO_ACTUAL], [STOCK_DISPONIBLE]) VALUES (70, N'DESTRUCTORA DE PAPEL A3', 450, 16)
GO
INSERT [dbo].[PRODUCTOS] ([PRODUCTO_NO], [DESCRIPCION], [PRECIO_ACTUAL], [STOCK_DISPONIBLE]) VALUES (80, N'MODULO ORDENADOR MOD. ERGOS', 550, 25)
GO
ALTER TABLE [dbo].[CLIENTES]  WITH CHECK ADD  CONSTRAINT [FK_CLI_EMP_NO] FOREIGN KEY([VENDEDOR_NO])
REFERENCES [dbo].[EMPLEADOS] ([EMP_NO])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CLIENTES] CHECK CONSTRAINT [FK_CLI_EMP_NO]
GO
ALTER TABLE [dbo].[EMPLEADOS]  WITH CHECK ADD  CONSTRAINT [FK_EMP_DEP_NO] FOREIGN KEY([DEP_NO])
REFERENCES [dbo].[DEPARTAMENTOS] ([DEP_NO])
GO
ALTER TABLE [dbo].[EMPLEADOS] CHECK CONSTRAINT [FK_EMP_DEP_NO]
GO
ALTER TABLE [dbo].[EMPLEADOS]  WITH CHECK ADD  CONSTRAINT [FK_EMP_DIRECTOR] FOREIGN KEY([DIRECTOR])
REFERENCES [dbo].[EMPLEADOS] ([EMP_NO])
GO
ALTER TABLE [dbo].[EMPLEADOS] CHECK CONSTRAINT [FK_EMP_DIRECTOR]
GO
ALTER TABLE [dbo].[PEDIDOS]  WITH CHECK ADD  CONSTRAINT [FK_PEDIDOS_CLIENTE_NO] FOREIGN KEY([CLIENTE_NO])
REFERENCES [dbo].[CLIENTES] ([CLIENTE_NO])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PEDIDOS] CHECK CONSTRAINT [FK_PEDIDOS_CLIENTE_NO]
GO
ALTER TABLE [dbo].[PEDIDOS]  WITH CHECK ADD  CONSTRAINT [FK_PEDIDOS_PRODUCTO_NO] FOREIGN KEY([PRODUCTO_NO])
REFERENCES [dbo].[PRODUCTOS] ([PRODUCTO_NO])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PEDIDOS] CHECK CONSTRAINT [FK_PEDIDOS_PRODUCTO_NO]
GO

