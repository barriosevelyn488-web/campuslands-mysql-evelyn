# Guía de Pruebas y Verificación - Ejercicio 041

Este documento describe el proceso para ejecutar y validar la solución SQL del ejercicio 041. El objetivo es asegurar la integridad de la estructura, la correcta carga de datos y la precisión de las consultas.

## Verificación desde la Terminal

La validación desde la línea de comandos se compone de tres fases secuenciales.

### 1. Creación del Esquema (DDL)

**Acción:** Este comando ejecuta el script `schema.sql` para crear la tabla `partidos_pingpong_basico` con sus columnas y restricciones.
```bash
mysql -u campus -pcampus123 campuslands_mysql_basico < basico/ejercicio-041/resoluciones/evelyn-barrios/ddl/schema.sql
```
**Resultado Esperado:** El comando finaliza sin errores. La inspección con `DESCRIBE partidos_pingpong_basico;` debe mostrar la estructura definida.

### 2. Carga de Datos (DML)

**Acción:** Este comando ejecuta el script `inserts.sql` para poblar la tabla con 8 registros de partidos.
```bash
mysql -u campus -pcampus123 campuslands_mysql_basico < basico/ejercicio-041/resoluciones/evelyn-barrios/dml/inserts.sql
```
**Resultado Esperado:** La ejecución se completa sin errores. Al ejecutar `SELECT COUNT(*) FROM partidos_pingpong_basico;`, el resultado es `8`.

### 3. Ejecución de Consultas (DQL)

**Acción:** Este comando ejecuta el script `consultas.sql`, que contiene cinco consultas de análisis.
```bash
mysql -u campus -pcampus123 campuslands_mysql_basico < basico/ejercicio-041/resoluciones/evelyn-barrios/dql/consultas.sql
```
**Resultado Esperado:** La terminal muestra cinco conjuntos de resultados consistentes con los datos insertados.

## Verificación en Entorno Gráfico (MySQL Workbench)

El proceso consiste en abrir y ejecutar los scripts en el siguiente orden:

1.  **`ddl/schema.sql`**: Crea la estructura de la tabla.
2.  **`dml/inserts.sql`**: Puebla la tabla con los datos de los partidos.
3.  **`dql/consultas.sql`**: Ejecuta las consultas de análisis. Cada consulta puede ser ejecutada individualmente para revisar sus resultados.