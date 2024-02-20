-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 20-02-2024 a las 07:09:32
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistemaventa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `dni` int(20) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `telefono` int(15) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `razon` varchar(200) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `dni`, `nombre`, `telefono`, `direccion`, `razon`, `fecha`) VALUES
(1, 45123, 'Marcos', 978456123, 'Callao', '', '2024-02-15 15:44:02'),
(2, 1450, 'Fernando', 788123000, 'Perú', '', '2024-02-17 13:13:33'),
(3, 1300, 'Alejandra', 977122300, 'Arequipa', '', '2024-02-17 23:43:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `ruc` varchar(20) NOT NULL,
  `telefono` int(15) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `razon` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `config`
--

INSERT INTO `config` (`id`, `nombre`, `ruc`, `telefono`, `direccion`, `razon`) VALUES
(1, 'Vida Informático', '74501233', 945788123, 'Lima - Perú', 'Vida Informático');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `id` int(11) NOT NULL,
  `cod_pro` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `id_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`id`, `cod_pro`, `cantidad`, `precio`, `id_venta`) VALUES
(2, 2000, 12, '15.00', 5),
(3, 1000, 30, '45.00', 5),
(4, 1000, 20, '45.00', 6),
(5, 2000, 87, '15.00', 6),
(6, 2000, 1, '15.00', 7),
(7, 2800, 40, '11.50', 8),
(8, 1000, 95, '25.00', 8),
(9, 2800, 10, '11.50', 9),
(10, 1200, 50, '1450.00', 10),
(11, 1200, 400, '1450.00', 11),
(12, 2800, 5, '11.50', 12),
(13, 2800, 3, '11.50', 13),
(14, 1000, 20, '25.00', 13),
(15, 1200, 3, '1450.00', 14),
(16, 1000, 45, '25.00', 15),
(17, 1000, 100, '25.00', 16),
(18, 2800, 2, '11.50', 17),
(19, 1000, 120, '25.00', 17),
(20, 1200, 300, '1450.00', 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(30) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `proveedor` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `codigo`, `nombre`, `proveedor`, `stock`, `precio`, `fecha`) VALUES
(7, '2800', 'Mouse', 'Fernando', 0, '11.50', '2024-02-17 23:42:24'),
(8, '1200', 'PC', 'Cielo', 447, '1450.00', '2024-02-17 23:44:32'),
(9, '1000', 'Teclado', 'Fernando', 220, '25.00', '2024-02-17 23:47:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL,
  `ruc` int(20) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `telefono` int(15) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `razon` varchar(200) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id`, `ruc`, `nombre`, `telefono`, `direccion`, `razon`, `fecha`) VALUES
(1, 2500, 'Fernando', 988123088, 'Arequipa', 'TFT', '2024-02-15 22:31:13'),
(2, 1445, 'Cielo', 944123666, 'Lima - Perú', '', '2024-02-15 22:32:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `rol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `pass`, `rol`) VALUES
(1, 'willy', 'willy.al.2002@gmail.com', 'admin12345', 'Administrado'),
(2, 'Erika', 'erika@gmail.com', '4500', 'Asistente'),
(4, 'Marcos', 'Marcos@gmail.com', '1200', 'Asistente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `cliente` varchar(100) NOT NULL,
  `Vendedor` varchar(100) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `fecha` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `cliente`, `Vendedor`, `total`, `fecha`) VALUES
(16, 'Alejandra', 'Vida Informático', '2500.00', '19/02/2024'),
(17, 'Marcos', 'Vida Informático', '3023.00', '20/02/2024'),
(18, 'Alejandra', 'Vida Informático', '435000.00', '20/02/2024');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detalle`
--
ALTER TABLE `detalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
