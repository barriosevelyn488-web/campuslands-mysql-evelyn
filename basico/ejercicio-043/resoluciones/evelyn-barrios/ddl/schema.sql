-- ddl/schema.sql

-- Usar la base de datos designada para los ejercicios básicos.
USE campuslands_mysql_basico;

-- Eliminar la tabla si existe para asegurar un estado inicial limpio.
DROP TABLE IF EXISTS peliculas_miedo;

-- Tabla para el catálogo de películas de miedo
CREATE TABLE peliculas_miedo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL UNIQUE,
    release_year YEAR NOT NULL CHECK (release_year >= 1900 AND release_year <= YEAR(CURDATE())),
    director VARCHAR(100),
    genre VARCHAR(50) NOT NULL,
    rating ENUM('G', 'PG', 'PG-13', 'R', 'NC-17') NOT NULL,
    status ENUM('Disponible', 'Alquilada', 'Mantenimiento', 'Archivada') NOT NULL DEFAULT 'Disponible'
);