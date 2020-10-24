# criar uma base de dados
CREATE DATABASE projeto_bd;
USE projeto_bd;
# criar tabela
CREATE TABLE clientez(
 nome VARCHAR (20), 
 idade INT
);
#renomear a tabela
RENAME TABLE clientez to clientes;
#obter a estrutura da tabla
DESCRIBE clientes;
#adicionar coluna
ALTER TABLE clientes ADD COLUMN email VARCHAR(30);
#remover coluna
ALTER TABLE clientes DROP COLUMN email;
#inserir clientes
INSERT INTO clientes VALUES ('Afonso',21);
INSERT INTO clientes VALUES
('Afonso',21),
('Yasmim',16),
('Jubscleia',30);
INSERT INTO clientes (nome) VALUES ('Paulo');
#selecionar todos os clientes
SELECT * FROM clientes;
#selecionar dados especificos
SELECT nome FROM clientes;
#selecionar todos os dados e realizar uma condicional
SELECT *, IF(idade >= 18, 'Maior de idade', 'Menor de idade') as 'Verificação' FROM clientes;
#informar a quantidade de clientes
SELECT COUNT(*) FROM clientes ;
#concatenar
SELECT CONCAT(' Foram encontrados ', COUNT(*),' Clientes') FROM clientes;
#obter a maior idade
SELECT MAX(idade) FROM clientes;
#obter a menos idade
SELECT MIN(idade) FROM clientes;
#media das idades
SELECT AVG(idade) FROM clientes;
#filtrar dados com o comando WHERE
SELECT * FROM clientes WHERE idade >= 18;
/*
operadores relacionais
> maior
< menor
>= maior ou igual
<= menor ou igual
= igual
<> diferente

operadores logicos
AND E
OR OU
NOT NÃoptimize


*/
SELECT * FROM clientes WHERE idade  BETWEEN 20 AND  30;
#ordenar dados | ASC DESC
SELECT * FROM clientes ORDER BY idade ASC;
#trabalhando com comando IS (apeas para verificar NULO)
SELECT * FROM clientes WHERE idade IS NULL;
#comparar informações 
SELECT * FROM clientes WHERE nome LIke'%o';#termina em O
SELECT * FROM clientes WHERE nome LIke'b%';#inicia em B
SELECT * FROM clientes WHERE nome LIke'%a';#contem em A
#habilitar alterção de dados
SET SQL_SAFE_UPDATES = 0;
#alterar cliente
UPDATE clientes SET idade = 26 WHERE idade IS NULL;
#remover clientes
DELETE FROM clientes WHERE IDADE < 18;
/*
COMANDOS DML
SELECT
INSERT
UPDATE
DELETE
------------
CRUD(Sistema que utiliza as quatro funçoes DML)
*/
#remover tablea 
#DROP TABLE clientes;
#remover base de dados
#DROP DATABASE projeto_bd;