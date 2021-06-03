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

INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (2,'Bike',3300, '/images/bike.png', 'Equipamentos');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (3,'Eliptico',2800, '/images/eliptico.png', 'Equipamentos');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (4,'Halter',50.00, '/images/halter.png', 'Equipamentos');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (5,'Colchonete',50.00, '/images/colchonete.png', 'Equipamentos');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (6,'Bola',100, '/images/bola.png', 'Equipamentos');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (7,'Trampolim',300, '/images/trampolim.png', 'Equipamentos');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (8,'Roda',60, '/images/roda.png', 'Equipamentos');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (9,'Corda',80, '/images/corda.png', 'Equipamentos');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (10,'Bemuda Ginástica',100, '/images/bermudaGinasticaMasc.png', 'Masculino');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (11,'Jaqueta Corrida',300, '/images/jaquetaCorridaMasc.png', 'Masculino');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (12,'Camiseta Corrida',35, '/images/camisetaCorridaMasc.png', 'Masculino');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (13,'Segunda Pele',50, '/images/segundaPeleMasc.png', 'Masculino');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (14,'Regata',40, '/images/regataCorridaMasc.png', 'Masculino');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (15,'Shorts Corrida',20, '/images/shortsCorridaMasc.png', 'Masculino');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (16,'Meias Corrida',20, '/images/meiasCorridaMasc.png', 'Masculino');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (17,'Calça Segunda Pele',60, '/images/calcaSegundaPeleMasc.png', 'Masculino');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (18,'Tenis Caminhada',140, '/images/tenisCaminhadaMasc.png', 'Masculino');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (19,'Calça Legging Saia',95, '/images/calça leggin com saia.jpg', 'Feminino');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (20,'Calça Legging',69, '/images/calça legging.jpg', 'Feminino');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (21,'Conjunto',140, '/images/Conjunto.jpg', 'Feminino');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (22,'Shorts Saia',40, '/images/shorts saia.jpg', 'Feminino');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (23,'Shorts',70, '/images/shorts.jpg"', 'Feminino');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (24,'Top Fitness',30, '/images/top fitness.jpg', 'Feminino');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (25,'Tenis Adidas',320, '/images/tenis adidas.jpg', 'Feminino');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (26,'Tenis Nike',300, '/images/tenis nike.jpg"', 'Feminino');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (27,'Tenis Asics',315, '/images/tenis asics.jpg', 'Feminino');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (28,'Jaqueta Impermeável',300, '/images/jaquetaDestaqMasc.png', 'Masculino');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (29,'Calça de Corrida',150, '/images/calcaDestaqMasc.png', 'Masculino');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (30,'Camiseta Segunda Pele',60, '/images/segundPeleDestaqMasc.png', 'Masculino');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (31,'Legging de Corrida',70, '/images/legCorridaDestaqFem.png', 'Feminino');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (32,'Top',60, '/images/topDestaqFem.png', 'Feminino');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (33,'Manga Longa',90, '/images/mangaLongaDestaqFem.png', 'Feminino');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (34,'Relógio Esportivo',200, '../images/relogio1.jpg', 'Acessórios');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (35,'Relógio Garmin For Runner',900, '../images/relogio2.jpg', 'Acessórios');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (36,'Luva Boxe Everlast',140, '../images/muaithai1.jpg', 'Acessórios');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (37,'Luva Boxe Adidas',140, '../images/boxeadidas.jpg', 'Acessórios');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (38,'Kit Muai Thai',70, '../images/muaithairosa.jpg', 'Acessórios');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (39,'Kit Muai Thai preto',129, '../images/muaithaipreto.jpg', 'Acessórios');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (40,'Corda elástica',30, '/images/cordaelastica.jpg', 'Acessórios');
INSERT INTO produtos (id,nome,preco,image,categoria)VALUES (41,'Apito',15, '/images/apito.jpg', 'Acessórios');



INSERT INTO usuarios (id,nome,email,senha,endereco) VALUES (1,'Bruno', 'bruno@email.com','bruno123', 'Rua Desconhecida');
INSERT INTO usuarios (id,nome,email,senha,endereco) VALUES (2,'Vanessa', 'vanessa@email.com','vanessa123', 'Rua Desconhecida');
INSERT INTO usuarios (id,nome,email,senha,endereco) VALUES (3,'Itamar', 'itamar@email.com','itamar123', 'Rua Desconhecida');
INSERT INTO usuarios (id,nome,email,senha,endereco) VALUES (4,'Leonardo', 'leonardo@email.com','leo123', 'Rua Desconhecida');

INSERT INTO pedidos (id,data_pedido,usuario_id,produto_id) VALUES (1,"2021/06/01",1,4);



-- UPDATE NAS IMAGENS

UPDATE produtos SET image = '/images/shorts.jpg' WHERE id = 23;
UPDATE produtos SET image = '/images/tenis-nike.jpg' WHERE id = 26;
UPDATE produtos SET image = '/images/calca-leggin-com-saia.jpg' WHERE id = 19;

-- UPDATE NAS IMAGENS