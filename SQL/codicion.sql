SELECT NombreProducto, IdCategora, IdProveedor, CantidadPorUnidad
FROM   Productos
WHERE CantidadPorUnidad = "12 - paq. 1 kg"
WHERE CantidadPorUnidad like "%12 -%"
WHERE Regin is NULL
WHERE Regin is NOT NULL
WHERE Regin in ('BC','SP','RJ')
WHERE Regin NOT in ('BC','SP','RJ')