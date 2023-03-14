CREATE TABLE IF NOT EXISTS genre (
	genre_id SERIAL PRIMARY KEY,
	name VARCHAR(25) NOT NULL 
);

CREATE TABLE IF NOT EXISTS artist (
	artist_id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS genre_artist (
	genre_id INTEGER REFERENCES genre(genre_id),
	artist_id INTEGER REFERENCES artist(artist_id),
	CONSTRAINT pk_genre_artist PRIMARY KEY (genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS album (
	album_id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	year_of_release INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS artist_album (
	artist_id INTEGER REFERENCES artist(artist_id),
	album_id INTEGER REFERENCES album(album_id),
	CONSTRAINT pk_artist_album PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS track (
	track_id SERIAL PRIMARY KEY,
	name VARCHAR(70) NOT NULL unique,
	duration INTEGER NOT NULL,
	album_id INTEGER REFERENCES album(album_id)
);

CREATE TABLE IF NOT EXISTS collection (
	collection_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL unique,
	year_of_release INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS track_collection(
	track_id INTEGER REFERENCES track(track_id),
	collection_id INTEGER REFERENCES collection(collection_id),
	CONSTRAINT pk_track_collection PRIMARY KEY (track_id, collection_id)
);







