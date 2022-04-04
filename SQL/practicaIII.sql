/*
	Obtener el nombre del cliente que mas ha facturado
	y el total de su facturacion
*/

SELECT	c.NombreCompaa, sum(d.PrecioUnidad * d.Cantidad) as total
FROM	Clientes as c
JOIN	Pedidos as p on(c.IdCliente = p.IdCliente)
JOIN	Detallesdepedidos as d on(p.IdPedido = d.IdPedido)
GROUP by c.NombreCompaa
ORDER by sum(d.PrecioUnidad * d.Cantidad) DESC
limit 5
