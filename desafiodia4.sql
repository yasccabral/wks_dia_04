CREATE DATABASE loja_de_jogo;
USE loja_de_jogo;
 
-- Criar 3 tabelas c/ 3-5 colunas c/ no mínimo 3 variáveis diferentes
CREATE TABLE jogo(
	preco FLOAT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    id INT,
    
    PRIMARY KEY  (id)  
);

CREATE TABLE cliente(
    nome VARCHAR(100) NOT NULL,
    CPF VARCHAR(20), 
    categoria CHAR,
    idade INT,
    
    
    PRIMARY KEY (CPF)   
);

CREATE TABLE estoque(
	quantidade INT NOT NULL,
    id INT,
    categoria CHAR,
    marca VARCHAR(30),
    
    PRIMARY KEY (id)
);

    -- Adicione uma nova coluna em cada tabela
    ALTER TABLE jogo ADD COLUMN plataforma VARCHAR(20);
    ALTER TABLE cliente ADD COLUMN telefone VARCHAR(20);
    ALTER TABLE estoque ADD COLUMN desenvolvedor VARCHAR(50);
    
-- - Insira dados nas colunas de cada tabela
INSERT INTO 
jogo(preco, nome, id, plataforma) 
VALUES (99.50, 'the sims', 12345,'multiplataforma' ),
(150.90, 'pacman', 67890, 'arcade'),
(199.99, 'bully', 98765, 'multiplataforma');

INSERT INTO 
cliente(nome, CPF, categoria, idade, telefone) 
VALUES 
('pedro', '159-854-762-97', 'A', '18', '(83)94875-5762'),
('germano', '148-357-987-62', 'B', '19', '(83)91536-9542'),
('bruna', '956-784-128-98', 'C', '20', '(83)91546-7461');

INSERT INTO 
estoque(quantidade, id, categoria, marca, desenvolvedor) 
VALUES 
(50, 12345, 'B', 'EA', 'EA Los Angeles'),
(60, 67891, 'A', 'Ubisoft', 'Ubisoft Montreal'),
(70, 98765, 'C', '2K', 'Rockstar North'); 

-- Remova uma coluna de cada tabela
ALTER TABLE jogo DROP COLUMN plataforma;
ALTER TABLE cliente DROP COLUMN telefone;
ALTER TABLE estoque DROP COLUMN desenvolvedor;

-- Mostre o conteúdo de cada tabela
SELECT * FROM jogo;
SELECT * FROM cliente;
SELECT * FROM estoque;

-- Mostre o conteúdo de cada tabela utilizando alguma condição específica
SELECT * FROM jogo WHERE preco > 150;
SELECT * FROM cliente WHERE categoria = 'C';
SELECT * FROM estoque WHERE marca = 'EA' AND quantidade < 60;