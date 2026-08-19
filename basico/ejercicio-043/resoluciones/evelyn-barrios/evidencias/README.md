# Ejercicio 043 - Catálogo de Películas de Miedo (Filtros por Estado)

## Temática: Catálogo de Películas de Miedo

Este ejercicio implementa un sistema básico para gestionar un catálogo de películas de miedo, con un enfoque en el uso de filtros por estado para organizar y consultar la disponibilidad de las películas.

## Estructura de la Base de Datos

La solución se basa en una única tabla para almacenar la información de las películas:

1.  **`peliculas_miedo`**: Almacena los detalles de cada película (`id`, `title`, `release_year`, `director`, `genre`, `rating`, `status`). El campo `status` es crucial para este ejercicio, permitiendo clasificar las películas como 'Disponible', 'Alquilada', 'Mantenimiento' o 'Archivada'.

## Archivos de la Solución

*   **`ddl/schema.sql`**: Define la estructura de la tabla `peliculas_miedo`, incluyendo claves primarias, restricciones `CHECK` para `release_year` y `rating`, y un tipo `ENUM` para el campo `status` que asegura la integridad de los estados posibles.

*   **`dml/inserts.sql`**: Puebla la base de datos con un conjunto de películas de miedo. Los datos incluyen una variedad de estados para permitir una prueba exhaustiva de las consultas de filtrado. El script es idempotente.

*   **`dql/consultas.sql`**: Contiene un conjunto de consultas analíticas que demuestran el uso de filtros por estado, así como otras operaciones comunes en un catálogo de películas. Las consultas resuelven preguntas como:
    *   Listar películas disponibles.
    *   Contar películas por estado.
    *   Filtrar películas de un director específico que no estén archivadas.
    *   Encontrar películas con un rating y estado particular lanzadas después de un año.
    *   Contar películas por género y estado.

## Cómo Validar la Solución

Para ejecutar y verificar la solución, sigue estos pasos desde la terminal, asumiendo que el contenedor de Docker de MySQL está en ejecución.

1.  **Crear el esquema:**
    ```bash
    docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql_basico < basico/ejercicio-043/resoluciones/evelyn-barrios/ddl/schema.sql
    ```

2.  **Insertar los datos:**
    ```bash
    docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql_basico < basico/ejercicio-043/resoluciones/evelyn-barrios/dml/inserts.sql
    ```

3.  **Ejecutar las consultas:**
    ```bash
    docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql_basico < basico/ejercicio-043/resoluciones/evelyn-barrios/dql/consultas.sql
    ```

Los resultados de las consultas se mostrarán en la terminal, validando la correcta implementación de la lógica de negocio y el uso de filtros por estado.