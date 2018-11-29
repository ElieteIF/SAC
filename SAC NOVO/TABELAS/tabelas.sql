create database SistemaAlarme;
USE SistemaAlarme;

CREATE TABLE Endereco (
  cidade VARCHAR(50) NOT NULL,
  cep INT NULL,
  bairro VARCHAR(50) NOT NULL,
  rua VARCHAR(245) NOT NULL ,
  Ncasa INT NOT NULL,
  codCasa INT NOT NULL AUTO_INCREMENT,
  complemento VARCHAR(45) NULL,
  PRIMARY KEY (codCasa));

CREATE TABLE Pessoa (
  codPessoa INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  sobrenome VARCHAR(255),
  email VARCHAR(100) NOT NULL,
  contato VARCHAR(15) NOT NULL,
  cpf CHAR(14)NOT NULL,
  senha VARCHAR(15)NOT NULL,
  PRIMARY KEY (codPessoa));

CREATE TABLE Alarme (
  codAlarme INT NOT NULL AUTO_INCREMENT,
  TipoAlarme VARCHAR(100) NOT NULL,
  PRIMARY KEY (codAlarme));


select * from Endereco;
select * from Pessoa;
select * from Alarme;
