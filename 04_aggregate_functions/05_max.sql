-- Encontrar el precio más alto de un producto
SELECT MAX(precio) AS PrecioMaximo
FROM Productos;

-- Encontrar el stock máximo de un producto
SELECT MAX(stock) AS StockMaximo
FROM Productos;

-- Encontrar la fecha del pedido más reciente
SELECT MAX(fecha_pedido) AS PedidoMasReciente
FROM Pedidos;

-- Encontrar el precio máximo por cada nivel de stock
SELECT stock, MAX(precio) AS PrecioMaximoPorStock
FROM Productos
GROUP BY stock;

-- Eliminar las tablas de ejemplo
DROP TABLE Productos;
DROP TABLE Pedidos;
DROP TABLE Clientes;