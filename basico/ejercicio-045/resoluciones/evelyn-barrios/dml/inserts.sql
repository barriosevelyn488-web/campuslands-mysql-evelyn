-- Datos de practica para biblioteca gamer (relaciones simples).
USE campuslands_mysql;

-- Insercion de Desarrolladores (minimo 3)
INSERT INTO basico_ejercicio_045_desarrolladores (nombre, pais) VALUES
('Nintendo', 'Japon'),
('Valve', 'Estados Unidos'),
('FromSoftware', 'Japon'),
('CD Projekt Red', 'Polonia');

-- Insercion de Juegos (minimo 8)
INSERT INTO basico_ejercicio_045_juegos (titulo, categoria, puntaje, estado, desarrollador_id) VALUES
('The Legend of Zelda: Breath of the Wild', 'Aventura', 97.00, 'activo', 1),
('Super Mario Odyssey', 'Plataformas', 95.00, 'activo', 1),
('Portal 2', 'Puzzle', 98.00, 'activo', 2),
('Half-Life: Alyx', 'VR Shooter', 93.00, 'activo', 2),
('Elden Ring', 'RPG de accion', 96.00, 'activo', 3),
('Dark Souls III', 'RPG de accion', 89.00, 'revision', 3),
('Cyberpunk 2077', 'RPG / Sci-Fi', 86.00, 'activo', 4),
('The Witcher 3: Wild Hunt', 'RPG', 92.00, 'activo', 4),
('Counter-Strike 2', 'Shooter FPS', 82.00, 'revision', 2),
('Sekiro: Shadows Die Twice', 'Accion / Aventura', 90.00, 'inactivo', 3);
