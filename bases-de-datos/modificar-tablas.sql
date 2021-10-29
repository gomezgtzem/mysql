-- Renombrar la tabla
ALTER TABLE usuarios RENAME TO users;
-- Agregar campos de la tabla
ALTER TABLE users CHANGE direccion dir VARCHAR(50);
-- Agregar columnas
ALTER TABLE users ADD edad INT NOT NULL;
-- rename users a usuarios
ALTER TABLE users RENAME TO usuarios;
-- Eliminar columnas
ALTER TABLE usuarios DROP edad;
-- rename dir por direccion
ALTER TABLE usuarios CHANGE dir direccion VARCHAR(100);
