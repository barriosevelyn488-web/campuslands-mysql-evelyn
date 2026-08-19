
USE campuslands_mysql_basico;

-- Eliminar tablas en orden inverso de dependencia para evitar errores de FK.
DROP TABLE IF EXISTS playlist_items;
DROP TABLE IF EXISTS songs;
DROP TABLE IF EXISTS playlists;
DROP TABLE IF EXISTS artists;

-- Tabla para artistas
CREATE TABLE artists (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    genre VARCHAR(50) NOT NULL
);

-- Tabla para canciones
CREATE TABLE songs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    artist_id INT,
    duration_seconds INT UNSIGNED NOT NULL CHECK (duration_seconds > 0),
    release_date DATE,
    FOREIGN KEY (artist_id) REFERENCES artists(id) ON DELETE SET NULL
);

-- Tabla para playlists
CREATE TABLE playlists (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    creator_username VARCHAR(50) NOT NULL DEFAULT 'system'
);

-- Tabla de enlace para la relación muchos a muchos entre playlists y canciones
CREATE TABLE playlist_items (
    playlist_id INT,
    song_id INT,
    position INT UNSIGNED NOT NULL,
    PRIMARY KEY (playlist_id, song_id),
    FOREIGN KEY (playlist_id) REFERENCES playlists(id) ON DELETE CASCADE,
    FOREIGN KEY (song_id) REFERENCES songs(id) ON DELETE CASCADE
);
