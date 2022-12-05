CREATE DATABASE Petshop;
USE Petshop;

CREATE TABLE especie (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    alimentacao VARCHAR(255) NOT NULL
);

CREATE TABLE animais (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    data_nasc DATE NOT NULL,
    peso DECIMAL(8,2) CHECK (peso>0),
    cor VARCHAR(60) NOT NULL,
    especie_id INT,
    FOREIGN KEY (especie_id) REFERENCES especie(id)
);

INSERT INTO especie VALUES
    (null, 'gato', 'carnívoro'),
    (null, 'cachorro', 'carnívoro'),
    (null, 'morcego', 'onívoro'),
    (null, 'rato', 'onívoro'),
    (null, 'ramister', 'herbívoro'),
    (null, 'baleia', 'carnívoro'),
    (null, 'sardinha', 'herbívoro'),
    (null, 'bacalhau', 'herbívoro'),
    (null, 'tubarão', 'carnívoro'),
    (null, 'lambari', 'herbívoro'),
    (null, 'corvina', 'herbívoro'),
    (null, 'iguana', 'herbívoro'),
    (null, 'camaleão', 'herbívoro'),
    (null, 'lagarto', 'herbívoro'),
    (null, 'cobra', 'carnívoro'),
    (null, 'cacatua', 'herbívoro'),
    (null, 'pardal', 'onívoro'),
    (null, 'bentevi', 'herbívoro'),
    (null, 'canario', 'herbívoro'),
    (null, 'virus', 'null'),
    (null, 'bactéria' , 'null'),
    (null, 'barata', 'null'),
    (null, 'carcará', 'null'),
    (null, 'polvo', 'null'),
    (null, 'nautilus', 'null')
;

INSERT INTO animais VALUES
    (null, 'ágata', '2015-4-9', 13.9, 'branco' , 1),
    (null, 'félix', '2016-6-6', 14.3, 'preto'  , 1),
    (null, 'tom', '2013-2-8', 11.2, 'azul'   , 1),
    (null, 'garfield', '2015-7-6', 17.1, 'laranja', 1),
    (null, 'frajola', '2013-8-1', 13.7, 'preto'  , 1),
    (null, 'manda-chuva', '2012-2-3', 12.3, 'amarelo', 1),
    (null, 'snowball', '2014-4-6', 13.2, 'preto'  , 1),
    (null, 'ágata', '2015-8-3', 11.9, 'azul' 	 , 1),
    (null, 'ágata', '2016-3-4', 18.6, 'roxo'  , 1),
    (null, 'gato de botas', '2012-12-10', 11.6, 'amarelo', 1),
    (null, 'bola de pelo', '2020-04-06', 11.6, 'amarelo', 2),
    (null, 'milu', '2013-2-4', 17.9, 'branco'  , 2),
    (null, 'pluto', '2012-1-3', 12.3, 'amarelo' , 2),
    (null, 'pateta', '2015-5-1', 17.7, 'preto'   , 2),
    (null, 'snoopy', '2013-7-2', 18.2, 'branco'  , 2),
    (null, 'bidu', '2012-9-8', 12.4, 'azul'    , 2),
    (null, 'dum dum', '2015-4-6', 11.2, 'laranja' , 2),
    (null, 'muttley', '2011-2-3', 14.3, 'laranja' , 2),
    (null, 'scooby', '2012-1-2', 19.9, 'marrom'  , 2),
    (null, 'rufus', '2014-4-5', 19.7, 'branco'  , 2),
    (null, 'costelinha'	, '2016-5-2', 13.4, 'branco'  , 2),
    (null, 'coragem', '2013-7-8', 12.2, 'vermelho', 2),
    (null, 'jake', '2012-2-7', 11.6, 'vermelho', 2),
    (null, 'k900', '2012-11-25', 11.6, 'amarelo', 2),
    (null, 'gato de botas', '2012-11-25', 11.6, 'amarelo', 2),
    (null, 'jerry', '2010-2-4', 06.6, 'laranja', 4),
    (null, 'ligeirinho'	, '2011-5-3', 04.4, 'amarelo', 4),
    (null, 'mikey', '2012-7-1', 02.2, 'preto'  , 4),
    (null, 'minie', '2013-9-3', 03.2, 'preta'  , 4),
    (null, 'topo gigio'	, '2016-6-8', 05.5, 'amarelo', 4),
    (null, 'bafo de onça', '2016-6-8', 05.5, 'amarelo', null),
    (null, 'susan murphy', '2016-6-8', 05.5, 'amarelo', null),
    (null, 'insectosauro', '2016-6-8', 05.5, 'amarelo', null),
    (null, 'gallaxhar', '2016-6-8', 05.5, 'amarelo', null),
    (null, 'hathaway', '2016-6-8', 05.5, 'amarelo', null),
    (null, 'tutubarão', '2010-2-6', 101.9 , 'branca' , 9),
    (null, 'prof. pardal', '2012-4-4', 1.7   , 'amarelo', 17),
    (null, 'mobie', '2014-5-2', 5069.4, 'branca' , 6),
    (null, 'batman', '2013-7-1', 96.1  , 'preto'  , 3)
;

SELECT * FROM especie WHERE alimentacao LIKE '%voro';
SELECT * FROM especie WHERE alimentacao = 'carnívoro' AND NOT (nome = 'iguana' OR nome = 'camaleão' OR nome = 'lagarto' OR nome = 'cobra');
SELECT * FROM especie WHERE alimentacao = 'onívoro' OR alimentacao = 'herbívoro' ORDER BY nome ASC;
SELECT * FROM especie WHERE id NOT IN (1,2,3,4,5,6) ORDER BY nome DESC;
SELECT * FROM especie WHERE alimentacao = 'null';
SELECT * FROM animais WHERE especie_id = 1 AND (cor = 'branco' OR cor = 'preto') AND peso < 15;
SELECT * FROM animais WHERE especie_id = 4 AND peso BETWEEN 1 AND 4 AND NOT (cor = 'laranja' OR cor = 'amarelo');
SELECT * FROM animais WHERE nome LIKE '%u%' AND (cor = 'branco' OR cor = 'branca') AND peso > 20;
SELECT * FROM animais WHERE data_nasc < (NOW() - INTERVAL 3 YEAR) AND especie_id = 1 ORDER BY data_nasc DESC;
SELECT * FROM animais WHERE especie_id IS NULL AND NOT cor = 'amarelo';
