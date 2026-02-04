SELECT name, max(duration) FROM tracks
GROUP BY "name" 
LIMIT 1

SELECT name FROM tracks
WHERE duration >= 210

SELECT name, year FROM collection
WHERE year BETWEEN 2018 AND 2020

SELECT name FROM artist
WHERE name NOT LIKE '% %'

SELECT name FROM tracks
WHERE name LIKE '% my %' OR name LIKE '% мой %'

