create database exercicio03;
use exercicio03;
create table alunos(
codigo int auto_increment primary key,
nome varchar (30),
genero varchar (20),
nota1 double,
nota2 double,
nota3 double
);

insert into alunos(nome,genero,nota1,nota2,nota3) values
('Alana',' Feminino', 7,8 ,9.5),
('Brenda',' Feminino', 8.8, 7.3,7.7),
('Gustavo',' Masculino', 9, 9.1, 8.6),
('Júlio',' Masculino', 4.5, 3.9 ,4),
('Jéssica',' Feminino', 7, 6.8, 7),
('Lúcia',' Feminino', 10, 9.8, 10),
('Rony',' Masculino', 5.6, 6.3, 5.9),
('Tamara',' Feminino', 7, 8, 7.5),
('Lucas',' Masculino', 7, 7.1,7.7),
('Lorena',' Feminino',4,4.5, 4.4);
select * from alunos;
select genero, count(*) from alunos group by genero;
select nome, nota1,nota2,nota3  from alunos;
select nome,  (nota1+nota2+nota3 ) /3  from alunos;
select nome, max(nota1+nota2+nota3) /3 from alunos;
select nome, min(nota1+nota2+nota3) /3 from alunos;



