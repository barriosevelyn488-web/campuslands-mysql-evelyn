-- Consultas para ejercicio 046 - Restaurante de Comida Urbana
USE campuslands_mysql;

-- 1. Listar todos los platillos que cuesten menos de $10.00, ordenados de menor a mayor precio.
SELECT nombre, categoria, precio
FROM basico_ejercicio_046
WHERE precio < 10.00
ORDER BY precio ASC;

-- 2. Seleccionar los platos pertenecientes a las categorias de 'Hamburguesas' o 'Sandwiches'.
SELECT nombre, categoria, precio, estado
FROM basico_ejercicio_046
WHERE categoria IN ('Hamburguesas', 'Sandwiches');

-- 3. Calcular el precio promedio de los platillos agrupados por su categoria.
SELECT categoria, COUNT(*) AS cantidad_items, ROUND(AVG(precio), 2) AS precio_promedio
FROM basico_ejercicio_046
GROUP BY categoria
ORDER BY precio_promedio DESC;

-- 4. Obtener todos los platillos disponibles cuyo contenido calorico sea mayor a 500 calorias.
SELECT nombre, categoria, calorias, precio
FROM basico_ejercicio_046
WHERE estado = 'disponible' AND calorias > 500;

-- 5. Listar el top 3 de los platos mas costosos que esten disponibles o sean temporales.
SELECT nombre, categoria, precio, estado
FROM basico_ejercicio_046
WHERE estado IN ('disponible', 'temporal')
ORDER BY precio DESC
LIMIT 3;
