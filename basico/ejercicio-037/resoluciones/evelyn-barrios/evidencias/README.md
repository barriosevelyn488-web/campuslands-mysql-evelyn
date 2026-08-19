# Evidencias de Ejecución - Ejercicio 037

Este directorio está destinado a contener los archivos que demuestran la correcta ejecución y los resultados de los scripts SQL desarrollados para la solución.

## Contenido Sugerido

- **`resultados.txt`**: Un archivo de texto plano que contendrá la salida generada al ejecutar el script `dql/consultas.sql`. Este archivo sirve como prueba tangible de que las consultas producen los resultados esperados.

## Generación de Evidencias

Para generar el archivo de evidencia, se puede utilizar el siguiente comando, que redirige la salida del cliente MySQL a un archivo de texto:

```bash
docker exec -i campuslands-mysql-db mysql -u campus -pcampus123 campuslands_mysql < basico/ejercicio-037/resoluciones/evelyn-barrios/dql/consultas.sql > basico/ejercicio-037/resoluciones/evelyn-barrios/evidencias/resultados.txt
```