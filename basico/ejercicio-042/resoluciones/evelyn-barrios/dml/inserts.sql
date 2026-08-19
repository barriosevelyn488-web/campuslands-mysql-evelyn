
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE playlist_items;
TRUNCATE TABLE songs;
TRUNCATE TABLE playlists;
TRUNCATE TABLE artists;
SET FOREIGN_KEY_CHECKS = 1;

-- Insertar artistas
-- Se especifican los IDs para garantizar la integridad referencial con las canciones.
INSERT INTO artists (id, name, genre) VALUES
(1, 'Stellar Echoes', 'Ambient'),
(2, 'Crimson Bloom', 'Indie Rock'),
(3, 'Nomad''s Anthem', 'Folk'),
(4, 'Ghost Tones', 'Electronic');

-- Insertar canciones
-- Se especifican los IDs para garantizar la integridad referencial con las playlists.
INSERT INTO songs (id, title, artist_id, duration_seconds, release_date) VALUES
(1, 'Celestial Drift', 1, 320, '2022-08-15'),
(2, 'Nebula', 1, 280, '2023-01-20'),
(3, 'Fading Embers', 2, 210, '2021-11-05'),
(4, 'Wildflower', 2, 195, '2022-04-12'),
(5, 'Dusty Roads', 3, 255, '2020-07-30'),
(6, 'Horizon''s Call', 3, 230, '2021-09-22'),
(7, 'Digital Ghost', 4, 340, '2023-03-10'),
(8, 'Static Dream', 4, 290, '2023-05-18');

-- Insertar playlists
-- Se especifican los IDs para garantizar la integridad referencial.
INSERT INTO playlists (id, name, creator_username) VALUES
(1, 'Cosmic Relaxation', 'evelyn-b'),
(2, 'Indie Drive', 'evelyn-b'),
(3, 'Folk Journeys', 'alex-r');

-- Añadir canciones a las playlists
INSERT INTO playlist_items (playlist_id, song_id, position) VALUES
-- Playlist 'Cosmic Relaxation'
(1, 1, 1),
(1, 2, 2),
(1, 7, 3),
-- Playlist 'Indie Drive'
(2, 3, 1),
(2, 4, 2),
-- Playlist 'Folk Journeys'
(3, 5, 1),
(3, 6, 2),
(3, 4, 3);
