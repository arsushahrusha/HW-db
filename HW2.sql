CREATE TABLE IF NOT EXISTS Album (
	album_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	year SMALLINT NOT NULL
);

CREATE TABLE IF NOT EXISTS Genre (
	genre_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Artist (
	artist_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Collection (
	collection_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	year SMALLINT NOT NULL
);

CREATE TABLE IF NOT EXISTS Tracks (
	track_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	duration INTEGER NOT NULL,
	album_id INTEGER NOT NULL REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS ArtistsInGenre (
	genre_id INTEGER NOT NULL REFERENCES Genre(genre_id),
	artist_id INTEGER NOT NULL REFERENCES Artist(artist_id),
	CONSTRAINT pk PRIMARY KEY (genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS AlbumsArtists (
	album_id INTEGER NOT NULL REFERENCES Album(album_id),
	artist_id INTEGER NOT NULL REFERENCES Artist(artist_id),
	CONSTRAINT pk_album PRIMARY KEY (album_id, artist_id)
);

CREATE TABLE IF NOT EXISTS CollectionTracks (
	collection_id INTEGER NOT NULL REFERENCES Collection(collection_id),
	track_id INTEGER NOT NULL REFERENCES Tracks(track_id),
	CONSTRAINT pk_collection PRIMARY KEY (collection_id, track_id)
);

