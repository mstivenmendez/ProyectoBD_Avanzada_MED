-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema e_commerce_db
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `e_commerce_db` ;

-- -----------------------------------------------------
-- Schema e_commerce_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `e_commerce_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `e_commerce_db` ;

-- -----------------------------------------------------
-- Table `categoria`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `categoria` ;

CREATE TABLE IF NOT EXISTS `categoria` (
  `id_categoria` INT NOT NULL AUTO_INCREMENT,
  `descripcion` TEXT NOT NULL,
  `nombre` ENUM('Calzado', 'Ropa', 'Electronico', 'Hogar') NOT NULL,
  PRIMARY KEY (`id_categoria`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE UNIQUE INDEX `nombre_UNIQUE` ON `categoria` (`nombre` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `cliente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cliente` ;

CREATE TABLE IF NOT EXISTS `cliente` (
  `id_cliente` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `apellido` VARCHAR(100) NOT NULL,
  `email` VARCHAR(120) NOT NULL,
  `contraseña` VARCHAR(25) NOT NULL,
  `fecha_registro` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_cliente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE UNIQUE INDEX `email` ON `cliente` (`email` ASC) VISIBLE;

CREATE UNIQUE INDEX `id_cliente_UNIQUE` ON `cliente` (`id_cliente` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `tienda`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tienda` ;

CREATE TABLE IF NOT EXISTS `tienda` (
  `id_tienda` INT NOT NULL AUTO_INCREMENT,
  `nit` VARCHAR(45) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_tienda`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `nit_UNIQUE` ON `tienda` (`nit` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `venta`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `venta` ;

CREATE TABLE IF NOT EXISTS `venta` (
  `id_venta` INT NOT NULL AUTO_INCREMENT,
  `fecha_venta` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `estado` ENUM('Pendiente', 'Procesando', 'Enviado', 'Entregado', 'Cancelado') NOT NULL DEFAULT 'Pendiente',
  `total` DECIMAL(12,2) NULL DEFAULT '0.00',
  `id_cliente_fk` INT NOT NULL,
  `id_tienda_fk` INT NOT NULL,
  PRIMARY KEY (`id_venta`, `id_cliente_fk`, `id_tienda_fk`),
  CONSTRAINT `fk_venta_cliente1`
    FOREIGN KEY (`id_cliente_fk`)
    REFERENCES `cliente` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_venta_tienda1`
    FOREIGN KEY (`id_tienda_fk`)
    REFERENCES `tienda` (`id_tienda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `fk_venta_cliente1_idx` ON `venta` (`id_cliente_fk` ASC) VISIBLE;

CREATE INDEX `fk_venta_tienda1_idx` ON `venta` (`id_tienda_fk` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `producto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `producto` ;

CREATE TABLE IF NOT EXISTS `producto` (
  `id_producto` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(150) NOT NULL,
  `descripcion` TEXT NULL DEFAULT NULL,
  `precio` DECIMAL(10,2) NULL,
  `activo` TINYINT NULL,
  PRIMARY KEY (`id_producto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE UNIQUE INDEX `nombre` ON `producto` (`nombre` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `proveedor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `proveedor` ;

CREATE TABLE IF NOT EXISTS `proveedor` (
  `id_proveedor` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(150) NOT NULL,
  `email_contacto` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE UNIQUE INDEX `email_contacto` ON `proveedor` (`email_contacto` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `pais`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pais` ;

CREATE TABLE IF NOT EXISTS `pais` (
  `id_pais` INT NOT NULL AUTO_INCREMENT,
  `indicativo` VARCHAR(10) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_pais`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `indicativo_UNIQUE` ON `pais` (`indicativo` ASC) VISIBLE;

CREATE UNIQUE INDEX `nombre_UNIQUE` ON `pais` (`nombre` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `direccion_envio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `direccion_envio` ;

CREATE TABLE IF NOT EXISTS `direccion_envio` (
  `id_direccion_envio` INT NOT NULL AUTO_INCREMENT,
  `ciudad` VARCHAR(45) NOT NULL,
  `barrio` VARCHAR(45) NOT NULL,
  `calle` VARCHAR(45) NOT NULL,
  `tipo` ENUM('Envio', 'Facturacion', 'Oficina', 'Otro') NULL,
  PRIMARY KEY (`id_direccion_envio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `inventario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `inventario` ;

CREATE TABLE IF NOT EXISTS `inventario` (
  `id_inventario` INT NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(150) NULL,
  `stock` VARCHAR(45) NOT NULL,
  `id_producto_fk` INT NOT NULL,
  PRIMARY KEY (`id_inventario`, `id_producto_fk`),
  CONSTRAINT `fk_inventario_producto1`
    FOREIGN KEY (`id_producto_fk`)
    REFERENCES `producto` (`id_producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE UNIQUE INDEX `sku_UNIQUE` ON `inventario` (`sku` ASC) VISIBLE;

CREATE INDEX `fk_inventario_producto1_idx` ON `inventario` (`id_producto_fk` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `producto_categoria`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `producto_categoria` ;

CREATE TABLE IF NOT EXISTS `producto_categoria` (
  `id_producto_fk` INT NOT NULL,
  `id_categoria_fk` INT NOT NULL,
  PRIMARY KEY (`id_categoria_fk`, `id_producto_fk`),
  CONSTRAINT `fk_categoria_producto_producto1`
    FOREIGN KEY (`id_producto_fk`)
    REFERENCES `producto` (`id_producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_categoria_producto_categoria1`
    FOREIGN KEY (`id_categoria_fk`)
    REFERENCES `categoria` (`id_categoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_categoria_producto_producto1_idx` ON `producto_categoria` (`id_producto_fk` ASC) VISIBLE;

CREATE INDEX `fk_categoria_producto_categoria1_idx` ON `producto_categoria` (`id_categoria_fk` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `moneda`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `moneda` ;

CREATE TABLE IF NOT EXISTS `moneda` (
  `id_moneda` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `valor` DECIMAL(12,2) NOT NULL,
  PRIMARY KEY (`id_moneda`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tienda_proveedor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tienda_proveedor` ;

CREATE TABLE IF NOT EXISTS `tienda_proveedor` (
  `condiciones` TEXT NOT NULL,
  `estado` ENUM('activo', 'inactivo') NOT NULL DEFAULT 'activo',
  `id_tienda_fk` INT NOT NULL,
  `id_proveedor_fk` INT NOT NULL,
  PRIMARY KEY (`id_tienda_fk`, `id_proveedor_fk`),
  CONSTRAINT `fk_tienda_proveedor_tienda`
    FOREIGN KEY (`id_tienda_fk`)
    REFERENCES `tienda` (`id_tienda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tienda_proveedor_proveedor1`
    FOREIGN KEY (`id_proveedor_fk`)
    REFERENCES `proveedor` (`id_proveedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_tienda_proveedor_tienda_idx` ON `tienda_proveedor` (`id_tienda_fk` ASC) VISIBLE;

CREATE INDEX `fk_tienda_proveedor_proveedor1_idx` ON `tienda_proveedor` (`id_proveedor_fk` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `telefono`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `telefono` ;

CREATE TABLE IF NOT EXISTS `telefono` (
  `id_telefono` INT NOT NULL AUTO_INCREMENT,
  `telefono` VARCHAR(15) NULL,
  `id_proveedor_fk` INT NOT NULL,
  `id_pais_fk` INT NOT NULL,
  `id_cliente_fk` INT NOT NULL,
  PRIMARY KEY (`id_telefono`, `id_proveedor_fk`, `id_pais_fk`, `id_cliente_fk`),
  CONSTRAINT `fk_telefono_proveedor1`
    FOREIGN KEY (`id_proveedor_fk`)
    REFERENCES `proveedor` (`id_proveedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_telefono_pais1`
    FOREIGN KEY (`id_pais_fk`)
    REFERENCES `pais` (`id_pais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_telefono_cliente1`
    FOREIGN KEY (`id_cliente_fk`)
    REFERENCES `cliente` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE UNIQUE INDEX `telefono_UNIQUE` ON `telefono` (`telefono` ASC) VISIBLE;

CREATE INDEX `fk_telefono_proveedor1_idx` ON `telefono` (`id_proveedor_fk` ASC) VISIBLE;

CREATE INDEX `fk_telefono_pais1_idx` ON `telefono` (`id_pais_fk` ASC) VISIBLE;

CREATE INDEX `fk_telefono_cliente1_idx` ON `telefono` (`id_cliente_fk` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `cliente_direccion_envio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cliente_direccion_envio` ;

CREATE TABLE IF NOT EXISTS `cliente_direccion_envio` (
  `id_cliente_fk` INT NOT NULL,
  `id_direccion_envio_fk` INT NOT NULL,
  PRIMARY KEY (`id_cliente_fk`, `id_direccion_envio_fk`),
  CONSTRAINT `fk_clientes_has_direccion_envio_clientes1`
    FOREIGN KEY (`id_cliente_fk`)
    REFERENCES `cliente` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_clientes_has_direccion_envio_direccion_envio1`
    FOREIGN KEY (`id_direccion_envio_fk`)
    REFERENCES `direccion_envio` (`id_direccion_envio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `fk_clientes_has_direccion_envio_direccion_envio1_idx` ON `cliente_direccion_envio` (`id_direccion_envio_fk` ASC) VISIBLE;

CREATE INDEX `fk_clientes_has_direccion_envio_clientes1_idx` ON `cliente_direccion_envio` (`id_cliente_fk` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `producto_venta`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `producto_venta` ;

CREATE TABLE IF NOT EXISTS `producto_venta` (
  `id_producto_fk` INT NOT NULL,
  `id_venta_fk` INT NOT NULL,
  `cantidad` INT NOT NULL,
  `precio_unitario` DECIMAL(10,2) NULL,
  `id_moneda_fk` INT NOT NULL,
  PRIMARY KEY (`id_producto_fk`, `id_venta_fk`, `id_moneda_fk`),
  CONSTRAINT `fk_producto_has_venta_producto1`
    FOREIGN KEY (`id_producto_fk`)
    REFERENCES `producto` (`id_producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_producto_has_venta_venta1`
    FOREIGN KEY (`id_venta_fk`)
    REFERENCES `venta` (`id_venta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_producto_venta_moneda1`
    FOREIGN KEY (`id_moneda_fk`)
    REFERENCES `moneda` (`id_moneda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `fk_producto_has_venta_venta1_idx` ON `producto_venta` (`id_venta_fk` ASC) VISIBLE;

CREATE INDEX `fk_producto_has_venta_producto1_idx` ON `producto_venta` (`id_producto_fk` ASC) VISIBLE;

CREATE INDEX `fk_producto_venta_moneda1_idx` ON `producto_venta` (`id_moneda_fk` ASC) VISIBLE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
