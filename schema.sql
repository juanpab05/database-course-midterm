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
