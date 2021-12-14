/* Populate tabla clientes */

INSERT INTO ciudades (id, ciudad) VALUES (1, 'Bucaramanga');
INSERT INTO ciudades (id, ciudad) VALUES (2, 'Cali');
INSERT INTO ciudades (id, ciudad) VALUES (3, 'Pereira');
INSERT INTO ciudades (id, ciudad) VALUES (4, 'Manizales');
INSERT INTO ciudades (id, ciudad) VALUES (5, 'Bogota');
INSERT INTO ciudades (id, ciudad) VALUES (6, 'Medellin');
INSERT INTO ciudades (id, ciudad) VALUES (7, 'Boyaca');
INSERT INTO ciudades (id, ciudad) VALUES (8, 'Barranquilla');

INSERT INTO clientes (ciudad_id, identificacion, nombre, apellido, email, celular, create_at) VALUES(1, '1025698741', 'Andrés', 'Sanchez', 'proansan@bolsadeideas.com', '3154478963', '2018-01-01');
INSERT INTO clientes (ciudad_id, identificacion, nombre, apellido, email, celular, create_at) VALUES(3, '53896745', 'John', 'Gamma', 'john.gamma@gmail.com', '3148527415', '2018-01-03');
INSERT INTO clientes (ciudad_id, identificacion, nombre, apellido, email, celular, create_at) VALUES(5, '55897145', 'Linus', 'Doe', 'linus.torvalds@gmail.com', '3114789652', '2018-01-04');
INSERT INTO clientes (ciudad_id, identificacion, nombre, apellido, email, celular, create_at) VALUES(8, '25963258', 'Erich', 'Torvalds', 'erich.gamma@gmail.com', '3209876548', '2018-02-10');
INSERT INTO clientes (ciudad_id, identificacion, nombre, apellido, email, celular, create_at) VALUES(7, '1014142986', 'Rasmus', 'Guzmán', 'rasmusguzmanf@gmail.comm', '3162224578', '2018-02-18');
INSERT INTO clientes (ciudad_id, identificacion, nombre, apellido, email, celular, create_at) VALUES(8, '45981753', 'Richard', 'Lerdorf', 'richardlerdorf@gmail.com', '3221213654', '2018-05-15');
INSERT INTO clientes (ciudad_id, identificacion, nombre, apellido, email, celular, create_at) VALUES(2, '47247913', 'John', 'Helm', 'john.vlissides@gmail.com', '3179974552', '2018-04-30');
INSERT INTO clientes (ciudad_id, identificacion, nombre, apellido, email, celular, create_at) VALUES(6, '96467913', 'Magma', 'Gosling', 'magma.lee@gmail.com', '3002555478', '2018-12-07');
INSERT INTO clientes (ciudad_id, identificacion, nombre, apellido, email, celular, create_at) VALUES(4, '1035693558', 'Tornado', 'Lee', 'tornado.roe@gmail.com', '3018885658', '2018-10-08');
INSERT INTO clientes (ciudad_id, identificacion, nombre, apellido, email, celular, create_at) VALUES(4, '48665775', 'Jade', 'Roe', 'jane.doe@gmail.com', '3024116681', '2018-04-05');

INSERT INTO usuarios (username, password, enabled, nombre, apellido, email) VALUES ('andres','$2a$10$pLQvxwsrJWNMmPxyaFVPGujMkcS7shC0SJqoLXVzFVFSveid3eiKy',true, 'Andres', 'Sanchez','proansan@bolsadeideas.com');
INSERT INTO usuarios (username, password, enabled, nombre, apellido, email) VALUES ('admin','$2a$10$xL1HiyRWfJrPZ.86dhjxO.OR7GerM/0Bh9BssLqvuxbTZZOkryjQ2',true, 'John', 'Gamma','john.gamma@gmail.com');

INSERT INTO roles (nombre) VALUES ('ROLE_USER');
INSERT INTO roles (nombre) VALUES ('ROLE_ADMIN');

INSERT INTO usuarios_roles (usuario_id, role_id) VALUES (1, 1);
INSERT INTO usuarios_roles (usuario_id, role_id) VALUES (2, 2);
INSERT INTO usuarios_roles (usuario_id, role_id) VALUES (2, 1);

/* Populate tabla productos */
INSERT INTO productos (nombre, precio, create_at) VALUES('Sobrero Safari Malla', 39900, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Gorra Camionera Malla CAT', 15990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Sombrero Pescador Argollas', 24890, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Sombrero Pescador Estampado Flores', 29890, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Gorra Publicidad Estampada', 25790, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Visera Deportiva New Balance', 47690, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES('Gorra Publicidad Negra', 17890, NOW());

/* Creamos algunas facturas */
INSERT INTO pedidos (descripcion, observacion, cliente_id, create_at) VALUES('para el fin de semana', null, 1, NOW());

INSERT INTO pedidos_items (cantidad, pedidos_id, producto_id) VALUES(1, 1, 1);
INSERT INTO pedidos_items (cantidad, pedidos_id, producto_id) VALUES(2, 1, 4);
INSERT INTO pedidos_items (cantidad, pedidos_id, producto_id) VALUES(1, 1, 5);
INSERT INTO pedidos_items (cantidad, pedidos_id, producto_id) VALUES(1, 1, 7);

INSERT INTO pedidos (descripcion, observacion, cliente_id, create_at) VALUES('Regalo de Navidad', 'Alguna nota importante!', 1, NOW());
INSERT INTO pedidos_items (cantidad, pedidos_id, producto_id) VALUES(3, 2, 6);


