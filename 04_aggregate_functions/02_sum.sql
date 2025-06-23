-- Calcular el valor total de todo el stock de productos
SELECT SUM(precio * stock) AS ValorTotalInventario
FROM Productos;

-- Calcular la suma total de precios de todos los productos
SELECT SUM(precio) AS SumaTotalPrecios
FROM Productos;

-- Calcular el total de todas las ventas realizadas
SELECT SUM(total) AS SumaTotalVentas
FROM Pedidos;

-- Calcular el total de ventas por cliente
SELECT cliente_id, SUM(total) AS TotalVentasPorCliente
FROM Pedidos
GROUP BY cliente_id;

-- Sumar el stock de productos por cada nivel de precio
SELECT precio, SUM(stock) AS StockTotalPorPrecio
FROM Productos
GROUP BY precio;