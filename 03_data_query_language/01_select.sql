-- Crear la tabla 'Productos'
CREATE TABLE Productos (
    producto_id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    stock INT DEFAULT 0
);

-- Crear la tabla 'Pedidos'
CREATE TABLE Pedidos (
    pedido_id INT PRIMARY KEY,
    cliente_id INT NOT NULL,
    fecha_pedido DATE DEFAULT GETDATE(),
    total DECIMAL(10, 2) NOT NULL
);

-- Crear la tabla 'Clientes'
CREATE TABLE Clientes (
    cliente_id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    ciudad VARCHAR(50)
);

-- Insertar datos de ejemplo en la tabla 'Productos'
INSERT INTO Productos (producto_id, nombre, precio, stock) VALUES (1, 'Laptop', 999.99, 15);
INSERT INTO Productos (producto_id, nombre, precio, stock) VALUES (2, 'Smartphone', 499.99, 25);
INSERT INTO Productos (producto_id, nombre, precio, stock) VALUES (3, 'Tablet', 299.99, 15);
INSERT INTO Productos (producto_id, nombre, precio, stock) VALUES (4, 'Monitor', 199.99, 50);
INSERT INTO Productos (producto_id, nombre, precio, stock) VALUES (5, 'Teclado', 49.99, NULL);

-- Insertar datos de ejemplo en la tabla 'Pedidos'
INSERT INTO Pedidos (pedido_id, cliente_id, fecha_pedido, total) VALUES (1, 1, '2024-01-15', 1499.98);
INSERT INTO Pedidos (pedido_id, cliente_id, fecha_pedido, total) VALUES (2, 1, '2024-02-20', 499.99);
INSERT INTO Pedidos (pedido_id, cliente_id, fecha_pedido, total) VALUES (3, 3, '2024-03-10', 299.99);

-- Insertar datos de ejemplo en la tabla 'Clientes'
INSERT INTO Clientes (cliente_id, nombre, apellido, ciudad) VALUES (1, 'Ana', 'García', 'Madrid');
INSERT INTO Clientes (cliente_id, nombre, apellido, ciudad) VALUES (2, 'Juan', 'Pérez', 'Barcelona');
INSERT INTO Clientes (cliente_id, nombre, apellido, ciudad) VALUES (3, 'María', 'López', 'Madrid');

-- Seleccionar todas las columnas de la tabla 'Productos'
SELECT *
FROM Productos;

-- Seleccionar columnas específicas: nombre y precio de 'Productos'
SELECT nombre, precio
FROM Productos;

-- Seleccionar el nombre de productos, pero renombrando la columna (alias)
SELECT nombre AS 'Nombre del Producto', precio AS PrecioUnitario
FROM Productos;

-- Seleccionar valores únicos (DISTINCT) de ciudades de la tabla Clientes
SELECT DISTINCT ciudad
FROM Clientes;