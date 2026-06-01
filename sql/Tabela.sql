create database if not exists GymManager;

use GymManager;

create table usuario(
id_usuario int primary key auto_increment,
login varchar(50) not null,
senha varchar(50) not null,
nivel_acesso varchar(20)
);