-- https://sqliteonline.com/ => MS SQL

CREATE TABLE produtos (
    id INT PRIMARY KEY IDENTITY,
    nome VARCHAR(60) NOT NULL UNIQUE,
    preco_custo DECIMAL(9,2),
    preco_venda DECIMAL(9,2),
    lucro AS preco_venda-preco_custo,
    CHECK(preco_custo<preco_venda)
);

INSERT INTO produtos(nome, preco_custo, preco_venda) VALUES ('joão paulo', 28.5, 38.5)


CREATE TABLE fornecedores (
    id INT PRIMARY KEY IDENTITY,
    nome VARCHAR(60) NOT NULL UNIQUE,
    cidade VARCHAR(40),
    estado CHAR(2) DEFAULT 'SP'
);

INSERT INTO fornecedores(nome, cidade) VALUES ('jpfalcuci', 'patroplínio');
