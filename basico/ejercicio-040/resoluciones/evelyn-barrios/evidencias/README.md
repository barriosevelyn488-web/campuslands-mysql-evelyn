# Guía de Pruebas y Verificación - Ejercicio 040

Este documento describe el proceso para ejecutar y validar la solución SQL del ejercicio 040. El objetivo es asegurar la integridad de la estructura, la correcta carga de datos y la precisión de las consultas.

## Verificación desde la Terminal

La validación desde la línea de comandos se compone de tres fases secuenciales.

### 1. Creación del Esquema (DDL)

**Acción:** Este comando ejecuta el script `schema.sql`, cuya función es crear la base de datos y la tabla `carreras_urbanas_basico` con sus respectivas columnas y restricciones.
```bash
mysql -u campus -pcampus123 campuslands_mysql_basico < basico/ejercicio-040/resoluciones/evelyn-barrios/ddl/schema.sql
```

**Criterio de Aceptación:** El script se ejecuta sin errores. La inspección posterior de la tabla mediante `DESCRIBE carreras_urbanas_basico;` muestra una estructura que coincide con la definición del esquema, incluyendo tipos de datos, claves y restricciones `CHECK`.

### Fase 2: Verificación de la Carga de Datos (DML)

**Objetivo:** Validar la inserción del conjunto de datos de prueba en la tabla previamente creada.

**Comando de Ejecución:**
```bash
mysql -u campus -pcampus123 campuslands_mysql_basico < basico/ejercicio-040/resoluciones/evelyn-barrios/dml/inserts.sql
```

**Criterio de Aceptación:** La ejecución finaliza sin violaciones de restricciones. Una consulta de conteo (`SELECT COUNT(*) FROM carreras_urbanas_basico;`) retorna un valor de `10`.

### Fase 3: Verificación de las Consultas (DQL)

**Objetivo:** Asegurar que las consultas de análisis extraen los indicadores de negocio de manera precisa.

**Comando de Ejecución:**
```bash
mysql -u campus -pcampus123 campuslands_mysql_basico < basico/ejercicio-040/resoluciones/evelyn-barrios/dql/consultas.sql
```

**Criterio de Aceptación:** El script produce cinco conjuntos de resultados en la salida estándar. Los valores retornados por cada consulta son consistentes con los datos insertados, demostrando la correcta aplicación de las funciones de agregación y la lógica de negocio.