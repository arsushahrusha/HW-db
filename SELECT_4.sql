SELECT DISTINCT al.name FROM album al
JOIN albumsartists aa ON al.album_id = aa.album_id
JOIN artist ar ON aa.artist_id = ar.artist_id 
JOIN artistsingenre ag ON ar.artist_id = ag.artist_id 
GROUP BY al.name, ag.artist_id 
HAVING COUNT(DISTINCT ag.genre_id)>1;


SELECT t.name FROM tracks t
LEFT JOIN collectiontracks ct ON t.track_id = ct.track_id 
Left JOIN collection c ON ct.collection_id = c.collection_id 
WHERE c.name IS NULL;

SELECT ar.name, tr.duration FROM artist ar 
LEFT JOIN albumsartists aa ON ar.artist_id = aa.artist_id
LEFT JOIN album al ON aa.album_id = al.album_id 
LEFT JOIN tracks tr ON al.album_id = tr.album_id
WHERE tr.duration = (SELECT MIN(duration) FROM tracks)
GROUP BY ar.artist_id, ar.name, tr.duration;

SELECT al.name, COUNT(tr.track_id ) cnt  FROM album al
LEFT JOIN tracks tr ON al.album_id = tr.album_id
GROUP BY al.album_id, al.name
HAVING COUNT(tr.track_id) = (SELECT MIN(cnt)
FROM (SELECT COUNT(track_id) as cnt FROM tracks 
 GROUP BY album_id));


  
 


