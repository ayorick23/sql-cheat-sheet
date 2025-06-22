-- SQL Server: Seleccionar los 5 productos más caros
SELECT TOP 5 nombre, precio
FROM Productos
ORDER BY precio DESC;

-- SQL Server / Oracle: Seleccionar 3 productos, saltándose los primeros 2
SELECT nombre, precio
FROM Productos
ORDER BY precio DESC
OFFSET 2 ROWS FETCH NEXT 3 ROWS ONLY;

-- MySQL / PostgreSQL / SQLite: Seleccionar los 5 productos más caros
-- SELECT nombre, precio
-- FROM Productos
-- ORDER BY precio DESC
-- LIMIT 5;

-- MySQL / PostgreSQL / SQLite: Seleccionar 3 productos, saltándose los primeros 2
-- Esto sería el 3er, 4to y 5to producto después de la ordenación
-- SELECT nombre, precio
-- FROM Productos
-- ORDER BY precio DESC
-- LIMIT 3 OFFSET 2;