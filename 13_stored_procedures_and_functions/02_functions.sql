-- Ejemplo 1: Función escalar para calcular el precio con IVA
CREATE FUNCTION CalcularPrecioConIVA
    (p_precio DECIMAL(10, 2),
     p_iva DECIMAL(5, 2)) -- Por ejemplo, 0.13 para 13%
RETURNS DECIMAL(10, 2)
AS
BEGIN
    RETURN p_precio * (1 + p_iva);
END;

-- Usar la función en una consulta SELECT
SELECT
    nombre,
    precio AS PrecioBase,
    CalcularPrecioConIVA(precio, 0.13) AS PrecioFinalConIVA
FROM
    Productos;

-- Ejemplo 2: Función escalar para obtener el estado del stock (similar a CASE, pero encapsulado)
CREATE FUNCTION ObtenerEstadoStock
    (p_stock INT)
RETURNS VARCHAR(50)
AS
BEGIN
    DECLARE v_estado VARCHAR(50);
    IF p_stock = 0 THEN
        SET v_estado = 'Agotado';
    ELSEIF p_stock < 10 THEN
        SET v_estado = 'Bajo Stock';
    ELSEIF p_stock >= 10 AND p_stock < 50 THEN
        SET v_estado = 'Stock Normal';
    ELSE
        SET v_estado = 'Alto Stock';
    END IF;
    RETURN v_estado;
END;

-- Usar la función en una consulta SELECT
SELECT
    nombre,
    stock,
    ObtenerEstadoStock(stock) AS EstadoActualStock
FROM
    Productos;

-- Ejemplo 3 (SQL Server): Función con valor de tabla para obtener productos por categoría (conceptualmente)
/*
-- Asumiendo una tabla Productos con columna Categoria
CREATE FUNCTION ObtenerProductosPorCategoria
    (@p_categoria VARCHAR(100))
RETURNS TABLE
AS
RETURN
(
    SELECT producto_id, nombre, precio
    FROM Productos
    WHERE Categoria = @p_categoria
);

-- Usar la función con valor de tabla
SELECT * FROM ObtenerProductosPorCategoria('Electrónica');
*/