-- Obtener todos los empleados y todos los departamentos, mostrando sus coincidencias.
-- Incluirá a 'Pedro' (sin departamento) y 'Recursos Humanos' (sin empleados).
SELECT
    E.nombre AS NombreEmpleado,
    D.nombre_departamento AS Departamento
FROM
    Empleados E
FULL OUTER JOIN
    Departamentos D ON E.departamento_id = D.departamento_id;

-- Resultado esperado:
-- NombreEmpleado | Departamento
-- -------------- | ----------------
-- Ana            | Ventas
-- Juan           | Marketing
-- María          | Ventas
-- Luisa          | IT
-- Pedro          | NULL
-- NULL           | Recursos Humanos