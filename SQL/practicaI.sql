/*
		practica
		total de cada Pedido
*/

SELECT	IdPedido, sum(PrecioUnidad * Cantidad) as total
FROM	Detallesdepedidos
GROUP by IdPedido

/*
		Obtener, del pedido 10304, su id, el nombre del cliente,
		el nombre y apellidos del empleado, la fecha del pedido 
		y el importe total de dicho pedido 
	
*/

SELECT	p.IdPedido, c.NombreCompaa as Cliente,
		e.Apellidos || ' ' || e.Nombre as Empleado,
		p.FechaPedido, sum(d.Cantidad * d.PrecioUnidad) as Total
FROM	Pedidos as p
LEFT 	JOIN Clientes as c on(p.IdCliente = c.IdCliente)
LEFT	JOIN Empleados as e on(p.IdEmpleado = e.IdEmpleado)
		JOIN Detallesdepedidos as d on(p.IdPedido = d.IdPedido)
WHERE	p.IdPedido = 10304
GROUP by p.IdPedido, c.NombreCompaa,
		 e.Apellidos || ' ' || e.Nombre,
		 p.FechaPedido
