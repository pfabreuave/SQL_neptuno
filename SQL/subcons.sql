
/*	
	Obtener en nombre y el precio de todos aquellos
	productos cuyo precio sea igual o superior a la
	media de todos los precios no suspendidos
*/

SELECT	NombreProducto, PrecioUnidad
FROM	Productos
WHERE	PrecioUnidad >= (	SELECT	avg(PrecioUnidad) 
							FROM	Productos
							WHERE	Suspendido > 0)	
	
/*	
	Obtener el nombre y el stock de todos aquellos
	productos cuyo stock sea igual o superior a la
	media de todos los stocks no suspendidos
*/

SELECT	NombreProducto, UnidadesEnExistencia, Suspendido
FROM	Productos
WHERE	UnidadesEnExistencia >= (SELECT	avg(UnidadesEnExistencia) 
						 FROM	Productos
						 WHERE	Suspendido > 0)
						 
/*
	solo ilustrativo
*/

SELECT	NombreProducto
FROM	Productos
WHERE	IdProducto in (SELECT	IdProducto
						FROM	Productos
						WHERE	IdCategora = 1)
						
						
/*
	Obtener el nombre de todos aquellos Productos
	que se hayan facturado durante el ano 1996
*/

SELECT	NombreProducto
FROM	Productos 
WHERE	IdProducto in (SELECT	DISTINCT d.IdProducto
					   FROM		Pedidos as p
					   JOIN		Detallesdepedidos as d on(p.IdPedido = d.IdPedido)
					   WHERE 	p.FechaPedido >= '01-01-1996'	AND
								p.FechaPedido <= '31-12-1996')
		