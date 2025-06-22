-- Seleccionar todos los productos y ordenarlos por precio de forma ascendente
SELECT nombre, precio, stock
FROM Productos
ORDER BY precio ASC;

-- Seleccionar productos y ordenarlos por stock de forma descendente
SELECT nombre, stock, precio
FROM Productos
ORDER BY stock DESC;

-- Seleccionar pedidos y ordenarlos por fecha de pedido (ascendente) y luego por total (descendente)
SELECT pedido_id, fecha_pedido, total
FROM Pedidos
ORDER BY fecha_pedido ASC, total DESC;

-- Seleccionar el nombre de productos y ordenarlos alfabéticamente
SELECT nombre
FROM Productos
ORDER BY nombre; -- ASC es el valor por defecto