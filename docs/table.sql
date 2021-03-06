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
endereco VARCHAR (150)
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




-- EQUIPAMENTOS NOVOS

UPDATE produtos SET descricao = "O Halter RIG é produzido em ferro fundido, com revestimento emborrachado em PVC, altamente resistente. O produto é resistente a oxidação e pode ser facilmente higienizável, já que pode ser lavado.O produto possui formato anatômico e o revestimento protege a pele das mãos do atrito e oferece maior aderência e conforto. O acessório é ideal para treinos com o objetivo de condicionamento físico e fortalecimento muscular." WHERE id = 4;
UPDATE produtos SET descricao = "É um produto leve, feito no tamanho ideal para os exercícios feitos em pé ou sentado e pode ser transportado para qualquer local.O colchonete para ginástica é fabricado com espuma exclusiva que foi desenvolvida com a densidade adequada para diversas práticas esportivas como abdominais, flexões, yoga, exercícios para glúteos e outros. O colchonete para ginastica é ideal para uso em academias, clinicas, apartamentos, casas e até locais externos como parques. " WHERE id = 5;
UPDATE produtos SET descricao = "A Bola de Ginástica 65cm é um item ideal para você que gosta de praticar exercícios físicos, seja em casa ou academias. Ela proporciona um treino prático e rápido e muito eficiente.A Bola de Ginastica Suíça é feita para desenvolver toda a musculatura do corpo. Elá é fabricada com materiais de qualidade, suporta até 150 kg, e é ideal para você aproveitar todos os seus exercícios e atividades. Aproveite a oportunidade e compre a sua hoje mesmo!" WHERE id = 6;
UPDATE produtos SET descricao = "Quando o assunto é se exercitar, o primeiro pensamento que vem à mente e treinar em uma academia, não é mesmo? Mas você sabia que é possível manter a forma de muitas outras maneiras, como, por exemplo, treinar em casa? Para ajudar você nessa missão, a MDI traz a Cama Elástica Trampolim Mini Jump Profissional. Para tonificar a musculatura dos membros e melhorar seu condicionamento físico." WHERE id = 7;
UPDATE produtos SET descricao = "Roda para Exercícios Abdominais e Lombar Compacto e muito fácil de utilizar, a Roda de Exercícios é um potente aparelho que ajuda a construir músculos bem definidos. Ao direcionar a roda para frente, diversos músculos se contraem, favorecendo a tonificação. O principal deles é o abdômen, após algumas semanas percebe-se a diferença, depois, a lombar e músculos estabilizadores da coluna. A pegada anatômica e as rodas largas tornam o produto extremamente confortável e eficiente na construção de um corpo saudável e forte." WHERE id = 8;
UPDATE produtos SET descricao = "Pratique seu HIT com a JUMP ROPE e aumente sua resistência para qualquer atividade física. Ideal para agilidade, aceleração do metabolismo e queima de calorias, a corda de pular JUMP ROPE é uma ótima opção de escolha para suas atividades esportivas. Além disso, a corda melhora o condicionamento físico, tonifica os músculos e aumenta a capacidade cardiorrespiratória." WHERE id = 9;

-- EQUIPAMENTOS NOVOS

-- PRODUTOS FEMININO

UPDATE produtos SET descricao = "Calça Legging Akira Fitness saia lisa tapa bumbum cintura alta feminina - Azul" WHERE id = 19;
UPDATE produtos SET descricao = "Calça feminina modelo legging sem costura, confeccionada em poliamida" WHERE id = 20;
UPDATE produtos SET descricao = "Conjunto Fitness Feminino Top + Short" WHERE id = 21;
UPDATE produtos SET descricao = "Short Saia Fitness Academia Bermuda Legging Suplex, produto excelente para o dia-a-dia ou para prática de exercícios físicos. " WHERE id = 22;
UPDATE produtos SET descricao = "Short duplo, preto por fora e rosa por dentro, comfortavel para treinar e atividades do dia a dia." WHERE id = 23;
UPDATE produtos SET descricao = "O top é confeccionado em malha encorpada, ideal para a prática de esportes. Com decote nadador, alças grossas e acabamento elástico." WHERE id = 24;
UPDATE produtos SET descricao = "Tênis Adidas Runfalcon, preto com detalhes em rosa, super comfortavel e ótima durabilidade." WHERE id = 25;
UPDATE produtos SET descricao = "Tenis Nike Epic React Flyknit Feminino oferece máximo conforto por muito mais tempo, seja durante sua corrida ou durante o seu dia-dia." WHERE id = 26;
UPDATE produtos SET descricao = "Tênis Asics Feminino Corrida Gel Kayano." WHERE id = 27;
UPDATE produtos SET descricao = "Calça legging feminina de corrida Run Dry." WHERE id = 31;
UPDATE produtos SET descricao = "Top em branco com bojo, oferece o máximo comforto para treinos intensos e atividades do dia a dia." WHERE id = 32;
UPDATE produtos SET descricao = "Camiseta Feminina Proteção Solar UV5+ Manga Longa – Cinza – Slim Fitness." WHERE id = 33;

-- PRODUTOS ACESSÓRIOS

UPDATE produtos SET descricao = "A Mi Smart Band 4 representa um salto evolutivo da sua antecessora. É muito intuitiva e útil para fazer o controle de todos os tipos de exercícios, além de que lhe permite visualizar notificações e chamadas que entram no seu telefone celular e controlar a reprodução da música. Duas características importantes de esta pulseira inteligente são sua tela sensível ao toque AMOLED colorida, que oferece mais brilho, é 39,9% maior que a Mi Band 3 e a autonomia da sua bateria." WHERE id = 34;
UPDATE produtos SET descricao = "O Garmin Forerunner é o primeiro relógio GPS multisport para os atletas que querem ter acesso a dados avançados e o máximo rendimento sem prescindir da comodidade. É compatível com os pulsómetros Run, Tri e Swim para obter dados avançados de ritmo cardíaco em cada desporto e dados dinâmicos de corrida e ciclismo completos para uma análise detalhada do rendimento." WHERE id = 35;
UPDATE produtos SET descricao = "É confeccionada em courino de alta qualidade (PU) e possui tecnologia do tratamento antimicrobiano, que evita odores e mantem cheiro agradável, tecnologia chamada EVERFRESH. Composta por tecidos leves e ventiláveis, tecnologia chamada EVERCOOL, que proporcionam uma temperatura ideal e seu ajuste é seguro que garantindo proteção avançada. Este equipamento pode ser usado tanto para treino quanto para luta o uso dele evita lesões no punho." WHERE id = 36;
UPDATE produtos SET descricao = "A Luva Adidas Power 100 é produzida com tecnologia e materiais de altíssima qualidade, sendo ideais para competições e treinos. Uso indicado para boxe, muay thai e Kickboxing. Confeccionada em couro sintético de alto desempenho; Espuma injetada IMF que garante melhor distribuição do impact por toda a luva. Desenvolvida para melhorar e personificar os golpes do lutador, com sistema de fechamento com velcro para melhor ajuste e maior proteção contra lesões no punho." WHERE id = 37;
UPDATE produtos SET descricao = "01 Par de Luvas - Confeccionadas em material sintético de alta qualidade, oferece durabilidade e segurança para absorver os impactos durante treinos e combates.
01 Par de Caneleiras – Com design repaginado e estrutura mais anatômica, as caneleiras contam com uma dupla camada de absorção, sendo 01 cm de EVA e 01 cm de espuma de alta densidade, garantindo maior robustez e resistência em seu preenchimento interno, conferindo um melhor ajuste à perna e maior absorção de impactos em seu treino. Possui sua parte externa revestida por um tecido especialmente desenvolvido para equipamentos de artes marciais, o que confere maior resistência e durabilidade ao produto.
01 Par de Bandagens - Garantem maior proteção e conforto para o punho durante os treinos e maior ajuste às luvas, possui fechamento em velcro. Tamanho: 3 metros.
01 Protetor Bucal - O equipamento superior é modelável. Acompanha caixinha" WHERE id = 38;
UPDATE produtos SET descricao = "Material de alta qualidade ,confeccionado em lona sintética de alta resistência, a lona não desgasta com chutes e socos. Sacos com 3 pontas de apoio, e alças em naylon reforçadas. Acompanha mosquetão para pendurar e Luvas." WHERE id = 39;
UPDATE produtos SET descricao = "Elásticos feitos de borracha profissional látex de alta qualidade e resistência. Como todo exercício aeróbio, auxilia na melhora do sistema circulatório, reduz os níveis de stress, melhora o sono e evita a obesidade. Gera fortalecimento muscular, tanto hipertrofia quanto maior resistência, resultando em consistentes melhoras no condicionamento físico e em maior resistência contra lesões. Os praticantes têm uma significativa melhora na coordenação motora, na mobilidade e apresentam maior flexibilidade. Pode ser utilizado para tratamentos físicos pós-cirurgicos." WHERE id = 40;
UPDATE produtos SET descricao = "O apito é feito de plástico de boa qualidade e é apropriado para árbitros, treinadores, treinamento, instrutores, esportes, professores, salva-vidas, auto-defesa, sobrevivência, emergência, pastoreio, treinamento de pássaros, treinamento de cães, etc." WHERE id = 41;




-- COLUNA QUANTIDADES

ALTER TABLE produtos ADD quantidade tinyint;

UPDATE produtos SET quantidade = 19 WHERE id = 1;
UPDATE produtos SET quantidade = 40 WHERE id = 2;
UPDATE produtos SET quantidade = 32 WHERE id = 3;
UPDATE produtos SET quantidade = 120 WHERE id = 4;
UPDATE produtos SET quantidade = 129 WHERE id = 5;
UPDATE produtos SET quantidade = 219 WHERE id = 6;
UPDATE produtos SET quantidade = 100 WHERE id = 7;
UPDATE produtos SET quantidade = 50 WHERE id = 8;
UPDATE produtos SET quantidade = 79 WHERE id = 9;
UPDATE produtos SET quantidade = 30 WHERE id = 10;
UPDATE produtos SET quantidade = 99 WHERE id = 11;
UPDATE produtos SET quantidade = 34 WHERE id = 12;
UPDATE produtos SET quantidade = 97 WHERE id = 13;
UPDATE produtos SET quantidade = 84 WHERE id = 14;
UPDATE produtos SET quantidade = 55 WHERE id = 15;
UPDATE produtos SET quantidade = 63 WHERE id = 16;
UPDATE produtos SET quantidade = 10 WHERE id = 17;
UPDATE produtos SET quantidade = 22 WHERE id = 18;
UPDATE produtos SET quantidade = 41 WHERE id = 19;
UPDATE produtos SET quantidade = 21 WHERE id = 20;
UPDATE produtos SET quantidade = 19 WHERE id = 21;
UPDATE produtos SET quantidade = 0 WHERE id = 22;
UPDATE produtos SET quantidade = 1 WHERE id = 23;
UPDATE produtos SET quantidade = 22 WHERE id = 24;
UPDATE produtos SET quantidade = 90 WHERE id = 25;
UPDATE produtos SET quantidade = 0 WHERE id = 26;
UPDATE produtos SET quantidade = 9 WHERE id = 27;
UPDATE produtos SET quantidade = 0 WHERE id = 28;
UPDATE produtos SET quantidade = 12 WHERE id = 29;
UPDATE produtos SET quantidade = 90 WHERE id = 30;
UPDATE produtos SET quantidade = 0 WHERE id = 31;
UPDATE produtos SET quantidade = 29 WHERE id = 32;
UPDATE produtos SET quantidade = 12 WHERE id = 33;
UPDATE produtos SET quantidade = 100 WHERE id = 34;
UPDATE produtos SET quantidade = 120 WHERE id = 35;
UPDATE produtos SET quantidade = 99 WHERE id = 36;
UPDATE produtos SET quantidade = 0 WHERE id = 37;
UPDATE produtos SET quantidade = 119 WHERE id = 38;
UPDATE produtos SET quantidade = 86 WHERE id = 39;
UPDATE produtos SET quantidade = 90 WHERE id = 40;
UPDATE produtos SET quantidade = 23 WHERE id = 41;
UPDATE produtos SET quantidade = 4 WHERE id = 42;

