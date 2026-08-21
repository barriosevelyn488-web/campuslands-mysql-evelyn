# Resolucion Ejercicio 046 - Restaurante de Comida Urbana (CREATE TABLE)

Este ejercicio modela un menú de comida urbana callejera utilizando una tabla estructurada en MySQL, practicando tipos de datos numéricos y de texto, junto con restricciones y enumeradores.

## Estructura de Resolucion
* `ddl/schema.sql`: Creacion de la tabla `basico_ejercicio_046` que almacena los platillos del restaurante con atributos como `precio`, `estado`, `ingredientes` y `calorias`.
* `dml/inserts.sql`: Insercion de 10 platillos realistas (hamburguesas, tacos, papas trufadas, etc.) con sus precios y categorias.
* `dql/consultas.sql`: 5 consultas SQL utilizando filtros por precio, agrupaciones por categoria, conteos y limites de resultados (`LIMIT`).

## Paso a paso para ejecutar
1. Crea la tabla del menú:
   ```sql
   SOURCE ddl/schema.sql;
   ```
2. Carga los platillos en el menú:
   ```sql
   SOURCE dml/inserts.sql;
   ```
3. Ejecuta las consultas del reporte del menú:
   ```sql
   SOURCE dql/consultas.sql;
   ```

## Decisiones Tecnicas
* Se utilizo el tipo de dato `DECIMAL(10,2)` para los precios para evitar problemas de precision de punto flotante.
* Se utilizo `ENUM('disponible','no_disponible','temporal')` para restringir los estados de cada platillo del menu.
* Se empleo `TEXT` para la lista de ingredientes ya que puede contener cadenas largas.
