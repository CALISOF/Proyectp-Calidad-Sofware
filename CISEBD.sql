/*
create database CISE

use CISE

create table talla(
	idTalla int identity(1,1) primary key not null,
	talla1 varchar(20),
	talla2 varchar(20),
	talla3 varchar(20),
	talla4 varchar(20)
)
go

create table marca(
	idMarca int identity(1,1) primary key not null,
	marca varchar(40)
)
go

create table categoria(
	idCategoria int identity(1,1) primary key not null,
	categoria varchar(40)
)
go

create table proveedor(
	idProveedor int identity(1,1) primary key not null,
	nombrePro varchar(50),
)
go

create table producto(
	idProducto int identity(1,1) primary key not null,
	nombre varchar(50),
	precioCompra decimal(18,5),
	precioVenta decimal(18,5),
	moneda varchar(1),
	tipoDeCambio decimal(18,5),
	Stock int,
	imgProducto image,
	descripcion varchar(200),
	IGV decimal,
	idMarca int,
	idTalla int,
	idCategoria int,
	fechaRegistro datetime,


	constraint produc_mar_fk foreign key (idMarca) references marca,
	constraint produc_tal_fk foreign key (idTalla) references talla,
	constraint product_cat_fk foreign key (idCategoria) references categoria

)
go


create table detalle_compra(
	idDetalleCompra int identity(1,1) primary key not null,
	cantidad int,
	totalCompra int,
	idProducto int,
	idProveedor int,

	constraint de_com_produc_fk foreign key (idProducto) references producto,
	constraint de_com_provee_fk foreign key (idProveedor) references proveedor 

)
go

create table usuario (
idUsuario int identity(1,1) primary key not null,
nombre varchar(50),
correo varchar(50),
pass varchar(150),
perfil varchar(10),
estado int
)
go


create table costoEnvio(
idCostoEnvio int identity(1,1) primary key not null,
costo decimal
)
go

create table envio(
idEnvio int identity(1,1) primary key not null,
departamento varchar(30),
provincia varchar(30),
distrito varchar(30),
direccion varchar(110),
fecha datetime,
idCostoEnvio int,
constraint envio_cosEn_fk foreign key (idCostoEnvio) references costoEnvio

)
go

create table venta(
idVenta int identity(1,1) primary key not null,
fecha datetime,
estado varchar(30),
idEnvio int,

constraint venta_envio_fk foreign key (idEnvio) references envio,

)
go

create table usuarioVenta(
idUsuarioDato int identity(1,1) primary key not null,
telefono1 varchar(10),
telefono2 varchar(10),
nombreCompleto varchar(60),
DNI varchar(10),
idUsuario int,
idVenta int,

constraint usuaDa_usu_fk foreign key (idUsuario) references usuario,
constraint usuven_venta_fk foreign key (idVenta) references venta
)
go

create table detalleVenta(
idDetalleVenta int identity (1,1) primary key not null,
IGV decimal,
totalventa decimal,
tarjeta varchar(50),
cuenta varchar(250),
idVenta int,

constraint detven_ven_fk foreign key (idVenta) references venta
)
go


create table ventaProducto(
idVentaProducto int identity(1,1) primary key not null,
idVenta int,
idProducto int,
cantidad int,
totalProductos decimal

constraint venPro_venta_fk foreign key (idVenta) references venta,
constraint ventaPro_produc_fk foreign key (idProducto) references producto,

)
go
*/

/*
insert into usuario values('admin_usu','admin_usu@gmail.com','123','admin',1)
insert into usuario values ('trabajar_usu','trabajador_usu@gmail.com','123','trabajador',1)
insert into usuario values('cliente_usu','cliente_usu@gmail.com','123','cliente',1)


create procedure usuarioSistema
@correo varchar(50),
@clave varchar(150)
as
begin
	select idUsuario, nombre, correo, pass, perfil, estado from usuario 
	where correo = @correo and pass = @clave

end
go


exec usuarioSistema 'admin_usu@gmail.com','123'
go


*/
/*

create procedure registrarUsuario 
				@nombre varchar(50),
				@correo varchar(60),
				@password varchar(200),
				@perfil varchar(15)
as
begin
declare @estado int
set @estado = 1


insert into usuario values (@nombre,@correo,@password,@perfil,@estado)

end
go


exec registrarUsuario 'luis1','luis11@gmail.com','123','cliente'
select * from usuario
where correo != 'admin_usu@gmail.com'


*/

--procedimiento almacenado listar categoria
/*
create procedure listarCategoria
as
begin
	select top 3 * from categoria

end
go

select * from categoria

insert into categoria values ('Ropa de Bebes')
insert into categoria values ('Ropa de Niñas')
insert into categoria values ('Ropa de Niños')
insert into categoria values ('Todos')
*/


/*procedimiento almacenado registrar producto*/
/*
alter procedure registrarProducto
					@nomProducto varchar(70),
					@cantidad int,
					@moneda varchar(1),
					@precioCompra decimal(18,5),
					@tipoCambio decimal(18,5),
					@precioVenta decimal(18,5),
					@IGV decimal,
					@proveedor varchar(50),
					@talla1 varchar(20),
					@talla2 varchar(20),
					@talla3 varchar(20),
					@talla4 varchar(20),
					@categoria int,
					@marca varchar(30),
					@descripcion varchar(200),
					@img image
as
begin
	declare @idMarca int
	declare @idTalla int
	declare @idProducto int
	declare @fecha datetime
	declare @idProveedor int

	insert into proveedor values(@proveedor)
	set @idProveedor = SCOPE_IDENTITY()

	insert into marca VALUES (@marca)
	set @idMarca=SCOPE_IDENTITY()

	insert into talla values (@talla1,@talla2,@talla3,@talla4)
	set @idTalla=SCOPE_IDENTITY()
	set @fecha = GETDATE ()


	insert into producto values(@nomProducto,@precioCompra,@precioVenta,@moneda,@tipoCambio,@cantidad,@img,@descripcion,@IGV,@idMarca,@idTalla,@categoria,@fecha)
	set @idProducto=SCOPE_IDENTITY()


	insert into detalle_compra values (@cantidad,(@precioCompra*@cantidad),@idProducto,@idProveedor)

end
go

*/
-----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

/*
create procedure lis12Productos
as
begin
	select top 12 p.idProducto,p.nombre, c.categoria, dc.cantidad, m.marca, dc.totalCompra, p.precioVenta,p.descripcion from producto p
	inner join categoria c on p.idCategoria = c.idCategoria
	inner join marca m on p.idMarca = m.idMarca
	inner join detalle_compra dc on p.idProducto = dc.idProducto
	order by p.idProducto desc
end
go

exec lis12Productos
go


*/
-----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
/*
create procedure selectAllProducto
as
begin
	select p.idProducto, c.categoria,p.nombre, dc.cantidad,p.moneda, p.precioCompra, p.tipoDeCambio, p.precioVenta, p.IGV, pro.nombrePro,
	t.talla1, t.talla2, t.talla3, t.talla4, m.marca, p.descripcion from producto p
	inner join categoria c on p.idCategoria = c.idCategoria
	inner join marca m on p.idMarca = m.idMarca
	inner join detalle_compra dc on p.idProducto = dc.idProducto
	inner join proveedor pro on dc.idProveedor = pro.idProveedor
	inner join talla t on p.idTalla= t.idTalla
	order by  p.idProducto desc 
end
go


exec selectAllProducto
*/
---------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------
/*
create procedure selectById @idProducto int
as
begin
select p.idProducto, c.categoria,p.nombre, dc.cantidad,p.moneda, p.precioCompra, p.tipoDeCambio, p.precioVenta, p.IGV, pro.nombrePro,
	t.talla1, t.talla2, t.talla3, t.talla4, m.marca, p.descripcion from producto p
	inner join categoria c on p.idCategoria = c.idCategoria
	inner join marca m on p.idMarca = m.idMarca
	inner join detalle_compra dc on p.idProducto = dc.idProducto
	inner join proveedor pro on dc.idProveedor = pro.idProveedor
	inner join talla t on p.idTalla= t.idTalla
	where p.idProducto = @idProducto
	order by  p.idProducto desc 
end
go


exec selectById 1

*/
---------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------

/*
create procedure EditarProducto
					@idProducto int,
					@nomProducto varchar(70),
					@cantidad int,
					@moneda varchar(1),
					@precioCompra decimal(18,5),
					@tipoCambio decimal(18,5),
					@precioVenta decimal(18,5),
					@IGV decimal,
					@proveedor varchar(100),
					@talla1 varchar(35),
					@talla2 varchar(35),
					@talla3 varchar(35),
					@talla4 varchar(35),
					@categoria int,
					@marca varchar(30),	
					@descripcion varchar(200),
					@img image
as
begin
	declare @idMarca int
	declare @idTalla int


	select @idMarca = pm.idMarca from producto pm
	where pm.idProducto = @idProducto


	select @idTalla = pt.idTalla  from producto pt
	where pt.idProducto = @idProducto

	update producto set nombre = @nomProducto, precioCompra =  @precioCompra, precioVenta=@precioVenta,moneda=@moneda,tipoDeCambio=@tipoCambio,
	Stock=@cantidad,imgProducto = @img, descripcion = @descripcion,IGV=@IGV, idMarca=@idMarca, idTalla=@idTalla, idCategoria=@categoria
	where idProducto = @idProducto


	update marca set marca = @marca
	where idMarca = @idMarca

	update talla set talla1 = @talla1, talla2=@talla2, talla3=@talla3, talla4=@talla4
	where idTalla = @idTalla

	update detalle_compra set cantidad = @cantidad, totalCompra = @precioCompra
	where idProducto = @idProducto

	update proveedor set nombrePro = @proveedor
	where idProveedor = @idProducto
end
go


exec EditarProducto 1,'chompa',20,2,50,3.4,0.5,1,3,'nike','m','Abriga rico','masdsadsadsa'
*/
---------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------

/*
create procedure SQL_delete_produc 
				@idProducto int

as
begin
declare @idTalla int
declare @idMarca int

select @idTalla = idTalla from producto
where idProducto = @idProducto

select @idMarca = idMarca from producto
where idProducto = @idProducto


delete from detalle_compra where idDetalleCompra = @idProducto

delete from producto where idProducto = @idProducto

delete from marca where idMarca = @idMarca

delete from talla where idTalla = @idTalla

delete from proveedor where idProveedor = @idProducto

end
go

exec SQL_delete_produc 1
go
*/
/*
alter procedure compraProducto
			@id1 int,
			@id2 int,
			@id3 int,
			@id4 int,
			@id5 int,
			@cantidad1 int,
			@cantidad2 int,
			@cantidad3 int,
			@cantidad4 int,
			@cantidad5 int,
			@nombreCompleto varchar(60),
			@dni varchar(10),
			@telefono1 varchar(10),
			@telefono2 varchar(10),
			@departamento varchar(50),
			@provincia varchar(50),
			@distrito varchar(50),
			@direccion varchar(100),
			@totalProductos decimal,
			@costoEnvio decimal,
			@IGV decimal,
			@totalPagar decimal,
			@modoPago varchar(60),
			@cuenta varchar(50),
			@idUsuario int

as
begin
	declare @idDetalleEnvio int
	declare @idEnvio int
	declare @fechaCompra datetime
	declare @fechaEntrega datetime
	declare @idVenta int

	
	set @fechaCompra = GETDATE ()


	insert into costoEnvio values (@costoEnvio)
	set @idDetalleEnvio = SCOPE_IDENTITY()
	
	set @fechaEntrega = DATEADD(DD, 3,GETDATE() )
	insert into envio values (@departamento,@provincia,@distrito,@direccion,@fechaEntrega,@idDetalleEnvio)
	set @idEnvio = SCOPE_IDENTITY()

	
	insert into venta values (@fechaCompra,'pendiente',@idEnvio)
	set @idVenta = SCOPE_IDENTITY()

	insert into usuarioVenta values (@telefono1,@telefono2,@nombreCompleto,@dni,@idUsuario,@idVenta)

	insert detalleVenta values (@IGV,@totalPagar,@modoPago,@cuenta,@idVenta)


	insert into ventaProducto values (@idVenta,@id1,@cantidad1,@totalProductos)

	insert into ventaProducto values (@idVenta,@id2,@cantidad2,@totalProductos)

	insert into ventaProducto values (@idVenta,@id3,@cantidad3,@totalProductos)

	insert into ventaProducto values (@idVenta,@id4,@cantidad4,@totalProductos)

	insert into ventaProducto values (@idVenta,@id5,@cantidad5,@totalProductos)

end
go



exec compraProducto


*/
/*
create procedure listaVentaPendiente
as
begin

select v.idVenta,uv.nombreCompleto,convert(date,v.fecha) as fecha,dv.totalventa,v.estado,e.provincia+' '+e.departamento+' '+e.distrito as destino,e.direccion from venta v
inner join detalleVenta dv on v.idVenta = dv.idVenta
inner join envio e on v.idEnvio = e.idEnvio
inner join usuarioVenta uv on v.idVenta = uv.idVenta
where v.estado = 'pendiente'
end
go

exec listaVentaPendiente
*/
-------------------------------------------------------------------------------------------------------------------------------------
/*
create procedure listaVentaEnviado
as
begin

select v.idVenta,uv.nombreCompleto,convert(date,v.fecha) as fecha,dv.totalventa,v.estado,e.provincia+' '+e.departamento+' '+e.distrito as destino,e.direccion from venta v
inner join detalleVenta dv on v.idVenta = dv.idVenta
inner join envio e on v.idEnvio = e.idEnvio
inner join usuarioVenta uv on v.idVenta = uv.idVenta
where v.estado = 'enviado'
end
go

exec listaVentaEnviado
*/
-----------------------------------------------------------------------------------------------------------------------------------------

/*
create procedure listaVentaEntregado
as
begin

select v.idVenta,uv.nombreCompleto,convert(date,v.fecha) as fecha,dv.totalventa,v.estado,e.provincia+' '+e.departamento+' '+e.distrito as destino,e.direccion,CONVERT(date,e.fecha) as fechaEntrega from venta v
inner join detalleVenta dv on v.idVenta = dv.idVenta
inner join envio e on v.idEnvio = e.idEnvio
inner join usuarioVenta uv on v.idVenta = uv.idVenta
where v.estado = 'entregado'
end
go

exec listaVentaEntregado
*/


--venta
--usuario venta
--envio
--detalle venta

/*
create procedure detalleVentaProducto1 @idventa int
as
begin
select v.idVenta,uv.nombreCompleto,e.provincia+' '+e.departamento+' '+e.distrito as destino,e.direccion,convert(date,v.fecha) as fecha,v.estado,dv.tarjeta as cuenta,dv.IGV,ce.costo,dv.totalventa,convert(date,e.fecha) as fechaEntrega
from venta v
inner join detalleVenta dv on v.idVenta = dv.idVenta
inner join envio e on v.idEnvio = e.idEnvio
inner join costoEnvio ce on e.idCostoEnvio = ce.idCostoEnvio
inner join usuarioVenta uv on v.idVenta = uv.idVenta
where v.idVenta = @idventa
end
go

exec detalleVentaProducto1 7
*/
/*
create procedure detalleVentaProducto2 @idventa int
as
begin
select v.idVenta, p.idProducto,p.nombre,vp.cantidad,vp.totalProductos,p.IGV, p.descripcion from venta v
inner join ventaProducto vp on v.idVenta = vp.idVenta
inner join producto p on vp.idProducto = p.idProducto
where v.idVenta =@idventa
end
go

exec detalleVentaProducto2 16

*/

/*
create procedure updateEstadoEnviado @idVenta int,
									@estado varchar(20)
as
begin

update venta set estado = @estado
where idVenta = @idVenta

end
go

exec updateEstadoEnviado 1, 'enviado'

*/
------------------------------------------------------------------------------------------------------------------------------
--REPORTES DE VENTAS


alter procedure reporteProducto @fecha int
as
begin
select p.idProducto,pro.nombrePro,p.nombre, p.precioCompra,p.Stock,dc.totalCompra from producto p
inner join detalle_compra dc on p.idProducto = dc.idProducto
inner join proveedor pro on dc.idProveedor = pro.idProveedor
where MONTH(p.fechaRegistro) = @fecha
end
go

exec reporteProducto 7

select * from producto
-----------------------------