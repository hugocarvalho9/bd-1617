-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema ComboioAcademico
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ComboioAcademico
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ComboioAcademico` DEFAULT CHARACTER SET utf8 ;
USE `ComboioAcademico` ;

-- -----------------------------------------------------
-- Table `ComboioAcademico`.`Funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ComboioAcademico`.`Funcionario` (
  `idFuncionario` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idFuncionario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ComboioAcademico`.`Estudante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ComboioAcademico`.`Estudante` (
  `numero_cc` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `nome_universidade` VARCHAR(45) NOT NULL,
  `genero` CHAR NOT NULL,
  PRIMARY KEY (`numero_cc`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ComboioAcademico`.`Comboio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ComboioAcademico`.`Comboio` (
  `idComboio` INT NOT NULL,
  `observacoes` TEXT NULL,
  PRIMARY KEY (`idComboio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ComboioAcademico`.`Lugar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ComboioAcademico`.`Lugar` (
  `idLugar` INT NOT NULL,
  `idComboio` INT NOT NULL,
  `numero_cadeira` INT NOT NULL,
  `carruagem` CHAR NOT NULL,
  PRIMARY KEY (`idLugar`, `idComboio`),
  INDEX `FK_comboio_idx` (`idComboio` ASC),
  CONSTRAINT `FK_comboioLugares`
    FOREIGN KEY (`idComboio`)
    REFERENCES `ComboioAcademico`.`Comboio` (`idComboio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ComboioAcademico`.`Viagem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ComboioAcademico`.`Viagem` (
  `idViagem` INT NOT NULL,
  `preco_atual` DECIMAL(5,2) NOT NULL,
  `hora_partida` TIME NOT NULL,
  `hora_chegada` TIME NOT NULL,
  `local_partida` VARCHAR(45) NOT NULL,
  `local_chegada` VARCHAR(45) NOT NULL,
  `comboio` INT NOT NULL,
  PRIMARY KEY (`idViagem`),
  INDEX `FK_comboio_idx` (`comboio` ASC),
  CONSTRAINT `FK_viagemComboio`
    FOREIGN KEY (`comboio`)
    REFERENCES `ComboioAcademico`.`Comboio` (`idComboio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ComboioAcademico`.`Bilhete`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ComboioAcademico`.`Bilhete` (
  `idBilhete` INT NOT NULL,
  `preco` DECIMAL(5,2) NOT NULL,
  `data_viagem` DATE NOT NULL,
  `data_emissao` DATE NOT NULL,
  `lugar` INT NOT NULL,
  `funcionario` INT NOT NULL,
  `estudante` INT NOT NULL,
  `viagem` INT NOT NULL,
  PRIMARY KEY (`idBilhete`),
  INDEX `FK_Funcionario_idx` (`funcionario` ASC),
  INDEX `FK_Estudante_idx` (`estudante` ASC),
  INDEX `FK_Viagem_idx` (`viagem` ASC),
  CONSTRAINT `FK_Funcionario`
    FOREIGN KEY (`funcionario`)
    REFERENCES `ComboioAcademico`.`Funcionario` (`idFuncionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_Estudante`
    FOREIGN KEY (`estudante`)
    REFERENCES `ComboioAcademico`.`Estudante` (`numero_cc`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_Viagem`
    FOREIGN KEY (`viagem`)
    REFERENCES `ComboioAcademico`.`Viagem` (`idViagem`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
