create database if not exists GymManager;

use GymManager;

create table usuario(
id_usuario int primary key auto_increment,
login varchar(50) not null,
senha varchar(50) not null,
nivel_acesso varchar(20)
);

create table cliente(
id_cliente int primary key auto_increment,
id_usuario int not null,
nome varchar(50) not null,
valor decimal(10,2) not null
);

create table plano(
id_plano int primary key auto_increment,
nome_plano varchar(50) not null,
valor decimal(10,2) not null);

create table matricula(
id_matricula int primary key auto_increment,
id_cliente int not null,
id_plano int not null,
data_inicio date not null,
foreign key (id_cliente) references cliente(id_cliente),
foreign key (id_plano) references plano(id_plano)
);


