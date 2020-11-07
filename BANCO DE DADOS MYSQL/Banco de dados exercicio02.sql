#criando database
create database exercicio02;
#usando database
use exercicio02;
#criando tabela
create table produtos(
codigo int auto_increment primary key,
produto varchar (40),
categoria varchar (20),
valor double,
cadastro date
);

describe produtos; 
insert into produtos (produto,categoria,valor,cadastro) values 
('Smartphone Samsung A8 ','telefonia',1400.00,'2019-07-22'),
('Notebook Acer A650 ','informática','3800.00', '2019-03-19'),
('Telefone sem fio Intelbras', 'telefonia', 129.90,'2018-12-20'),
('iPhone XR','telefonia',549.900,' 2019-07-08'),
('Notebook Dell Espiron 500','informática', 3975.80,' 2019-01-29'),
('All in one LG A8574', 'informática',2547.12, ' 2019-02-13'),
('Smartphone Motorola G7', ' telefonia', 799.00, '2019-05-03'),
('Notebook Acer Axpros 47',  '     informática',2857.00, '2019-08-16'),
('Smartphone Asus Zenfone 6', '    telefonia',2356.00, '2018-07-29'),
('Smartphone Samsung J4', null, 1700.00,'2018-06-16');
drop table produtos;
select * from produtos;
select count(*) from produtos;
select valor, produto from produtos ;
SET SQL_SAFE_UPDATES = 0;
update produtos set categoria = 'telefonia' where categoria is null;
SELECT categoria, COUNT(*)FROM produtos GROUP BY categoria;
SELECT categoria , AVG ( valor) FROM produtos group by categoria;
select produto, min(valor) from produtos;
select * from produtos where categoria like 't%'; # Iniciam em t 
select categoria  , valor  from produtos;
SELECT * FROM produtos WHERE categoria = 'telefonia' ;
select cadastro , produto from produtos;
delete from produtos where produto = 'Smartphone Samsung J4' ;
select * from produtos;
select codigo  from produtos;
drop database exercicio02;




