-- Campuslands MySQL - basico ejercicio 037
-- Ejercicio 037: Creación de la tabla para la liga de fútbol
-- Autor: evelyn-barrios
-- Descripción: Define la estructura de la tabla 'equipos_liga' para almacenar
-- estadísticas de los equipos y practicar ordenamientos con ORDER BY.

-- Conexión a la base de datos
USE campuslands_mysql;

-- Creación de la tabla 'equipos_liga'
CREATE TABLE equipos_liga (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_equipo VARCHAR(100) NOT NULL UNIQUE,
    puntos INT NOT NULL DEFAULT 0,
    partidos_jugados INT NOT NULL DEFAULT 0,
    partidos_ganados INT NOT NULL DEFAULT 0,
    partidos_empatados INT NOT NULL DEFAULT 0,
    partidos_perdidos INT NOT NULL DEFAULT 0,
    goles_a_favor INT NOT NULL DEFAULT 0,
    goles_en_contra INT NOT NULL DEFAULT 0,
    -- Restricción para asegurar la integridad de los datos de puntos.
    CONSTRAINT chk_puntos_no_negativos CHECK (puntos >= 0)
);
