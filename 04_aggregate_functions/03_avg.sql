-- Calcular el precio promedio de todos los productos
SELECT AVG(precio) AS PrecioPromedioProductos
FROM Productos;

-- Calcular el stock promedio por producto
SELECT AVG(stock) AS StockPromedioPorProducto
FROM Productos;

-- Calcular el valor promedio de los pedidos
SELECT AVG(total) AS PromedioValorPedido
FROM Pedidos;

-- Calcular el promedio de los totales de pedidos por cliente
SELECT cliente_id, AVG(total) AS PromedioPedidoPorCliente
FROM Pedidos
GROUP BY cliente_id;

-- Calcular el precio promedio de productos cuyo stock es mayor que 10
SELECT AVG(precio) AS PrecioPromedioStockAlto
FROM Productos
WHERE stock > 10;