-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-02-2024 a las 15:51:24
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tecnoventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `idAdmin` int(11) NOT NULL,
  `nomAdmin` varchar(50) NOT NULL,
  `apeAdmin` varchar(50) NOT NULL,
  `cargo` varchar(30) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `correoAdmin` varchar(50) NOT NULL,
  `passAdmin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`idAdmin`, `nomAdmin`, `apeAdmin`, `cargo`, `estado`, `correoAdmin`, `passAdmin`) VALUES
(1, 'Milena', 'Cortez', 'Programador', 'Activo', 'malienacortez@mail.com', 'AdminMile2023'),
(2, 'Mario', 'Perdomo', 'Programador', 'Activo', 'marioperdomo@gmail.com', 'MarioProgram2'),
(3, 'Jeison', 'Mendoza', 'Desarrollador', 'Activo', 'jeisonalejandro33@mail.com', 'Je1s0nDesarrolla'),
(6, 'Paula', 'Carreño', 'Desarrollador', 'Activo', 'mariapau051125@gmail.com', 'd03a9f881a735d32bad6dd9ce091dbf9'),
(7, 'Santiago Andrés', 'Ortega Carbonell', 'Admin', 'Activo', 'santiago.ortega488@gmail.com', '2e791d8943eb071e2b1ec985cd825117'),
(8, 'william', 'Marin', 'Administrador', 'Activo', 'williamcamargo909@gmail.com', '25f9e794323b453885f5181f1b624d0b'),
(9, 'Lisbeth', 'Piñeros', 'Administrador', 'Activo', 'lizbethpineros41@gmail.com', '7bfbffcbc493f249c77955ea01b9d6bc'),
(10, 'Diego', 'Penagos', 'Administrador', 'Activo', 'dypc.890@gmail.com', '795b3e9401f019db56c2b9343d3cb374'),
(11, 'Sofia', 'Alvarado', 'Administrador', 'Activo', 'sofiaaax2005@gmail.com', '52ac1f808faf491d077e03ee113a945f'),
(12, 'Edwin', 'Marin', 'Ing', 'Activo', 'edwinmarin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caracteristicas`
--

CREATE TABLE `caracteristicas` (
  `idCaract` int(11) NOT NULL,
  `nomCaract` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `caracteristicas`
--

INSERT INTO `caracteristicas` (`idCaract`, `nomCaract`) VALUES
(1, 'Memoria Interna'),
(2, 'Memoria RAM'),
(3, 'Resolucion Camara Frontal'),
(4, 'Resolucion Camara Posterior'),
(5, 'Marca Procesador'),
(6, 'Sistema Operativo'),
(7, 'Version Sistema Operativo'),
(8, 'Nucleos del Procesador'),
(9, 'Tipo de Pantalla'),
(10, 'Resolucion Pantalla'),
(11, 'Tamaño Pantalla'),
(12, 'Capacidad Bateria'),
(13, 'Dual SIM'),
(14, 'Color'),
(15, 'Longitud Cable Cm'),
(16, 'Red Transmisión de Datos'),
(17, 'Cantidad Camaras Posteriores'),
(18, 'Resolucion Otras Camaras Posteriores'),
(19, 'Flash Posterior'),
(20, 'Flash Frontal'),
(21, 'Velocidad del Procesador'),
(22, 'Duracion Bateria'),
(23, 'Resolucion Camara Web'),
(24, 'No. Puertos HDMI'),
(25, 'No. Puertos USB'),
(26, 'No. Puertos USB Tipo C'),
(27, 'No. Puertos SD'),
(28, 'No. Salidas de Audio'),
(29, 'Tipos de Puertos'),
(30, 'Tipo de Discos que Incluye'),
(31, 'Capacidad de Disco'),
(32, 'Procesador'),
(33, 'Modelo Procesador'),
(34, 'Marca Tarjeta de Video/Grafica'),
(35, 'No. Puertos LAN Ethernet'),
(36, 'Nivel de uso'),
(37, 'Fuentes de Alimentacion de Energia'),
(38, 'Resistencia a'),
(39, 'Portabilidad'),
(40, 'Rango Bluetooth'),
(41, 'Opciones Conectividad'),
(42, 'Conexion'),
(43, 'Ancho en Cm'),
(44, 'Alto en Cm'),
(45, 'Fondo en Cm'),
(46, 'Caracteristicas Especiales'),
(47, 'Extra');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `codigoCat` int(11) NOT NULL,
  `nombreCat` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`codigoCat`, `nombreCat`) VALUES
(1, 'Celulares'),
(2, 'Portatiles'),
(3, 'Computadores'),
(4, 'Tablets'),
(5, 'Audifonos'),
(6, 'Parlantes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int(11) NOT NULL,
  `numId` varchar(30) NOT NULL,
  `tipoId` varchar(2) NOT NULL,
  `nomCliente` varchar(50) NOT NULL,
  `apeCliente` varchar(50) NOT NULL,
  `fechaNac` date NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `passCliente` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`idCliente`, `numId`, `tipoId`, `nomCliente`, `apeCliente`, `fechaNac`, `telefono`, `correo`, `passCliente`) VALUES
(1, '1021345619', 'CC', 'Marcela', 'Giraldo', '2000-03-16', '3460327599', 'marcela.gir2000@mail.com', 'marcela.gir2000'),
(2, '12567943', 'CE', 'Eduardo', 'Pedraza', '1989-09-23', '3505674391', 'eduardo_.pedraza89@mail.com', 'eduardo_.pedraza89'),
(3, '1067318605', 'CC', 'Daniela', 'Ospina', '1996-07-19', '3108238816', 'daniiiops96.19@hmail.com', 'daniiiops96.19'),
(4, '1021345619', 'CC', 'Carlos', 'Giraldo', '1900-01-26', '3126249176', 'carlitosgiraldo0016@mail.com', 'carlitosgiraldo0016'),
(5, '98765432', 'CE', 'Paola', 'Suarez', '2001-11-20', '3402565601', 'paolasuarezzz2011@hmail.com', 'paolasuarezzz2011'),
(7, '1021313246', 'CC', 'Maria', 'Carreño', '2004-11-25', '3504160019', 'mariapau051125@gmail.com', '$2y$10$RqDvXu4iTGRswL.gdyMn/u/wsm0.VQP5Qm2TNFLqWnX8Jm2VGHgNO'),
(17, '1112149558', 'CC', 'Sofia', 'Alvarado', '2005-12-19', '3209962922', 'sofiaaax2005@gmail.com', '$2y$10$yqcnel6sJaX.VI2V.a8x3.go2RmtwZCxAimouzCNi3q7iYR4l32oi'),
(18, '1023368224', 'CC', 'Diego', 'Penagos', '2005-03-25', '3015429064', 'dypc.890@gmail.com', '$2y$10$xToBOq8yAIez1b/YOoFC4.kegOyi3MPCUjuJPbOPqxl5DrOIZY2Wi'),
(19, '1014661233', 'CC', 'Lisbeth', 'Piñeros', '2005-12-01', '3154340136', 'lizbethpineros41@gmail.com', '$2y$10$hvHLAFh5Kx/MzzE/qPOLe.pQ2/oi6n3NO.W2oCRoSlRY6QdMB.v3q'),
(20, '1139424645', 'CC', 'Santiago Andrés', 'Ortega Carbonell', '2005-11-05', '3028642617', 'santiago.ortega488@gmail.com', '$2y$10$f6VSaswEje995e/p/klsAOXcbIbSSr4PpE5WALMJyWcgN75BeP2t2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallepedidos`
--

CREATE TABLE `detallepedidos` (
  `idDetalle` int(11) NOT NULL,
  `codPedido` int(11) DEFAULT NULL,
  `codProd` int(11) DEFAULT NULL,
  `cantidadProd` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `detallepedidos`
--

INSERT INTO `detallepedidos` (`idDetalle`, `codPedido`, `codProd`, `cantidadProd`) VALUES
(1, 1, 3, 1),
(2, 3, 4, 1),
(3, 2, 5, 1),
(4, 4, 4, 1),
(5, 1, 2, 1),
(6, 4, 1, 1),
(7, 3, 2, 1),
(8, 5, 9, 1),
(9, 6, 9, 1),
(10, 2, 1, 2),
(11, 3, 2, 20),
(12, 13, 3, 1),
(13, 14, 18, 1),
(14, 14, 1, 1),
(15, 15, 15, 1),
(16, 16, 18, 2),
(17, 16, 3, 1),
(20, 19, 1, 1),
(21, 20, 66, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `codFactura` int(11) NOT NULL,
  `idProv` int(11) NOT NULL,
  `codProd` int(11) NOT NULL,
  `fechaFact` date NOT NULL,
  `iva` decimal(5,2) NOT NULL,
  `totalFact` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`codFactura`, `idProv`, `codProd`, `fechaFact`, `iva`, `totalFact`) VALUES
(1, 1, 1, '2022-01-10', '0.19', 773500),
(2, 3, 5, '2022-01-03', '0.19', 1904000),
(3, 2, 2, '2022-01-01', '0.19', 546210),
(4, 1, 4, '2021-02-15', '0.19', 357000),
(5, 4, 3, '2021-02-10', '0.19', 1910000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infoproductos`
--

CREATE TABLE `infoproductos` (
  `idInfo` int(11) NOT NULL,
  `codProd` int(11) DEFAULT NULL,
  `idCaract` int(11) DEFAULT NULL,
  `valor` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `infoproductos`
--

INSERT INTO `infoproductos` (`idInfo`, `codProd`, `idCaract`, `valor`) VALUES
(1, 1, 16, '5G'),
(2, 1, 13, 'Si'),
(3, 1, 29, 'Tipo C'),
(4, 1, 3, '16Mpx'),
(5, 1, 17, '2'),
(6, 1, 4, '32 Mpx'),
(7, 1, 18, '8Mpx + 2Mpx'),
(8, 1, 20, 'No'),
(9, 1, 19, 'Si'),
(10, 1, 1, '64GB'),
(11, 1, 2, '4GB'),
(12, 1, 5, 'Qualcomm'),
(13, 1, 6, 'Android'),
(14, 1, 7, 'Android 13'),
(15, 1, 8, '8'),
(16, 1, 21, '2,8GHz'),
(17, 1, 1, '64GB'),
(18, 1, 9, 'Amoled'),
(19, 1, 10, 'FHD+'),
(20, 1, 11, '6.67 Pulgadas'),
(21, 1, 12, '5000 mAh'),
(22, 1, 38, 'Agua y Polvo'),
(23, 1, 41, 'Bluetooth y WiFi'),
(24, 1, 47, 'Cable de cargador y adapatador'),
(25, 1, 46, 'Lector de huella'),
(26, 1, 37, 'Bateria Recargable Interna'),
(27, 1, 14, 'Negro'),
(28, 2, 16, '4G'),
(29, 2, 13, 'Si'),
(30, 2, 29, 'Tipo C'),
(31, 2, 3, '13Mpx'),
(32, 2, 17, '2'),
(33, 2, 4, '50Mpx'),
(34, 2, 18, '5Mpx+2Mpx'),
(35, 2, 20, 'No'),
(36, 2, 19, 'Si'),
(37, 2, 1, '128GB'),
(38, 2, 2, '4GB'),
(39, 2, 5, 'Mediatek'),
(40, 2, 6, 'Android'),
(41, 2, 7, 'Android 13'),
(42, 2, 8, '8'),
(43, 2, 21, '2.2GHz,2GHz'),
(44, 2, 9, 'Super Amoled'),
(45, 2, 10, 'FHD+'),
(46, 2, 11, '6.6  Pulgadas'),
(47, 2, 12, '5000 mAh'),
(48, 2, 38, 'NA'),
(49, 2, 41, 'Bluetooth, USB y WiFi'),
(50, 2, 47, 'Incluye Cable USB, Pin Ejección '),
(51, 2, 46, 'Lector de huella'),
(52, 2, 37, 'Bateria Recargable Interna'),
(53, 2, 14, 'Negro'),
(54, 3, 16, '4G'),
(55, 3, 13, 'No'),
(56, 3, 29, 'Tipo C'),
(57, 3, 3, '13Mpx'),
(58, 3, 17, '3'),
(59, 3, 4, '64Mpx'),
(60, 3, 18, '8Mpx+2Mpx+2Mpx'),
(61, 3, 20, 'No'),
(62, 3, 19, 'Si'),
(63, 3, 1, '128GB'),
(64, 3, 2, '4GB'),
(65, 3, 5, 'Snapdragon 662'),
(66, 3, 6, 'Android'),
(67, 3, 7, 'Android 12'),
(68, 3, 8, '8'),
(69, 3, 21, '2.2GHz,2GHz'),
(70, 3, 9, 'Super Amoled'),
(71, 3, 10, 'Full HD'),
(72, 3, 11, '6.6  Pulgadas'),
(73, 3, 12, '5000 mAh'),
(74, 3, 38, 'NA'),
(75, 3, 41, 'Bluetooth, USB y WiFi'),
(76, 3, 47, 'Incluye Cable USB, Adaptador carga '),
(77, 3, 46, 'Lector de huella'),
(78, 3, 37, 'Bateria Recargable Interna'),
(79, 3, 14, 'Negro'),
(80, 6, 16, '4G'),
(81, 6, 13, 'No'),
(82, 6, 29, 'Tipo C'),
(83, 6, 3, '20 Mpx'),
(84, 6, 17, '3'),
(85, 6, 4, '50Mpx'),
(86, 6, 18, '2Mpx+2Mpx'),
(87, 6, 20, 'No'),
(88, 6, 19, 'Si'),
(89, 6, 1, '128GB'),
(90, 6, 2, '6GB'),
(91, 6, 5, 'Snapdragon 860'),
(92, 6, 6, 'Android'),
(93, 6, 7, 'Android 11'),
(94, 6, 8, '8'),
(95, 6, 21, '2.96 GHz'),
(96, 6, 9, 'IPS'),
(97, 6, 10, 'FHD+'),
(98, 6, 11, '6,67 Pulgadas'),
(99, 6, 12, '5160 mAh'),
(100, 6, 38, 'NA'),
(101, 6, 41, 'Bluetooth, USB y WiFi'),
(102, 6, 47, 'Incluye Cable USB, Pin Ejección '),
(103, 6, 46, 'Lector de huella'),
(104, 6, 37, 'Bateria Recargable Interna'),
(105, 6, 14, 'Phantom Black'),
(132, 15, 16, '5G'),
(133, 15, 13, 'Si'),
(134, 15, 29, 'Tipo C'),
(135, 15, 3, '32 Mpx'),
(136, 15, 17, '3'),
(137, 15, 4, '12 Mpx'),
(138, 15, 18, '12Mpx+8Mpx'),
(139, 15, 20, 'No'),
(140, 15, 19, 'Si'),
(141, 15, 1, '128GB'),
(142, 15, 2, '6GB'),
(143, 15, 5, 'Samsung Exynos 990'),
(144, 15, 6, 'Android'),
(145, 15, 7, 'Android 10'),
(146, 15, 8, '8'),
(147, 15, 21, '2.73 GHz'),
(148, 15, 9, 'Super Amoled'),
(149, 15, 10, 'FHD+'),
(150, 15, 11, '6.5  Pulgadas'),
(151, 15, 12, '4500 mAh'),
(152, 15, 38, 'resistencia al agua y al polvo IP68'),
(153, 15, 41, 'Bluetooth, USB y WiFi'),
(154, 15, 47, 'Incluye Cable USB, Pin Ejección '),
(155, 15, 46, 'Lector de huella'),
(156, 15, 37, 'Bateria Recargable Interna'),
(157, 15, 14, 'Blanco'),
(158, 16, 16, '4G'),
(159, 16, 13, 'Si'),
(160, 16, 29, 'Tipo C'),
(161, 16, 3, '13Mpx'),
(162, 16, 17, '4'),
(163, 16, 4, '48Mpx'),
(164, 16, 18, '8Mpx+2Mpx+2Mpx'),
(165, 16, 20, 'No'),
(166, 16, 19, 'Si'),
(167, 16, 1, '64GB'),
(168, 16, 2, '4GB'),
(169, 16, 5, 'Unisoc T700'),
(170, 16, 6, 'Android'),
(171, 16, 7, 'Android 11'),
(172, 16, 8, '8'),
(173, 16, 21, ' 1,8GHz'),
(174, 16, 9, 'IPS'),
(175, 16, 10, 'FHD+'),
(176, 16, 11, '6.5  Pulgadas'),
(177, 16, 12, '5000 mAh'),
(178, 16, 38, 'NA'),
(179, 16, 41, 'Bluetooth, USB y WiFi'),
(180, 16, 47, 'Incluye Cable USB, Pin Ejección '),
(181, 16, 46, 'Lector de huella'),
(182, 16, 37, 'Bateria Recargable Interna'),
(183, 16, 14, 'Verde Petróleo'),
(184, 17, 16, '5G'),
(185, 17, 13, 'Si'),
(186, 17, 29, 'Tipo C'),
(187, 17, 3, '16Mpx'),
(188, 17, 17, '4'),
(189, 17, 4, '64Mpx'),
(190, 17, 18, '8Mpx+2Mpx+2Mpx'),
(191, 17, 20, 'No'),
(192, 17, 19, 'Si'),
(193, 17, 1, '128GB'),
(194, 17, 2, '8GB'),
(195, 17, 5, 'MediaTek Helio G90T'),
(196, 17, 6, 'Android'),
(197, 17, 7, 'Android 10'),
(198, 17, 8, '8'),
(199, 17, 21, '2.05 GHz'),
(200, 17, 9, 'Super Amoled'),
(201, 17, 10, 'HD'),
(202, 17, 11, '6.5  Pulgadas'),
(203, 17, 12, '4.300 mAh'),
(204, 17, 38, 'NA'),
(205, 17, 41, 'Bluetooth, USB y WiFi'),
(206, 17, 47, 'Incluye Cable USB, Pin Ejección '),
(207, 17, 46, 'Lector de huella'),
(208, 17, 37, 'Bateria Recargable Interna'),
(209, 17, 14, 'Azul Claro'),
(236, 18, 16, '4G'),
(237, 18, 13, 'No'),
(238, 18, 29, 'Tipo C'),
(239, 18, 3, '20Mpx'),
(240, 18, 17, '4'),
(241, 18, 4, '64Mpx'),
(242, 18, 18, '8Mpx+5Mpx+5Mpx'),
(243, 18, 20, 'No'),
(244, 18, 19, 'Si'),
(245, 18, 1, '128GB'),
(246, 18, 2, '6GB'),
(247, 18, 5, 'Helio G80'),
(248, 18, 6, 'Android'),
(249, 18, 7, 'Android 10'),
(250, 18, 8, '8'),
(251, 18, 21, '2 GHz'),
(252, 18, 9, 'Amoled'),
(253, 18, 10, 'FHD+'),
(254, 18, 11, '6.4  Pulgadas'),
(255, 18, 12, '5000 mAh'),
(256, 18, 38, 'NA'),
(257, 18, 41, 'Bluetooth, USB y WiFi'),
(258, 18, 47, 'Incluye Cable USB, Pin Ejección '),
(259, 18, 46, 'Lector de huella'),
(260, 18, 37, 'Bateria Recargable Interna'),
(261, 18, 14, 'Negro'),
(262, 19, 16, '4G'),
(263, 19, 13, 'Si'),
(264, 19, 29, 'Tipo C'),
(265, 19, 3, '20Mpx'),
(266, 19, 17, '4'),
(267, 19, 4, '64Mpx'),
(268, 19, 18, '13Mpx+2Mpx+2Mpx'),
(269, 19, 20, 'No'),
(270, 19, 19, 'Si'),
(271, 19, 1, '128GB'),
(272, 19, 2, '6GB'),
(273, 19, 5, 'Qualcomm Snapdragon 732G'),
(274, 19, 6, 'Android'),
(275, 19, 7, 'Android 10'),
(276, 19, 8, '8'),
(277, 19, 21, ' 2.3 GHz'),
(278, 19, 9, 'Super Amoled'),
(279, 19, 10, 'FHD+'),
(280, 19, 11, '6.67  Pulgadas'),
(281, 19, 12, '5.160 mAh'),
(282, 19, 38, 'NA'),
(283, 19, 41, 'Bluetooth, USB y WiFi'),
(284, 19, 47, 'Incluye Cable USB, Pin Ejección '),
(285, 19, 46, 'Lector de huella'),
(286, 19, 37, 'Bateria Recargable Interna'),
(287, 19, 14, 'Blanco Rosado'),
(315, 4, 22, '8 Horas Aprx'),
(316, 4, 41, 'Bluetooth, USB, Wifi'),
(317, 4, 23, 'VGA (640x480)'),
(318, 4, 24, '1 Puerto'),
(319, 4, 25, '3 Puertos'),
(320, 4, 26, '1 Puerto'),
(321, 4, 27, '1 Puerto'),
(322, 4, 28, '1 Puerto'),
(323, 4, 29, 'Tarjeta Micro SD, Puerto HDMI, Puerto USB, Puerto USB 2.0, Puerto USB Tipo C, Salida de Audífonos'),
(324, 4, 36, 'Medio'),
(325, 4, 46, 'Cámara WEB Integrada, Lector de Huella'),
(326, 4, 10, 'Full HD'),
(327, 4, 11, '14  Pulgadas'),
(328, 4, 2, '4GB'),
(329, 4, 30, 'Disco Estado Solido (SSD)'),
(330, 4, 31, '256GB'),
(331, 4, 5, 'INTEL'),
(332, 4, 32, 'IntelCoreI3'),
(333, 4, 33, 'i3 1115G4 '),
(334, 4, 34, 'NA'),
(335, 4, 6, 'Windows'),
(336, 4, 7, 'Windows 10 Home'),
(337, 4, 8, '2'),
(338, 4, 24, '1 Puerto'),
(339, 4, 21, '3.0 GHz'),
(340, 4, 37, 'Batería Recargable Interna, Energía Eléctrica'),
(341, 4, 14, 'Gris'),
(369, 5, 22, '9 Horas Aprx'),
(370, 5, 41, 'Bluetooth,Wifi'),
(371, 5, 23, 'VGA (640x480)'),
(372, 5, 24, '1 Puerto'),
(373, 5, 25, '3 Puertos'),
(374, 5, 26, 'N/A'),
(375, 5, 27, 'N/A'),
(376, 5, 28, '1 Puerto'),
(377, 5, 29, 'Puerto HDMI, Puerto USB'),
(378, 5, 36, 'Esencial'),
(379, 5, 46, 'Cámara WEB Integrada'),
(380, 5, 10, 'HD'),
(381, 5, 11, '15.6 Pulgadas'),
(382, 5, 2, '8GB'),
(383, 5, 30, 'Disco Duro (HDD)'),
(384, 5, 31, ' 1TB'),
(385, 5, 5, 'INTEL'),
(386, 5, 32, 'IntelCoreI3'),
(387, 5, 33, ' I3 1005G1'),
(388, 5, 34, 'NA'),
(389, 5, 6, 'Windows'),
(390, 5, 7, 'Windows 10 Home'),
(391, 5, 8, '2'),
(392, 5, 24, '1 Puerto'),
(393, 5, 21, '1.20 GHz'),
(394, 5, 37, 'Batería Recargable Interna, Energía Eléctrica'),
(395, 5, 14, 'Gris'),
(423, 20, 22, '10 Horas Aprx'),
(424, 20, 41, 'Bluetooth, USB, Wifi'),
(425, 20, 23, 'VGA (640x480)'),
(426, 20, 24, '1 Puerto'),
(427, 20, 25, '3 Puertos'),
(428, 20, 26, '1 Puerto'),
(429, 20, 27, '1 Puerto'),
(430, 20, 28, '1 Puerto'),
(431, 20, 29, 'Puerto HDMI\nPuerto USB\nPuerto USB 2.0\nPuerto USB '),
(432, 20, 36, 'Esencial'),
(433, 20, 46, 'Cámara WEB Integrada, Lector de Huella'),
(434, 20, 10, 'HD'),
(435, 20, 11, '14  Pulgadas'),
(436, 20, 2, '8GB'),
(437, 20, 30, 'Disco Estado Solido (SSD)'),
(438, 20, 31, '256GB'),
(439, 20, 5, 'AMD'),
(440, 20, 32, 'AMDAthlon'),
(441, 20, 33, 'AMD Athlon Silver'),
(442, 20, 34, 'NA'),
(443, 20, 6, 'Windows'),
(444, 20, 7, 'Windows 11 Home'),
(445, 20, 8, '2'),
(446, 20, 24, '1 Puerto'),
(447, 20, 21, '2.4 GHz'),
(448, 20, 37, 'Batería Recargable Interna, Energía Eléctrica'),
(449, 20, 14, 'Gris Nube'),
(477, 21, 22, '10 Horas Aprx'),
(478, 21, 41, 'Bluetooth, USB, Wifi'),
(479, 21, 23, 'VGA (640x480)'),
(480, 21, 24, '1 Puerto'),
(481, 21, 25, '3 Puertos'),
(482, 21, 26, '1 Puerto'),
(483, 21, 27, 'N/A'),
(484, 21, 28, '1 Puerto'),
(485, 21, 29, 'Puerto HDMI\nPuerto USB\nPuerto USB 3.2\nPuerto USB Tipo C\nSalida de Audífonos\nSalida de Parlantes'),
(486, 21, 36, 'Avanzado'),
(487, 21, 46, 'Cámara WEB Integrada, Lector de Huella'),
(488, 21, 10, 'HD'),
(489, 21, 11, '15,6 Pulgadas'),
(490, 21, 2, '8GB'),
(491, 21, 30, 'Disco Estado Solido (SSD)'),
(492, 21, 31, '512GB'),
(493, 21, 5, 'INTEL'),
(494, 21, 32, 'IntelCoreI3'),
(495, 21, 33, 'Intel Core i3 N305 '),
(496, 21, 34, 'NA'),
(497, 21, 6, 'Windows'),
(498, 21, 7, 'Windows 11 Home'),
(499, 21, 8, '8'),
(500, 21, 24, '1 Puerto'),
(501, 21, 21, '3.80 GHz'),
(502, 21, 37, 'Batería Recargable Interna, Energía Eléctrica'),
(503, 21, 14, 'Azul'),
(504, 22, 22, '8 Horas Aprx'),
(505, 22, 41, 'Bluetooth, USB, Wifi'),
(506, 22, 23, 'VGA (640x480)'),
(507, 22, 24, '1 Puerto'),
(508, 22, 25, '3 Puertos'),
(509, 22, 26, 'N/A'),
(510, 22, 27, 'N/A'),
(511, 22, 28, '1 Puerto'),
(512, 22, 29, 'Puerto HDMI 2.1\nPuerto LAN/Ethernet\nPuerto USB 3.2\nSalida de Audífonos\nSalida de Parlantes'),
(513, 22, 36, 'Avanzado'),
(514, 22, 46, 'Cámara WEB Integrada, Lector de Huella'),
(515, 22, 10, 'Full HD'),
(516, 22, 11, '15.6  Pulgadas'),
(517, 22, 2, '8GB'),
(518, 22, 30, 'Disco Estado Solido (SSD)'),
(519, 22, 31, '512GB'),
(520, 22, 5, 'INTEL'),
(521, 22, 32, 'IntelCoreI5'),
(522, 22, 33, 'Intel Core i5 1235U '),
(523, 22, 34, 'NA'),
(524, 22, 6, 'Windows'),
(525, 22, 7, 'Windows 11 Home'),
(526, 22, 8, '10'),
(527, 22, 24, '1 Puerto'),
(528, 22, 21, '1,30 GHz '),
(529, 22, 37, 'Batería Recargable Interna, Energía Eléctrica'),
(530, 22, 14, 'Plateado'),
(531, 23, 22, '11 Horas Aprx'),
(532, 23, 41, 'Bluetooth, USB, Wifi'),
(533, 23, 23, 'VGA (640x480)'),
(534, 23, 24, '1 Puerto'),
(535, 23, 25, '2 Puertos'),
(536, 23, 26, '1 Puerto'),
(537, 23, 27, '1 Puerto'),
(538, 23, 28, '1 Puerto'),
(539, 23, 29, 'Entrada Tarjeta SD\nPuerto HDMI\nPuerto USB\nPuerto USB Tipo C\nSalida de Audífonos'),
(540, 23, 36, 'Avanzado'),
(541, 23, 46, 'Cámara WEB Integrada, Lector de Huella'),
(542, 23, 10, 'Full HD'),
(543, 23, 11, '14  Pulgadas'),
(544, 23, 2, '8GB'),
(545, 23, 30, 'Disco Estado Solido (SSD)'),
(546, 23, 31, '512GB'),
(547, 23, 5, 'AMD'),
(548, 23, 32, 'AMDR3'),
(549, 23, 33, 'AMD R3 7320U '),
(550, 23, 34, 'NA'),
(551, 23, 6, 'Windows'),
(552, 23, 7, 'Windows 11 Home'),
(553, 23, 8, '4'),
(554, 23, 22, '1 Puerto'),
(555, 23, 21, '4,1 GHz'),
(556, 23, 37, 'Batería Recargable Interna, Energía Eléctrica'),
(557, 23, 14, 'Azul Claro'),
(558, 24, 22, '8 Horas Aprx'),
(559, 24, 41, 'Bluetooth, USB, Wifi'),
(560, 24, 23, 'VGA (640x480)'),
(561, 24, 24, '1 Puerto'),
(562, 24, 25, '2 Puertos'),
(563, 24, 26, '1 Puerto'),
(564, 24, 27, 'N/A'),
(565, 24, 28, '1 Puerto'),
(566, 24, 29, 'Puerto HDMI\nPuerto LAN/Ethernet\nPuerto USB\nPuerto USB Tipo C\nSalida de Audífonos'),
(567, 24, 36, 'Avanzado'),
(568, 24, 46, 'Cámara WEB Integrada, Lector de Huella, Tarjeta de Video'),
(569, 24, 10, 'Full HD'),
(570, 24, 11, '15,6  Pulgadas'),
(571, 24, 2, '8GB'),
(572, 24, 30, 'Disco Estado Solido (SSD)'),
(573, 24, 31, '512GB'),
(574, 24, 5, 'INTEL'),
(575, 24, 32, 'IntelCoreI5'),
(576, 24, 33, 'Intel Core I5 11320H'),
(577, 24, 34, 'GeForce® GTX 1650'),
(578, 24, 6, 'Windows'),
(579, 24, 7, 'Windows 11 pro'),
(580, 24, 8, '4'),
(581, 24, 24, '1 Puerto'),
(582, 24, 21, '4,5 GHz'),
(583, 24, 37, 'Batería Recargable Interna, Energía Eléctrica'),
(584, 24, 14, 'Negro'),
(585, 25, 22, '8 Horas Aprx'),
(586, 25, 41, 'Bluetooth, USB, Wifi'),
(587, 25, 23, 'VGA (640x480)'),
(588, 25, 24, '1 Puerto'),
(589, 25, 25, '3 Puertos'),
(590, 25, 26, '1 Puerto'),
(591, 25, 27, 'N/A'),
(592, 25, 28, '1 Puerto'),
(593, 25, 29, 'Puerto HDMI\nPuerto LAN/Ethernet\nPuerto USB\nPuerto USB Tipo C\nSalida de Audífonos'),
(594, 25, 36, 'Avanzado'),
(595, 25, 46, 'Cámara WEB Integrada, Lector de Huella, Tarjeta Grafica'),
(596, 25, 10, 'Full HD'),
(597, 25, 11, '15,6  Pulgadas'),
(598, 25, 2, '8GB'),
(599, 25, 30, 'Disco Estado Solido (SSD)'),
(600, 25, 31, '512GB'),
(601, 25, 5, 'INTEL'),
(602, 25, 32, 'IntelCoreI5'),
(603, 25, 33, 'Intel Core i5 10300H'),
(604, 25, 34, 'GeForce® GTX 1650'),
(605, 25, 6, 'Windows'),
(606, 25, 7, 'Windows 11 Pro'),
(607, 25, 8, '4'),
(608, 25, 24, '1 Puerto'),
(609, 25, 21, '4,5 GHz'),
(610, 25, 37, 'Batería Recargable Interna, Energía Eléctrica'),
(611, 25, 14, 'Negro Hoguera'),
(612, 26, 22, '8 Horas Aprx'),
(613, 26, 41, 'Bluetooth, USB, Wifi'),
(614, 26, 23, 'VGA (640x480)'),
(615, 26, 24, '1 Puerto'),
(616, 26, 25, '4 Puertos'),
(617, 26, 26, '1 Puerto'),
(618, 26, 27, 'N/A'),
(619, 26, 28, '1 Puerto'),
(620, 26, 29, 'Puerto HDMI\nPuerto LAN/Ethernet\nPuerto USB\nPuerto USB Tipo C\nSalida de Audífonos'),
(621, 26, 36, 'Avanzado'),
(622, 26, 46, 'Cámara WEB Integrada, Lector de Huella, Tarjeta Grafica'),
(623, 26, 10, 'Full HD'),
(624, 26, 11, '16  Pulgadas'),
(625, 26, 2, '16GB'),
(626, 26, 30, 'Disco Estado Solido (SSD)'),
(627, 26, 31, '1TB'),
(628, 26, 5, 'INTEL'),
(629, 26, 32, 'IntelCoreI5'),
(630, 26, 33, 'Intel Core I5 13500H'),
(631, 26, 34, 'GeForce® RTX 4050'),
(632, 26, 6, 'Windows'),
(633, 26, 7, 'Windows 11 pro'),
(634, 26, 8, '12'),
(635, 26, 24, '1 Puerto'),
(636, 26, 21, '4.70 GHz'),
(637, 26, 37, 'Batería Recargable Interna, Energía Eléctrica'),
(638, 26, 14, 'Negro'),
(639, 9, 23, '5.0 MP'),
(640, 9, 24, '1 Puerto'),
(641, 9, 35, '1 Puerto'),
(642, 9, 25, '4 Puertos'),
(643, 9, 28, 'NA'),
(644, 9, 29, 'Puerto HDMI, Puerto LAN/Ethernet, Puerto USB, Puerto USB 2.0'),
(645, 9, 36, 'Medio'),
(646, 9, 46, 'Cámara WEB Integrada'),
(647, 9, 10, 'Full HD'),
(648, 9, 11, '27  Pulgadas'),
(649, 9, 2, '16GB'),
(650, 9, 30, 'Disco Estado Solido (SSD)'),
(651, 9, 31, '1TB'),
(652, 9, 5, 'AMD'),
(653, 9, 32, 'AMDR5'),
(654, 9, 33, '7530U'),
(655, 9, 34, 'NA'),
(656, 9, 6, 'Windows'),
(657, 9, 7, '11 Home, español'),
(658, 9, 8, '6'),
(659, 9, 21, '2.0GHz'),
(660, 9, 37, 'Energía Eléctrica'),
(661, 9, 14, 'Negro'),
(662, 9, 41, 'Bluetooth , WiFi '),
(663, 33, 23, '720p HD'),
(664, 33, 24, '1 Puerto'),
(665, 33, 35, '1 Puerto'),
(666, 33, 25, '2 Puertos'),
(667, 33, 28, '1 Puerto'),
(668, 33, 29, 'Entrada Tarjeta SD \nPuerto HDMI \nPuerto LAN/Ethernet \nPuerto USB \nSalida de Audífonos '),
(669, 33, 36, 'Medio'),
(670, 33, 46, 'Cámara WEB Integrada'),
(671, 33, 10, 'Full HD'),
(672, 33, 11, '21.5  Pulgadas'),
(673, 33, 2, '8GB'),
(674, 33, 30, 'Disco Estado Solido (SSD)'),
(675, 33, 31, '256GB'),
(676, 33, 5, 'Intel'),
(677, 33, 32, 'IntelCeleron'),
(678, 33, 33, 'Intel Celeron J4025 '),
(679, 33, 34, 'NA'),
(680, 33, 6, 'Windows'),
(681, 33, 7, '11 Home, español'),
(682, 33, 8, '2'),
(683, 33, 21, '2.00 GHz'),
(684, 33, 37, 'Energía Eléctrica'),
(685, 33, 14, 'Negro'),
(686, 33, 41, 'Bluetooth \nWiFi '),
(687, 34, 23, '720p HD'),
(688, 34, 24, '1 Puerto'),
(689, 34, 35, '1 Puerto'),
(690, 34, 25, '2 Puertos'),
(691, 34, 28, 'NA'),
(692, 34, 29, '\nEntrada Tarjeta SD \nPuerto HDMI \nPuerto LAN/Ethernet \nPuerto USB \nSalida de Audífonos '),
(693, 34, 36, 'Medio'),
(694, 34, 46, 'Cámara WEB Integrada'),
(695, 34, 10, 'Full HD'),
(696, 34, 11, '21.5  Pulgadas'),
(697, 34, 2, '8GB'),
(698, 34, 30, 'Disco Estado Solido (SSD)'),
(699, 34, 31, '256GB'),
(700, 34, 5, 'Intel'),
(701, 34, 32, 'IntelPentium'),
(702, 34, 33, 'Silver J5040 '),
(703, 34, 34, 'NA'),
(704, 34, 6, 'Windows'),
(705, 34, 7, '11 Home, español'),
(706, 34, 8, '4'),
(707, 34, 21, '2.00 GHz'),
(708, 34, 37, 'Energía Eléctrica'),
(709, 34, 14, 'Blanco Nieve '),
(710, 34, 41, 'Bluetooth \nWiFi '),
(711, 35, 23, '5.0MP + IR '),
(712, 35, 24, '1 Puerto'),
(713, 35, 35, '1 Puerto'),
(714, 35, 25, '1 Puerto'),
(715, 35, 28, 'NA'),
(716, 35, 29, '\nPuerto HDMI \nPuerto LAN/Ethernet \nPuerto USB \nSalida de Audífonos '),
(717, 35, 36, 'Avanzado'),
(718, 35, 46, 'Reconocimiento Facial '),
(719, 35, 10, 'Full HD'),
(720, 35, 11, '23.8  Pulgadas'),
(721, 35, 2, '8GB'),
(722, 35, 30, 'Disco Estado Solido (SSD)'),
(723, 35, 31, '512GB'),
(724, 35, 5, 'Intel '),
(725, 35, 32, 'IntelCoreI5'),
(726, 35, 33, '12450H '),
(727, 35, 34, 'NA'),
(728, 35, 6, 'Windows'),
(729, 35, 7, '11 Home, español'),
(730, 35, 8, '8'),
(731, 35, 21, '4.40 GHz'),
(732, 35, 37, 'Energía Eléctrica'),
(733, 35, 14, 'Blanco'),
(734, 35, 41, '\nBluetooth \nConexión Con Cable \nWiFi '),
(735, 36, 23, 'HD '),
(736, 36, 24, '2 Puerto'),
(737, 36, 35, '1 Puerto'),
(738, 36, 25, '5 Puertos'),
(739, 36, 28, '1 Puerto'),
(740, 36, 29, 'Puerto HDMI \nPuerto LAN/Ethernet \nPuerto USB 2.0 \nPuerto USB 3.2 \nPuerto USB Tipo C \nSalida de Audífonos '),
(741, 36, 36, 'Avanzado '),
(742, 36, 46, 'Cámara WEB Integrada'),
(743, 36, 10, 'Full HD'),
(744, 36, 11, '23.8  Pulgadas'),
(745, 36, 2, '8GB'),
(746, 36, 30, 'Disco Estado Solido (SSD)'),
(747, 36, 31, '512GB'),
(748, 36, 5, 'INTEL '),
(749, 36, 32, 'IntelCoreI5'),
(750, 36, 33, 'Ci5 1235U '),
(751, 36, 34, 'NA'),
(752, 36, 6, 'Windows'),
(753, 36, 7, '11 Home, español'),
(754, 36, 8, '10'),
(755, 36, 21, '4.40 GHz'),
(756, 36, 37, 'Energía Eléctrica'),
(757, 36, 14, 'Blanco '),
(758, 36, 41, 'Bluetooth \nUSB \nWiFi '),
(783, 37, 23, 'HD'),
(784, 37, 24, '1 Puerto'),
(785, 37, 35, '1 Puerto'),
(786, 37, 25, '3 Puertos'),
(787, 37, 28, '1 Puerto'),
(788, 37, 29, 'Puerto HDMI \nPuerto LAN/Ethernet \nPuerto USB \nPuerto USB Tipo C \nSalida de Audífonos '),
(789, 37, 36, 'Medio'),
(790, 37, 46, 'Cámara WEB Integrada'),
(791, 37, 10, 'Full HD'),
(792, 37, 11, '27  Pulgadas'),
(793, 37, 2, '8GB'),
(794, 37, 30, 'Disco Estado Solido (SSD)'),
(795, 37, 31, '512GB'),
(796, 37, 5, 'AMD'),
(797, 37, 32, 'AMDR5'),
(798, 37, 33, 'AMD Ryzen™ 5 5500U '),
(799, 37, 34, 'NA'),
(800, 37, 6, 'Windows'),
(801, 37, 7, '11 Home, español'),
(802, 37, 8, '6'),
(803, 37, 21, '4.0GHz'),
(804, 37, 37, 'Energía Eléctrica'),
(805, 37, 14, 'Blanco Nieve '),
(806, 37, 41, 'Bluetooth \nConexión Con Cable \nWiFi '),
(831, 38, 23, '5.0 MP'),
(832, 38, 24, '1 Puerto'),
(833, 38, 35, '1 Puerto'),
(834, 38, 25, '4 Puertos'),
(835, 38, 28, 'NA'),
(836, 38, 29, 'Puerto HDMI, Puerto LAN/Ethernet, Puerto USB, Puerto USB 2.0Puerto HDMI \nPuerto LAN/Ethernet \nPuerto USB \nPuerto USB 2.0 '),
(837, 38, 36, 'Avanzado '),
(838, 38, 46, 'Cámara WEB Integrada'),
(839, 38, 10, 'Full HD'),
(840, 38, 11, '27  Pulgadas'),
(841, 38, 2, '16GB'),
(842, 38, 30, 'Hibrido TB + SSD '),
(843, 38, 31, 'HDD 1 TB + SSD 512 GB '),
(844, 38, 5, 'AMD'),
(845, 38, 32, 'AMDR7'),
(846, 38, 33, '7730U '),
(847, 38, 34, 'NA'),
(848, 38, 6, 'Windows'),
(849, 38, 7, '11 Home, español'),
(850, 38, 8, '8'),
(851, 38, 21, '4.5GHz'),
(852, 38, 37, 'Energía Eléctrica'),
(853, 38, 14, 'Negro'),
(854, 38, 41, 'Bluetooth \nConexión Con Cable \nWiFi '),
(855, 39, 23, '1080 '),
(856, 39, 24, 'N/A'),
(857, 39, 35, '1 Puerto'),
(858, 39, 25, '4 Puertos'),
(859, 39, 28, '1 Puerto'),
(860, 39, 29, 'Puerto LAN/Ethernet \nPuerto USB Tipo C '),
(861, 39, 36, 'Esencial '),
(862, 39, 46, 'Cámara WEB Integrada \nReconocimiento de Voz '),
(863, 39, 10, 'Retina '),
(864, 39, 11, '24  Pulgadas'),
(865, 39, 2, '8GB'),
(866, 39, 30, 'Disco Estado Solido (SSD)'),
(867, 39, 31, '512GB'),
(868, 39, 5, 'Apple '),
(869, 39, 32, 'AppleM3'),
(870, 39, 33, 'Apple M3 '),
(871, 39, 34, 'NA'),
(872, 39, 6, 'MacOs '),
(873, 39, 7, 'MacOs Sonoma '),
(874, 39, 8, '8'),
(875, 39, 21, ' 100GB por segundo'),
(876, 39, 37, 'Energía Eléctrica'),
(877, 39, 14, 'Plata'),
(878, 39, 41, 'Bluetooth, WiFi'),
(879, 40, 23, '5.0MP + IR '),
(880, 40, 24, '1 Puerto'),
(881, 40, 35, 'N/A'),
(882, 40, 25, '3 Puertos'),
(883, 40, 28, '1 Puerto'),
(884, 40, 29, 'Puerto HDMI \nPuerto USB 3.2 \nPuerto USB Tipo C \nSalida de Audífonos '),
(885, 40, 36, 'Avanzado'),
(886, 40, 46, 'Reconocimiento Facial '),
(887, 40, 10, '4K Ultra HD '),
(888, 40, 11, '31.5  Pulgadas'),
(889, 40, 2, '32GB'),
(890, 40, 30, 'Disco Estado Solido (SSD)'),
(891, 40, 31, '1TB'),
(892, 40, 5, 'INTEL '),
(893, 40, 32, 'IntelCoreI9'),
(894, 40, 33, '13900H '),
(895, 40, 34, 'GeForce® RTX 4050 '),
(896, 40, 6, 'Windows'),
(897, 40, 7, '11 Home, español'),
(898, 40, 8, '14'),
(899, 40, 21, '5.40 GHz'),
(900, 40, 37, 'Energía Eléctrica'),
(901, 40, 14, 'Gris tormenta '),
(902, 40, 41, 'Bluetooth \nWiFi '),
(903, 11, 1, '128GB'),
(904, 11, 5, 'Unisoc'),
(905, 11, 2, '4GB'),
(906, 11, 6, 'Android'),
(907, 11, 7, 'Android 11'),
(908, 11, 8, '8'),
(909, 11, 21, '2GHz'),
(910, 11, 29, 'Tipo C, Micro SD'),
(911, 11, 3, '5Mpx'),
(912, 11, 4, '8Mpx'),
(913, 11, 22, '12 Horas Aprx'),
(914, 11, 41, 'Bluetooth, USB, Wifi'),
(915, 11, 10, '1920x1200'),
(916, 11, 11, '10.5  Pulgadas'),
(917, 11, 37, 'Batería Recargable Interna'),
(918, 11, 14, 'Gris'),
(919, 11, 47, 'Incluye Cable y Adaptador de Carga'),
(920, 41, 1, '32GB'),
(921, 41, 5, 'MediaTek '),
(922, 41, 2, '2GB'),
(923, 41, 6, 'Android'),
(924, 41, 7, 'Android 11'),
(925, 41, 8, '4'),
(926, 41, 21, '2.0GHz '),
(927, 41, 29, 'Entrada Tarjeta Micro SD \nPuerto USB Tipo C \nSalida de Audífonos '),
(928, 41, 3, '2Mpx'),
(929, 41, 4, '5Mpx'),
(930, 41, 22, '48 Horas Aprx'),
(931, 41, 41, 'Bluetooth, Wifi'),
(932, 41, 10, 'HD (1280x800) '),
(933, 41, 11, '8  Pulgadas'),
(934, 41, 37, 'Batería Recargable Interna'),
(935, 41, 14, 'Negro'),
(936, 41, 47, 'Cargador tipo C y Clable tipo C. '),
(937, 42, 1, '32GB'),
(938, 42, 5, 'MediaTek A22 '),
(939, 42, 2, '2 GB '),
(940, 42, 6, 'Android'),
(941, 42, 7, 'Android 10'),
(942, 42, 8, '4'),
(943, 42, 21, '2,0 GHz '),
(944, 42, 29, 'Entrada Tarjeta Micro SD \nSalida de Audífonos '),
(945, 42, 3, '2Mpx'),
(946, 42, 4, '5Mpx'),
(947, 42, 22, '12 Horas Aprx'),
(948, 42, 41, 'Bluetooth, Wifi'),
(949, 42, 10, '1280 x 800 '),
(950, 42, 11, '8  Pulgadas'),
(951, 42, 37, 'Batería Recargable Interna'),
(952, 42, 14, 'Gris'),
(953, 42, 47, 'Incluye Cable y Adaptador de Carga'),
(954, 43, 1, '128GB'),
(955, 43, 5, 'MediaTek Helio G80 '),
(956, 43, 2, '4GB'),
(957, 43, 6, 'Android'),
(958, 43, 7, 'Android 10'),
(959, 43, 8, '8'),
(960, 43, 21, '2,0 GHz'),
(961, 43, 29, 'Puerto USB Tipo C \nSalida de Audífonos '),
(962, 43, 3, '8Mpx'),
(963, 43, 4, '8Mpx'),
(964, 43, 22, '12 Horas Aprx'),
(965, 43, 41, 'Bluetooth, Wifi'),
(966, 43, 10, '2K (2000x1200) '),
(967, 43, 11, '10  Pulgadas'),
(968, 43, 37, 'Batería Recargable Interna'),
(969, 43, 14, 'Gris'),
(970, 43, 47, 'Incluye Lapiz Precision 2 y Folio Case '),
(971, 44, 1, '128GB'),
(972, 44, 5, 'Snap Dragon '),
(973, 44, 2, '6GB'),
(974, 44, 6, 'Android'),
(975, 44, 7, 'Android 11'),
(976, 44, 8, '8'),
(977, 44, 21, '2.4GHz'),
(978, 44, 29, 'Entrada Tarjeta Micro SD \nPuerto USB Tipo C \nSalida de Audífonos \nSalida de Parlantes '),
(979, 44, 3, '5Mpx'),
(980, 44, 4, '8Mpx'),
(981, 44, 22, '13 Horas Aprx'),
(982, 44, 41, 'Bluetooth, Wifi'),
(983, 44, 10, '2560 x 1600 (WQXGA) '),
(984, 44, 11, '12.4  Pulgadas'),
(985, 44, 37, 'Batería Recargable Interna'),
(986, 44, 14, 'Plateado'),
(987, 44, 47, 'Adaptador y cable + Mouse BT '),
(988, 45, 1, '64GB'),
(989, 45, 5, 'Qualcomm '),
(990, 45, 2, '4GB'),
(991, 45, 6, 'Android'),
(992, 45, 7, 'Android 11'),
(993, 45, 8, '8'),
(994, 45, 21, '2.3GHz'),
(995, 45, 29, 'Entrada Tarjeta SD \nSalida de Audífonos'),
(996, 45, 3, '5Mpx'),
(997, 45, 4, '8Mpx'),
(998, 45, 22, '14 Horas Aprx'),
(999, 45, 41, 'Bluetooth, USB, Wifi'),
(1000, 45, 10, '2000x1200 (WUXGA+) '),
(1001, 45, 11, '10.3  Pulgadas'),
(1002, 45, 37, 'Batería Recargable Interna'),
(1003, 45, 14, 'Azul '),
(1004, 45, 47, 'Cover,Spen,Cable de carga '),
(1022, 46, 1, '256 GB'),
(1023, 46, 5, 'Apple M2'),
(1024, 46, 2, '16GB'),
(1025, 46, 6, 'iPad OS'),
(1026, 46, 7, 'iPad OS 16'),
(1027, 46, 8, '8'),
(1028, 46, 21, '100 GBps'),
(1029, 46, 29, 'Puerto USB Tipo C\nSalida de Audífonos'),
(1030, 46, 3, '12Mpx'),
(1031, 46, 4, '12Mpx'),
(1032, 46, 22, '12 Horas Aprx'),
(1033, 46, 41, 'Bluetooth WiFi'),
(1034, 46, 10, '2732 x 2048 a 264 pixeles'),
(1035, 46, 11, '12.9 Pulgadas'),
(1036, 46, 37, 'Batería Recargable Interna'),
(1037, 46, 14, 'Gris'),
(1038, 46, 47, 'Cable de carga USB-C (1 m) / Adaptador de corriente USB-C de 20 W '),
(1039, 47, 1, '128GB'),
(1040, 47, 5, 'Qualcomm '),
(1041, 47, 2, '8GB'),
(1042, 47, 6, 'Android'),
(1043, 47, 7, 'Android 11'),
(1044, 47, 8, '8'),
(1045, 47, 21, '2.99 GHz'),
(1046, 47, 29, 'Entrada Tarjeta Micro SD \nPuerto USB Tipo C \nSalida de Audífonos \nSalida de Parlantes '),
(1047, 47, 3, '12Mpx'),
(1048, 47, 4, '13Mpx'),
(1049, 47, 22, '8 Horas Aprx'),
(1050, 47, 41, 'Bluetooth, Wifi'),
(1051, 47, 10, '2960 x 1848 (WQXGA+) '),
(1052, 47, 11, '14.6  Pulgadas'),
(1053, 47, 37, 'Batería Recargable Interna'),
(1054, 47, 14, 'Gris'),
(1055, 47, 47, 'Cover con teclado, Spen '),
(1056, 48, 1, '128GB'),
(1057, 48, 5, 'Qualcomm '),
(1058, 48, 2, '8GB'),
(1059, 48, 6, 'Android'),
(1060, 48, 7, 'Android 11'),
(1061, 48, 8, '8'),
(1062, 48, 21, '2.99 GHz'),
(1063, 48, 29, 'Entrada Tarjeta Micro SD \nPuerto USB Tipo C \nSalida de Audífonos \nSalida de Parlantes '),
(1064, 48, 3, '12Mpx'),
(1065, 48, 4, '13Mpx'),
(1066, 48, 22, '8 Horas Aprx'),
(1067, 48, 41, 'Bluetooth, Wifi'),
(1068, 48, 10, '2800 x 1752 (WQXGA+) '),
(1069, 48, 11, '12.4  Pulgadas'),
(1070, 48, 37, 'Batería Recargable Interna'),
(1071, 48, 14, 'Negro '),
(1072, 48, 47, 'Cover con teclado, Spen '),
(1086, 13, 38, 'NA'),
(1087, 13, 46, 'Integrado Asistente de Voz'),
(1088, 13, 39, 'NA'),
(1089, 13, 37, 'Energía Eléctrica'),
(1090, 13, 14, 'Negro'),
(1091, 13, 22, 'NA'),
(1092, 13, 40, '30Metros'),
(1093, 13, 41, 'Bluetooth y Wifi'),
(1094, 13, 42, 'Alambrica'),
(1095, 13, 43, '26'),
(1096, 13, 44, '16'),
(1097, 13, 45, '18.5'),
(1098, 13, 47, 'NA'),
(1112, 49, 38, 'Resistente al Agua y el Polvo (IP 67) '),
(1113, 49, 46, 'Apto para Llamadas en Altavoz '),
(1114, 49, 39, 'Si es Portable '),
(1115, 49, 37, 'Energía Eléctrica'),
(1116, 49, 14, 'Negro'),
(1117, 49, 22, '12  Horas Aproximadas'),
(1118, 49, 40, '10Metros'),
(1119, 49, 41, 'Bluetooth'),
(1120, 49, 42, 'Inalámbrica '),
(1121, 49, 43, '9.04'),
(1122, 49, 44, '20.14'),
(1123, 49, 45, '5.23  '),
(1124, 49, 47, 'Cable USB-C '),
(1125, 50, 38, 'Resistente a Salpicaduras (IPX4) '),
(1126, 50, 46, 'Tiene Luces LED '),
(1127, 50, 39, 'Si es Portable '),
(1128, 50, 37, 'Batería Recargable Interna \nEnergía Eléctrica '),
(1129, 50, 14, 'Negro'),
(1130, 50, 22, '6  Horas Aproximadas'),
(1131, 50, 40, '10Metros'),
(1132, 50, 41, 'Bluetooth,\nEntradas de guitarra '),
(1133, 50, 42, 'Inalámbrica '),
(1134, 50, 43, '32.6 '),
(1135, 50, 44, '47.2'),
(1136, 50, 45, 'N/A'),
(1137, 50, 47, 'N/A'),
(1138, 51, 38, 'N/A'),
(1139, 51, 46, 'Tiene Función Karaoke \nTiene Luces LED '),
(1140, 51, 39, 'N/A'),
(1141, 51, 37, 'Energía Eléctrica'),
(1142, 51, 14, 'Negro'),
(1143, 51, 22, 'N/A'),
(1144, 51, 40, '10Metros'),
(1145, 51, 41, 'Bluetooth'),
(1146, 51, 42, 'Alambrica'),
(1147, 51, 43, '45'),
(1148, 51, 44, '110.5'),
(1149, 51, 45, '35.5  '),
(1150, 51, 47, 'Micrófono y control remoto '),
(1151, 52, 38, 'N/A'),
(1152, 52, 46, 'Integrado Asistente de Voz'),
(1153, 52, 39, 'N/A'),
(1154, 52, 37, 'Energía Eléctrica'),
(1155, 52, 14, 'Blanco '),
(1156, 52, 22, 'N/A'),
(1157, 52, 40, '30Metros'),
(1158, 52, 41, 'Bluetooth y Wifi'),
(1159, 52, 42, 'Alambrica'),
(1160, 52, 43, '12'),
(1161, 52, 44, '18.2 '),
(1162, 52, 45, '13'),
(1163, 52, 47, 'N/A'),
(1164, 53, 38, 'N/A'),
(1165, 53, 46, 'Tiene Función Karaoke '),
(1166, 53, 39, 'Si es Portable '),
(1167, 53, 37, 'Batería Recargable Interna \nEnergía Eléctrica '),
(1168, 53, 14, 'Negro'),
(1169, 53, 22, '11  Horas Aproximadas'),
(1170, 53, 40, '9Metros'),
(1171, 53, 41, 'Bluetooth y Wifi'),
(1172, 53, 42, 'Inalámbrica '),
(1173, 53, 43, '23.8'),
(1174, 53, 44, '33.2'),
(1175, 53, 45, '27.9 '),
(1176, 53, 47, 'Cable de alimentación de CA, Guía de inicio rápido '),
(1177, 54, 38, 'N/A'),
(1178, 54, 46, 'Tiene Luces LED '),
(1179, 54, 39, 'Si es Portable '),
(1180, 54, 37, 'Batería Recargable Interna '),
(1181, 54, 14, 'Negro'),
(1182, 54, 22, '4  Horas Aproximadas'),
(1183, 54, 40, '10Metros'),
(1184, 54, 41, 'Bluetooth'),
(1185, 54, 42, 'Inalámbrica '),
(1186, 54, 43, '24'),
(1187, 54, 44, '39.5'),
(1188, 54, 45, '19'),
(1189, 54, 47, 'Micrófono y control remoto '),
(1190, 55, 38, 'N/A'),
(1191, 55, 46, 'Tiene Luces LED '),
(1192, 55, 39, 'Si es Portable '),
(1193, 55, 37, 'Batería Recargable Interna '),
(1194, 55, 14, 'Negro'),
(1195, 55, 22, 'NA'),
(1196, 55, 40, '10Metros'),
(1197, 55, 41, 'Bluetooth '),
(1198, 55, 42, 'Inalámbrica '),
(1199, 55, 43, '25.2 '),
(1200, 55, 44, '40 '),
(1201, 55, 45, '20.2'),
(1202, 55, 47, 'Micrófono y control remoto '),
(1203, 56, 38, 'Resistente al Agua y el Polvo (IP 67) '),
(1204, 56, 46, 'Integrado Asistente de Voz'),
(1205, 56, 39, 'Si es Portable '),
(1206, 56, 37, 'Batería Recargable Interna '),
(1207, 56, 14, 'Negro'),
(1208, 56, 22, '24  Horas Aproximadas'),
(1209, 56, 40, '10Metros'),
(1210, 56, 41, 'Bluetooth '),
(1211, 56, 42, 'Inalámbrica '),
(1212, 56, 43, '32'),
(1213, 56, 44, '14.3'),
(1214, 56, 45, '14.5'),
(1215, 56, 47, 'N/A'),
(1216, 12, 38, 'Salpicaduras'),
(1217, 12, 41, 'Bluetooth'),
(1218, 12, 22, '30 Horas Aprox'),
(1219, 12, 42, 'Inalambrica'),
(1220, 12, 14, 'Negro'),
(1221, 12, 15, 'N/A'),
(1222, 58, 38, 'Resistente a Salpicaduras (IPX4) '),
(1223, 58, 41, 'Bluetooth'),
(1224, 58, 22, '6 Horas Aprx'),
(1225, 58, 42, 'Inalambrica'),
(1226, 58, 14, 'Eclipse Grey '),
(1227, 58, 15, 'N/A'),
(1228, 59, 38, 'Resistente a Salpicaduras (IPX4) '),
(1229, 59, 41, 'Bluetooth'),
(1230, 59, 22, '6 Horas Aprx'),
(1231, 59, 42, 'Inalambrica'),
(1232, 59, 14, 'Blanco '),
(1233, 59, 15, 'N/A'),
(1234, 60, 38, 'N/A'),
(1235, 60, 41, 'Conexión Con Cable '),
(1236, 60, 22, 'N/A'),
(1237, 60, 42, 'Alambrica'),
(1238, 60, 14, 'Negro'),
(1239, 60, 15, '120  Centímetros'),
(1240, 61, 38, 'N/A'),
(1241, 61, 41, 'Conexión Con Cable '),
(1242, 61, 22, 'N/A'),
(1243, 61, 42, 'Alambrica'),
(1244, 61, 14, 'Plateado '),
(1245, 61, 15, '60  Centímetros'),
(1246, 62, 38, 'N/A'),
(1247, 62, 41, 'Conexión Con Cable '),
(1248, 62, 22, 'N/A'),
(1249, 62, 42, 'Alambrica'),
(1250, 62, 14, 'Negro'),
(1251, 62, 15, '120  Centímetros'),
(1252, 63, 38, 'N/A'),
(1253, 63, 41, 'Bluetooth \nConexión Con Cable \nNFC '),
(1254, 63, 22, '30  Horas Aproximadas'),
(1255, 63, 42, 'Inalambrica'),
(1256, 63, 14, 'Negro'),
(1257, 63, 15, '120  Centímetros'),
(1258, 64, 38, 'N/A'),
(1259, 64, 41, 'Bluetooth'),
(1260, 64, 22, '50  Horas Aproximadas'),
(1261, 64, 42, 'Inalambrica'),
(1262, 64, 14, 'Azul'),
(1263, 64, 15, 'N/A'),
(1264, 65, 38, 'N/A'),
(1265, 65, 41, 'Bluetooth'),
(1266, 65, 22, '20 Horas Aprx'),
(1267, 65, 42, 'Inalambrica'),
(1268, 65, 14, 'Negro'),
(1269, 65, 15, 'NA'),
(1270, 66, 16, '5G'),
(1271, 66, 13, 'Si'),
(1272, 66, 29, 'Tipo C'),
(1273, 66, 3, '13Mpx'),
(1274, 66, 17, '2'),
(1275, 66, 4, '50Mpx'),
(1276, 66, 18, '2Mpx, 8Mpx'),
(1277, 66, 20, 'No'),
(1278, 66, 19, 'Si'),
(1279, 66, 1, '256GB'),
(1280, 66, 2, '8G'),
(1281, 66, 5, 'Snapdragon'),
(1282, 66, 6, 'Android'),
(1283, 66, 7, 'Android 13'),
(1284, 66, 8, '8'),
(1285, 66, 21, '2.5Ghz'),
(1286, 66, 9, 'Amoled'),
(1287, 66, 10, 'Full HD'),
(1288, 66, 11, '11'),
(1289, 66, 12, '5000'),
(1290, 66, 38, 'Agua'),
(1291, 66, 41, 'aaaa'),
(1292, 66, 47, 'Cable'),
(1293, 66, 46, 'NA'),
(1294, 66, 37, 'qweere'),
(1295, 66, 14, 'Negro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `codPedido` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `fechaPedido` date NOT NULL,
  `horaPedido` time NOT NULL,
  `dirPedido` varchar(50) NOT NULL,
  `totalPedido` double NOT NULL,
  `estadoPedido` varchar(30) NOT NULL DEFAULT 'Pagado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`codPedido`, `idCliente`, `fechaPedido`, `horaPedido`, `dirPedido`, `totalPedido`, `estadoPedido`) VALUES
(1, 1, '2023-11-18', '22:13:39', 'Calle 88C # 23D-10, Castilla, Piso 2', 2819000, 'Por pagar'),
(2, 5, '2023-11-18', '22:42:00', 'Avenida 66 # 18B-14, San Luis', 1400000, 'Por pagar'),
(3, 1, '2023-11-18', '22:48:04', 'Carrera 55D # 7B-10, Marsella, Torre 15 Apto 553', 3449000, 'Por pagar'),
(4, 4, '2023-11-18', '23:00:18', 'Calle 6 # 27D-15, Veredas', 2168900, 'Por pagar'),
(5, 2, '2023-11-22', '10:43:03', 'Calle 91 # 14C-20, San Mateo', 1999000, 'Por pagar'),
(6, 2, '2023-11-22', '16:38:06', 'Calle 52D # 11B-20, Santa Isabel, Edificio 3', 1507160, 'Por pagar'),
(7, 3, '2023-11-24', '11:31:49', 'Calle 87B # 10B-20, San Mateo, Torre 15 Apto 553', 149205, 'Por pagar'),
(8, 4, '2023-11-29', '11:58:40', 'Calle 88A # 5D-15, Marsella', 1638393, 'Por pagar'),
(9, 5, '2023-11-29', '12:06:09', 'Calle 61D # 6D-20, Tintal', 1638393, 'Por pagar'),
(10, 3, '2023-11-29', '14:32:14', 'Calle 23B # 10C-2, Tintal', 882291, 'Por pagar'),
(11, 3, '2023-11-29', '15:09:01', 'Avenida 61D # 23D-19, Villa', 1424263, 'Por pagar'),
(12, 4, '2023-11-29', '15:09:37', 'Avenida 61D # 23D-19, Villa', 281917, 'Por pagar'),
(13, 1, '2024-01-07', '19:46:39', '', 769000, 'Por pagar'),
(14, 1, '2024-01-07', '20:23:12', 'Avenida 68 # 19C-20, Alcalá', 1689800, 'Por pagar'),
(15, 7, '2024-01-08', '20:35:07', 'Carrera 88D # 6D-27, Castilla, Torre 16 Apto 554', 2055000, 'Por pagar'),
(16, 7, '2024-01-09', '14:18:08', 'Carrera 88D # 6D-27, Castilla, Torre 16 Apto 554', 2608800, 'Por pagar'),
(19, 7, '2024-02-04', '18:10:51', 'Carrera 88D # 6D-27, Castilla, Torre 16 Apto 554', 769900, 'Por enviar'),
(20, 7, '2024-02-23', '08:27:32', 'Carrera 88D # 6C-20, Castilla', 600000, 'Pagado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `codProd` int(11) NOT NULL,
  `idAdmin` int(11) NOT NULL,
  `nomProd` varchar(50) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `precio` double NOT NULL,
  `estProd` varchar(20) NOT NULL,
  `stockProd` int(11) DEFAULT NULL,
  `imagen` varchar(70) NOT NULL,
  `codigoCat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`codProd`, `idAdmin`, `nomProd`, `marca`, `precio`, `estProd`, `stockProd`, `imagen`, `codigoCat`) VALUES
(1, 1, 'Celular Redmi 9T EUCarbon', 'Redmi', 769900, 'Disponible', 10, 'redmicel.png', 1),
(2, 2, 'Samsung Galaxy A24', 'Samsung', 2050000, 'Agotado', 0, 'samsungA24cel.png', 1),
(3, 3, 'Moto G30 Dual SIM', 'Motorola', 769000, 'Disponible', 2, 'motorolag30cel.png', 1),
(4, 1, 'Portatil ASUS X415EA', 'Asus', 1399000, 'Disponible', 15, 'asusx415port.png', 2),
(5, 3, 'Portatil Acer A315', 'Acer', 1299000, 'Disponible', 10, 'acerA315.png', 2),
(6, 2, 'Celular Xiaomi Poco X3 PRO Phantom', 'Xiaomi', 989900, 'Disponible', 20, 'elular Xiaomi Poco X3 PRO Phantom.png', 1),
(9, 1, 'Computador All In One Lenovo AIO 3', 'Lenovo', 1999000, 'Disponible', 5, 'AllInOneLenovoAio3.png', 3),
(11, 1, 'Tablet Samsung A8', 'Samsung', 799900, 'Disponible', 20, 'tabletsamsungA8.png', 4),
(12, 2, 'Audifonos Sony In Ear WFC700N', 'Sony', 290000, 'Disponible', 10, 'audifonosSonyInEarWFC700N.png', 5),
(13, 2, 'Parlante Sonos Era 300', 'Sonos', 590000, 'Disponible', 15, 'parlanteSonosEra300.png', 6),
(15, 1, 'Samsung Galaxy S20 FE Dual SIM', 'samsung', 2055000, 'Disponible', 20, 'samsung-galaxy-s20-fe.png', 1),
(16, 1, 'Moto G20 Dual SIM', 'Motorola', 649999, 'Disponible', 16, 'motorola g20.png', 1),
(17, 3, 'Realme 6', 'Realme', 880000, 'Disponible', 10, '1.realme6_CometBlue_Front_RGB_1000x.webp', 1),
(18, 2, 'Samsung Galaxy A32', 'Samsung', 919900, 'Disponible', 20, 'samsung-galaxy-a32.png', 1),
(19, 3, 'Xiaomi Poco X3 Pro', 'Xiaomi', 1139900, 'Disponible', 20, 'xiaomi poco pro.png', 1),
(20, 3, 'Portátil LENOVO IdeaPad 1', 'Lenovo', 1399000, 'Disponible', 22, 'portatil_lenovo.png', 2),
(21, 1, 'Portátil ACER T36F3', 'ACER', 1999000, 'Disponible', 20, 'Portátil ACER T36F3.png', 2),
(22, 1, 'Portátil ACER 544K', 'ACER', 1999000, 'Disponible', 15, 'portátil ACER 544K.png', 2),
(23, 3, 'Portátil HP Em0006la', 'HP', 1999000, 'Disponible', 25, 'Portátil HP Em0006la.png', 2),
(24, 2, 'Portátil Gamer LENOVO', 'Lenovo', 3159000, 'Disponible', 15, 'Portátil Gamer LENOVO.png', 2),
(25, 3, 'Portátil ASUS TUF Gaming', 'ASUS', 3149000, 'Disponible', 33, 'Portátil ASUS TUF Gaming.png', 2),
(26, 2, 'Portátil Gamer ACER', 'ACER', 7899000, 'Disponible', 12, 'Portátil Gamer ACER.png', 2),
(33, 2, 'Computador All in One HP dd2006la', 'HP', 1399000, 'Disponible', 12, 'all(6).png', 3),
(34, 3, 'Computador All in One HP dd2011la', 'HP', 1549000, 'Disponible', 32, 'all(4).png', 3),
(35, 3, 'Computador All In One LENOVO AIO 3 White', 'LENOVO', 2999000, 'Disponible', 8, 'all(8).png', 3),
(36, 2, 'Computador All in One ASUS ', 'ASUS', 2899000, 'Disponible', 15, 'ASUS.png', 3),
(37, 1, 'Computador All in One HP PAVILION ca0000la', 'HP', 2899000, 'Disponible', 15, 'Computador All in One HP PAVILION.png', 3),
(38, 2, 'Computador All In One Lenovo', 'LENOVO', 4349000, 'Disponible', 12, 'IO 3 - AMD Ryzen 7.png', 3),
(39, 2, 'iMac 24 Chip M3 Apple', 'APPLE', 10029000, 'Disponible', 5, 'APPLE.png', 3),
(40, 1, 'Computador All In One LENOVO Yoga AIO', 'LENOVO', 13999000, 'Disponible', 12, 'e LENOVO Yoga.png', 3),
(41, 3, 'Tablet TCL TAB 8', 'TCL', 399900, 'Disponible', 12, 'Tablet TCL 8_ Pulgadas TAB.png', 4),
(42, 3, 'Tablet LENOVO M8', 'LENOVO', 579000, 'Disponible', 19, 'Tablet LENOVO 8 Pulgadas M8 2gen LTE Color Gris.png', 4),
(43, 1, 'Tablet LENOVO M10 Plus', 'LENOVO', 1299000, 'Disponible', 22, 'Tablet LENOVO 10 Pulgadas M10 Plus Wifi Color Gris.png', 4),
(44, 1, 'Tablet SAMSUNG S7Fe', 'Samsung', 3199900, 'Disponible', 25, 'Tablet SAMSUNG 12.4 Pulgadas S7Fe Wifi Color Plata.png', 4),
(45, 1, 'Tablet SAMSUNG S6', 'samsung', 1999900, 'Disponible', 15, 'Tablet SAMSUNG 10.3 pulgadas S6 Wifi Color Azul.png', 4),
(46, 3, 'iPad Pro 6ta Gen', 'APPLE', 13149000, 'Disponible', 22, 'iPad Pro 12.9 pulgadas 2TB 6ta Gen Wifi Gris.png', 4),
(47, 2, 'Tablet SAMSUNG Galaxy S8 Ultra', 'Samsung', 6299900, 'Disponible', 12, 'Tablet SAMSUNG Galaxy 14.6 Pulgadas S8 Ultra Wifi 5G color Gris.png', 4),
(48, 1, 'Tablet SAMSUNG Galaxy S8 Plus', 'Samsung', 5299900, 'Disponible', 15, 'Tablet SAMSUNG Galaxy 12.4 Pulgadas S8+ Wifi 5G color Negro.png', 4),
(49, 3, 'Parlante BOSE SoundLink Flex', 'BOSE', 599900, 'Disponible', 12, 'Parlante BOSE SoundLink Flex.png', 6),
(50, 2, 'Parlante JBL PARTYBOX', 'JBL', 1199900, 'Disponible', 26, 'Parlante JBL PARTYBOX.png', 6),
(51, 3, 'KALLEY K-SPK400', 'KALLEY', 1699900, 'Disponible', 15, 'Kalley.png', 6),
(52, 1, 'Parlante SONOS ERA 100 Blanco', 'SONOS', 1399900, 'Disponible', 4, 'Parlante SONOS ERA 100 Blanco.png', 6),
(53, 3, 'Parlante BOSE S1 PRO', 'BOSE', 3599900, 'Disponible', 5, 'Parlante BOSE S1 PRO+.png', 6),
(54, 3, 'Parlante KALLEY K-SPK50BL2', 'Kalley', 394000, 'Disponible', 5, 'Parlante KALLEY K-SPK50BL2.png', 6),
(55, 3, 'Parlante KALLEY K-SPK30BL2', 'KALLEY', 399900, 'Disponible', 8, 'Parlante KALLEY K-SPK30BL2.png', 6),
(56, 1, 'Parlante LG XBOOM GO XG7QBK', 'LG', 549900, 'Disponible', 18, 'Parlante LG XBOOM GO XG7QBK.png', 6),
(58, 1, 'Audifonos BOSE In Ear EarbudsII', 'Bose', 1799900, 'Disponible', 12, 'Audifonos BOSE In Ear QuietComfort EarbudsII Gris.png', 5),
(59, 3, 'Audífonos APPLE AirPods Pro 2.ª Generación', 'Apple', 1229000, 'Disponible', 5, 'Audífonos APPLE AirPods Pro 2.ª Generación.png', 5),
(60, 2, 'Audífonos PANASONIC In Ear', 'Panasonic', 14900, 'Disponible', 24, 'Audífonos PANASONIC Alámbricos In Ear RP-HV096P Negro.png', 5),
(61, 3, 'Audífonos XIAOMI Alámbricos InEar Basic Plateado', 'Xiaomi', 32900, 'Disponible', 32, 'Audífonos XIAOMI Alámbricos InEar Basic Plateado.png', 5),
(62, 1, 'Audífonos SONY Alámbricos In Ear', 'Sony', 39900, 'Disponible', 35, 'Audífonos SONY Alámbricos In Ear Manos Libres MDR-EX15AP Blanco.png', 5),
(63, 1, 'Audífonos de Diadema SONY Inalámbricos OverEar', 'Sony', 999900, 'Disponible', 5, 'SONY Inalámbricos Bluetooth Over Ear WH-1000XM4.png', 5),
(64, 1, 'Audífonos de Diadema SONY Inalámbricos OnEar', 'Sony', 199900, 'Disponible', 35, 'SONY Inalámbricos Bluetooth On Ear WH-CH520.png', 5),
(65, 3, 'Audífonos de Diadema BOSE Inalámbricos OverEar 700', 'Bose', 1799900, 'Disponible', 5, 'BOSE Inalámbricos Bluetooth Over Ear 700.png', 5),
(66, 12, 'Movil 1', 'Samsungs', 100000, 'Disponible', 995, 'movil1.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `idProv` int(11) NOT NULL,
  `NIT` varchar(20) NOT NULL,
  `nomProv` varchar(50) NOT NULL,
  `correoProv` varchar(50) NOT NULL,
  `nomCont` varchar(50) NOT NULL,
  `apeCont` varchar(50) NOT NULL,
  `direccion` varchar(40) NOT NULL,
  `telProv` varchar(30) NOT NULL,
  `paginaWeb` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`idProv`, `NIT`, `nomProv`, `correoProv`, `nomCont`, `apeCont`, `direccion`, `telProv`, `paginaWeb`) VALUES
(1, '830067394-6', 'Mercado Libre', 'mercadolibre.support@mail.com', 'Marcela', 'Perez', 'Cra 17 No. 93-09', '8391246', 'mercadolibre.com'),
(2, '890.900.943-1', 'Alkosto', 'clientealkosto@mail.com', 'Mateo', 'López', 'Ave Cra 30 #10-25', '7423014', 'alkosto.com'),
(3, '890900608-9', 'Exito', 'ayuda_exito@mail.com', 'Carlos', 'Contreras', 'Cra 86 #6-37', '4512957', 'exito.com'),
(4, '900.095.383-8', 'Falabella', 'ayuda.falabella@mail.com', 'Sandra', 'Ruiz', 'Cl 20 No. 82-52', '5678234', 'falabella.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Indices de la tabla `caracteristicas`
--
ALTER TABLE `caracteristicas`
  ADD PRIMARY KEY (`idCaract`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`codigoCat`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `detallepedidos`
--
ALTER TABLE `detallepedidos`
  ADD PRIMARY KEY (`idDetalle`),
  ADD KEY `codPedido` (`codPedido`),
  ADD KEY `codProd` (`codProd`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`codFactura`),
  ADD KEY `idProv` (`idProv`),
  ADD KEY `codProd` (`codProd`);

--
-- Indices de la tabla `infoproductos`
--
ALTER TABLE `infoproductos`
  ADD PRIMARY KEY (`idInfo`),
  ADD KEY `codProd` (`codProd`),
  ADD KEY `idCaract` (`idCaract`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`codPedido`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`codProd`),
  ADD KEY `idAdmin` (`idAdmin`),
  ADD KEY `codigoCat` (`codigoCat`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`idProv`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `idAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `caracteristicas`
--
ALTER TABLE `caracteristicas`
  MODIFY `idCaract` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `detallepedidos`
--
ALTER TABLE `detallepedidos`
  MODIFY `idDetalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `codFactura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `infoproductos`
--
ALTER TABLE `infoproductos`
  MODIFY `idInfo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1296;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `codPedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `codProd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `idProv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detallepedidos`
--
ALTER TABLE `detallepedidos`
  ADD CONSTRAINT `detallepedidos_ibfk_1` FOREIGN KEY (`codPedido`) REFERENCES `pedidos` (`codPedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detallepedidos_ibfk_2` FOREIGN KEY (`codProd`) REFERENCES `productos` (`codProd`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`idProv`) REFERENCES `proveedores` (`idProv`),
  ADD CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`codProd`) REFERENCES `productos` (`codProd`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `infoproductos`
--
ALTER TABLE `infoproductos`
  ADD CONSTRAINT `infoproductos_ibfk_1` FOREIGN KEY (`codProd`) REFERENCES `productos` (`codProd`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `infoproductos_ibfk_2` FOREIGN KEY (`idCaract`) REFERENCES `caracteristicas` (`idCaract`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`idAdmin`) REFERENCES `administradores` (`idAdmin`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`codigoCat`) REFERENCES `categorias` (`codigoCat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
