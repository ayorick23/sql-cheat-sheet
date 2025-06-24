-- Insertar datos de ejemplo si aún no existen
INSERT INTO Empleados (empleado_id, nombre, departamento_id) VALUES (1, 'Ana', 101);
INSERT INTO Empleados (empleado_id, nombre, departamento_id) VALUES (2, 'Juan', 102);
INSERT INTO Empleados (empleado_id, nombre, departamento_id) VALUES (3, 'María', 101);
INSERT INTO Empleados (empleado_id, nombre, departamento_id) VALUES (4, 'Pedro', NULL);
INSERT INTO Empleados (empleado_id, nombre, departamento_id) VALUES (5, 'Luisa', 103);

INSERT INTO Departamentos (departamento_id, nombre_departamento) VALUES (101, 'Ventas');
INSERT INTO Departamentos (departamento_id, nombre_departamento) VALUES (102, 'Marketing');
INSERT INTO Departamentos (departamento_id, nombre_departamento) VALUES (103, 'IT');
INSERT INTO Departamentos (departamento_id, nombre_departamento) VALUES (104, 'Recursos Humanos');

-- Obtener el nombre del empleado y el nombre del departamento al que pertenece
-- Solo mostrará empleados que tienen un departamento asignado que existe en la tabla Departamentos.
SELECT
    E.nombre AS NombreEmpleado,
    D.nombre_departamento AS Departamento
FROM
    Empleados E
INNER JOIN
    Departamentos D ON E.departamento_id = D.departamento_id;

-- Resultado esperado:
-- NombreEmpleado | Departamento
-- -------------- | ------------
-- Ana            | Ventas
-- Juan           | Marketing
-- María          | Ventas
-- Luisa          | IT