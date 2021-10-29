-- Crear tablas
CREATE TABLE usuarios(
  id INT(11) AUTO_INCREMENT NOT NULL,
  nombre varchar(100) NOT NULL,
  email varchar(255) NOT NULL,
  password varchar(100) NOT NULL,
  direccion varchar(255),
  CONSTRAINT pk_usuario PRIMARY KEY (id)
);