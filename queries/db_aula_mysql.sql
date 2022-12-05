CREATE DATABASE Aula;

USE Aula;

CREATE TABLE Alunos (
	id INT,
	nome VARCHAR(30),
	email VARCHAR(50),
	endereco VARCHAR(50),
	date_nasc DATE
);

INSERT INTO Alunos VALUES (1, 'Lilly', 'lilly@gmail.com', 'Rua dos Bobos, 0', '1992-09-18');

SELECT * FROM Alunos;

UPDATE Alunos SET endereco = 'Rua dos Bobos, 19' WHERE nome='Lilly';
UPDATE Alunos SET date_nasc = '2003-06-29' WHERE nome='Lilly';

DELETE from Alunos WHERE nome='Lilly';

DROP DATABASE Aula;
