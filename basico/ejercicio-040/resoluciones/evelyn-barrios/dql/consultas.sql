
SELECT COUNT(id) AS total_carreras_programadas
FROM carreras_urbanas_basico
WHERE estado = 'Programada';

SELECT SUM(premio_usd) AS bolsa_premios_bogota
FROM carreras_urbanas_basico
WHERE ciudad = 'Bogotá';


SELECT ciudad, COUNT(id) AS numero_de_carreras, SUM(distancia_km) AS distancia_total_km
FROM carreras_urbanas_basico
GROUP BY ciudad
ORDER BY numero_de_carreras DESC;


SELECT SUM(premio_usd) AS premios_entregados_total
FROM carreras_urbanas_basico
WHERE estado = 'Finalizada';

SELECT COUNT(id) AS carreras_sin_premio_monetario
FROM carreras_urbanas_basico
WHERE premio_usd IS NULL;
