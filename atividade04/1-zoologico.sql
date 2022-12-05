-- 1- Crie um banco de dados para armazenar dados de Animais e Espécies.
-- Um animal tem seu nome, data_nasc e peso.
-- Uma espécie tem um nome e uma descrição.
-- Faça a modelagem relacional, DER.
-- Insira pelo menos 8 animais e 3 espécies.

CREATE DATABASE Zoologico;
USE Zoologico;

CREATE TABLE especie (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

CREATE TABLE animais (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    data_nasc DATE NOT NULL,
    peso DECIMAL(8,2) CHECK (peso>0),
    id_especie INT,
    FOREIGN KEY (id_especie) REFERENCES especie(id)
);

INSERT INTO especie VALUES
    (NULL, 'cão', 'mamífero carnívoro, canídeo, subespécie do lobo'),
    (NULL, 'gato', 'mamífero carnívoro, felídeo'),
    (NULL, 'réptil', 'vertebrados tetrápodes e ectotérmicos, reptilia')
;

INSERT INTO animais VALUES
    (NULL, 'Pateta', '2015-05-01', 17.7, 1),
    (NULL, 'Tom', '2013-02-08', 11.2, 2),
    (NULL, 'Insectosauro', '2016-01-08', 0.380, 3),
    (NULL, 'Frajola', '2013-08-01', 13.7, 2),
    (NULL, 'Pluto', '2012-01-03', 12.3, 1),
    (NULL, 'Garfield', '2015-07-06', 17.1, 2),
    (NULL, 'Jake', '2012-02-07', 0.700, 3),
    (NULL, 'Snoopy', '2013-07-02', 18.2, 1)
;



-- postgre

CREATE TABLE especie (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(60) NOT NULL,
	descricao VARCHAR(255) NOT NULL
);

CREATE TABLE animais (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(60) NOT NULL,
	data_nasc DATE NOT NULL,
	peso DECIMAL(8,2) CHECK (peso>0),
	id_especie INT,
	CONSTRAINT fk_especie FOREIGN KEY(id_especie) REFERENCES especie(id)
);

INSERT INTO especie VALUES (DEFAULT, 'canina', 'espécie canina');
INSERT INTO animais VALUES (DEFAULT, 'totó', '2018-06-29', 6.7, 1);
