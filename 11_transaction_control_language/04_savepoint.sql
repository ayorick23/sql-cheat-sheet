-- Iniciar la transacción principal
BEGIN TRANSACTION;

-- Operación 1
INSERT INTO Productos (producto_id, nombre, precio, stock)
VALUES (100, 'Tablet', 300.00, 10);

-- Crear un Savepoint 1
SAVEPOINT S1;

-- Operación 2 (puede fallar o no ser deseada)
UPDATE Productos
SET stock = stock - 5
WHERE producto_id = 100;

-- Si decides que la Operación 2 no es correcta, puedes revertir solo a S1
ROLLBACK TO SAVEPOINT S1;

-- El stock del producto 100 se revertirá, pero el INSERT de la Tablet permanecerá.

-- Puedes continuar con otras operaciones y luego COMMIT o ROLLBACK final
-- INSERT INTO Productos (producto_id, nombre, precio, stock) VALUES (101, 'Smartphone', 700.00, 15);

-- COMMIT; -- Confirmaría el INSERT de Tablet y Smartphone
-- O
-- ROLLBACK; -- Revertiría todo hasta el BEGIN TRANSACTION