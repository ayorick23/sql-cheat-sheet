-- Archivo: sql-advanced/triggers/trigger-examples.sql

-- Crear la tabla de auditoría
CREATE TABLE Auditoria_Productos (
    auditoria_id INT PRIMARY KEY IDENTITY, -- para SQL Server
    -- AUTO_INCREMENT para MySQL
    producto_id INT,
    accion VARCHAR(50),
    fecha_cambio DATETIME DEFAULT CURRENT_TIMESTAMP,
    old_precio DECIMAL(10, 2),
    new_precio DECIMAL(10, 2)
);
GO;

-- Suponer que la tabla Productos ya está creada con algunos datos.

-- --- EJEMPLOS DE TRIGGERS ---
-- Resultado esperado: Una fila para el cambio de precio del producto 1.

-- Ejemplo 2 (SQL Server): AFTER INSERT - Trigger para actualizar un contador
-- Asumimos una tabla Categorias (categoria_id INT PRIMARY KEY, nombre_categoria VARCHAR, total_productos INT DEFAULT 0)

CREATE TRIGGER trg_AfterInsertProducto
ON Productos
AFTER INSERT
AS
BEGIN
    -- Actualizar el contador de productos en la tabla Categorias (si tuviéramos una columna de categoría en Productos)
    -- UPDATE C SET C.total_productos = C.total_productos + 1
    -- FROM Categorias C INNER JOIN INSERTED I ON C.categoria_id = I.categoria_id;
    -- Para este ejemplo, simplemente insertamos un log en auditoría
    INSERT INTO Auditoria_Productos (producto_id, accion, old_precio, new_precio)
    SELECT i.producto_id, 'INSERT', NULL, i.precio FROM INSERTED i;
END;

-- Probar el trigger
INSERT INTO Productos (producto_id, nombre, precio, stock) VALUES (10, 'Impresora 3D', 500.00, 3);
SELECT * FROM Auditoria_Productos; -- Mostrará el registro de inserción.
GO;

-- Ejemplo 2 (MySQL/PostgreSQL): AFTER UPDATE - Trigger de Auditoría de Precios
-- Registra los cambios de precio en la tabla Auditoria_Productos
/*
DELIMITER // -- Necesario para MySQL para cambiar el delimitador

CREATE TRIGGER trg_AfterUpdateProductoPrecio
AFTER UPDATE ON Productos
FOR EACH ROW
BEGIN
    IF OLD.precio <> NEW.precio THEN -- Solo si el precio realmente cambió
        INSERT INTO Auditoria_Productos (producto_id, accion, old_precio, new_precio)
        VALUES (OLD.producto_id, 'UPDATE_PRECIO', OLD.precio, NEW.precio);
    END IF;
END;
//
DELIMITER ; -- Restablecer el delimitador

-- Probar el trigger de auditoría
UPDATE Productos
SET precio = 1300.00
WHERE producto_id = 1;

UPDATE Productos
SET stock = 6 -- Esto no debería disparar el registro de precio
WHERE producto_id = 1;

SELECT * FROM Auditoria_Productos;
*/

-- Ejemplo 3 (MySQL/PostgreSQL): BEFORE INSERT - Validar datos
-- Previene la inserción de productos con stock negativo
/*
DELIMITER //

CREATE TRIGGER trg_BeforeInsertProductoStock
BEFORE INSERT ON Productos
FOR EACH ROW
BEGIN
    IF NEW.stock < 0 THEN
        -- En MySQL, esto generaría un error y revertiría la inserción.
        -- En PostgreSQL, se usaría RAISE EXCEPTION.
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El stock no puede ser negativo.';
    END IF;
END;
//
DELIMITER ;

-- Probar el trigger de validación
-- INSERT INTO Productos (producto_id, nombre, precio, stock) VALUES (11, 'Batería Externa', 30.00, -2); -- Esto debería fallar
*/

-- Ejemplo 4 (SQL Server): INSTEAD OF Trigger (solo para VISTAS)
-- Permite realizar operaciones DML en vistas que normalmente no serían actualizables

CREATE VIEW VistaProductosActivos AS
SELECT producto_id, nombre, precio
FROM Productos
WHERE stock > 0;
GO;

CREATE TRIGGER trg_InsteadOfUpdateVistaProductosActivos
ON VistaProductosActivos
INSTEAD OF UPDATE
AS
BEGIN
    UPDATE P
    SET P.nombre = I.nombre,
        P.precio = I.precio
    FROM Productos P
    INNER JOIN INSERTED I ON P.producto_id = I.producto_id;
END;
GO;