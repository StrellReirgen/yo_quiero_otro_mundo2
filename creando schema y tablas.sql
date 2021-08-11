CREATE SCHEMA IF NOT EXISTS another_world_db DEFAULT CHARACTER SET utf8 ;
USE another_world_db;

-- -----------------------------------------------------
-- Table `mydb`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS another_world_db.usuario (
  id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NULL,
  apellido VARCHAR(45) NULL,
  edad INT NULL,
  email VARCHAR(45) NULL,
  usos_aplicacion INT NULL DEFAULT 1,
  PRIMARY KEY (id),
  UNIQUE INDEX id_UNIQUE (id ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`operario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS another_world_db.operario (
  id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NULL,
  apellido VARCHAR(45) NULL,
  edad INT NULL,
  email VARCHAR(45) NULL,
  veces_soporte INT NULL DEFAULT 1,
  PRIMARY KEY (id))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`usuario_has_operario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS another_world_db.usuario_has_operario (
  id INT NOT NULL AUTO_INCREMENT,
  usuario_id INT NOT NULL,
  operario_id INT NOT NULL,
  fecha DATETIME NOT NULL,
  evaluacion TEXT NULL,
  INDEX fk_usuario_has_operario_operario1_idx (operario_id ASC) VISIBLE,
  INDEX fk_usuario_has_operario_usuario_idx (usuario_id ASC) VISIBLE,
  PRIMARY KEY (id),
  UNIQUE INDEX id_UNIQUE (id ASC) VISIBLE,
  CONSTRAINT fk_usuario_has_operario_usuario
    FOREIGN KEY (usuario_id)
    REFERENCES another_world_db.usuario (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_usuario_has_operario_operario1
    FOREIGN KEY (operario_id)
    REFERENCES another_world_db.operario (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;