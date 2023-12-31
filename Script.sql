USE [ClinicaDental]
GO
/****** Object:  Table [dbo].[Funcionarios]    Script Date: 12/11/2023 11:00:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcionarios](
	[NombreCompletoFuncionario] [nvarchar](255) NOT NULL,
	[IdentificacionFuncionario] [int] NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[Estado] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdentificacionFuncionario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hijos]    Script Date: 12/11/2023 11:00:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hijos](
	[IdPadre] [int] NULL,
	[IdHijo] [int] NOT NULL,
	[NombreCompleto] [nvarchar](255) NOT NULL,
	[Sexo] [nvarchar](10) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdHijo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Padres]    Script Date: 12/11/2023 11:00:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Padres](
	[NombreCompletoPadre] [nvarchar](255) NOT NULL,
	[Cedula] [int] NOT NULL,
	[Direccion] [nvarchar](255) NOT NULL,
	[Telefono] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[Estado] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 12/11/2023 11:00:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicios](
	[NombreServicio] [nvarchar](255) NOT NULL,
	[Precio] [decimal](10, 2) NOT NULL,
	[CodigoServicio] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiciosBrindados]    Script Date: 12/11/2023 11:00:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiciosBrindados](
	[CodigoServicio] [int] NULL,
	[IdHijo] [int] NOT NULL,
	[Costo] [decimal](10, 2) NOT NULL,
	[Fecha] [date] NOT NULL,
	[Estado] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Funcionarios] ([NombreCompletoFuncionario], [IdentificacionFuncionario], [Email], [Password], [Estado]) VALUES (N'Test', 543221, N'Test@gmail.com', N'Test', N'activo')
INSERT [dbo].[Funcionarios] ([NombreCompletoFuncionario], [IdentificacionFuncionario], [Email], [Password], [Estado]) VALUES (N'Funcionario3', 23415123, N'Funcionario3@gmail.com', N'Funcionario3', N'activo')
INSERT [dbo].[Funcionarios] ([NombreCompletoFuncionario], [IdentificacionFuncionario], [Email], [Password], [Estado]) VALUES (N'Funcionario77', 82345679, N'Funcionario77@gmail.com', N'Funcionario77', N'activo')
INSERT [dbo].[Funcionarios] ([NombreCompletoFuncionario], [IdentificacionFuncionario], [Email], [Password], [Estado]) VALUES (N'Administrador', 123456789, N'administrador@gmail.com', N'administrador', N'activo')
INSERT [dbo].[Funcionarios] ([NombreCompletoFuncionario], [IdentificacionFuncionario], [Email], [Password], [Estado]) VALUES (N'Sayuri', 457645634, N'Sayuri@gmail.com', N'Sayuri', N'activo')
GO
INSERT [dbo].[Hijos] ([IdPadre], [IdHijo], [NombreCompleto], [Sexo], [FechaNacimiento]) VALUES (123456789, 4321, N'Hijo1', N'masculino', CAST(N'2023-06-08' AS Date))
INSERT [dbo].[Hijos] ([IdPadre], [IdHijo], [NombreCompleto], [Sexo], [FechaNacimiento]) VALUES (123456789, 67894, N'Hija1', N'femenino', CAST(N'2023-11-20' AS Date))
GO
INSERT [dbo].[Padres] ([NombreCompletoPadre], [Cedula], [Direccion], [Telefono], [Email], [Password], [Estado]) VALUES (N'PadreJaime', 9845612, N'PadreJaimeCasa', N'45635467331', N'PadreJaime@gmail.com', N'PadreJaime', N'activo')
INSERT [dbo].[Padres] ([NombreCompletoPadre], [Cedula], [Direccion], [Telefono], [Email], [Password], [Estado]) VALUES (N'PadreMain', 12345623, N'PadreMainCasa', N'67893245', N'PadreMain@gmail.com', N'PadreMain', N'activo')
INSERT [dbo].[Padres] ([NombreCompletoPadre], [Cedula], [Direccion], [Telefono], [Email], [Password], [Estado]) VALUES (N'PruebaPadre', 67853245, N'Cartago', N'23452345', N'PruebaPadre@gmail.com', N'Prueba', N'activo')
INSERT [dbo].[Padres] ([NombreCompletoPadre], [Cedula], [Direccion], [Telefono], [Email], [Password], [Estado]) VALUES (N'Padres', 123456789, N'Costa Rica', N'12345678', N'padre@gmail.com', N'padre', N'Activo')
INSERT [dbo].[Padres] ([NombreCompletoPadre], [Cedula], [Direccion], [Telefono], [Email], [Password], [Estado]) VALUES (N'TestPadre', 678912378, N'Casa123', N'2345732865', N'TestPadre@gmail.com', N'TestPadre', N'activo')
GO
INSERT [dbo].[Servicios] ([NombreServicio], [Precio], [CodigoServicio]) VALUES (N'Limpieza Dental', CAST(50000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Servicios] ([NombreServicio], [Precio], [CodigoServicio]) VALUES (N'Extracción de muelas', CAST(40000.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[Servicios] ([NombreServicio], [Precio], [CodigoServicio]) VALUES (N'Extracción de dientes', CAST(350000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[Servicios] ([NombreServicio], [Precio], [CodigoServicio]) VALUES (N'Cirugía de cordales', CAST(1100000.00 AS Decimal(10, 2)), 4)
INSERT [dbo].[Servicios] ([NombreServicio], [Precio], [CodigoServicio]) VALUES (N'Ortodoncia', CAST(6500000.00 AS Decimal(10, 2)), 5)
INSERT [dbo].[Servicios] ([NombreServicio], [Precio], [CodigoServicio]) VALUES (N'Prueba', CAST(200.00 AS Decimal(10, 2)), 6)
GO
INSERT [dbo].[ServiciosBrindados] ([CodigoServicio], [IdHijo], [Costo], [Fecha], [Estado]) VALUES (1, 4321, CAST(50000.00 AS Decimal(10, 2)), CAST(N'2023-12-03' AS Date), N'Cancelado')
INSERT [dbo].[ServiciosBrindados] ([CodigoServicio], [IdHijo], [Costo], [Fecha], [Estado]) VALUES (1, 4321, CAST(51000.00 AS Decimal(10, 2)), CAST(N'2023-12-03' AS Date), N'Cancelado')
INSERT [dbo].[ServiciosBrindados] ([CodigoServicio], [IdHijo], [Costo], [Fecha], [Estado]) VALUES (2, 4321, CAST(40800.00 AS Decimal(10, 2)), CAST(N'2023-12-03' AS Date), N'Cancelado')
INSERT [dbo].[ServiciosBrindados] ([CodigoServicio], [IdHijo], [Costo], [Fecha], [Estado]) VALUES (3, 4321, CAST(357000.00 AS Decimal(10, 2)), CAST(N'2023-12-03' AS Date), N'Cancelado')
GO
ALTER TABLE [dbo].[Hijos]  WITH CHECK ADD FOREIGN KEY([IdPadre])
REFERENCES [dbo].[Padres] ([Cedula])
GO
ALTER TABLE [dbo].[ServiciosBrindados]  WITH CHECK ADD FOREIGN KEY([CodigoServicio])
REFERENCES [dbo].[Servicios] ([CodigoServicio])
GO
ALTER TABLE [dbo].[ServiciosBrindados]  WITH CHECK ADD FOREIGN KEY([IdHijo])
REFERENCES [dbo].[Hijos] ([IdHijo])
GO
ALTER TABLE [dbo].[Funcionarios]  WITH CHECK ADD CHECK  (([Estado]='Inactivo' OR [Estado]='Activo'))
GO
ALTER TABLE [dbo].[Padres]  WITH CHECK ADD CHECK  (([Estado]='Inactivo' OR [Estado]='Activo'))
GO
ALTER TABLE [dbo].[ServiciosBrindados]  WITH CHECK ADD CHECK  (([Estado]='Cancelado' OR [Estado]='Pendiente'))
GO
/****** Object:  StoredProcedure [dbo].[VerificarCredenciales]    Script Date: 12/11/2023 11:00:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VerificarCredenciales]
    @Email NVARCHAR(255),
    @Password NVARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @TipoUsuario NVARCHAR(50);

	DECLARE @Cedula int;
    -- Buscar en la tabla Funcionarios
    SELECT @TipoUsuario = 'Funcionario', @Cedula = IdentificacionFuncionario
    FROM Funcionarios
    WHERE Email = @Email AND Password = @Password AND Estado = 'Activo';

    -- Si no se encuentra en Funcionarios, buscar en la tabla Padres
    IF @TipoUsuario IS NULL
    BEGIN
        SELECT @TipoUsuario = 'Padre', @Cedula = Cedula
        FROM Padres
        WHERE Email = @Email AND Password = @Password AND Estado = 'Activo';
    END
    
    IF @TipoUsuario IS NULL
    BEGIN
        SET @TipoUsuario = 'No encontrado o usuario inactivo';
    END
    
    SELECT @TipoUsuario AS TipoUsuario, @Cedula AS Cedula
END
GO
