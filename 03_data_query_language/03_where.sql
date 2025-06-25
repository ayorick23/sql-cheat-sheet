-- Seleccionar productos con un precio mayor a 50.00
SELECT nombre, precio
FROM Productos
WHERE precio > 200.00;

-- Seleccionar pedidos realizados después del 1 de enero de 2024
SELECT pedido_id, fecha_pedido, total
FROM Pedidos
WHERE fecha_pedido > '2024-02-01';

-- Seleccionar pedidos con un total mayor a 100 AND cliente_id = 1
SELECT pedido_id, cliente_id, total
FROM Pedidos
WHERE total > 1000.00 AND cliente_id = 1;

-- Seleccionar clientes cuyo nombre no es 'Juan'
SELECT nombre, apellido
FROM Clientes
WHERE NOT nombre = 'Juan'; -- O WHERE nombre <> 'Juan';

-- Seleccionar productos con stock entre 10 y 30 (inclusivo)
SELECT nombre, stock
FROM Productos
WHERE stock BETWEEN 10 AND 30;

-- Seleccionar clientes que viven en 'Madrid' O 'Barcelona'
SELECT nombre, apellido, ciudad
FROM Clientes
WHERE ciudad IN ('Madrid', 'Barcelona');

-- Seleccionar productos cuyo nombre empieza con 'L'
SELECT nombre
FROM Productos
WHERE nombre LIKE 'L%';

-- Seleccionar productos cuyo nombre contiene 'Monitor'
SELECT nombre
FROM Productos
WHERE nombre LIKE '%Monitor%';

-- Seleccionar productos con stock nulo (si la columna lo permite)
SELECT nombre, stock FROM Productos WHERE stock IS NULL;