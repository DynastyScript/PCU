-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-01-2018 a las 14:23:19
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `poplife`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas`
--

CREATE TABLE `cuentas` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(24) NOT NULL,
  `Contra` varchar(120) NOT NULL,
  `Ropa` int(3) NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `Genero` int(11) NOT NULL,
  `Vida` float NOT NULL,
  `Chaleco` float NOT NULL,
  `Muertes` int(11) NOT NULL,
  `Asesinatos` int(11) NOT NULL,
  `Faccion` int(11) NOT NULL,
  `Rango` int(11) NOT NULL,
  `Trabajo` int(11) NOT NULL,
  `Dinero` int(11) NOT NULL,
  `Interior` int(11) NOT NULL,
  `VW` int(11) NOT NULL,
  `Edad` int(11) NOT NULL,
  `Admin` int(11) NOT NULL,
  `Arrestado` int(11) NOT NULL,
  `Banco` int(11) NOT NULL,
  `Reputacion` int(11) NOT NULL,
  `Certificado` int(11) NOT NULL,
  `Llave1` int(11) NOT NULL,
  `Llave2` int(11) NOT NULL,
  `Empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuentas`
--

INSERT INTO `cuentas` (`ID`, `Nombre`, `Contra`, `Ropa`, `X`, `Y`, `Z`, `Genero`, `Vida`, `Chaleco`, `Muertes`, `Asesinatos`, `Faccion`, `Rango`, `Trabajo`, `Dinero`, `Interior`, `VW`, `Edad`, `Admin`, `Arrestado`, `Banco`, `Reputacion`, `Certificado`, `Llave1`, `Llave2`, `Empresa`) VALUES
(8, 'Jackson_Marley', 'ibantete', 280, 1250.98, 337.414, 19.532, 0, 100, 0, 0, 0, 1, 2, 0, 1000, 0, 0, 23, 1, 0, 10000, 1, 1, 1, 0, 0),
(9, 'Jackson_Marle', 'ibantete', 47, -204.078, 1231.02, 19.742, 0, 100, 0, 1, 0, 1, 2, 1, 50, 0, 0, 25, 1, 0, 25000, 0, 1, 0, 0, 0),
(10, 'Jonatan_Saez', 'ibantete', 46, 2433.36, 35.884, 26.484, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 0, 1, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `ID` int(11) NOT NULL,
  `X` float NOT NULL,
  `Y` float NOT NULL,
  `Z` float NOT NULL,
  `Precio` int(11) NOT NULL,
  `Veh1` int(11) NOT NULL,
  `Veh2` int(11) NOT NULL,
  `Veh3` int(11) NOT NULL,
  `Veh4` int(11) NOT NULL,
  `Veh5` int(11) NOT NULL,
  `Veh6` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facciones`
--

CREATE TABLE `facciones` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(120) NOT NULL,
  `Rango1` varchar(100) NOT NULL,
  `Rango2` varchar(100) NOT NULL,
  `Rango3` varchar(100) NOT NULL,
  `Rango4` varchar(100) NOT NULL,
  `Rango5` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `facciones`
--

INSERT INTO `facciones` (`ID`, `Nombre`, `Rango1`, `Rango2`, `Rango3`, `Rango4`, `Rango5`) VALUES
(1, 'LSPD - Los Santos Police Department', 'Cadete', 'Oficial', 'Teniente', 'Coronel', 'General');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_admins`
--

CREATE TABLE `log_admins` (
  `Log_ID` int(11) NOT NULL,
  `Dia` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Log` varchar(144) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `ID` int(11) NOT NULL,
  `Modelo` int(11) NOT NULL,
  `Z` float NOT NULL,
  `Y` float NOT NULL,
  `X` float NOT NULL,
  `Precio` int(11) NOT NULL,
  `A` float NOT NULL,
  `Dueño` varchar(100) NOT NULL,
  `VW` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`ID`, `Modelo`, `Z`, `Y`, `X`, `Precio`, `A`, `Dueño`, `VW`) VALUES
(1, 400, 0, 0, 0, 75000, 0, 'Jackson_Marley', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `facciones`
--
ALTER TABLE `facciones`
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indices de la tabla `log_admins`
--
ALTER TABLE `log_admins`
  ADD PRIMARY KEY (`Log_ID`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `log_admins`
--
ALTER TABLE `log_admins`
  MODIFY `Log_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
