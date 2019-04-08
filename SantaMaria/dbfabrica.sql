-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-04-2019 a las 03:53:45
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbfabrica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chocolates`
--

CREATE TABLE `chocolates` (
  `iidchocolate` int(5) NOT NULL,
  `cnombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `cdescripcion` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `imagen` blob
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `chocolates`
--

INSERT INTO `chocolates` (`iidchocolate`, `cnombre`, `cdescripcion`, `imagen`) VALUES
(1, 'Chocolate Abuelita', 'Â¿Como preparar chocolate caliente?', 0x64657363617267612e6a7067);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reseta`
--

CREATE TABLE `reseta` (
  `iidreceta` int(5) NOT NULL,
  `cnombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `cingrediente` varchar(800) COLLATE utf8_spanish_ci NOT NULL,
  `creceta` varchar(800) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `reseta`
--

INSERT INTO `reseta` (`iidreceta`, `cnombre`, `cingrediente`, `creceta`) VALUES
(1, 'Â¿Como preparar Chocolate Abuelita?', '2 latas de Leche Evaporada CARNATIONÂ® CLAVELÂ®. 1 taza de agua. 1 tableta de Chocolate para Mesa ABUELITAÂ® (90 g).', '1 Calienta la Leche Evaporada CARNATIONÂ® CLAVELÂ® con el agua y cuando empiece a hervir, agrega la tableta de Chocolate para Mesa ABUELITAÂ®. 2 Mueve hasta que el Chocolate para Mesa ABUELITAÂ® se disuelva. 3 Calienta por 5 minutos mÃ¡s y disfruta. Tiempo de preparaciÃ³n: 10 minutos.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `chocolates`
--
ALTER TABLE `chocolates`
  ADD PRIMARY KEY (`iidchocolate`);

--
-- Indices de la tabla `reseta`
--
ALTER TABLE `reseta`
  ADD PRIMARY KEY (`iidreceta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `chocolates`
--
ALTER TABLE `chocolates`
  MODIFY `iidchocolate` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `reseta`
--
ALTER TABLE `reseta`
  MODIFY `iidreceta` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
