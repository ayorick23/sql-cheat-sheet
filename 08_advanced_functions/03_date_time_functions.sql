-- Obtener la fecha y hora actuales
SELECT GETDATE() AS FechaHoraActual; -- Para SQL Server
-- SELECT CURRENT_TIMESTAMP AS FechaHoraActual; -- Para PostgreSQL/SQL Standard
-- SELECT NOW() AS FechaHoraActual; -- Para MySQL

-- Extraer partes de una fecha (asumiendo Pedidos.fecha_pedido)
SELECT
    fecha_pedido,
    YEAR(fecha_pedido) AS Anio,
    MONTH(fecha_pedido) AS Mes,
    DAY(fecha_pedido) AS Dia
FROM
    Pedidos;

-- DATE_PART / EXTRACT: Extraer el día de la semana (1-7) o la hora de la fecha del pedido
SELECT
    fecha_pedido,
    DATEPART(weekday, fecha_pedido) AS DiaDeLaSemana -- SQL Server (1=Domingo, 2=Lunes...)
    -- DATE_PART('dow', fecha_pedido) AS DiaDeLaSemana -- PostgreSQL (0=Domingo, 1=Lunes...)
    -- EXTRACT(DOW FROM fecha_pedido) AS DiaDeLaSemana -- SQL Standard
    -- DAYOFWEEK(fecha_pedido) AS DiaDeLaSemana -- MySQL (1=Domingo, 2=Lunes...)
FROM
    Pedidos;

-- DATE_ADD / DATEADD: Añadir 30 días a una fecha de pedido
SELECT
    fecha_pedido,
    DATEADD(day, 30, fecha_pedido) AS FechaVencimiento -- SQL Server
    -- DATE_ADD(fecha_pedido, INTERVAL 30 DAY) AS FechaVencimiento -- MySQL
    -- fecha_pedido + INTERVAL '30 days' AS FechaVencimiento -- PostgreSQL
FROM
    Pedidos;

-- DATEDIFF: Calcular la diferencia en días entre la fecha actual y la fecha del pedido
SELECT
    fecha_pedido,
    DATEDIFF(day, fecha_pedido, GETDATE()) AS DiasDesdePedido -- SQL Server
    -- DATEDIFF(CURRENT_DATE, fecha_pedido) AS DiasDesdePedido -- MySQL
    -- CURRENT_DATE - fecha_pedido AS DiasDesdePedido -- PostgreSQL (resultado es un intervalo, puedes extraer días)
    -- EXTRACT(DAY FROM (CURRENT_DATE - fecha_pedido)) AS DiasDesdePedido_PG -- Para extraer días en PostgreSQL
FROM
    Pedidos;

-- DATE_FORMAT / TO_CHAR: Formatear la fecha del pedido como 'DD-MM-YYYY'
SELECT
    fecha_pedido,
    FORMAT(fecha_pedido, 'dd-MM-yyyy') AS FechaFormateada -- SQL Server (desde SQL Server 2012)
    -- DATE_FORMAT(fecha_pedido, '%d-%m-%Y') AS FechaFormateada -- MySQL
    -- TO_CHAR(fecha_pedido, 'DD-MM-YYYY') AS FechaFormateada -- PostgreSQL/Oracle
FROM
    Pedidos;