CREATE DATABASE Animais;
USE Animais;

CREATE TABLE animais (
    animal_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome_animal VARCHAR(50) NOT NULL,
    data_nasc DATE NOT NULL,
    peso DECIMAL(10,2),
    cor VARCHAR(50)
);

INSERT INTO animais VALUES
    (NULL, 'Ágata', '2015-04-09', 13.9, 'branco'),
    (NULL, 'Félix', '2016-06-06', 14.3, 'preto'),
    (NULL, 'Tom', '2013-02-08', 11.2, 'azul'),
    (NULL, 'Garfield' , '2015-07-06', 17.1, 'laranja'),
    (NULL, 'Frajola', '2013-08-01', 13.7, 'preto'),
    (NULL, 'Manda-chuva', '2012-02-03', 12.3, 'amarelo'),
    (NULL, 'Snowball', '2014-04-06', 13.2, 'preto'),
    (NULL, 'Ágata', '2015-08-03', 11.9, 'azul'),
    (NULL, 'Ágata', '2016-03-04', 18.6, 'roxo'),
    (NULL, 'Gato de Botas', '2012-12-10', 11.6, 'amarelo'),
    (NULL, 'Bola de pelo', '2020-04-06', 11.6, 'amarelo'),
    (NULL, 'Milu', '2013-02-04', 17.9, 'branco'),
    (NULL, 'Pluto', '2012-01-03', 12.3, 'amarelo'),
    (NULL, 'Pateta', '2015-05-01', 17.7, 'preto'),
    (NULL, 'Snoopy', '2013-07-02', 18.2, 'branco'),
    (NULL, 'bidu', '2012-09-08', 12.4, 'azul'),
    (NULL, 'Dum Dum', '2015-04-06', 11.2, 'laranja'),
    (NULL, 'Muttley', '2011-02-03', 14.3, 'laranja'),
    (NULL, 'Scooby', '2012-01-02', 19.9, 'marrom'),
    (NULL, 'Rufus', '2014-04-05', 19.7, 'branco'),
    (NULL, 'Costelinha', '2016-05-02', 13.4, 'branco'),
    (NULL, 'Coragem', '2013-07-08', 12.2, 'vermelho'),
    (NULL, 'Jake', '2012-02-07', 11.6, 'vermelho'),
    (NULL, 'K900', '2012-11-25', 11.6, 'amarelo'),
    (NULL, 'Jerry', '2010-02-04', 06.6, 'laranja'),
    (NULL, 'Ligeirinho', '2011-05-03', 04.4, 'amarelo'),
    (NULL, 'Mikey', '2012-07-01', 02.2, 'preto'),
    (NULL, 'Minie', '2013-09-03', 03.2, 'preta'),
    (NULL, 'Topo Gigio', '2016-06-08', 05.5, 'amarelo'),
    (NULL, 'Bafo de Onça', '2016-01-08', 15.5, 'amarelo'),
    (NULL, 'Susan Murphy', '2021-02-08', 03.5, 'vermelho'),
    (NULL, 'Insectosauro', '2016-01-08', 35.8, 'amarelo'),
    (NULL, 'Gallaxhar', '2020-06-08', 05.5, 'azul'),
    (NULL, 'Hathaway', '2019-03-08', 85.5, 'roxo'),
    (NULL, 'Tutubarão', '2010-02-06', 101.9, 'branca'),
    (NULL, 'Prof. Pardal', '2012-04-04', 1.7, 'amarelo'),
    (NULL, 'Mobie', '2014-05-02', 5069.4, 'branca'),
    (NULL, 'Batman', '2013-07-01', 96.1, 'preto')
;

SELECT * FROM animais;
SELECT * FROM animais WHERE peso > 15;
SELECT * FROM animais WHERE cor = 'laranja';
SELECT * FROM animais WHERE cor <> 'preto';
SELECT * FROM animais WHERE peso <= 13;
SELECT * FROM animais WHERE peso >= 10 AND peso < 20;
SELECT * FROM animais WHERE cor IN ('preto', 'branco');
SELECT * FROM animais WHERE cor = 'azul' AND peso = 14;
SELECT * FROM animais WHERE cor IN ('branco', 'azul', 'verde');
SELECT * FROM animais WHERE peso BETWEEN 80 AND 100;
SELECT * FROM animais WHERE nome_animal LIKE 'Mi%';
SELECT * FROM animais ORDER BY peso;
SELECT * FROM animais ORDER BY nome_animal;
SELECT * FROM animais WHERE cor IN ('branco', 'preto', 'marrom') ORDER BY peso;
SELECT * FROM animais ORDER BY nome_animal DESC;
SELECT * FROM animais ORDER BY peso DESC;

SELECT * FROM animais WHERE cor IN ('branco', 'azul', 'verde');
SELECT * FROM animais WHERE peso >= 10 AND peso < 20;
SELECT * FROM animais WHERE nome_animal LIKE 'Mi%';
SELECT * FROM animais WHERE peso BETWEEN 80 AND 100;

SELECT * FROM animais ORDER BY nome_animal;
SELECT * FROM animais ORDER BY peso;
SELECT * FROM animais WHERE cor IN ('branco', 'preto', 'marrom') ORDER BY peso;
SELECT * FROM animais ORDER BY nome_animal DESC;
SELECT * FROM animais ORDER BY peso DESC;
SELECT * FROM animais ORDER BY nome ASC;

SELECT * FROM animais
WHERE DAY(data_nasc) >= 22 AND MONTH(data_nasc) = 12
OR DAY(data_nasc) <= 19 AND MONTH(data_nasc) = 1;
