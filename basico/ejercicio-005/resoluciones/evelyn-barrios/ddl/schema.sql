-- Campuslands MySQL - basico ejercicio 003
-- Campuslands MySQL - basico ejercicio 005
-- Archivo: ddl/schema.sql
-- Descripción: Creación del esquema de base de datos para una plataforma de blogs.

-- Crear la base de datos si no existe y seleccionarla
CREATE DATABASE IF NOT EXISTS blog_platform;
USE blog_platform;

-- Tabla para los usuarios de la plataforma
CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Tabla para las categorías de las publicaciones
CREATE TABLE categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(50) NOT NULL UNIQUE
);

-- Tabla para las publicaciones (posts) del blog
CREATE TABLE posts (
    id_post INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    contenido TEXT NOT NULL,
    fecha_publicacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    id_usuario INT,
    id_categoria INT,
    CONSTRAINT fk_usuario_post FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    CONSTRAINT fk_categoria_post FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

-- Tabla para los comentarios en las publicaciones
CREATE TABLE comentarios (
    id_comentario INT AUTO_INCREMENT PRIMARY KEY,
    contenido_comentario TEXT NOT NULL,
    fecha_comentario DATETIME DEFAULT CURRENT_TIMESTAMP,
    id_usuario INT,
    id_post INT,
    CONSTRAINT fk_usuario_comentario FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    CONSTRAINT fk_post_comentario FOREIGN KEY (id_post) REFERENCES posts(id_post)
);
