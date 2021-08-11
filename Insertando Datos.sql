INSERT INTO usuario ( nombre, apellido, edad, email)
	VALUES	
		('Nombre 1', 'Apellido 1', 15, 'mi_email1@jmail.com'),
        ('Nombre 2', 'Apellido 2', 27, 'mi_email2@jmail.com'),
        ('Nombre 3', 'Apellido 3', 24, 'mi_email3@jmail.com'),
        ('Nombre 4', 'Apellido 4', 22, 'mi_email4@jmail.com'),
        ('Nombre 5', 'Apellido 5', 17, 'mi_email5@jmail.com');
        
-- -----------------------------------------------------
-- Insertando Operarios
-- -----------------------------------------------------
        
INSERT INTO operario ( nombre, apellido, edad, email)
	VALUES	
		('Nombre 1', 'Apellido 1', 38, 'mi_email1@awakelabmail.com'),
        ('Nombre 2', 'Apellido 2', 36, 'mi_email2@awakelabmail.com'),
        ('Nombre 3', 'Apellido 3', 40, 'mi_email3@awakelabmail.com'),
        ('Nombre 4', 'Apellido 4', 32, 'mi_email4@awakelabmail.com'),
        ('Nombre 5', 'Apellido 5', 29, 'mi_email5@awakelabmail.com');

-- -----------------------------------------------------
-- Insertando los soporte
-- -----------------------------------------------------

INSERT INTO usuario_has_operario ( usuario_id, operario_id, fecha, evaluacion)
	VALUES	
		(1, 2, '2021-07-15', 'Buen servicio, me sirvio'),
        (2, 3, '2021-07-20', 'Excelente servicio, me sirvio'),
        (4, 5, '2021-07-22', 'Mal servicio,no me sirvio'),
        (5, 1, '2021-07-23', 'Buen servicio, me sirvio'),
        (3, 2, '2021-07-28', 'Excelente servicio, me sirvio'),
        (2, 3, '2021-07-30', 'Mal servicio, no me sirvio'),
        (1, 1, '2021-08-01', 'Buen servicio, me sirvio'),
        (4, 5, '2021-08-03', 'Excelente servicio, me sirvio'),
        (5, 4, '2021-08-04', 'Mal servicio, me sirvio'),
        (3, 2, '2021-08-10', 'Excelente servicio, me sirvio');