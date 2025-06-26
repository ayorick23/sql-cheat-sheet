-- Archivo: sql-advanced/views/updatable-view.sql

-- Una vista simple basada en una sola tabla puede ser actualizable
CREATE VIEW VistaEmpleadosBasica AS
SELECT empleado_id, nombre, apellido
FROM Empleados;

-- INSERT a través de la vista (si cumple las reglas)
-- INSERT INTO VistaEmpleadosBasica (empleado_id, nombre, apellido) VALUES (6, 'Felipe', 'Diaz');

-- UPDATE a través de la vista (si cumple las reglas)
-- UPDATE VistaEmpleadosBasica SET nombre = 'Ana María' WHERE empleado_id = 1;

-- DELETE a través de la vista (si cumple las reglas)
-- DELETE FROM VistaEmpleadosBasica WHERE empleado_id = 4;