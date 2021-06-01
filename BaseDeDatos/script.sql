
--Creamos la base de datos
CREATE DATABASE miTienda;



--Usuario
CREATE TABLE usuario(
	idUsuario int NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(30) NOT NULL,
	apellido1 VARCHAR(20) NOT NULL,
	apellido2 VARCHAR(20),
	email VARCHAR(320),
	contraseña VARCHAR(10) NOT NULL,
	nombreUsuario VARCHAR(10) NOT NULL UNIQUE,
	CONSTRAINT usu_id_PK PRIMARY KEY (idUsuario)
);


--Cliente
CREATE TABLE cliente(
	idUsuario int NOT NULL AUTO_INCREMENT,
	codigoPostal int(5),
	localidad VARCHAR(15),
	provincia VARCHAR(15),
	pais VARCHAR(15),
	direccion VARCHAR(60),
	numeroCuenta VARCHAR(34),
	CONSTRAINT client_idUsu_FK FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario)
);
	
	
--Administrador
CREATE TABLE administrador(
	idUsuario int NOT NULL AUTO_INCREMENT,
	dni VARCHAR(8) NOT NULL,
	CONSTRAINT adm_idUsu_FK FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario)	
);


--Telefono
CREATE TABLE telefono(
	idUsuario int NOT NULL AUTO_INCREMENT,
	telefono int(9),
	CONSTRAINT telefono_PK PRIMARY KEY (telefono),
	CONSTRAINT tlf_idUsu_FK FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario)
);


--Pedido
CREATE TABLE pedido(
	idPedido int NOT NULL AUTO_INCREMENT,
	fechaPedido DATETIME DEFAULT CURRENT_TIMESTAMP,
	fechaEntrega DATETIME,
	coste DOUBLE,
	numeroElementos int(5) NOT NULL,
	estado VARCHAR(10),
	CONSTRAINT pedido_id_PK PRIMARY KEY (idPedido)
);


--Realiza
CREATE TABLE realiza(
	idUsuario int NOT NULL,
	idPedido int NOT NULL,
	CONSTRAINT realiza_idUsu_FK FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario),
	CONSTRAINT realiza_idPed_FK FOREIGN KEY (idPedido) REFERENCES pedido(idPedido)
);


--Articulo
CREATE TABLE articulo(
	idArticulo int NOT NULL AUTO_INCREMENT,
	color VARCHAR(10),
	tipo VARCHAR(10),
	categoria VARCHAR(10),
	CONSTRAINT art_idArt_PK PRIMARY KEY (idArticulo)
);


--Serie
CREATE TABLE serie(
	idArticulo int NOT NULL AUTO_INCREMENT,
	talla SET('XS', 'S', 'M', 'L', 'XL', 'XXL') NOT NULL,
	precio int(5) NOT NULL,
	CONSTRAINT serie_idArt_FK FOREIGN KEY (idArticulo) REFERENCES articulo(idArticulo)
);


--A medida
CREATE TABLE aMedida(
	idArticulo int NOT NULL AUTO_INCREMENT,
	precio_calculado int(5),
	CONSTRAINT aMedida_idArt_FK FOREIGN KEY (idArticulo) REFERENCES articulo(idArticulo)
);

--Imagen
CREATE TABLE imagen(
	idArticulo int NOT NULL AUTO_INCREMENT,
	imagen longblob NOT NULL,
	CONSTRAINT img_idArt_FK FOREIGN KEY (idArticulo) REFERENCES articulo(idArticulo)
);



--Contiene
CREATE TABLE contiene(
	idArticulo int NOT NULL AUTO_INCREMENT,
	idPedido int NOT NULL AUTO_INCREMENT,
	CONSTRAINT cont_idArt_FK FOREIGN KEY (idArticulo) REFERENCES articulo(idArticulo),
	CONSTRAINT cont_idPed_FK FOREIGN KEY (idPedido) REFERENCES pedido(idPedido)
);


--Adminsitra
CREATE TABLE administra(
	idUsuario int NOT NULL,
	idArticulo int NOT NULL,
	CONSTRAINT admi_idUsu_FK FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario),
	CONSTRAINT admi_idArt_FK FOREIGN KEY (idArticulo) REFERENCES articulo(idArticulo)
);
	

--Medidas
CREATE TABLE medidas(
	idUsuario int NOT NULL,
	idArticulo int NOT NULL,
	contorno_cintura int(3),
	ancho_espalda int(3),
	largo_manga int(3),
	largo_perna int(3),
	contorno_cadera int(3),
	contorno_peito int(3),
	talle_cintura int(3),
	talle_cadera int(3),
	talle_peito int(3),
	largo_total int(3),
	contorno_cuello int(3),
	contorno_sisa int(3),
	largo_talle_delantero int(3),
	largo_talle_trasero int(3),
	largo_hombro int(3),
	largo_rodilla int(3),
	largo_pantalon int(3),
	largo_tiro int(3),
	CONSTRAINT medidas_idUsu_FK FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario),
	CONSTRAINT medidas_idArt_FK FOREIGN KEY (idArticulo) REFERENCES articulo(idArticulo)
);