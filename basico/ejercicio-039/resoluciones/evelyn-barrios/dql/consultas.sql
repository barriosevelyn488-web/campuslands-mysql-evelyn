-- Consultas base. Completa o reemplaza segun el enunciado.
-- Ejercicio 039: Eliminación de inscripciones de kickboxing
-- Autor: evelyn-barrios
-- Descripción: Demuestra el uso de DELETE para eliminar registros
-- de forma específica y masiva, con verificaciones.

-- Conexión a la base de datos
USE campuslands_mysql;

-- 1. Mostrar el estado inicial de las inscripciones
SELECT 'Estado inicial de las inscripciones:' AS operacion;
SELECT id, nombre_miembro, estado FROM inscripciones_kickboxing ORDER BY id;

-- 2. Eliminar un registro de prueba específico.
-- Se elimina la inscripción con id = 10 ('Registro de Prueba').

SELECT 'Inscripción de prueba a eliminar (id=10):' AS operacion;
SELECT id, nombre_miembro FROM inscripciones_kickboxing WHERE id = 10;

DELETE FROM inscripciones_kickboxing
WHERE id = 10;

SELECT 'Verificación post-eliminación (id=10):' AS operacion;
SELECT * FROM inscripciones_kickboxing WHERE id = 10; -- Debería estar vacío


-- 3. Eliminar todas las inscripciones que han sido canceladas.

SELECT 'Inscripciones canceladas antes de eliminar:' AS operacion;
SELECT id, nombre_miembro, estado FROM inscripciones_kickboxing WHERE estado = 'cancelada';

DELETE FROM inscripciones_kickboxing
WHERE estado = 'cancelada';

SELECT 'Verificación de inscripciones canceladas después de eliminar:' AS operacion;
SELECT * FROM inscripciones_kickboxing WHERE estado = 'cancelada'; -- Debería estar vacío

-- 4. Mostrar el estado final de las inscripciones.
SELECT 'Estado final de las inscripciones:' AS operacion;
SELECT id, nombre_miembro, estado FROM inscripciones_kickboxing ORDER BY id;
