CREATE DATABASE WCBooksDB;
go
CREATE TABLE TiposDeUsuarios(
	IdTiposUsuario int IDENTITY(1,1) primary key NOT NULL,
	Descripcion nvarchar(50)
)
insert into TiposDeUsuarios(Descripcion)values('Administrador')
insert into TiposDeUsuarios(Descripcion)values('Cliente')

insert into Usuarios(NombreUsuario,Clave,Estado,IdTiposUsuario) values ('wilfred','1234',0,1);

CREATE TABLE Usuarios(
	IdUsuario int IDENTITY(1,1) primary key NOT NULL,
	NombreUsuario nvarchar (50) NULL,
	Clave nvarchar (20) NULL,
	Estado int NULL,
	IdTiposUsuario int foreign key references TiposDeUsuarios(IdTiposUsuario) 
)

CREATE TABLE Administradores(
	IdAdministrador int identity(1,1) PRIMARY KEY NOT NULL,
	Nombres nvarchar(100) NULL,
	Apellidos nvarchar(100) NULL,
	Email nvarchar(255) NULL,
	Telefono nvarchar(12) NULL,
	Direccion nvarchar(100) NULL,
)

CREATE TABLE Clientes(
	IdCliente int identity(1,1) PRIMARY KEY NOT NULL,
	Nombres nvarchar(100) NULL,
	Apellidos nvarchar(100) NULL,
	Email nvarchar(255) NULL,
	Telefono nvarchar(12) NULL,
	Celular nvarchar(12) NULL,
	Direccion nvarchar(100) NULL,
	Cedula nvarchar(13) NULL
)

CREATE TABLE Categorias(
	IdCategoria int IDENTITY(1,1) primary key NOT NULL,
	Descripcion nvarchar(50)
)

insert into Categorias(Descripcion)values('Arte y Literatura')
insert into Categorias(Descripcion)values('Espiritualidad')
insert into Categorias(Descripcion)values('Ciencias Sociales')
insert into Categorias(Descripcion)values('Negocios')
insert into Categorias(Descripcion)values('Educacion')
insert into Categorias(Descripcion)values('Entretenimiento')
insert into Categorias(Descripcion)values('Salud')

CREATE TABLE Genero(
	IdGenero int IDENTITY(1,1) primary key NOT NULL,
	Descripcion nvarchar(50)
)

insert into Genero(Descripcion)values('Epico')
insert into Genero(Descripcion)values('Lirico')
insert into Genero(Descripcion)values('Dramatico')
insert into Genero(Descripcion)values('Didactico')
insert into Genero(Descripcion)values('Oratoria')

CREATE TABLE Libros(
	IdLibro int IDENTITY(1,1) primary key NOT NULL,
	Titulo nvarchar(50),
	Autor nvarchar(50),
	Edicion nvarchar(20),
	Genero int,
	Imagen nvarchar(400),
	Precio float,
	IdCategoria int FOREIGN KEY REFERENCES Categorias(IdCategoria)

)

CREATE TABLE Pedidos(
	IdPedido int IDENTITY(1,1) primary key NOT NULL,
	IdCliente int NULL,
	Fecha datetime NULL,
	Total float NULL,
	)

CREATE TABLE PedidosDetalles(
	IdDetalle int IDENTITY(1,1) primary key NOT NULL,
	IdPedido int NULL,
	IdLibro int NULL,
	Cantidad float NULL,
	Precio float NULL,
)

select * from PedidosDetalles