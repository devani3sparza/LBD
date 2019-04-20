CREATE DATABASE RESTAURANT

USE RESTAURANT

create table Restaurante (
restaurante_id int not null,
nombre_restaurant varchar (45),
email_r varchar,
descripcion_r text,
ciudad int not null,
telefono varchar (10),
constraint pk_res primary key(restaurante_id)
)

create table Mesa (
id_mesa int not null,
#Personas varchar (45),
Area_restaurant int not null,
constraint pk_mes primary key(id_mesa)
)

create table Plato(
plato_id int not null,
nombre_plato varchar(45),
descripcion_p text,
precio_p money,
constraint pk_pla primary key(plato_id)
)

create table Bebida(
bebida_id int not null,
nombre_bebida varchar(45),
descripcion_b text,
precio_b money,
constraint pk_beb primary key(bebida_id)
)

create table Personal(
personal_id int not null,
nombre_emple varchar(30),
apellido_p varchar (30),
apellido_m varchar(30),
cargo text,
constraint pk_per primary key(personal_id)
)

create table Cliente(
cliente_id int not null,
nombre_clie varchar(45),
apellidoc_p varchar (30),
apellidoc_m varchar(30),
email_c varchar,
constraint pk_cli primary key(cliente_id)
)

create table Pedido(
pedido_id int not null,
UsCliente varchar(45),
Plato_id int not null,
Direccion_pedido text,
Fecha datetime,
constraint pk_ped primary key(pedido_id)
)

create table Cargo_Personal(
Puesto varchar(45),
descripcion_cp text,
)

create table Turno(
turno_id int not null,
descripcion_t text,
constraint pk_tur primary key(turno_id)
)

create table Ticket(
ticket_id int not null,
restaurante_id int not null,
id_mesa int not null,
Plato_id int not null,
Bebida_id int not null,
Total money,
constraint pk_tic primary key(ticket_id)
)



select *from Cliente
select *from Restaurante
select *from Mesa
select *from Personal
select *from Pedido
select *from Cargo_Personal
select *from Turno
select *from Plato
select *from Ticket
select *from Bebida
