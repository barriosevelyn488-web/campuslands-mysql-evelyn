# Solución Ejercicio 005 - Plataforma de Blogs

## Autor
- Evelyn Barrios

## 1. Descripción de la Solución
Esta solución implementa un esquema de base de datos para una plataforma de blogs. El diseño está normalizado para gestionar usuarios, categorías, publicaciones (posts) y comentarios, estableciendo las relaciones lógicas entre ellos.

## 2. Decisiones de Diseño
*   **Normalización y Relaciones**:
    *   Se crearon 4 tablas: `usuarios`, `categorias`, `posts` y `comentarios`.
    *   `usuarios` y `posts` tienen una relación de uno a muchos (un usuario puede escribir muchos posts).
    *   `categorias` y `posts` tienen una relación de uno a muchos (una categoría puede tener muchos posts).
    *   `posts` y `comentarios` tienen una relación de uno a muchos (un post puede tener muchos comentarios).
    *   `usuarios` y `comentarios` tienen una relación de uno a muchos (un usuario puede escribir muchos comentarios).
*   **Tipos de Datos Adecuados**:
    *   `VARCHAR` para nombres de usuario, emails y títulos.
    *   `TEXT` para el contenido de las publicaciones y comentarios, permitiendo textos de longitud variable.
    *   `DATETIME` con `DEFAULT CURRENT_TIMESTAMP` para registrar automáticamente las fechas de creación.
*   **Integridad Referencial**: Se utilizan `FOREIGN KEY` para asegurar que cada post tenga un autor y una categoría válidos, y que cada comentario esté asociado a un usuario y un post existentes.
*   **Restricciones de Unicidad (`UNIQUE`)**:
    *   Se aplica `UNIQUE` a `nombre_usuario` y `email` en la tabla `usuarios` para evitar registros duplicados.
    *   Se aplica `UNIQUE` a `nombre_categoria` para asegurar que no haya categorías repetidas.

## 3. Cómo Ejecutar los Scripts
Para recrear la base de datos, poblarla con datos y ejecutar las consultas, sigue este orden:

1.  **`ddl/schema.sql`**: Ejecuta este script para crear la base de datos `blog_platform` y sus tablas.
    ```bash
    mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < basico/ejercicio-005/resoluciones/evelyn-barrios/ddl/schema.sql
    ```
2.  **`dml/inserts.sql`**: Ejecuta este script para insertar los datos de ejemplo.
    ```bash
    mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < basico/ejercicio-005/resoluciones/evelyn-barrios/dml/inserts.sql
    ```
3.  **`dql/consultas.sql`**: Ejecuta este script para ver los resultados de las consultas.
    ```bash
    mysql -h 127.0.0.1 -P 3307 -u campus -pcampus123 < basico/ejercicio-005/resoluciones/evelyn-barrios/dql/consultas.sql
    ```

Asegúrate de tener el servidor MySQL corriendo.