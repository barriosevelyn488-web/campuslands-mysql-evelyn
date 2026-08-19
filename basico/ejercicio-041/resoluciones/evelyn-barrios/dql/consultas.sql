-- Consultas base. Completa o reemplaza segun el enunciado.
-- Consultas analíticas para el ejercicio 041

-- 1. Ranking de jugadores por número de victorias.
-- Esta consulta es fundamental para determinar el rendimiento de cada competidor.
SELECT ganador, COUNT(id) AS total_victorias
FROM partidos_pingpong_basico
GROUP BY ganador
ORDER BY total_victorias DESC;

-- 2. Partidos más reñidos.
-- Identifica los partidos donde la diferencia de puntos fue mínima (2 puntos),
-- un indicador de alta competitividad.
SELECT jugador_a, jugador_b, puntos_a, puntos_b, fecha_partido
FROM partidos_pingpong_basico
WHERE ABS(puntos_a - puntos_b) = 2;

-- 3. Historial de enfrentamientos entre dos jugadores específicos.
-- Permite analizar el desempeño histórico entre dos rivales.
SELECT fecha_partido, jugador_a, puntos_a, jugador_b, puntos_b, ganador
FROM partidos_pingpong_basico
WHERE (jugador_a = 'Ma Long' AND jugador_b = 'Timo Boll')
   OR (jugador_a = 'Timo Boll' AND jugador_b = 'Ma Long')
ORDER BY fecha_partido DESC;

-- 4. Promedio de puntos anotados por el ganador en todos los partidos.
-- Ofrece una métrica sobre el puntaje necesario para asegurar una victoria.
SELECT AVG(CASE WHEN ganador = jugador_a THEN puntos_a ELSE puntos_b END) AS promedio_puntos_ganador
FROM partidos_pingpong_basico;

-- 5. Número de partidos jugados por cada atleta.
-- Ayuda a visualizar la participación de cada jugador en el torneo.
SELECT jugador, COUNT(jugador) AS partidos_jugados
FROM (
    SELECT jugador_a AS jugador FROM partidos_pingpong_basico
    UNION ALL
    SELECT jugador_b AS jugador FROM partidos_pingpong_basico
) AS todos_los_jugadores
GROUP BY jugador
ORDER BY partidos_jugados DESC;
