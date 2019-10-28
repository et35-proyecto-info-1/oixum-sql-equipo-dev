CREATE DATABASE IF NOT EXISTS test;

CREATE TABLE IF NOT EXISTS test.estudiantes (
	id INT NOT NULL AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	comidaPreferida varchar(100) NULL,
	fechaNacimiento DATE NOT NULL,
	CONSTRAINT estudiantes_PK PRIMARY KEY (id)
);

INSERT INTO test.estudiantes VALUES
('','Erik','Fideos','2001-07-27'),
('','Emiliano','Ravioles','2002-09-26'),
('','Matias','Ñoquis','2002-09-16'),
('','Alexander','Hamburgesa','2001-06-01');
