-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2019 a las 03:18:03
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
-- Base de datos: `hotel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adicionales`
--

CREATE TABLE `adicionales` (
  `COD_ADICIONAL` int(11) NOT NULL,
  `DESCRIPCION` text COLLATE utf8_spanish_ci NOT NULL,
  `Precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquiler`
--

CREATE TABLE `alquiler` (
  `cod_alqui` int(11) NOT NULL,
  `dni` text CHARACTER SET utf8 NOT NULL,
  `apellidos` text CHARACTER SET utf8 NOT NULL,
  `nombres` text CHARACTER SET utf8 NOT NULL,
  `plan` text CHARACTER SET utf8 NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `alquiler`
--

INSERT INTO `alquiler` (`cod_alqui`, `dni`, `apellidos`, `nombres`, `plan`, `fecha`) VALUES
(14, '12345678', 'Zapata', 'Juan', 'doble', '2019-06-26'),
(15, '12345678', 'Zapata', 'Juan', 'doble', '2019-06-14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `COD_CLIENTE` int(11) NOT NULL,
  `COD_RESERVA` int(11) NOT NULL,
  `DNI` text CHARACTER SET utf8 NOT NULL,
  `APELLIDO` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `NOMBRE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `SEXO` text CHARACTER SET utf8 NOT NULL,
  `FECHA_ING` date NOT NULL,
  `FECHA_SAL` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`COD_CLIENTE`, `COD_RESERVA`, `DNI`, `APELLIDO`, `NOMBRE`, `SEXO`, `FECHA_ING`, `FECHA_SAL`) VALUES
(68, 0, '12345678', 'Zapata', 'Juan', 'Hombre', '2019-05-29', '2019-06-26'),
(69, 0, '72838465', 'Ruiz Rojas', 'Cindy Daniela', 'Mujer', '2019-06-11', '2019-06-29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `COD_BOLETA` int(11) NOT NULL,
  `COD_ADICIONAL` int(11) NOT NULL,
  `COD_HABITACION` int(11) NOT NULL,
  `CANTIDAD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitacion`
--

CREATE TABLE `habitacion` (
  `COD_HABITACION` int(11) NOT NULL,
  `COD_THABITACION` int(11) NOT NULL,
  `NRO_HABITACION` int(4) NOT NULL,
  `PISO` text COLLATE utf8_spanish_ci NOT NULL,
  `DESCRIPCION` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `COD_BOLETA` int(11) NOT NULL,
  `COD_CLIENTE` int(11) NOT NULL,
  `COD_RESERVA` int(11) NOT NULL,
  `cod_alqui` int(11) NOT NULL,
  `COD_PERSONAL` int(11) NOT NULL,
  `FECHA` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `COD_PERSONAL` int(11) NOT NULL,
  `COD_TEMPLEADO` int(11) NOT NULL,
  `APELLIDOS` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `NOMBRE` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `DNI` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `TELEFONO` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `DIRECCION` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Turno` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`COD_PERSONAL`, `COD_TEMPLEADO`, `APELLIDOS`, `NOMBRE`, `DNI`, `TELEFONO`, `DIRECCION`, `Turno`) VALUES
(1, 0, 'Zapata', 'Juan', '3124122', '9987987987', 'Jr. san jose mz tl 12', 'noche');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `COD_RESERVA` int(11) NOT NULL,
  `COD_CLIENTE` text CHARACTER SET utf8 NOT NULL,
  `n_personas` text CHARACTER SET utf8 NOT NULL,
  `plan` text CHARACTER SET utf8 NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`COD_RESERVA`, `COD_CLIENTE`, `n_personas`, `plan`, `fecha`) VALUES
(1, 'jczr4', '13', 'doble', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_empleado`
--

CREATE TABLE `t_empleado` (
  `COD_TEMPLEADO` int(11) NOT NULL,
  `DESCRIPCION` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_habitacion`
--

CREATE TABLE `t_habitacion` (
  `COD_ THABITACION` int(11) NOT NULL,
  `DESCRIPCION` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adicionales`
--
ALTER TABLE `adicionales`
  ADD PRIMARY KEY (`COD_ADICIONAL`);

--
-- Indices de la tabla `alquiler`
--
ALTER TABLE `alquiler`
  ADD PRIMARY KEY (`cod_alqui`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`COD_CLIENTE`);

--
-- Indices de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD PRIMARY KEY (`COD_HABITACION`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`COD_BOLETA`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`COD_PERSONAL`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`COD_RESERVA`);

--
-- Indices de la tabla `t_empleado`
--
ALTER TABLE `t_empleado`
  ADD PRIMARY KEY (`COD_TEMPLEADO`);

--
-- Indices de la tabla `t_habitacion`
--
ALTER TABLE `t_habitacion`
  ADD PRIMARY KEY (`COD_ THABITACION`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `adicionales`
--
ALTER TABLE `adicionales`
  MODIFY `COD_ADICIONAL` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `alquiler`
--
ALTER TABLE `alquiler`
  MODIFY `cod_alqui` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `COD_CLIENTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  MODIFY `COD_HABITACION` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `COD_BOLETA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `COD_PERSONAL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `COD_RESERVA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_empleado`
--
ALTER TABLE `t_empleado`
  MODIFY `COD_TEMPLEADO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t_habitacion`
--
ALTER TABLE `t_habitacion`
  MODIFY `COD_ THABITACION` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
