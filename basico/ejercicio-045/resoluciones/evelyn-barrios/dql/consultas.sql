-- Consultas para ejercicio 045 - Biblioteca Gamer (Relaciones simples)
USE campuslands_mysql;

-- 1. Listar todos los juegos con su titulo, categoria y el nombre de su desarrolladora.
SELECT j.titulo, j.categoria, d.nombre AS desarrollador
FROM basico_ejercicio_045_juegos j
INNER JOIN basico_ejercicio_045_desarrolladores d ON j.desarrollador_id = d.id;

-- 2. Consultar todos los juegos desarrollados por empresas ubicadas en 'Japon'.
SELECT j.titulo, j.categoria, d.nombre AS desarrollador, d.pais
FROM basico_ejercicio_045_juegos j
INNER JOIN basico_ejercicio_045_desarrolladores d ON j.desarrollador_id = d.id
WHERE d.pais = 'Japon';

-- 3. Contar cuantos juegos hay registrados para cada empresa desarrolladora en nuestra biblioteca gamer.
SELECT d.nombre AS desarrollador, COUNT(j.id) AS total_juegos
FROM basico_ejercicio_045_desarrolladores d
LEFT JOIN basico_ejercicio_045_juegos j ON d.id = j.desarrollador_id
GROUP BY d.id, d.nombre;

-- 4. Obtener los juegos activos con un puntaje mayor o igual a 90, mostrando su titulo y desarrolladora.
SELECT j.titulo, j.puntaje, d.nombre AS desarrollador
FROM basico_ejercicio_045_juegos j
INNER JOIN basico_ejercicio_045_desarrolladores d ON j.desarrollador_id = d.id
WHERE j.estado = 'activo' AND j.puntaje >= 90.00;

-- 5. Calcular el puntaje promedio de los juegos por desarrolladora, ordenado de mayor a menor.
SELECT d.nombre AS desarrollador, ROUND(AVG(j.puntaje), 2) AS puntaje_promedio
FROM basico_ejercicio_045_desarrolladores d
INNER JOIN basico_ejercicio_045_juegos j ON d.id = j.desarrollador_id
GROUP BY d.id, d.nombre
ORDER BY puntaje_promedio DESC;
