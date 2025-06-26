-- Modificar la vista ProductosPremium para incluir el stock
ALTER VIEW ProductosPremium AS
SELECT
    producto_id,
    nombre,
    precio,
    stock -- Ahora incluye el stock
FROM
    Productos
WHERE
    precio > 100.00;

-- Consultar la vista modificada
SELECT *
FROM ProductosPremium;

-- Eliminar la vista de ReportePedidosClientes
DROP VIEW ReportePedidosClientes;

-- Intentar consultar la vista eliminada resultará en un error
-- SELECT * FROM ReportePedidosClientes;

-- Eliminar la vista ProductosPremium
DROP VIEW ProductosPremium;

-- Eliminar la vista ResumenVentasPorVendedor, pero solo si existe
DROP VIEW IF EXISTS ResumenVentasPorVendedor;