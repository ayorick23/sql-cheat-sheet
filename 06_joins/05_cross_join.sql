-- Ejemplo simple para demostrar el CROSS JOIN
-- Si Empleados tiene 5 filas y Departamentos tiene 4 filas, el resultado tendrá 20 filas (5 * 4).
SELECT
    E.nombre AS NombreEmpleado,
    D.nombre_departamento AS Departamento
FROM
    Empleados E
CROSS JOIN
    Departamentos D;

-- Este tipo de JOIN se usa raramente, a menudo para generar combinaciones posibles o para
-- benchmarks, o cuando se simula un FULL OUTER JOIN en MySQL.