-- CONCAT: Unir nombre y apellido de empleados (asumiendo tabla Empleados)
SELECT
    empleado_id,
    CONCAT(nombre, ' ', apellido) AS NombreCompleto
FROM
    Empleados; -- Suponiendo Empleados (empleado_id, nombre, apellido)

-- LENGTH / LEN: Obtener la longitud del nombre de los productos
SELECT
    nombre,
    LENGTH(nombre) AS LongitudNombre -- Para MySQL/PostgreSQL
    -- LEN(nombre) AS LongitudNombre -- Para SQL Server
FROM
    Productos;

-- SUBSTRING / SUBSTR: Extraer los primeros 5 caracteres del nombre del producto
SELECT
    nombre,
    SUBSTRING(nombre, 1, 5) AS PrefijoNombre -- Para la mayoría de DBMS
    -- SUBSTR(nombre, 1, 5) AS PrefijoNombre -- Para MySQL/Oracle
FROM
    Productos;

-- REPLACE: Reemplazar 'Gaming' por 'Pro' en los nombres de productos
SELECT
    nombre,
    REPLACE(nombre, 'Gaming', 'Pro') AS NombreModificado
FROM
    Productos;

-- UPPER / LOWER: Convertir nombres de productos a mayúsculas y minúsculas
SELECT
    nombre,
    UPPER(nombre) AS NombreMayusculas,
    LOWER(nombre) AS NombreMinusculas
FROM
    Productos;

-- TRIM: Eliminar espacios en blanco alrededor de un texto
SELECT
    '   Hola Mundo   ' AS Original,
    TRIM('   Hola Mundo   ') AS TrimmedText;

-- LEFT / RIGHT: Obtener los 3 primeros y 3 últimos caracteres de un nombre
SELECT
    nombre,
    LEFT(nombre, 3) AS PrimerosTres,
    RIGHT(nombre, 3) AS UltimosTres
FROM
    Productos;