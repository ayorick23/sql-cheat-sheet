-- Crear un rol
CREATE ROLE nombre_rol;

-- Conceder privilegios al rol
GRANT SELECT ON Productos TO nombre_rol;
GRANT INSERT, UPDATE ON Pedidos TO nombre_rol;

-- Conceder el rol a un usuario
GRANT nombre_rol TO usuario1, usuario2;

-- Revocar el rol de un usuario
REVOKE nombre_rol FROM usuario1;