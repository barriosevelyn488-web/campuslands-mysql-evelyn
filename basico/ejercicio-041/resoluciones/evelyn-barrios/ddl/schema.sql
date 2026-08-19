-- Campuslands MySQL - basico ejercicio 041
-- Creación de la base de datos y la tabla para el ejercicio 041
CREATE DATABASE IF NOT EXISTS campuslands_mysql_basico;
USE campuslands_mysql_basico;

-- Diseño de la tabla para partidos de ping-pong
CREATE TABLE IF NOT EXISTS partidos_pingpong_basico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    jugador_a VARCHAR(100) NOT NULL,
    jugador_b VARCHAR(100) NOT NULL,
    puntos_a TINYINT UNSIGNED NOT NULL,
    puntos_b TINYINT UNSIGNED NOT NULL,
    fecha_partido DATE NOT NULL,
    ganador VARCHAR(100) NOT NULL,
    -- Validación simple: los dos jugadores de un partido deben ser diferentes.
    CONSTRAINT chk_jugadores_diferentes CHECK (jugador_a <> jugador_b),
    -- Validación simple: el ganador registrado debe ser uno de los dos jugadores.
    CONSTRAINT chk_ganador_es_jugador CHECK (ganador = jugador_a OR ganador = jugador_b)
);

TRUNCATE TABLE partidos_pingpong_basico;
