# Resolucion Ejercicio 044 - Saga de Ciencia Ficcion (Fechas basicas)

Este ejercicio modela una base de datos para una saga de ciencia ficcion, practicando la creacion de tablas, insercion de registros reales y la manipulacion basica de campos de fecha (`DATE`).

## Estructura de Resolucion
* `ddl/schema.sql`: Creacion de la base de datos y la tabla `basico_ejercicio_044` con la columna `fecha_estreno`.
* `dml/inserts.sql`: Insercion de 10 registros de ciencia ficcion (peliculas, series, libros).
* `dql/consultas.sql`: 5 consultas SQL utilizando funciones de fecha como `MONTH()` y calculos de diferencia de años.

## Paso a paso para ejecutar
1. Ejecuta el archivo DDL para crear la tabla:
   ```sql
   SOURCE ddl/schema.sql;
   ```
2. Inserta los registros de prueba en la tabla:
   ```sql
   SOURCE dml/inserts.sql;
   ```
3. Ejecuta las consultas de consulta y reportes para verificar los resultados:
   ```sql
   SOURCE dql/consultas.sql;
   ```

## Decisiones Tecnicas
* Se añadio el tipo de dato `DATE` para `fecha_estreno` para permitir el analisis temporal.
* Se utilizo la funcion `MONTH()` para filtrar fechas segun el mes de estreno.
* Se calculo la antiguedad de cada obra restando los años de estreno del año actual (`YEAR(CURDATE())`).
