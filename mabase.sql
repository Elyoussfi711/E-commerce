-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema controle2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema controle2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `controle2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
-- -----------------------------------------------------
-- Schema mabase
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mabase
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mabase` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `controle2` ;

-- -----------------------------------------------------
-- Table `controle2`.`matable`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `controle2`.`matable` (
  `uzer` VARCHAR(250) NULL DEFAULT NULL,
  `pwd` VARCHAR(250) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

USE `mabase` ;

-- -----------------------------------------------------
-- Table `mabase`.`matable`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mabase`.`matable` (
  `login` VARCHAR(64) NULL DEFAULT NULL,
  `mdp` VARCHAR(64) NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
