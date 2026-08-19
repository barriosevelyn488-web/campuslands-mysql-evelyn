-- Datos de practica. Puedes cambiarlos o agregar mas filas.
-- Ejercicio 039: Inserción de datos en la tabla de inscripciones
-- Autor: evelyn-barrios
-- Descripción: Inserta 10 inscripciones con diferentes estados
-- para probar las operaciones de DELETE.

-- Conexión a la base de datos
USE campuslands_mysql;

-- Inserción de 10 inscripciones de ejemplo
INSERT INTO inscripciones_kickboxing (nombre_miembro, fecha_inscripcion, fecha_vencimiento, estado, costo_mensual) VALUES
('Juan Pérez', '2026-01-15', '2026-09-15', 'activa', 50.00),
('Ana Gómez', '2026-02-20', '2026-10-20', 'activa', 50.00),
('Luis Martínez', '2025-11-10', '2026-07-10', 'vencida', 45.00),
('Sofía Hernández', '2026-03-01', '2026-11-01', 'activa', 55.00),
('Carlos Rodríguez', '2026-04-05', '2026-08-05', 'cancelada', 50.00),
('Laura Díaz', '2026-05-12', '2027-01-12', 'activa', 50.00),
('Pedro Sánchez', '2026-06-18', '2026-07-18', 'cancelada', 40.00),
('Elena Fernández', '2026-07-22', '2026-12-22', 'activa', 55.00),
('Miguel Jiménez', '2026-08-01', '2027-02-01', 'activa', 50.00),
('Registro de Prueba', '2026-01-01', '2026-01-01', 'cancelada', 1.00); -- Registro para eliminación específica
