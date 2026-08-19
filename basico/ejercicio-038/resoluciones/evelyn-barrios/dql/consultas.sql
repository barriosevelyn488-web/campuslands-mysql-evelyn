-- Consultas base. Completa o reemplaza segun el enunciado.
-- Ejercicio 038: Actualización de datos de jugadores de fútbol sala
-- Autor: evelyn-barrios
-- Descripción: Demuestra el uso de UPDATE para modificar estadísticas
-- y estados de los jugadores, con verificaciones antes y después.

-- Conexión a la base de datos
USE campuslands_mysql;

-- Operación 1: Registrar un gol y una asistencia después de un partido.
-- El jugador con camiseta 9 (Fernando Torres) marcó un gol.
-- El jugador con camiseta 10 (David Villa) dio la asistencia.

SELECT 'Antes del partido:' AS momento, nombre_completo, goles_marcados, asistencias
FROM jugadores_futsal WHERE numero_camiseta IN (9, 10);

UPDATE jugadores_futsal
SET goles_marcados = goles_marcados + 1
WHERE numero_camiseta = 9;

UPDATE jugadores_futsal
SET asistencias = asistencias + 1
WHERE numero_camiseta = 10;

SELECT 'Después del partido:' AS momento, nombre_completo, goles_marcados, asistencias
FROM jugadores_futsal WHERE numero_camiseta IN (9, 10);


-- Operación 2: Registrar una lesión.
-- El jugador con camiseta 7 (Javier Gómez) se ha lesionado.

SELECT 'Antes de la lesión:' AS momento, nombre_completo, estado_fisico
FROM jugadores_futsal WHERE numero_camiseta = 7;

UPDATE jugadores_futsal
SET estado_fisico = 'lesionado'
WHERE numero_camiseta = 7;

SELECT 'Después de la lesión:' AS momento, nombre_completo, estado_fisico
FROM jugadores_futsal WHERE numero_camiseta = 7;


-- Operación 3: Reiniciar el contador de tarjetas amarillas para toda la plantilla al final de la temporada.

SELECT 'Tarjetas antes del reinicio:' AS momento, nombre_completo, tarjetas_amarillas
FROM jugadores_futsal WHERE tarjetas_amarillas > 0;

UPDATE jugadores_futsal
SET tarjetas_amarillas = 0;

SELECT 'Tarjetas después del reinicio:' AS momento, nombre_completo, tarjetas_amarillas
FROM jugadores_futsal;


-- Consulta de Verificación Final: Mostrar el ranking de goleadores actualizado.
SELECT
    nombre_completo,
    posicion,
    goles_marcados
FROM jugadores_futsal
ORDER BY goles_marcados DESC;
