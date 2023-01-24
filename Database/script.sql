drop database if exists Entregas;
create database Entregas charset = UTF8 collate utf8_general_ci;
use Entregas;

create table Entregadores(
    id integer AUTO_INCREMENT not null primary key,
    nome varchar (20) not null,
    email varchar (20) not null,
    senha varchar (10) not null,
    veiculo varchar (30) not null,
);

create table Entrega(
   id_pedido integer AUTO_INCREMENT not null primary key,
   cliente varchar (30) not null,
   endereco varchar (20) not null,
   Produto varchar (30) not null,
   data date not null,
   hora_pedido datetime not null,
   hora_entrega datetime not null,
   hora_fim datetime not null,
   entregador integer not null,

    foreign key(entregador) references Entregadores(id),
);

