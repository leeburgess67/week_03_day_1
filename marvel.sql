DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);INSERT INTO people (name) VALUES ('Shaun	Adams');
INSERT INTO people (name) VALUES ('James	Amos');
INSERT INTO people (name) VALUES ('Lee	Burgess');
INSERT INTO people (name) VALUES ('Stuart	Charters');
INSERT INTO people (name) VALUES ('Wil	Cornish');
INSERT INTO people (name) VALUES ('Gregor	Cox');
INSERT INTO people (name) VALUES ('Chris	Craig');
INSERT INTO people (name) VALUES ('Gabriel	González Villalba');
INSERT INTO people (name) VALUES ('James	Henderson');
INSERT INTO people (name) VALUES ('Edward	Kinley');
INSERT INTO people (name) VALUES ('Magdalena	Kisala');
INSERT INTO people (name) VALUES ('Emily Milne');
INSERT INTO people (name) VALUES ('Iona	Macbeth');
INSERT INTO people (name) VALUES ('Gary	Muir');
INSERT INTO people (name) VALUES ('Helen	Oshea');
INSERT INTO people (name) VALUES ('David	Pears');
INSERT INTO people (name) VALUES ('Jezuz	Perez');
INSERT INTO people (name) VALUES ('Benjamin	Robinson');
INSERT INTO people (name) VALUES ('Stephen	Rooney');
INSERT INTO people (name) VALUES ('Can	Toraman');
INSERT INTO people (name) VALUES ('Daniel	Warren');

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '23:55');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '12:10');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '15:45');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '16:25');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '16:55');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '13:25');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '23:15');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '16:50');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '20:05');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '14:55');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '19:05');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '17:45');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '16:30');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '16:00');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '16:10');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '17:25');
INSERT INTO movies (title, year, show_time) VALUES ('Spider-Man: Homecoming', 2017, '13:50');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: Ragnarok', 2017, '14:40');
INSERT INTO movies (title, year, show_time) VALUES ('Black Panther', 2018, '15:00');



-- ## Questions
--
-- 1.  Return ALL the data in the 'movies' table.
SELECT * FROM movies;
-- id |                title                | year | show_time
-- ----+-------------------------------------+------+-----------
--  1 | Iron Man                            | 2008 | 23:55
--  2 | The Incredible Hulk                 | 2008 | 12:10
--  3 | Iron Man 2                          | 2010 | 15:45
--  4 | Thor                                | 2011 | 16:25
--  5 | Captain America: The First Avenger  | 2011 | 16:55
--  6 | Avengers Assemble                   | 2012 | 13:25
--  7 | Iron Man 3                          | 2013 | 23:15
--  8 | Thor: The Dark World                | 2013 | 16:50
--  9 | Batman Begins                       | 2005 | 20:05
-- 10 | Captain America: The Winter Soldier | 2014 | 14:55
-- 11 | Guardians of the Galaxy             | 2014 | 19:05
-- 12 | Avengers: Age of Ultron             | 2015 | 17:45
-- 13 | Ant-Man                             | 2015 | 16:30
-- 14 | Captain America: Civil War          | 2016 | 16:00
-- 15 | Doctor Strange                      | 2016 | 16:10
-- 16 | Guardians of the Galaxy 2           | 2017 | 17:25
-- 17 | Spider-Man: Homecoming              | 2017 | 13:50
-- 18 | Thor: Ragnarok                      | 2017 | 14:40
-- 19 | Black Panther                       | 2018 | 15:00

--
-- 2.  Return ONLY the name column from the 'people' table
SELECT name FROM people;
--
--            name
-- ---------------------------
--  Shaun   Adams
--  James   Amos
--  Lee     Burgess
--  Stuart  Charters
--  Wil     Cornish
--  Gregor  Cox
--  Chris   Craig
--  Gabriel González Villalba
--  James   Henderson
--  Edward  Kinley
--  Magdalena       Kisala
--  Emily Milne
--  Iona    Macbeth
--  Gary    Muir
--  Helen   Oshea
--  David   Pears
--  Jezuz   Perez
--  Benjamin        Robinson
--  Stephen Rooney
--  Can     Toraman
--  Daniel  Warren
--
-- 3.  Oops! Someone at CodeClan spelled Jesus's name wrong! Change it to reflect the proper spelling ('Jezuz Perez' should be 'Jesus Perez').
UPDATE people SET name = 'Jesus	Perez' WHERE name = 'Jezuz	Perez';

SELECT * FROM people;

-- id |           name
-- ----+---------------------------
--  1 | Shaun   Adams
--  2 | James   Amos
--  3 | Lee     Burgess
--  4 | Stuart  Charters
--  5 | Wil     Cornish
--  6 | Gregor  Cox
--  7 | Chris   Craig
--  8 | Gabriel González Villalba
--  9 | James   Henderson
-- 10 | Edward  Kinley
-- 11 | Magdalena       Kisala
-- 12 | Emily Milne
-- 13 | Iona    Macbeth
-- 14 | Gary    Muir
-- 15 | Helen   Oshea
-- 16 | David   Pears
-- 18 | Benjamin        Robinson
-- 19 | Stephen Rooney
-- 20 | Can     Toraman
-- 21 | Daniel  Warren
-- 17 | Jesus   Perez

-- 4.  Return ONLY your name from the 'people' table.
SELECT name FROM people WHERE name = 'Lee	Burgess';
-- name
-- -----------------
-- Lee     Burgess

--
-- 5.  The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.
--
-- 6.  Create a new entry in the 'people' table with the name of one of the instructors.
--
-- 7.  Emily Milne has decided to hijack our movie evening, Remove her from the table of people.
--
-- 8.  The cinema has just heard that they will be holding an exclusive midnight showing of 'Avengers: Infinity War'!! Create a new entry in the 'movies' table to reflect this.
--
-- 9.  The cinema would also like to make the Guardians movies a back to back feature. Find out the show time of "Guardians of the Galaxy" and set the show time of "Guardians of the Galaxy 2" to start two hours later.
--
-- ## Extension
--
-- 1.  Research how to delete multiple entries from your table in a single command.
