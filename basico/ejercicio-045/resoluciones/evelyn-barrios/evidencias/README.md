# Resolucion Ejercicio 045 - Biblioteca Gamer (Relaciones simples)

Este ejercicio demuestra la implementacion de una relacion de uno a muchos (1:N) en MySQL entre desarrolladores de videojuegos y los videojuegos de la biblioteca gamer.

## Estructura de Resolucion
* `ddl/schema.sql`: Creacion de las tablas `basico_ejercicio_045_desarrolladores` y `basico_ejercicio_045_juegos` conectadas por una clave foranea (`FOREIGN KEY`).
* `dml/inserts.sql`: Insercion de 4 desarrolladores y 10 videojuegos con relaciones correctas.
* `dql/consultas.sql`: 5 consultas SQL utilizando joins simples (`INNER JOIN` y `LEFT JOIN`), agrupaciones (`GROUP BY`) y filtros.

## Paso a paso para ejecutar
1. Ejecuta el archivo DDL para crear las tablas en orden (primero desarrolladores, luego juegos):
   ```sql
   SOURCE ddl/schema.sql;
   ```
2. Inserta los datos en orden de dependencia:
   ```sql
   SOURCE dml/inserts.sql;
   ```
3. Ejecuta las consultas para verificar los cruces de informacion:
   ```sql
   SOURCE dql/consultas.sql;
   ```

## Decisiones Tecnicas
* Se definio `desarrollador_id` como clave foranea en la tabla de juegos para mantener la integridad referencial.
* Se utilizo la opcion `ON DELETE CASCADE` en la clave foranea para asegurar que si se elimina un desarrollador, se eliminen automaticamente sus juegos asociados.
