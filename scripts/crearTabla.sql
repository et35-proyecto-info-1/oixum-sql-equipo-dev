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
('','Alexander','Hamburgesa','2001-06-01'),
('','Juan','Asado','1999-02-25'),
('','Leandro','Pancho','1980-09-09'),
('','German','Milanesa','2001-09-03');

insert into persona values
(476,"11222333"),
(477,"20123145"),
(478,"11222333"),
(480,"36478298"),
(481,"94857365"),
(482,"08007220"),
(483,"12345678");

CREATE TABLE Persona(
CodP int,
DNI varchar(12),
constraint PK_Per primary key(CodP)
);

insert into test.persona values
(476,"11222333"),
(477,"20123145"),
(478,"11222333");
