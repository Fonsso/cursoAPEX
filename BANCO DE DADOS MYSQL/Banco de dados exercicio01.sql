create database exercicio01;
use exercicio01;
create table uzuarios(
nome varchar (20),
sobrenome varchar (40),
idade int
);
rename table uzuarios to usuarios;
alter table usuarios add column email varchar(40);
alter table usuarios  drop column sobrenome;
insert into usuarios values
('Vanessa',16,'vanessa.rosa@gmail.com'),
('Adailton',22,'adailton.mas@yahoo.com'),
('Mayra',24,'mayra_antunes@gmail.com'),
('Cristiane',14,'cris.maya@gmail.com'),
('Carina',27,'carina.almeida@gmail.com'),
(' Clóvis',29,'clovis.simao@hotmail.com'),
('Gabriela ',23,'gabriela.bragantino@live.com'),
('Cibele',null,'cibele_lins@uol.com.br');
select * from usuarios;
select count(*)from usuarios;
select * from usuarios;
select * from usuarios where idade <= 17;
select * from usuarios;
select nome, idade, email from usuarios where idade = (select max(idade) from usuarios);
select * from usuarios where idade is null;
update usuarios set idade = 27 where idade is null;
select * from usuarios;
delete  from usuarios where idade <  18;
select * from usuarios;
drop table usuarios;
drop database exercicio01;








