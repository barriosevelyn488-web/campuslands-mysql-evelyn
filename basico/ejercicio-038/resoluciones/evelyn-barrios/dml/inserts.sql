-- Datos de practica. Puedes cambiarlos o agregar mas filas.
-- Ejercicio 038: Inserción de datos en la tabla de jugadores de fútbol sala
-- Autor: evelyn-barrios
-- Descripción: Inserta 10 jugadores con estadísticas iniciales para
-- probar las operaciones de UPDATE.

-- Conexión a la base de datos
USE campuslands_mysql;

-- Inserción de 10 jugadores de ejemplo
INSERT INTO jugadores_futsal (nombre_completo, posicion, numero_camiseta, goles_marcados, asistencias, tarjetas_amarillas) VALUES
('Carlos "El Muro" Sánchez', 'Portero', 1, 1, 2, 0),
('Andrés "La Roca" Pérez', 'Cierre', 4, 5, 3, 2),
('Javier "El Rápido" Gómez', 'Ala', 7, 12, 15, 3),
('Ricardo "El Mago" Luna', 'Ala', 11, 15, 10, 1),
('Fernando "El Tanque" Torres', 'Pívot', 9, 20, 5, 4),
('Luis "El Pulpo" Méndez', 'Portero', 12, 0, 1, 0),
('Sergio "El Káiser" Ramos', 'Cierre', 2, 3, 6, 5),
('David "El Rayo" Villa', 'Ala', 10, 18, 12, 1),
('Miguel "El Titán" Herrero', 'Pívot', 5, 14, 8, 3),
('Pablo "El Genio" Iglesias', 'Ala', 8, 9, 20, 0);
