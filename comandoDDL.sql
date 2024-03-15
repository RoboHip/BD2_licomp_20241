-- acessando o mysql pelo terminal do xampp
mysql -u root

-- visualiando os bancos de dados instalados 
show databases; 

-- criando um novo banco de dados
create database exemploDB; 

-- acessando o banco de dados
use exemploDB;

-- excluindo um banco de dados
drop database exemploDB;

-- criar o bancoDB
create database bancoDB;

-- acessar o bancoDB
use bancoDB;

-- criando a tabela bancos
create table bancos(
    numero int not null, 
    nome varchar (100) not null, 
    constraint bancos_pk primary key (numero)
);

-- criar a tabela agencias
create table agencias(
    numero varchar(100) not null,
    nome varchar (100) not null,
    telefone int,
    banco int not null,
    constraint agencias_pk
    primary key (numero)
);

-- criar a tabela clientes 
create table clientes(
    id int not null auto_increment,
    nome varchar (100) not null,
    email varchar (100) not null,
    constraint cliente_pk
    primary key (id)
);

-- criar a coluna uf do tipo char com tamanho 2 e valor padrão 'RJ' na tabela clientes
alter table clientes
add uf char(2) default 'RJ';

