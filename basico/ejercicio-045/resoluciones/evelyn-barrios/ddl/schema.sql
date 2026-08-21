-- Campuslands MySQL - basico ejercicio 045
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS basico_ejercicio_045_juegos;
DROP TABLE IF EXISTS basico_ejercicio_045_desarrolladores;

-- Tabla de Desarrolladores (entidad fuerte)
CREATE TABLE basico_ejercicio_045_desarrolladores (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  pais VARCHAR(80) NOT NULL
);

-- Tabla de Juegos (entidad debil con relacion simple de clave foranea)
CREATE TABLE basico_ejercicio_045_juegos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(120) NOT NULL,
  categoria VARCHAR(80) NOT NULL,
  puntaje DECIMAL(10,2) NOT NULL DEFAULT 0,
  estado ENUM('activo','revision','inactivo') NOT NULL DEFAULT 'activo',
  desarrollador_id INT NOT NULL,
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (desarrollador_id) REFERENCES basico_ejercicio_045_desarrolladores(id) ON DELETE CASCADE
);
