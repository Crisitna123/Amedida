-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Xerado en: 04 de Maio de 2022 ás 17:35
-- Versión do servidor: 8.0.28-0ubuntu0.20.04.3
-- Versión do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estrutura da táboa `articulos`
--

CREATE TABLE `articulos` (
  `idArticulo` int NOT NULL,
  `color` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipo` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `categoria` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio` int NOT NULL,
  `tejido` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;

--
-- A extraer os datos da táboa `articulos`
--

INSERT INTO `articulos` (`idArticulo`, `color`, `nombre`, `tipo`, `categoria`, `precio`, `tejido`, `imagen`) VALUES
(1, 'Blanco', 'Vestido de novia', 'Novia', 'mujer', 500, 'Algodón', '.png'),
(2, 'Gris', 'Traje', 'Traje', 'Hombre', 150, 'Poliéster', '.png'),
(3, 'Blanco', 'Vestido comunion', 'Niña', 'Infantil', 500, 'Algodón', '.png'),
(4, 'Blanco', 'Traje comunión', 'Niño', 'Infantil', 200, 'Algodón', '.png');

-- --------------------------------------------------------

--
-- Estrutura da táboa `cod_promocional`
--

CREATE TABLE `cod_promocional` (
  `idCodigo` int NOT NULL,
  `nombre` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descuento` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;

--
-- A extraer os datos da táboa `cod_promocional`
--

INSERT INTO `cod_promocional` (`idCodigo`, `nombre`, `descuento`) VALUES
(1, 'Primero', 10);

-- --------------------------------------------------------

--
-- Estrutura da táboa `contiene`
--

CREATE TABLE `contiene` (
  `idPedido` int NOT NULL,
  `idArticulo` int NOT NULL,
  `idMedidas` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;

--
-- A extraer os datos da táboa `contiene`
--

INSERT INTO `contiene` (`idPedido`, `idArticulo`, `idMedidas`) VALUES
(1, 1, 1),
(1, 2, 2);

-- --------------------------------------------------------

--
-- Estrutura da táboa `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da táboa `introduce`
--

CREATE TABLE `introduce` (
  `idUsuario` int NOT NULL,
  `idMedidas` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;

--
-- A extraer os datos da táboa `introduce`
--

INSERT INTO `introduce` (`idUsuario`, `idMedidas`) VALUES
(2, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Estrutura da táboa `medidas`
--

CREATE TABLE `medidas` (
  `idMedidas` int NOT NULL,
  `nombre` varchar(19) COLLATE utf8_spanish_ci NOT NULL,
  `contorno_cintura` int DEFAULT NULL,
  `ancho_espalda` int DEFAULT NULL,
  `largo_manga` int DEFAULT NULL,
  `largo_pierna` int DEFAULT NULL,
  `contorno_cadera` int DEFAULT NULL,
  `contorno_pecho` int DEFAULT NULL,
  `talle_cintura` int DEFAULT NULL,
  `talle_cadera` int DEFAULT NULL,
  `talle_pecho` int DEFAULT NULL,
  `largo_total` int DEFAULT NULL,
  `contorno_cuello` int DEFAULT NULL,
  `contorno_sisa` int DEFAULT NULL,
  `largo_talle_delantero` int DEFAULT NULL,
  `largo_talle_trasero` int DEFAULT NULL,
  `largo_hombro` int DEFAULT NULL,
  `largo_rodilla` int DEFAULT NULL,
  `largo_pantalon` int DEFAULT NULL,
  `largo_tiro` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;

--
-- A extraer os datos da táboa `medidas`
--

INSERT INTO `medidas` (`idMedidas`, `nombre`, `contorno_cintura`, `ancho_espalda`, `largo_manga`, `largo_pierna`, `contorno_cadera`, `contorno_pecho`, `talle_cintura`, `talle_cadera`, `talle_pecho`, `largo_total`, `contorno_cuello`, `contorno_sisa`, `largo_talle_delantero`, `largo_talle_trasero`, `largo_hombro`, `largo_rodilla`, `largo_pantalon`, `largo_tiro`) VALUES
(1, 'Paula', 102, 64, 62, 95, 125, 110, 30, 40, 23, 168, 18, 20, 21, 25, 48, 48, 82, 20),
(2, 'Javier', 95, 54, 64, 108, 104, 106, 26, 42, 22, 180, 20, 29, 26, 29, 50, 59, 110, 24);

-- --------------------------------------------------------

--
-- Estrutura da táboa `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A extraer os datos da táboa `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da táboa `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da táboa `pedidos`
--

CREATE TABLE `pedidos` (
  `idPedido` int NOT NULL,
  `fechaPedido` datetime DEFAULT CURRENT_TIMESTAMP,
  `coste` double DEFAULT NULL,
  `numeroElementos` int NOT NULL,
  `estado` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idCodigo` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;

--
-- A extraer os datos da táboa `pedidos`
--

INSERT INTO `pedidos` (`idPedido`, `fechaPedido`, `coste`, `numeroElementos`, `estado`, `idCodigo`) VALUES
(1, '2022-05-04 17:19:17', 650, 2, 'En proceso', 1);

-- --------------------------------------------------------

--
-- Estrutura da táboa `perfils`
--

CREATE TABLE `perfils` (
  `idUsuario` int NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apellido1` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `apellido2` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` int DEFAULT NULL,
  `direccion` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `localidad` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `provincia` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pais` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL,
  `codigoPostal` int DEFAULT NULL,
  `numeroCuenta` varchar(34) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;

--
-- A extraer os datos da táboa `perfils`
--

INSERT INTO `perfils` (`idUsuario`, `nombre`, `apellido1`, `apellido2`, `telefono`, `direccion`, `localidad`, `provincia`, `pais`, `codigoPostal`, `numeroCuenta`) VALUES
(2, 'Paula', 'Sánchez', 'López', 656565656, 'Carretera de cedeira, nº6', 'Narón', 'A Coruña', 'España', 15608, 'ES02124512451245124512451245124512');

-- --------------------------------------------------------

--
-- Estrutura da táboa `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da táboa `realiza`
--

CREATE TABLE `realiza` (
  `idUsuario` int NOT NULL,
  `idPedido` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;

--
-- A extraer os datos da táboa `realiza`
--

INSERT INTO `realiza` (`idUsuario`, `idPedido`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- Estrutura da táboa `trajes`
--

CREATE TABLE `trajes` (
  `idArticulo` int NOT NULL,
  `estilo` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;

--
-- A extraer os datos da táboa `trajes`
--

INSERT INTO `trajes` (`idArticulo`, `estilo`) VALUES
(2, 'ejecutivo'),
(4, 'Almirante');

-- --------------------------------------------------------

--
-- Estrutura da táboa `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A extraer os datos da táboa `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Cristina', '123cristy@gmail.com', NULL, '$2y$10$3INv9mB3QhkNSv28FYJvSuIZJdW0NejwlMpzwQJKPhP4oKtu5WHpa', NULL, '2022-04-06 12:17:06', '2022-04-06 12:17:06');

-- --------------------------------------------------------

--
-- Estrutura da táboa `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int NOT NULL,
  `email` varchar(320) COLLATE utf8_spanish_ci DEFAULT NULL,
  `contraseña` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rol` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;

--
-- A extraer os datos da táboa `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `email`, `contraseña`, `rol`) VALUES
(1, '123cristy@gmail.com', '123abc', 'admin'),
(2, 'abc@gmail.com', 'abc123.', 'cliente');

-- --------------------------------------------------------

--
-- Estrutura da táboa `vestidos`
--

CREATE TABLE `vestidos` (
  `idArticulo` int NOT NULL,
  `largo` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;

--
-- A extraer os datos da táboa `vestidos`
--

INSERT INTO `vestidos` (`idArticulo`, `largo`) VALUES
(1, 'Muy largo'),
(3, 'Largo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`idArticulo`);

--
-- Indexes for table `cod_promocional`
--
ALTER TABLE `cod_promocional`
  ADD PRIMARY KEY (`idCodigo`);

--
-- Indexes for table `contiene`
--
ALTER TABLE `contiene`
  ADD KEY `contiene_idPed_FK` (`idPedido`),
  ADD KEY `contiene_idArt_FK` (`idArticulo`),
  ADD KEY `contiene_idMed_FK` (`idMedidas`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `introduce`
--
ALTER TABLE `introduce`
  ADD KEY `introduce_idUsu_FK` (`idUsuario`),
  ADD KEY `introduce_idMed_FK` (`idMedidas`);

--
-- Indexes for table `medidas`
--
ALTER TABLE `medidas`
  ADD PRIMARY KEY (`idMedidas`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`idPedido`),
  ADD UNIQUE KEY `pedido_codigo_UK` (`idCodigo`);

--
-- Indexes for table `perfils`
--
ALTER TABLE `perfils`
  ADD KEY `perf_idUsu_FK` (`idUsuario`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `realiza`
--
ALTER TABLE `realiza`
  ADD KEY `realiza_idUsu_FK` (`idUsuario`),
  ADD KEY `realiza_idPed_FK` (`idPedido`);

--
-- Indexes for table `trajes`
--
ALTER TABLE `trajes`
  ADD KEY `traj_idArt_FK` (`idArticulo`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Indexes for table `vestidos`
--
ALTER TABLE `vestidos`
  ADD KEY `vest_idArt_FK` (`idArticulo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articulos`
--
ALTER TABLE `articulos`
  MODIFY `idArticulo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cod_promocional`
--
ALTER TABLE `cod_promocional`
  MODIFY `idCodigo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medidas`
--
ALTER TABLE `medidas`
  MODIFY `idMedidas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `idPedido` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `perfils`
--
ALTER TABLE `perfils`
  MODIFY `idUsuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trajes`
--
ALTER TABLE `trajes`
  MODIFY `idArticulo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vestidos`
--
ALTER TABLE `vestidos`
  MODIFY `idArticulo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricións para os envorcados das táboas
--

--
-- Restricións para a táboa `contiene`
--
ALTER TABLE `contiene`
  ADD CONSTRAINT `contiene_idArt_FK` FOREIGN KEY (`idArticulo`) REFERENCES `articulos` (`idArticulo`),
  ADD CONSTRAINT `contiene_idMed_FK` FOREIGN KEY (`idMedidas`) REFERENCES `medidas` (`idMedidas`),
  ADD CONSTRAINT `contiene_idPed_FK` FOREIGN KEY (`idPedido`) REFERENCES `pedidos` (`idPedido`);

--
-- Restricións para a táboa `introduce`
--
ALTER TABLE `introduce`
  ADD CONSTRAINT `introduce_idMed_FK` FOREIGN KEY (`idMedidas`) REFERENCES `medidas` (`idMedidas`),
  ADD CONSTRAINT `introduce_idUsu_FK` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`);

--
-- Restricións para a táboa `perfils`
--
ALTER TABLE `perfils`
  ADD CONSTRAINT `perf_idUsu_FK` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`);

--
-- Restricións para a táboa `realiza`
--
ALTER TABLE `realiza`
  ADD CONSTRAINT `realiza_idPed_FK` FOREIGN KEY (`idPedido`) REFERENCES `pedidos` (`idPedido`),
  ADD CONSTRAINT `realiza_idUsu_FK` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`);

--
-- Restricións para a táboa `trajes`
--
ALTER TABLE `trajes`
  ADD CONSTRAINT `traj_idArt_FK` FOREIGN KEY (`idArticulo`) REFERENCES `articulos` (`idArticulo`);

--
-- Restricións para a táboa `vestidos`
--
ALTER TABLE `vestidos`
  ADD CONSTRAINT `vest_idArt_FK` FOREIGN KEY (`idArticulo`) REFERENCES `articulos` (`idArticulo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
