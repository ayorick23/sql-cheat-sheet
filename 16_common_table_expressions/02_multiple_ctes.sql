-- Queremos ver a los vendedores con ventas superiores al promedio,
-- junto con el total de sus ventas.
WITH TotalVentasPorVendedor AS (
    SELECT
        vendedor_id,
        SUM(monto_venta) AS VentaTotal
    FROM
        Ventas
    GROUP BY
        vendedor_id
),
PromedioVentasGlobal AS (
    SELECT
        AVG(monto_venta) AS PromedioTotal
    FROM
        Ventas
)
-- Ahora usamos ambas CTEs en la consulta final
SELECT
    TVV.vendedor_id,
    TVV.VentaTotal
FROM
    TotalVentasPorVendedor TVV,
    PromedioVentasGlobal PVG
WHERE
    TVV.VentaTotal > PVG.PromedioTotal
ORDER BY
    TVV.VentaTotal DESC;