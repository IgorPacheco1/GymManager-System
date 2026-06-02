drop database if not exists GymManager;
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

create table exercicio(
id_exercicio int primary key auto_increment,
nome_exercicio varchar(100) not null,
grupo_muscular varchar(50)
);

create table treino(
id_treino int primary key auto_increment,
id_cliente int not null,
id_exercicio int not null,
series int,
repeticoes int,
carga decimal(5,2),
foreign key (id_cliente) references cliente(id_cliente),
foreign key (id_exercicio) references exercicio(id_exercicio)
);




