Exemplificando:
1-
create table cargo
(cd_cargo number(3),
nm_cargo varchar2(25),
salario number(8,2));

desc cargo

select object_name from user_objects where object_type = 'TABLE';

drop table cargo

2- criando uma tabela com regras, sem personalização:
create table cargo
(cd_cargo number(3)primary key,
nm_cargo varchar2(25)not null unique,
salario number(8,2));

3-criando uma tabela com regras, com personalização:
create table cargo
(cd_cargo number(3)constraint cargo_cd_pk primary key,
nm_cargo varchar2(25)constraint cargo_nome_nn not null 
                    constraint cargo_nome_uk unique,
salario number(8,2));

select constraint_name, constraint_type from user_constraints
where table_name = 'CARGO'

Criando o relacionamento

1 - 1 - Pk + Fk_Uk
1 - N - Pk + Fk
N - N - não existe em código SQL

create table funcionario
(cd_fun number(3) constraint fun_cd_pk primary key,
nm_fun varchar(30) constraint fun_nm_nn not null,
dt_adm date constraint fun_dt_nn not null,
uf_fun char(2) constraint fun_uf_nn not null,
cargo_fk number(3) constraint fun_cargo_fk references cargo);

desc funcionario

Exercises:

create table n_fiscal
(num_





