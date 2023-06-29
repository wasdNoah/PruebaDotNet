-- Escriba la consulta en SQL que devuelva el nombre del proyecto y sus productos correspondientes del proyecto Premia cuyo código es 1
SELECT p.nombre AS nombre_proyecto, pr.nombre AS nombre_producto
FROM proyecto AS p
INNER JOIN producto_proyecto AS pp
   ON p.id = pp.proyecto_id
INNER JOIN producto pr
   ON pp.producto_id = pr.id
WHERE p.id = 1;

-- Escriba una consulta SQL que devuelva los distintos mensajes que hay, indicando a qué proyecto y producto pertenecen.
SELECT msg.contenido AS mensaje, proy.nombre AS nombre_proyecto, prod.nombre AS nombre_producto
FROM mensaje AS msg
INNER JOIN producto_proyecto AS pp
   ON msg.producto_proyecto_id = pp.producto_proyecto_id
INNER JOIN proyecto AS p
   ON pp.proyecto_id = p.id
INNER JOIN producto AS pr
   ON pp.producto_id = pr.id;

-- Escriba una consulta SQL que devuelva los distintos mensajes que hay, indicando a qué 
-- proyecto y producto pertenecen. Pero si el mensaje está en todos los productos de un 
-- proyecto, en lugar de mostrar cada producto, debe mostrar el nombre del proyecto y un 
-- solo producto que diga “TODOS”.