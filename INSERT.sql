INSERT INTO  Genre(name) VALUES 
	('Рок'),
	('Поп'),
	('Хип-хоп'),
	('Джаз')

SELECT * FROM Genre


INSERT INTO  Artist(name) VALUES 
	('Queen'),
	('Би-2'),
	('Taylor Swift'),
	('Eminem'),
	('Louis Armstrong'),
	('Nirvana')
	
SELECT * FROM Artist

INSERT INTO  ArtistsInGenre(genre_id, artist_id) VALUES 
	(1, 1),
	(1, 2),
	(2, 3),
	(3, 4),
	(4, 5),
	(1, 6),
	(2, 1),
	(3, 2)
	
SELECT * FROM ArtistsInGenre

INSERT INTO  Album(name, year) VALUES 
	('A Night at the Opera', 1975),
	('Горизонт событий', 2017),
	('1989', 2014),
	('The Eminem Show', 2002),
	('What a Wonderful World', 1968),
	('Nevermind', 1991),
	('Folklore', 2020),
	('Music to Be Murdered By', 2020),
	('The Slim Shady LP', 1999)
	
SELECT * FROM Album

INSERT INTO  AlbumsArtists(album_id, artist_id) VALUES 
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 3),
	(8, 4),
	(1, 6),
	(2, 4),
	(9, 4)
	
SELECT * FROM AlbumsArtists
	
INSERT INTO  Tracks(name, duration, album_id) VALUES 
	('Bohemian Rhapsody', 355, 1),
	('Love of my Life', 219, 1),
	('Полковнику никто не пишет', 255, 2),
	('Шаровая молния', 225, 2),
	('Blank Space', 232, 3),
	('Shake It Off', 219, 3),
	('Without Me', 290, 4),
	('Lose Yourself', 326, 4),
	('What a Wonderful World', 141, 5),
	('Smells Like Teen Spirit', 301, 6),
	('Come As You Are', 219, 6),
	('My Tears Ricochet', 255, 7),
	('This is my world now', 240, 8),
	('Godzilla', 221, 8),
	('My Name is', 268, 9)
	
SELECT * FROM Tracks

INSERT INTO  Collection(name, year) VALUES 
	('Greatest Rock Hits', 2018),
	('Pop Classics', 2019),
	('Hip-Hop Anthems', 2020),
	('Golden Oldies', 2021),
	('My Favorite Tracks', 2017),
	('Best of 2020', 2022)
	
SELECT * FROM Collection

INSERT INTO  CollectionTracks(collection_id, track_id) VALUES 
	(1, 1),
	(1, 10),
	(2, 5),
	(2, 6),
	(3, 7),
	(3, 8),
	(4, 9),
	(4, 1),
	(5, 2),
	(5, 12),
	(5, 13),
	(6, 12),
	(6, 13),
	(6, 14),
	(1, 3),
	(2, 4),
	(5, 15)
	
SELECT * FROM CollectionTracks