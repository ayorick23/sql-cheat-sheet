-- 1. Revocar el permiso de UPDATE sobre la tabla 'Pedidos' a 'desarrollador_app'
REVOKE UPDATE
ON Pedidos
FROM desarrollador_app;

-- Ahora 'desarrollador_app' solo puede insertar pedidos, pero no actualizarlos.

-- 2. Revocar todos los permisos sobre la tabla 'Clientes' a 'juan_perez'
REVOKE ALL PRIVILEGES
ON Clientes
FROM juan_perez;

-- 'juan_perez' ya no tiene control sobre la tabla 'Clientes'.

-- 3. Revocar el permiso de SELECT sobre la tabla 'Ventas' de 'analista_ventas'
-- y de cualquier otro usuario al que 'analista_ventas' lo haya concedido.
REVOKE SELECT
ON Ventas
FROM analista_ventas CASCADE;

-- Si 'analista_ventas' había dado SELECT ON Ventas a 'otro_usuario',
-- 'otro_usuario' también perderá ese permiso.