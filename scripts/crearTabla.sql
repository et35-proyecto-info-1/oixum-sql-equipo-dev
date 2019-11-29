DROP DATABASE IF EXISTS test;
CREATE DATABASE IF NOT EXISTS test;

CREATE TABLE IF NOT EXISTS test.estudiantes (
	id INT NOT NULL,
	nombre varchar(20) NOT NULL,
	comidaPreferida varchar(40) NULL,
	fechaNacimiento DATE NOT NULL,
	CONSTRAINT estudiantes_PK PRIMARY KEY (id)
);

INSERT INTO test.estudiantes VALUES
(1,'Erik','Fideos','2001/07/27'),
(2,'Emiliano','Ravioles','2002/09/26'),
(3,'Matias','Arroz','2002-09-16'),
(4,'Alexander','Hamburgesa','2001/06/01'),
(5,'Juan','Asado','1999/02/25'),
(6,'Leandro','Pizza','1980/09/09'),
(7,'German','Pollo','2001/09/03');


CREATE TABLE IF NOT EXISTS test.persona(
DNI int not null,
Nombre varchar(20),
constraint PK_Per primary key(DNI)
);

insert into test.persona values
(11222333,"Miguel"),
(20123145,"Marcelo"),
(88238213,"Margarita"),
(36478298,"Luis"),
(94857365,"Melian"),
(08007220,"Juan"),
(12345678,"Pedro"),
(44263814,"Matias"),
(19785452,"Micaela"),
(43570272,"Dylan"),
(44520290,"Sofia"),
(44230903,"Federico"),
(25410014,"Claudia");


-- CREATE TABLE pers(
-- DNI int,
-- Nombre varchar(20),
-- constraint PK_Per primary key(DNI)
-- );

-- insert into pers values
-- (11222333,"Miguel"),
-- (20123145,"Marcelo"),
-- (88238213,"Margarita");