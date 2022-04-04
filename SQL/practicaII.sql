/*
	Obtener el Nombre del producto, el nombre de su categoria y
	el precio, de aquellos productos cuyo precio sea superior a
	la media del precio de los productos de su categoria,
	ordenados por precio de mayor a menor.
*/

SELECT	p.NombreProducto, c.NombreCategora, p.PrecioUnidad
FROM	Productos as p
JOIN	Categoras as c on(p.IdCategora = c.IdCategora)
WHERE	p.PrecioUnidad > (SELECT	avg(p1.PrecioUnidad)
						  FROM		Productos as p1
						  WHERE	p1.IdCategora = p.IdCategora)
ORDER by p.PrecioUnidad DESC