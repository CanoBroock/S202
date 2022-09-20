select nombre from producto
select nombre, precio from producto
select * from producto
select nombre, precio, (precio * 0.99) as precio_dolares from producto
select nombre as nombre_producto, precio as euros, (precio*0.99) as dolares from producto
select upper(nombre), precio from producto
select lower(nombre), precio from producto
select nombre, upper(substr(nombre 1,2)) as mayusculas2 from fabricante
select nombre, cast(precio as signed) as precio from producto
select nombre, truncate(precio, 0) as precio from producto
select codigo_fabricante from producto
select distinct codigo_fabricante from producto 
select nombre from fabricante order by nombre asc
select nombre from fabricante order by nombre desc
select nombre from producto order by nombre desc
selct * from fabricante limit 0, 5
select * from fabricante limit 3, 2
select nombre, precio from producto order by precio asc limit 1
select nombre, precio from producto order by precio desc limit 1
select nombre from producto where codigo_fabricante = 2
select producto.nombre, producto.precio, fabricante.nombre from producto join fabricante on producto.codigo_fabricante = fabricante.codigo
select producto.nombre, producto.precio, fabricante.nombre from producto join fabricante on producto.codigo_fabricante = fabricante.codigo order by fabricante.nombre 
select producto.codigo, producto.nombre, producto.codigo_fabricante, fabricante.nombre from producto join fabricante on producto.codigo_fabricante = fabricante.codigo
select producto.nombre, producto.precio, fabricante.nombre from producto join fabricante on producto.codigo_fabricante = fabricante.codigo order by precio asc limit 1
select producto.nombre, producto.precio, fabricnate.nombre from producto join fabricante on producto.codigo_fabricante = fabricante.codigo order by precio desc limit 1
select producto.nombre, fabricante.nombre from producto join fabricante on producto.codigo_fabricante = fabricante.codigo where fabricante.nombre in ("Lenovo")
select producto.nombre, fabricante.nombre from producto join fabricante on producto.codigo_fabricante = fabricante.codigo where fabricante.nombre in ("Crucial") and producto.precio > 200
select producto.nombre, fabricante.nombre from producto join fabricante on producto.codigo_fabricante = fabricante.codigo where fabricante.nombre in ("Asus", "Hewlett-Packard", "Seagate")