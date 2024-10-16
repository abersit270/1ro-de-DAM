-- use prueba_tema2;
-- create schema tarea1_tema2;
create table monta(
Modelo int,
NIF_M char(9),
FechaMontaje date,
primary key(Modelo,NIF_M,FechaMontaje));

create table compra(
NIF_C char(9),
Modelo int,
FechaCompra date,
primary key(Modelo,NIF_C,FechaCompra));

-- drop table compra;

create table Montador(
NIF char(9) primary key,
Nombre varchar(45),
Dirección varchar(45),
Teléfono varchar(12));

create table Cliente(
NIF char(9) primary key,
Nombre varchar(45),
Dirección varchar(45),
Teléfono varchar(12));

create table modelodormitorio(
Cod double primary key);

alter table compra
add constraint NIF_C foreign key (NIF_C) references cliente (NIF);

alter table compra
add constraint modelo_C foreign key (Modelo) references modelodormitorio (Cod);

alter table monta
add constraint modelo_M foreign key (Modelo) references modelodormitorio (Cod);

alter table monta
add constraint NIF_M foreign key (NIF_M) references Montador (NIF);

-- alter table (compra,
-- drop constraint FK4;

