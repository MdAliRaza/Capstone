DROP SCHEMA IF EXISTS normal; -- dropping schema if already present
CREATE SCHEMA normal; -- creating schema normal
USE normal; -- using normal

-----------------------------------
CREATE TABLE name(
name_id integer(3) NOT NULL PRIMARY KEY,
fname VARCHAR(30) NOT NULL,
lname VARCHAR(30) NOT NULL
);


INSERT INTO name(name_id, fname, lname)
VALUES 
(1,'Michael', 'Phelps'),
(2,'Natalie', 'Coughlin'),
(3,'Aleksey', 'Nemov'),
(4,'Alicia', 'Coutts'),
(5,'Missy', 'Franklin'),
(6,'Ryan', 'Lochte'),
(7,'Allison', 'Schmitt'),
(8,'Ian', 'Thorpe'),
(9,'Dara', 'Torres'),
(10,'Cindy', 'Klassen'),
(11,'Nastia', 'Liukin'),
(12,'Marit', 'BjÃ¸rgen'),
(13,'Sun', 'Yang'),
(14,'Kirsty', 'Coventry'),
(15,'Libby', 'Lenton-Trickett'),
(16,'Inge', 'de Bruijn'),
(17,'Petria', 'Thomas'),
(18,'Gary', 'Hall Jr.'),
(19, 'Michael', 'Klim')
;


-----------------------------------
CREATE TABLE country(
con_id varchar(3) NOT NULL PRIMARY KEY,
country VARCHAR(50) NOT NULL
);

INSERT INTO country(con_id, country)
VALUES
('US','United States'),
('RU','Russia'),
('AU','Australia'),
('CA','Canada'),
('NO','Norway'),
('CH','China'),
('ZI','Zimbabwe'),
('NE','Netherlands')
;

-----------------------------------
CREATE TABLE name_country(
name_id integer(3) NOT NULL,
con_id varchar(3) NOT NULL)
;

INSERT INTO name_country(name_id,con_id)
VALUES
(1,		'US'),
(2,		'US'),
(3,		'RU'),
(4,		'AU'),
(5,		'US'),
(6,		'US'),
(7,		'US'),
(8,		'AU'),
(9,		'US'),
(10,	'CA'),
(11,	'US'),
(12,	'NO'),
(13,	'CH'),
(14,	'ZI'),
(15,	'AU'),
(16,	'NE'),
(17,	'AU'),
(18,	'US'),
(19,	'AU')
;


-----------------------------------
CREATE TABLE dates(
age INTEGER(3) NOT NULL,
year VARCHAR(10) NOT NULL,
date_given DATE NOT NULL,
name_id integer(3) NOT NULL
); 

INSERT INTO dates(age, year, date_given, name_id)
VALUES
(23	,'2008'	,'2008-08-24', 1),
(19	,'2004'	,'2004-08-29', 1),
(27	,'2012'	,'2012-08-12', 1),
(25	,'2008'	,'2008-08-24', 2),
(24	,'2000'	,'2000-10-01', 3),
(24	,'2012'	,'2012-08-12', 4),
(17	,'2012'	,'2012-08-12', 5),
(27	,'2012'	,'2012-08-12', 6),
(22	,'2012'	,'2012-08-12', 7),
(21	,'2004'	,'2004-08-29', 2),
(17	,'2000'	,'2000-10-01', 8),
(33	,'2000'	,'2000-10-01', 9),
(26	,'2006'	,'2006-02-26', 10),
(18	,'2008'	,'2008-08-24', 11),
(29	,'2010'	,'2010-02-28', 12),
(20	,'2012'	,'2012-08-12', 13),
(24	,'2008'	,'2008-08-24', 14),
(23	,'2008'	,'2008-08-24', 15),
(24	,'2008'	,'2008-08-24', 6),
(30	,'2004'	,'2004-08-29', 16),
(28	,'2004'	,'2004-08-29', 17),
(21	,'2004'	,'2004-08-29', 8),
(27	,'2000'	,'2000-10-01', 16),
(25	,'2000'	,'2000-10-01', 18),
(23	,'2000'	,'2000-10-01', 19)
;


-----------------------------------
CREATE TABLE sports(
sp_id varchar(5) NOT NULL PRIMARY KEY,
sport VARCHAR(30) NOT NULL
);

INSERT INTO sports(sp_id, sport)
VALUES
('SWM','Swimming'),
('GYM','Gymnastics'),
('SSK','Speed Skating'),
('CCS','Cross Country Skiing')
;


-----------------------------------
CREATE TABLE name_sport(
name_id integer(3) NOT NULL,
sp_id varchar(5) NOT NULL)
;

INSERT INTO name_sport(name_id,sp_id)
VALUES
(1,		'SWM'),
(2,		'SWM'),
(3,		'GYM'),
(4,		'SWM'),
(5,		'SWM'),
(6,		'SWM'),
(7,		'SWM'),
(8,		'SWM'),
(9,		'SWM'),
(10,	'SSK'),
(11,	'GYM'),
(12,	'CCS'),
(13,	'SWM'),
(14,	'SWM'),
(15,	'SWM'),
(16,	'SWM'),
(17,	'SWM'),
(18,	'SWM'),
(19,	'SWM')
;


-----------------------------------
CREATE TABLE medals(
gold INTEGER(4) NOT NULL,
silver INTEGER(4) NOT NULL,
brone INTEGER(4) NOT NULL,
total INTEGER(4)NOT NULL,
name_id INTEGER(3) NULL
);

INSERT INTO medals(gold, silver, brone, total, name_id)
VALUES
(8,	0,	0,	8,	1),
(6,	0,	2,	8,	1),
(4,	2,	0,	6,	1),
(1,	2,	3,	6,	2),
(2,	1,	3,	6,	3),
(1,	3,	1,	5,	4),
(4,	0,	1,	5,	5),
(2,	2,	1,	5,	6),
(3,	1,	1,	5,	7),
(2,	2,	1,	5,	2),
(3,	2,	0,	5,	8),
(2,	0,	3,	5,	9),
(1,	2,	2,	5,	10),
(1,	3,	1,	5,	11),
(3,	1,	1,	5,	12),
(2,	1,	1,	4,	13),
(1,	3,	0,	4,	14),
(2,	1,	1,	4,	15),
(2,	0,	2,	4,	6),
(1,	1,	2,	4,	16),
(3,	1,	0,	4,	17),
(2,	1,	1,	4,	8),
(3,	1,	0,	4,	16),
(2,	1,	1,	4,	18),
(2,	2,	0,	4,	19)
;

ALTER TABLE `name_country`
  ADD CONSTRAINT `name_country_ibfk_1` FOREIGN KEY (`name_id`) REFERENCES `name` (`name_id`),
  ADD CONSTRAINT `name_country_ibfk_2` FOREIGN KEY (`con_id`) REFERENCES `country` (`con_id`);
  
 ALTER TABLE `name_sport`
  ADD CONSTRAINT `name_sport_ibfk_1` FOREIGN KEY (`name_id`) REFERENCES `name` (`name_id`),
  ADD CONSTRAINT `name_sport_ibfk_2` FOREIGN KEY (`sp_id`) REFERENCES `sports` (`sp_id`);
  
ALTER TABLE `dates`
  ADD CONSTRAINT `dates_ibfk_1` FOREIGN KEY (`name_id`) REFERENCES `name` (`name_id`);

ALTER TABLE `medals`
  ADD CONSTRAINT `medals_ibfk_1` FOREIGN KEY (`name_id`) REFERENCES `name` (`name_id`);  