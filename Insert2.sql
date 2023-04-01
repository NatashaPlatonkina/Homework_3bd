INSERT INTO genre(name)  
	VALUES ('Rap'), ('Rock'), ('Heavy metal'), ('Jazz'), ('Pop');

INSERT INTO artist(name) 
	VALUES ('Scorpions'), ('Nautilus Pompilius'), ('Би-2'), ('Snoop Dogg'), ('Ariana Grande'), ('Louis Armstrong'), ('Oxxxymiron'), ('МакSим');

INSERT INTO genre_artist(genre_id, artist_id)
	VALUES (1,4), (1,7), (2,2), (2,3), (3,1), (4,6), (5,5), (5,8);

INSERT INTO album(name, year_of_release) 
	VALUES ('Blackout', 1982), ('Крылья', 1995), ('Moloko', 2006), ('Doggystyle', 1993), ('Thank U, Next', 2020), ('Louis and the Angels', 1957), ('Горгород', 2019), ('Мой рай', 2007);

INSERT INTO artist_album(artist_id, album_id)
	VALUES (1,1), (2,2), (3,3), (4,4), (5,5), (6,6), (7,7), (8,8); 

INSERT INTO track(name, duration, album_id) 
	VALUES ('Держаться за воздух', 355, 3), ('Мой рай', 216, 8), ('7 Rings', 178, 5), ('Дыхание', 219, 2), ('I Married an Angel', 222, 6), ('Колыбельная', 197, 7), ('Bathtub', 110, 4), ('In My Head', 222, 5), ('Dynamite', 252, 1), ('Кто ещё...', 259, 2), ('Doggy Dogg World', 305, 4), ('Arizona', 236, 1), ('Где нас нет', 265, 7), ('Вниз', 293, 3), ('Angela Mia', 202, 6), ('Научусь летать', 224, 8);

INSERT INTO collection(name, year_of_release)
	VALUES ('Без слов I', 2008), ('Smokefest Underground', 1998), ('miXXXtape III: Смутное время', 2020), ('Grand Collection', 1994), ('Best of', 1984), ('Greatest Hist', 2022), ('Легенды русского рока', 1996), ('Nostalgia', 2018); 

INSERT INTO track_collection(track_id, collection_id)
	VALUES (1,1), (14,1), (7,2), (11,2), (6,3), (13,3), (5,4), (15,4), (9,5), (12,5), (3,6), (8,6), (4,7), (10,7), (2,8), (16,8);
