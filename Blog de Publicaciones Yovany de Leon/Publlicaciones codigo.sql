-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema aereopuerto
-- -----------------------------------------------------
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Usuarios` (
  `idUsuarios` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `Apellidos` VARCHAR(45) NULL,
  `Correo_electronico` VARCHAR(45) NULL,
  `genero` VARCHAR(15) NULL,
  `fecha_nacimiento` VARCHAR(45) NULL,
  `password` VARCHAR(225) NULL,
  `Contacto` INT NOT NULL,
  PRIMARY KEY (`idUsuarios`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Publicaciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Publicaciones` (
  `idPublicaciones` INT NOT NULL,
  `fecha` DATE NULL,
  `descripcion_contenido` VARCHAR(45) NULL,
  `Categoria` VARCHAR(45) NULL,
  `Usuarios_idUsuarios` INT NOT NULL,
  `Publicacionescol` VARCHAR(45) NULL,
  PRIMARY KEY (`idPublicaciones`),
  INDEX `fk_Publicaciones_Usuarios1_idx` (`Usuarios_idUsuarios` ASC) VISIBLE,
  CONSTRAINT `fk_Publicaciones_Usuarios1`
    FOREIGN KEY (`Usuarios_idUsuarios`)
    REFERENCES `mydb`.`Usuarios` (`idUsuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Categoria` (
  `idcategoria` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `idPrincipal` INT NOT NULL,
  `Publicaciones_idPublicaciones` INT NOT NULL,
  `tipo` INT NULL,
  PRIMARY KEY (`idcategoria`),
  INDEX `fk_categoria_Publicaciones_idx` (`Publicaciones_idPublicaciones` ASC) VISIBLE,
  CONSTRAINT `fk_categoria_Publicaciones`
    FOREIGN KEY (`Publicaciones_idPublicaciones`)
    REFERENCES `mydb`.`Publicaciones` (`idPublicaciones`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Comentarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Comentarios` (
  `idComentarios` INT NOT NULL,
  `comentario` VARCHAR(45) NOT NULL,
  `fecha` DATE NOT NULL,
  `Publicaciones_idPublicaciones` INT NOT NULL,
  `Usuarios_idUsuarios` INT NOT NULL,
  PRIMARY KEY (`idComentarios`),
  INDEX `fk_Comentarios_Publicaciones1_idx` (`Publicaciones_idPublicaciones` ASC) VISIBLE,
  INDEX `fk_Comentarios_Usuarios1_idx` (`Usuarios_idUsuarios` ASC) VISIBLE,
  CONSTRAINT `fk_Comentarios_Publicaciones1`
    FOREIGN KEY (`Publicaciones_idPublicaciones`)
    REFERENCES `mydb`.`Publicaciones` (`idPublicaciones`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Comentarios_Usuarios1`
    FOREIGN KEY (`Usuarios_idUsuarios`)
    REFERENCES `mydb`.`Usuarios` (`idUsuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
