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
UPDATE produtos SET image = '/images/tenis-adidas.jpg' WHERE id = 25;
UPDATE produtos SET image = '/images/tenis-asics.jpg' WHERE id = 27;
UPDATE produtos SET image = '/images/top-fitness.jpg' WHERE id = 24;
UPDATE produtos SET image = '/images/shorts-saia.jpg' WHERE id = 22;
UPDATE produtos SET image = '/images/calca-legging.jpg' WHERE id = 20;

-- UPDATE NAS IMAGENS


-- ADICIONANDO COLUNA DESCRIÇÃO --------------------------------- 

ALTER TABLE produtos ADD descricao VARCHAR(2000) NOT NULL;

-- ADICIONANDO COLUNA DESCRIÇÃO ---------------------------------


-- ADICIONANDO DESCRIÇÕES  

UPDATE produtos SET descricao = " Decidiu sair do sedentarismo e deixar o corpo em movimento por mais tempo, mas não gosta de academias cheias ou não tem tempo? Então essa Esteira foi desenvolvida para você. Aumente sua performance com a esteira de corrida. Adaptada a uma prática regular de forte intensidade, é ideal para treinar em casa próximo a uma vista bonita ou assistindo seu programa preferido." WHERE id = 1;
UPDATE produtos SET descricao = "Bicicleta com banco ajustável para o seu maior conforto. Além de muito divertido, praticar spinning pode trazer benefícios à sua saúde desde a primeira pedalada. Isso porque a atividade aeróbica, unida às músicas e ao ambiente descontraído, promovem diversos estímulos positivos ao organismo:
Queima calorias: estima-se que uma hora de spinning pode mandar embora até 700 calorias;
Melhora a saúde cardíaca: a prática constante ajuda a reduzir a pressão arterial, o colesterol e melhorar a capacidade respiratória;
Tonifica músculos e reduz a celulite: ajuda a trabalhar os músculos das pernas, glúteos, abdome e até dos braços, o spinning acelera a circulação, eliminando a celulite;" WHERE id = 2;

-- ADICIONANDO DESCRIÇÕES 


-- EDITANDO ARQUIVO DAS IMAGENS


UPDATE produtos SET image = "/images/relogio1.jpg" WHERE id = 34;
UPDATE produtos SET image = "/images/relogio2.jpg" WHERE id = 35;
UPDATE produtos SET image = "/images/muaithai1.jpg" WHERE id = 36;
UPDATE produtos SET image = "/images/boxeadidas.jpg" WHERE id = 37;
UPDATE produtos SET image = "/images/muaithairosa.jpg" WHERE id = 38;
UPDATE produtos SET image = "/images/muaithaipreto.jpg" WHERE id = 39;


-- EDITANDO ARQUIVO DAS IMAGENS




-- NOVO PRODUTO 


INSERT INTO produtos (id,nome,preco,image,categoria,descricao)VALUES (42,'Coqueteleira',15, '/images/coqueteleira.jpg', 'Acessórios', " A Coqueteleira Max Titanium é um recipiente ideal e prático para você preparar shakes e suplementos.Ela tem capacidade para te 700 ml. Ideal para seu dia a dia na musculação!");

-- NOVO PRODUTO 


-- NOVO PRODUTO

UPDATE produtos SET descricao = "Prático e confortável, o Elíptico Magnético Polimet proporciona à você momentos maravilhosos de exercícios com muito conforto e segurança. O aparelho permite trabalhar a capacidade cardiorrespiratória e efetuar um treino completo, solicitando numerosos músculos do corpo.
Os músculos que poderão ser trabalhados são coxas, glúteos, pernas e também os músculos secundários: costas, ombros, peitorais e braços. Este aparelho conta com um movimento muito suave e agradável, produzindo ao mesmo tempo em efeito queimador de calorias muito importante, graças à forte solicitação do sistema cardiovascular e o sistema respiratório. Você atingirá rapidamente os objetivos de forma e perda de peso! " WHERE id = 3;

-- NOVO PRODUTO

-- PRODUTOS MASCULINO
UPDATE produtos SET descricao = "Aberturas Laterais Que Fornecem Um Melhor Caimento" WHERE id = 10;
UPDATE produtos SET descricao = "A pedida certa para você que ama praticar esportes em dias com a temperatura mais baixa, essa Jaqueta com Capuz Oxer foi confeccionada em materiais leves e resistentes, que proporcionam alto conforto dentro e fora das academias. " WHERE id = 11;
UPDATE produtos SET descricao = "É confeccionada em material macio com ótimo caimento no corpo e design clássico para maior versatilidade no dia a dia. Garanta já a sua camiseta masculina" WHERE id = 12;
UPDATE produtos SET descricao = "Desenvolvido para a PRATICANTE DE SKI e de SNOWBOARD que procura uma blusa térmica TÉCNICA e EXTENSÍVEL que proporcione CALOR." WHERE id = 13;
UPDATE produtos SET descricao = "Regata básica masculina, confeccionada em malha ribana de algodão. A malha proporciona um caimento perfeito" WHERE id = 14;
UPDATE produtos SET descricao = "O Short de Corrida Run Dry conta com tecido que absorve e elimina a transpiração. Com ele você também terá maior praticidade, graças ao bolso interno para chaves. (Modelo sem cueca interna)." WHERE id = 15;
UPDATE produtos SET descricao = "Meia Lupo Running Performance Cano Curto Dupla Camada" WHERE id = 16;
UPDATE produtos SET descricao = "Desenvolvida para o praticante de SKI ou de SNOWBOARD que procura uma uma calça segunda pele térmica para neve quente e respirável." WHERE id = 17;
UPDATE produtos SET descricao = "Confeccionado em material sintético com detalhes em material têxtil, garantindo maior conforto e respirabilidade, a estrutura é firme e possui perfuros para circulação de ar. A entressola em eva traz a tecnologia Evasense, EVA com dupla densidade que oferece maciez e conforto ao caminhar, e o solado em borracha frisada garante melhor aderência ao solo. Aposte na Olympikus para completar o seu look esportivo em grande estilo!" WHERE id = 18;
UPDATE produtos SET descricao = "Calça  masculina face básica esportiva" WHERE id = 28;
UPDATE produtos SET descricao = "Calça Térmica Segunda Pele Roupas Térmicas Frio Intenso Respirável - Masculina" WHERE id = 30;



