CREATE TABLE Pedidos (
    pedido_id INT PRIMARY KEY,
    cliente_id INT NOT NULL,
    fecha_pedido DATE DEFAULT CURRENT_DATE, -- La fecha por defecto es la fecha actual
    estado VARCHAR(50) DEFAULT 'Pendiente' -- El estado por defecto es 'Pendiente'
);

-- Insertar un pedido sin especificar fecha ni estado
INSERT INTO Pedidos (pedido_id, cliente_id)
VALUES (1, 101); -- fecha_pedido y estado usarán sus valores por defecto

-- Insertar un pedido especificando todos los valores
INSERT INTO Pedidos (pedido_id, cliente_id, fecha_pedido, estado)
VALUES (2, 102, '2025-07-01', 'Completado');

-- Insertar un pedido especificando solo algunos valores
INSERT INTO Pedidos (pedido_id, cliente_id, estado)
VALUES (3, 103, 'Enviado'); -- fecha_pedido usará su valor por defecto

SELECT * FROM Pedidos;