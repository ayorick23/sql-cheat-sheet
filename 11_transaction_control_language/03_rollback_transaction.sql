-- Iniciar la transacción
BEGIN TRANSACTION;

-- Intento de débito
UPDATE Cuentas
SET saldo = saldo - 200.00
WHERE cuenta_id = 1;

-- Simulación de un error (ej. cuenta_id 99 no existe o saldo insuficiente)
-- UPDATE Cuentas
-- SET saldo = saldo + 200.00
-- WHERE cuenta_id = 99; -- Esto podría fallar

-- Si ocurre un error o una condición no deseada
-- Deshacer todos los cambios desde el BEGIN TRANSACTION
ROLLBACK;

-- El saldo de la cuenta 1 (y cualquier otra modificación) volverá a su estado original.