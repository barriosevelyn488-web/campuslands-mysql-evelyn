# Solución Ejercicio 039 - evelyn-barrios

## 1. Descripción de la Solución

Este script resuelve el ejercicio 039, enfocado en el uso de la sentencia `DELETE` para eliminar registros de una tabla. La solución simula la gestión de inscripciones en una academia de **kickboxing**, donde es necesario eliminar registros de miembros que han cancelado su suscripción o inscripciones de prueba.

La solución se compone de:
- **DDL**: La creación de la tabla `inscripciones_kickboxing`, diseñada para almacenar los detalles de la membresía de cada atleta.
- **DML**: La inserción de 10 registros de ejemplo, incluyendo miembros activos, miembros con estado 'cancelada' y un registro de prueba para ser eliminado específicamente.
- **DQL**: Un script que demuestra dos casos de uso comunes de `DELETE`:
    - **Eliminación específica por `id`**: Se elimina un registro de prueba concreto, una operación común para limpiar datos de testeo.
    - **Eliminación masiva condicional**: Se eliminan todas las inscripciones cuyo estado es 'cancelada', simulando una purga periódica de la base de datos.
    - Cada operación está precedida y seguida por consultas `SELECT` para verificar el estado de la tabla antes y después de cada eliminación.

## 2. Decisiones de Diseño

- **Tabla `inscripciones_kickboxing`**: La tabla utiliza un tipo `ENUM` para la columna `estado` ('activa', 'vencida', 'cancelada') para garantizar la consistencia de los datos y facilitar las consultas de filtrado.
- **Restricción `CHECK`**: Se ha implementado una restricción `CHECK (costo_mensual > 0)` para asegurar que cada inscripción tenga un costo válido y positivo.
- **Script DQL Verificable**: El script de consultas está diseñado para mostrar claramente el "antes y después" de cada operación `DELETE`, facilitando la validación de que los registros correctos fueron eliminados.

## 3. Cómo Ejecutar la Solución

Para validar esta solución, ejecute los scripts en el orden indicado desde la raíz del repositorio.

```bash
# 1. Crear el esquema de la tabla
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < basico/ejercicio-039/resoluciones/evelyn-barrios/ddl/schema.sql

# 2. Insertar los datos de prueba
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < basico/ejercicio-039/resoluciones/evelyn-barrios/dml/inserts.sql

# 3. Ejecutar las eliminaciones y consultas de verificación
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < basico/ejercicio-039/resoluciones/evelyn-barrios/dql/consultas.sql
```