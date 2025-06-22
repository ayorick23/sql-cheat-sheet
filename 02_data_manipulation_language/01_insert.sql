-- Ejemplo 1: Insertar una fila con todos los valores especificados
INSERT INTO Productos (producto_id, nombre, precio, stock)
VALUES (1, 'Laptop Gaming', 1200.00, 5);

-- Ejemplo 2: Insertar otra fila, el orden de las columnas debe coincidir con el de los valores
INSERT INTO Productos (nombre, stock, precio, producto_id)
VALUES ('Monitor Curvo', 10, 350.50, 2);

-- Ejemplo 3: Insertar una fila omitiendo una columna con valor DEFAULT (stock)
-- Si la columna 'stock' tiene un valor por defecto, no es necesario especificarla.
INSERT INTO Productos (producto_id, nombre, precio)
VALUES (3, 'Teclado Mecánico', 90.00);

-- Ejemplo 4: Insertar múltiples filas en una sola sentencia (sintaxis común en muchos DBMS)
INSERT INTO Productos (producto_id, nombre, precio, stock)
VALUES
    (4, 'Mouse Inalámbrico', 25.00, 50),
    (5, 'Auriculares Bluetooth', 75.00, 20),
    (6, 'Webcam HD', 45.00, 15);

-- Ejemplo 5: Insertar datos desde otra tabla (si tuvieras una tabla temporal, por ejemplo)
-- Suponiendo que tienes una tabla 'NuevosProductos' con la misma estructura

CREATE TABLE NuevosProductos (
    producto_id INT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    precio DECIMAL(10, 2),
    stock INT DEFAULT 0
);

-- Insertar un nuevo producto en la tabla 'NuevosProductos'
INSERT INTO NuevosProductos (producto_id, nombre, precio, stock)
VALUES (7, 'Impresora Multifunción', 200.00, 8);

-- Ahora, insertar el producto desde 'NuevosProductos' a 'Productos'
INSERT INTO Productos (producto_id, nombre, precio, stock)
SELECT producto_id, nombre, precio, stock FROM NuevosProductos WHERE producto_id = 7;