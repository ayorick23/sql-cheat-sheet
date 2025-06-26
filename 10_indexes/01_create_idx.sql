-- Crear un índice no clúster en la columna 'fecha_pedido' de la tabla Pedidos
-- Útil para consultas que filtran o ordenan por fecha
CREATE INDEX IX_Pedidos_FechaPedido
ON Pedidos (fecha_pedido DESC); -- Se puede especificar el orden para ORDER BY

-- Crear un índice único no clúster en la columna 'email' de la tabla Clientes
-- Si ya hubiéramos creado la tabla Clientes con email UNIQUE, esto ya estaría cubierto.
-- Esto asegura que no haya dos clientes con el mismo email y acelera las búsquedas por email.
/*
CREATE TABLE Clientes (
    cliente_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(255)
);
*/
-- CREATE UNIQUE INDEX UQ_Clientes_Email
-- ON Clientes (email);


-- Crear un índice compuesto (en múltiples columnas) en 'cliente_id' y 'total' de Pedidos
-- Útil para consultas que filtran por cliente y luego por total, o agrupan por cliente y ordenan por total.
CREATE INDEX IX_Pedidos_ClienteTotal
ON Pedidos (cliente_id, total DESC);

-- Ejemplo de cómo el PRIMARY KEY implícitamente crea un índice:
-- Cuando defines:
-- CREATE TABLE Productos (
--     producto_id INT PRIMARY KEY, -- Esto crea automáticamente un índice (CLUSTERED en SQL Server, BTREE en MySQL)
--     nombre VARCHAR(255)
-- );
-- Ya existe un índice en producto_id.