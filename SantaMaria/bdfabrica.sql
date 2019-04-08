-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 25-03-2019 a las 05:17:43
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdfabrica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chocolates`
--

DROP TABLE IF EXISTS `chocolates`;
CREATE TABLE IF NOT EXISTS `chocolates` (
  `iidchocolate` int(5) NOT NULL AUTO_INCREMENT,
  `cnombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `cdescripcion` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `imagen` blob,
  PRIMARY KEY (`iidchocolate`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `chocolates`
--

INSERT INTO `chocolates` (`iidchocolate`, `cnombre`, `cdescripcion`, `imagen`) VALUES
(1, 'prueba', 'esto es prueba', NULL),
(2, 'prueba', 'esto es prueba', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reseta`
--

DROP TABLE IF EXISTS `reseta`;
CREATE TABLE IF NOT EXISTS `reseta` (
  `iidreceta` int(5) NOT NULL AUTO_INCREMENT,
  `cnombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `cingrediente` varchar(800) COLLATE utf8_spanish_ci NOT NULL,
  `creceta` varchar(800) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`iidreceta`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `reseta`
--

INSERT INTO `reseta` (`iidreceta`, `cnombre`, `cingrediente`, `creceta`) VALUES
(1, 'Prueba receta', 'Receta ingrediente', 'receta receta'),
(2, 'Prueba receta', 'Receta ingrediente', 'receta receta'),
(3, 'ejkjk', 'jkjjkj', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
