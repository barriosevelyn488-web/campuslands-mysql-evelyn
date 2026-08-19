-- Campuslands MySQL - basico ejercicio 039
-- Ejercicio 039: Creación de la tabla de inscripciones de kickboxing
-- Autor: evelyn-barrios
-- Descripción: Define la estructura de la tabla 'inscripciones_kickboxing' para
-- gestionar membresías y practicar operaciones de DELETE.

-- Conexión a la base de datos
USE campuslands_mysql;

-- Creación de la tabla 'inscripciones_kickboxing'
CREATE TABLE inscripciones_kickboxing (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_miembro VARCHAR(150) NOT NULL,
    fecha_inscripcion DATE NOT NULL,
    fecha_vencimiento DATE NOT NULL,
    estado ENUM('activa', 'vencida', 'cancelada') NOT NULL DEFAULT 'activa',
    costo_mensual DECIMAL(8, 2) NOT NULL,
    
    -- Restricción para asegurar que el costo sea un valor positivo.
    CONSTRAINT chk_costo_positivo CHECK (costo_mensual > 0)
);
