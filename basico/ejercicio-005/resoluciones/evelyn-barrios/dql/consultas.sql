-- Consultas base. Completa o reemplaza segun el enunciado.
-- Archivo: dql/consultas.sql
-- Descripción: Consultas para la plataforma de blogs.

USE blog_platform;

-- 1. Listar todos los posts con el nombre del autor y la categoría.
-- Esta consulta es útil para mostrar un resumen de las publicaciones en la página principal.
SELECT
    p.titulo AS titulo_post,
    p.fecha_publicacion,
    u.nombre_usuario AS autor,
    c.nombre_categoria AS categoria
FROM posts p
JOIN usuarios u ON p.id_usuario = u.id_usuario
JOIN categorias c ON p.id_categoria = c.id_categoria
ORDER BY p.fecha_publicacion DESC;

-- 2. Encontrar los posts de un usuario específico (por ejemplo, 'ana_coder').
-- Permite ver todas las contribuciones de un autor en particular.
SELECT
    p.titulo,
    p.contenido,
    p.fecha_publicacion
FROM posts p
JOIN usuarios u ON p.id_usuario = u.id_usuario
WHERE u.nombre_usuario = 'ana_coder';

-- 3. Contar cuántos comentarios tiene cada post.
-- Sirve para identificar los posts más populares o que generan más interacción.
SELECT
    p.titulo,
    COUNT(c.id_comentario) AS total_comentarios
FROM posts p
LEFT JOIN comentarios c ON p.id_post = c.id_post
GROUP BY p.id_post
ORDER BY total_comentarios DESC;

-- 4. Mostrar los 5 comentarios más recientes.
-- Útil para un panel de administración o una sección de "Actividad Reciente".
SELECT
    c.contenido_comentario,
    c.fecha_comentario,
    u.nombre_usuario AS autor_comentario,
    p.titulo AS post_asociado
FROM comentarios c
JOIN usuarios u ON c.id_usuario = u.id_usuario
JOIN posts p ON c.id_post = p.id_post
ORDER BY c.fecha_comentario DESC
LIMIT 5;

-- 5. Calcular el número de posts por categoría.
-- Ayuda a entender qué temas son los más cubiertos en el blog.
SELECT
    c.nombre_categoria,
    COUNT(p.id_post) AS numero_de_posts
FROM categorias c
LEFT JOIN posts p ON c.id_categoria = p.id_categoria
GROUP BY c.id_categoria
ORDER BY numero_de_posts DESC;
