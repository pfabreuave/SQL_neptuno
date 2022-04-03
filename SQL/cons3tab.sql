--
---  consulta sobre tres tablas
---		Clientes, Pedidos, Detallesdepedidos 
--
select c.NombreCompaa as Empresa, c.NombreContacto as Contacto, p.IdPedido as Pedido,
	   substr(p.FechaPedido, 1, 10) as "fecha pedido", sum(d.cantidad * d.PrecioUnidad) as total
from Clientes as c
	join Pedidos as p on (c.IdCliente = p.IdCliente)
	join Detallesdepedidos as d on (d.IdPedido = p.IdPedido)
group by c.NombreCompaa, c.NombreContacto, p.IdPedido,
		 p.FechaPedido
order by p.IdPedido;