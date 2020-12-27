-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-12-2020 a las 04:35:25
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecomerce`
--
CREATE DATABASE IF NOT EXISTS `ecomerce` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `ecomerce`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `ruta`, `fecha`) VALUES
(1, 'ROPA', 'ropa', '2020-12-27 03:21:23'),
(2, 'CALZADO', 'calzado', '2020-12-27 03:21:23'),
(3, 'ACCESORIOS', 'accesorios', '2020-12-27 03:21:23'),
(4, 'TECNOLOGIA', 'tecnologia', '2020-12-27 03:21:23'),
(5, 'CURSOS', 'cursos', '2020-12-27 03:21:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantilla`
--

CREATE TABLE `plantilla` (
  `id` int(11) NOT NULL,
  `barraSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `textoSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `colorFondo` text COLLATE utf8_spanish_ci NOT NULL,
  `colorTexto` text COLLATE utf8_spanish_ci NOT NULL,
  `logo` text COLLATE utf8_spanish_ci NOT NULL,
  `icono` text COLLATE utf8_spanish_ci NOT NULL,
  `redesSociales` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `plantilla`
--

INSERT INTO `plantilla` (`id`, `barraSuperior`, `textoSuperior`, `colorFondo`, `colorTexto`, `logo`, `icono`, `redesSociales`, `fecha`) VALUES
(1, '#222428', '#ffffff', '#47bac1', '#ffffff', 'views/img/plantilla/logo.png', 'views/img/plantilla/icono.png', '[{\r\n        \"red\": \"fa-facebook\",\r\n        \"estilo\": \"facebookBlanco\",\r\n        \"url\": \"https://facebook.com/\"\r\n    },\r\n    {\r\n        \"red\": \"fa-youtube\",\r\n        \"estilo\": \"youtubeBlanco\",\r\n        \"url\": \"https://youtube.com/\"\r\n    },\r\n    {\r\n        \"red\": \"fa-twitter\",\r\n        \"estilo\": \"twitterBlanco\",\r\n        \"url\": \"https://twitter.com/\"\r\n    },\r\n    {\r\n        \"red\": \"fa-google-plus\",\r\n        \"estilo\": \"googleBlanco\",\r\n        \"url\": \"https://google.com/\"\r\n    },\r\n    {\r\n        \"red\": \"fa-instagram\",\r\n        \"estilo\": \"instagramBlanco \",\r\n        \"url\": \"https:/instagram.com/\"\r\n    }\r\n]', '2020-12-26 22:39:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id` int(11) NOT NULL,
  `subcategoria` text COLLATE utf8_spanish_ci NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`id`, `subcategoria`, `id_categoria`, `ruta`, `fecha`) VALUES
(1, 'Ropa para dama', 1, 'ropa-para-dama', '2020-12-27 03:32:14'),
(2, 'Ropa para Hombre', 1, 'ropa-para-hombre', '2020-12-27 03:32:14'),
(3, 'Ropa deportiva', 1, 'ropa-deportiva', '2020-12-27 03:32:14'),
(4, 'Ropa Infantil', 1, 'ropa-Infantil', '2020-12-27 03:32:14'),
(5, 'Calzado para dama', 2, 'calzado-para-dama', '2020-12-27 03:32:14'),
(6, 'Calzado para hombre', 2, 'calzado-para-hombre', '2020-12-27 03:32:14'),
(7, 'Calzado deportivo', 2, 'calzado-deportivo', '2020-12-27 03:32:14'),
(8, 'Calzado infantil', 2, 'calzado-infantil', '2020-12-27 03:32:14'),
(9, 'Bolsos ', 3, 'bolsos', '2020-12-27 03:32:14'),
(10, 'Relojes', 3, 'relojes', '2020-12-27 03:32:14'),
(11, 'Pulseras', 3, 'pulseras', '2020-12-27 03:32:14'),
(12, 'collares', 3, 'collares', '2020-12-27 03:32:14'),
(13, 'Gafas de sol', 3, 'gafas-de-sol', '2020-12-27 03:32:14'),
(14, 'Telefono Movil', 4, 'telefonos-movil', '2020-12-27 03:32:14'),
(15, 'Tabletas Electronicas', 4, 'tabletas-electronicas', '2020-12-27 03:32:14'),
(16, 'Computadoras', 4, 'computadoras', '2020-12-27 03:32:14'),
(17, 'Auriculares', 4, 'auriculares', '2020-12-27 03:32:14'),
(18, 'Desarrollo Web', 5, 'desarrollo-web', '2020-12-27 03:32:14'),
(19, 'Aplicaciones Moviles', 5, 'aplicaciones-moviles', '2020-12-27 03:32:14'),
(20, 'Dise?o Grafico', 5, 'diseño-grafico', '2020-12-27 03:33:38'),
(21, 'Marketing Digital', 5, 'marketing-digital', '2020-12-27 03:32:14');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Base de datos: `fffc`
--
CREATE DATABASE IF NOT EXISTS `fffc` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `fffc`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario`
--

CREATE TABLE `formulario` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `email` text NOT NULL,
  `tema` text NOT NULL,
  `mensaje` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `formulario`
--
ALTER TABLE `formulario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `formulario`
--
ALTER TABLE `formulario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `liroz`
--
CREATE DATABASE IF NOT EXISTS `liroz` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `liroz`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre_cat` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre_cat`, `fecha`) VALUES
(1, 'Cajas de Madera ', '2020-09-29 21:12:54'),
(2, 'Cajas Kraft', '2020-09-24 20:35:28'),
(3, 'Envases de Vidrio', '2020-09-24 20:37:27'),
(4, 'Contenedores Plásticos con Tapa', '2020-09-24 20:37:43'),
(5, 'Contenedores de Poliestireno', '2020-09-24 20:39:17'),
(6, 'Globos', '2020-09-24 20:39:42'),
(7, 'Bebidas', '2020-09-24 20:39:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(1, 'John Fredy Bonilla', 1116546916, 'damilan1991@gmail.com', '(314) 419-6766', 'calle 30 12-28 calle 30 12-28', '1991-06-15', 0, '0000-00-00 00:00:00', '2020-10-22 15:13:02'),
(2, 'Carlos Danilo Moncada', 1118643352, 'danimoncada@gmail.com', '(301) 341-6185', 'Calle 24 # 15-28', '1990-03-10', 23, '2020-10-22 10:18:44', '2020-10-22 15:18:44'),
(3, 'Fabian Cely', 1118648630, 'cely123@gmail.com', '(310) 873-2637', 'calle 30 20-58 yopal casanare', '1989-10-20', 21, '2020-10-21 21:14:39', '2020-10-22 02:14:39'),
(4, 'Maria Monica', 1116548759, 'mariacece@gmail.com', '(310) 782-7439', 'Carrera 10 # 20-12 Yopal casanare', '1991-06-15', 15, '2020-10-22 10:10:02', '2020-10-22 15:10:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(1, 1, '1001', 'Caja tipo hexagono grande', 'views/img/products/1001/832.jpg', 13, 8000, 12000, 7, '2020-10-22 02:14:39'),
(2, 1, '1002', 'Caja tipo hexagono mediana', 'views/img/products/1002/911.jpg', 14, 6000, 10000, 6, '2020-10-22 15:12:55'),
(3, 1, '1003', 'Caja  tipo hexagono pequena', 'views/img/products/1003/419.jpg', 15, 4000, 8000, 5, '2020-10-22 02:14:39'),
(4, 1, '1004', 'Caja tipo hielera mediana', 'views/img/products/1004/669.jpg', 20, 8000, 12000, 0, '2020-10-21 20:24:12'),
(5, 1, '1005', 'Caja tipo baul con tapa deslizante grande', 'views/img/products/1005/243.jpg', 15, 10000, 20000, 5, '2020-10-22 15:13:10'),
(6, 1, '1006', 'Caja tipo baul, con tapa deslizante, mediana.', '', 20, 8000, 160000, 0, '2020-10-21 18:31:38'),
(7, 1, '1007', 'Caja cuadrada, mediana', '', 20, 4000, 8000, 4, '2020-10-22 01:51:30'),
(8, 1, '1008', 'Caja tipo canasta, grande.', '', 20, 6000, 12000, 0, '0000-00-00 00:00:00'),
(9, 1, '1009', 'Caja tipo canasta, mediana.', '', 20, 5000, 10000, 0, '0000-00-00 00:00:00'),
(10, 1, '1010', 'Caja vinera, grande.', '', 20, 8000, 16000, 0, '0000-00-00 00:00:00'),
(11, 1, '1011', 'Caja tipo mesa, grande.', '', 19, 7000, 14000, 1, '2020-10-21 18:35:29'),
(12, 1, '1012', 'Caja tipo mesa, mediana', '', 18, 6000, 12000, 2, '2020-10-21 18:35:51'),
(13, 1, '1013', 'Paquete de cubiertos, mediano.', '', 17, 1000, 2000, 3, '2020-10-21 18:36:13'),
(14, 2, '2001', 'Caja domicilio, grande.', '', 20, 800, 1600, 0, '0000-00-00 00:00:00'),
(15, 2, '2002', 'Caja domicilio, peque?a.', '', 15, 400, 800, 5, '2020-10-22 15:10:02'),
(16, 2, '2003', 'Caja tipo ventana ?nica, mediana.', '', 14, 1200, 2200, 6, '2020-10-22 15:18:44'),
(17, 2, '2004', 'Caja tipo doble ventana, peque?a.', '', 19, 900, 2000, 1, '2020-10-21 18:36:43'),
(18, 2, '2005', 'Caja dulcera, grande.', '', 19, 2900, 6000, 1, '2020-10-21 18:37:14'),
(19, 2, '2006', 'Bolsa kraft, mediana.', '', 16, 600, 2000, 4, '2020-10-22 15:18:44'),
(20, 2, '2007', 'Caja cuatro solapas, grande.', '', 17, 5000, 20000, 3, '2020-10-22 15:18:44'),
(21, 2, '2008', 'Vaso para cupcake, grande.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(22, 2, '2009', 'Vaso para cupcake, preque?o..', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(23, 2, '2010', 'Vaso para cupcake color, unico.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(24, 3, '3001', 'Jugo mediano, 250ml.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(25, 3, '3002', 'Jugo grande, 30ml.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(26, 3, '3003', 'Tipo compotero, 130cc.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(27, 3, '3004', 'Tipo bombillo, 250cc.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(28, 3, '3005', 'Tipo mayonesa, 500cc.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(29, 3, '3006', 'Tipo compotero plus, 231cc.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(30, 4, '4001', 'Tipo corazon,4oz.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(31, 4, '4002', 'Redondo postre, 8oz.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(32, 4, '4003', 'Rectangular, 18oz.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(33, 4, '4004', 'Tipo torta, peque?o.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(34, 4, '4005', '4 divisiones, unico.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(35, 4, '4006', 'C1, unico.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(36, 5, '5001', 'Vaso, 8oz.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(37, 5, '5002', 'Bandeja torta, unico.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(38, 5, '5003', 'Capacillos, unico.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(39, 5, '5004', 'Bandeja c17, unico. ', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(40, 6, '6001', 'Te hatsu, grande.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(41, 6, '6002', 'Te hatsu, peque?o.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(42, 6, '6003', 'Cerveza corona, grande.', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(45, 7, '7001', 'Cerveza Corona Botella 350ml', 'views/img/products/7001/782.jpg', 10, 3000, 4500, 10, '2020-10-22 15:13:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(58, 'John Fredy Bonilla ', 'jbonillaz', '$2a$07$asxx54ahjppf45sd87a5au3mHnZ.K6D7p7jdQakaRZcf4UDnl47L.', 'Administrador', 'views/img/users/jbonillaz/172.jpg', 1, '2020-10-22 08:47:37', '2020-10-22 13:47:37'),
(69, 'Carlos Arnulfo Cogua', 'charlee', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', 'views/img/users/charlee/647.jpg', 1, '2020-10-22 10:14:48', '2020-10-22 15:14:48'),
(71, 'Carlos Alberto Montoya', 'cmontoyac', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Administrador', 'views/img/users/cmontoyac/635.png', 1, '2020-10-01 19:01:16', '2020-10-21 14:10:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(28, 10001, 2, 58, '[{\"id\":\"11\",\"descripcion\":\"Caja tipo mesa, grande.\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"14000\",\"total\":\"14000\"}]', 2660, 14000, 16660, 'TC-12356', '2020-01-21 19:35:29'),
(29, 10002, 4, 58, '[{\"id\":\"12\",\"descripcion\":\"Caja tipo mesa, mediana\",\"cantidad\":\"2\",\"stock\":\"18\",\"precio\":\"12000\",\"total\":\"24000\"}]', 4560, 24000, 28560, 'TD-585', '2020-02-21 19:35:51'),
(30, 10002, 3, 58, '[{\"id\":\"13\",\"descripcion\":\"Paquete de cubiertos, mediano.\",\"cantidad\":\"3\",\"stock\":\"17\",\"precio\":\"2000\",\"total\":\"6000\"}]', 1140, 6000, 7140, 'TC-5874898', '2020-03-21 19:36:13'),
(31, 10002, 2, 58, '[{\"id\":\"16\",\"descripcion\":\"Caja tipo ventana ?nica, mediana.\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"2200\",\"total\":\"2200\"},{\"id\":\"17\",\"descripcion\":\"Caja tipo doble ventana, peque?a.\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"2000\",\"total\":\"2000\"}]', 798, 4200, 4998, 'Efectivo', '2020-04-21 18:36:43'),
(32, 10002, 4, 58, '[{\"id\":\"16\",\"descripcion\":\"Caja tipo ventana ?nica, mediana.\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"2200\",\"total\":\"2200\"},{\"id\":\"18\",\"descripcion\":\"Caja dulcera, grande.\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"6000\",\"total\":\"6000\"},{\"id\":\"19\",\"descripcion\":\"Bolsa kraft, mediana.\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"2000\",\"total\":\"2000\"}]', 1938, 10200, 12138, 'TC-965896', '2020-05-21 18:37:14'),
(35, 10004, 3, 58, '[{\"id\":\"45\",\"descripcion\":\"Cerveza Corona Botella 350ml\",\"cantidad\":\"10\",\"stock\":\"9\",\"precio\":\"4500\",\"total\":\"45000\"}]', 45000, 45000, 53550, 'Efectivo', '2020-10-22 15:13:38'),
(36, 10005, 3, 58, '[{\"id\":\"3\",\"descripcion\":\"Caja  tipo hexagono pequena\",\"cantidad\":\"5\",\"stock\":\"15\",\"precio\":\"8000\",\"total\":\"40000\"},{\"id\":\"2\",\"descripcion\":\"Caja tipo hexagono mediana\",\"cantidad\":\"6\",\"stock\":\"13\",\"precio\":\"10000\",\"total\":\"60000\"},{\"id\":\"1\",\"descripcion\":\"Caja tipo hexagono grande\",\"cantidad\":\"7\",\"stock\":\"13\",\"precio\":\"12000\",\"total\":\"84000\"}]', 34960, 184000, 218960, 'TC-34521', '2020-10-22 02:14:39'),
(38, 10007, 4, 58, '[{\"id\":\"5\",\"descripcion\":\"Caja tipo baul con tapa deslizante grande\",\"cantidad\":\"5\",\"stock\":\"10\",\"precio\":\"20000\",\"total\":\"100000\"},{\"id\":\"15\",\"descripcion\":\"Caja domicilio, peque?a.\",\"cantidad\":\"5\",\"stock\":\"15\",\"precio\":\"800\",\"total\":\"4000\"}]', 19760, 104000, 123760, 'TD-125487', '2020-10-22 15:10:02'),
(39, 10008, 2, 69, '[{\"id\":\"16\",\"descripcion\":\"Caja tipo ventana ?nica, mediana.\",\"cantidad\":\"4\",\"stock\":\"14\",\"precio\":\"2200\",\"total\":\"8800\"},{\"id\":\"20\",\"descripcion\":\"Caja cuatro solapas, grande.\",\"cantidad\":\"3\",\"stock\":\"17\",\"precio\":\"20000\",\"total\":\"60000\"},{\"id\":\"19\",\"descripcion\":\"Bolsa kraft, mediana.\",\"cantidad\":\"3\",\"stock\":\"16\",\"precio\":\"2000\",\"total\":\"6000\"}]', 14212, 74800, 89012, 'TC-632563256', '2020-10-22 15:18:44');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
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
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"ecomerce\",\"table\":\"subcategorias\"},{\"db\":\"ecomerce\",\"table\":\"categorias\"},{\"db\":\"ecomerce\",\"table\":\"plantilla\"},{\"db\":\"liroz\",\"table\":\"clientes\"},{\"db\":\"fffc\",\"table\":\"formulario\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

--
-- Volcado de datos para la tabla `pma__relation`
--

INSERT INTO `pma__relation` (`master_db`, `master_table`, `master_field`, `foreign_db`, `foreign_table`, `foreign_field`) VALUES
('ecomerce', 'subcategorias', 'id_categoria', 'ecomerce', 'categorias', 'id'),
('liroz', 'productos', 'id_categoria', 'liroz', 'categorias', 'id'),
('liroz', 'ventas', 'id_cliente', 'liroz', 'clientes', 'id'),
('liroz', 'ventas', 'id_vendedor', 'liroz', 'usuarios', 'id');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('ecomerce', 'subcategorias', 'subcategoria'),
('liroz', 'clientes', 'id'),
('liroz', 'productos', 'codigo'),
('liroz', 'ventas', 'productos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Volcado de datos para la tabla `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'liroz', 'productos', '{\"sorted_col\":\"`id_categoria` ASC\",\"CREATE_TIME\":\"2020-10-01 15:43:52\"}', '2020-10-22 01:30:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-12-27 03:33:06', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\",\"NavigationWidth\":0}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
