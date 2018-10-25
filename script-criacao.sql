create database web_bank;
use web_bank;

create table clientes (
cod_cliente int auto_increment,
nome varchar(255),
cpf char(11),
primary key (cod_cliente)
);

insert into clientes (nome,cpf)
values ('fabio',11111111111),
('Joao', 22222222222),
('Luana',33333333333),
('Fê',44444444444),
('Ailton',55555555555);

select * from clientes;

drop database web_bank;