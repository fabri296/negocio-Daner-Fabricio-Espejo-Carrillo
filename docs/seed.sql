INSERT INTO categorias (id, nombre) VALUES
(1, 'Cartas coleccionables'),
(2, 'Peluches'),
(3, 'Accesorios');
 
INSERT INTO productos (id, nombre, categoria_id, precio, stock) VALUES
(1,  'Sobre de cartas Pokémon',     1,   4.50, 120),
(2,  'Mazo de batalla Charizard',   1,  18.90,  25),
(3,  'Carta holográfica Pikachu',   1,  35.00,   4),
(4,  'Caja de entrenador élite',    1,  49.99,   3),
(5,  'Peluche Pikachu 25 cm',       2,  22.50,  18),
(6,  'Peluche Charmander',          2,  19.90,  12),
(7,  'Peluche Snorlax grande',      2,  39.90,   2),
(8,  'Peluche Eevee',               2,  21.00,  15),
(9,  'Poké Ball de colección',      3,  12.00,  40),
(10, 'Mochila Pokémon',             3,  29.90,   9),
(11, 'Álbum para cartas',           3,  14.50,  30),
(12, 'Taza Pikachu',                3,   9.90,   4);
 

INSERT INTO clientes (id, nombre, telefono, email) VALUES
(1, 'Carlos Mendoza',    '71234567', 'carlos.mendoza@email.com'),
(2, 'Lucía Fernández',   '72345678', 'lucia.fernandez@email.com'),
(3, 'Andrés Rojas',      '73456789', 'andres.rojas@email.com'),
(4, 'María Quispe',      '74567890', 'maria.quispe@email.com'),
(5, 'Javier Torres',     '75678901', 'javier.torres@email.com'),
(6, 'Valeria Gutiérrez', '76789012', 'valeria.gutierrez@email.com');
 

INSERT INTO pedidos (id, cliente_id, fecha, estado) VALUES
(1,  1, '2026-08-03', 'entregado'),
(2,  2, '2026-08-05', 'entregado'),
(3,  1, '2026-08-12', 'entregado'),
(4,  3, '2026-08-15', 'enviado'),
(5,  2, '2026-08-20', 'entregado'),
(6,  4, '2026-09-02', 'enviado'),
(7,  1, '2026-09-10', 'pendiente'),
(8,  2, '2026-09-18', 'pendiente'),
(9,  5, '2026-09-25', 'cancelado'),
(10, 3, '2026-10-05', 'pendiente');
 

INSERT INTO detalle_pedido (id, pedido_id, producto_id, cantidad, precio_unitario) VALUES
(1,  1,  1, 10,  4.50),
(2,  1,  9,  1, 12.00),
(3,  1, 11,  1, 14.50),
(4,  2,  5,  1, 22.50),
(5,  2,  6,  1, 19.90),
(6,  2, 12,  2,  9.90),
(7,  3,  2,  1, 18.90),
(8,  3,  3,  1, 35.00),
(9,  3,  1,  5,  4.50),
(10, 4,  7,  1, 39.90),
(11, 4,  8,  2, 21.00),
(12, 4, 10,  1, 29.90),
(13, 5,  4,  1, 49.99),
(14, 5,  9,  2, 12.00),
(15, 5,  5,  1, 22.50),
(16, 6,  1, 20,  4.50),
(17, 6, 11,  2, 14.50),
(18, 7,  6,  2, 19.90),
(19, 7, 10,  1, 29.90),
(20, 8,  3,  1, 35.00),
(21, 8,  2,  2, 18.90),
(22, 9,  8,  1, 21.00),
(23, 9, 12,  3,  9.90),
(24, 10, 9,  3, 12.00),
(25, 10, 4,  1, 49.99);