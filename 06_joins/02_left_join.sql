-- Obtener todos los empleados y, si tienen, su departamento.
-- Incluirá a 'Pedro', aunque no tenga un departamento asignado.
SELECT
    E.nombre AS NombreEmpleado,
    D.nombre_departamento AS Departamento
FROM
    Empleados E
LEFT JOIN
    Departamentos D ON E.departamento_id = D.departamento_id;

-- Resultado esperado:
-- NombreEmpleado | Departamento
-- -------------- | ----------------
-- Ana            | Ventas
-- Juan           | Marketing
-- María          | Ventas
-- Pedro          | NULL
-- Luisa          | IT