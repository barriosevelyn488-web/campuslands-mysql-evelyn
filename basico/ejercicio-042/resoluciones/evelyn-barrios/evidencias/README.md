# Ejercicio 042 - Biblioteca de Música (Relaciones Complejas)

## Temática: Biblioteca de Música Digital

Este ejercicio implementa el backend para una aplicación de gestión de música, similar a Spotify o Apple Music. El diseño se centra en modelar las relaciones entre artistas, canciones y playlists, incluyendo una relación de muchos a muchos.

## Estructura de la Base de Datos

La solución se basa en un esquema relacional con cuatro tablas para organizar la información de manera eficiente:

1.  **`artists`**: Almacena la información de los artistas (`id`, `name`, `genre`).
2.  **`songs`**: Contiene los detalles de cada canción y se relaciona con un artista (`id`, `title`, `artist_id`, `duration_seconds`, `release_date`).
3.  **`playlists`**: Define las playlists creadas por los usuarios (`id`, `name`, `creator_username`).
4.  **`playlist_items`**: Tabla de enlace que gestiona la relación muchos a muchos entre `playlists` y `songs`, permitiendo que una canción esté en varias playlists y una playlist contenga varias canciones.

## Archivos de la Solución

*   **`ddl/schema.sql`**: Define la estructura de las cuatro tablas, incluyendo claves primarias, foráneas y restricciones para garantizar la integridad de los datos. Se ha mejorado para ser un script idempotente.

*   **`dml/inserts.sql`**: Puebla la base de datos con un conjunto de datos único y coherente. El script es idempotente y utiliza IDs explícitos para asegurar la correcta vinculación entre tablas.

*   **`dql/consultas.sql`**: Contiene un conjunto de consultas analíticas para extraer información valiosa del sistema. Las consultas demuestran el uso de `JOINs`, agregaciones, subconsultas y funciones de ventana para resolver preguntas como:
    *   Calcular la duración total de cada playlist.
    *   Encontrar artistas con un número determinado de canciones.
    *   Identificar canciones que no pertenecen a ninguna playlist.
    *   Determinar la canción más larga por cada género musical.
    *   Listar las playlists más diversas en cuanto a variedad de artistas.

## Cómo Validar la Solución

Para ejecutar y verificar la solución, sigue estos pasos desde la terminal, asumiendo que el contenedor de Docker de MySQL está en ejecución.

1.  **Crear el esquema:**
    ```bash
    docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql_basico < ddl/schema.sql
    ```

2.  **Insertar los datos:**
    ```bash
    docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql_basico < dml/inserts.sql
    ```

3.  **Ejecutar las consultas:**
    ```bash
    docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql_basico < dql/consultas.sql
    ```

Los resultados de las consultas se mostrarán en la terminal, validando la correcta implementación de la lógica de negocio y las relaciones de la base de datos.