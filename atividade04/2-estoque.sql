-- 2- Crie um banco de dados para registrar dados de Produtos e Marcas. 
-- Um produto deve ter nome, preço de custo, preço de venda, data de validade e marca.
-- Uma marca deve ter, nome, site oficial e telefone.
-- Faça a modelagem relacional, DER.
-- Insira pelo menos 8 Produtos e 3 Marcas.

CREATE DATABASE Estoque;
USE Estoque;

CREATE TABLE marca (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL UNIQUE,
    website VARCHAR(60) NOT NULL UNIQUE,
    telefone BIGINT(14) NOT NULL UNIQUE
);

ALTER TABLE marca MODIFY COLUMN telefone VARCHAR(60);

CREATE TABLE produto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    id_marca INT,
    preco_custo DECIMAL(9,2) CHECK (preco_custo>0),
    preco_venda DECIMAL(9,2) CHECK (preco_venda>0),
    lucro DECIMAL(9,2) AS (preco_venda-preco_custo),
    validade DATE AS (NOW() + INTERVAL 3 MONTH),
    FOREIGN KEY (id_marca) REFERENCES marca(id)
);

INSERT INTO marca VALUES
    (NULL, "knorr", "https://www.knorr.com/br/home.html?gclsrc=ds", "+55 016 12345-6789"),
    (NULL, "maggi", "https://www.nestle.com.br/marcas/culinarios/maggi", "+55 017 12345-6789"),
    (NULL, "kitano", "https://www.kitano.com.br/", "+55 018 12345-6789")
;

INSERT INTO produto VALUES
    (NULL, "sopão carne", 1, 7.67, 12.29, NULL, Null),
    (NULL, "sopão galinha", 1, 6.87, 11.29, NULL, NULL),
    (NULL, "sopão galinha", 2, 5.76, 7.49, NULL, NULL),
    (NULL, "sopão legumes", 2, 4.12, 6.39, NULL, NULL),
    (NULL, "sopão feijão", 3, 4.87, 7.99, NULL, NULL),
    (NULL, "sopão legumes", 3, 4.75, 6.65, NULL, NULL)
;
