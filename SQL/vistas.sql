/*
	utilidad de una VIEW
	
*/
--consulta modelo:
SELECT IdPedido, sum(Cantidad * PrecioUnidad) as total
FROM	Detallesdepedidos
GROUP by IdPedido

--para convertir la consulta en VIEW

CREATE VIEW vTotales
as
SELECT IdPedido, sum(Cantidad * PrecioUnidad) as total
FROM	Detallesdepedidos
GROUP by IdPedido

-- consultando la VIEW

SELECT	* from vTotales

-- utiliza la tabla en consultas mayores

SELECT	p.IdPedido, c.NombreCompaa as Cliente,
		p.FechaPedido, v.Total 
FROM	Pedidos as p
JOIN	Clientes as c on(p.IdCliente = c.IdCliente)
JOIN	vTotales as v on(p.IdPedido = v.IdPedido)

