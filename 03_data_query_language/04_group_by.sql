-- Contar el número de productos por cada nivel de stock
SELECT stock, COUNT(producto_id) AS CantidadProductos
FROM Productos
GROUP BY stock;

-- Calcular el total de ventas por cliente (usando la tabla 'Pedidos')
SELECT cliente_id, SUM(total) AS TotalVentasPorCliente
FROM Pedidos
GROUP BY cliente_id;

-- Calcular el precio promedio de productos por las primeras 3 letras del nombre
SELECT SUBSTRING(nombre, 1, 3) AS PrefijoNombre, AVG(precio) AS PrecioPromedio
FROM Productos
GROUP BY SUBSTRING(nombre, 1, 3);