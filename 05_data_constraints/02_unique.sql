CREATE TABLE Usuarios (
    usuario_id INT PRIMARY KEY,
    nombre_usuario VARCHAR(50) NOT NULL UNIQUE, -- El nombre de usuario debe ser único
    email VARCHAR(255) UNIQUE, -- El email también debe ser único
    contrasena VARCHAR(255) NOT NULL
);

-- Intentar insertar usuarios con el mismo nombre_usuario o email resultará en un error
INSERT INTO Usuarios (usuario_id, nombre_usuario, email, contrasena)
VALUES (1, 'admin', 'admin@example.com', 'pass123');

-- INSERT INTO Usuarios (usuario_id, nombre_usuario, email, contrasena)
-- VALUES (2, 'admin', 'otro@example.com', 'pass456'); -- Error: nombre_usuario duplicado

-- INSERT INTO Usuarios (usuario_id, nombre_usuario, email, contrasena)
-- VALUES (3, 'user1', 'admin@example.com', 'pass789'); -- Error: email duplicado

-- Esto sí sería válido
INSERT INTO Usuarios (usuario_id, nombre_usuario, email, contrasena)
VALUES (2, 'super_admin', 'super@example.com', 'securepass');