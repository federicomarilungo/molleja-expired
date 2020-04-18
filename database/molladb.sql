-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 13-04-2020 a las 01:36:42
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
CREATE DATABASE IF NOT EXISTS `mollejadb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mollejadb`;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `monadb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expend`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `descr` text CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `value` int(100) NOT NULL,
  `creation_date` date NOT NULL,
  `finish_date` date NOT NULL,
  `state_code` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- --------------------------------------------------------


-- AUTO_INCREMENT de la tabla `expend`

ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
