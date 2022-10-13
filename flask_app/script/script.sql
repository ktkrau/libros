-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema libros1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema libros1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `libros1` DEFAULT CHARACTER SET utf8 ;
USE `libros1` ;

-- -----------------------------------------------------
-- Table `libros1`.`autores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `libros1`.`autores` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `created_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `libros1`.`libros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `libros1`.`libros` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(45) NULL,
  `num_paginas` INT NULL,
  `created_at` VARCHAR(45) NULL,
  `updated_at` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `libros1`.`favoritos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `libros1`.`favoritos` (
  `autor_id` INT NOT NULL,
  `libro_id` INT NOT NULL,
  INDEX `fk_autores_has_libros_autores1_idx` (`autor_id` ASC),
  INDEX `fk_autores_has_libros_libros1_idx` (`libro_id` ASC),
  CONSTRAINT `fk_autores_has_libros_autores1`
    FOREIGN KEY (`autor_id`)
    REFERENCES `libros1`.`autores` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_autores_has_libros_libros1`
    FOREIGN KEY (`libro_id`)
    REFERENCES `libros1`.`libros` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
