-- 3 - Crie um banco de dados para registrar dados de Filmes e Categorias.
-- Um filme tem seu título, sinopse, estudio e categoria.
-- Uma categoria deve ter nome e público alvo.
-- Faça a modelagem relacional, DER.
-- Insira pelo menos 8 Filmes e 3 Categorias.

CREATE DATABASE Locadora;
USE Locadora;

CREATE TABLE categoria (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL UNIQUE,
    publico_alvo VARCHAR(60) NOT NULL
);

CREATE TABLE estudio (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL UNIQUE
);

CREATE TABLE filme (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(60) NOT NULL,
    sinopse VARCHAR(255) NOT NULL,
    id_categoria INT,
    id_estudio INT,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id),
    FOREIGN KEY (id_estudio) REFERENCES estudio(id)
);

INSERT INTO categoria VALUES
    (NULL, "ação", "público ação"),
    (NULL, "comédia", "público comédia"),
    (NULL, "terror", "público terror")
;

INSERT INTO estudio VALUES
    (NULL, "estúdio 01"),
    (NULL, "estúdio 02"),
    (NULL, "estúdio 03")
;

INSERT INTO filme VALUES
    (NULL, "nome filme 01", "sinopse filme 01", 2, 1),
    (NULL, "nome filme 02", "sinopse filme 03", 1, 2),
    (NULL, "nome filme 03", "sinopse filme 03", 3, 2),
    (NULL, "nome filme 04", "sinopse filme 04", 3, 3),
    (NULL, "nome filme 05", "sinopse filme 05", 2, 1),
    (NULL, "nome filme 06", "sinopse filme 06", 1, 2),
    (NULL, "nome filme 07", "sinopse filme 07", 1, 3),
    (NULL, "nome filme 08", "sinopse filme 08", 2, 1)
;
