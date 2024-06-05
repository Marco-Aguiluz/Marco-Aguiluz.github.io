-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-06-2024 a las 02:53:50
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Kevin Kaarl', 'evin Eduardo Hernández Carlos, conocido como Kevin Kaarl, es un cantante, guitarrista, compositor y músico mexicano. Se especializa en el género de música folk.​'),
(2, 'Ed Maverik', 'Eduardo Hernández Saucedo, conocido como Ed Maverick, es un cantautor y músico mexicano. Se especializa en los géneros de música folk, alterlatino y rock latino.​​ Ganó fama como artista tras el lanzamiento de su álbum debut, Mix pa\' llorar en tu cuarto y su sencillo certificado diamante en México «'),
(4, 'Queen ', 'Queen es una banda británica de rock formada en 1970 en Londres, integrada originalmente por el cantante y pianista Freddie Mercury, el guitarrista Brian May, el baterista Roger Taylor y el bajista John Deacon. '),
(5, 'Junior H', 'Antonio Herrera Pérez, más conocido como \'Junior H\' es un cantante y compositor mexicano. Se especializa en el subgénero de corridos tumbados, popularizando el género con sus primeros álbumes de estudio.'),
(6, 'Natanael Cano', 'Nathanahel Rubén Cano Monge es un cantante y compositor mexicano dedicado principalmente al género musical corridos tumbados, además de ser acreditado como precursor del mismo.​'),
(7, 'Alemán', 'Erick Raúl Alemán Ramírez, conocido como Alemán, es un rapero y compositor mexicano.​​ Comenzó en el 2014 con el sello Homegrown Mafia lanzando su álbum debut Pase de abordar.'),
(8, 'Peso pluma', 'Hassan Emilio Kabande Laija, conocido artisticamente como Peso Pluma, es un cantante y compositor mexicano. Se especializa en los géneros de corridos tumbados, reguetón y trap latino'),
(9, 'Eminem', 'Marshall Bruce Mathers III, conocido como Eminem, es un rapero, productor y actor estadounidense. Se le atribuye la popularización del hip hop en las clases medias y altas de Estados Unidos y es aclamado por la crítica como uno de los mejores raperos de todos los tiempos.'),
(10, 'Dannylux', 'Daniel Balderrama Espinoza, más conocido por su nombre artístico DannyLux, es un cantautor estadounidense');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas_canciones`
--

CREATE TABLE `artistas_canciones` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'Abrazado a ti', 2, '00:05:01', '2021-06-10', 100, ''),
(2, 'Te quiero tanto', 2, '00:04:57', '0000-00-00', 120, ''),
(3, 'Si supieras', 2, '00:04:30', '2019-05-20', 103, ''),
(4, 'Baby blue', 2, '00:04:57', '2019-02-19', 100, ''),
(5, 'Amor viejo', 2, '00:03:58', '2024-03-12', 99, ''),
(6, 'San lucas', 2, '00:04:08', '2019-03-19', 98, ''),
(7, 'Quedate', 2, '00:02:33', '2019-02-19', 97, ''),
(8, 'Colapso', 2, '00:04:10', '2018-06-19', 96, ''),
(9, 'Todo ya cambió', 2, '00:05:35', '2018-08-27', 95, ''),
(10, 'Me va a costar ', 2, '00:04:27', '2021-06-15', 1, ''),
(11, 'Toda esta ciudad', 2, '00:02:58', '2019-06-18', 3, ''),
(12, 'Es que yo te quiero a ti ', 2, '00:04:32', '2018-06-11', 4, ''),
(13, 'Mujer distante', 2, '00:04:55', '2023-06-12', 5, ''),
(14, 'Cuando te vayas', 2, '00:04:29', '2020-08-18', 78, ''),
(15, 'So high', 7, '00:03:06', '2018-11-21', 54, ''),
(16, 'Rucón', 7, '00:03:53', '2024-10-08', 65, ''),
(17, 'La tundra', 7, '00:04:17', '2019-10-22', 45, ''),
(18, 'Huracán', 7, '00:03:46', '2020-10-13', 46, ''),
(19, 'G-500', 7, '00:04:21', '2024-06-17', 47, ''),
(20, 'Mi tío Snoop', 7, '00:04:49', '2024-09-10', 9, ''),
(21, 'Tantas veces', 7, '00:03:19', '2024-06-17', 56, ''),
(22, 'Crema ', 7, '00:04:06', '2024-06-09', 97, ''),
(23, 'Cómo diamantre ', 7, '00:04:34', '2021-09-02', 95, ''),
(24, 'UN CHISTE', 7, '17:03:48', '2024-06-05', 49, ''),
(25, 'Mi loca', 7, '00:05:07', '2024-10-06', 65, ''),
(26, 'La PEOPLE', 6, '00:05:14', '2023-06-06', 66, ''),
(27, 'Nueva vida ', 7, '00:05:06', '2024-10-17', 97, ''),
(28, 'Rubicón ', 7, '00:03:40', '2024-09-04', 74, ''),
(29, 'Rompe la dompe', 6, '00:03:27', '2021-09-20', 57, ''),
(30, 'A tu manera ', 6, '00:05:18', '2024-07-02', 86, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre`) VALUES
(1, 'Electronica'),
(2, 'Pop'),
(3, 'Jazz'),
(4, 'Rock and roll'),
(5, 'Dustep'),
(6, 'corridos'),
(7, 'Rap'),
(8, 'Hip hop');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`id`, `descripcion`, `precio`) VALUES
(1, 'premium', 150),
(2, 'free', 0),
(3, 'familiar', 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `total_canciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_canciones`
--

CREATE TABLE `playlist_canciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'Jaime Fernando Hernández Mendosa ', 'jaime.fernandez@gmail.com', 3),
(2, 'Marco Uriel Aguiluz Ibarra', 'marco.aguiluz@gmail.com', 2),
(3, 'Angel Santiago Pou Mapula ', 'Angel.Pou@gmail.com', 2),
(4, 'Marco Antonio Guerrero Valle', 'Marco.Guerrero@gmail.com', 3),
(5, 'Ekain Israel Cervera Rodriguez', 'Ekain.cervera@gmail.com', 3),
(6, 'Larissa Bejarano Feliz', 'Larissa.bejarano@gmail.com', 1),
(7, 'Angel Saul Rojo Lopez', 'Ange.saul@gmail.com', 1),
(8, 'Fernando Moreno Madrigal', 'Fernando.moreno@gmail.com', 1),
(9, 'Andrea Salas Beltrán ', 'andrea.salas@gmail.com', 2),
(10, 'Camila García Osuna ', 'camila.garcia@gmail.com', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarios_id` (`usuarios_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `cancion_id` (`cancion_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistas_canciones`
--
ALTER TABLE `artistas_canciones`
  ADD CONSTRAINT `artistas_canciones_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `artistas_canciones_ibfk_2` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD CONSTRAINT `playlist_canciones_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_2` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
