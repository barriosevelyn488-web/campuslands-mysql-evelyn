-- Consultas base. Completa o reemplaza segun el enunciado.
-- Ejercicio 037: Consultas de ordenamiento para la liga de fútbol
-- Autor: evelyn-barrios
-- Descripción: Demuestra el uso de ORDER BY con uno y múltiples criterios
-- para generar reportes y clasificaciones a partir de la tabla de equipos.

-- Conexión a la base de datos
USE campuslands_mysql;

-- Consulta 1: Tabla de posiciones completa.
-- Ordena por puntos (descendente) y luego por diferencia de goles (descendente) como criterio de desempate.
SELECT
    nombre_equipo,
    puntos,
    partidos_jugados,
    goles_a_favor,
    goles_en_contra,
    (goles_a_favor - goles_en_contra) AS diferencia_goles
FROM equipos_liga
ORDER BY
    puntos DESC,
    diferencia_goles DESC;

-- Consulta 2: Ranking de los equipos más goleadores.
-- Ordena por goles a favor (descendente).
SELECT
    nombre_equipo,
    goles_a_favor
FROM equipos_liga
ORDER BY
    goles_a_favor DESC;

-- Consulta 3: Ranking de las mejores defensas.
-- Ordena por goles en contra (ascendente), mostrando primero los equipos que menos goles han recibido.
SELECT
    nombre_equipo,
    goles_en_contra
FROM equipos_liga
ORDER BY
    goles_en_contra ASC;

-- Consulta 4: Listado de equipos por orden alfabético.
-- Útil para búsquedas o listados de referencia.
SELECT
    nombre_equipo,
    puntos
FROM equipos_liga
ORDER BY
    nombre_equipo ASC;

-- Consulta 5: Equipos con más partidos perdidos.
-- Ordena por la cantidad de partidos perdidos (descendente) para identificar a los equipos con peor rendimiento.
SELECT
    nombre_equipo,
    partidos_perdidos
FROM equipos_liga
ORDER BY
    partidos_perdidos DESC;
