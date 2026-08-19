
SELECT
    title,
    release_year,
    director,
    genre
FROM peliculas_miedo
WHERE status = 'Disponible'
ORDER BY title;

-- 2. Contar el número de películas por cada estado.

SELECT
    status,
    COUNT(*) AS total_peliculas
FROM peliculas_miedo
GROUP BY status
ORDER BY total_peliculas DESC;

-- 3. Listar películas dirigidas por un director específico que no estén 'Archivada'.

SELECT
    title,
    release_year,
    genre,
    status
FROM peliculas_miedo
WHERE director = 'James Wan' AND status != 'Archivada'
ORDER BY release_year DESC;

-- 4. Encontrar películas con rating 'R' lanzadas después del año 2000 que estén 'Alquilada'.

SELECT
    title,
    release_year,
    director,
    genre
FROM peliculas_miedo
WHERE rating = 'R' AND release_year > 2000 AND status = 'Alquilada'
ORDER BY release_year ASC;

-- 5. Contar el número de películas por género y estado.

SELECT genre, status, COUNT(*) AS total_peliculas FROM peliculas_miedo GROUP BY genre, status ORDER BY genre, status;