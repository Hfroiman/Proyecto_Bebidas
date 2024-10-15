CREATE DATABASE Emprendimiento_Bebidas
GO
USE Emprendimiento_Bebidas;
GO


CREATE TABLE LOCALIDAD(
    Codigo_Localidad BIGINT IDENTITY(1,1),
    Nombre_Loc VARCHAR(35) NOT NULL UNIQUE,
    PRIMARY KEY (Codigo_Localidad)
);

CREATE TABLE BARRIO(
    Codigo BIGINT IDENTITY(1,1),
    Codigo_Localidad BIGINT,
    Nombre_Barrio VARCHAR(28) NOT NULL,
    PRIMARY KEY (Codigo),
    FOREIGN KEY (Codigo_Localidad) REFERENCES LOCALIDAD (Codigo_Localidad),
);

CREATE TABLE DIRECCION(
    DNI_Cte  VARCHAR(8),
    Calle VARCHAR(25) NOT NULL,
    Altura BIGINT NOT NULL,
    Codigo_Barrio BIGINT,
    PRIMARY KEY (Calle, Altura),
    FOREIGN KEY (Codigo_Barrio) REFERENCES BARRIO(Codigo)
);


CREATE TABLE DATOS_CLIENTE(
    DNI VARCHAR(8),
    Apellido VARCHAR(15) not null,
    Nombre VARCHAR(15) not null,
    Telefono VARCHAR(12) UNIQUE not null,
    Email VARCHAR(40) UNIQUE not null,
    Estado VARCHAR(9),
    CONSTRAINT CHK_Estado CHECK (Estado IN ('Activo', 'Inactivo', 'Pendiente')),
    PRIMARY KEY (DNI)
);

CREATE TABLE USUARIO(
    DNI_Cte VARCHAR(8),
    Email VARCHAR(40) not null,
    Contraseña  VARCHAR(15) not null,
    Estado VARCHAR(10),
    CONSTRAINT CHK_Estado2 CHECK (Estado IN ('Activo', 'Inactivo', 'Pendiente', 'adm')),
    PRIMARY KEY (Email, DNI_Cte),
    FOREIGN KEY (DNI_Cte) REFERENCES DATOS_CLIENTE (DNI)
);

CREATE TABLE CATEGORIA(
    Codigo BIGINT IDENTITY (1,1),
    Nombre VARCHAR(25) NOT NULL,
    PRIMARY KEY (Codigo)
);

CREATE TABLE PRODUCTO(
    Codigo BIGINT IDENTITY(1,1),
    Nombre VARCHAR(25) not null,
    Descripcion VARCHAR(150) not null,
    Codigo_Categoria BIGINT not NULL,
    Precio_Compra MONEY not NULL,
    Precio_Venta MONEY not null,
    Stock SMALLINT not null,
    Stock_minimo SMALLINT,
    PRIMARY KEY (Codigo)
);

CREATE TABLE URL_IMG(
    ID_img BIGINT IDENTITY (1,1),
    Codigo_Producto BIGINT,
    URL_img VARCHAR(1000),
    PRIMARY KEY (ID_img),
    FOREIGN KEY (Codigo_Producto) REFERENCES PRODUCTO (Codigo),
)

CREATE TABLE CODIGO_VENTA(
    Codigo_Venta INT,
    Codigo_Producto BIGINT NOT NULL,
    Cant_Vendida SMALLINT not null,
    Precio_Venta MONEY not null,
    PRIMARY KEY (Codigo_Venta, Codigo_Producto),
    FOREIGN KEY (Codigo_Producto) REFERENCES PRODUCTO (Codigo),
);


CREATE TABLE VENTA(
    Num_Venta INT IDENTITY(1,1),
    DNI_Cte VARCHAR(8),
    Fecha DATE not null,
    Codigo_venta INT not null,
    Total MONEY not NULL,
    Observaciones VARCHAR(30),
    Estado VARCHAR(12),
    CONSTRAINT CHK_Estado3 CHECK (Estado IN ('Realizada', 'Cancelada', 'Preparacion')),
    PRIMARY KEY (Num_Venta),
    FOREIGN KEY (DNI_Cte) REFERENCES DATOS_CLIENTE (DNI),
);

CREATE TABLE PEDIDO(
    DNI_Cte VARCHAR(8),
    Num_Venta INT IDENTITY(1,1),
    Estado VARCHAR(12),
    CONSTRAINT CHK_Estado4 CHECK (Estado IN ('Realizada', 'Cancelada', 'Preparacion')),
    PRIMARY KEY (DNI_Cte, Num_Venta),
    FOREIGN KEY (DNI_Cte) REFERENCES DATOS_CLIENTE(DNI),
    FOREIGN KEY (Num_Venta) REFERENCES VENTA (Num_Venta)
);

INSERT INTO LOCALIDAD (Nombre_Loc) VALUES ('SAN FERNANDO'),('GRAL. PACHECO'),('SAN ISIDRO'),('TIGRE');

INSERT INTO BARRIO (Codigo_Localidad, Nombre_Barrio) VALUES (2,'Las Tunas'),(4,'Troncos del Talar'),(2,'Talar'), (2,'Delfino');

INSERT INTO DATOS_CLIENTE (DNI, Apellido, Nombre, Telefono, Email, Estado) VALUES ('42675014', 'Froiman', 'Hernan', 1125258383, 'froiman@gmail.com', 'Pendiente')

INSERT INTO USUARIO (DNI_Cte, Email, Contraseña, Estado) VALUES ('42675014', 'hdhdhdh@gmail.com', '123456','Activo')

INSERT INTO CATEGORIA (Nombre) VALUES ('Gaseosa'), ('Cerveza'), ('Vino')