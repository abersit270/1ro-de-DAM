create schema tarea3_tema2;
use tarea3_tema2;

create table Socio(
	DNI char(9) primary key,
    Nombre varchar(45) not null,
    Dirección varchar(45),
    Teléfono varchar(12),
    Avalador varchar(45),
    constraint fk_dniSocio foreign key (Avalador) references Socio (DNI));
    
create table Director(
	Nombre varchar(45) primary key,
    Nacionalidad varchar(45));
    
create table Película(
	ID int primary key,
    Título varchar(45) not null,
    Productora varchar(45),
    Nacionalidad varchar(45),
    Fecha date,
    Director varchar(45),
    constraint fk_Director foreign key (Director) references Director (Nombre));
    
create table Actores(
	Nombre varchar(45) primary key,
    Nacionalidad varchar(45),
    Sexo char(1),
    constraint H_M check(Sexo ='H' OR 'M'));

create table Ejemplar(
	ID_Peli int,
    Número int,
    Estado varchar(45),
    primary key (ID_Peli,Número),
    constraint fk_ID_Peli foreign key (ID_Peli) references Película (ID));

create table alquila(
	DNI char(9),
    ID_Peli int,
    Número int,
    FechaAlquiler date,
    FechaDevolución date,
    primary key (DNI,ID_Peli,Número,FechaAlquiler),
    constraint fk_dniAlquila foreign key (DNI) references Socio (DNI),
    constraint fk_Ejemplar foreign key (ID_Peli,Número) references Ejemplar (ID_Peli,Número),
    constraint DevMayor check(FechaDevolución>FechaAlquiler));
    
create table actua(
	Actor varchar(45),
    ID_Peli int,
    Prota char(1) default 'N',
    constraint fk_Actores foreign key (Actor) references Actores (Nombre),
    constraint fk_Película foreign key (ID_Peli) references Película (ID),
    constraint S_N check('N' OR 'S'));
    
    
    

	
