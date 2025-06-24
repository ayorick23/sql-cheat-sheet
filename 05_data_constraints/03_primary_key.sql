CREATE TABLE Productos (
    producto_id INT PRIMARY KEY, -- producto_id es la clave primaria
    nombre VARCHAR(255) NOT NULL,
    precio DECIMAL(10, 2)
);

-- Ejemplo de clave primaria compuesta:
CREATE TABLE Inscripciones (
    estudiante_id INT,
    curso_id INT,
    fecha_inscripcion DATE,
    PRIMARY KEY (estudiante_id, curso_id) -- Combinación de estudiante_id y curso_id es la clave primaria
);

-- Intentar insertar productos con el mismo producto_id resultará en un error
INSERT INTO Productos (producto_id, nombre, precio) VALUES (101, 'Cafetera', 75.00);
-- INSERT INTO Productos (producto_id, nombre, precio) VALUES (101, 'Tostadora', 50.00); -- Error: clave primaria duplicada