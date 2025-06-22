-- Seleccionar todas las columnas de la tabla 'Productos'
SELECT *
FROM Productos;

-- Seleccionar columnas específicas: nombre y precio de 'Productos'
SELECT nombre, precio
FROM Productos;

-- Seleccionar el nombre de productos, pero renombrando la columna (alias)
SELECT nombre AS 'Nombre del Producto', precio AS PrecioUnitario
FROM Productos;

-- Seleccionar valores únicos (DISTINCT) de ciudades de la tabla 'Clientes'
SELECT DISTINCT ciudad
FROM Clientes;