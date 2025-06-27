-- Suponiendo una tabla 'Cuentas' (cuenta_id INT PRIMARY KEY, saldo DECIMAL(10, 2))
-- y una tabla Transacciones (transaccion_id INT PRIMARY KEY, cuenta_origen INT, cuenta_destino INT, monto DECIMAL(10, 2), fecha DATETIME)

-- Ejemplo 1: Procedimiento para insertar un nuevo producto
CREATE PROCEDURE InsertarNuevoProducto
    @p_nombre VARCHAR(255), -- Parámetro de entrada
    @p_precio DECIMAL(10, 2),
    @p_stock INT
AS
BEGIN
    INSERT INTO Productos (nombre, precio, stock)
    VALUES (@p_nombre, @p_precio, @p_stock);
END;
GO;

-- Ejecutar el procedimiento
EXEC InsertarNuevoProducto 'Auriculares Inalámbricos', 85.00, 15; -- Para SQL Server
-- EXECUTE InsertarNuevoProducto('Teclado Bluetooth', 110.00, 10); -- Para SQL Server (alternativa)
-- CALL InsertarNuevoProducto('Webcam Full HD', 60.00, 25); -- Para MySQL/PostgreSQL
GO;

-- Ejemplo 2: Procedimiento para realizar una transferencia entre cuentas
-- Este procedimiento encapsula una transacción
CREATE PROCEDURE RealizarTransferencia
    @p_cuenta_origen INT,
    @p_cuenta_destino INT,
    @p_monto DECIMAL(10, 2)
AS
BEGIN
    BEGIN TRANSACTION; -- o START TRANSACTION;

    -- Debitar de la cuenta origen
    UPDATE Cuentas
    SET saldo = saldo - p_monto
    WHERE cuenta_id = p_cuenta_origen;

    -- Acreditar a la cuenta destino
    UPDATE Cuentas
    SET saldo = saldo + p_monto
    WHERE cuenta_id = p_cuenta_destino;

    -- Insertar un registro en la tabla de transacciones
    INSERT INTO Transacciones (cuenta_origen, cuenta_destino, monto, fecha)
    VALUES (p_cuenta_origen, p_cuenta_destino, p_monto, CURRENT_TIMESTAMP);

    -- Confirmar la transacción si todo fue exitoso
    COMMIT;
    -- En un entorno real, aquí iría manejo de errores y un ROLLBACK si falla alguna operación.

END;
GO;
-- Ejecutar el procedimiento
-- EXEC RealizarTransferencia(101, 102, 50.00); -- Asumiendo cuentas 101 y 102