-- Crear una vista para ver solo los productos 'Premium' (precio > 100)
CREATE VIEW ProductosPremium AS
SELECT
    producto_id,
    nombre,
    precio
FROM
    Productos
WHERE
    precio > 100.00;

-- Consultar la vista como si fuera una tabla normal
SELECT *
FROM ProductosPremium;

-- Resultado de la consulta a ProductosPremium (ejemplo):
-- producto_id | nombre          | precio
-- ----------- | --------------- | --------
-- 1           | Laptop Gaming   | 1200.00
-- 2           | Monitor Curvo   | 350.50

-- Crear una vista que muestre información de pedidos y el nombre del cliente
-- Esto simplifica un JOIN común para futuros reportes
CREATE VIEW ReportePedidosClientes AS
SELECT
    P.pedido_id,
    C.nombre AS NombreCliente,
    C.apellido AS ApellidoCliente,
    P.fecha_pedido,
    P.total
FROM
    Pedidos P
INNER JOIN
    Clientes C ON P.cliente_id = C.cliente_id;

-- Consultar la vista ReportePedidosClientes
SELECT NombreCliente, fecha_pedido, total
FROM ReportePedidosClientes
WHERE total > 200.00;

-- Resultado de la consulta a ReportePedidosClientes (ejemplo):
-- NombreCliente | fecha_pedido | total
-- ------------- | ------------ | --------
-- Juan          | 2024-03-12   | 300.00
-- Cliente3      | 2024-03-18   | 500.00

-- Crear una vista que resuma las ventas totales por vendedor (usando GROUP BY y funciones de agregación)
CREATE VIEW ResumenVentasPorVendedor AS
SELECT
    vendedor_id,
    COUNT(venta_id) AS NumeroVentas,
    SUM(monto_venta) AS TotalVendido
FROM
    Ventas -- Asumiendo la tabla Ventas que usamos para las Window Functions
GROUP BY
    vendedor_id;

-- Consultar la vista ResumenVentasPorVendedor
SELECT vendedor_id, TotalVendido
FROM ResumenVentasPorVendedor
ORDER BY TotalVendido DESC;