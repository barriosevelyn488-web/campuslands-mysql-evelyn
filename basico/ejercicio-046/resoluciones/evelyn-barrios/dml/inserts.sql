-- Datos de practica para restaurante de comida urbana.
USE campuslands_mysql;

INSERT INTO basico_ejercicio_046 (nombre, categoria, precio, estado, ingredientes, calorias) VALUES
('Hamburguesa Triple Queso', 'Hamburguesas', 12.50, 'disponible', 'Carne de res, queso cheddar, tocino, salsa especial', 850),
('Tacos de Birria (Orden de 3)', 'Tacos', 9.00, 'disponible', 'Carne de res de lenta coccion, queso fundido, cilantro, cebolla, consomé', 650),
('Papas Fritas Trufadas', 'Entradas', 6.50, 'disponible', 'Papas fritas, aceite de trufa, queso parmesano, perejil', 450),
('Alitas Hot BBQ (12 pzs)', 'Entradas', 11.00, 'disponible', 'Alitas de pollo, salsa BBQ picante, aderezo ranch', 900),
('Hot Dog Chicago Style', 'Hot Dogs', 7.50, 'disponible', 'Salchicha de res, pepinillos, mostaza, tomate, cebolla, jalapeño', 500),
('Milkshake de Oreo', 'Postres', 5.00, 'disponible', 'Helado de vainilla, galletas Oreo, crema batida, chocolate', 600),
('Limonada de Coco', 'Bebidas', 4.00, 'disponible', 'Limon, leche de coco, hielo, jarabe de azucar', 250),
('Pulled Pork Sandwich', 'Sandwiches', 10.50, 'temporal', 'Cerdo deshebrado, salsa BBQ, ensalada coleslaw, pan brioche', 700),
('Club Sandwich Urbano', 'Sandwiches', 9.50, 'disponible', 'Pollo, jamon, tocino, lechuga, tomate, mayonesa, huevo frito', 680),
('Cerveza Artesanal IPA', 'Bebidas', 6.00, 'no_disponible', 'Malta, lupulo, agua, levadura', 180);
