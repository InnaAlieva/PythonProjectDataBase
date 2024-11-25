--Название и продолжительность самого длительного трека.
SELECT track_name, track_duration
FROM tracks
ORDER BY track_duration DESC
limit 1;

--Название треков, продолжительность которых не менее 3,5 минут
SELECT track_name, track_duration
FROM songs
WHERE track_duration > 3.5;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT collection_name FROM collections
WHERE collection_date BETWEEN '2018-01-01' and '2020-12-31';

--Исполнители, чьё имя состоит из одного слова.
SELECT artist_name FROM artists
WHERE artist_name NOT LIKE '%% %%';

--Название треков, которые содержат слово «мой» или «my».
SELECT track_name FROM tracks
WHERE track_name LIKE '%%My%%';


-- Количество исполнителей в каждом жанре.
SELECT genres_id, COUNT(artists_id)
FROM genres_artists
JOIN genre_eartists ge ON genre_id = ge.genre_id
GROUP BY genres_id;

-- Количество треков, вошедших в альбомы 2019–2020 годов
SELECT album_name, COUNT(track_id), albums_id FROM tracks
JOIN albums a ON albums_id = a.id
WHERE album_date BETWEEN '2019' and '2020'
GROUP BY album_name;


--Средняя продолжительность треков по каждому альбому.
SELECT album_name, AVG(track_duration) avg_duration FROM albums a
JOIN tracks t ON t.album_id = a.id
GROUP BY album_name;

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT artist_name FROM artist
JOIN albums_artists ON s.album_id = a.id
WHERE NOT album_date != 2020;

--Названия сборников, в которых присутствует Rolling Stones
SELECT collection_name FROM collections
JOIN tracks_collections ct ON collection_id = ct.collection_id
JOIN track t ON ct.track_id = t.track_id
JOIN album al ON t.album_id = al.album_id
JOIN albums_artists aa ON al.album_id = aa.album_id
JOIN artist ar ON aa.artist_id = ar.artist_id
WHERE ar.name = '%%Rolling Stones%%'