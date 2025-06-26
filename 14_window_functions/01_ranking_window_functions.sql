-- Crear tabla de ejemplo
CREATE TABLE Ventas (
    venta_id INT PRIMARY KEY,
    vendedor_id INT,
    fecha_venta DATE,
    monto_venta DECIMAL(10, 2)
);

-- Insertar datos de ejemplo
INSERT INTO Ventas (venta_id, vendedor_id, fecha_venta, monto_venta) VALUES
(1, 10, '2024-01-01', 100.00),
(2, 10, '2024-01-05', 150.00),
(3, 20, '2024-01-02', 200.00),
(4, 10, '2024-01-10', 50.00),
(5, 20, '2024-01-08', 120.00),
(6, 30, '2024-01-03', 300.00),
(7, 10, '2024-01-15', 70.00);

-- Asignar un número de fila secuencial a cada venta por vendedor, ordenado por fecha de venta
SELECT
    venta_id,
    vendedor_id,
    fecha_venta,
    monto_venta,
    ROW_NUMBER() OVER (PARTITION BY vendedor_id ORDER BY fecha_venta) AS NumeroVentaPorVendedor
FROM
    Ventas;

-- Clasificar las ventas generales por monto_venta (descendente) usando RANK() y DENSE_RANK()
SELECT
    venta_id,
    vendedor_id,
    monto_venta,
    RANK() OVER (ORDER BY monto_venta DESC) AS RankVenta,
    DENSE_RANK() OVER (ORDER BY monto_venta DESC) AS DenseRankVenta
FROM
    Ventas;

-- Dividir las ventas de cada vendedor en 2 grupos (NTILE)
SELECT
    venta_id,
    vendedor_id,
    monto_venta,
    NTILE(2) OVER (PARTITION BY vendedor_id ORDER BY monto_venta DESC) AS GrupoVentas
FROM
    Ventas;