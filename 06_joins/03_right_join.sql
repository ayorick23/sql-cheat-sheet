-- Obtener todos los departamentos y, si tienen, los empleados asignados.
-- Incluirá 'Recursos Humanos', aunque no tenga empleados asignados.
SELECT
    E.nombre AS NombreEmpleado,
    D.nombre_departamento AS Departamento
FROM
    Empleados E
RIGHT JOIN
    Departamentos D ON E.departamento_id = D.departamento_id;

-- Resultado esperado:
-- NombreEmpleado | Departamento
-- -------------- | ----------------
-- Ana            | Ventas
-- Juan           | Marketing
-- María          | Ventas
-- Luisa          | IT
-- NULL           | Recursos Humanos