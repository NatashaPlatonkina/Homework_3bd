SELECT g.name, COUNT (artist_id) FROM genre_artist ga
	LEFT JOIN genre g ON ga.genre_id = g.genre_id
	GROUP BY g.name

SELECT COUNT (track_id) FROM track t 
	JOIN album a ON t.album_id = a.album_id 
	WHERE a.year_of_release BETWEEN 2019 and 2020
	 

SELECT a.name, AVG(t.duration) FROM album a 
	JOIN track t ON a.album_id = t.album_id 
	GROUP BY a.name 

SELECT a.name FROM artist a
	WHERE a.name NOT IN (
	SELECT a.name FROM artist a
	JOIN artist_album aa ON a.artist_id = aa.artist_id 
	JOIN album a2 ON a2.album_id = aa.album_id 
	WHERE a2.year_of_release = 2020

SELECT c.name FROM collection c 
	JOIN track_collection tc ON c.collection_id = tc.collection_id 
	JOIN track t ON t.track_id = tc.track_id 
	JOIN album a ON a.album_id = t.album_id 
	JOIN artist_album aa ON a.album_id  = aa.album_id 
	JOIN artist a2 ON a2.artist_id = aa.artist_id 
	WHERE a2.name LIKE '%Louis%'

SELECT a.name, COUNT(g.name) FROM album a 
	JOIN artist_album aa ON aa.album_id = a.album_id 
	JOIN artist a2 ON a2.artist_id = aa.artist_id 
	JOIN genre_artist ga ON ga.artist_id = a2.artist_id 
	JOIN genre g ON g.genre_id = ga.genre_id 
	GROUP BY a2.name, a.name
	HAVING COUNT(ga.genre_id)>1 

7. SELECT t.name FROM track t 
	JOIN track_collection tc ON tc.track_id = t.track_id 
	WHERE tc.collection_id IS NULL 

SELECT a.name FROM artist a 
	JOIN artist_album aa ON a.artist_id = aa.artist_id 
	JOIN album a2 ON a2.album_id = aa.album_id 
	JOIN track t ON t.album_id = a2.album_id 
	WHERE t.duration = (SELECT MIN(duration) FROM track)

SELECT a.name, COUNT(t.track_id) FROM album a 
	JOIN track t ON a.album_id = t.album_id 
	GROUP BY a.name
	HAVING COUNT(t.track_id) IN (
		SELECT COUNT(t.track_id) FROM album a
		JOIN track t ON a.album_id = t.album_id 
		GROUP BY a.name
		ORDER BY COUNT(t.track_id)
		limit 1)
