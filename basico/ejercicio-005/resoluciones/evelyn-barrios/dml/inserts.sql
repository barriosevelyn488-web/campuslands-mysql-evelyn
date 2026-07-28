-- Datos de practica. Puedes cambiarlos o agregar mas filas.
-- Archivo: dml/inserts.sql
-- Archivo: dml/inserts.sql
-- Archivo: dml/inserts.sql
-- Descripción: Inserción de datos de ejemplo para la plataforma de blogs.

USE blog_platform;

-- Inserción de usuarios
INSERT INTO usuarios (nombre_usuario, email) VALUES
('ana_coder', 'ana.coder@example.com'),
('beto_dev', 'beto.dev@example.com'),
('carla_design', 'carla.design@example.com'),
('dani_admin', 'dani.admin@example.com');

-- Inserción de categorías
INSERT INTO categorias (nombre_categoria) VALUES
('Tecnología'),
('Desarrollo Web'),
('Diseño UX'),
('Noticias');

-- Inserción de publicaciones (posts)
INSERT INTO posts (titulo, contenido, id_usuario, id_categoria) VALUES
('Introducción a SQL', 'SQL es un lenguaje de dominio específico utilizado en programación...', 1, 2),
('Novedades en CSS 2024', 'Las nuevas pseudo-clases :has() y :is() están revolucionando la forma en que escribimos CSS...', 2, 2),
('Principios de Diseño UX', 'Un buen diseño de experiencia de usuario se centra en el usuario y sus necesidades...', 3, 3),
('Lanzamiento del nuevo Framework "Veloz.js"', 'Hoy se anunció el lanzamiento de Veloz.js, un nuevo framework de JavaScript...', 4, 4),
('SQL vs NoSQL: ¿Cuál elegir?', 'La elección entre bases de datos SQL y NoSQL depende del caso de uso específico...', 1, 1),
('Cómo crear un portfolio de desarrollador', 'Tener un buen portfolio es clave para conseguir tu primer trabajo en tecnología.', 2, 2);

-- Inserción de comentarios
-- Comentarios para el post 1 ('Introducción a SQL')
INSERT INTO comentarios (contenido_comentario, id_usuario, id_post) VALUES
('¡Excelente artículo! Muy claro y conciso.', 2, 1),
('Gracias, me sirvió mucho para repasar conceptos.', 3, 1);

-- Comentarios para el post 2 ('Novedades en CSS 2024')
INSERT INTO comentarios (contenido_comentario, id_usuario, id_post) VALUES
('No sabía de :has(), ¡qué potente!', 1, 2);

-- Comentarios para el post 3 ('Principios de Diseño UX')
INSERT INTO comentarios (contenido_comentario, id_usuario, id_post) VALUES
('Totalmente de acuerdo. El usuario siempre primero.', 1, 3),
('Un buen recordatorio de los fundamentos.', 2, 3),
('Me encantó la sección sobre la empatía en el diseño.', 4, 3);

-- Comentarios para el post 5 ('SQL vs NoSQL')
INSERT INTO comentarios (contenido_comentario, id_usuario, id_post) VALUES
('Muy buena comparación. Ayuda a decidir mejor.', 2, 5);
