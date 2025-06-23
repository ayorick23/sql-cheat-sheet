-- Primero, la tabla 'padre' (Departamentos) debe existir y tener una PRIMARY KEY
CREATE TABLE Departamentos (
    departamento_id INT PRIMARY KEY,
    nombre_departamento VARCHAR(100) NOT NULL UNIQUE
);

-- Insertar algunos departamentos
INSERT INTO Departamentos (departamento_id, nombre_departamento)
VALUES (1, 'Ventas'), (2, 'Marketing'), (3, 'IT');

-- Ahora, la tabla 'hija' (Empleados_FK) que referencia a Departamentos
CREATE TABLE Empleados_FK (
    empleado_id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    departamento_id INT,
    -- Definición de la clave foránea:
    FOREIGN KEY (departamento_id) REFERENCES Departamentos(departamento_id)
);

-- Insertar un empleado en un departamento existente (Ventas)
INSERT INTO Empleados_FK (empleado_id, nombre, departamento_id)
VALUES (1, 'Ana García', 1);

-- Insertar un empleado en un departamento no existente (resultará en error)
-- INSERT INTO Empleados_FK (empleado_id, nombre, departamento_id)
-- VALUES (2, 'Pedro Soto', 99); -- Error: el departamento_id 99 no existe en Departamentos

-- Acciones en cascada (Opcional, se especifica al definir la FK):
-- ON DELETE CASCADE: Si se elimina la fila padre, se eliminan las filas hijas relacionadas.
-- ON UPDATE CASCADE: Si se actualiza la PK padre, se actualiza la FK en las filas hijas.
-- ON DELETE SET NULL: Si se elimina la fila padre, la FK en la fila hija se establece en NULL.
-- ON DELETE NO ACTION (Default): No permite eliminar la fila padre si hay filas hijas relacionadas.

/* Ejemplo con ON DELETE CASCADE:
CREATE TABLE Empleados_FK_Cascade (
    empleado_id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    departamento_id INT,
    FOREIGN KEY (departamento_id) REFERENCES Departamentos(departamento_id) ON DELETE CASCADE
);
*/