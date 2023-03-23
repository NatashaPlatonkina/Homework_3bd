SELECT name, year_of_release FROM album
	WHERE year_of_release=2018;

SELECT name, duration FROM track
	ORDER BY duration DESC
	LIMIT 1;
	
SELECT name FROM track
	WHERE duration >=210;
	
SELECT name FROM collection
	WHERE year_of_release BETWEEN 2018 AND 2020;
	
SELECT name FROM artist
	WHERE name LIKE % %;
	
SELECT name FROM track
	WHERE name LIKE %%My%%;
	
SELECT name FROM track
	WHERE name LIKE %%Мой%%;	


