

SELECT
    p.name AS playlist_name,
    p.creator_username,
    SEC_TO_TIME(SUM(s.duration_seconds)) AS total_duration
FROM playlists p
JOIN playlist_items pi ON p.id = pi.playlist_id
JOIN songs s ON pi.song_id = s.id
GROUP BY p.id
ORDER BY total_duration DESC;


SELECT
    a.name AS artist_name,
    a.genre,
    COUNT(s.id) AS number_of_songs
FROM artists a
JOIN songs s ON a.id = s.artist_id
GROUP BY a.id
HAVING COUNT(s.id) > 1
ORDER BY number_of_songs DESC;


SELECT
    s.title,
    a.name AS artist_name,
    s.release_date
FROM songs s
JOIN artists a ON s.artist_id = a.id
LEFT JOIN playlist_items pi ON s.id = pi.song_id
WHERE pi.playlist_id IS NULL;


WITH RankedSongs AS (
    SELECT
        s.title, a.name AS artist_name, a.genre, s.duration_seconds,
        ROW_NUMBER() OVER(PARTITION BY a.genre ORDER BY s.duration_seconds DESC) as rn
    FROM songs s
    JOIN artists a ON s.artist_id = a.id
)
SELECT title, artist_name, genre, SEC_TO_TIME(duration_seconds) AS duration
FROM RankedSongs WHERE rn = 1;


SELECT p.name AS playlist_name, COUNT(DISTINCT s.artist_id) AS number_of_artists
FROM playlists p
JOIN playlist_items pi ON p.id = pi.playlist_id
JOIN songs s ON pi.song_id = s.id
GROUP BY p.id
HAVING COUNT(DISTINCT s.artist_id) > 1
ORDER BY number_of_artists DESC;