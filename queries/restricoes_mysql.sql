CREATE DATABASE Pets;
USE Pets;

CREATE TABLE pets (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    peso DECIMAL(5,2) CHECK (peso>0)
)engine=INNODB;

INSERT INTO pets VALUES (NULL, 'milady', 0);


-- ---------- --


CREATE DATABASE Estoque;
USE Estoque;

CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL UNIQUE,
    preco_custo DECIMAL(9,2),
    preco_venda DECIMAL(9,2),
    lucro DECIMAL(9,2) AS (preco_venda-preco_custo),
    CHECK(preco_custo<preco_venda)
)engine=INNODB;

INSERT INTO produtos VALUES (null, 'joão paulo', 28.5, 38.5, null)


CREATE TABLE fornecedores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL UNIQUE,
    cidade VARCHAR(40),
    estado CHAR(2) DEFAULT 'SP'
)engine=INNODB;

INSERT INTO fornecedores VALUES (NULL, 'joão paulo', 'patroplínio', NULL); -- valor do estado fica NULL
INSERT INTO fornecedores(id, nome, cidade) VALUES (NULL, 'jpfalcuci', 'patroplínio'); -- insere o SP
