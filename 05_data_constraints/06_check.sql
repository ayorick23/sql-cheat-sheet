CREATE TABLE Empleados_Check (
    empleado_id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    salario DECIMAL(10, 2) CHECK (salario >= 0 AND salario <= 100000), -- El salario debe estar entre 0 y 100,000
    edad INT CHECK (edad >= 18) -- La edad debe ser al menos 18 años
);

-- Inserciones válidas
INSERT INTO Empleados_Check (empleado_id, nombre, salario, edad)
VALUES (1, 'Juan Perez', 50000.00, 30);

INSERT INTO Empleados_Check (empleado_id, nombre, salario, edad)
VALUES (2, 'Laura Gomez', 25000.00, 22);

-- Inserciones que resultarán en error (salario fuera de rango o edad menor a 18)
-- INSERT INTO Empleados_Check (empleado_id, nombre, salario, edad)
-- VALUES (3, 'Roberto Díaz', 120000.00, 45); -- Error: Salario fuera de rango

-- INSERT INTO Empleados_Check (empleado_id, nombre, salario, edad)
-- VALUES (4, 'Sofia Castro', 30000.00, 17); -- Error: Edad menor a 18