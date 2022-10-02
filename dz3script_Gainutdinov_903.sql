-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema biblioteka
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema biblioteka
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `biblioteka` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `biblioteka` ;

-- -----------------------------------------------------
-- Table `biblioteka`.`postavshiki`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblioteka`.`postavshiki` (
  `id_postavshika` INT NOT NULL,
  `nazvanie` CHAR(40) NOT NULL,
  PRIMARY KEY (`id_postavshika`),
  UNIQUE INDEX `id_postavshika` (`id_postavshika` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `biblioteka`.`katalog`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblioteka`.`katalog` (
  `id_knigi` INT NOT NULL,
  `nazvanie` CHAR(40) NOT NULL,
  `avtor` CHAR(40) NOT NULL,
  `cena` INT NOT NULL,
  `id_postavshika` INT NOT NULL,
  PRIMARY KEY (`id_knigi`),
  UNIQUE INDEX `id_knigi` (`id_knigi` ASC) VISIBLE,
  UNIQUE INDEX `id_postavshika_UNIQUE` (`id_postavshika` ASC) VISIBLE,
  CONSTRAINT `id_postavshika`
    FOREIGN KEY (`id_postavshika`)
    REFERENCES `biblioteka`.`postavshiki` (`id_postavshika`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `biblioteka`.`klienty`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblioteka`.`klienty` (
  `id_klienta` INT NOT NULL,
  `fio_klienta` CHAR(40) NOT NULL,
  PRIMARY KEY (`id_klienta`),
  UNIQUE INDEX `id_klienta` (`id_klienta` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `biblioteka`.`prodavcy`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblioteka`.`prodavcy` (
  `id_prodavca` INT NOT NULL,
  `fio_prodavca` CHAR(40) NOT NULL,
  `zarplata_prodavca` INT NOT NULL,
  PRIMARY KEY (`zarplata_prodavca`),
  UNIQUE INDEX `id_prodavca` (`id_prodavca` ASC) VISIBLE,
  UNIQUE INDEX `zarplata_prodavca` (`zarplata_prodavca` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `biblioteka`.`prodazhy`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblioteka`.`prodazhy` (
  `id_prodazhi` INT NOT NULL,
  `id_klienta` INT NOT NULL,
  `id_knigi` INT NOT NULL,
  `id_prodavca` INT NOT NULL,
  `zarplata_prodavca` INT NOT NULL,
  `summa` INT NOT NULL,
  PRIMARY KEY (`id_prodazhi`),
  UNIQUE INDEX `id_prodazhi` (`id_prodazhi` ASC) VISIBLE,
  UNIQUE INDEX `summa` (`summa` ASC) VISIBLE,
  CONSTRAINT `prodazhy_ibfk_3`
    FOREIGN KEY (`id_prodavca`)
    REFERENCES `biblioteka`.`prodavcy` (`id_prodavca`),
  CONSTRAINT `prodazhy_ibfk_5`
    FOREIGN KEY (`id_klienta`)
    REFERENCES `biblioteka`.`klienty` (`id_klienta`),
  CONSTRAINT `prodazhy_ibfk_6`
    FOREIGN KEY (`id_knigi`)
    REFERENCES `biblioteka`.`katalog` (`id_knigi`),
  CONSTRAINT `prodazhy_ibfk_8`
    FOREIGN KEY (`zarplata_prodavca`)
    REFERENCES `biblioteka`.`prodavcy` (`zarplata_prodavca`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
