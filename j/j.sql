create database Banco;
USE Banco;

create table Usuario (
id_usuario int primary key auto_increment not null,
 email varchar(30) not null,
 senha varchar(30) not null,
 nome varchar(30) not null,
 data_nascimento varchar(30) not null,
creatAt datetime,
 updateAt datetime
 );
 
 create table Clientes (
 id_cliente int primary key auto_increment not null,
   nome varchar(30) not null,
   telefone varchar(15) not null,
id_endereco int
);

create table Clientes_endereco (
id_cliente_endereco int primary key auto_increment not null,
  rua varchar(20),
  cep varchar(20),
  bairro varchar(20),
  cidade varchar(20)
);

create table Estoque (
id_estoque int primary key auto_increment not null,
  id_produto int,
  quantidade int
);

create table Venda (
id_venda int primary key auto_increment not null,
  id_usuario int,
  id_produto int,
  token varchar(30),
  createdAt datetime,
  updateAt datetime
);

create table Produto (
id_produto int primary key auto_increment not null,
  nome varchar(100),
  codigo_de_barras varchar(100),
  createdAt datetime,
  updatedAt datetime
  );
  
  ALTER TABLE Clientes ADD foreign key (id_endereco)
  REFERENCES Clientes_endereco(id_clientes_endereco);
  ALTER TABLE Estoque ADD foreign key (id_produto)
  REFERENCES Produto(id_produto);
  ALTER TABLE Venda ADD foreign key (id_usuario)
  REFERENCES Usuario(id_usuario);
  ALTER TABLE Venda ADD foreign key (id_produto)
  REFERENCES Produtos(id_produto);