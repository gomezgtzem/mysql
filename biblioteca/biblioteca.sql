-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema biblioteca
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema biblioteca
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `biblioteca` DEFAULT CHARACTER SET utf8 ;
USE `biblioteca` ;

-- -----------------------------------------------------
-- Table `biblioteca`.`autor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblioteca`.`autor` (
  `idautor` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(255) NOT NULL,
  `nacionalidad` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idautor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `biblioteca`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblioteca`.`cliente` (
  `idcliente` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(255) NOT NULL,
  `direccion` VARCHAR(255) NOT NULL,
  `telefono` INT NOT NULL,
  `correo` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idcliente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `biblioteca`.`libros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblioteca`.`libros` (
  `idLibro` INT NOT NULL AUTO_INCREMENT,
  `autor` INT NOT NULL,
  `titulo` VARCHAR(255) NOT NULL,
  `edicion` VARCHAR(255) NOT NULL,
  `isbn` VARCHAR(255) NOT NULL,
  `fechaPublicacion` DATE NOT NULL,
  `imagen` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idLibro`),
  INDEX `idAutor_idx` (`autor` ASC) VISIBLE,
  CONSTRAINT `idAutor`
    FOREIGN KEY (`autor`)
    REFERENCES `biblioteca`.`autor` (`idautor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `biblioteca`.`renta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblioteca`.`renta` (
  `idrenta` INT NOT NULL AUTO_INCREMENT,
  `IdLibro` INT NOT NULL,
  `idCliente` INT NOT NULL,
  `fechaPrestamo` TIMESTAMP NOT NULL,
  `fechaDevolucion` TIMESTAMP NOT NULL,
  `sucursal` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`idrenta`),
  INDEX `idLibro_idx` (`IdLibro` ASC) VISIBLE,
  INDEX `idCliente_idx` (`idCliente` ASC) VISIBLE,
  CONSTRAINT `idCliente`
    FOREIGN KEY (`idCliente`)
    REFERENCES `biblioteca`.`cliente` (`idcliente`),
  CONSTRAINT `idLibro`
    FOREIGN KEY (`IdLibro`)
    REFERENCES `biblioteca`.`libros` (`idLibro`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


INSERT INTO cliente VALUES(NULL, 'Rosario Gomez', "CDMX", 2345678, "correo2@ejemplo.com");
INSERT INTO cliente VALUES(NULL, 'Rosario Gomez', "CDMX", 2345678, "correo2@ejemplo.com");
INSERT INTO cliente VALUES(NULL, 'Martha Castañeda', "CDMX", 568749, "correo3@ejemplo.com");
INSERT INTO cliente VALUES(NULL, 'Daniela Dominguez', "CDMX", 6522458, "correo4@ejemplo.com");
INSERT INTO cliente VALUES(NULL, 'Frida Rodriguez', "EDOMEX", 56445125, "correo5@ejemplo.com");
select * from cliente;
describe autor;
INSERT INTO autor VALUES(NULL,"Juan Rulfo","Mexicana");
INSERT INTO autor VALUES(NULL,"Octavio Paz","Mexicana");
INSERT INTO autor VALUES(NULL,"Juan José Arreola","Mexicana");
INSERT INTO autor VALUES(NULL,"Carlos Fuentes","Mexicana");
INSERT INTO autor VALUES(NULL,"José Emilio Pacheco","Mexicana");
select * from autor;
-- DELETE FROM autor WHERE idautor=14;
describe libros;
INSERT INTO libros VALUES(NULL,4, "Pedro Paramo", "Edicion de Carton", "85484415-DSS", "1955-06-18", "Comal sobre las brazas" );
INSERT INTO libros VALUES(NULL,5, "Confabulario", "Edicion de Piedra", "85484465-DED", "1985-07-19", "Confabulario-imaginacion niño" );
INSERT INTO libros VALUES(NULL,6, "Aura", "Edicion de Aire", "95564415-DXS", "1988-03-13", "Aura aurosa" );
INSERT INTO libros VALUES(NULL,7, "Las batallas en el desierto", "Edicion de arena", "85488719-ESD", "1999-02-14", "Arena arenosa" );
INSERT INTO libros VALUES(NULL,8, "Mexican Harry Potter", "Edicion de Huevo", "84684565-XPO", "2019-02-16", "Harry haciendo hechizos" );
select * from libros;
describe renta;
INSERT INTO renta VALUES(NULL, 4, 1, "2021-09-14 16:54:20", "2021-10-01 13:00:15", "Sucursal El Mexicano, Culhuacan");
INSERT INTO renta VALUES(NULL, 5, 2, "2021-10-14 16:54:20", "2021-11-01 13:00:15", "Sucursal El Mexicano, Culhuacan");
INSERT INTO renta VALUES(NULL, 1, 3, "2021-01-14 16:54:20", "2021-02-01 13:00:15", "Sucursal El Mexicano, Culhuacan");
INSERT INTO renta VALUES(NULL, 2, 5, "2021-03-14 16:54:20", "2021-04-01 13:00:15", "Sucursal El Mexicano, Culhuacan");
INSERT INTO renta VALUES(NULL, 3, 5, "2021-04-14 16:54:20", "2021-05-01 13:00:15", "Sucursal El Mexicano, Culhuacan");
INSERT INTO renta VALUES(NULL, 4, 4, "2021-05-14 16:54:20", "2021-05-25 13:00:15", "Sucursal El Mexicano, Culhuacan");
INSERT INTO renta VALUES(NULL, 4, 3, "2021-06-14 16:54:20", "2021-07-01 13:00:15", "Sucursal El Mexicano, Culhuacan");
INSERT INTO renta VALUES(NULL, 5, 2, "2021-07-14 16:54:20", "2021-08-01 13:00:15", "Sucursal El Mexicano, Culhuacan");
select * from renta;
