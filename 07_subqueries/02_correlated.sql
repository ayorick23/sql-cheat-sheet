-- Subconsulta Correlacionada con EXISTS
-- Obtener los clientes que han realizado al menos un pedido.
-- En este caso, para cada cliente, la subconsulta verifica si existe un pedido con su cliente_id.
SELECT c.cliente_id, c.nombre, c.apellido
FROM Clientes c
WHERE EXISTS (
    SELECT 1 -- No necesitamos seleccionar datos, solo verificar la existencia
    FROM Pedidos p
    WHERE p.cliente_id = c.cliente_id
);

-- Subconsulta Correlacionada con NOT EXISTS
-- Obtener los clientes que NO han realizado ningún pedido.
SELECT c.cliente_id, c.nombre, c.apellido
FROM Clientes c
WHERE NOT EXISTS (
    SELECT 1
    FROM Pedidos p
    WHERE p.cliente_id = c.cliente_id
);

-- Subconsulta Correlacionada para encontrar el producto más caro en cada categoría (ejemplo conceptual si tuviéramos categorías)
-- Si tuviéramos una columna `categoria` en Productos:
/*
SELECT p1.nombre, p1.precio, p1.categoria
FROM Productos p1
WHERE p1.precio = (
    SELECT MAX(p2.precio)
    FROM Productos p2
    WHERE p2.categoria = p1.categoria
);
*/