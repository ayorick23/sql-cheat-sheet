-- Añadir una columna 'telefono' a la tabla Clientes
ALTER TABLE Clientes
ADD telefono VARCHAR(20);

-- Eliminar la columna 'email' de la tabla Clientes
ALTER TABLE Clientes
DROP COLUMN email;

-- Modificar el tipo de dato de la columna 'nombre' (Sintaxis para SQL Server)
ALTER TABLE Clientes
ALTER COLUMN nombre VARCHAR(150);

-- Añadir una restricción UNIQUE a la columna 'telefono'
ALTER TABLE Clientes
ADD CONSTRAINT UQ_Clientes_Telefono UNIQUE (telefono);