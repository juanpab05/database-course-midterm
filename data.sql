/*Ingresar los tipos de vehiculos*/
INSERT INTO tipo(id_tipo, nombre)
VALUES(1, 'Bus'),
(2, 'Camioneta'),
(3, 'Automovil');

/*Ingresar los roles de los funcionarios*/
INSERT INTO rol(id_rol, nombre)
VALUES(1, 'Conductor'),
(2, 'Operario');

/*Ingresar buses*/
INSERT INTO vehiculo(placa, id_tipo, modelo, fecha_compra, estado, capacidad)
VALUES('VCS-977', 1, 'Merecedez 2012', '2014-01-15', TRUE, 50),
('HGG-678', 1, 'Volskvagen 2011', '2012-05-07', TRUE, 100),
('ABC-321', 1, 'Matsubichi 123', '2016-09-12', FALSE, 70),
('MIN-767', 1, 'Chevrolet xl 17', '2017-11-09', TRUE, 50),
('ZZS-477', 1, 'Kawasaki 111', '2011-11-11', FALSE, 100);

/*Ingresar conductores*/
INSERT INTO funcionario(codigo, id_rol, nombre, cedula, experiencia, licencia)
VALUES('11123ALGU', 1, 'Alejandro Guzman', '11123', 5, '1157VBA'),
('14789FEAY', 1, 'Felipe Ayala', '14789', 2, '1698QSZ'),
('12547JUPE', 1, 'Juan Perez', '12547', 1, '1325FZA');

/*Ingresar Operarios*/
INSERT INTO funcionario(codigo, id_rol, nombre, cedula, experiencia, licencia, esTecnico)
VALUES('11046PEMA', 2, 'Pedro Martinez', '11046', 8, '1478VEG', FALSE),
('16087LUJA', 2, 'Luisa Jaramillo', '16087', 4, '1544VCS', FALSE),
('15871FRFE', 2, 'Francisco Fernandez', '15874', 9, '1492ACS', FALSE);