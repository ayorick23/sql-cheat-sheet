-- Crear tablas de ejemplo
CREATE TABLE Productos (
    producto_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    precio DECIMAL(10, 2),
    stock INT
);

CREATE TABLE Pedidos (
    pedido_id INT PRIMARY KEY,
    cliente_id INT,
    fecha_pedido DATE,
    total DECIMAL(10, 2)
);

CREATE TABLE PedidoDetalles (
    detalle_id INT PRIMARY KEY,
    pedido_id INT,
    producto_id INT,
    cantidad INT
);

-- Insertar datos de ejemplo
INSERT INTO Productos (producto_id, nombre, precio, stock) VALUES
(1, 'Laptop Gaming', 1200.00, 5),
(2, 'Monitor Curvo', 350.50, 10),
(3, 'Teclado Mecánico', 90.00, 8),
(4, 'Mouse Inalámbrico', 25.00, 50),
(5, 'Auriculares BT', 75.00, 20);

INSERT INTO Pedidos (pedido_id, cliente_id, fecha_pedido, total) VALUES
(101, 1, '2023-10-01', 1450.50),
(102, 2, '2023-10-02', 350.50),
(103, 1, '2023-10-03', 75.00),
(104, 3, '2023-10-04', 1200.00),
(105, 2, '2023-10-05', 90.00);

INSERT INTO PedidoDetalles (detalle_id, pedido_id, producto_id, cantidad) VALUES
(1, 101, 1, 1),
(2, 101, 3, 2),
(3, 102, 2, 1),
(4, 103, 5, 1);

-- Subconsulta en WHERE con operador de comparación (=)
-- Obtener los productos cuyo precio es igual al precio más bajo.
SELECT nombre, precio
FROM Productos
WHERE precio = (SELECT MIN(precio) FROM Productos);

-- Subconsulta en WHERE con operador IN
-- Obtener los productos que han sido parte de algún pedido.
SELECT nombre, precio
FROM Productos
WHERE producto_id IN (SELECT producto_id FROM PedidoDetalles);

-- Subconsulta en FROM (tabla derivada)
-- Obtener el promedio de los precios de los productos con stock superior a 10.
SELECT AVG(precio_alto_stock) AS PromedioPreciosAltoStock
FROM (SELECT precio AS precio_alto_stock FROM Productos WHERE stock > 10) AS ProductosAltoStock;

-- Subconsulta escalar en SELECT
-- Mostrar el nombre del producto y la diferencia con el precio promedio de todos los productos.
SELECT
    nombre,
    precio,
    (SELECT AVG(precio) FROM Productos) AS PrecioPromedioGlobal,
    precio - (SELECT AVG(precio) FROM Productos) AS DiferenciaConPromedio
FROM
    Productos;