-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-10-2024 a las 16:07:12
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `standup13db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE `cart` (
  `idv` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `idprod` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_purchase`
--

CREATE TABLE `cart_purchase` (
  `idcpr` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `idprod` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cart_purchase`
--

INSERT INTO `cart_purchase` (`idcpr`, `user_id`, `idprod`, `name`, `price`, `quantity`) VALUES
(6, 1, 4, 'LAPTO hP ULTRA', 2400.00, 1),
(7, 1, 2, ' PC Todo en Uno Lenovo IdeaCentre 3, Intel Core i5-10400T 2.4GHz, RAM 8GB, HDD 1TB, Wi-FI, BT, LED 24', 3099.00, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcate` int(11) NOT NULL,
  `nocate` varchar(100) NOT NULL,
  `state` char(1) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcate`, `nocate`, `state`, `fere`) VALUES
(2, 'LAPTOS', '1', '2022-11-15 00:24:54'),
(4, 'PCS', '1', '2022-11-15 01:15:48'),
(5, 'SERVIDORES', '1', '2022-11-15 01:16:06'),
(6, 'PROYECTORES', '1', '2022-11-15 01:16:16'),
(7, 'IMPRESORAS', '1', '2022-11-15 01:35:15'),
(8, 'MONITORES', '1', '2022-11-15 01:16:44'),
(9, 'COMPONENTES', '1', '2022-11-15 01:17:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idcli` int(11) NOT NULL,
  `tipd` varchar(25) NOT NULL,
  `nudoc` char(8) NOT NULL,
  `nocl` varchar(35) NOT NULL,
  `apcl` varchar(35) NOT NULL,
  `telfcl` char(9) NOT NULL,
  `state` char(1) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` char(1) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idcli`, `tipd`, `nudoc`, `nocl`, `apcl`, `telfcl`, `state`, `username`, `password`, `rol`, `fere`) VALUES
(1, 'cedula', '78885848', 'Julian', 'Juarez Lopez', '968586757', '1', 'jjuluLo', '4d377c289941221370b02f48b16019cf', '2', '2024-10-08 09:05:05'),
(2, 'cedula', '76546564', 'Karla', 'Martinez', '976575665', '1', 'kkmart21', '96e79218965eb72c92a549dd5a330112', '2', '2024-10-08 08:59:46'),
(4, 'cedula', '76564564', 'Leonardo', 'Flores', '986858658', '1', 'lleo', 'f09696910bdd874a99cd74c8f05b5c44', '2', '2024-10-08 08:59:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `idmar` int(11) NOT NULL,
  `nomarc` text NOT NULL,
  `state` char(1) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`idmar`, `nomarc`, `state`, `fere`) VALUES
(1, 'Lenovo', '1', '2022-11-16 00:24:00'),
(2, 'hp', '1', '2022-11-19 08:00:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `idord` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nomcl` text NOT NULL,
  `method` varchar(50) NOT NULL,
  `total_products` text NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `placed_on` varchar(15) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `tipc` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`idord`, `user_id`, `nomcl`, `method`, `total_products`, `total_price`, `placed_on`, `payment_status`, `tipc`) VALUES
(1, 1, 'Manuel Jose Flores Ayala', 'Seleccione', ', LAPTOP LENOVO V14 IIL, INTEL CORE I3-1005G1, 4GB, 1TB, 14″ HD ( 3 ),  PC Todo en Uno Lenovo IdeaCentre 3, Intel Core i5-10400T 2.4GHz, RAM 8GB, HDD 1TB, Wi-FI, BT, LED 24 ( 4 )', 19668.00, '17-Nov-2022', 'Aceptado', 'Boleta'),
(2, 1, 'Renato Fautisno Velarde Trelles', 'Contado', ',  PC Todo en Uno Lenovo IdeaCentre 3, Intel Core i5-10400T 2.4GHz, RAM 8GB, HDD 1TB, Wi-FI, BT, LED 24 ( 3 )', 9297.00, '18-Nov-2022', 'Aceptado', 'Boleta'),
(3, 1, 'Karla Solis Urbina', 'Contado', ',  PC Todo en Uno Lenovo IdeaCentre 3, Intel Core i5-10400T 2.4GHz, RAM 8GB, HDD 1TB, Wi-FI, BT, LED 24 ( 1 )', 3099.00, '18-Nov-2022', 'Aceptado', 'Boleta'),
(4, 1, 'OSVALDO SALAZAR YOVERA', 'Contado', ', LAPTO hP ULTRA ( 1 )', 2400.00, '19-Nov-2022', 'Aceptado', 'Boleta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_purchase`
--

CREATE TABLE `orders_purchase` (
  `idordpur` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `idprov` int(11) NOT NULL,
  `method` varchar(50) NOT NULL,
  `total_products` text NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `placed_on` varchar(15) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `tipc` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `orders_purchase`
--

INSERT INTO `orders_purchase` (`idordpur`, `user_id`, `idprov`, `method`, `total_products`, `total_price`, `placed_on`, `payment_status`, `tipc`) VALUES
(1, 1, 1, 'Contado', ', LAPTOP LENOVO V14 IIL, INTEL CORE I3-1005G1, 4GB, 1TB, 14″ HD ( 1 ),  PC Todo en Uno Lenovo IdeaCentre 3, Intel Core i5-10400T 2.4GHz, RAM 8GB, HDD 1TB, Wi-FI, BT, LED 24 ( 3 )', 11721.00, '18-Nov-2022', 'Aceptado', 'Boleta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idprod` int(11) NOT NULL,
  `codpro` char(14) NOT NULL,
  `nomprd` text NOT NULL,
  `desprd` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` char(3) NOT NULL,
  `idmar` int(11) NOT NULL,
  `idcate` int(11) NOT NULL,
  `modelo` text NOT NULL,
  `peso` text NOT NULL,
  `state` char(1) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idprod`, `codpro`, `nomprd`, `desprd`, `foto`, `precio`, `stock`, `idmar`, `idcate`, `modelo`, `peso`, `state`, `fere`) VALUES
(1, '33333333333333', 'LAPTOP LENOVO V14 IIL, INTEL CORE I3-1005G1, 4GB, 1TB, 14″ HD', 'Procesador: Intel Core i3\r\nTipo de disco duro: SATA\r\nTarjeta gráfica: Intel® UHD Graphics\r\nDisco Duro: 1TB\r\nMemoria RAM: 4GB', '825226.jpg', 2424.00, '99', 1, 2, 'Lenovo', 'A partir de 1.6 Kg', '1', '2022-11-16 05:42:15'),
(2, '74355345345324', ' PC Todo en Uno Lenovo IdeaCentre 3, Intel Core i5-10400T 2.4GHz, RAM 8GB, HDD 1TB, Wi-FI, BT, LED 24\" Full HD, Windows 10 Home SP', 'Intel® Core™ i5-10400T (2.0 / 3.6 GHz, 6 núcleos) Décima generación \r\nRAM 8 GB DDR4 ampliable\r\nDisco Duro de 1TB SATA\r\nPantalla 24\" Full HD (1920x1080) IPS, marcos reducidos.\r\nWiFi, Buetooth, Cámara web 720p\r\nTeclado & Mouse alámbricos\r\nWindows 10 Home SP', '651402.jpg', 3099.00, '20', 1, 4, 'Lenovo', '30kg', '1', '2022-11-17 01:26:23'),
(4, '96785756756756', 'LAPTO hP ULTRA', 'ESTA ES UNA LAPTO hP ULTRA', '211473.jpg', 2400.00, '90', 2, 2, 'hP', '100', '1', '2022-11-19 08:02:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `idprov` int(11) NOT NULL,
  `rucprv` char(11) NOT NULL,
  `nomprv` text NOT NULL,
  `corrprv` varchar(35) NOT NULL,
  `state` char(1) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`idprov`, `rucprv`, `nomprv`, `corrprv`, `state`, `fere`) VALUES
(1, '20568005491', 'TIENDAS DE COMPUTO EIRL', '', '1', '2022-11-15 18:14:16'),
(2, '20511697353', 'EQUIPOS Y ACCESORIOS DE COMPUTO S.A.C', '', '1', '2022-11-15 18:15:17'),
(4, '10399333426', 'MANRIQUE SA', '', '1', '2022-11-19 07:58:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `correo` varchar(35) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` char(1) NOT NULL,
  `fere` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `state` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `username`, `correo`, `password`, `rol`, `fere`, `state`) VALUES
(1, 'Leonard', 'Standup13', 'leonardmares1@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '1', '2024-10-11 14:05:56', '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idv`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `idprod` (`idprod`);

--
-- Indices de la tabla `cart_purchase`
--
ALTER TABLE `cart_purchase`
  ADD PRIMARY KEY (`idcpr`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `idprod` (`idprod`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcate`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idcli`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`idmar`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`idord`);

--
-- Indices de la tabla `orders_purchase`
--
ALTER TABLE `orders_purchase`
  ADD PRIMARY KEY (`idordpur`),
  ADD KEY `idprov` (`idprov`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idprod`),
  ADD KEY `idmar` (`idmar`),
  ADD KEY `idcate` (`idcate`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`idprov`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cart`
--
ALTER TABLE `cart`
  MODIFY `idv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `cart_purchase`
--
ALTER TABLE `cart_purchase`
  MODIFY `idcpr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idcli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `idmar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `idord` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `orders_purchase`
--
ALTER TABLE `orders_purchase`
  MODIFY `idordpur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idprod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `idprov` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`idprod`) REFERENCES `productos` (`idprod`);

--
-- Filtros para la tabla `cart_purchase`
--
ALTER TABLE `cart_purchase`
  ADD CONSTRAINT `cart_purchase_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `cart_purchase_ibfk_2` FOREIGN KEY (`idprod`) REFERENCES `productos` (`idprod`);

--
-- Filtros para la tabla `orders_purchase`
--
ALTER TABLE `orders_purchase`
  ADD CONSTRAINT `orders_purchase_ibfk_1` FOREIGN KEY (`idprov`) REFERENCES `proveedores` (`idprov`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`idmar`) REFERENCES `marca` (`idmar`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`idcate`) REFERENCES `categoria` (`idcate`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
