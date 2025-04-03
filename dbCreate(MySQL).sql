CREATE DATABASE tienda;
USE tienda;

-- Creacion de tablas
-- Tabla Comuna
CREATE TABLE Comuna (
    id_comuna INT UNSIGNED AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_comuna)
);

-- Tabla Tienda
CREATE TABLE Tienda (
    id_tienda INT UNSIGNED AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    lugar VARCHAR(100),
    id_comuna INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_tienda),
    FOREIGN KEY (id_comuna) REFERENCES Comuna(id_comuna)
);

-- Tabla Empleado
CREATE TABLE Empleado (
    id_empleado INT UNSIGNED AUTO_INCREMENT,
    rut VARCHAR(12) UNIQUE NOT NULL,
    primer_nombre VARCHAR(50) NOT NULL,
    segundo_nombre VARCHAR(50),
    primer_apellido VARCHAR(50) NOT NULL,
    segundo_apellido VARCHAR(50),
    cargo VARCHAR(50) NOT NULL,
    id_comuna INT UNSIGNED NOT NULL,
    sueldo_liquido INT NOT NULL,
    sueldo_bruto INT NOT NULL,
    PRIMARY KEY (id_empleado),
    FOREIGN KEY (id_comuna) REFERENCES Comuna(id_comuna)
);

-- Tabla Tienda_Emp
CREATE TABLE Tienda_Emp (
    id_tienda INT UNSIGNED,
    id_empleado INT UNSIGNED,
    fecha_contrato DATE,
    PRIMARY KEY (id_tienda, id_empleado),
    FOREIGN KEY (id_tienda) REFERENCES Tienda(id_tienda),
    FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado)
);

-- Tabla Venta (se elimina la referencia a Vendedor)
CREATE TABLE Venta (
    id_venta INT UNSIGNED AUTO_INCREMENT,
    fecha DATE NOT NULL,
    total INT,
    tipo_doc VARCHAR(50) NOT NULL,
    id_tienda INT UNSIGNED NOT NULL,
    id_empleado INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_venta),
    FOREIGN KEY (id_tienda) REFERENCES Tienda(id_tienda),
    FOREIGN KEY (id_empleado) REFERENCES Empleado(id_empleado) -- Ahora apunta directamente a Empleado
);

-- Tabla Producto
CREATE TABLE Producto (
    id_producto INT UNSIGNED AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(200),
    precio INT NOT NULL,
    PRIMARY KEY (id_producto)
);

-- Tabla Tienda_Prod
CREATE TABLE Tienda_Prod (
    id_tienda INT UNSIGNED,
    id_producto INT UNSIGNED,
    stock INT NOT NULL,
    PRIMARY KEY (id_tienda, id_producto),
    FOREIGN KEY (id_tienda) REFERENCES Tienda(id_tienda),
    FOREIGN KEY (id_producto) REFERENCES Producto(id_producto)
);

-- Tabla Prod_Venta
CREATE TABLE Prod_Venta (
    id_prod_venta INT UNSIGNED AUTO_INCREMENT,
    id_venta INT UNSIGNED NOT NULL,
    id_producto INT UNSIGNED NOT NULL,
    cantidad INT NOT NULL,
    PRIMARY KEY (id_prod_venta),
    FOREIGN KEY (id_venta) REFERENCES Venta(id_venta),
    FOREIGN KEY (id_producto) REFERENCES Producto(id_producto)
);
