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

Obs: campos: char, varchar ou varchar 2 e date precisam de apóstrofe 

Exemplo 1 
conhecendo ou visualizando a estrutura
desc n_fiscal
insert into n_fiscal values (1,'10-Jan-00',5000);

verificando a inserção
select * from n_fiscal

descobrindo o padrão da data
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

insert into cliente values (1,'João', 'Silva','Rua da Cruz sem Pé',4444-1111);
insert into cliente values (2,'Antônio', 'Ferreira',' Av. da Vila Velha ',6660-9333);
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

insert into Categoria values (1, 'Comédia');
insert into Categoria values (2, 'Drama');
insert into Categoria values (3, 'Aventura');
insert into Categoria values (4, 'Terror');
 
-----

create table Filme
(CodFilme number(4) constraint filme_CodFilme_pk primary key,
Titulo varchar(70) constraint filme_Titulo_pk not null);

insert into filme values (1,'Sai pra lá',1 );
insert into filme values (2,'Antônio', 'Ferreira',' Av. da Vila Velha ',6660-9333);
insert into filme values (3,'Fabio', 'Dias',' Rua Antonio Vieira ',2337-0393);
insert into filme values (4,'Andreia', 'Melo','Rua da Praia Bonita',8989-7777);
insert into filme values (5,'Murilo', 'Fontes','Av. dos Autonomistas',9090-9090);

------

create table DVD
NumDVD number(4) constraint dvd_NumDVD_pk primary key,
Tipo char(1));

----

create table Aluga
(fk_cliente number(5) constraint aluga_nf_fk references cliente, ---
fk_dvd number (5) constraint aluga_prod_fk references dvd)

create table Estrela
(fk_ator number(5) constraint ator_Estrela_fk references ator, ---
fk_filme number (5) constraint filme_Estrela_fk references filme)






----- 




    