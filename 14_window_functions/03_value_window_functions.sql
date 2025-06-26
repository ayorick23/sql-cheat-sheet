-- Obtener el monto de la venta anterior para cada vendedor
SELECT
    venta_id,
    vendedor_id,
    fecha_venta,
    monto_venta,
    LAG(monto_venta, 1, 0) OVER (PARTITION BY vendedor_id ORDER BY fecha_venta) AS VentaAnterior
FROM
    Ventas;

-- Obtener el monto de la siguiente venta para cada vendedor
SELECT
    venta_id,
    vendedor_id,
    fecha_venta,
    monto_venta,
    LEAD(monto_venta, 1, 0) OVER (PARTITION BY vendedor_id ORDER BY fecha_venta) AS SiguienteVenta
FROM
    Ventas;

-- Obtener la primera venta (monto) de cada vendedor
SELECT
    venta_id,
    vendedor_id,
    fecha_venta,
    monto_venta,
    FIRST_VALUE(monto_venta) OVER (PARTITION BY vendedor_id ORDER BY fecha_venta) AS PrimeraVentaVendedor
FROM
    Ventas;

-- Obtener la última venta (monto) de cada vendedor (requiere un marco de ventana explícito para funcionar correctamente)
SELECT
    venta_id,
    vendedor_id,
    fecha_venta,
    monto_venta,
    LAST_VALUE(monto_venta) OVER (PARTITION BY vendedor_id ORDER BY fecha_venta ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS UltimaVentaVendedor
FROM
    Ventas;