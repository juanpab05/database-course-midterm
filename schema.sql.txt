CREATE TABLE rol(
	id_rol INTEGER PRIMARY KEY,
	nombre VARCHAR(20)
);

CREATE TABLE tipo(
	id_tipo INTEGER PRIMARY KEY,
	nombre VARCHAR(20)
);

CREATE TABLE funcionario(
	codigo VARCHAR(50) PRIMARY KEY,
	id_rol INTEGER NOT NULL,
	FOREIGN KEY(id_rol) REFERENCES rol,
	nombre VARCHAR(200),
	cedula VARCHAR,
	experiencia INTEGER,
	licencia VARCHAR(50),
	esTecnico BOOLEAN
);

CREATE TABLE vehiculo(
	placa VARCHAR(10) PRIMARY KEY,
	id_tipo INTEGER NOT NULL,
	FOREIGN KEY(id_tipo) REFERENCES tipo,
	modelo VARCHAR(100),
	fecha_compra DATE,
	capacidad INTEGER,
	estado BOOLEAN
);

CREATE TABLE conductorVehiculo(
	codigo VARCHAR(50) NOT NULL,
	placa VARCHAR(10) NOT NULL,
	FOREIGN KEY(codigo) REFERENCES funcionario,
	FOREIGN KEY(placa) REFERENCES vehiculo
);

CREATE TABLE estacion(
	id_estacion INTEGER PRIMARY KEY,
	nombre VARCHAR(100),
	latitud FLOAT,
	longitud FLOAT,
	max_pasajeros INTEGER
);

CREATE TABLE ruta(
	id_ruta INTEGER PRIMARY KEY,
	nombre VARCHAR(100),
	tiempo_prom TIME
);

CREATE TABLE estacionRuta(
	id_estacion INTEGER NOT NULL,
	id_ruta INTEGER NOT NULL,
	FOREIGN KEY(id_estacion) REFERENCES estacion,
	FOREIGN KEY(id_ruta) REFERENCES ruta
);

CREATE TABLE visitaEstacion(
	codigo VARCHAR(50) NOT NULL,
	id_estacion INTEGER NOT NULL,
	descripcion TEXT,
	fecha DATE
);

CREATE TABLE visitaBus(
	codigo VARCHAR(50) NOT NULL,
	placa VARCHAR(10) NOT NULL,
	descripcion TEXT,
	fecha DATE
);

CREATE TABLE vehiculoRuta(
	id_ruta INTEGER NOT NULL,
	placa VARCHAR(10) NOT NULL,
	FOREIGN KEY(id_ruta) REFERENCES ruta,
	FOREIGN KEY(placa) REFERENCES vehiculo,
	fecha TIMESTAMP
);

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

INSERT INTO visitaBus(codigo, placa, descripcion, fecha)
VALUES('11046PEMA', 'VCS-977', 'El bus tenia una llanta pinchada', '2024-11-25'),
('16087LUJA', 'HGG-678', 'El bus esta en buenas condiciones', '2024-11-28'),
('15871FRFE', 'ABC-321', 'El bus necesita nuevos frenos', '2024-11-30'),
('11046PEMA', 'MIN-767', 'El bus esta en buenas condiciones', '2024-12-01'),
('16087LUJA', 'ZZS-477', 'El bus necesita nuevos cambios', '2024-12-02');

INSERT INTO visitaEstacion(codigo, id_estacion, descripcion, fecha)
VALUES('11046PEMA', 1, 'La estacion tiene 2 sensores roto', '2024-11-29');

INSERT INTO ruta(id_ruta, nombre, tiempo_prom)
VALUES(1, 'B22', '00:30:00'),
(2, 'T31', '00:20:00'),
(3, 'C12', '00:45:00');

INSERT INTO vehiculoruta(id_ruta, placa, fecha)
VALUES(1, 'VCS-977', '2024-11-25 12:00:25'),
(2, 'HGG-678', '2024-11-26 09:30:00'),
(3, 'MIN-767', '2024-11-26 10:00:00'),
(1, 'MIN-767', '2024-11-27 11:00:00'),
(2, 'HGG-678', '2024-11-27 15:30:00');
