/*
	instrucciones para actualizar la Tabla
*/

--INSERT
-- sintaxis nominal 
INSERT	INTO Clientes(NombreCompaa, NombreContacto, Ciudad, IdCliente)
		VALUES('Lojas Americanas', 'Pedro Abreu', 'Rio de Janeiro', 'LAMER')
		
-- sintaxis posicional
INSERT	INTO Clientes VALUES(todos y cada uno de los campos de la tabla)

-- sintaxis masiva nominal
INSERT	INTO NuevaTabla (IdCliente, NombreCompaa)
SELECT	c.IdCliente, c.NombreCompaa
FROM	Clientes as c
WHERE	c.pais = 'BRASIL'
	
-- sintaxis masiva posicional
-- SE DEBEN GENERAR TODOS LOS CAMPOS DE LA TABLA
INSERT	INTO clientesBrasil
SELECT	IdCliente, NombreCompaa, NombreContacto
FROM	Clientes
WHERE	pais = 'BRASIL'

--UPDATE
UPDATE	tabla SET campo1 = valor1, campo2 = valor2
WHERE	condicion (obligatoria, de lo contrario aplica la modificacion a todos)

--DELETE
DELETE from	tabla
WHERE	condicion (obligatoria, de lo contrario los elimina todos)
	