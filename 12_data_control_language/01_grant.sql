-- Suponemos que ya existen usuarios 'analista_ventas', 'desarrollador_app' y 'juan_perez'

-- 1. Conceder permiso de SELECT sobre la tabla 'Productos' a 'analista_ventas'
GRANT SELECT
ON Productos
TO analista_ventas;

-- Ahora 'analista_ventas' puede ejecutar: SELECT * FROM Productos;

-- 2. Conceder permisos de INSERT y UPDATE sobre la tabla 'Pedidos' a 'desarrollador_app'
GRANT INSERT, UPDATE
ON Pedidos
TO desarrollador_app;

-- Ahora 'desarrollador_app' puede insertar y actualizar pedidos, pero no eliminarlos o leerlos.

-- 3. Conceder todos los privilegios sobre la tabla 'Clientes' a 'juan_perez'
GRANT ALL PRIVILEGES
ON Clientes
TO juan_perez;

-- 'juan_perez' tiene control total sobre la tabla 'Clientes'.

-- 4. Conceder permiso de SELECT sobre una vista 'ProductosPremium' a 'analista_ventas'
-- Las vistas son objetos sobre los que también se pueden conceder permisos.
-- Suponiendo que la vista ProductosPremium ya fue creada
-- CREATE VIEW ProductosPremium AS SELECT producto_id, nombre, precio FROM Productos WHERE precio > 100;
GRANT SELECT
ON ProductosPremium
TO analista_ventas;

-- 5. Conceder permiso de SELECT sobre la tabla 'Ventas' a 'analista_ventas'
-- y permitirle que él también pueda conceder este permiso a otros.
GRANT SELECT
ON Ventas
TO analista_ventas
WITH GRANT OPTION;

-- Ahora 'analista_ventas' podría ejecutar: GRANT SELECT ON Ventas TO otro_usuario;