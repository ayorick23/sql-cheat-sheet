-- Contar el número total de productos en la tabla Productos
SELECT COUNT(*) AS TotalProductos
FROM Productos;

-- Contar el número de productos que tienen un 'stock' definido (no NULL)
-- Si 'stock' pudiera ser NULL, esto excluiría los productos con stock NULL.
SELECT COUNT(stock) AS ProductosConStock
FROM Productos;

-- Contar el número de nombres de productos únicos
SELECT COUNT(DISTINCT nombre) AS NombresProductosUnicos
FROM Productos;

-- Contar el número de pedidos realizados por cada cliente
SELECT cliente_id, COUNT(pedido_id) AS TotalPedidos
FROM Pedidos
GROUP BY cliente_id;

-- Contar el número de productos con precio superior a 100
SELECT COUNT(*) AS ProductosCaros
FROM Productos
WHERE precio > 100;