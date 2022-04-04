/*
	Obtener el numero de productos de cada categoria
	que nos sirve cada proveedor, ciscriminando los
	suspendidos y ordenarlo por  proveedor 
*/
SELECT	pr.NombreCompaa as Proveedor,
		c.NombreCategora as Categoria,
		count(p.IdProducto) as "Num Productos"
FROM	Productos as p
JOIN	Categoras as c on (p.IdCategora = c.IdCategora)
JOIN	Proveedores as pr on (p.IdProveedor = pr.IdProveedor)
WHERE	Suspendido > 0
GROUP by pr.NombreCompaa, c.NombreCategora
ORDER by pr.NombreCompaa DESC, c.NombreCategora DESC