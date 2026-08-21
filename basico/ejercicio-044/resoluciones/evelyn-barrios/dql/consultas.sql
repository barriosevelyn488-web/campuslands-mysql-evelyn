-- Consultas para ejercicio 044 - Saga de Ciencia Ficcion (Fechas basicas)
USE campuslands_mysql;

-- 1. Listar todas las obras de ciencia ficcion ordenadas por su fecha de estreno (de la mas reciente a la mas antigua).
SELECT nombre, categoria, fecha_estreno, puntaje 
FROM basico_ejercicio_044 
ORDER BY fecha_estreno DESC;

-- 2. Seleccionar las obras que fueron estrenadas o publicadas en el siglo XXI (a partir del año 2001).
SELECT nombre, categoria, fecha_estreno 
FROM basico_ejercicio_044 
WHERE fecha_estreno >= '2001-01-01';

-- 3. Contar la cantidad de obras y el puntaje promedio por categoria.
SELECT categoria, COUNT(*) AS total_obras, ROUND(AVG(puntaje), 2) AS promedio_puntaje
FROM basico_ejercicio_044
GROUP BY categoria
ORDER BY promedio_puntaje DESC;

-- 4. Obtener las obras cuyo estreno fue en la segunda mitad del año (meses de julio a diciembre).
SELECT nombre, categoria, fecha_estreno
FROM basico_ejercicio_044
WHERE MONTH(fecha_estreno) >= 7;

-- 5. Mostrar la cantidad de años transcurridos desde el estreno de cada obra hasta el año actual.
SELECT nombre, fecha_estreno, YEAR(CURDATE()) - YEAR(fecha_estreno) AS anos_desde_estreno
FROM basico_ejercicio_044
ORDER BY anos_desde_estreno DESC;
