----- Nota Fiscal ----
create table  n_fiscal
(n_nf number(5) primary key,
dt_nf date not null,
total_nf number (10,2));

select constraint_name from user_constraints where table_name = 'N_FISCAL'

desc n_fiscal

---- PRODUTO ----
create table  produto
(cd_pro number(5) constraint prod_cd_pk primary key,
nm_prod varchar2(30) constraint prod_nm_nn not null
constraint prod_nm_uk unique,
preco number (10,2));

select constraint_name from user_constraints where table_name = 'PRODUTO'

---- Tem -----
create table tem
(fk_nota number(5) constraint tem_nf_fk references n_fiscal,
fk_prod number (5) constraint tem_prod_fk references produto)

--inserindo dados----
Comando DML - Data Mapulation Language
Novas linhas: 
insert into nome_tabela values
(valor1, valor2,...., valorN)

Obs: campos: char, varchar ou varchar 2 e date precisam de ap?strofe 

Exemplo 1 
conhecendo ou visualizando a estrutura
desc n_fiscal
insert into n_fiscal values (1,'10-Jan-00',5000);

verificando a inser??o
select * from n_fiscal

descobrindo o padr?o da data
select sysdate from dual

gravados dados fisicamente
commit;

------ Atividade 1 -------

create table cliente
(CodCli number(4) constraint cliente_CodCli_pk primary key,
Prenome varchar(50) constraint cliente_Prenome_nn not null,
Sobrenome varchar(50),
Endereco varchar(70),
Telefone varchar(20));

insert into cliente values (1,'Jo?o', 'Silva','Rua da Cruz sem P?',4444-1111);
insert into cliente values (2,'Ant?nio', 'Ferreira',' Av. da Vila Velha ',6660-9333);
insert into cliente values (3,'Fabio', 'Dias',' Rua Antonio Vieira ',2337-0393);
insert into cliente values (4,'Andreia', 'Melo','Rua da Praia Bonita',8989-7777);
insert into cliente values (5,'Murilo', 'Fontes','Av. dos Autonomistas',9090-9090);

-----

create table ator
(AtorCodator number(4) constraint ator_AtorCodator_pk primary key,
Nome_popular varchar(50) constraint ator_Nome_popular_nn not null,
Nome_artistico varchar(50),
Datanasc date);

------

create table Categoria
(Codcateg number(4) constraint categoria_Codcateg_pk  primary key,
Descricao varchar(50) constraint categoria_Descricao_nn not null);

insert into Categoria values (1, 'Com?dia');
insert into Categoria values (2, 'Drama');
insert into Categoria values (3, 'Aventura');
insert into Categoria values (4, 'Terror');
 
-----

create table Filme
(CodFilme number(4) constraint filme_CodFilme_pk primary key,
Titulo varchar(70) constraint filme_Titulo_pk not null;
fk_categoria number(4) constraint filme_categoria_fk references categoria;)

insert into filme values (1,'Sai pra l?',1 );
insert into filme values (2,'Ajuda Eterna',2 );
insert into filme values (3,'Anjos Malditos ',2 );
insert into filme values (4,'Pânico II ',4 );
insert into filme values (5,'Um dia de furia',3 );
insert into filme values (1,'Lente Cega',3 );
insert into filme values (2,'Sinais do Tempo',2 );
insert into filme values (3,'A melodia da vida ',1 );

select * from filme;
commit;


------

create table DVD
(NumDVD number(4) constraint dvd_NumDVD_pk primary key,
Tipo char(1));

----

create table Aluga
(fk_cliente number(5) constraint aluga_nf_fk references cliente, ---
fk_dvd number (5) constraint aluga_prod_fk references dvd);

create table Estrela
(fk_ator number(5) constraint ator_Estrela_fk references ator, ---
fk_filme number (5) constraint filme_Estrela_fk references filme);






----- 
01/03/23
uso do cascade permite eliminar o relacionamento e depois dropar a tabela

Atuaalizando dados

Update 

operadores: aritméticos: + - * / ()
            relacionais: > >= < <= = != ou <>
            lógicos: and or not
            
update nome_tabela set nome_coluna = novo_valor

update nome_tabela set nome_coluna = novo_valor
where condição

create table produto_tb 
(cod_prod number(4) constraint prod_cod_pk primary key, 
unidade varchar2(3),descricao varchar2(20),val_unit number(10,2))

 

insert into produto_tb values ('25','KG','Queijo','0.97');
insert into produto_tb values ('31','BAR','Chocolate','0.87');
insert into produto_tb values ('78','L','Vinho','2.00');
insert into produto_tb values ('22','M','Linho','0.11');
insert into produto_tb values ('30','SAC','Acucar','0.30');
insert into produto_tb values ('53','M','Linha','1.80');
insert into produto_tb values ('13','G','Ouro','6.18');
insert into produto_tb values ('45','M','Madeira','0.25');
insert into produto_tb values ('87','M','Cano','1.97');
insert into produto_tb values ('77','M','Papel','1.05');
commit;

select * from produto_tb

update produto_tb set val_unit = val_unit + (val_unit * 0.15) where cod_prod > 30;
update produto_tb set descricao = 'Queijo de Minas' where descricao = 'Queijo';
update produto_tb set val_unit = 0 where descricao = 'Acucar' or descricao = 'Madeira' or descricao = 'Linha';
alter table

select * from produto_tb

----- 
08/03/23

Eliminando linha(s)
todas
delete from nome_tabela
algumas
delete from nome_tabela where condição

Apagando tudo
select * from produto_tb
delete from cidade_tb

Gravando os dados em disco: commit
Desfazendo DML: rollback

---
Ex1
create table cidade_tb
(cod_cid number(4) constraint cid_cod_pk primary key, 
nome varchar(30) constraint cid_nome_nn not null)

select * from cidade_tb;

drop table socio_tb

---
Ex2
create table socio_tb
(cpf char(11) constraint soc_cpf_pk primary key, 
nome varchar(20) constraint soc_nome_nn not null,
data_nasc date constraint soc_dt_nn not null,
rg varchar (15) constraint soc_rg_nn not null, 
cidade number (4) constraint soc_cidade_fk references cidade_tb
                  constraint soc_cidade_nn not null)

select * from socio_tb;

---
Ex3
alter table cidade_tb add Uf char(2) not null;
select * from cidade_tb;

---
Ex4
alter table socio_tb add Fone varchar(10) not null;
alter table socio_tb add Sexo char(1) not null;












    