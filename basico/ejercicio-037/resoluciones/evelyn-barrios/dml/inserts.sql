-- Datos de practica. Puedes cambiarlos o agregar mas filas.
-- Ejercicio 037: Inserción de datos en la tabla de la liga de fútbol
-- Autor: evelyn-barrios
-- Descripción: Inserta 10 registros de equipos con estadísticas variadas
-- para permitir la prueba de diferentes criterios de ordenamiento.

-- Conexión a la base de datos
USE campuslands_mysql;

-- Inserción de 10 equipos de ejemplo
INSERT INTO equipos_liga (nombre_equipo, puntos, partidos_jugados, partidos_ganados, partidos_empatados, partidos_perdidos, goles_a_favor, goles_en_contra) VALUES
('Titanes del Norte', 35, 15, 11, 2, 2, 30, 10),
('Furias del Sur', 35, 15, 11, 2, 2, 25, 8),
('Leones del Centro', 32, 15, 10, 2, 3, 28, 15),
('Águilas del Este', 28, 15, 8, 4, 3, 22, 18),
('Tigres del Oeste', 25, 15, 7, 4, 4, 20, 20),
('Guerreros del Valle', 20, 15, 5, 5, 5, 18, 18),
('Halcones de la Montaña', 18, 15, 4, 6, 5, 15, 22),
('Dragones Marinos', 15, 15, 3, 6, 6, 12, 25),
('Lobos del Desierto', 10, 15, 2, 4, 9, 10, 30),
('Cobras Reales', 5, 15, 1, 2, 12, 8, 35);
