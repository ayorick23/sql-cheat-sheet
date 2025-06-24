CREATE TABLE Empleados (
    empleado_id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL, -- El nombre no puede ser nulo
    apellido VARCHAR(100) NOT NULL, -- El apellido no puede ser nulo
    email VARCHAR(255)
);

-- Intentar insertar un empleado sin nombre o apellido resultará en un error
-- INSERT INTO Empleados (empleado_id, nombre, apellido, email) VALUES (1, NULL, 'Pérez', 'juan@example.com'); -- Error
-- INSERT INTO Empleados (empleado_id, nombre, apellido, email) VALUES (2, 'Maria', NULL, 'maria@example.com'); -- Error

-- Esto sí sería válido
INSERT INTO Empleados (empleado_id, nombre, apellido, email)
VALUES (3, 'Carlos', 'Ruiz', 'carlos@example.com');