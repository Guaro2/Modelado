-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2022 a las 22:57:59
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `electrobike`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` smallint(4) NOT NULL,
  `nombre_categoria` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cantidad_categoria` smallint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre_categoria`, `cantidad_categoria`) VALUES
(1, 'Repuestos', 3),
(89, 'Bicicletas', 20),
(232, 'Repuestos alta gama', 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` smallint(4) NOT NULL,
  `nombre_cliente` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tipo_documento` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `documento_cliente` int(20) NOT NULL,
  `telefono_cliente` bigint(10) NOT NULL,
  `correo_cliente` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `estado_cliente` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre_cliente`, `tipo_documento`, `documento_cliente`, `telefono_cliente`, `correo_cliente`, `estado_cliente`) VALUES
(1, 'Pedro Romario Andres Suarez Restrepo', 'NIT', 444444444, 44488123, 'pedroromario0134@outlook.com', 1),
(213, 'Ricardo Ezequiel Restrepo Gonzales', 'cedula extranjeria', 748392832, 32050051141, 'ricardoexxxequiel1@gmail.com', 0),
(999, 'Daniel Alejandro Guarin Giraldo', 'Cedula', 1054928942, 3124114121, 'daguarin14@misena.edu.co', 1),
(1000, 'Alvaro Perez N', 'Cedula de extranjeria ', 11110477, 3124114121, 'daguarin14@misena.edu.co', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id_compra` smallint(4) NOT NULL,
  `id_proveedor` smallint(4) NOT NULL,
  `fecha_compra` date NOT NULL,
  `total_compra` float NOT NULL,
  `estado_compra` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`id_compra`, `id_proveedor`, `fecha_compra`, `total_compra`, `estado_compra`) VALUES
(2, 1, '2022-11-18', 10000000, 1),
(67, 98, '2022-11-18', 2000000, 0),
(200, 100, '2022-11-18', 10000000, 0),
(201, 98, '2022-11-10', 10000000, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallecompra`
--

CREATE TABLE `detallecompra` (
  `id_producto` smallint(4) NOT NULL,
  `id_compra` smallint(4) NOT NULL,
  `id_detallecompra` smallint(4) NOT NULL,
  `cantidad` smallint(4) NOT NULL,
  `valor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detallecompra`
--

INSERT INTO `detallecompra` (`id_producto`, `id_compra`, `id_detallecompra`, `cantidad`, `valor`) VALUES
(1, 2, 1, 14, 10000),
(2, 67, 23, 3, 2000000),
(3, 200, 110, 190, 3000000000),
(3, 201, 111, 78, 3000000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventa`
--

CREATE TABLE `detalleventa` (
  `id_venta` smallint(4) NOT NULL,
  `id_producto` smallint(4) NOT NULL,
  `id_detalleventa` smallint(4) NOT NULL,
  `cantidad` smallint(4) NOT NULL,
  `valor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalleventa`
--

INSERT INTO `detalleventa` (`id_venta`, `id_producto`, `id_detalleventa`, `cantidad`, `valor`) VALUES
(93, 1, 134, 34, 533.654),
(231, 2, 345, 123, 31.234),
(999, 3, 567, 21, 1000000),
(1000, 2, 568, 5, 10000),
(1000, 3, 569, 45, 4500000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` smallint(4) NOT NULL,
  `id_categoria` smallint(4) NOT NULL,
  `nombre_producto` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cantidad_producto` smallint(4) NOT NULL,
  `estado_producto` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `id_categoria`, `nombre_producto`, `cantidad_producto`, `estado_producto`) VALUES
(1, 1, 'Rin Bicicleta', 3, 1),
(2, 89, 'Bicicleta rin 12', 134, 1),
(3, 232, 'Freno alta gama GW', 43, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_proveedor` smallint(4) NOT NULL,
  `tipo_proveedor` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nombre_proveedor` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tipo_documento` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `documento_proveedor` int(20) NOT NULL,
  `telefono_proveedor` bigint(25) NOT NULL,
  `estado_proveedor` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_proveedor`, `tipo_proveedor`, `nombre_proveedor`, `tipo_documento`, `documento_proveedor`, `telefono_proveedor`, `estado_proveedor`) VALUES
(1, 'Juridico', 'Samuel Restrepo', 'Cedula', 1040571127, 3285780934, 1),
(98, 'Natural', 'Juan jose Suarez Bonolis', 'NIT', 1050871672, 3505249873, 1),
(100, 'Natural', 'cayetano alfonso leonardo perez quintana ', 'Cedula de extranjeria ', 1234567898, 1234566778888, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(4) NOT NULL,
  `nombre_rol` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `permisos` tinyint(1) NOT NULL,
  `estado_rol` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre_rol`, `permisos`, `estado_rol`) VALUES
(1, 'Administrador', 0, 0),
(68, 'Empleado', 0, 0),
(231, 'Empleado', 0, 0),
(232, 'Asistente', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(4) NOT NULL,
  `id_rol` int(4) NOT NULL,
  `nombreCompleto_usuario` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tipoDocumento_usuario` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `numeroDocumento_usuario` int(20) NOT NULL,
  `contraseña_usuario` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `correo_usuario` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `estado_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `id_rol`, `nombreCompleto_usuario`, `tipoDocumento_usuario`, `numeroDocumento_usuario`, `contraseña_usuario`, `correo_usuario`, `estado_usuario`) VALUES
(1, 1, 'Samuel Restrepo', 'cedula', 1234567, '40bd001563', 'a@gmail.com', 1),
(23, 68, 'Daniel Guarin', 'NIT', 12345678, '7110eda4d0', 'b@gmail.com', 0),
(124, 231, 'Alvaro samuel eusequio Restrepo Gómez', 'cedula', 1020394857, 'b1a8d77931', 'samuelrestrepogomez12345678@gmaill.com', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` smallint(4) NOT NULL,
  `id_cliente` smallint(4) NOT NULL,
  `fecha_venta` date NOT NULL,
  `total_venta` float NOT NULL,
  `estado_venta` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `id_cliente`, `fecha_venta`, `total_venta`, `estado_venta`) VALUES
(93, 999, '2022-11-18', 120543, 1),
(231, 213, '2022-11-18', 23500, 0),
(999, 1, '2022-11-18', 5000000, 1),
(1000, 999, '2022-11-30', 5000000, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `detallecompra`
--
ALTER TABLE `detallecompra`
  ADD PRIMARY KEY (`id_detallecompra`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_compra` (`id_compra`);

--
-- Indices de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD PRIMARY KEY (`id_detalleventa`),
  ADD KEY `id_venta` (`id_venta`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_rol` (`id_rol`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `id_compra` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT de la tabla `detallecompra`
--
ALTER TABLE `detallecompra`
  MODIFY `id_detallecompra` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT de la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  MODIFY `id_detalleventa` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=570;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id_proveedor` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` smallint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`),
  ADD CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`);

--
-- Filtros para la tabla `detallecompra`
--
ALTER TABLE `detallecompra`
  ADD CONSTRAINT `detallecompra_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`),
  ADD CONSTRAINT `detallecompra_ibfk_2` FOREIGN KEY (`id_compra`) REFERENCES `compra` (`id_compra`);

--
-- Filtros para la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD CONSTRAINT `detalleventa_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`),
  ADD CONSTRAINT `detalleventa_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
