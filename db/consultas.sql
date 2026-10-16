
/*1. ¿Qué productos hay y a qué categoría pertenece cada uno, ordenados por nombre?*/
SELECT p.id, p.nombre AS producto, c.nombre AS categoria, p.precio
FROM productos p
JOIN categorias c ON p.categoria_id = c.id
ORDER BY p.nombre;

/*2. ¿Qué productos tienen menos de 5 unidades en stock?*/
SELECT id, nombre, stock
FROM productos
WHERE stock < 5;

/*3. ¿Cuál es el precio promedio de los productos de cada categoría?*/
SELECT c.nombre AS categoria, ROUND(AVG(p.precio), 2) AS precio_promedio
FROM categorias c
JOIN productos p ON p.categoria_id = c.id
GROUP BY c.id, c.nombre;

/*4. ¿Cuáles son los pedidos del cliente con id 1, con su fecha y estado?*/
SELECT cl.nombre AS cliente, pe.id AS pedido, pe.fecha, pe.estado
FROM pedidos pe
JOIN clientes cl ON pe.cliente_id = cl.id
WHERE cl.id = 1;

/*5. ¿Cuál es el total en dinero de cada pedido?*/
SELECT pedido_id, SUM(cantidad * precio_unitario) AS total
FROM detalle_pedido
GROUP BY pedido_id;

/*6. ¿Qué clientes han hecho más de 2 pedidos?*/
SELECT cl.id, cl.nombre, COUNT(pe.id) AS total_pedidos
FROM clientes cl
JOIN pedidos pe ON pe.cliente_id = cl.id
GROUP BY cl.id, cl.nombre
HAVING COUNT(pe.id) > 2;

/*7. Eliminar un cliente que no tiene pedidos (el cliente con id 6)*/
DELETE FROM clientes
WHERE id = 6
  AND id NOT IN (SELECT cliente_id FROM pedidos);