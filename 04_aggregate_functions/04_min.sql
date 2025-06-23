-- Encontrar el precio más bajo de un producto
SELECT MIN(precio) AS PrecioMinimo
FROM Productos;

-- Encontrar el stock mínimo de un producto
SELECT MIN(stock) AS StockMinimo
FROM Productos;

-- Encontrar la fecha del pedido más antiguo
SELECT MIN(fecha_pedido) AS PedidoMasAntiguo
FROM Pedidos;

-- Encontrar el precio mínimo por cada nivel de stock
SELECT stock, MIN(precio) AS PrecioMinimoPorStock
FROM Productos
GROUP BY stock;