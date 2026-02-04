SELECT g.genre_id, g.name, COUNT(*) FROM ArtistsInGenre ag
LEFT JOIN  genre g ON ag.genre_id = g.genre_id 
GROUP BY g.genre_id, g.name

SELECT a.album_id, a.name, COUNT(*) FROM album a
LEFT JOIN  tracks t ON a.album_id = t.album_id
WHERE a.year BETWEEN 2019 AND 2020
GROUP BY a.album_id, a.name
ORDER BY a.album_id ASC

SELECT t.album_id, a.name, AVG(t.duration) FROM tracks t
LEFT JOIN  album a ON t.album_id = a.album_id
GROUP BY t.album_id, a.name 
ORDER BY t.album_id 
 

SELECT ar.name FROM AlbumsArtists aa
LEFT JOIN artist ar ON aa.artist_id = ar.artist_id 
LEFT JOIN album al ON aa.album_id = al.album_id
WHERE al.year != 2020
GROUP BY ar.name 
EXCEPT SELECT ar.name FROM AlbumsArtists aa
LEFT JOIN artist ar ON aa.artist_id = ar.artist_id 
LEFT JOIN album al ON aa.album_id = al.album_id
WHERE al.year = 2020
GROUP BY ar.name


SELECT col.name FROM collectiontracks c
LEFT JOIN tracks tr ON c.track_id = tr.track_id
LEFT JOIN collection col ON c.collection_id = col.collection_id 
LEFT JOIN album al ON tr.album_id = al.album_id 
LEFT JOIN albumsartists aa ON al.album_id = aa.album_id 
LEFT JOIN artist ar ON ar.artist_id = aa.artist_id  
WHERE ar.name = 'Eminem'
GROUP BY col.name
 


