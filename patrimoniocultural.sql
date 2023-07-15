-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2023 a las 23:25:25
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
-- Base de datos: `patrimoniocultural`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `decanatos`
--

CREATE TABLE `decanatos` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `decanatos`
--

INSERT INTO `decanatos` (`id`, `descripcion`) VALUES
(1, 'PARANA I'),
(2, 'PARANA II'),
(3, 'PARANA III'),
(4, 'PARANA IV'),
(5, 'DIAMANTE'),
(6, 'NOGOYA'),
(7, 'LA PAZ'),
(8, 'HASENKAMP'),
(9, 'VILLAGUAY'),
(99, 'No Aplica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diocesis`
--

CREATE TABLE `diocesis` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `sigla` char(2) NOT NULL,
  `tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `diocesis`
--

INSERT INTO `diocesis` (`id`, `descripcion`, `sigla`, `tipo`) VALUES
(1, 'PARANA', 'PA', 2),
(99, 'No Aplica', 'NA', 99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id` int(11) NOT NULL,
  `objeto` varchar(100) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parroquias`
--

CREATE TABLE `parroquias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `calle` varchar(100) NOT NULL,
  `nro` varchar(10) NOT NULL,
  `codPostal` varchar(8) NOT NULL,
  `localidad` varchar(50) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `idDiocesis` int(11) NOT NULL,
  `idDecanato` int(11) NOT NULL,
  `idTipoInstituto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `parroquias`
--

INSERT INTO `parroquias` (`id`, `descripcion`, `calle`, `nro`, `codPostal`, `localidad`, `telefono`, `idDiocesis`, `idDecanato`, `idTipoInstituto`) VALUES
(1, 'Ntra. Señora del Rosario', '', '', '3100', 'Paraná', '', 1, 1, 1),
(2, 'San Miguel Arcángel', '', '', '3100', 'Paraná', '', 1, 1, 1),
(3, 'Sagrado Corazón de Jesús', '', '', '3100', 'Paraná', '', 1, 1, 1),
(4, 'Ntra. Señora del Carmen', '', '', '3100', 'Paraná', '', 1, 1, 1),
(5, 'Ntra. Señora de la Piedad', '', '', '3100', 'Paraná', '', 1, 1, 1),
(6, 'Ntra. Señora de Fátima', '', '', '3100', 'Paraná', '', 1, 2, 1),
(7, 'Sta. Teresita del Niño Jesús', '', '', '3100', 'Paraná', '', 1, 2, 1),
(8, 'Santa Rafaela Maria', '', '', '3100', 'Paraná', '', 1, 2, 1),
(9, 'San Juan Bosco', '', '', '3100', 'Paraná', '', 1, 2, 1),
(10, 'Virgen Medalla Milagrosa', '', '', '3100', 'Paraná', '', 1, 2, 1),
(11, 'San Cayetano', '', '', '3100', 'Paraná', '', 1, 2, 1),
(12, 'San Roque', '', '', '3100', 'Paraná', '', 1, 2, 1),
(13, 'Ssmo. Sacramento y Sta.Teresa de los Andes', '', '', '3107', 'Colonia Avellaneda', '', 1, 2, 1),
(14, 'Ntra. Señora de Luján', '', '', '3100', 'Paraná', '', 1, 3, 1),
(15, 'Santa Ana', '', '', '3100', 'Paraná', '', 1, 3, 1),
(16, 'San José Obrero', '', '', '3100', 'Paraná', '', 1, 3, 1),
(17, 'San Francisco de Borja', '', '', '3100', 'Paraná', '', 1, 3, 1),
(18, 'San Benito Abad', '', '', '3107', 'San Benito', '', 1, 3, 1),
(19, 'Ntra. Señora de Pompeya', '', '', '3100', 'Oro Verde', '', 1, 3, 1),
(20, 'Ntra. Señora del Rosario de Pompeya', '', '', '3100', 'Paraná', '', 1, 3, 1),
(21, 'Santo Domingo Savio', '', '', '3100', 'Paraná', '', 1, 3, 1),
(22, 'San Agustín', '', '', '3100', 'Paraná', '', 1, 4, 1),
(23, 'San Juan Bautista', '', '', '3100', 'Paraná', '', 1, 4, 1),
(24, 'Inmaculado Corazón de María', '', '', '3100', 'Paraná', '', 1, 4, 1),
(25, 'Cristo Peregrino y Sto. Domingo de Guzmán', '', '', '3100', 'Paraná', '', 1, 4, 1),
(26, 'Ntra. Señora de Guadalupe', '', '', '3100', 'Paraná', '', 1, 4, 1),
(27, 'San Cipriano y San Francisco', '', '', '3105', 'Diamante', '', 1, 5, 1),
(28, 'San José ', '', '', '3116', 'Crespo', '', 1, 5, 1),
(29, 'Ntra. Señora  del Rosario', '', '', '3116', 'Crespo', '', 1, 5, 1),
(30, 'Inmaculada Concepción', '', '', '3101', 'Valle María', '', 1, 5, 1),
(31, 'Ntra. Señora de la Esperanza', '', '', '3101', 'Las Cuevas', '', 1, 5, 1),
(32, 'Santa Ana', '', '', '3261', 'María Luisa', '', 1, 5, 1),
(33, 'Ntra. Señora del Carmen', '', '', '3150', 'Nogoyá', '', 1, 6, 1),
(34, 'San Ramón', '', '', '3150', 'Nogoyá', '', 1, 6, 1),
(35, 'San Lucas Evangelista', '', '', '3158', 'Lucas Gonzaléz', '', 1, 6, 1),
(36, 'Sagrado Corazón de Jesús', '', '', '3164', 'Ramirez', '', 1, 6, 1),
(37, 'Ntra. Señora de la Merced', '', '', '3156', 'Hernández', '', 1, 6, 1),
(38, 'Ntra. Señora de la Paz', '', '', '3190', 'La Paz', '', 1, 7, 1),
(39, 'San José', '', '', '3187', 'Feliciano', '', 1, 7, 1),
(40, 'Santa Elena', '', '', '3192', 'Santa Elena', '', 1, 7, 1),
(41, 'San José', '', '', '3134', 'Hasenkamp', '', 1, 8, 1),
(42, 'María Auxiliadora', '', '', '3133', 'María Grande', '', 1, 8, 1),
(43, 'Ntra. Señora de la Merced', '', '', '3122', 'Cerrito', '', 1, 8, 1),
(44, 'San Miguel', '', '', '3142', 'Bovril', '', 1, 8, 1),
(45, 'Santa Ana', '', '', '3109', 'Viale', '', 1, 8, 1),
(46, 'Ntra. Señora de la Merced', '', '', '3117', 'Seguí', '', 1, 8, 1),
(47, 'Cristo Rey', '', '', '3144', 'Sauce de Luna', '', 1, 8, 1),
(48, 'Ntra. Señora de la Merced', '', '', '3127', 'Hernandarias', '', 1, 8, 1),
(49, 'Inmaculada Concepción', '', '', '3113', 'Villa Urquiza', '', 1, 8, 1),
(50, 'Santa Rosa de Lima', '', '', '3240', 'Villaguay', '', 1, 9, 1),
(51, 'Inmaculada Concepción', '', '', '3240', 'Villaguay', '', 1, 9, 1),
(52, 'Cristo Rey', '', '', '3252', 'Villa Clara', '', 1, 9, 1),
(53, 'Monjas Benedictinas', '', '', '3261', 'María Luisa', '', 99, 99, 3),
(54, 'Monjas Carmelitas', '', '', '3150', 'Nogoyá', '', 99, 99, 3),
(55, 'Hnas. De San Antonio de Padua', '', '', '3187', 'Feliciano', '', 99, 99, 3),
(56, 'Hnas. Congregación de Jesús', '', '', '3122', 'Cerrito', '', 99, 99, 3),
(57, 'Hnas. De las Escuelas de Ntra. Señora', '', '', '3192', 'Santa Elena', '', 99, 99, 3),
(58, 'Hnas. Franciscanas de la Caridad', '', '', '3100', 'Paraná', '', 99, 99, 3),
(59, 'Hnas. Terciarias Misioneras Franciscanas', '', '', '3158', 'Lucas Gonzaléz', '', 99, 99, 3),
(60, 'Hnas. Franciscanas de Gante', '', '', '3100', 'Paraná', '', 99, 99, 3),
(61, 'Hnas. Del Huerto', '', '', '3100', 'Paraná', '', 99, 99, 3),
(62, 'Hnas. Mercedarias', '', '', '3100', 'Paraná', '', 99, 99, 3),
(63, 'Hnas. Obreras Catequistas', '', '', '3100', 'Paraná', '', 99, 99, 3),
(64, 'Hnas. Hijas de San Camilo', '', '', '3240', 'Villaguay', '', 99, 99, 3),
(65, 'Hnas. De la Santa Cruz', '', '', '3142', 'Bovril', '', 99, 99, 3),
(66, 'Hnas. Siervas de la Divina Providencia', '', '', '3100', 'Paraná', '', 99, 99, 3),
(67, 'Hnas. Siervas del Espiritu Santo', '', '', '3105', 'Diamante', '', 99, 99, 3),
(68, 'Hnas. Ursulinas Grises', '', '', '3100', 'Paraná', '', 99, 99, 3),
(69, 'Servidoras', '', '', '3100', 'Paraná', '', 99, 99, 3),
(70, 'Hnos. Maristas', '', '', '3150', 'Nogoyá', '', 99, 99, 4),
(71, 'Legionarios de Cristo', '', '', '3100', 'Paraná', '', 99, 99, 4),
(72, 'Misioneros del Verbo Divino', '', '', '3101', 'Valle María', '', 99, 99, 4),
(73, 'Servidores de Jesús y María', '', '', '3100', 'Oro Verde', '', 99, 99, 4),
(74, 'Sede Arzobispado', '', '', '3100', 'Paraná', '', 99, 99, 2),
(75, 'Residencia Arzobispal', '', '', '3100', 'Paraná', '', 99, 99, 2),
(76, 'Seminario Arquidiocesano', '', '', '3100', 'Paraná', '', 99, 99, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoinstitucion`
--

CREATE TABLE `tipoinstitucion` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipoinstitucion`
--

INSERT INTO `tipoinstitucion` (`id`, `descripcion`) VALUES
(1, 'Parroquias'),
(2, 'Sedes'),
(3, 'Casa Religiosas'),
(4, 'Casa Religiosos'),
(99, 'No Aplica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `password` varchar(250) NOT NULL,
  `nivel` int(11) NOT NULL,
  `idInstitucion` int(11) NOT NULL,
  `apellidoNombres` varchar(50) NOT NULL,
  `domicilio` varchar(200) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `decanatos`
--
ALTER TABLE `decanatos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `diocesis`
--
ALTER TABLE `diocesis`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `parroquias`
--
ALTER TABLE `parroquias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipoinstitucion`
--
ALTER TABLE `tipoinstitucion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD KEY `idInstitucion` (`idInstitucion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `decanatos`
--
ALTER TABLE `decanatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `diocesis`
--
ALTER TABLE `diocesis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `parroquias`
--
ALTER TABLE `parroquias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `tipoinstitucion`
--
ALTER TABLE `tipoinstitucion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
