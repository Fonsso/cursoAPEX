create database exercicio05;
use exercicio05;

create table marcas(
codigo int auto_increment primary key,
nome varchar (30)
);

create table produtos(
codigo int auto_increment primary key,
nome varchar (30),
valor double,
marca int,
foreign key (marca) references marcas(codigo)
);
insert into marcas values
(null,"Apple"),
(null,"LG"),
(null,"Motorola"),
(null,"Sansung"),
(null,"Sony");

insert into produtos values
(null,"Galax S20", "5000", 4),
(null,"Iphone 11", "4300", 1),
(null,"Iphone Pro Max", "8000",1),
(null,"K12", "1700",  2),
(null,"G8", "1400",3),
(null,"A31", " 2200", 4),
(null,"A51", "3100", 4),
(null,"Iphone Xr", "4000", 1),
(null,"iphone 12", "7000", 1);
select
	marcas.nome,
    count(produtos.codigo)
    from marcas
    left join produtos
    on marcas.codigo = produtos.codigo
    group by marcas.nome;
	select max(valor) from produtos;

SELECT
		produtos.nome,
        marcas.nome,
        produtos.valor
FROM produtos
INNER JOIN marcas
ON produtos.marca = marcas.codigo
AND produtos.valor = (SELECT MAX(valor) FROM produtos);

