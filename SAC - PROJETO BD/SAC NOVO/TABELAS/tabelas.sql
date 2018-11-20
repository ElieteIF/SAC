create database SistemaAlarme;
USE SistemaAlarme;

CREATE TABLE Endereco (
  cidade VARCHAR(245) NOT NULL,
  cep INT NULL,
  bairro VARCHAR(100) not NULL,
  rua VARCHAR(245) NOT NULL ,
  Ncasa INT NOT NULL,
  codCasa INT NOT NULL AUTO_INCREMENT,
  complemento VARCHAR(45) NULL,
  PRIMARY KEY (codCasa));

CREATE TABLE Pessoa (
  codPessoa INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  email VARCHAR (255) NOT NULL,
  codCasa INT NOT NULL,
  contato INT NOT NULL,
  cpf INT NOT NULL,
  PRIMARY KEY (codPessoa));

CREATE TABLE Alarme (
  codAlarme INT NOT NULL AUTO_INCREMENT,
  TipoAlarme VARCHAR(100) NOT NULL,
  contato INT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  email VARCHAR(150) NULL,
  corAlarme VARCHAR(45) NOT NULL,
  codPessoa INT NOT NULL,
  codCasa INT NOT NULL,
  status TINYINT(1) NOT NULL,
  dataehora DATETIME NOT NULL,
  PRIMARY KEY (codAlarme));


select * from Endereco;
select * from Pessoa;
select * from Alarme;
