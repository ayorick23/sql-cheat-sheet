-- Eliminar el índice IX_Pedidos_FechaPedido de la tabla Pedidos
DROP INDEX IX_Pedidos_FechaPedido ON Pedidos; -- SQL Server / MySQL

-- DROP INDEX IX_Pedidos_FechaPedido; -- PostgreSQL (si el nombre del índice es único)

-- Eliminar el índice compuesto IX_Pedidos_ClienteTotal
DROP INDEX IX_Pedidos_ClienteTotal ON Pedidos; -- SQL Server / MySQL