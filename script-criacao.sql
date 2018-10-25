create database sac;
use sac;

create table pesssoa (
cod_pessoa int auto_increment,
nome varchar(150),
cpf char(11),
contato char(20),
email varChar(150),
primary key (cod_pessoa)
);

insert into pessoa (nome, cpf, contato, email,)
values ('Maria',71000000000,30000021,'maria@gmail.com'),
('Edward',72000000000,30000022,'edward@gmail.com'),
('Elizete',73000000000,30000023,'elizete@gmail.com'),
('Ellen',74000000000,30000024,'ellen@gmail.com'),
('Eveline',75000000000,30000025,'eveline@gmail.com');

select * from pessoa;

drop database sac;
