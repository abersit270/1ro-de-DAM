
-- create schema tarea2_tema2;
-- use tarea2_tema2;


create table cliente(
CodCliente bigint primary key,
DNI char(9) unique,
Nombre varchar(45) not null,
Dirección varchar(45),
Teléfono varchar(12));

create table Coche(
Matrícula varchar(20) primary key,
Marca varchar(20) not null,
Modelo varchar(45) not null,
Color varchar(45),
PrecioHora double);

create table avala(
Avalado bigint primary key auto_increment,
constraint avalado foreign key (Avalado) references cliente (CodCliente),
Avalador bigint not null,
constraint avalador foreign key (Avalador) references cliente (CodCliente));

create table Reserva(
Número bigint primary key auto_increment,
FechaInicio date,
FechaFin date,
PrecioTotal decimal(15,2),
CodCliente bigint,
constraint clientes foreign key (CodCliente) references cliente (CodCliente));

create table incluye(
Número bigint auto_increment,
constraint numeroINC foreign key (Número) references Reserva (Número),
Matrícula varchar(20),
constraint matriculaINC foreign key (Matrícula) references Coche (Matrícula),
litrosGas float,
primary key(Número,Matrícula));





-- alter table Coche
-- modify PrecioHora decimal(15,2);
-- alter table Coche
-- add Matrícula varchar(20) primary key ;

