/*
	Devolver el codigo de categoria y la media del precio
	de sus productos, pero solo en aquellos casos en que
	dicha media sea superior a 20, se ignoraran los productos 
	descartados	
*/

SELECT	IdCategora, avg(PrecioUnidad) as Media
FROM	Productos
WHERE	Suspendido > 0
GROUP by IdCategora
HAVING avg(PrecioUnidad) > 20    