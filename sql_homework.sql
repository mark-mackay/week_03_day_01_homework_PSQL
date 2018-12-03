-- Return ALL the data in the 'movies' table.
SELECT * FROM movies;

-- Only Titles
SELECT title FROM movies;

-- Return ONLY the name column from the 'people' table

SELECT name FROM people;

-- Oops! Someone spelled Krusty The Clown's name wrong! Change it to reflect the proper spelling (Crusty should be Krusty).

SELECT * FROM people;  -- Find out the ID of Krusty
-- UPDATE people SET name = 'Krusty the Clown' WHERE id = 13;

-- OR

UPDATE people SET name = 'Krusty the Clown' WHERE name = 'Crusty the Clown';

-- Return ONLY Homer Simpson's name from the 'people' table.

SELECT * FROM people WHERE name = 'Homer Simpson';  -- Gets ID plus name
SELECT name FROM people WHERE name = 'Homer Simpson'; -- Just gets name

-- The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.

DELETE FROM movies WHERE title = 'Batman Begins';

-- We forgot one of the main characters! Add Bart Simpson to the 'people' table

INSERT INTO people (name) VALUES ('Bart Simpson')

-- Eric Cartman has decided to hijack our movie evening, Remove him from the table of people.

DELETE FROM people WHERE name = 'Eric Cartman';

-- The cinema would like to make the Iron Man movies a triple billing.
-- Find out the show time of "Iron Man 2" and set the show time of "Iron Man 3" to start two hours later.
SELECT show_time FROM movies WHERE title = 'Iron Man 2';  -- Show's 18:45
UPDATE movies SET show_time = '20:45' WHERE title = 'Iron Man 3'

-- Extension

-- Research how to delete multiple entries from your table in a single command.

DELETE FROM movies WHERE title IN ('Iron Man 3', 'Iron Man 3');
