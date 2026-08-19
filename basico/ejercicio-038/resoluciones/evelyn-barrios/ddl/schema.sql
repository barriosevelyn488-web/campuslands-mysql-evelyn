-- Campuslands MySQL - basico ejercicio 038
-- Ejercicio 038: Creación de la tabla de jugadores de fútbol sala
-- Autor: evelyn-barrios
-- Descripción: Define la estructura de la tabla 'jugadores_futsal' para
-- gestionar estadísticas y estados de los jugadores.

-- Conexión a la base de datos
USE campuslands_mysql;

-- Creación de la tabla 'jugadores_futsal'
CREATE TABLE jugadores_futsal (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_completo VARCHAR(150) NOT NULL,
    posicion ENUM('Portero', 'Cierre', 'Ala', 'Pívot') NOT NULL,
    numero_camiseta INT NOT NULL UNIQUE,
    goles_marcados INT NOT NULL DEFAULT 0,
    asistencias INT NOT NULL DEFAULT 0,
    tarjetas_amarillas INT NOT NULL DEFAULT 0,
    tarjetas_rojas INT NOT NULL DEFAULT 0,
    estado_fisico ENUM('disponible', 'lesionado', 'sancionado') NOT NULL DEFAULT 'disponible',

    -- Restricciones para asegurar la integridad de los datos
    CONSTRAINT chk_goles_no_negativos CHECK (goles_marcados >= 0),
    CONSTRAINT chk_asistencias_no_negativas CHECK (asistencias >= 0),
    CONSTRAINT chk_tarjetas_amarillas_no_negativas CHECK (tarjetas_amarillas >= 0),
    CONSTRAINT chk_tarjetas_rojas_no_negativas CHECK (tarjetas_rojas >= 0)
);
