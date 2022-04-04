--inicio de transaccion
BEGIN	transaccion
	--primera accion fisica de la transaccion
	UPDATE	Productos
		SET	UnidadesEnExistencia = UnidadesEnExistencia + 1
		WHERE	IdProducto = 1
	--segunda accion fisica de la transaccion
	UPDATE	Productos
		SET UnidadesEnExistencia = UnidadesEnExistencia + 1
		WHERE	IdProducto = 2
--fin de la transaccion
COMMIT	 (confirma la transaccion)
ROLLBACK (desace los cambios)

/*
	norma a cumplir para considerar una base de datos transaccional
						(ACID)
						A	ATOMICITY Atomicidad
						C	CONSISTENCY Consistencia
						I	ISOLATION Aislamiento
						D	DURABILITY Durabilidad
*/

/*
		transaccione anidadas
*/
--ejemplo
--inicio de transaccion
BEGIN TRANSACTION
	--primera accion fisica
	UPDATE	Productos
		SET PrecioUnidad = PrecioUnidad + 1
		WHERE IdProducto = 1
	--establecer SAVEPOINT.  (hasta aqui todo va bien)
	SAVEPOINT TRANSACTION tr1
	--segunda accion fisica
	UPDATE Productos
		SET PrecioUnidad = PrecioUnidad + 1
		WHERE IdProducto = 2
	--desacer hasta SAVEPOINT
	ROLLBACK TRANSACTION tr1
--fin de la transaccion
COMMIT