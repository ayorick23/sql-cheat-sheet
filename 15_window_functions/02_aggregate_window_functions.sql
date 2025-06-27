-- Calcular la suma de ventas acumuladas por vendedor, ordenado por fecha
SELECT
    venta_id,
    vendedor_id,
    fecha_venta,
    monto_venta,
    SUM(monto_venta) OVER (PARTITION BY vendedor_id ORDER BY fecha_venta ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS SumaAcumuladaVentas
FROM
    Ventas;

-- Calcular el promedio de ventas de los últimos 2 días para cada venta (ejemplo conceptual)
-- NOTA: El marco de ventana basado en "días" puede ser complejo y depende del DBMS (usaría RANGE en lugar de ROWS)
-- Para este ejemplo, un marco de 2 filas anteriores y la actual:
SELECT
    venta_id,
    vendedor_id,
    fecha_venta,
    monto_venta,
    AVG(monto_venta) OVER (PARTITION BY vendedor_id ORDER BY fecha_venta ROWS BETWEEN 1 PRECEDING AND CURRENT ROW) AS PromedioVentasRecientes
FROM
    Ventas;

-- Calcular el total de ventas para cada vendedor (sin colapsar las filas)
SELECT
    venta_id,
    vendedor_id,
    monto_venta,
    SUM(monto_venta) OVER (PARTITION BY vendedor_id) AS TotalVentasVendedor
FROM
    Ventas;

-- Calcular el porcentaje de cada venta respecto al total de ventas del vendedor
SELECT
    venta_id,
    vendedor_id,
    monto_venta,
    (monto_venta / SUM(monto_venta) OVER (PARTITION BY vendedor_id)) * 100 AS PorcentajeVenta
FROM
    Ventas;