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

/*Ingresar estaciones de los 3 tipos*/
INSERT INTO estacion(id_estacion, nombre, latitud, longitud, max_pasajeros)
VALUES(1, 'cab_andressanin', 3.443729, -76.483261, 600),
(2, 'cab_menga', 3.493645, -76.53071, 400),
(3, 'cab_pasocomercio', 3.492729, -76.489817, 500),
(4, 'cab_aguablanca', 3.578043, -76.457701, 700),
(5, 'cab_sur', 3.444578, -76.565812, 800),
(6, 'int_cañaveralejo', 3.454789, -76.410052, 800),
(7, 'int_calipso', 3.495489, -75.0980521, 600),
(8, 'int_simonbolivar', 3.470156, -74.985441, 500),
(9, 'int_centro', 3.4652411, -75.897411, 1000),
(10, 'int_cañaverales', 3.4870123, -75.780052, 700),
(11, 'par_sanpascual', 3.4958124, -74.597523, 500),
(12, 'par_sucre', 3.431174, -75.147891, 600),
(13, 'par_petecuy', 3.441445, -77.871545, 800),
(14, 'par_melendez', 3.423578, -77.569801, 600),
(15, 'par_univalle', 3.435568, -77.874512, 1000);

/*Ingresar las visitas de mantenimiento al bus*/
INSERT INTO visitaBus(codigo, placa, descripcion, fecha)
VALUES('11046PEMA', 'VCS-977', 'El bus tenia una llanta pinchada', '2024-11-25'),
('16087LUJA', 'HGG-678', 'El bus esta en buenas condiciones', '2024-11-28'),
('15871FRFE', 'ABC-321', 'El bus necesita nuevos frenos', '2024-11-30'),
('11046PEMA', 'MIN-767', 'El bus esta en buenas condiciones', '2024-12-01'),
('16087LUJA', 'ZZS-477', 'El bus necesita nuevos cambios', '2024-12-02');

/*Ingresar una visita al mantenimiento de la estacion*/
INSERT INTO visitaEstacion(codigo, id_estacion, descripcion, fecha)
VALUES('11046PEMA', 1, 'La estacion tiene 2 sensores roto', '2024-11-29');

/*Ingresar las rutas*/
INSERT INTO ruta(id_ruta, nombre, tiempo_prom)
VALUES(1, 'B22', '00:30:00'),
(2, 'T31', '00:20:00'),
(3, 'C12', '00:45:00');

/*Ingresar los viajes*/
INSERT INTO vehiculoruta(id_ruta, placa, fecha)
VALUES(1, 'VCS-977', '2024-11-25 12:00:25'),
(2, 'HGG-678', '2024-11-26 09:30:00'),
(3, 'MIN-767', '2024-11-26 10:00:00'),
(1, 'MIN-767', '2024-11-27 11:00:00'),
(2, 'HGG-678', '2024-11-27 15:30:00');
