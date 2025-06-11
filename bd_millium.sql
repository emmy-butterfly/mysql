create database bd_millium;
use bd_millium;
 create table cliente(
 id_cliente int not null auto_increment,
 nome_cli varchar (100),
 sexo char(1),
 data_nasc date,
 rg varchar(20),
 primary key(id_cliente)
);
create table endereco(
id_endereco int not null auto_increment,
cod_cliente int,
rua varchar(100),
bairro varchar(100),
cidade varchar(100),
estado varchar(100),
cep varchar(50),
primary key(id_endereco)
);
create table telefone(
id_telefone int not null auto_increment,
cod_cliente int,
numero_tel varchar(50),
primary key(id_tel)
);
create table produto(
id_produto int not null auto_increment,
nome_prod varchar(50),
marca varchar(20),
modelo varchar(80),
primary key(id_produto)
);
create table venda(
id_venda int not null auto_increment,
cod_produto int,
cod_cliente int,
data_venda varchar(20),
quantidade varchar(80),
valor varchar(90),
primary key(id_venda)
);

