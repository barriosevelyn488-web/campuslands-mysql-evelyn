-- Campuslands MySQL - basico ejercicio 040

CREATE DATABASE IF NOT EXISTS campuslands_mysql_basico;
USE campuslands_mysql_basico;

-- Diseño de la tabla para carreras urbanas
CREATE TABLE IF NOT EXISTS carreras_urbanas_basico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_carrera VARCHAR(100) NOT NULL,
    ciudad VARCHAR(50) NOT NULL,
    fecha DATE NOT NULL,
    distancia_km DECIMAL(5, 2) NOT NULL,
    premio_usd DECIMAL(10, 2),
    estado ENUM('Programada', 'Finalizada', 'Cancelada') NOT NULL DEFAULT 'Programada',
    CONSTRAINT chk_distancia_positiva CHECK (distancia_km > 0),
    CONSTRAINT chk_premio_positivo CHECK (premio_usd IS NULL OR premio_usd >= 0)
);

-- Limpieza inicial por si se ejecutan los scripts varias veces
TRUNCATE TABLE carreras_urbanas_basico;
