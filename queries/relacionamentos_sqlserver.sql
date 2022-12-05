-- https://sqliteonline.com/ => MS SQL

CREATE TABLE Pessoa (
    id_pessoa INTEGER PRIMARY KEY IDENTITY,
    nome VARCHAR(255),
    endereco VARCHAR(255),
    cidade VARCHAR(255)
);

CREATE TABLE Carro (
    id_carro INTEGER PRIMARY KEY IDENTITY,
    nome VARCHAR(255),
    marca VARCHAR(255),
    id_pessoa INTEGER,
    CONSTRAINT fk_PesCarro FOREIGN KEY (id_pessoa) REFERENCES Pessoa(id_pessoa)
);
