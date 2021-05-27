CREATE DATABASE IF NOT EXISTS quarentine_sports CHARSET utf8mb4;

USE quarentine_sports;

CREATE TABLE IF NOT EXISTS categorias ( 
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(150) NOT NULL,
slug VARCHAR(150) NOT NULL
);

CREATE TABLE IF NOT EXISTS produtos (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(150),
preco DECIMAL,
image VARCHAR(500)
);


CREATE TABLE IF NOT EXISTS categorias_produtos (
produto_id INT UNSIGNED NOT NULL ,
categoria_id INT  UNSIGNED NOT NULL,
FOREIGN KEY (produto_id) REFERENCES produtos(id),
FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);


SELECT * FROM categorias_produtos;
SELECT * FROM categorias;
SELECT * FROM produtos;