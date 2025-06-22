-- Mostrar el número de productos por stock, pero solo para aquellos stocks que tienen más de 1 producto
SELECT stock, COUNT(producto_id) AS CantidadProductos
FROM Productos
GROUP BY stock
HAVING COUNT(producto_id) > 1;

-- Calcular el total de ventas por cliente, pero solo para clientes con un total de ventas superior a 150.00
SELECT cliente_id, SUM(total) AS TotalVentasPorCliente
FROM Pedidos
GROUP BY cliente_id
HAVING SUM(total) > 150.00;

-- Encontrar ciudades donde hay más de 1 cliente
SELECT ciudad, COUNT(cliente_id) AS TotalClientes
FROM Clientes
GROUP BY ciudad
HAVING COUNT(cliente_id) > 1;