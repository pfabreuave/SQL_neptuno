/*
	obtener el nombre del producto, y el nombre de
	la categoria
*/

SELECT	p.NombreProducto, c.NombreCategora
--FROM	Productos as p, Categoras as c
--WHERE	p.IdCategora = c.IdCategora
-- con JOIN seria asi: (tipo INNER JOIN)
FROM 	Productos as p
		JOIN Categoras as c on(p.IdCategora = c.IdCategora)	
		
/*
	premisas importantes:
	la tabla que aparece antes de la clausula JOIN
	sera la izquierda, la tabla que aparece despues 
	ser derecha
	Productos (izquierda)
	Categoras (derecha)
*/

/*
	Tipo INNER JOIN 
	JOIN Categoras as c on(p.IdCategora = c.IdCategora)
	
	Aparecen todos los registros de la tabla derecha que tengan
	un registro correspondiente en la tabla izquierda, aparecen 
	todos los registros de la tabla izquierda que tengan un
	registro correspondiente en la tabla derecha.
	
	Tipo LEFT JOIN
	LEFT JOIN Categoras as c on(p.IdCategora = c.IdCategora)
	
	Aparecen todos los registros de la tabla izquierda y todos 
	los registros de la tabla derecha que tenga un registro
	correspondiente en la tabla izquierda

	Tipo RIGHT JOIN
	RIGHT JOIN Categoras as c on(p.IdCategora = c.IdCategora)
	
	Aparecen todos los registros de la tabla derecha y todos
	los registros de la tabla izaquierda que tengan un registro
	correspondiente en la tabla derecha
	
	Tipo FULL JOIN
	FULL JOIN Categoras as c on(p.IdCategora = c.IdCategora)
	
	Aparecen todos los registros de la tabla derecha y todos
	los registros de la tabla izaquierda
	
	Self JOIN
	
	Son combinaciones que ocurren sobre la misma tabla
	
	
*/	

/*
	obtener el nombre de todos los producto, el nombre de
	la categoria y el nombre del proveedor
	
*/

SELECT	p.NombreProducto, c.NombreCategora, pr.NombreCompaa
FROM	Productos as p
LEFT	JOIN Categoras as c on(p.IdCategora = c.IdCategora)
LEFT	JOIN Proveedores as pr on(p.IdProveedor = pr.IdProveedor)
	
/*
	Obtener el nombre de los empleados y el nombre de su jefe 
					Tipo Self JOIN
*/

SELECT	e.nombre as empleado, j.nombre as Jefe
FROM	Empleados as e
LEFT	JOIN Empleados as j on(e.Jefe = j.IdEmpleado)
	
	
	
	