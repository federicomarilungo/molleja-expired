-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-05-2020 a las 01:42:46
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
CREATE DATABASE IF NOT EXISTS `bierdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bierdb`;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bierdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bier`
--

CREATE TABLE `bier` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` int(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `tipo` varchar(50) NOT NULL COMMENT 'Rubia, Negra, Roja.',
  `ibu` int(2) NOT NULL,
  `alcohol` int(2) NOT NULL,
  `likes` int(10) NOT NULL,
  `dislikes` int(10) NOT NULL,
  `img` varchar(255) NOT NULL,
  `creation_date` date NOT NULL,
  `state_code` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla padre Bierlife';

--
-- Volcado de datos para la tabla `bier`
--

INSERT INTO `bier` (`Id`, `code`, `name`, `brand`, `description`, `tipo`, `ibu`, `alcohol`, `likes`, `dislikes`, `img`, `creation_date`, `state_code`) VALUES
(1, 45, 'sarasa', 'segunda marca', 'deliciosa', 'negra', 45, 99, 12, 32, 'Imagen_birra.jpg', '2020-05-13', 1),
(2, 66, 'Seresa', 'Primera marca', 'muy buena', 'colorada', 55, 12, 10000, 12, 'Imagen.jpg', '2020-05-29', 1),
(3, 23, 'mariana', 'Imperial', 'Muy fea', 'rubia', 99, 5, 22, 36, 'Imagen.jpg', '0000-00-00', 1),
(4, 23, 'Romina', 'Imperial', 'Muy buena', 'rubia', 99, 5, 22, 36, 'Imagen.jpg', '2020-01-02', 1),
(5, 35, 'Estela', 'Estelita', 'Muy deliciosa', 'Rubia', 55, 87, 52, 9000, 'img.jpg', '0000-00-00', 1),
(6, 35, 'Estela', 'Estelita', 'Muy deliciosa', 'Rubia', 55, 87, 52, 9000, 'img.jpg', '0000-00-00', 1),
(7, 0, '', '', '', '', 0, 0, 0, 0, '', '0000-00-00', 0),
(8, 77, 'Richard', 'Ricardo', 'Muy deliciosa', 'Rubia', 55, 87, 52, 9000, 'img.jpg', '0000-00-00', 1),
(9, 71, 'Carlitos', 'Pochito', 'Muy deliciosa', 'Rubia', 55, 87, 52, 9000, 'img.jpg', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `offer`
--

CREATE TABLE `offer` (
  `bier_id` int(4) NOT NULL,
  `day` varchar(20) NOT NULL,
  `offer_desc` varchar(50) NOT NULL,
  `biers` int(4) NOT NULL,
  `state_code` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bier`
--
ALTER TABLE `bier`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`bier_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bier`
--
ALTER TABLE `bier`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
