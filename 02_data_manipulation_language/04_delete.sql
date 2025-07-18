-- Eliminar un producto específico por su ID
DELETE FROM Productos
WHERE producto_id = 6;

-- Eliminar productos con un stock de 0
DELETE FROM Productos
WHERE stock = 0;

-- Eliminar productos con un precio menor a 50
DELETE FROM Productos
WHERE precio < 50.00;

-- Eliminar todos los productos de la tabla (sin WHERE - ¡CUIDADO!)
-- Esto vaciará completamente la tabla Productos.
DELETE FROM Productos;

-- Eliminar las tablas de ejemplo
DROP TABLE Productos;
DROP TABLE NuevosProductos;