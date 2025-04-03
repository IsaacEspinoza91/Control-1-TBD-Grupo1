-- Insertar comunas
INSERT INTO Comuna (nombre) VALUES
('Santiago Centro'),
('Providencia'),
('Las Condes'),
('Estacion Central'),
('La Reina'),
('Huechuraba'),
('San Bernardo'),
('La Florida'),
('Puente Alto'),
('Quilicura'),
('Vitacura'),
('Lo Barnechea'),
('Cerrillos'),
('Independencia'),
('Recoleta');

-- Insertar tiendas
INSERT INTO Tienda (nombre, lugar, id_comuna) VALUES
('Tienda Norte', 'Mall Plaza Norte', 6),
('Tienda Sur', 'Mall Plaza Sur', 7),
('Tienda Estacion Central', 'Mall Plaza Alameda', 4),
('Tienda Oeste', 'Mall Plaza Oeste', 13);

-- Insertar empleados para Tienda Norte (10 empleados, 6 vendedores)
INSERT INTO Empleado (rut, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, cargo, id_comuna, sueldo_liquido, sueldo_bruto) VALUES
('12345678-9', 'Juan', 'Carlos', 'Gómez', 'Pérez', 'Vendedor', 6, 450000, 550000),
('23456789-0', 'María', 'José', 'López', 'García', 'Vendedor', 6, 450000, 550000),
('34567890-1', 'Pedro', 'Alberto', 'Martínez', 'Soto', 'Vendedor', 6, 450000, 550000),
('45678901-2', 'Ana', 'María', 'Rodríguez', 'Fernández', 'Vendedor', 6, 450000, 550000),
('56789012-3', 'Carlos', 'Andrés', 'Silva', 'Vargas', 'Vendedor', 6, 450000, 550000),
('67890123-4', 'Laura', 'Isabel', 'Torres', 'Mendoza', 'Vendedor', 6, 450000, 550000),
('78901234-5', 'Ricardo', NULL, 'Navarro', 'Castro', 'Jefe de Tienda', 6, 800000, 1000000),
('89012345-6', 'Patricia', 'Elena', 'Ríos', 'Paredes', 'Administrativo', 6, 600000, 750000),
('90123456-7', 'Fernando', 'Alonso', 'Cortés', 'Miranda', 'Bodeguero', 6, 500000, 650000),
('01234567-8', 'Camila', 'Antonia', 'Vega', 'Santander', 'Cajero', 6, 480000, 600000);

-- Asociar empleados a Tienda Norte
INSERT INTO Tienda_Emp (id_tienda, id_empleado, fecha_contrato) VALUES
(1, 1, '2020-01-15'),
(1, 2, '2020-03-20'),
(1, 3, '2020-05-10'),
(1, 4, '2020-07-22'),
(1, 5, '2020-09-05'),
(1, 6, '2020-11-18'),
(1, 7, '2019-08-12'),
(1, 8, '2020-02-28'),
(1, 9, '2020-04-15'),
(1, 10, '2020-06-30');

-- Insertar vendedores para Tienda Norte (6 vendedores)
INSERT INTO Vendedor (id_empleado) VALUES
(1), (2), (3), (4), (5), (6);

-- Insertar empleados para Tienda Sur (10 empleados, 6 vendedores)
INSERT INTO Empleado (rut, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, cargo, id_comuna, sueldo_liquido, sueldo_bruto) VALUES
('11223344-5', 'Marta', 'Lucía', 'Contreras', 'Araya', 'Vendedor', 7, 450000, 550000),
('22334455-6', 'Roberto', 'Javier', 'Aravena', 'Bustos', 'Vendedor', 7, 450000, 550000),
('33445566-7', 'Claudia', 'Andrea', 'Bustamante', 'Donoso', 'Vendedor', 7, 450000, 550000),
('44556677-8', 'Francisco', 'Ignacio', 'Cáceres', 'Espinoza', 'Vendedor', 7, 450000, 550000),
('55667788-9', 'Valentina', 'Paz', 'Díaz', 'Fuentes', 'Vendedor', 7, 450000, 550000),
('66778899-0', 'Hugo', 'Alfredo', 'Escobar', 'Gutiérrez', 'Vendedor', 7, 450000, 550000),
('77889900-1', 'Natalia', 'Carolina', 'Figueroa', 'Henríquez', 'Jefe de Tienda', 7, 800000, 1000000),
('88990011-2', 'Oscar', 'Manuel', 'Gaete', 'Ibarra', 'Administrativo', 7, 600000, 750000),
('99001122-3', 'Paulina', 'Alejandra', 'Herrera', 'Jara', 'Bodeguero', 7, 500000, 650000),
('00112233-4', 'Raúl', 'Esteban', 'Ibáñez', 'Klein', 'Cajero', 7, 480000, 600000);

-- Asociar empleados a Tienda Sur
INSERT INTO Tienda_Emp (id_tienda, id_empleado, fecha_contrato) VALUES
(2, 11, '2019-10-05'),
(2, 12, '2020-01-20'),
(2, 13, '2020-03-15'),
(2, 14, '2020-05-22'),
(2, 15, '2020-07-08'),
(2, 16, '2020-09-30'),
(2, 17, '2018-12-10'),
(2, 18, '2020-02-18'),
(2, 19, '2020-04-25'),
(2, 20, '2020-08-12');

-- Insertar vendedores para Tienda Sur (6 vendedores)
INSERT INTO Vendedor (id_empleado) VALUES
(11), (12), (13), (14), (15), (16);

-- Insertar empleados para Tienda Este (10 empleados, 6 vendedores)
INSERT INTO Empleado (rut, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, cargo, id_comuna, sueldo_liquido, sueldo_bruto) VALUES
('99887766-5', 'Sofía', 'Gabriela', 'Lagos', 'Molina', 'Vendedor', 4, 450000, 550000),
('88776655-4', 'Tomás', 'Enrique', 'Méndez', 'Núñez', 'Vendedor', 4, 450000, 550000),
('77665544-3', 'Daniela', 'Fernanda', 'Orellana', 'Pizarro', 'Vendedor', 4, 450000, 550000),
('66554433-2', 'Gustavo', 'Adolfo', 'Quiroz', 'Reyes', 'Vendedor', 4, 450000, 550000),
('55443322-1', 'Elena', 'Victoria', 'Ramírez', 'Salazar', 'Vendedor', 4, 450000, 550000),
('44332211-0', 'Felipe', 'Ignacio', 'Sánchez', 'Tapia', 'Vendedor', 4, 450000, 550000),
('33221100-9', 'Andrea', 'Beatriz', 'Urrutia', 'Valdés', 'Jefe de Tienda', 4, 800000, 1000000),
('22110099-8', 'Jorge', 'Luis', 'Vargas', 'Zúñiga', 'Administrativo', 4, 600000, 750000),
('11009988-7', 'Carolina', 'Paz', 'Yáñez', 'Aguilera', 'Bodeguero', 4, 500000, 650000),
('00998877-6', 'Diego', 'Alberto', 'Zamora', 'Barrera', 'Cajero', 4, 480000, 600000);

-- Asociar empleados a Tienda Este
INSERT INTO Tienda_Emp (id_tienda, id_empleado, fecha_contrato) VALUES
(3, 21, '2019-11-15'),
(3, 22, '2020-02-10'),
(3, 23, '2020-04-05'),
(3, 24, '2020-06-20'),
(3, 25, '2020-08-12'),
(3, 26, '2020-10-25'),
(3, 27, '2018-09-18'),
(3, 28, '2020-01-30'),
(3, 29, '2020-03-22'),
(3, 30, '2020-07-08');

-- Insertar vendedores para Tienda Este (6 vendedores)
INSERT INTO Vendedor (id_empleado) VALUES
(21), (22), (23), (24), (25), (26);

-- Insertar empleados para Tienda Oeste (10 empleados, 6 vendedores)
INSERT INTO Empleado (rut, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, cargo, id_comuna, sueldo_liquido, sueldo_bruto) VALUES
('13579246-8', 'Lorena', 'Margarita', 'Araneda', 'Bustos', 'Vendedor', 13, 450000, 550000),
('24681357-9', 'Mauricio', 'Alejandro', 'Barrientos', 'Carvajal', 'Vendedor', 13, 450000, 550000),
('35792468-0', 'Ximena', 'Soledad', 'Carrasco', 'Durán', 'Vendedor', 13, 450000, 550000),
('46813579-1', 'Pablo', 'Andrés', 'Delgado', 'Espinoza', 'Vendedor', 13, 450000, 550000),
('57924680-2', 'Verónica', 'Elizabeth', 'Farías', 'González', 'Vendedor', 13, 450000, 550000),
('68035791-3', 'Sebastián', 'Alonso', 'Guzmán', 'Herrera', 'Vendedor', 13, 450000, 550000),
('79146802-4', 'Macarena', 'Antonieta', 'Hernández', 'Inostroza', 'Jefe de Tienda', 13, 800000, 1000000),
('80257913-5', 'Rodrigo', 'Felipe', 'Irarrázaval', 'Jara', 'Administrativo', 13, 600000, 750000),
('91368024-6', 'Constanza', 'Ignacia', 'Jiménez', 'Kramer', 'Bodeguero', 13, 500000, 650000),
('02479135-7', 'Federico', 'Joaquín', 'Klein', 'Lagos', 'Cajero', 13, 480000, 600000);

-- Asociar empleados a Tienda Oeste
INSERT INTO Tienda_Emp (id_tienda, id_empleado, fecha_contrato) VALUES
(4, 31, '2019-12-10'),
(4, 32, '2020-03-05'),
(4, 33, '2020-05-18'),
(4, 34, '2020-07-22'),
(4, 35, '2020-09-15'),
(4, 36, '2020-11-28'),
(4, 37, '2018-10-20'),
(4, 38, '2020-02-14'),
(4, 39, '2020-04-08'),
(4, 40, '2020-08-25');

-- Insertar vendedores para Tienda Oeste (6 vendedores)
INSERT INTO Vendedor (id_empleado) VALUES
(31), (32), (33), (34), (35), (36);

-- Insertar productos
INSERT INTO Producto (nombre, descripcion, precio) VALUES
('Televisor 55" 4K', 'Televisor LED 55 pulgadas con resolución 4K', 499990),
('Laptop Gamer', 'Laptop con procesador i7 y tarjeta gráfica RTX 3060', 1299990),
('Smartphone Android', 'Teléfono inteligente con 128GB de almacenamiento', 349990),
('Refrigerador Side by Side', 'Refrigerador de 600L con dispensador de agua y hielo', 899990),
('Lavadora 18Kg', 'Lavadora carga frontal con capacidad de 18 kilogramos', 599990),
('Microondas 30L', 'Horno microondas con grill y 30 litros de capacidad', 149990),
('Aspiradora Robot', 'Aspiradora inteligente con navegación por láser', 399990),
('Audífonos Inalámbricos', 'Audífonos Bluetooth con cancelación de ruido', 199990),
('Tablet 10"', 'Tablet con pantalla Full HD y 64GB de almacenamiento', 249990),
('Cafetera Automática', 'Cafetera con molinillo integrado y pantalla táctil', 179990),
('Consola de Videojuegos', 'Consola de última generación con 1TB de almacenamiento', 499990),
('Barra de Sonido', 'Barra de sonido 5.1 con subwoofer inalámbrico', 299990),
('Monitor 27"', 'Monitor gaming 144Hz con resolución QHD', 349990),
('Impresora Multifuncional', 'Impresora láser con escáner y copiadora', 199990),
('Router WiFi 6', 'Router de última generación con tecnología WiFi 6', 149990),
('Bolsa de plástico','Bolsa simple para guardar elementos', 300),
('Cargador Iphone Tipo C','Cargador para Iphones compatibles, Iphone 15 en adelante', 19000),
('Piedra', 'Piedra encontrada en la calle', 1000);

-- Asociar productos a tiendas con stock
-- Tienda Norte
INSERT INTO Tienda_Prod (id_tienda, id_producto, stock) VALUES
(1, 1, 15), (1, 2, 8), (1, 3, 20), (1, 4, 5), (1, 5, 7),
(1, 6, 12), (1, 7, 6), (1, 8, 18), (1, 9, 10), (1, 10, 9),
(1, 11, 4), (1, 12, 7), (1, 13, 6), (1, 14, 11), (1, 15, 8), (1, 16, 20);

-- Tienda Sur
INSERT INTO Tienda_Prod (id_tienda, id_producto, stock) VALUES
(2, 1, 12), (2, 2, 6), (2, 3, 18), (2, 4, 4), (2, 5, 5),
(2, 6, 10), (2, 7, 5), (2, 8, 15), (2, 9, 8), (2, 10, 7),
(2, 11, 3), (2, 12, 6), (2, 13, 5), (2, 14, 9), (2, 15, 7), (2, 17, 14);

-- Tienda Estacion
INSERT INTO Tienda_Prod (id_tienda, id_producto, stock) VALUES
(3, 1, 14), (3, 2, 7), (3, 3, 22), (3, 4, 6), (3, 5, 8),
(3, 6, 15), (3, 7, 7), (3, 8, 20), (3, 9, 12), (3, 10, 10),
(3, 11, 5), (3, 12, 8), (3, 13, 7), (3, 14, 12), (3, 15, 9), (3, 17, 30);

-- Tienda Oeste
INSERT INTO Tienda_Prod (id_tienda, id_producto, stock) VALUES
(4, 1, 10), (4, 2, 5), (4, 3, 15), (4, 4, 3), (4, 5, 4),
(4, 6, 8), (4, 7, 4), (4, 8, 12), (4, 9, 6), (4, 10, 5),
(4, 11, 2), (4, 12, 5), (4, 13, 4), (4, 14, 8), (4, 15, 6), (4, 18, 1);

-- Insertar ventas para Tienda Norte
INSERT INTO Venta (fecha, total, tipo_doc, id_tienda, id_vendedor, id_empleado) VALUES
('2023-01-05', 649980, 'Boleta', 1, 1, 1),
('2023-01-10', 1299990, 'Factura', 1, 2, 2),
('2023-01-15', 349990, 'Boleta', 1, 3, 3),
('2023-01-20', 899990, 'Factura', 1, 4, 4),
('2023-01-25', 599990, 'Boleta', 1, 5, 5),
('2023-02-01', 149990, 'Boleta', 1, 6, 6),
('2023-02-05', 399990, 'Factura', 1, 1, 1),
('2023-02-10', 199990, 'Boleta', 1, 2, 2),
('2023-02-15', 249990, 'Boleta', 1, 3, 3),
('2023-02-20', 179990, 'Factura', 1, 4, 4);

-- Detalle de ventas para Tienda Norte
INSERT INTO Prod_Venta (id_venta, id_producto, cantidad) VALUES
(1, 1, 1), (1, 8, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1);

-- Insertar ventas para Tienda Sur
INSERT INTO Venta (fecha, total, tipo_doc, id_tienda, id_vendedor, id_empleado) VALUES
('2023-01-06', 499990, 'Boleta', 2, 7, 11),
('2023-01-12', 1299990, 'Factura', 2, 8, 12),
('2023-01-18', 699980, 'Boleta', 2, 9, 13),
('2023-01-22', 899990, 'Factura', 2, 8, 12),
('2023-01-28', 599990, 'Boleta', 2, 11, 15),
('2023-02-02', 299990, 'Boleta', 2, 12, 16),
('2023-02-08', 399990, 'Factura', 2, 7, 11),
('2023-02-12', 199990, 'Boleta', 2, 8, 12),
('2023-02-18', 499990, 'Boleta', 2, 9, 13),
('2023-02-22', 179990, 'Factura', 2, 10, 14);

-- Detalle de ventas para Tienda Sur
INSERT INTO Prod_Venta (id_venta, id_producto, cantidad) VALUES
(11, 11, 1),
(12, 2, 1),
(13, 12, 1), (13, 8, 1),
(14, 4, 1),
(15, 5, 1),
(16, 12, 1),
(17, 7, 1),
(18, 8, 1),
(19, 11, 1),
(20, 10, 1);

-- Insertar ventas para Tienda Estacion
INSERT INTO Venta (fecha, total, tipo_doc, id_tienda, id_vendedor, id_empleado) VALUES
('2023-01-07', 849980, 'Boleta', 3, 13, 21),
('2023-01-11', 1299990, 'Factura', 3, 14, 22),
('2023-01-17', 349990, 'Boleta', 3, 15, 23),
('2023-01-21', 899990, 'Factura', 3, 16, 24),
('2023-01-27', 749980, 'Boleta', 3, 13, 21),
('2023-02-03', 149990, 'Boleta', 3, 18, 26),
('2023-02-07', 399990, 'Factura', 3, 13, 21),
('2023-02-11', 449980, 'Boleta', 3, 14, 22),
('2023-02-16', 249990, 'Boleta', 3, 15, 23),
('2023-02-21', 179990, 'Factura', 3, 15, 23);

-- Detalle de ventas para Tienda Estacion
INSERT INTO Prod_Venta (id_venta, id_producto, cantidad) VALUES
(21, 1, 1), (21, 8, 1),
(22, 2, 1),
(23, 3, 1),
(24, 4, 1),
(25, 5, 1), (25, 8, 1),
(26, 6, 1),
(27, 7, 1),
(28, 9, 1), (28, 8, 1),
(29, 9, 1),
(30, 10, 1);

-- Insertar ventas para Tienda Oeste
INSERT INTO Venta (fecha, total, tipo_doc, id_tienda, id_vendedor, id_empleado) VALUES
('2023-01-08', 499990, 'Boleta', 4, 19, 31),
('2023-01-13', 1799990, 'Factura', 4, 20, 32),
('2023-01-19', 349990, 'Boleta', 4, 21, 33),
('2023-01-23', 899990, 'Factura', 4, 22, 34),
('2023-01-29', 599990, 'Boleta', 4, 23, 35),
('2023-02-04', 149990, 'Boleta', 4, 24, 36),
('2023-02-09', 399990, 'Factura', 4, 19, 31),
('2023-02-13', 199990, 'Boleta', 4, 24, 36),
('2023-02-17', 249990, 'Boleta', 4, 24, 36),
('2023-02-23', 179990, 'Factura', 4, 22, 34);

-- Detalle de ventas para Tienda Oeste
INSERT INTO Prod_Venta (id_venta, id_producto, cantidad) VALUES
(31, 11, 1),
(32, 2, 1), (32, 11, 1),
(33, 3, 1),
(34, 4, 1),
(35, 5, 1),
(36, 6, 1),
(37, 7, 1),
(38, 8, 1),
(39, 9, 1),
(40, 10, 1);