-- Actualizar el precio de un producto específico
UPDATE Productos
SET precio = 1250.00
WHERE producto_id = 1;

-- Actualizar el stock de varios productos (usando IN)
UPDATE Productos
SET stock = stock + 5 -- Incrementar el stock en 5 unidades
WHERE producto_id IN (3, 4);

-- Actualizar el nombre y el precio de un producto
UPDATE Productos
SET nombre = 'Monitor UltraWide', precio = 400.00
WHERE producto_id = 2;

-- Actualizar todos los productos que tienen un stock menor a 10
UPDATE Productos
SET stock = 10 -- Establecer el stock mínimo en 10
WHERE stock < 10;

-- Actualizar el precio de todos los productos (sin WHERE - ¡CUIDADO!)
-- Esto aumentaría el precio de todos los productos en un 10%.
UPDATE Productos
SET precio = precio * 1.10;