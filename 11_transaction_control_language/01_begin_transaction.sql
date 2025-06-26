-- Ejemplo: Transferencia de dinero entre cuentas
-- Asumimos una tabla Cuentas (cuenta_id INT PRIMARY KEY, saldo DECIMAL(10, 2))

-- Iniciar la transacción
BEGIN TRANSACTION;

-- Primera operación: Debitar de la cuenta 1
UPDATE Cuentas
SET saldo = saldo - 100.00
WHERE cuenta_id = 1;

-- Segunda operación: Acreditar a la cuenta 2
UPDATE Cuentas
SET saldo = saldo + 100.00
WHERE cuenta_id = 2;

-- Si ambas operaciones tienen éxito, puedes COMMIT (confirmar) la transacción.
-- Si alguna falla, puedes ROLLBACK (revertir) la transacción.