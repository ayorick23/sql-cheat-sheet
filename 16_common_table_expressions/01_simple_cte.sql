-- Obtener los productos que están en 'Bajo Stock' (stock < 10)
WITH ProductosBajoStock AS (
    SELECT
        producto_id,
        nombre,
        stock
    FROM
        Productos
    WHERE
        stock < 10
)
-- Ahora podemos consultar esta CTE como si fuera una tabla
SELECT
    nombre,
    stock
FROM
    ProductosBajoStock
ORDER BY
    stock ASC;