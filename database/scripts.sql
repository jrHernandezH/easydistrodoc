--Tabla para los distribuidores con los campos correspondientes--
CREATE TABLE Distribuidores (
    id_distribuidor INT(11) NOT NULL AUTO_INCREMENT,
    nombre_distribuidor VARCHAR(45) DEFAULT NULL,
    direccion_distribuidor VARCHAR(85) DEFAULT NULL,
    telefono_distribuidor VARCHAR(15) DEFAULT NULL,
    correo_distribuidor VARCHAR(125) DEFAULT NULL,
    user VARCHAR (100) DEFAULT NULL,
    password VARCHAR(100) DEFAULT NULL,
    PRIMARY KEY (id_distribuidor)
);
--Tabla para los clientes con los campos correspondientes--
CREATE TABLE Clientes (
    id_cliente INT(11) NOT NULL AUTO_INCREMENT,
    nombre_cliente VARCHAR(45) DEFAULT NULL,
    direccion_cliente VARCHAR(85) DEFAULT NULL,
    telefono_cliente VARCHAR(15) DEFAULT NULL,
    correo_cliente VARCHAR(125) DEFAULT NULL,
    user VARCHAR(100) DEFAULT NULL,
    password VARCHAR(100) DEFAULT NULL,
    PRIMARY KEY (id_cliente)
);
--Tabla para los productos con los campos correspondientes--
CREATE TABLE Productos (
    id_producto INT(11) NOT NULL AUTO_INCREMENT,
    nombre_producto VARCHAR(45) DEFAULT NULL,
    descripcion_producto VARCHAR(100) DEFAULT NULL,
    precio_producto DECIMAL(10, 2) DEFAULT NULL,
    cantidad_producto INT(11) DEFAULT NULL,
    distribudor_asociado INT(11) DEFAULT NULL,
    PRIMARY KEY (id_producto)
);
--Tabla para pedidos con los campos correspondientes
CREATE TABLE Pedidos(
    id_pedido INT(11) NOT NULL AUTO_INCREMENT,
    cliente_pedido INT(11) DEFAULT NULL,
    distribudor_pedido INT(11) DEFAULT NULL,
    fecha_hora DATETIME DEFAULT NULL,
    estado_pedido VARCHAR(20) DEFAULT NULL, 
    total_pagar_pedido DECIMAL(10,2) DEFAULT NULL,
    PRIMARY KEY (id_pedido)
);
--Tabla para los detalles de los pedidos con sus respectivos campos
CREATE TABLE DetallesPedidos(
    id_detalle INT(11) NOT NULL AUTO_INCREMENT,
    pedido_detalle INT(11) DEFAULT NULL,
    producto_detalle INT(11) DEFAULT NULL,
    cantidad_detalle INT(11) DEFAULT NULL, 
    precio_unitario_detalle DECIMAL(10,2) DEFAULT NULL,
    PRIMARY KEY (id_detalle)
);