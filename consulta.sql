SELECT fecha, id_ruta, 
(SELECT nombre AS nombre_ruta FROM ruta WHERE vehiculoruta.id_ruta = ruta.id_ruta), 
placa,
(SELECT capacidad FROM vehiculo WHERE vehiculoruta.placa = vehiculo.placa)
FROM vehiculoruta 
