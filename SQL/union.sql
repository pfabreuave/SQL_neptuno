/*
	obtener el nombre de la persona de contacto
	de todos los clientes y los proveedores 
	
	las dos consultas deben tener el mismo numeros
	de campos y el mismo tipo de campo
	
	si hay registros que coincidan solo 
	imprimira uno, si deseas que los imprima
	todos, debes agregas la clausula ALL (UNION ALL)
		
*/

SELECT	NombreContacto from Clientes
UNION
SELECT	NombreContacto from Proveedores