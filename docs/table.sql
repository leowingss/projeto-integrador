CREATE DATABASE IF NOT EXISTS quarentine_sports CHARSET utf8mb4;

USE quarentine_sports;

CREATE TABLE IF NOT EXISTS produtos (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(150),
preco DECIMAL,
image VARCHAR(500),
categoria VARCHAR(150)
);

CREATE TABLE IF NOT EXISTS usuarios ( 
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (150) NOT NULL,
email VARCHAR (150) NOT NULL,
senha VARCHAR (150) NOT NULL,
endereco VARCHAR (150) NOT NULL
);

CREATE TABLE IF NOT EXISTS pedidos( 
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
data_pedido DATE, 
usuario_id INT UNSIGNED NOT NULL,
produto_id INT UNSIGNED NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

INSERT INTO produtos (nome,preco,image,categoria)VALUES ('Esteira',3000, '/images/esteira.png', 'Equipamentos');

SELECT * FROM produtos;
