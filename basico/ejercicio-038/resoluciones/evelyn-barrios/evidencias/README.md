# Solución Ejercicio 038 - evelyn-barrios

## 1. Descripción de la Solución

Este script resuelve el ejercicio 038, centrado en la manipulación de datos mediante la sentencia `UPDATE`. La solución simula la gestión de una plantilla de jugadores de fútbol sala, donde es necesario actualizar sus estadísticas y estados después de los partidos o al final de una temporada.

La solución se estructura de la siguiente manera:
- **DDL**: Creación de la tabla `jugadores_futsal`, diseñada para almacenar información personal y estadísticas de rendimiento de cada jugador.
- **DML**: Inserción de 10 jugadores con datos iniciales, representando el estado de la plantilla al comienzo de un periodo.
- **DQL**: Un script que demuestra varios casos de uso de `UPDATE`:
    - Actualización de estadísticas individuales (goles, asistencias).
    - Modificación del estado de un jugador (de 'disponible' a 'lesionado').
    - Una actualización masiva para reiniciar las tarjetas amarillas de toda la plantilla.
    - Cada operación de `UPDATE` está acompañada de consultas `SELECT` para verificar el estado de los datos antes y después del cambio.

## 2. Decisiones de Diseño

- **Tabla `jugadores_futsal`**: Se ha diseñado con columnas específicas para estadísticas (`goles_marcados`, `asistencias`, etc.) y estados (`estado_fisico`).
- **Tipos de Datos `ENUM`**: Se utiliza el tipo `ENUM` para las columnas `posicion` y `estado_fisico`. Esto garantiza la integridad de los datos, permitiendo únicamente valores predefinidos ('Portero', 'Cierre', 'Ala', 'Pívot') y ('disponible', 'lesionado', 'sancionado'), lo que evita errores de entrada y facilita las consultas.
- **Restricciones `CHECK`**: Se han implementado restricciones `CHECK` para asegurar que las estadísticas numéricas (goles, asistencias, tarjetas) no puedan ser negativas, manteniendo la lógica del negocio.
- **Script DQL Verificable**: El script de consultas está diseñado para ser autoexplicativo, mostrando el estado de los datos antes y después de cada `UPDATE`, lo que facilita la validación del comportamiento esperado.

## 3. Cómo Ejecutar la Solución

Para validar esta solución, ejecute los scripts en el orden indicado desde la raíz del repositorio.

```bash
# 1. Crear el esquema de la tabla
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < basico/ejercicio-038/resoluciones/evelyn-barrios/ddl/schema.sql

# 2. Insertar los datos de prueba
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < basico/ejercicio-038/resoluciones/evelyn-barrios/dml/inserts.sql

# 3. Ejecutar las actualizaciones y consultas de verificación
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < basico/ejercicio-038/resoluciones/evelyn-barrios/dql/consultas.sql
```