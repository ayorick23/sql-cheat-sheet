-- Ejemplo 1: Eliminar un producto específico por su ID
DELETE FROM Productos
WHERE producto_id = 6;

-- Ejemplo 2: Eliminar productos con un stock de 0
DELETE FROM Productos
WHERE stock = 0;

-- Ejemplo 3: Eliminar productos con un precio menor a 50
DELETE FROM Productos
WHERE precio < 50.00;

-- Ejemplo 4: Eliminar todos los productos de la tabla (sin WHERE - ¡CUIDADO!)
-- Esto vaciará completamente la tabla Productos.
-- DELETE FROM Productos;