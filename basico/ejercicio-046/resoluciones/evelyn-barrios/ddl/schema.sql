-- Campuslands MySQL - basico ejercicio 046
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS basico_ejercicio_046;

CREATE TABLE basico_ejercicio_046 (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(120) NOT NULL,
  categoria VARCHAR(80) NOT NULL,
  precio DECIMAL(10,2) NOT NULL DEFAULT 0.00,
  estado ENUM('disponible','no_disponible','temporal') NOT NULL DEFAULT 'disponible',
  ingredientes TEXT,
  calorias INT,
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
