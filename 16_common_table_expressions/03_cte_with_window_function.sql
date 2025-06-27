-- Obtener el top 2 de ventas por cada vendedor
WITH VentasRankeadasPorVendedor AS (
    SELECT
        venta_id,
        vendedor_id,
        monto_venta,
        fecha_venta,
        ROW_NUMBER() OVER (PARTITION BY vendedor_id ORDER BY monto_venta DESC) AS RankVenta
    FROM
        Ventas
)

SELECT
    venta_id,
    vendedor_id,
    monto_venta,
    fecha_venta
FROM
    VentasRankeadasPorVendedor
WHERE
    RankVenta <= 2
ORDER BY
    vendedor_id, RankVenta;