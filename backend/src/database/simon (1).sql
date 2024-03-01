-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2024 a las 02:56:24
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `simon`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `id_actividades` int(11) NOT NULL,
  `nombre_activid` varchar(50) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_final` date DEFAULT NULL,
  `fk_propi_actividad` int(11) DEFAULT NULL,
  `fk_usuario_actividades` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`id_actividades`, `nombre_activid`, `fecha_inicio`, `fecha_final`, `fk_propi_actividad`, `fk_usuario_actividades`) VALUES
(3, 'abonar', '2023-11-12', '2023-11-20', NULL, NULL),
(4, 'fumigar', '2024-01-12', '2024-01-18', NULL, NULL),
(5, 'limpia', '2024-01-20', '2024-01-26', NULL, NULL),
(6, 'abonada', '2024-04-10', '2024-04-18', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alarmas`
--

CREATE TABLE `alarmas` (
  `id_alarma` int(11) NOT NULL,
  `dia` date DEFAULT NULL,
  `tono` varchar(50) NOT NULL,
  `fk_activi_alarma` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `costos`
--

CREATE TABLE `costos` (
  `id_productos` int(11) NOT NULL,
  `nombre_produc` varchar(50) DEFAULT NULL,
  `cantidad` int(20) DEFAULT NULL,
  `costo` int(11) NOT NULL,
  `informe_costo` varchar(100) DEFAULT NULL,
  `fk_produc_actividad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `costos`
--

INSERT INTO `costos` (`id_productos`, `nombre_produc`, `cantidad`, `costo`, `informe_costo`, `fk_produc_actividad`) VALUES
(1, 'abono especial', 15, 700000, NULL, NULL),
(2, 'veneno', 4, 80000, NULL, NULL),
(3, 'guaraña', 3, 1200000, NULL, NULL),
(4, 'abono', 4, 600000, NULL, NULL),
(5, 'pakmitas', 0, 25, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cultivo`
--

CREATE TABLE `cultivo` (
  `id_cultivo` int(11) NOT NULL,
  `variedad` varchar(30) DEFAULT NULL,
  `tipo_semilla` varchar(20) DEFAULT NULL,
  `cantidad_arbustos` int(20) DEFAULT NULL,
  `fk_propiedad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cultivo`
--

INSERT INTO `cultivo` (`id_cultivo`, `variedad`, `tipo_semilla`, `cantidad_arbustos`, `fk_propiedad`) VALUES
(1, 'café especial', 'rico', 10000, NULL),
(2, 'café especial', 'oscuro', 6000, NULL),
(3, 'cafe especial', 'rojo', 5000, NULL),
(4, 'cafe opita', 'robusto', 6000, NULL),
(5, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fincas`
--

CREATE TABLE `fincas` (
  `id_finca` int(11) NOT NULL,
  `nombre_propietario` varchar(50) DEFAULT NULL,
  `nombre_propiedad` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `dimenciones` varchar(30) DEFAULT NULL,
  `divicion_por_lotes` varchar(50) DEFAULT NULL,
  `limites_finca` varchar(50) DEFAULT NULL,
  `fk_usuario_propiedad` int(11) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fincas`
--

INSERT INTO `fincas` (`id_finca`, `nombre_propietario`, `nombre_propiedad`, `direccion`, `dimenciones`, `divicion_por_lotes`, `limites_finca`, `fk_usuario_propiedad`, `estado`) VALUES
(1, NULL, 'palmiras', 'vrd san francisco', '25 km2', NULL, NULL, NULL, 'inactivo'),
(2, 'emilia', 'laguna', 'vrd cedro', '250 m2', 'doce', 'este: raul, norte: cecilia, sur: rosa, oeste: erne', NULL, NULL),
(3, NULL, 'la casa del cafe', 'las palmas', '22 km2', NULL, NULL, NULL, NULL),
(4, NULL, 'cascada', 'san isidro', '24 km2', NULL, NULL, NULL, 'inactivo'),
(5, 'raul', 'paraiso', 'timana', '450 m2', 'dos', 'este: raul, norte: cecilia, sur: rosa, oeste: erne', NULL, ''),
(6, 'maria', 'palmeras', 'saladoblanco', '200m2', ' ', ' ', NULL, NULL),
(7, 'maria', 'palmeras', 'saladoblanco', '200m2', ' ', ' ', NULL, 'inactivo'),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Maria', 'Sandra', 'Saladoblanco', '20m', ' ', '', NULL, NULL),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Roxana', 'Primavera', 'vrd Pitas', '25 km2', '5', 'norte: Raul, sur: Sandra, oriente: Manuel, occiden', NULL, NULL),
(14, 'Roxana', 'Primavera', 'vrd Pitas', '25 km2', '5', 'norte: Raul, sur: Sandra, oriente: Manuel, occiden', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_actividad`
--

CREATE TABLE `tipo_actividad` (
  `id_tipo_actividad` int(11) NOT NULL,
  `nombre_realiza` varchar(50) DEFAULT NULL,
  `trabajo_realizado` enum('abonar','guarañar','fumigar','limpiar') NOT NULL,
  `fk_tipo_actividad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_ususario` int(11) NOT NULL,
  `tipo_identificacion` enum('cedula','tarjeta','extranjera','') DEFAULT NULL,
  `numero_identifi` int(25) DEFAULT NULL,
  `nombre_usuari` varchar(50) DEFAULT NULL,
  `tipo_usuario` enum('empleado','dueño') DEFAULT NULL,
  `numero_telefono` int(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `direccion_usuario` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_ususario`, `tipo_identificacion`, `numero_identifi`, `nombre_usuari`, `tipo_usuario`, `numero_telefono`, `email`, `direccion_usuario`) VALUES
(2, NULL, NULL, 'kevin fernando andrade mahecha', NULL, 31712321, 'andrade@gamil.com', NULL),
(3, NULL, NULL, 'sergio andres vargas ramirez', NULL, 436632645, 'sergio@gmail.com', NULL),
(4, NULL, NULL, 'diego alejandro duran anacona', NULL, 56436344, 'diegoduran@gmail.com', NULL),
(5, NULL, NULL, 'nicolas stiven areiza tovar', NULL, 312434654, 'nicolaS@gmail.com', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`id_actividades`),
  ADD KEY `pone` (`fk_propi_actividad`),
  ADD KEY `termina` (`fk_usuario_actividades`);

--
-- Indices de la tabla `alarmas`
--
ALTER TABLE `alarmas`
  ADD PRIMARY KEY (`id_alarma`),
  ADD KEY `escucha` (`fk_activi_alarma`);

--
-- Indices de la tabla `costos`
--
ALTER TABLE `costos`
  ADD PRIMARY KEY (`id_productos`),
  ADD KEY `colocan` (`fk_produc_actividad`);

--
-- Indices de la tabla `cultivo`
--
ALTER TABLE `cultivo`
  ADD PRIMARY KEY (`id_cultivo`),
  ADD KEY `tiene` (`fk_propiedad`);

--
-- Indices de la tabla `fincas`
--
ALTER TABLE `fincas`
  ADD PRIMARY KEY (`id_finca`),
  ADD KEY `iniciar` (`fk_usuario_propiedad`);

--
-- Indices de la tabla `tipo_actividad`
--
ALTER TABLE `tipo_actividad`
  ADD PRIMARY KEY (`id_tipo_actividad`),
  ADD KEY `complementa` (`fk_tipo_actividad`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_ususario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividades`
--
ALTER TABLE `actividades`
  MODIFY `id_actividades` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `alarmas`
--
ALTER TABLE `alarmas`
  MODIFY `id_alarma` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `costos`
--
ALTER TABLE `costos`
  MODIFY `id_productos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cultivo`
--
ALTER TABLE `cultivo`
  MODIFY `id_cultivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `fincas`
--
ALTER TABLE `fincas`
  MODIFY `id_finca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `tipo_actividad`
--
ALTER TABLE `tipo_actividad`
  MODIFY `id_tipo_actividad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_ususario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD CONSTRAINT `pone` FOREIGN KEY (`fk_propi_actividad`) REFERENCES `cultivo` (`id_cultivo`),
  ADD CONSTRAINT `termina` FOREIGN KEY (`fk_usuario_actividades`) REFERENCES `usuarios` (`id_ususario`);

--
-- Filtros para la tabla `alarmas`
--
ALTER TABLE `alarmas`
  ADD CONSTRAINT `escucha` FOREIGN KEY (`fk_activi_alarma`) REFERENCES `actividades` (`id_actividades`);

--
-- Filtros para la tabla `costos`
--
ALTER TABLE `costos`
  ADD CONSTRAINT `colocan` FOREIGN KEY (`fk_produc_actividad`) REFERENCES `actividades` (`id_actividades`);

--
-- Filtros para la tabla `cultivo`
--
ALTER TABLE `cultivo`
  ADD CONSTRAINT `tiene` FOREIGN KEY (`fk_propiedad`) REFERENCES `fincas` (`id_finca`);

--
-- Filtros para la tabla `fincas`
--
ALTER TABLE `fincas`
  ADD CONSTRAINT `iniciar` FOREIGN KEY (`fk_usuario_propiedad`) REFERENCES `usuarios` (`id_ususario`);

--
-- Filtros para la tabla `tipo_actividad`
--
ALTER TABLE `tipo_actividad`
  ADD CONSTRAINT `complementa` FOREIGN KEY (`fk_tipo_actividad`) REFERENCES `actividades` (`id_actividades`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
