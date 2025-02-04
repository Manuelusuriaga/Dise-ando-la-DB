-- SQLite
CREATE TABLE Categoria (
ID INTEGER PRIMARY KEY NOT NULL,
Nombre TEXT
);

CREATE TABLE Producto (
ID INTEGER PRIMARY KEY NOT NULL,
Nombre TEXT,
Marca TEXT,
Categoria_id TEXT,
Precio_unitario INTEGER
);

CREATE TABLE Sucursal (
ID INTEGER PRIMARY KEY NOT NULL,
Nombre TEXT,
Direccion TEXT
);

CREATE TABLE Stock (
ID INTEGER PRIMARY KEY NOT NULL,
Sucursal_id TEXT,
Producto_id TEXT,
Cantidad INTEGER,
UNIQUE (Sucursal_id, Producto_id)
);

CREATE TABLE Cliente (
ID INTEGER PRIMARY KEY NOT NULL,
Nombre TEXT,
Telefono INTEGER
);

CREATE TABLE Orden (
ID INTEGER PRIMARY KEY NOT NULL,
Cliente_id TEXT,
Sucursal_id TEXT,
Fecha DATE,
Total INTEGER
);

CREATE TABLE Item (
ID INTEGER PRIMARY KEY NOT NULL,
Orden_id TEXT,
Producto_id TEXT,
Cantidad INTEGER
Monto_Venta INTEGER
);


