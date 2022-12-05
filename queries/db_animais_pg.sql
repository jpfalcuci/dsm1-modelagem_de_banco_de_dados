CREATE DATABASE Animais;

CREATE TABLE animais (
	animal_id SERIAL PRIMARY KEY,
	nome_animal VARCHAR(50) NOT NULL,
	data_nasc DATE NOT NULL,
	peso DECIMAL(10,2),
	cor VARCHAR(50)
);

INSERT INTO animais (nome_animal, data_nasc, peso, cor) VALUES
	('Ágata', '2015-04-09', 13.9, 'branco'),
	('Félix', '2016-06-06', 14.3, 'preto'),
	('Tom', '2013-02-08', 11.2, 'azul'),
	('Garfield', '2015-07-06', 17.1, 'laranja'),
	('Frajola', '2013-08-01', 13.7, 'preto'),
	('Manda-chuva', '2012-02-03', 12.3, 'amarelo'),
	('Snowball', '2014-04-06', 13.2, 'preto'),
	('Ágata', '2015-08-03', 11.9, 'azul'),
	('Ágata', '2016-03-04', 18.6, 'roxo'),
	('Gato de Botas', '2012-12-10', 11.6, 'amarelo'),
	('Bola de pelo', '2020-04-06', 11.6, 'amarelo'),
	('Milu', '2013-02-04', 17.9, 'branco'),
	('Pluto', '2012-01-03', 12.3, 'amarelo'),
	('Pateta', '2015-05-01', 17.7, 'preto'),
	('Snoopy', '2013-07-02', 18.2, 'branco'),
	('bidu', '2012-09-08', 12.4, 'azul'),
	('Dum Dum', '2015-04-06', 11.2, 'laranja'),
	('Muttley', '2011-02-03', 14.3, 'laranja'),
	('Scooby', '2012-01-02', 19.9, 'marrom'),
	('Rufus', '2014-04-05', 19.7, 'branco'),
	('Costelinha', '2016-05-02', 13.4, 'branco'),
	('Coragem', '2013-07-08', 12.2, 'vermelho'),
	('Jake', '2012-02-07', 11.6, 'vermelho'),
	('K900', '2012-11-25', 11.6, 'amarelo'),
	('Jerry', '2010-02-04', 06.6, 'laranja'),
	('Ligeirinho' , '2011-05-03', 04.4, 'amarelo'),
	('Mikey' , '2012-07-01', 02.2, 'preto'),
	('Minie', '2013-09-03', 03.2, 'preta'),
	('Topo Gigio', '2016-06-08', 05.5, 'amarelo'),
	('Bafo de Onça', '2016-01-08', 15.5, 'amarelo'),
	('Susan Murphy', '2021-02-08', 03.5, 'vermelho'),
	('Insectosauro', '2016-01-08', 35.8, 'amarelo'),
	('Gallaxhar', '2020-06-08', 05.5, 'azul'),
	('Hathaway', '2019-03-08', 85.5, 'roxo'),
	('Tutubarão', '2010-02-06', 101.9 , 'branca'),
	('Prof. Pardal', '2012-04-04', 1.7 , 'amarelo'),
	('Mobie', '2014-05-02', 5069.4, 'branca'),
	('Batman', '2013-07-01', 96.1 , 'preto')
;

SELECT * FROM aniamis;
SELECT * FROM aniamis WHERE peso > 15;
SELECT * FROM aniamis WHERE cor = 'laranja';
SELECT * FROM aniamis WHERE cor <> 'preto';
SELECT * FROM aniamis WHERE peso <= 13;
SELECT * FROM aniamis WHERE peso >= 10 AND peso < 20;
SELECT * FROM aniamis WHERE cor in ('preto', 'branco');
SELECT * FROM aniamis WHERE cor = 'azul' AND peso = 14;
SELECT * FROM aniamis WHERE cor IN ('branco', 'azul', 'verde');
SELECT * FROM aniamis WHERE peso BETWEEN 80 AND 100;
SELECT * FROM aniamis WHERE nome_animal LIKE 'Mi%';
SELECT * FROM aniamis ORDER BY peso;
SELECT * FROM aniamis ORDER BY nome_animal;
SELECT * FROM aniamis WHERE cor IN ('branco', 'preto', 'marrom') ORDER BY peso;
SELECT * FROM aniamis ORDER BY nome_animal DESC;
SELECT * FROM aniamis ORDER BY peso ASC;

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
WHERE (extract(DAY FROM data_nasc) >= 22 AND extract(MONTH FROM data_nasc) = 12)
OR (extract(DAY FROM data_nasc) <= 19 AND extract(MONTH FROM data_nasc) = 1);
