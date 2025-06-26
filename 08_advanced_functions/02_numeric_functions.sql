-- ABS: Valor absoluto de un número
SELECT ABS(-10.5) AS ValorAbsoluto; -- Resultado: 10.5

-- ROUND: Redondear el precio a 1 decimal
SELECT
    nombre,
    precio,
    ROUND(precio, 1) AS PrecioRedondeado
FROM
    Productos;

-- FLOOR: Redondear el precio hacia abajo
SELECT
    nombre,
    precio,
    FLOOR(precio) AS PrecioEnteroInferior
FROM
    Productos;

-- CEILING / CEIL: Redondear el precio hacia arriba
SELECT
    nombre,
    precio,
    CEILING(precio) AS PrecioEnteroSuperior -- Para SQL Server
    -- CEIL(precio) AS PrecioEnteroSuperior -- Para MySQL/PostgreSQL
FROM
    Productos;

-- MOD / %: Obtener el resto de la división de stock por 3
SELECT
    nombre,
    stock,
    stock % 3 AS RestoDivision -- Para SQL Server/PostgreSQL
    -- MOD(stock, 3) AS RestoDivision -- Para MySQL/Oracle
FROM
    Productos;

-- POWER: Calcular 2 elevado a la potencia de 3
SELECT POWER(2, 3) AS DosElevadoTres; -- Resultado: 8

-- SQRT: Raíz cuadrada de 25
SELECT SQRT(25) AS RaizCuadrada; -- Resultado: 5

-- RAND / RANDOM: Generar un número aleatorio
SELECT RAND() AS NumeroAleatorio; -- Para MySQL/SQL Server
-- SELECT RANDOM() AS NumeroAleatorio; -- Para PostgreSQL/SQLite