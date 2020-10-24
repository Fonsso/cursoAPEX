#criar base de dados
CREATE DATABASE base;

#seleconar base de dados
USE base;

#criar tabbela
CREATE TABLE clientes(
	codigo INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    cidade VARCHAR(30)

);
#adicionar nova coluna
    ALTER TABLE clientes ADD COLUMN cadastro DATETIME;
    #cadastrar cliente
    INSERT INTO clientes VALUES (NULL, 'Beatriz', 'Blumenau ',NOW());
    INSERT INTO clientes(nome, cidade, cadastro) VALUES
    ('Roberto firmino', 'Blumenau ',' 2020-06-02 11:06:28'),
    ('Suares',' Gaspar ',' 2020-06-04 11:19:59');
    #selecionar clientes
    SELECT * FROM clientes;
	#contar e agrupar dados
	SELECT cidade, COUNT(*)FROM clientes GROUP BY cidade;
    #formatar datas
    SELECT nome, 
    DATE_FORMAT(cadastro, '%d / %m / %y')AS 'Data',
	DATE_FORMAT(cadastro, '%h / %i') AS 'Hora'
    FROM clientes;
	#remover cliente de codigo 2
    DELETE FROM clientes WHERE codigo = 2;
    #Remover todos os clientes e reiniciar nova contagem 
    TRUNCATE TABLE clientes;
    DELETE FROM clientes;
    #cadastrar novo cliente
    INSERT INTO clientes VALUES (NULL, 'Nayara', 'Blumanau', NOW());
    #remover base de dados
    DROP DATABASE base;
    

