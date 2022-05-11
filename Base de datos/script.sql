--Creamos la base de datos
CREATE DATABASE proyecto;

--Usuarios
CREATE TABLE usuarios(
	idUsuario int NOT NULL AUTO_INCREMENT,
	email VARCHAR(320),
	contraseña VARCHAR(10) NOT NULL,
	rol VARCHAR(10),
	CONSTRAINT usu_id_PK PRIMARY KEY (idUsuario)
);

--Perfils
CREATE TABLE perfils(
	idUsuario int NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(30) NOT NULL,
	apellido1 VARCHAR(20) NOT NULL,
	apellido2 VARCHAR(20),
	telefono int(9),
	direccion VARCHAR(60),
	localidad VARCHAR(15),
	provincia VARCHAR(15),
	pais VARCHAR(15),
	codigoPostal int(5),
	numeroCuenta VARCHAR(34),
	CONSTRAINT perf_idUsu_FK FOREIGN KEY (idUsuario) REFERENCES usuarios(idUsuario)
);


--Articulos
CREATE TABLE articulos(
	idArticulo int NOT NULL AUTO_INCREMENT,
	color VARCHAR(15),
	nombre VARCHAR (30),
	tipo VARCHAR(20),
	categoria VARCHAR(20),
	precio int(5) NOT NULL,
	tejido VARCHAR(10),
	imagen VARCHAR(50), --Aquí almacenamos solo la estensión que va a tener la imágen, es decir, si es .jpeg o .png
	CONSTRAINT art_idArt_PK PRIMARY KEY (idArticulo)
);

--Trajes
CREATE TABLE trajes(
	idArticulo int NOT NULL AUTO_INCREMENT,
	estilo VARCHAR(20),
	CONSTRAINT traj_idArt_FK FOREIGN KEY (idArticulo) REFERENCES articulos(idArticulo)
);

--Vestidos
CREATE TABLE vestidos(
	idArticulo int NOT NULL AUTO_INCREMENT,
	largo VARCHAR(20),
	CONSTRAINT vest_idArt_FK FOREIGN KEY (idArticulo) REFERENCES articulos(idArticulo)
);

--Pedidos
CREATE TABLE pedidos(
	idPedido int NOT NULL AUTO_INCREMENT,
	fechaPedido DATETIME DEFAULT CURRENT_TIMESTAMP,
	coste DOUBLE,
	numeroElementos int(5) NOT NULL,
	estado VARCHAR(10),
	idCodigo int(6),
	CONSTRAINT pedido_id_PK PRIMARY KEY (idPedido),
	CONSTRAINT pedido_codigo_UK UNIQUE (idCodigo)
);

--Cod_promocional
CREATE TABLE cod_promocional(
	idCodigo int NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(10),
	descuento int(3),
	CONSTRAINT codProm_id_PK PRIMARY KEY (idCodigo)
);


--Medidas
CREATE TABLE medidas(
	idMedidas int NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(19) NOT NULL UNIQUE,
	contorno_cintura int(3),
	ancho_espalda int(3),
	largo_manga int(3),
	largo_pierna int(3),
	contorno_cadera int(3),
	contorno_pecho int(3),
	talle_cintura int(3),
	talle_cadera int(3),
	talle_pecho int(3),
	largo_total int(3),
	contorno_cuello int(3),
	contorno_sisa int(3),
	largo_talle_delantero int(3),
	largo_talle_trasero int(3),
	largo_hombro int(3),
	largo_rodilla int(3),
	largo_pantalon int(3),
	largo_tiro int(3),
	CONSTRAINT medidas_id_PK PRIMARY KEY (idMedidas)
);


--Contiene
CREATE TABLE contiene(
	idPedido int NOT NULL,
	idArticulo int NOT NULL,
	idMedidas int NOT NULL,
	CONSTRAINT contiene_idPed_FK FOREIGN KEY (idPedido) REFERENCES pedidos(idPedido),
	CONSTRAINT contiene_idArt_FK FOREIGN KEY (idArticulo) REFERENCES articulos(idArticulo),
	CONSTRAINT contiene_idMed_FK FOREIGN KEY (idMedidas) REFERENCES medidas(idMedidas)
);


--Realiza
CREATE TABLE realiza(
	idUsuario int NOT NULL,
	idPedido int NOT NULL,
	CONSTRAINT realiza_idUsu_FK FOREIGN KEY (idUsuario) REFERENCES usuarios(idUsuario),
	CONSTRAINT realiza_idPed_FK FOREIGN KEY (idPedido) REFERENCES pedidos(idPedido)
);


--Introduce
CREATE TABLE introduce(
	idUsuario int NOT NULL,
	idMedidas int NOT NULL,
	CONSTRAINT introduce_idUsu_FK FOREIGN KEY (idUsuario) REFERENCES usuarios(idUsuario),
	CONSTRAINT introduce_idMed_FK FOREIGN KEY (idMedidas) REFERENCES medidas(idMedidas)
);
