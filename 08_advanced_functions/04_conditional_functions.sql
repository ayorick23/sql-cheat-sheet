-- Archivo: functions/conditional-functions/conditional-function-examples.sql

-- CASE: Clasificar productos por precio
SELECT
    nombre,
    precio,
    CASE
        WHEN precio < 50.00 THEN 'Económico'
        WHEN precio BETWEEN 50.00 AND 200.00 THEN 'Estándar'
        ELSE 'Premium'
    END AS CategoriaPrecio
FROM
    Productos;

-- CASE: Clasificar el estado del stock
SELECT
    nombre,
    stock,
    CASE
        WHEN stock = 0 THEN 'Agotado'
        WHEN stock < 10 THEN 'Bajo Stock'
        WHEN stock >= 10 AND stock < 50 THEN 'Stock Normal'
        ELSE 'Alto Stock'
    END AS EstadoStock
FROM
    Productos;

-- NULLIF: Evitar divisiones por cero o manejar valores 'vacíos'
-- Si 'columna_divisor' es 0, la división resultaría en error. NULLIF lo convierte en NULL.
SELECT
    columna_dividendo / NULLIF(columna_divisor, 0) AS ResultadoDivision
FROM
    (SELECT 100 AS columna_dividendo, 0 AS columna_divisor) AS DummyTabla;

-- COALESCE: Devolver el primer valor no nulo
-- Útil para mostrar un valor alternativo si el principal es NULL (ej. 'Sin Email' si el email es NULL)
SELECT
    empleado_id,
    COALESCE(email, 'No Proporcionado') AS EmailContacto -- Asumiendo columna 'email' en Empleados_FK
FROM
    Empleados_FK;

-- SQL Server: Marcar productos si su precio es mayor a 100
SELECT
    nombre,
    precio,
    IIF(precio > 100, 'Caro', 'Barato') AS NivelPrecioSQLServer
FROM
    Productos;

-- IF / IIF: (MySQL / SQL Server específicos)
-- MySQL: Marcar productos si su stock es mayor a 20
-- SELECT
--     nombre,
--     stock,
--     IF(stock > 20, 'Stock Alto', 'Stock Normal') AS NivelStockMySQL
-- FROM
--     Productos;