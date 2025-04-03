
-- Creacion de tablas
-- Tabla Comuna
CREATE TABLE Comuna (
    id_comuna SERIAL,
    nombre VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_comuna)
);


-- Tabla Tienda
CREATE TABLE Tienda (
    id_tienda SERIAL,
    nombre VARCHAR(100) NOT NULL,
    lugar VARCHAR(100),
    id_comuna INT NOT NULL,
    PRIMARY KEY (id_tienda),
    FOREIGN KEY (id_comuna) REFERENCES Comuna(id_comuna)
);


-- Tabla Empleado
CREATE TABLE Empleado (
    id_empleado SERIAL,
    rut VARCHAR(12) UNIQUE NOT NULL,
    primer_nombre VARCHAR(50) NOT NULL,
    segundo_nombre VARCHAR(50),
    primer_apellido VARCHAR(50) NOT NULL,
    segundo_apellido VARCHAR(50),
    cargo VARCHAR(50) NOT NULL,
    id_comuna INT NOT NULL,
    sueldo_liquido INT NOT NULL,
    sueldo_bruto INT NOT NULL,
    PRIMARY KEY (id_empleado),
    FOREIGN KEY (id_comuna) REFERENCES Comuna(id_comuna)
);


-- Tabla Tienda_Emp
CREATE TABLE Tienda_Emp (
    id_tienda INT,
    id_empleado INT,
    fecha_contrato DATE,
    PRIMARY KEY (id_tienda, id_empleado),
    FOREIGN KEY (id_tienda) REFERENCES Tienda(id_tienda),
    FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado)
);


-- Tabla Vendedor
CREATE TABLE Vendedor (
    id_vendedor SERIAL,
    id_empleado INT UNIQUE NOT NULL,
    PRIMARY KEY (id_empleado, id_vendedor),
    FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado)
);



-- Tabla Venta
CREATE TABLE Venta (
    id_venta SERIAL,
    fecha DATE NOT NULL,
    total INT,
    tipo_doc VARCHAR(50) NOT NULL,
    id_tienda INT NOT NULL,
    id_vendedor INT NOT NULL,
    id_empleado INT NOT NULL,
    PRIMARY KEY (id_venta),
    FOREIGN KEY (id_tienda) REFERENCES Tienda(id_tienda),
    FOREIGN KEY (id_empleado, id_vendedor) REFERENCES Vendedor(id_empleado, id_vendedor)
);


-- Tabla Producto
CREATE TABLE Producto (
    id_producto SERIAL,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(200),
    precio INT NOT NULL,
    PRIMARY KEY (id_producto)
);


-- Tabla Tienda-Prod
CREATE TABLE Tienda_Prod (
    id_tienda INT,
    id_producto INT,
    stock INT NOT NULL,
    PRIMARY KEY (id_tienda, id_producto),
    FOREIGN KEY (id_tienda) REFERENCES Tienda(id_tienda),
    FOREIGN KEY (id_producto) REFERENCES Producto(id_producto)
);


-- Tabla Prod-Venta
CREATE TABLE Prod_Venta (
    id_prod_venta SERIAL,
    id_venta INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    FOREIGN KEY (id_venta) REFERENCES Venta(id_venta),
    FOREIGN KEY (id_producto) REFERENCES Producto(id_producto)
);