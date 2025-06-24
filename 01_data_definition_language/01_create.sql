-- Crear una base de datos llamada 'TiendaOnline'
CREATE DATABASE TiendaOnline;

-- Usar la base de datos 'TiendaOnline'
USE TiendaOnline;

-- Crear una tabla 'Clientes'
CREATE TABLE Clientes (
    cliente_id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE,
    fecha_registro DATE DEFAULT GETDATE()
);

-- Crear una tabla 'Pedidos' con una clave foránea
CREATE TABLE Pedidos (
    pedido_id INT PRIMARY KEY,
    cliente_id INT,
    fecha_pedido DATETIME,
    total DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id)
);