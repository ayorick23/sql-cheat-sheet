-- Ejemplo 1: Eliminar la tabla 'Pedidos'
DROP TABLE Pedidos;

-- Ejemplo 2: Eliminar la tabla 'Clientes' (Cuidado: si Pedidos hace referencia a Clientes, podría requerir eliminar Pedidos primero o usar CASCADE)
DROP TABLE Clientes;