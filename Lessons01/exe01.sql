create database db_banco
use db_banco
go

/*
Criar uma tabela de dados no MySQL para clientes de uma empresa de telecomunicações. Esse clientes devem ser gerenciados pelos campos de CPF, Nme, Data de Nascimento, Endereco, CEP, Bairro, Cidade e UF

Após criar a tabela acima especificada adicionar um capo para armazenar a data da ultima compra

Inserir na tablea Cleinte três clientes, conforme seguem:
04496332790, Joao Silva, 22111969, Rua Antonio Nunes, 88045963, Palmeiras, Londrina, PR.
05485031490, Ana Regina Fagundes, 21091986, Rua Palmeias Novas, 88048917, Leblon, Rio de Janeiro, RJ
03350314905, Fernando Soares, 05031990, Rua Palmeias Novas, 88048917, Copacabana, RIo de Janeiro, RJ

Selecionar todos os clientes que residam na cidade do Rio de Janeiro.
Deletar os clientes que residam na cidade de Londrina.
*/

create table clientes(
    cpf int(11) not null primary key,
    nm_cliente varchar(40),
    dt_nasc date,
    endereco varchar(40),
    cep int(8),
    bairro varchar(20),
    uf char(2),
)

alter table clientes add dt_compra date

insert into 
    clientes (cpf,nm_cliente,dt_nasc,endereco,cep,bairro,uf) 
values 
    (04496332790, 'Joao Silva', '22-11-1969', 'Rua Antonio Nunes', 88045963, 'Palmeiras', 'Londrina', 'PR'),
    (05485031490, 'Ana Regina Fagundes', '21-09-1986', 'Rua Palmeias Novas', 88048917, 'Leblon', 'Rio de Janeiro', 'RJ'),
    (03350314905, 'Fernando Soares', '05-03-1990', 'Rua Palmeias Novas', 88048917, 'Copacabana', 'Rio de Janeiro', 'RJ')

select * from clientes where cidade = 'Rio de Janeiro'

delete from cliente where cidade = 'Londrina'