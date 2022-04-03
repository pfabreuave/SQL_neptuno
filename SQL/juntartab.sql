/*
		Modelo 1
*/

SELECT	NombreCompaa, IdPedido
FROM	Clientes, Pedidos
WHERE	Pedidos.IdCliente = Clientes.IdCliente

/*
		Modelo 2
	Obtener el nombre de cada producto, su presio, su stock,
	el nombre de la categoria a la que pertenece, excluyendo
	los suspendidos	
*/

SELECT	NombreProducto, PrecioUnidad, UnidadesEnExistencia,
		NombreCategora
FROM	Productos, Categoras
WHERE	Categoras.IdCategora = Productos.IdCategora AND
		Suspendido > 0


/*
		Modelo 2
	Obtener el nombre de cada producto, su presio, su stock,
	el nombre de la categoria a la que pertenece, y el nombre
	de proveedor que nos sirve dicho producto
*/

SELECT	p.NombreProducto, p.PrecioUnidad, p.UnidadesEnExistencia,
		c.NombreCategora, pr.NombreCompaa
FROM	Productos as p, Categoras as c, Proveedores as pr
WHERE	c.IdCategora = p.IdCategora AND
		p.IdProveedor = pr.IdProveedor

/*
		Modelo 2
	Obtener el codigo de pedido, el nombre del cliente y el
	nombre y apellido del empleado, pero solo de aquellos
	pedidos que se realizaron durante el ano 1996
	
*/

SELECT 	p.IdPedido, c.NombreCompaa, 
		e.Nombre || ' ' || e.Apellidos as Empleado
FROM	Pedidos as p, Clientes as c, Empleados as e
WHERE	p.IdCliente = c.IdCliente     AND
		p.IdEmpleado = e.IdEmpleado   AND
		p.FechaPedido >= '01-01-1996' AND
		p.FechaPedido <= '31-12-1996'




