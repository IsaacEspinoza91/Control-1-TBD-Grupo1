-- Creamos la base de datos primeramente
CREATE DATABASE retailbd;

-- Conectamos a la base de datos creada previamente
\connect retailbd;

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
    id_comuna INTEGER NOT NULL,
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
    id_comuna INTEGER NOT NULL,
    sueldo_liquido INTEGER NOT NULL,
    sueldo_bruto INTEGER NOT NULL,
    PRIMARY KEY (id_empleado),
    FOREIGN KEY (id_comuna) REFERENCES Comuna(id_comuna)
);

-- Tabla Tienda_Emp
CREATE TABLE Tienda_Emp (
    id_tienda INTEGER,
    id_empleado INTEGER,
    fecha_contrato DATE,
    PRIMARY KEY (id_tienda, id_empleado),
    FOREIGN KEY (id_tienda) REFERENCES Tienda(id_tienda),
    FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado)
);

-- Tabla Venta (se elimina la referencia a Vendedor)
CREATE TABLE Venta (
    id_venta SERIAL,
    fecha DATE NOT NULL,
    total INTEGER,
    tipo_doc VARCHAR(50) NOT NULL,
    id_tienda INTEGER NOT NULL,
    id_empleado INTEGER NOT NULL,
    PRIMARY KEY (id_venta),
    FOREIGN KEY (id_tienda) REFERENCES Tienda(id_tienda),
    FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado)
);

-- Tabla Producto
CREATE TABLE Producto (
    id_producto SERIAL,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(200),
    precio INTEGER NOT NULL,
    PRIMARY KEY (id_producto)
);

-- Tabla Tienda_Prod
CREATE TABLE Tienda_Prod (
    id_tienda INTEGER,
    id_producto INTEGER,
    stock INTEGER NOT NULL,
    PRIMARY KEY (id_tienda, id_producto),
    FOREIGN KEY (id_tienda) REFERENCES Tienda(id_tienda),
    FOREIGN KEY (id_producto) REFERENCES Producto(id_producto)
);

-- Tabla Prod_Venta
CREATE TABLE Prod_Venta (
    id_prod_venta SERIAL,
    id_venta INTEGER NOT NULL,
    id_producto INTEGER NOT NULL,
    cantidad INTEGER NOT NULL,
    PRIMARY KEY (id_prod_venta),
    FOREIGN KEY (id_venta) REFERENCES Venta(id_venta),
    FOREIGN KEY (id_producto) REFERENCES Producto(id_producto)
);
