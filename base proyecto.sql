
create database rosy3;
use rosy3;

CREATE TABLE usuarios (
  id_usuarios int primary key not null,
  usuario varchar(100) not null,
  password varchar(100) not null,
  email varchar(100) not null,
  nombre varchar(100) not null,
  apellidos varchar(100) not null,
  DNI int(11) not null,
  telefono int(11) not null,
  sexo char(1) not null,
  cargo text not null,
  estado text not null
);

CREATE TABLE clientes (
 id_clientes int primary key not null,
 nombre varchar(50) not null,
 apellido varchar(45) not null,
 telfono int not null,
 DNI char(8) not null,
 sexo char(1) not null,
 direccion varchar(45) not null,
 id_usuarios int
);

create table producto(
 id_producto int primary key not null,
 tipo varchar(60) not null,
 marca varchar(60) not null,
 precio char(10) not null,
 detalle varchar(100) not null
);

create table tienda(
 id_tienda int primary key not null,
 nombre varchar(60) not null,
 direccion varchar(45) not null,
 telfefono varchar(9) not null
);

create table pedido(
 id_pedido int primary key not null,
 nombre varchar(60) not null,
 Estado int not null,
 Precio char(10) not null,
 id_admin int,
 id_repartidor int,
 id_clientes int,
 id_producto int,
 id_tienda int
);

create table repartidor(
 id_repartidor int primary key not null
);

create table administrador(
 id_admin int primary key not null,
 nombre varchar(60) not null,
 apellido varchar(45) not null,
 id_usuarios int
);


alter table clientes
add constraint fk_1
foreign key (id_usuarios)
references usuarios (id_usuarios);
-------------------------
alter table pedido
add constraint fk_2
foreign key (id_admin)
references administrador (id_admin);
------------------------
alter table pedido
add constraint fk_3
foreign key (id_repartidor)
references repartidor (id_repartidor);
----------------------
alter table pedido
add constraint fk_4
foreign key (id_clientes)
references clientes (id_clientes);
---------------------------
alter table pedido
add constraint fk_5
foreign key (id_producto)
references producto (id_producto);
-------------------------------
alter table pedido
add constraint fk_6
foreign key (id_tienda)
references tienda (id_tienda);
-------------------------------
alter table administrador
add constraint fk_7
foreign key (id_usuarios)
references usuarios (id_usuarios);
