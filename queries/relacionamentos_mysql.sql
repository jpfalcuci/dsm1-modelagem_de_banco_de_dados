CREATE DATABASE Relacionamentos;
USE Relacionamentos;


CREATE TABLE cidades (
    id INT,
    nome VARCHAR(60),
    populacao INT,
    PRIMARY KEY (id)
) engine=INNODB;

CREATE TABLE animais (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    data_nasc DATE NOT NULL,
    peso DECIMAL(8,2) CHECK (peso>0),
    id_especie INT,
    FOREIGN KEY(id_especie) REFERENCES especie(id)
);


INSERT INTO cidades VALUES
    (1, 'Patrosítio', 15000),
    (2, 'Sorocaba', 12000),
    (3, 'Tatuí', 7000),
    (4, 'São Paulo', 300000),
(5, 'Itú', 5000);

INSERT INTO alunos VALUES
    (1, 'Marie Curie', 3),
    (2, 'Alan Turing', 1),
    (3, 'Claude Shannon', 4),
    (4, 'Charles Darwin', 5),
(5, 'Linn Margulis', 2);
