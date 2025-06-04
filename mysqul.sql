create database locadora;
use locadora;
create table cliente(
id_cliente int not null auto_increment,
nome_cli varchar(100),
sexo char(1),
data_nasc date,
rg varchar(20),
cpf varchar(20),
primary key(id_cliente)
);

create table endereco(
id_endereco int not null auto_increment,
cod_cliente int,
rua varchar(100),
num_casa varchar(10),
bairro varchar(100),
cidade varchar(100),
estado varchar(100),
cep varchar(50),
primary key(id_endereco)
);

drop table endereco;

create table telefone(
id_tel int not null auto_increment,
cod_cliente int,
numero_tel varchar(50),
primary key(id_tel)
);

drop table telefone;

create table veiculo(
id_veiculo int not null auto_increment,
nome_car varchar(100),
modelo varchar(100),
fabricante varchar(100),
data_fab date,
cor varchar(50),
placa varchar(15),
primary key(id_veiculo)
);
create table atendente(
id_atend int not null auto_increment,
nome_atend varchar(100),
primary key(id_atend)
);
insert veiculo(nome_car,modelo,fabricante,data_fab,cor,placa) value("Jetta","2.0 TSI","VW","2014/12/30","Preto","PGUA)

create table contrato(
id_contrato int not null auto_increment,
nome_contrato varchar(100),
cod_cliente int,
cod_atend int,
cod_carro int,
preco float,
data_aluguel date,
primary key(id_contrato)
);

create table manuntencao(
id_manuntencao int not null auto_increment,
servico varchar(100),
cod_carro int, 
valor_reparo float,
primary key(id_manuntencao)
);


desc cliente;
desc endereco;
desc telefone;
desc veiculo;
desc contrato;
desc atendente;

insert into cliente (nome_cli, sexo, data_nasc, rg, cpf) values
("Macário josé","M","2000/12/30","12345678-9","123.456.789-89");

insert into cliente(nome_cli, sexo, data_nasc, rg, cpf) values
("Angelina Fernades","F","2005/06/10","98765432-1","456789123-12");

select * from cliente;

ALTER TABLE endereco
ADD FOREIGN KEY (cod_cliente) REFERENCES cliente(id_cliente);

insert into endereco (cod_cliente, rua, num_casa, bairro, cidade, estado, cep)values
("1","Rua das Ripas","50","Jardim América","Paranaguá","Paraná","83209-210");

insert into endereco (cod_cliente, rua, num_casa, bairro, cidade, estado, cep)values
("2","Rua Alípio dos Santos","1001","Bockman","Paranaguá","Paraná","83209-201");

select * from endereco;

ALTER TABLE telefone
ADD FOREIGN KEY (cod_cliente) REFERENCES cliente(id_cliente);

insert into telefone(cod_cliente, numero_tel) values("1","41-98431-5520");
insert into telefone(cod_cliente,numero_tel)values("1","41-98431-2221");
insert into telefone(cod_cliente,numero_tel)values("2","41-98431-1011");

select*from telefone;
select*from cliente;





