create database exercicio06;
use exercicio06;
create table fabricantes(
idFabricante int auto_increment primary key,
nome varchar(30)
);

create table categoria(
idCategoria int auto_increment primary key,
nome varchar (30)
);

create table produtos(
idProdutos int auto_increment primary key,
nome varchar (30),
valor double,
fabricante int,
categoria int,
foreign key (fabricante) references fabricantes(idFabricante),
foreign key (categoria) references categoria(idCategoria)
);
insert into fabricantes values
(null,"Apple"),
(null,"Brastemp"),
(null,"Consul"),
(null,"Dell"),
(null,"General Electric"),
(null,"Microsoft"),
(null,"Philipes"),
(null,"Samsung"),
(null,"Sony");

insert into categoria values
(null,"Áudio e Video"),
(null,"Ar e Ventilação"),
(null,"Eletrodomésticos"),
(null,"Informatica"),
(null,"Telefonia");

insert into produtos values
(null,"Ar Condicionado", "1400","2",2),
(null,"Televisão Led 32","2100","7",1),
(null,"Fone de Ouvido", "160","7", 1),
(null,"Aparelho de som", "950","9",1),
(null,"Telefone fixo", "140","7",5),
(null,"Fritadeira", "400","5",3),
(null,"Televisão Full HD","4290","8",1),
(null,"Notebook A98","3900","4",4),
(null,"Surface Pro","5300","6",4),
(null,"iMac 27"," 12000","1",4);
select
	produtos.idProdutos,
    categoria.idCategoria,
    fabricantes.idFabricantes
    
    
	
