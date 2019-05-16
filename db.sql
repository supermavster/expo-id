-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.5.0.5332
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para u107806033_tool
CREATE DATABASE IF NOT EXISTS `u107806033_tool` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `u107806033_tool`;

-- Volcando estructura para tabla u107806033_tool.cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `cedula` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `imagen` text,
  `tipo` varchar(45) NOT NULL DEFAULT 'NORMAL',
  `correo_opcional` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cedula` (`cedula`),
  KEY `id_usuario` (`id_usuario`),
  KEY `fk_cliente_empresa1_idx` (`id_empresa`),
  CONSTRAINT `FK_cliente_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_cliente_empresa1` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla u107806033_tool.cliente: ~55 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` (`id`, `id_usuario`, `id_empresa`, `cedula`, `telefono`, `direccion`, `imagen`, `tipo`, `correo_opcional`) VALUES
	(24, 51, NULL, '1052313898', '3107785019', 'calle 75a#2-251 apartamento 405', NULL, 'NORMAL', NULL),
	(29, 53, NULL, '19356292', '3167254493', 'carrera 69a # 19-27 sur', NULL, 'NORMAL', NULL),
	(30, 54, 10, '901141276-9', '3103033440', 'Calle 138 No. 10 a 52 of 101', NULL, 'EMPRESA', NULL),
	(31, 55, NULL, '19320907', '3152045592', 'carrer68 g 43b 15 sur', NULL, 'NORMAL', NULL),
	(32, 56, 11, '830035037', '6719208', 'carrera 21a # 159-35', NULL, 'EMPRESA', NULL),
	(33, 57, 12, '9350831', '3213839143', 'CRA 50 # 33 - 18', NULL, 'EMPRESA', NULL),
	(34, 58, NULL, '79508418', '3134524281', 'calle 38f # 68d - 64', NULL, 'NORMAL', NULL),
	(36, 61, NULL, '79492917', '3123880581', 'cra5a #46d - 37 sur', NULL, 'NORMAL', NULL),
	(37, 62, 13, '800.204.305-1', '3163968432', 'kilometro 5 via paipa-duitama ', NULL, 'EMPRESA', NULL),
	(38, 63, NULL, '9009547654', '3118617958', 'calle 16 # 7 - 45', NULL, 'INDUSTRIA', NULL),
	(39, 64, 14, '830087479-9', '2.373735E+115', 'calle 8 # 30 - 51', NULL, 'EMPRESA', NULL),
	(40, 65, 15, '860 006 282-8', '4224700', 'Av. Carrera 129 Nº 17F – 97', NULL, 'EMPRESA', NULL),
	(41, 66, NULL, '1018408630', '3143893072', 'calle 97b #2a - 68', NULL, 'NORMAL', NULL),
	(42, 67, 16, '7224569-9', '7603533', 'calle 9 nª24-72', NULL, 'EMPRESA', NULL),
	(43, 68, NULL, '79496564', '3208816673', 'transversal 78i # 41d-05 sur', NULL, 'NORMAL', NULL),
	(44, 69, 17, '830086645-0', '6102587', 'calle 90 # 11A-34', NULL, 'EMPRESA', NULL),
	(45, 70, NULL, '12449088', '3214781030', 'carrera 7c # 3-98', NULL, 'NORMAL', NULL),
	(46, 74, NULL, '80124095', '3203578133', 'AV 1 DE MAYO 38B - 18', NULL, 'NORMAL', NULL),
	(47, 75, NULL, '79761859', '3128327518', 'carrera 75g # 62-33 sur', NULL, 'NORMAL', NULL),
	(48, 76, 18, '899999044-3', '3132959986', 'calle 54 nº10d-10  sogamoso', NULL, 'EMPRESA', NULL),
	(49, 77, NULL, '1052382548', '3142996631', 'punta larga', NULL, 'NORMAL', NULL),
	(50, 78, 19, '860091213-1', '7562457', 'Parque Galicia bodega 10A kmtr 3 vía Funza Siberia', NULL, 'EMPRESA', NULL),
	(51, 79, NULL, '19312124', '3112560493', 'cra 72u # 43 - 51', NULL, 'NORMAL', NULL),
	(52, 80, 20, '15986997-3', '2379000', 'CALLE 9  # 40 50', NULL, 'EMPRESA', NULL),
	(54, 81, NULL, '71602426', '3174695079', 'AV AMERICAS 72C # 35', NULL, 'NORMAL', NULL),
	(55, 82, 21, '19056027', '3208902027', 'CALLE 36 SUR N° 69A - 39', NULL, 'EMPRESA', NULL),
	(56, 83, NULL, '17139692', '3105606797', 'calle 147 # 95A-17 AP 503D 1', NULL, 'NORMAL', NULL),
	(57, 84, 22, '901023297-8', '3124457876', 'kilometro 3 via paipa-duitama', NULL, 'EMPRESA', NULL),
	(58, 85, NULL, '1121846067', '3133297196', 'CRA 11C # 15 - 18 SUR', NULL, 'NORMAL', NULL),
	(59, 86, NULL, '80220845', '3134680675', 'CARRERA 50A 22-07SUR', NULL, 'NORMAL', NULL),
	(60, 87, 23, '901202958-6', '3107754192', 'CARRERA 14 # 16-52', NULL, 'EMPRESA', NULL),
	(61, 88, NULL, '74389465', '3143727482', 'transversal 14 nº22-49 DUITAMA', NULL, 'NORMAL', ''),
	(62, 89, 24, '901092334-7', '3107668446', 'trav. 34 # 32-69 soacha ', NULL, 'EMPRESA', NULL),
	(63, 90, 25, '801004314-1', '3182655860', 'CELTA  LOTE 57', NULL, 'EMPRESA', NULL),
	(64, 91, NULL, '1057576590', '3128347072', 'calle 11 # 15-53 Sogamoso', NULL, 'FERRETERO', 'yeni.cris27@gmail.com'),
	(65, 92, 26, '900.264.480-1', '2615377', 'CLL24A SUR # 68H - 91', NULL, 'EMPRESA', NULL),
	(66, 93, NULL, NULL, NULL, NULL, NULL, 'NORMAL', NULL),
	(67, 94, NULL, '74182833', '3214973043', 'calle 9 a # 31-25 Duitama', NULL, 'NORMAL', ''),
	(68, 95, NULL, '19400360', '3112339014', 'CLL 29A # 50B - 66 SUR', NULL, 'FERRETERO', ''),
	(69, 96, 27, '900338430-0', '2162552', 'calle 128 # 46-56', NULL, 'EMPRESA', NULL),
	(70, 97, 28, '900844997-4', '3203874001', 'CALLE 3 # 2-43', NULL, 'EMPRESA', NULL),
	(71, 98, NULL, '7221957', '3105752531', 'TRANSVERSAL 29 Nº 16-31', NULL, 'INDUSTRIA', ''),
	(72, 99, 29, '826001185-5', '3138578168', 'kilometro 25 via Tunja-Paipa sector Maguncia', NULL, 'EMPRESA', NULL),
	(73, 100, 30, '900950141-0', '3007856369', 'calle 18 nº16-16', NULL, 'EMPRESA', NULL),
	(74, 101, 31, '860031796-7', '317424250', ' Cra. 2 # 81-40, Soacha', NULL, 'EMPRESA', NULL),
	(75, 102, NULL, '19187610', '3125641770', 'CLL 74BIS # 87C - 44 SUR', NULL, 'NORMAL', ''),
	(76, 103, NULL, '8324711', '3118913420', 'calle 20 n10-15', NULL, 'NORMAL', ''),
	(77, 104, NULL, '1052390743', '3102850260', 'transversal 29 nª16-115', NULL, 'NORMAL', ''),
	(78, 106, NULL, NULL, NULL, NULL, NULL, 'NORMAL', NULL),
	(79, 107, NULL, '79341991', '3223471015', 'TOOLBOX', NULL, 'FERRETERO', ''),
	(80, 108, 32, '900810833-9', '4034616', 'CRA 68M  # 37 - 35 SUR', NULL, 'EMPRESA', NULL),
	(81, 109, 33, '901161228-0', '3108501770', 'carrera 47 # 128A-46', NULL, 'EMPRESA', NULL),
	(82, 110, NULL, '80874761', '3013365203', 'calle 128 # 46-59', NULL, 'INDUSTRIA', 'compras@cercol-colombia.com.co'),
	(83, 112, NULL, '79494365', '3123580379', 'carrera 54 # 51-36 sur venecia', NULL, 'NORMAL', ''),
	(108, 54, 10, '9011412769', '3103033440', 'Calle 138 No. 10 a 52 of 101', NULL, 'EMPRESA', NULL);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;

-- Volcando estructura para tabla u107806033_tool.cliente_landing
CREATE TABLE IF NOT EXISTS `cliente_landing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `correo_electronico` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `mensaje` text COLLATE utf8_unicode_ci,
  `descripcion` text COLLATE utf8_unicode_ci,
  `codigo_cupon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitud` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitud` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_digo_dane_del_departamento` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `c_digo_dane_del_municipio` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `departamento` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `municipio` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo_electronico` (`correo_electronico`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla u107806033_tool.cliente_landing: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente_landing` DISABLE KEYS */;
INSERT INTO `cliente_landing` (`id`, `nombre`, `telefono`, `correo_electronico`, `mensaje`, `descripcion`, `codigo_cupon`, `longitud`, `latitud`, `c_digo_dane_del_departamento`, `c_digo_dane_del_municipio`, `departamento`, `municipio`, `region`) VALUES
	(40, 'Carlos Andrés Patiño ', '', 'andrw45@hotmail.com', '', 'OK', '13X62865', '', '', '11', '11001', 'Bogotá D.C.', 'Bogotá D.C.', 'Región Centro Oriente'),
	(41, 'Fredy suarez', '3105646997', 'fredygst@hotmai.com', 'Un buen respaldo de la herramienta, garantia y soporte tecnico, es lo que busco.', '', '14ZqI211', '', '', '25', '25596', 'Cundinamarca', 'Quipile', 'Región Centro Oriente'),
	(42, 'Edwin Ariel Morales Cardona', '3506624445', 'edwinmorales1979@hotmail.com', '', '', '14r6v459', '', '', '11', '11001', 'Bogotá D.C.', 'Bogotá D.C.', 'Región Centro Oriente'),
	(46, 'Carlos Arturo Velasquez Turmeque', '3152045592', 'carlos.velasquez907@hotmail.com', 'Carrera 68G 43B-15 Sur. Carlos Arturo Velasquez Turmeque. 3152045592. Ruteadora Makita 3612 ', '', '15Jiu461', '', '', '11', '11001', 'Bogotá D.C.', 'Bogotá D.C.', 'Región Centro Oriente'),
	(47, 'Henry baquero', '3102303155', 'inghbaquero@hotmail.com', 'Lista de productos y precios \n', '', '16Zhn951', '', '', '11', '11001', 'Bogotá D.C.', 'Bogotá D.C.', 'Región Centro Oriente'),
	(48, 'Fredy Alexander Vargas Cepeda', '3114802648', 'favargasce@gmail.com', '', '', '16MEB598', '', '', '11', '11001', 'Bogotá D.C.', 'Bogotá D.C.', 'Región Centro Oriente');
/*!40000 ALTER TABLE `cliente_landing` ENABLE KEYS */;

-- Volcando estructura para tabla u107806033_tool.cotizacion
CREATE TABLE IF NOT EXISTS `cotizacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `valor` decimal(10,0) NOT NULL DEFAULT '0',
  `descuento` decimal(10,0) NOT NULL DEFAULT '0',
  `subtotal` decimal(10,0) NOT NULL DEFAULT '0',
  `total` decimal(10,0) NOT NULL DEFAULT '0',
  `descripcion` text,
  `estado` varchar(45) DEFAULT 'REGISTRANDO',
  PRIMARY KEY (`id`),
  KEY `fk_cotizacion_cliente_idx` (`id_cliente`),
  KEY `fk_cotizacion_empleado1_idx` (`id_empleado`),
  CONSTRAINT `fk_cotizacion_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cotizacion_empleado1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla u107806033_tool.cotizacion: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cotizacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `cotizacion` ENABLE KEYS */;

-- Volcando estructura para tabla u107806033_tool.detalle_cotizacion
CREATE TABLE IF NOT EXISTS `detalle_cotizacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cotizacion` int(11) NOT NULL,
  `id_equipo` int(11) NOT NULL,
  `valor` decimal(10,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_detalle_cotizacion_cotizacion1_idx` (`id_cotizacion`),
  KEY `fk_detalle_cotizacion_equipo1_idx` (`id_equipo`),
  CONSTRAINT `fk_detalle_cotizacion_cotizacion1` FOREIGN KEY (`id_cotizacion`) REFERENCES `cotizacion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalle_cotizacion_equipo1` FOREIGN KEY (`id_equipo`) REFERENCES `equipo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla u107806033_tool.detalle_cotizacion: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `detalle_cotizacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_cotizacion` ENABLE KEYS */;

-- Volcando estructura para tabla u107806033_tool.detalle_factura
CREATE TABLE IF NOT EXISTS `detalle_factura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_factura` int(11) NOT NULL,
  `id_equipo` int(11) NOT NULL,
  `valor` decimal(10,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_detalle_factura_factura1_idx` (`id_factura`),
  KEY `fk_detalle_factura_equipo1_idx` (`id_equipo`),
  CONSTRAINT `fk_detalle_factura_equipo1` FOREIGN KEY (`id_equipo`) REFERENCES `equipo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalle_factura_factura1` FOREIGN KEY (`id_factura`) REFERENCES `factura` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla u107806033_tool.detalle_factura: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `detalle_factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_factura` ENABLE KEYS */;

-- Volcando estructura para tabla u107806033_tool.detalle_servicio_tecnico
CREATE TABLE IF NOT EXISTS `detalle_servicio_tecnico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_servicio_tecnico` int(11) NOT NULL,
  `id_repuesto` int(11) NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `cantidad` varchar(45) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_detalle_servicio_tecnico_servicio_tecnico1_idx` (`id_servicio_tecnico`),
  KEY `fk_detalle_servicio_tecnico_repuesto1_idx` (`id_repuesto`),
  CONSTRAINT `fk_detalle_servicio_tecnico_repuesto1` FOREIGN KEY (`id_repuesto`) REFERENCES `repuesto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalle_servicio_tecnico_servicio_tecnico1` FOREIGN KEY (`id_servicio_tecnico`) REFERENCES `servicio_tecnico` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=514 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla u107806033_tool.detalle_servicio_tecnico: ~449 rows (aproximadamente)
/*!40000 ALTER TABLE `detalle_servicio_tecnico` DISABLE KEYS */;
INSERT INTO `detalle_servicio_tecnico` (`id`, `id_servicio_tecnico`, `id_repuesto`, `precio`, `cantidad`) VALUES
	(33, 50, 7, 30000, '1'),
	(34, 53, 10, 9900, '1'),
	(35, 53, 13, 4000, '1'),
	(36, 53, 12, 16200, '1'),
	(37, 53, 11, 104000, '1'),
	(38, 53, 14, 7200, '1'),
	(39, 73, 142, 500, '1'),
	(40, 73, 143, 500, '1'),
	(41, 73, 144, 2500, '1'),
	(42, 74, 28, 7500, '1'),
	(43, 75, 145, 0, '1'),
	(45, 76, 149, 72900, '1'),
	(46, 76, 150, 55900, '1'),
	(47, 76, 156, 1900, '1'),
	(48, 76, 151, 23300, '1'),
	(49, 76, 152, 55000, '1'),
	(50, 76, 153, 4300, '1'),
	(51, 76, 154, 14400, '1'),
	(53, 81, 157, 199990, '1'),
	(54, 81, 158, 12800, '1'),
	(55, 81, 159, 28000, '2'),
	(56, 81, 160, 11800, '1'),
	(59, 82, 164, 11300, '1'),
	(60, 83, 157, 199990, '1'),
	(61, 82, 168, 8400, '2'),
	(62, 82, 170, 128500, '1'),
	(64, 83, 158, 12800, '1'),
	(65, 83, 165, 170200, '1'),
	(66, 83, 171, 73800, '1'),
	(67, 84, 170, 128500, '1'),
	(68, 84, 174, 2500, '1'),
	(69, 84, 173, 200, '1'),
	(70, 84, 172, 1300, '1'),
	(71, 84, 169, 0, '1'),
	(72, 84, 164, 11300, '1'),
	(73, 84, 175, 6600, '1'),
	(74, 85, 158, 12800, '1'),
	(75, 85, 157, 199990, '1'),
	(76, 85, 159, 28000, '2'),
	(77, 85, 8, 5000, '1'),
	(78, 86, 170, 128500, '1'),
	(81, 86, 169, 13000, '1'),
	(82, 86, 164, 11300, '1'),
	(83, 87, 160, 11800, '1'),
	(84, 87, 166, 164100, '1'),
	(85, 87, 169, 13000, '1'),
	(86, 88, 157, 199990, '1'),
	(87, 88, 165, 170200, '1'),
	(88, 88, 158, 12800, '1'),
	(89, 89, 158, 12800, '1'),
	(90, 89, 157, 199990, '1'),
	(91, 89, 165, 170200, '1'),
	(92, 89, 161, 19000, '2'),
	(93, 89, 177, 700, '1'),
	(94, 89, 176, 300, '1'),
	(95, 89, 178, 1900, '1'),
	(96, 90, 172, 1300, '1'),
	(97, 90, 174, 2500, '1'),
	(99, 90, 179, 62400, '1'),
	(100, 90, 164, 11300, '1'),
	(101, 90, 160, 11800, '1'),
	(102, 91, 160, 11800, '1'),
	(103, 91, 178, 1900, '1'),
	(104, 91, 165, 170200, '1'),
	(105, 91, 158, 12800, '1'),
	(106, 91, 163, 11300, '1'),
	(107, 91, 180, 8200, '1'),
	(108, 92, 178, 1900, '1'),
	(109, 92, 180, 8200, '1'),
	(110, 92, 159, 28000, '2'),
	(111, 92, 157, 199990, '1'),
	(112, 92, 158, 12800, '1'),
	(113, 93, 158, 12800, '1'),
	(114, 93, 157, 199990, '1'),
	(115, 93, 8, 5000, '1'),
	(116, 93, 181, 8200, '1'),
	(117, 93, 178, 1900, '1'),
	(118, 93, 177, 700, '1'),
	(119, 93, 165, 170200, '1'),
	(120, 94, 174, 2500, '1'),
	(121, 94, 8, 5000, '1'),
	(123, 94, 168, 8400, '2'),
	(124, 94, 170, 128500, '1'),
	(125, 94, 164, 11300, '1'),
	(126, 95, 175, 6600, '1'),
	(127, 95, 174, 2500, '1'),
	(128, 95, 170, 128500, '1'),
	(129, 95, 164, 11300, '1'),
	(130, 95, 169, 13000, '1'),
	(131, 96, 174, 2500, '1'),
	(132, 96, 175, 6600, '1'),
	(133, 96, 167, 47900, '1'),
	(134, 96, 166, 164100, '1'),
	(135, 96, 159, 28000, '2'),
	(136, 96, 179, 62400, '1'),
	(137, 96, 169, 13000, '1'),
	(138, 97, 187, 26100, '1'),
	(139, 97, 188, 11000, '1'),
	(140, 97, 186, 6300, '1'),
	(141, 97, 189, 15000, '1'),
	(142, 98, 189, 15000, '1'),
	(143, 98, 9, 7300, '1'),
	(144, 98, 9, 7300, '1'),
	(145, 99, 106, 148300, '1'),
	(146, 99, 187, 26100, '1'),
	(147, 99, 188, 11000, '1'),
	(148, 99, 104, 13000, '1'),
	(149, 99, 185, 39500, '1'),
	(150, 99, 104, 13000, '1'),
	(151, 100, 190, 15100, '1'),
	(152, 100, 189, 15000, '1'),
	(153, 100, 191, 27700, '1'),
	(154, 100, 192, 43100, '1'),
	(156, 100, 106, 148300, '1'),
	(157, 100, 104, 13000, '1'),
	(158, 101, 8, 5000, '1'),
	(159, 101, 104, 13000, '1'),
	(160, 101, 185, 39500, '1'),
	(161, 101, 106, 148300, '1'),
	(162, 101, 189, 15000, '1'),
	(163, 102, 106, 148300, '1'),
	(164, 102, 184, 92500, '1'),
	(165, 102, 185, 39500, '1'),
	(166, 102, 194, 13500, '1'),
	(167, 102, 189, 15000, '1'),
	(168, 103, 193, 169300, '1'),
	(169, 103, 192, 43100, '1'),
	(170, 103, 195, 14200, '1'),
	(171, 103, 189, 15000, '1'),
	(172, 104, 157, 199990, '1'),
	(173, 104, 178, 1900, '1'),
	(174, 104, 196, 4600, '1'),
	(175, 104, 158, 12800, '1'),
	(176, 105, 157, 199990, '1'),
	(177, 105, 165, 170200, '1'),
	(178, 105, 158, 12800, '1'),
	(179, 105, 180, 8200, '1'),
	(180, 105, 8, 5000, '1'),
	(181, 105, 178, 1900, '1'),
	(182, 106, 157, 199990, '1'),
	(183, 106, 165, 170200, '1'),
	(184, 106, 158, 12800, '1'),
	(185, 106, 179, 62400, '1'),
	(186, 106, 178, 1900, '1'),
	(187, 107, 157, 199990, '1'),
	(188, 107, 165, 170200, '1'),
	(189, 107, 158, 12800, '1'),
	(190, 107, 178, 1900, '1'),
	(191, 107, 196, 4600, '1'),
	(192, 108, 157, 199990, '1'),
	(193, 108, 165, 170200, '1'),
	(194, 108, 179, 62400, '1'),
	(195, 108, 158, 12800, '1'),
	(196, 109, 157, 199990, '1'),
	(197, 109, 165, 170200, '1'),
	(198, 109, 171, 73800, '1'),
	(199, 109, 158, 12800, '1'),
	(200, 109, 179, 62400, '1'),
	(201, 109, 178, 1900, '1'),
	(202, 110, 157, 199990, '1'),
	(204, 110, 159, 28000, '2'),
	(205, 110, 158, 12800, '1'),
	(206, 110, 179, 62400, '1'),
	(207, 110, 178, 1900, '1'),
	(208, 111, 157, 199990, '1'),
	(209, 111, 165, 170200, '1'),
	(210, 111, 178, 1900, '1'),
	(211, 111, 158, 12800, '1'),
	(212, 112, 157, 199990, '1'),
	(213, 112, 165, 170200, '1'),
	(214, 112, 158, 12800, '1'),
	(215, 112, 197, 1500, '1'),
	(216, 112, 179, 62400, '1'),
	(217, 112, 178, 1900, '1'),
	(218, 113, 157, 199990, '1'),
	(219, 113, 178, 1900, '1'),
	(220, 113, 158, 12800, '1'),
	(221, 116, 165, 170200, '1'),
	(222, 116, 163, 11300, '1'),
	(223, 116, 160, 11800, '1'),
	(224, 116, 179, 62400, '1'),
	(225, 117, 165, 170200, '1'),
	(226, 117, 157, 199990, '1'),
	(227, 117, 8, 5000, '1'),
	(228, 117, 180, 8200, '1'),
	(229, 117, 178, 1900, '1'),
	(230, 119, 166, 164100, '1'),
	(231, 119, 169, 13000, '1'),
	(232, 119, 179, 62400, '1'),
	(233, 119, 174, 2500, '1'),
	(235, 120, 198, 6000, '1'),
	(236, 118, 199, 25000, '1'),
	(237, 121, 157, 199990, '1'),
	(238, 78, 186, 6300, '1'),
	(239, 78, 104, 13000, '1'),
	(240, 122, 166, 164100, '1'),
	(241, 122, 170, 128500, '1'),
	(242, 122, 169, 13000, '1'),
	(243, 122, 8, 5000, '1'),
	(244, 122, 174, 2500, '1'),
	(245, 123, 166, 164100, '1'),
	(246, 123, 169, 13000, '1'),
	(247, 123, 179, 62400, '1'),
	(248, 79, 204, 85000, '1'),
	(249, 79, 104, 11600, '1'),
	(250, 79, 186, 6300, '1'),
	(251, 80, 200, 59000, '1'),
	(252, 80, 201, 2500, '1'),
	(253, 80, 203, 6500, '1'),
	(254, 124, 213, 1800, '1'),
	(255, 124, 210, 1200, '1'),
	(256, 124, 212, 1400, '1'),
	(257, 124, 211, 800, '1'),
	(258, 124, 209, 1400, '1'),
	(259, 124, 208, 1300, '1'),
	(260, 124, 207, 1700, '1'),
	(261, 124, 206, 46000, '1'),
	(262, 124, 205, 2500, '1'),
	(263, 115, 215, 30200, '1'),
	(264, 115, 214, 180800, '1'),
	(265, 138, 106, 148300, '1'),
	(266, 138, 186, 6300, '1'),
	(267, 138, 194, 13500, '1'),
	(268, 136, 186, 6300, '1'),
	(269, 136, 186, 6300, '1'),
	(270, 136, 9, 14600, '2'),
	(271, 76, 147, 49300, '1'),
	(272, 134, 104, 11600, '1'),
	(273, 139, 216, 11500, '1'),
	(274, 139, 217, 46639, '1'),
	(275, 82, 169, 13000, '1'),
	(276, 82, 160, 11800, '1'),
	(277, 90, 167, 47900, '1'),
	(278, 140, 216, 11500, '1'),
	(279, 140, 217, 46639, '1'),
	(280, 125, 189, 15000, '1'),
	(282, 143, 124, 25000, '1'),
	(283, 144, 223, 9700, '1'),
	(284, 144, 224, 5700, '1'),
	(285, 144, 225, 6500, '1'),
	(286, 144, 226, 16303, '1'),
	(287, 144, 227, 3529, '1'),
	(288, 144, 230, 1400, '1'),
	(289, 144, 222, 125800, '1'),
	(290, 115, 231, 8900, '1'),
	(292, 146, 234, 45000, '1'),
	(293, 146, 235, 15000, '1'),
	(294, 164, 106, 148300, '1'),
	(295, 164, 236, 6000, '1'),
	(296, 164, 194, 13500, '1'),
	(297, 156, 166, 164100, '1'),
	(298, 156, 170, 128500, '1'),
	(299, 156, 168, 4200, '1'),
	(300, 156, 169, 13000, '1'),
	(301, 156, 173, 200, '1'),
	(302, 156, 172, 1300, '1'),
	(303, 155, 168, 8400, '2'),
	(304, 155, 166, 164100, '1'),
	(305, 155, 170, 128500, '1'),
	(306, 155, 169, 13000, '1'),
	(307, 159, 166, 164100, '1'),
	(308, 159, 169, 13000, '1'),
	(309, 151, 13, 4000, '1'),
	(310, 150, 239, 23500, '1'),
	(311, 147, 124, 25000, '1'),
	(312, 148, 239, 23500, '1'),
	(313, 169, 246, 5900, '1'),
	(316, 168, 241, 1000, '1'),
	(317, 168, 245, 200, '1'),
	(318, 170, 249, 303400, '1'),
	(319, 170, 250, 1800, '2'),
	(320, 170, 248, 76700, '1'),
	(321, 170, 251, 10200, '1'),
	(322, 173, 236, 6000, '1'),
	(323, 173, 193, 169300, '1'),
	(324, 173, 195, 14200, '1'),
	(326, 172, 252, 117453, '1'),
	(327, 175, 237, 79900, '1'),
	(328, 175, 238, 1500, '1'),
	(329, 168, 243, 600, '1'),
	(330, 168, 253, 5500, '1'),
	(331, 177, 216, 11500, '1'),
	(337, 179, 255, 410000, '1'),
	(338, 174, 106, 148300, '1'),
	(339, 174, 194, 13500, '1'),
	(340, 174, 14, 7200, '1'),
	(341, 181, 258, 217100, '1'),
	(342, 181, 259, 21100, '1'),
	(343, 181, 260, 19360, '1'),
	(344, 182, 165, 170200, '1'),
	(345, 182, 10, 10800, '1'),
	(346, 182, 160, 11800, '1'),
	(347, 182, 157, 199990, '1'),
	(348, 183, 166, 164100, '1'),
	(349, 183, 169, 13000, '1'),
	(350, 183, 160, 11800, '1'),
	(351, 182, 261, 2000, '1'),
	(352, 184, 193, 169300, '1'),
	(353, 184, 236, 6000, '1'),
	(354, 184, 195, 14200, '1'),
	(355, 184, 262, 16800, '1'),
	(356, 185, 10, 10800, '1'),
	(357, 185, 264, 115200, '1'),
	(358, 185, 263, 159000, '1'),
	(359, 185, 171, 73800, '1'),
	(360, 186, 168, 8400, '2'),
	(361, 186, 166, 164100, '1'),
	(362, 186, 170, 128500, '1'),
	(363, 186, 169, 13000, '1'),
	(364, 186, 160, 11800, '1'),
	(365, 187, 236, 6000, '1'),
	(366, 187, 193, 169300, '1'),
	(367, 187, 194, 13500, '1'),
	(368, 187, 189, 15000, '1'),
	(369, 125, 218, 30000, '1'),
	(370, 192, 200, 59000, '1'),
	(371, 192, 267, 57800, '1'),
	(372, 192, 203, 6500, '1'),
	(373, 192, 268, 24300, '1'),
	(374, 178, 270, 22600, '1'),
	(375, 178, 271, 70100, '1'),
	(376, 178, 273, 129800, '1'),
	(377, 178, 274, 52000, '1'),
	(378, 194, 223, 9700, '1'),
	(379, 194, 269, 151500, '1'),
	(380, 194, 275, 5700, '1'),
	(381, 194, 277, 1300, '1'),
	(382, 188, 33, 11000, '1'),
	(383, 188, 14, 7200, '1'),
	(384, 188, 203, 6500, '1'),
	(385, 191, 282, 157300, '1'),
	(386, 191, 160, 11800, '1'),
	(387, 191, 285, 172200, '1'),
	(388, 190, 285, 172200, '1'),
	(389, 190, 282, 157300, '1'),
	(390, 190, 158, 12800, '1'),
	(391, 191, 158, 12800, '1'),
	(392, 189, 158, 12800, '1'),
	(393, 189, 285, 172200, '1'),
	(394, 189, 282, 157300, '1'),
	(395, 193, 215, 30200, '1'),
	(396, 193, 287, 43800, '1'),
	(397, 180, 200, 59000, '1'),
	(398, 180, 203, 6500, '1'),
	(399, 197, 263, 159000, '1'),
	(400, 197, 158, 12800, '1'),
	(401, 197, 292, 7000, '1'),
	(402, 196, 166, 164100, '1'),
	(403, 196, 170, 128500, '1'),
	(404, 196, 169, 13000, '1'),
	(405, 196, 160, 11800, '1'),
	(406, 195, 157, 199990, '1'),
	(407, 195, 165, 170200, '1'),
	(408, 195, 158, 12800, '1'),
	(409, 195, 160, 11800, '1'),
	(410, 198, 293, 35800, '1'),
	(411, 198, 294, 47100, '1'),
	(412, 198, 295, 3200, '1'),
	(413, 198, 296, 4200, '1'),
	(414, 207, 282, 157300, '1'),
	(415, 207, 285, 172200, '1'),
	(416, 207, 160, 11800, '1'),
	(417, 207, 158, 12800, '1'),
	(418, 206, 282, 157300, '1'),
	(419, 206, 160, 11800, '1'),
	(420, 206, 158, 12800, '1'),
	(422, 206, 300, 1500, '1'),
	(423, 201, 158, 12800, '1'),
	(424, 201, 300, 1500, '1'),
	(425, 201, 164, 11300, '1'),
	(426, 201, 160, 11800, '1'),
	(427, 201, 301, 2000, '1'),
	(428, 201, 197, 1500, '1'),
	(429, 205, 303, 28211, '1'),
	(430, 204, 203, 6500, '1'),
	(431, 204, 289, 58500, '1'),
	(432, 204, 304, 800, '4'),
	(433, 203, 303, 28211, '1'),
	(434, 200, 305, 92000, '1'),
	(435, 200, 307, 7000, '1'),
	(436, 200, 306, 12000, '1'),
	(437, 199, 309, 1000, '1'),
	(438, 199, 308, 16000, '1'),
	(439, 199, 310, 5000, '1'),
	(440, 202, 303, 28211, '1'),
	(441, 202, 311, 8000, '1'),
	(442, 203, 312, 130000, '1'),
	(443, 208, 313, 38000, '1'),
	(444, 208, 311, 8000, '1'),
	(445, 208, 314, 9900, '1'),
	(446, 208, 315, 7000, '1'),
	(447, 204, 319, 2300, '1'),
	(448, 211, 175, 13200, '2'),
	(449, 211, 320, 14400, '1'),
	(450, 214, 166, 164100, '1'),
	(451, 214, 321, 78100, '1'),
	(452, 214, 169, 13000, '1'),
	(453, 214, 160, 11800, '1'),
	(454, 214, 322, 500, '1'),
	(455, 216, 166, 164100, '1'),
	(456, 216, 160, 11800, '1'),
	(457, 216, 169, 13000, '1'),
	(458, 216, 168, 8400, '2'),
	(459, 217, 166, 164100, '1'),
	(460, 217, 169, 13000, '1'),
	(461, 217, 160, 11800, '1'),
	(462, 218, 324, 153400, '1'),
	(463, 218, 323, 31000, '1'),
	(464, 209, 49, 11000, '1'),
	(465, 209, 30, 28400, '1'),
	(466, 211, 325, 12452, '1'),
	(467, 212, 194, 13500, '1'),
	(468, 224, 217, 46639, '1'),
	(469, 224, 216, 11500, '1'),
	(470, 224, 326, 93500, '1'),
	(471, 225, 328, 12000, '1'),
	(472, 225, 327, 45807, '1'),
	(473, 225, 175, 6600, '1'),
	(474, 225, 329, 9000, '1'),
	(475, 221, 330, 32000, '1'),
	(476, 220, 331, 1000, '1'),
	(477, 219, 331, 1000, '1'),
	(478, 231, 234, 45000, '1'),
	(479, 231, 235, 15000, '1'),
	(480, 234, 338, 26272, '1'),
	(481, 234, 337, 66664, '1'),
	(482, 234, 336, 286068, '1'),
	(483, 233, 339, 6800, '1'),
	(490, 226, 342, 20000, '10'),
	(491, 226, 303, 28211, '1'),
	(492, 226, 340, 51500, '1'),
	(493, 226, 341, 5000, '1'),
	(495, 227, 345, 52900, '1'),
	(496, 227, 343, 756500, '1'),
	(497, 227, 344, 209600, '1'),
	(499, 228, 346, 157000, '1'),
	(500, 228, 347, 11500, '1'),
	(501, 229, 330, 32000, '1'),
	(502, 237, 201, 2500, '1'),
	(503, 237, 319, 2300, '1'),
	(504, 237, 203, 6500, '1'),
	(505, 239, 284, 2000, '1'),
	(506, 239, 351, 59800, '1'),
	(508, 239, 202, 7600, '1'),
	(509, 239, 319, 2300, '1'),
	(510, 238, 352, 10700, '1'),
	(511, 238, 355, 30000, '1'),
	(512, 238, 353, 19000, '1'),
	(513, 238, 203, 6500, '1');
/*!40000 ALTER TABLE `detalle_servicio_tecnico` ENABLE KEYS */;

-- Volcando estructura para tabla u107806033_tool.diagnostico
CREATE TABLE IF NOT EXISTS `diagnostico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_servicio_tecnico` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_diagnostico_servicio_tecnico1_idx` (`id_servicio_tecnico`),
  KEY `fk_diagnostico_empleado1_idx` (`id_empleado`),
  CONSTRAINT `fk_diagnostico_empleado1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_diagnostico_servicio_tecnico1` FOREIGN KEY (`id_servicio_tecnico`) REFERENCES `servicio_tecnico` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla u107806033_tool.diagnostico: ~209 rows (aproximadamente)
/*!40000 ALTER TABLE `diagnostico` DISABLE KEYS */;
INSERT INTO `diagnostico` (`id`, `id_servicio_tecnico`, `id_empleado`, `descripcion`, `imagen`) VALUES
	(18, 50, 6, 'delgas abiertas', 'https://toolboxcentersas.website/upload/image2018122015453192060440.png'),
	(19, 52, 6, 'MANTENIMIENTO GENERAL CAMBIO DE CLAVIJA', 'https://toolboxcentersas.website/upload/image2018122115454223335705.png'),
	(20, 68, 7, 'La hidrolavadora no prendió a causa del motor quemado. escobillas destruidas y porta escobillas deformado.', 'https://toolboxcentersas.website/upload/image2018122615458604931414.png'),
	(22, 56, 7, 'La hidrolavadora enciende se detecta rodamientos secos falta de empuñadura y tornillos', 'https://toolboxcentersas.website/upload/image2018122615458615449827.png'),
	(23, 67, 7, 'La hidrolavadora prende pero tiene olor a quemado causas inducido en corto y resortes de escobillas deformados ausencia de accesorio porta cable y lanzas.', 'https://toolboxcentersas.website/upload/image2018122715459191608787.png'),
	(24, 66, 7, 'la hidrolavadora enciende.presenta desgaste de un rodamiento ,ausente de accesorios (manguera,pistola y lanzas) y ruedas.', 'https://toolboxcentersas.website/upload/image2018122715459194576225.png'),
	(25, 65, 7, 'la hidrolavadora presentas fallas al encender.Causa por la cual el inducido del motor tiene corto interno. ', 'https://toolboxcentersas.website/upload/image2018122715459197464960.png'),
	(26, 64, 7, 'la hidrolavadora presenta daño en el interruptor. Ausente de ruedas y accesorios(manguera,pistola y lanzas)', 'https://toolboxcentersas.website/upload/image2018122715459206087493.png'),
	(27, 63, 7, 'La hidrolavadora enciende. Ausente de ruedas y accesorios (manguera,pistola y lanzas) ', 'https://toolboxcentersas.website/upload/image2018122715459208779191.png'),
	(28, 62, 7, 'La hidrolavadora enciende. Ausencia de tapa tanque, ruedas, filtro manguera y lanzas. Pistola dañada incompleta. ', 'https://toolboxcentersas.website/upload/image2018122715459216162788.png'),
	(29, 61, 7, 'La hidrolavadora enciende con esfuerzo.motivo por el cual los rodamientos secos frenan el arranque optimo. Ausencia de de filtro y accesorios (manguera,pistola y lanzas)', 'https://toolboxcentersas.website/upload/image2018122715459219028051.png'),
	(31, 60, 7, 'La hidrolavadora enciende, presenta escobillas desgastadas. Ausencia de filtro , accesorios(manguera , pistola y lanzas) y ruedas.', 'https://toolboxcentersas.website/upload/image2018122715459222803690.png'),
	(32, 59, 7, 'la hidrolavadora enciende. Ausencia de ruedas y filtro ', 'https://toolboxcentersas.website/upload/image2018122715459228689302.png'),
	(33, 58, 7, 'La hidrolavadora enciende ,presenta un ruido de desgaste en sus rodamientos.', 'https://toolboxcentersas.website/upload/image2018122715459231293119.png'),
	(34, 57, 7, 'la hidrolavadora enciende presenta fuga de agua dentro de bomba . Ausencia de filtro.  ', 'https://toolboxcentersas.website/upload/image2018122715459233252272.png'),
	(35, 55, 7, 'El roto martillo funciona en condiciones optimas de trabajo. El motivo por el cual no sostiene la punta o  accesorio es por un desgaste el cual este no sostiene la esfera que lo sujeta. ', 'https://toolboxcentersas.website/upload/image2018122715459236764361.png'),
	(36, 54, 7, 'La amoladora de 4 1/2 no enciende por motivos de interruptor y cable en mal estado, también presenta deterioro en uno de sus rodamientos.', 'https://toolboxcentersas.website/upload/image2018122715459240105581.png'),
	(37, 53, 6, 'La ruteadora enciende, presenta desgaste en uno de sus rodamientos , escobillas y  cambio de eje pomo completo. ', 'https://toolboxcentersas.website/upload/image2018122715459250088133.png'),
	(38, 73, 7, 'se le realizo mantenimiento en general. ajuste de correa. ajuste presion de aire. cambio clavija y tornillo tapa correa', 'https://toolboxcentersas.website/upload/image2019010415466218987500.png'),
	(39, 55, 7, 'se hace entrega de la herramienta aclarandole al cliente cual es el motivo por el cual no se le sostenia el accesorio. no se le cobra nada.', 'https://toolboxcentersas.website/upload/image2019010815469862833182.png'),
	(40, 74, 7, 'SE LE CAMBIA EL SWITCH YA QUE EL QUE TENIA YA NO SERVIA, SE LE HACE UN AJUSTE AL CABLE DE PODER. Y SE LE CAMBIA LA GRASA. MANTENIMIENTO EN GENERAL', 'https://toolboxcentersas.website/upload/image2019011015471490326470.png'),
	(41, 75, 7, 'LA BASE SE PARTIO PRODUCTO EN GARANTIA / MAKITA/', 'https://toolboxcentersas.website/upload/image2019011815478267855960.png'),
	(42, 76, 7, 'la carcaza esta partida', 'https://toolboxcentersas.website/upload/image2019012815486971652804.png'),
	(43, 76, 7, 'soporte guía doblado', 'https://toolboxcentersas.website/upload/image2019012815486972775023.png'),
	(44, 76, 7, 'caja de piñones partido', 'https://toolboxcentersas.website/upload/image2019012815486973406584.png'),
	(45, 76, 7, 'caja de piñones partido', 'https://toolboxcentersas.website/upload/image2019012815486974290408.png'),
	(46, 76, 7, 'interruptor partido', 'https://toolboxcentersas.website/upload/image2019012815486976015443.png'),
	(47, 76, 7, 'Interrupto', 'https://toolboxcentersas.website/upload/image2019012815486976687764.png'),
	(48, 81, 6, 'INDUCIDO EN CORTO, POR RECALENTAMIENTO SE DAÑARON LOS CONECTORES DE LOS PORTA ESCOBILLAS', 'https://toolboxcentersas.website/upload/image2019012815487082619119.png'),
	(49, 85, 6, 'Problemas escobillas inducido, conectores bobina y clavija', 'https://toolboxcentersas.website/upload/image2019012815487130917419.png'),
	(50, 86, 6, 'CAMBIO DE ESCOBILLAS,, BOBINA QUEMADA Y CAMBIO DE RODAMIENTO', 'https://toolboxcentersas.website/upload/image2019012815487134620909.png'),
	(51, 87, 6, 'INDUCIDO QUEMADO, CAMBIO DE ESCOBILLAS Y RODAMIENTO CAJA', 'https://toolboxcentersas.website/upload/image2019012815487138787853.png'),
	(52, 88, 6, 'MOTOR QUEMADO', 'https://toolboxcentersas.website/upload/image2019012815487141846137.png'),
	(53, 89, 6, 'MOTOR QUEMADO', 'https://toolboxcentersas.website/upload/image2019012815487142879999.png'),
	(54, 81, 6, 'Motor en corto', 'https://toolboxcentersas.website/upload/image2019012815487191972721.png'),
	(55, 81, 6, '1', 'https://toolboxcentersas.website/upload/image2019012815487193699198.png'),
	(56, 92, 6, 'INDUCIDO EN CORTO', 'https://toolboxcentersas.website/upload/image2019012915487281461698.png'),
	(57, 97, 6, 'PIÑONES DESGASTADOS \nRODAMIENTOS DE LA CAJA DE PIÑONES  EN MAL ESTADO', 'https://toolboxcentersas.website/upload/image2019012915488044232328.png'),
	(58, 99, 6, 'inducido en corto, interruptor aislado, piñones desgastados', 'https://toolboxcentersas.website/upload/image2019013015488693193681.png'),
	(59, 100, 6, 'Inducido en corto interruptor averiado y caja de piñones ', 'https://toolboxcentersas.website/upload/image2019013115489565252426.png'),
	(60, 101, 6, 'inducido en corto, interruptor averiado', 'https://toolboxcentersas.website/upload/image2019013115489579111677.png'),
	(61, 104, 6, 'INDUCIDO EN CORTO', 'https://toolboxcentersas.website/upload/image2019013115489608221780.png'),
	(62, 105, 6, 'CAMPO E INDUCIDO EN CORTO', 'https://toolboxcentersas.website/upload/image2019013115489619417911.png'),
	(63, 106, 6, 'INDUCIDO Y CAMPO EN CORTO,\nCABLE INADECUADO', 'https://toolboxcentersas.website/upload/image2019013115489626763397.png'),
	(64, 107, 6, 'INDUCIDO Y CAMPO EN CORTO', 'https://toolboxcentersas.website/upload/image2019013115489643132202.png'),
	(65, 108, 6, 'INDUCIDO Y CAMPO EN CORTO', 'https://toolboxcentersas.website/upload/image2019013115489646550320.png'),
	(66, 109, 6, 'CAMPO E INDUCIDO EN CORTO\nINTERRUPTOR CON FALLAS', 'https://toolboxcentersas.website/upload/image2019013115489651700472.png'),
	(67, 110, 6, 'INDUCIDO EN CORTO', 'https://toolboxcentersas.website/upload/image2019013115489656340466.png'),
	(68, 111, 6, 'INDUCIDO Y CAMPO EN CORTO', 'https://toolboxcentersas.website/upload/image2019013115489660891912.png'),
	(69, 112, 6, 'INDUCIDO Y CAMPO EN CORTO', 'https://toolboxcentersas.website/upload/image2019013115489676311489.png'),
	(70, 113, 6, 'INDUCIDO EN CORTO', 'https://toolboxcentersas.website/upload/image2019013115489681431526.png'),
	(71, 116, 6, 'BOBINA DE CAMPO,, ', 'https://toolboxcentersas.website/upload/image2019020215491211149958.png'),
	(72, 117, 6, 'CAMPO E INDUCIDO EN CORTO', 'https://toolboxcentersas.website/upload/image2019020215491222098057.png'),
	(73, 118, 6, 'INTERRUPTOR AVERIADO, COMPLETAMENTE ROTO', 'https://toolboxcentersas.website/upload/image2019020515494080068053.png'),
	(74, 118, 6, 'OTROS MECANISMOS EN BUEN ESTADO, VERIFICAMOS INDUCIDO Y CAMPO, ESCOBILLAS A MITAD DE USO', 'https://toolboxcentersas.website/upload/image2019020515494080659175.png'),
	(75, 78, 7, 'maquina con numero interno 67315\nya había ingresado con orden 23.\nse le había remplazado el inducido.\n', 'https://toolboxcentersas.website/upload/image2019020615494650225091.png'),
	(76, 78, 7, 'la pulidora llega sin escobillas.\nremplazamos las escobillas y un rodamiento', 'https://toolboxcentersas.website/upload/image2019020615494654290841.png'),
	(77, 122, 6, 'INDUCIDO EN CORTO \nCAMPO EN CORTO', 'https://toolboxcentersas.website/upload/image2019020615494846103524.png'),
	(78, 123, 6, 'INDUCIDO EN CORTO', 'https://toolboxcentersas.website/upload/image2019020615494848062693.png'),
	(79, 77, 7, 'SE ENTREGA LA MAQUINA YA QUE NO SE AUTORIZO REPARACION POR COSTO.', 'https://toolboxcentersas.website/upload/image2019020715495513928347.png'),
	(80, 79, 7, 'SE CAMBIA INDUCIDO YA QUE SE ENCONTRABA EN CORTO, CAMBIO DE RODAMIENTO E IGUAL ESCOBILLAS', 'https://toolboxcentersas.website/upload/image2019020715495541009028.png'),
	(81, 80, 7, 'CAMBIO DE INDUCIDO YA QUE ESTABA EN CORTO, CAMBIO DE RODAMIENTO TAMBIEN SE LE CAMBIARON ESCOBILLAS.', 'https://toolboxcentersas.website/upload/image2019020715495545463997.png'),
	(82, 121, 6, 'SE ESCRIBE ESTE COMENTARIO, YA QUE SE ESTABA HACIENDO UNA PRUEBA ', 'https://toolboxcentersas.website/upload/image2019020815496442088444.png'),
	(83, 120, 7, 'HERRAMIENTA ENTREGADA Y CORRESPONDE A LA FACTURA 107 DE FEBRERO 6 DE 2019.CANCELADA', 'https://toolboxcentersas.website/upload/image2019020815496449190085.png'),
	(84, 72, 7, 'NO SE REALIZA ARREGLO YA QUE LOS REPUESTOS SON MUY CAROS Y NO AUTORIZARON DE PARTE DEL CLIENTE.', 'https://toolboxcentersas.website/upload/image2019020815496460913344.png'),
	(85, 72, 7, 'DE ESTA HERRAMIENTA SE UTILIZARON ALGUNOS REPUESTOS PARA OTRA GUADAÑA', 'https://toolboxcentersas.website/upload/image2019020815496461176131.png'),
	(86, 69, 7, 'NO SE LE REALIZO NINGUN ARREGLO A ESTA MAQUINA YA QUE LOS REPUESTOS SON MUY CAROS Y NO AUTORIZARON POR PARTE DEL CLIENTE', 'https://toolboxcentersas.website/upload/image2019020815496462172379.png'),
	(87, 69, 7, 'SE UTILIZARON ALGUNOS REPUESTOS PARA ARREGLAR OTRA GUADAÑA', 'https://toolboxcentersas.website/upload/image2019020815496462531352.png'),
	(88, 71, 7, 'SE LE REALIZO MANTENIMIENTO EN GENERAL Y SE UTILIZARON UNOS REPUESTOS DE OTRA GUADAÑA', 'https://toolboxcentersas.website/upload/image2019020815496465871682.png'),
	(89, 70, 7, 'SE LE REALIZA MANTENIMIENTO EN GENERAL, SE UTILIZARON UNOS REPUESTOS DE OTRA GUADAÑA', 'https://toolboxcentersas.website/upload/image2019020815496468670946.png'),
	(90, 68, 7, 'SE HACE ENTREGA DE LA HIDROLAVADORA, NO SE LE REALIZO NINGUN ARREGLO.', 'https://toolboxcentersas.website/upload/image2019020815496475632975.png'),
	(91, 67, 7, 'SE ENTREGA LA HIDROLAVADORA, NO SE LE REALIZO NINGUN ARREGLO.', 'https://toolboxcentersas.website/upload/image2019020815496477039021.png'),
	(92, 58, 7, 'SE LE REALIZA MANTENIMIENTO EN GENERAL, Y SE ENTREGA FUNCIONANDO PERFECTO, SE COBRA UNICAMENTE MANO DE OBRA.', 'https://toolboxcentersas.website/upload/image2019020815496485443527.png'),
	(93, 59, 7, 'SE LE REALIZA MANTENIMIENTO EN GENERAL, SE ENTREGA FUNCIONANDO PERFECTO, SOLO SE COBRA MANO DE OBRA.', 'https://toolboxcentersas.website/upload/image2019020815496486138451.png'),
	(94, 114, 7, 'El equipo fue destapado, doblando algunos pines del eje principal, falta piezas, Este equipo fue descontinuado por Einhell, no todos los repuestos estan disponibles.\npasamos una solicitud directa a fabrica para saber si estos repuestos los pueden enviar.', 'https://toolboxcentersas.website/upload/image2019020815496487740360.png'),
	(95, 114, 7, 'se debe remplazar el eje de oscilacion', 'https://toolboxcentersas.website/upload/image2019020815496488329174.png'),
	(96, 114, 7, 'la palanca de cambio de funciones se debe remplazar', 'https://toolboxcentersas.website/upload/image2019020815496488776856.png'),
	(97, 64, 7, 'SE LE REALIZA MANTENIMIENTO EN GENERAL, SE ENTREGA FUNCIONANDO EN PERFECTO ESTADO, SOLO SE COBRA MANO DE OBRA.', 'https://toolboxcentersas.website/upload/image2019020815496519458479.png'),
	(98, 124, 6, 'REMPLAZO DE O-RING Y PISTON PARTIDO,,', 'https://toolboxcentersas.website/upload/image2019020815496635213883.png'),
	(99, 124, 6, 'MANTENIMIENTO EN GENERAL', 'https://toolboxcentersas.website/upload/image2019020815496635715451.png'),
	(100, 115, 7, 'CON PROBLEMAS EN LA BOBINA.\nSE DEBE REMPLAZAR.\nRE REALIZA MANTENIMIENTO GENERAL', 'https://toolboxcentersas.website/upload/image2019020915497385652207.png'),
	(101, 128, 7, 'producto llego sin escobillas', 'https://toolboxcentersas.website/upload/image2019021315500732545281.png'),
	(102, 128, 7, 'conectores del campo inadecuados,, se deben remplazar', 'https://toolboxcentersas.website/upload/image2019021315500733577345.png'),
	(103, 128, 7, 'inducido presente recalentamiento recomendamos cambiar', 'https://toolboxcentersas.website/upload/image2019021315500734056076.png'),
	(104, 129, 7, 'SERIE 4334A\nPRODUCTO EN GARANTIA\nINDUCIDO QUEMADO\n', 'https://toolboxcentersas.website/upload/image2019021315500874572540.png'),
	(105, 130, 7, 'SERIE 4313A\nPRODUCTO EN GARANTÍA\nINDUCIDO EN CORTO', 'https://toolboxcentersas.website/upload/image2019021315500875771850.png'),
	(106, 130, 7, 'CONECTORES QUEMADOS', 'https://toolboxcentersas.website/upload/image2019021315500876286444.png'),
	(107, 131, 7, 'SERIE 4314A\nPRODUCTO EN GARANTIA\nINDUCIDO EN CORTO', 'https://toolboxcentersas.website/upload/image2019021315500877212675.png'),
	(108, 131, 7, 'CONECTOR DEL CAMPO INADECUADO', 'https://toolboxcentersas.website/upload/image2019021315500877509616.png'),
	(110, 132, 7, 'SERIE 4331A\nEN GARANTIA\nCAMBIO DE CONECTORES', 'https://toolboxcentersas.website/upload/image2019021315500879071119.png'),
	(111, 132, 7, 'INDUCIDO EN CORTO', 'https://toolboxcentersas.website/upload/image2019021315500879620853.png'),
	(112, 133, 7, 'SERIE 4333A\nEN GARANTIA \nCONECTORES INADECUADOS', 'https://toolboxcentersas.website/upload/image2019021315500880411937.png'),
	(113, 133, 7, 'INDUCIDO EN CORTO', 'https://toolboxcentersas.website/upload/image2019021315500880680050.png'),
	(114, 134, 7, 'LA MAQUINA NO ENCIENDE PUESTO QUE LAS GUIAS DEL PORTA ESCOBILLAS ESTAN DEFORMADOS', 'https://toolboxcentersas.website/upload/image2019021315500910018096.png'),
	(115, 134, 7, 'RECOMENDAMOS CAMBIAR EL INDUCIDO, EL COLECTOR ESTA QUEMADO', 'https://toolboxcentersas.website/upload/image2019021315500910589403.png'),
	(116, 134, 7, 'EL INDUCIDO NO SE CONSIGUE EN EL MERCADO, LA UNICA OPCION ES REBOBINAR.', 'https://toolboxcentersas.website/upload/image2019021315500925582590.png'),
	(117, 135, 9, 'interruptor inadecuado, producto en garantia', 'https://toolboxcentersas.website/upload/image2019021415501714112764.png'),
	(118, 78, 7, 'a la pulidora se le hace arreglo pertinente y se hace entrega.', 'https://toolboxcentersas.website/upload/image2019021415501753201437.png'),
	(119, 79, 7, 'SE LE REALIZA LOS CAMBIOS SUGERIDOS Y SE ENTREGA AL CLIENTE EN BUEN ESTADO.', 'https://toolboxcentersas.website/upload/image2019021415501772767353.png'),
	(120, 80, 7, 'SE LE HACEN LOS CAMBIOS SUGERIDOS Y SE HACE ENTREGA DE LA HERRAMIENTA AL CLIENTE', 'https://toolboxcentersas.website/upload/image2019021415501774628997.png'),
	(121, 66, 7, 'SE HACE ENTREGA NO SE LE REALIZA NINGUN PROCEDIMIENTO', 'https://toolboxcentersas.website/upload/image2019021415501779000455.png'),
	(122, 65, 7, 'SE HACE ENTREGA DE LA MAQUINA NO SE LE REALIZA NINGUN PROCEDIMIENTO', 'https://toolboxcentersas.website/upload/image2019021415501779487111.png'),
	(123, 62, 7, 'A LA MAQUINA NO SE LE REALIZA NINGUN PROCEDIMIENTO SE HACE ENTREGA', 'https://toolboxcentersas.website/upload/image2019021415501779855163.png'),
	(124, 61, 7, 'NO SE LE REALIZA NINGUN PROCEDIMIENTO Y SE HACE ENTREGA DE LA MAQUINA', 'https://toolboxcentersas.website/upload/image2019021415501780166952.png'),
	(125, 60, 7, 'A LA MAQUINA NO SE LE REALIZA NINGUN PROCEDIMIENTO Y SE HACE ENTREGA DE LA MISMA', 'https://toolboxcentersas.website/upload/image2019021415501780489816.png'),
	(126, 57, 7, 'A LA MAQUINA NO SE LE REALIZA NINGUN PROCEDIMIENTO Y SE HACE ENTREGA DE LA MISMA', 'https://toolboxcentersas.website/upload/image2019021415501780830975.png'),
	(127, 56, 7, 'NO SE LE REALIZA NINGUN PROCEDIMIENTO A LA MAQUINA Y SE HACE ENTREGA DE LA MISMA', 'https://toolboxcentersas.website/upload/image2019021415501781184828.png'),
	(128, 121, 6, 'SE CIERRA CASO YA QUE SE ESTABA REALIZANDO UNA PRUEBA. NO SE COBRA NI SE GENERA NINGUN REPUESTO', 'https://toolboxcentersas.website/upload/image2019021415501782190983.png'),
	(129, 118, 6, 'PRODUCTO EN GARANTIA', 'https://toolboxcentersas.website/upload/image2019021415501857449906.png'),
	(130, 138, 6, 'INDUCIDO EN CORTO Y CAMBIO DE RODAMIENTOS', 'https://toolboxcentersas.website/upload/image2019021615503337793010.png'),
	(131, 81, 6, 'PRODUCTO EN GARANTÍA\nFACTURA 34354  22-08-18', 'https://toolboxcentersas.website/upload/image2019021915505805454549.png'),
	(132, 83, 6, 'PRODUCTO EN GARANTIA\nFACTURA 34354 - 22-08-18', 'https://toolboxcentersas.website/upload/image2019021915505807214421.png'),
	(133, 85, 6, 'EN GARANTIA\nFACTURA 34354', 'https://toolboxcentersas.website/upload/image2019021915505808329635.png'),
	(134, 87, 6, 'EN GARANTIA\nFACTURA 87\n22-08-18', 'https://toolboxcentersas.website/upload/image2019021915505809338226.png'),
	(135, 88, 6, 'EN GARANTIA\nFACTURA 34354\n22-08-18\n', 'https://toolboxcentersas.website/upload/image2019021915505810042148.png'),
	(136, 89, 6, 'EN GARANTIA\nFACTURA 34354\n22-08-18', 'https://toolboxcentersas.website/upload/image2019021915505810707745.png'),
	(137, 91, 6, 'EN GARANTIA\nFACTURA 34354\n22-08-18', 'https://toolboxcentersas.website/upload/image2019021915505811966661.png'),
	(138, 92, 6, 'EN GARANTIA\nFACTURA 34354 \n22-08-18', 'https://toolboxcentersas.website/upload/image2019021915505815635711.png'),
	(139, 93, 6, 'EN GARANTIA\nFACTURA 34354\n22-08-18', 'https://toolboxcentersas.website/upload/image2019021915505832793387.png'),
	(140, 95, 6, 'EN GARANTIA\nFACTURA 34354\n22-08-18', 'https://toolboxcentersas.website/upload/image2019021915505833881037.png'),
	(141, 96, 6, 'EN GARANTIA\nFACTURA 34354\n22-08-18', 'https://toolboxcentersas.website/upload/image2019021915505834428306.png'),
	(142, 104, 6, 'EN GARANTIA\nFACTURA 34354\n22-08-18', 'https://toolboxcentersas.website/upload/image2019021915505836150425.png'),
	(143, 105, 6, 'EN GARANTIA\nFACTURA 34354\n22-08-18', 'https://toolboxcentersas.website/upload/image2019021915505836921031.png'),
	(144, 106, 6, 'EN GARANTIA\nFACTURA 34354\n22-08-18', 'https://toolboxcentersas.website/upload/image2019021915505837440599.png'),
	(145, 107, 6, 'EN GARANTIA\nFACTURA 34354\n22-08-18', 'https://toolboxcentersas.website/upload/image2019021915505842908473.png'),
	(146, 108, 6, 'EN GARANTIA\nFACTURA 34354\n22-08-18', 'https://toolboxcentersas.website/upload/image2019021915505844273755.png'),
	(147, 82, 6, 'EN GARANTIA\nFACTURA 63831\n23-03-18\n', 'https://toolboxcentersas.website/upload/image2019021915505862741211.png'),
	(148, 84, 6, 'EN GARANTIA\nFACTURA 63831\n23-03-18', 'https://toolboxcentersas.website/upload/image2019021915505864199786.png'),
	(149, 86, 6, 'EN GARANTIA\nFACTURA 63831\n23-03.18', 'https://toolboxcentersas.website/upload/image2019021915505864854444.png'),
	(150, 90, 6, 'EN GARANTIA\nFACTURA 63831\n23-03-18', 'https://toolboxcentersas.website/upload/image2019021915505866242867.png'),
	(151, 94, 6, 'EN GARANTIA\nFACTURA 63831\n23-03-18', 'https://toolboxcentersas.website/upload/image2019021915505867181762.png'),
	(152, 122, 6, 'EN GARANTIA\nFACTURA 63831\n23-03-18', 'https://toolboxcentersas.website/upload/image2019021915505868758566.png'),
	(153, 119, 6, 'EN GARANTIA\nFACTURA 63831\n23-08-18', 'https://toolboxcentersas.website/upload/image2019021915505909545177.png'),
	(154, 123, 6, 'EN GARANTIA\nFACTURA 63831\n23-03-18', 'https://toolboxcentersas.website/upload/image2019021915505912286731.png'),
	(155, 140, 6, 'CAMBIO DE RODAMIENTO Y PAD', 'https://toolboxcentersas.website/upload/image2019021915506097027288.png'),
	(156, 140, 6, 'CAMBIO DE RODAMIENTO Y PAD', 'https://toolboxcentersas.website/upload/image2019021915506097027438.png'),
	(157, 141, 7, 'REALIZAR CAMBIO DE PAD, REVISAR LOS RODAMIENTOS Y HACER MANTENIMIENTO EN GENERAL', 'https://toolboxcentersas.website/upload/image2019021915506157419810.png'),
	(158, 142, 7, 'REALIZAR CABIO DE PAD, HACER REVISION DE RODAMIENTOS Y MANTENIMIENTO EN GENERAL.', 'https://toolboxcentersas.website/upload/image2019021915506161041376.png'),
	(159, 137, 7, 'calibracion', 'https://toolboxcentersas.website/upload/image2019022015506731276320.png'),
	(161, 127, 9, 'SE LE HACE NUEVA MEZCLA, CAMBIO DE MANGUERA DE PASO DE GASOLINA Y MANTENIMIENTO EN GENERAL.', 'https://toolboxcentersas.website/upload/image2019022115507569102456.png'),
	(162, 126, 9, 'SE LE HACE CAMBIO DE ACEITE, CAMBIO DE LA MANGUERA DE PASO DE GASOLINA Y MANTENIMIENTO EN GENERAL.', 'https://toolboxcentersas.website/upload/image2019022115507569898115.png'),
	(163, 143, 7, 'SE LE REALIZA CAMBIO DE MANDRIL Y MANTENIMIENTO EN GENERAL', 'https://toolboxcentersas.website/upload/image2019022115507786982778.png'),
	(164, 144, 6, 'escobillas gastadas, rodamientos en mal estado, inducido con poca vida útil ', 'https://toolboxcentersas.website/upload/image2019022215508750098899.png'),
	(165, 144, 6, 'escobillas gastadas, rodamientos en mal estado, inducido con poca vida útil', 'https://toolboxcentersas.website/upload/image2019022215508750443684.png'),
	(166, 147, 9, 'no hay arreglo para esta herramienta porque dewalt dejo de importar los repuestos hace mas de 3 años en respuesta a la solicitud de los repuestos ', 'https://toolboxcentersas.website/upload/image2019022815513673348877.png'),
	(167, 164, 9, 'CAMBIO DE RODAMIENTO DAÑADO,INDUCIDO EN CORTO, ESCOBILLAS NUEVAS ', 'https://toolboxcentersas.website/upload/image2019030115514731303932.png'),
	(169, 155, 6, 'inducido con el aislamiento deteriorado recomendamos cambiar', 'https://toolboxcentersas.website/upload/image2019030915521463165266.png'),
	(170, 155, 6, 'campo con el aislamiento deteriorado recomendamos cambiarlo', 'https://toolboxcentersas.website/upload/image2019030915521464445940.png'),
	(171, 155, 6, 'porta escobillas con terminales dañados', 'https://toolboxcentersas.website/upload/image2019030915521465139352.png'),
	(172, 159, 6, 'Inducido en corto', 'https://toolboxcentersas.website/upload/image2019030915521472010986.png'),
	(173, 172, 9, 'cambio de espada golpeada ', 'https://toolboxcentersas.website/upload/image2019031315525027519307.png'),
	(174, 177, 9, 'PRODUCTO EN GARANTIA ', 'https://toolboxcentersas.website/upload/image2019032115531983345558.png'),
	(175, 177, 9, 'CAMBIO DE RODAMIENTO ', 'https://toolboxcentersas.website/upload/image2019032115531983543625.png'),
	(176, 179, 6, 'base rota\ny eje descentrado,, requiere cambio ', 'https://toolboxcentersas.website/upload/image2019032715537157792520.png'),
	(177, 181, 6, 'INDUCIDO EN CORTO', 'https://toolboxcentersas.website/upload/image2019032915538978888623.png'),
	(178, 181, 6, 'PORTA ESCOBILLAS DERRETIDO', 'https://toolboxcentersas.website/upload/image2019032915538979323938.png'),
	(179, 178, 6, 'esta planta tiene faltantes de piezas ( como el carrete completo de arranque) le falta muchos tonillos.\n\neste equipo ha estado expuesto por mucho tiempo al aire libre sin ningun tipo de mantenimiento,, tiene residuos de barro y oxido en todos los componentes eléctricos.\nel chasis y soportes esta doblados muy complicada esta reparación. puesto que se expone a la fractura de las piezas metálicas al tratar de enderezar.\n\nrecomendamos mantenimientos preventivos para evitar el deterioro al 100%.\nes posible que otras piezas fallen después de la reparación por lo que el generador esta en muy mal estado en todos sus componentes.\n', 'https://toolboxcentersas.website/upload/image2019033015539748880921.png'),
	(180, 178, 6, 'esta pendiente la valorización de piezas por parte del fabricante', 'https://toolboxcentersas.website/upload/image2019033015539749495222.png'),
	(182, 188, 7, 'SE LE HACE MANTENIMIENTO EN GENERAL, CAMBIO RODAMIENTO 626, ESCOBILLAS Y SWITC. SE LE RECOMIENDA AL CLIENTE CAMBIO DE CABLE DE PODER', 'https://toolboxcentersas.website/upload/image2019040215542345580940.png'),
	(183, 178, 6, 'el estator esta quemado,,', 'https://toolboxcentersas.website/upload/image2019040315543041973921.png'),
	(184, 189, 9, 'producto en garantía 2 reparación', 'https://toolboxcentersas.website/upload/image2019040315543111383501.png'),
	(185, 190, 9, 'producto en garantia 2 reparacion', 'https://toolboxcentersas.website/upload/image2019040315543117717911.png'),
	(186, 191, 9, 'en garantia. segunda reparacion', 'https://toolboxcentersas.website/upload/image2019040315543122885284.png'),
	(188, 185, 9, 'FAC 177', 'https://toolboxcentersas.website/upload/image2019040315543143895776.png'),
	(189, 185, 9, 'COFIRMACIÓN DE SERIE  47053K', 'https://toolboxcentersas.website/upload/image2019040315543144911595.png'),
	(190, 185, 9, 'PRODUCTO EN GARANTIA', 'https://toolboxcentersas.website/upload/image2019040315543145257469.png'),
	(191, 189, 9, 'remisión de entrega', 'https://toolboxcentersas.website/upload/image2019040315543209588887.png'),
	(192, 190, 9, 'remision 11677', 'https://toolboxcentersas.website/upload/image2019040315543210455446.png'),
	(193, 191, 9, 'REMISION 11677', 'https://toolboxcentersas.website/upload/image2019040315543211035310.png'),
	(194, 193, 6, 'la fumigadora le falta mantenimiento, el aceite y combustible es inadecuado,, se remplaza por nuevo\n', 'https://toolboxcentersas.website/upload/image2019040315543317071107.png'),
	(195, 193, 6, 'la bujia y bobina de alta se deben remplazar para mejor encendido', 'https://toolboxcentersas.website/upload/image2019040315543317352565.png'),
	(196, 189, 9, 'equipo con inducido y campo en corto ', 'https://toolboxcentersas.website/upload/image2019040615545777013472.png'),
	(201, 198, 9, 'CAMBIO DE SET DE ANILLOS DE PISTON, COMBIO DE PISTON Y FILTROS DE AIRE, \nSE RECOMIENDA CAMBIO DE CLUTCH ASSEMBLY DEBIDO A QUE YA SE ENCUENTRA BASTANTE DESGASTADO  PERO EL CLIENTE MANIFIESTA QUE SOLO LA COTIZACIÓN SOLICITADA CON LOS REPUESTOS SUGERIDOS POR CLIENTE', 'https://toolboxcentersas.website/upload/image2019040815547612227255.png'),
	(205, 201, 12, 'ANILLO EN CORTO, CAMBIO DE ESCOBILLAS POR LAS ORIGINALES Y DE RODAMIENTOS  ', 'https://toolboxcentersas.website/upload/image2019041115550162768800.png'),
	(206, 207, 9, 'HERRAMIENTA EN GARANTIA, PARA CAMBIO DE INDUCIDO EN CORTO, CAMPO DAÑADO Y CAMBIO DE RODAMIENTO 6301, ESCOBILLAS', 'https://toolboxcentersas.website/upload/image2019041115550169233024.png'),
	(207, 206, 9, 'HERRAMIENTA EN GARANTIA, PARA CAMBIO DE INDUCIDO EN CORTO, ANILLOS CAMBIO DE RODAMIENTO 6301, ESCOBILLAS', 'https://toolboxcentersas.website/upload/image2019041115550191474381.png'),
	(208, 196, 9, 'HERRAMIENTA EN GARANTIA PARA CAMBIO DE RODAMIENTO,INDUCIDO,CAMPO,ESCOBILLAS', 'https://toolboxcentersas.website/upload/image2019041115550208449468.png'),
	(211, 195, 9, 'HERRAMIENTA PARA VERIFICAR SI ESTA EN GARANTIA Y PARA CAMBIO DE INDUCIDO,CAMPO,ESCOBOILLAS Y RODAMIENTO', 'https://toolboxcentersas.website/upload/image2019041115550224765299.png'),
	(212, 197, 9, 'HERRAMIENTA EN GARANTIA PARA CAMBIO DE INDUCIDO, ESCOBILLAS Y RODAMIENTO', 'https://toolboxcentersas.website/upload/image2019041115550230763881.png'),
	(213, 197, 9, 'CONFIRMACIÓN DE SERIAL', 'https://toolboxcentersas.website/upload/image2019041115550231115104.png'),
	(214, 199, 12, 'mantenimiento y cambio de escobillas', 'https://toolboxcentersas.website/upload/image2019041215550858702469.png'),
	(215, 200, 12, 'Inducido en corto', 'https://toolboxcentersas.website/upload/image2019041215550887707101.png'),
	(216, 202, 12, 'PROBLEMA EN ESCOBILLAS ,, RECOMENDAMOS CAMBIO DE RODAMIENTOS', 'https://toolboxcentersas.website/upload/image2019041215550910766371.png'),
	(217, 203, 12, 'INDUCIDO EN CORTO', 'https://toolboxcentersas.website/upload/image2019041215550916859327.png'),
	(218, 204, 12, 'INDUCIDO EN CORTO', 'https://toolboxcentersas.website/upload/image2019041215550926464426.png'),
	(219, 205, 12, 'ORDEN ANULADA,, INSCRIPCIÓN MAL REALIZADA', 'https://toolboxcentersas.website/upload/image2019041215550965618024.png'),
	(220, 208, 6, 'INTERRUPTOR AVERIADO-AISLADO', 'https://toolboxcentersas.website/upload/image2019041215550997626941.png'),
	(221, 208, 6, 'CABLE DEL CAMPO PARTIDO.. ', 'https://toolboxcentersas.website/upload/image2019041215550997915576.png'),
	(222, 213, 12, 'PRODUCTO EN GARANTIA', 'https://toolboxcentersas.website/upload/image2019041515553617685620.png'),
	(223, 210, 12, 'INDUCIDO EN CORTO, ESCOBILLAS PARA CAMBIO ', 'https://toolboxcentersas.website/upload/image2019041615554473620378.png'),
	(225, 211, 12, 'CAMBIO DE ESCOBILLAS, RODAMIENTOS 608, REVISAR CABLE PODER', 'https://toolboxcentersas.website/upload/image2019041615554494730386.png'),
	(226, 216, 9, 'HERRAMIENTA POR GARANTÍA PARA CAMBIO\nINDUCIDO,RODAMIENTO,PORTA ESCOBILLAS, Y PORTA ESCOBILLAS \n', 'https://toolboxcentersas.website/upload/image2019041715555123991718.png'),
	(227, 210, 12, 'PULIDORA CON INDUCIDO ENC CORTO, SIN INDUCIDO COMPATIBLES REPLICA DE LA MARCA BOSCH', 'https://toolboxcentersas.website/upload/image2019041715555149949722.png'),
	(228, 182, 9, 'HERRAMIENTA EN GARANTÍA SERVICIO ANTERIOR 0T-83 NUEVA ORDEN DE TRABAJO OT-182', 'https://toolboxcentersas.website/upload/image2019041715555207408031.png'),
	(229, 219, 12, 'garantia', 'https://toolboxcentersas.website/upload/image2019042215559431224593.png'),
	(230, 220, 12, 'garantia', 'https://toolboxcentersas.website/upload/image2019042215559431754448.png'),
	(231, 222, 9, 'PULIDORA SIN PASO DE SUMINISTRO DE CORRIENTE YA REPARADA Y EN BUEN ESTADO PARA TRABAJAR ', 'https://toolboxcentersas.website/upload/image2019042415561297509503.png'),
	(232, 221, 12, 'INTERRUPTOR AVERIADO', 'https://toolboxcentersas.website/upload/image2019042515562102607524.png'),
	(233, 220, 12, 'LE FALTA UN PIN DE SEGURIDAD PARA QUE FUNCIONE LA PALANCA DEL FRENO', 'https://toolboxcentersas.website/upload/image2019042615563111715685.png'),
	(234, 219, 12, 'FALTA UN PIN DE SEGURIDAD', 'https://toolboxcentersas.website/upload/image2019042615563114184789.png'),
	(235, 234, 9, 'CAMBIO DE INDUCIDO, INTERRUPTOR, ESCOBILLAS, MANTENIMIENTO GENERAL ', 'https://toolboxcentersas.website/upload/image2019042715563746907107.png'),
	(236, 233, 7, 'SE LE CAMBIO GRASA, MANTENIMIENTO EN GENERAL Y CAMBIO DE ESCOBILLAS. EL CABLE DE PODER EN LA PARTE INICIAL ESTABA QUEMADO.', 'https://toolboxcentersas.website/upload/image2019042915565476462377.png'),
	(237, 227, 12, 'EL EQUIPO ENCIENDE,, RECOMENDAMOS CAMBIAR ESCOBILLAR ,, LAS DEMÁS PIEZAS LE HACEN FALTA AL EQUIPO', 'https://toolboxcentersas.website/upload/image2019042915565528872652.png'),
	(238, 226, 12, 'EL EQUIPO ESTA EN BUENAS CONDICIONES SOLO PRESENTA FALTANTE DE PIEZAS, EL CABLE SE DEBE REMPLAZAR', 'https://toolboxcentersas.website/upload/image2019042915565547562902.png'),
	(239, 227, 12, 'EL CAMPO NO DURARA MUCHO EN FUNCIONAMIENTO, EL AISLANTE ESTA DETERIORADO', 'https://toolboxcentersas.website/upload/image2019042915565549210329.png'),
	(240, 227, 12, 'INDUCIDO TIENE EL COLECTOR IRREGULAR,', 'https://toolboxcentersas.website/upload/image2019042915565549755089.png'),
	(241, 228, 12, 'INDUCIDO EN CORTO', 'https://toolboxcentersas.website/upload/image2019042915565586466318.png'),
	(243, 238, 9, 'CAMBIO DE RODAMIENTOS, Y CABLE DE PODER y escobillas', 'https://toolboxcentersas.website/upload/image2019050215568214267811.png'),
	(244, 228, 12, 'producto se entrega sin repara', 'https://toolboxcentersas.website/upload/image2019050215568260265902.png');
/*!40000 ALTER TABLE `diagnostico` ENABLE KEYS */;

-- Volcando estructura para tabla u107806033_tool.empleado
CREATE TABLE IF NOT EXISTS `empleado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `cedula` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cedula` (`cedula`),
  KEY `FK_empleado_usuario` (`id_usuario`),
  CONSTRAINT `FK_empleado_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla u107806033_tool.empleado: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` (`id`, `id_usuario`, `cedula`, `telefono`, `direccion`) VALUES
	(1, 14, '123', '3115484565', 'calesadas'),
	(4, 24, NULL, NULL, NULL),
	(5, 25, NULL, NULL, NULL),
	(6, 23, NULL, NULL, NULL),
	(7, 26, NULL, NULL, NULL),
	(9, 28, '12449088', '3214781030', 'carrera 7c # 3-98'),
	(10, 50, NULL, NULL, NULL),
	(11, 71, NULL, NULL, NULL),
	(12, 73, '1052401819', '3214778552', 'Duitama');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;

-- Volcando estructura para tabla u107806033_tool.empresa
CREATE TABLE IF NOT EXISTS `empresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nit` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `correo_electronico` varchar(150) NOT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `direccion` text,
  `descripcion` text,
  `imagen` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nit_UNIQUE` (`nit`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla u107806033_tool.empresa: ~24 rows (aproximadamente)
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` (`id`, `nit`, `nombre`, `correo_electronico`, `telefono`, `direccion`, `descripcion`, `imagen`) VALUES
	(10, '901141276-9', 'CONSORCIO CEDROS DE SANTA BARBARA', 'comprasgamajggg@gmail.com', '3103033440', 'Calle 138 No. 10 a 52 of 101', 'Consturctora', 'https://toolboxcentersas.website/upload/image2018122015453244152686.png'),
	(11, '830035037', 'EMINSER SAS', 'compras@eminser.com.co', '6719208', 'carrera 21a # 159-35', '', 'https://toolboxcentersas.website/upload/image2018122115454163334251.png'),
	(12, '9350831', 'JOSE VEGA', 'pecama1624@gmail.com', '3213839143', 'CRA 50 # 33 - 18', '', 'https://toolboxcentersas.website/upload/image2018122115454239451727.png'),
	(13, '800.204.305-1', 'SERGEMCO LTDA', 'sergemco@gmail.com', '3163968432', 'kilometro 5 via paipa-duitama ', '', 'https://toolboxcentersas.website/upload/image2019011815478308461763.png'),
	(14, '830087479-9', 'VIALAMBRE', 'compras@vialambre.com.co', '2.373735E+115', 'calle 8 # 30 - 51', '', 'https://toolboxcentersas.website/upload/image2019012515484377854386.png'),
	(15, '860 006 282-8', 'HB SADELEC', 'serafin.camacho@hbsadelec.com.co', '4224700', 'Av. Carrera 129 Nº 17F – 97', '', 'https://toolboxcentersas.website/upload/image2019012815487038878814.png'),
	(16, '7224569-9', 'ferremetro', 'ferremetro0520@hotmail.com', '7603533', 'calle 9 nª24-72', '', 'https://toolboxcentersas.website/upload/image2019020115490387148211.png'),
	(17, '830086645-0', 'PREPACOLSAS', 'julian@prepacol.com', '6102587', 'calle 90 # 11A-34', 'PREOACOL', 'https://toolboxcentersas.website/upload/image2019020415493071996730.png'),
	(18, '899999044-3', 'INDUMIL', 'mrincon@indumil.gov.co', '3132959986', 'calle 54 nº10d-10  sogamoso', '', 'https://toolboxcentersas.website/upload/image2019021215500017809127.png'),
	(19, '860091213-1', 'EQUITRONICA SAS', 'jhonmartinez@aquitronica.com.co', '7562457', 'Parque Galicia bodega 10A kmtr 3 vía Funza Siberia', '', 'https://toolboxcentersas.website/upload/image2019021315500711933831.png'),
	(20, '15986997-3', 'EMER AUTOS', 'raulbedoya04@gmail.com', '2379000', 'CALLE 9  # 40 50', '', 'https://toolboxcentersas.website/upload/image2019021915506062897839.png'),
	(21, '19056027', 'VIDRIO SAENZ', 'vidriosaenz@hotmail.com', '3185279284', 'CALLE 36 SUR N° 69A - 39', 'ISIDRO SAENZ', 'https://toolboxcentersas.website/upload/image2019022215508501242497.png'),
	(22, '901023297-8', 'PRAC S.A.S.', 'almacen@ingenieriaprac.com.co', '3124457876', 'kilometro 3 via paipa-duitama', '', 'https://toolboxcentersas.website/upload/image2019022615512094581948.png'),
	(23, '901202958-6', 'ARTUNDAMA SAS', 'ARTUNDAMADUITAMA@GMAIL.COM', '3107754192', 'CARRERA 14 # 16-52', '', 'https://toolboxcentersas.website/upload/image2019031115523413622813.png'),
	(24, '901092334-7', 'MOVIENDO IDEAS SAS', 'moviendo.ideas@hotmail.com', '3107668446', 'trav. 34 # 32-69 soacha ', '', 'https://toolboxcentersas.website/upload/image2019031915530170479394.png'),
	(25, '801004314-1', 'INGENIERIA DE VIAS S.A', 'dcarrillo@ingenieriadeviassas.com.co', '3182655860', 'CELTA  LOTE 57', '', 'https://toolboxcentersas.website/upload/image2019032115531969707774.png'),
	(26, '900.264.480-1', 'PRODULIMAS', 'eliasperezj@hotmail.com', '2615377', 'CLL24A SUR # 68H - 91', '', 'https://toolboxcentersas.website/upload/image2019032815538018798989.png'),
	(27, '900338430-0', 'CERCOL COLOMBIA S.A.S', 'compras@cercol-colombia.com', '2162552', 'calle 128 # 46-56', '', 'https://toolboxcentersas.website/upload/image2019040115541398010603.png'),
	(28, '900844997-4', 'EASY-JOB MULTISERVICIOS S.A.S', 'easy.jobmultiserviciossas@gmail.com', '3203874001', 'CALLE 3 # 2-43', 'SERVICIOS DE MANTENIMIENTOS', 'https://toolboxcentersas.website/upload/image2019040815547592412040.png'),
	(29, '826001185-5', 'ICM INGENIERIA CONSTRUCCIONES Y MONTAJES SAS', 'sistemas@icmsas.com.co', '3138578168', 'kilometro 25 via Tunja-Paipa sector Maguncia', '', 'https://toolboxcentersas.website/upload/image2019040915548458191719.png'),
	(30, '900950141-0', 'CIELOS CUBIERTAS ACABADOS Y SERVICIOS SAS', 'cieloscubiertasyacabados@yahoo.com', '3007856369', 'calle 18 nº16-16', '', 'https://toolboxcentersas.website/upload/image2019041115550236073829.png'),
	(31, '860031796-7', 'SAC ESTRUCTURAS S.A', 'mantenimiento@sac.com.co', '317424250', ' Cra. 2 # 81-40, Soacha', 'estructuras metálicas ', 'https://toolboxcentersas.website/upload/image2019041715555104094187.png'),
	(32, '900810833-9', 'INVERSIONES INNA S.A.S.', 'ingenieria@inversionesinna.com', '4034616', 'CRA 68M  # 37 - 35 SUR', '', 'https://toolboxcentersas.website/upload/image2019042615563199813401.png'),
	(33, '901161228-0', 'INGECON1A S.A.S', 'ingecon1a@gmail.com', '3108501770', 'carrera 47 # 128A-46', '', 'https://toolboxcentersas.website/upload/image2019042715563741643012.png');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;

-- Volcando estructura para tabla u107806033_tool.equipo
CREATE TABLE IF NOT EXISTS `equipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `codigo` varchar(45) NOT NULL,
  `precio` decimal(10,0) DEFAULT '0',
  `descripcion` text,
  `fabricante` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL DEFAULT 'BODEGA',
  `referencia` varchar(45) NOT NULL,
  `imagen` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `serial_UNIQUE` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla u107806033_tool.equipo: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `equipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipo` ENABLE KEYS */;

-- Volcando estructura para tabla u107806033_tool.equipo_servicio_tecnico
CREATE TABLE IF NOT EXISTS `equipo_servicio_tecnico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `codigo` varchar(45) NOT NULL,
  `serial` varchar(45) DEFAULT NULL,
  `descripcion` text,
  `fabricante` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla u107806033_tool.equipo_servicio_tecnico: ~216 rows (aproximadamente)
/*!40000 ALTER TABLE `equipo_servicio_tecnico` DISABLE KEYS */;
INSERT INTO `equipo_servicio_tecnico` (`id`, `nombre`, `codigo`, `serial`, `descripcion`, `fabricante`) VALUES
	(34, 'taladro', '1234', NULL, '', 'makita'),
	(35, 'Taladro inalambrico 18v', 'DHP453', NULL, 'Taladro inalambrico 18v\nincluye una bateria 18v', 'Makita'),
	(36, 'Pulidora 7 pulgadas', 'DWE491-B3 Tipo 1', NULL, 'Incluye guarda de seguridad', 'Dewalt'),
	(37, 'Ruteadora', '3612', NULL, '', 'Makita'),
	(38, 'MINIPULIDORA 4 1/2', 'g720-b3', NULL, '', 'BLACK AND DECKER'),
	(39, 'ROTOMARTILLO', 'HR2470', NULL, 'SN 5651637', 'MAKITA'),
	(40, 'HIDROLAVADORA', 'RB-HP-1435', NULL, 'SN27G3ZDJ/ ECO1420', 'ROBUST'),
	(41, 'HIDROLAVADORA', 'RB-HP-1435', NULL, 'SN 27G3UQH/EAO1411', 'ROBUST'),
	(42, 'HIDROLAVADORA', 'RB-HP-1435', NULL, 'SN27G3ULT', 'ROBUST'),
	(43, 'HIDROLAVADORA', 'RB-HP-1435', NULL, 'SN EAO1150', 'ROBUST'),
	(44, 'HIDROLAVADORA', 'RB-HP-1435', NULL, 'SN 27G3U46 / EAO1322', 'ROBUST'),
	(45, 'HIDROLAVADORA', 'RB-HP-1435', NULL, 'SN EAO1308', 'ROBUST'),
	(46, 'HIDROLAVADORA', 'RB-HP-1435', NULL, 'SN 27G3UTW / EAO 1302', 'ROBUST'),
	(47, 'HIDROLAVADORA', 'RB-HP-1435', NULL, 'SN EAO1380', 'ROBUST'),
	(48, 'HIDROLAVADORA', 'RB-HP-1435', NULL, 'SN EAO1428', 'ROBUST'),
	(49, 'HIDROLAVADORA', 'SPL-B3', NULL, 'SN 13823-051562/EAO818', 'BLACK&DECKER'),
	(50, 'HIDROLAVADORA', 'RB-HP-1435', NULL, 'SN 27G3ULT/ EAO1403', 'ROBUST'),
	(51, 'HIDROLAVADORA', 'SPL-B3', NULL, 'SN 862', 'BLACK&DECKER'),
	(52, 'HIDROLAVADORA', 'SPL-B3', NULL, 'SN 13828-12150037/EAO0818', 'BLACK&DECKER'),
	(53, 'GUADAÑA', 'GUADAÑA', NULL, 'EAO011', 'HUSQVARNA'),
	(54, 'GUADAÑA', 'GUADAÑA', NULL, 'EAO012', 'HUSQVARNA'),
	(55, 'GUADAÑA', 'GUADAÑA', NULL, 'EAO013', 'HUSQVARNA'),
	(56, 'GUADAÑA', 'GUADAÑA', NULL, 'EAO014', 'HUSQVARNA'),
	(57, 'COMPRESOR', 'YC90S4', NULL, 'COLOR AZUL Y GRIS', 'TC IMPORTADORA'),
	(58, 'MINIPULIDORA 4 1/2', 'G720-b3', NULL, '', 'BLACK AND DECKER'),
	(59, 'LIJADORA ROTOORBITAL', 'BO4556', NULL, 'LA MAQUINA ENTRA A SERVICIO TECNICO POR GARANTIA COMPRADA EN HOMECENTER FACTURA DE VENTA # 81900000803355', 'MAKITA'),
	(60, 'sierra sable', 'jr3070ct', NULL, 'ingresa por golpe de 40 metros doblada la punta y sin el swich con estuche \nfactura de venta nª45 de toolbox', 'makita'),
	(61, 'PULIDORA', 'GWS9115', NULL, 'PUILIDORA 41/2 PULGADAS SERIE 3 601 G90 OGO', 'BOSCH'),
	(62, 'PULIDORA', 'GA 5020', NULL, 'PULIDORA GA 5020 SIN SERIAL POR EL DESGASTE EN LA CARACASA', 'MAKITA'),
	(63, 'PULIDORA', 'GA 5020', NULL, 'PULIDORA GA 5020 SIN SERIAL POR EL DESGASTE EN LA CARACASA', 'MAKITA'),
	(64, 'PULIDORA', '9537HP', NULL, 'PULIDORA SERIAL 002549952', 'MAKITA'),
	(65, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', '733', 'NUMERO CLIENTE 733', 'Makita'),
	(66, 'PULIDORA ANGULAR 7" + 2200W 8500 RPM', 'GA7060', NULL, 'NUMERO CLIENTE 718', 'Makita'),
	(67, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, 'NUMERO CLIENTE 730', 'Makita'),
	(68, 'PULIDORA ANGULAR 7" + 2200W 8500 RPM', 'GA7060', NULL, 'NUMERO CLIENTE 722', 'Makita'),
	(69, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, 'NUMERO CLIENTE 595', 'Makita'),
	(70, 'PULIDORA ANGULAR 7" + 2200W 8500 RPM', 'GA7060', NULL, 'NUMERO CLIENTE 719', 'Makita'),
	(71, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, 'NUMERO CLIENTE 727', 'Makita'),
	(72, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, 'NUMERO CLIENTE 732', 'Makita'),
	(73, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, 'NUMERO CLIENTE 721', 'Makita'),
	(74, 'PULIDORA ANGULAR 7" + 2200W 8500 RPM', 'GA7060', NULL, 'NUMERO CLIENTE 702', 'Makita'),
	(75, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, 'NUMERO CLIENTE 729', 'Makita'),
	(76, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, '', 'Makita'),
	(77, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, '', 'Makita'),
	(78, 'PULIDORA ANGULAR 7" + 2200W 8500 RPM', 'GA7060', NULL, '', 'Makita'),
	(79, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, '', 'Makita'),
	(80, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, '', 'Makita'),
	(81, 'PULIDORA ANGULAR 125MM (5") +', 'GA5020C', NULL, '', 'Makita'),
	(82, 'PULIDORA ANGULAR 125MM (5") +', 'GA5020C', NULL, '', 'Makita'),
	(83, 'PULIDORA ANGULAR 125MM (5") +', 'GA5020C', NULL, '', 'Makita'),
	(84, 'PULIDORA ANGULAR 125MM (5") +', 'GA5020C', NULL, '', 'Makita'),
	(85, 'PULIDORA ANGULAR 125MM (5") +', 'GA5020', NULL, '', 'Makita'),
	(86, 'PULIDORA ANGULAR 125MM (5") +', 'GA5020', NULL, '', 'Makita'),
	(87, 'PULIDORA ANGULAR 125MM (5") +', 'GA5020C', NULL, '', 'Makita'),
	(88, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, 'NUMERO CLIENTE 621', 'Makita'),
	(89, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, '', 'Makita'),
	(90, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, '', 'Makita'),
	(91, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, '', 'Makita'),
	(92, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, '', 'Makita'),
	(93, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, 'Potencia de entrada 1.650W\nDiámetro de disco 180mm (7")\nVelocidad sin carga 8.500\nDimensiones (L x A x A) 473 x 200 x 140mm (18-5/8" x 7-7/8" x 5-1/2")\nPeso neto 5,5kg (12,2lbs)', 'Makita'),
	(94, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, 'Potencia de entrada 1.650W\nDiámetro de disco 180mm (7")\nVelocidad sin carga 8.500\nDimensiones (L x A x A) 473 x 200 x 140mm (18-5/8" x 7-7/8" x 5-1/2")\nPeso neto 5,5kg (12,2lbs)', 'Makita'),
	(95, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, 'Potencia de entrada 1.650W\nDiámetro de disco 180mm (7")\nVelocidad sin carga 8.500\nDimensiones (L x A x A) 473 x 200 x 140mm (18-5/8" x 7-7/8" x 5-1/2")\nPeso neto 5,5kg (12,2lbs)', 'Makita'),
	(96, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, 'Potencia de entrada 1.650W\nDiámetro de disco 180mm (7")\nVelocidad sin carga 8.500\nDimensiones (L x A x A) 473 x 200 x 140mm (18-5/8" x 7-7/8" x 5-1/2")\nPeso neto 5,5kg (12,2lbs)', 'Makita'),
	(97, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, 'Potencia de entrada 1.650W\nDiámetro de disco 180mm (7")\nVelocidad sin carga 8.500\nDimensiones (L x A x A) 473 x 200 x 140mm (18-5/8" x 7-7/8" x 5-1/2")\nPeso neto 5,5kg (12,2lbs)', 'Makita'),
	(98, 'ROTOMARTILLO', '4258438', NULL, 'RORTOMARTILLO SERIAL No 11010', 'EINHELL'),
	(99, 'MOTOSIERRA', 'EA3501S         ', NULL, '0003377Y \n', 'MAKITA'),
	(100, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, 'Potencia de entrada 1.650W\nDiámetro de disco 180mm (7")\nVelocidad sin carga 8.500\nDimensiones (L x A x A) 473 x 200 x 140mm (18-5/8" x 7-7/8" x 5-1/2")\nPeso neto 5,5kg (12,2lbs)', 'Makita'),
	(101, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, 'Potencia de entrada 1.650W\nDiámetro de disco 180mm (7")\nVelocidad sin carga 8.500\nDimensiones (L x A x A) 473 x 200 x 140mm (18-5/8" x 7-7/8" x 5-1/2")\nPeso neto 5,5kg (12,2lbs)', 'Makita'),
	(102, 'RUTEADORA 8MM (3/8") 1-1/4HP + 900W ', 'RP0900K', NULL, 'Potencia de entrada 900W\nCapacidad Anillo: 6mm. 8mm or 1/4" . 3/8"\nVelocidad sin carga 27.000\nDimensiones (L x A x A) 256x110x217mm(10-3/32"x4-5/16"X8-17/32")\nPeso neto 2,7kg (6,0lbs)', 'MAKITA'),
	(103, 'PULIDORA ANGULAR 180MM (7") ', 'GA7060', NULL, 'Potencia de entrada 220V：2.200W　110V：1.650W\nDiámetro de disco 180 mm (7")\nVelocidad sin carga 8.500\nnivel de vibración Superficie de desbaste con Empuñadura Lateral Anti-Vibración :7,5 m/s² Lijadora de Disco con Empuñadura Anti-Vibración :2,5 m/s²\nNivel sonoro de presión 91 dB(A)\nNivel Acústico de Potencia 102 dB(A)\nDimensiones (L x A x A) 450x200x144mm (17-3/4"x7-7/8"x5-5/8")\nPeso neto 5,3kg (11,7lbs)\nCable de conexión 2,5m (8,2ft)', 'Makita'),
	(104, 'TALADRO PERCUTOR', 'HP2050', NULL, '', 'MAKITA'),
	(105, 'PULIDORA ANGULAR 7" + 2200W 8500 RPM', 'PRUEBA', NULL, '', 'MAKITA'),
	(106, 'PULIDORA ANGULAR 7" + 2200W 8500 RPM', 'GA7060', NULL, '', 'Makita'),
	(107, 'PULIDORA ANGULAR 7" + 2200W 8500 RPM', 'GA7060', NULL, '', 'Makita'),
	(108, 'CLAVADORA NEUMATICA CALIBRE 18 + 15 - 50 mm ', 'AF505', NULL, 'Capacidad Longitud : 15 - 50mm (5/8" - 2") Calibre : 18Ga\nCapacidad del cargador 100pcs\nOperación de la presión de aire 0,39 - 0,78MPa (60 - 115PSI)\nDimensiones (L x A x A) 260x64x237mm (10-1/4"x2-1/2"x9-3/8")\nPeso neto 1,4kg (3,1lbs)', 'Makita'),
	(109, 'Lijadora roto orbital', '7000-12-000', NULL, 'Sin pab ni bases ', 'Milwaukee'),
	(110, 'Planta eléctrica ', 'EF2600FW', NULL, '', 'Yamaha'),
	(111, 'Planta eléctrica', '7L5-2007057', NULL, '', 'Yamaha'),
	(112, 'PILIDORA', 'GA9030', NULL, '\n\n', 'MAKITA'),
	(113, 'PILIDORA', 'GA9030', NULL, '\n\n', 'MAKITA'),
	(114, 'PILIDORA', 'GA9030', NULL, 'no trae guarda de protección', 'MAKITA'),
	(115, 'PILIDORA', 'GA9030', NULL, '\n\n', 'MAKITA'),
	(116, 'PILIDORA', 'GA9030', NULL, '\n\n', 'MAKITA'),
	(117, 'PILIDORA', 'GA9030', NULL, '\n\n', 'MAKITA'),
	(118, 'pulidora', 'serie 7922', '7922', 'NO TRAE PROTECCION', 'BLACK Y DECKER'),
	(119, 'Taladro rotación', '6302H', NULL, '', 'Makita'),
	(120, 'MOTO TOOL', 'DRJ001', NULL, '', 'MAKITA'),
	(121, 'COMPRESOR DE AIRE 115 lbrs', 'TC-AC 190/24/8', NULL, '', 'EINHELL'),
	(122, 'PULIDORA ANGULAR 125MM (5") +', 'GA5020C', NULL, '', 'Makita'),
	(123, 'LIJADORA ROTORBITAL', 'BO5030', NULL, '', 'MAKITA'),
	(124, 'LIJADORA ROTORBITAL', 'BO5030', NULL, '', 'MAKITA'),
	(125, 'LIJADORA ROTORBITAL', 'BO5030', NULL, 'LIJADORA ROTO ORBITAL SERIAL No 936381A', 'MAKITA'),
	(126, 'LIJADORA ROTORBITAL', 'BO5030', NULL, 'LIJADORA ROTO ORBITAL SERIAL 936378A', 'MAKITA'),
	(127, 'TALADRO ', 'HP1501', NULL, 'TALADRO DE 1/2 SERIAL # 1044660G', 'MAKITA'),
	(128, 'LIJADORA DE DISCO TIPO TALADRO ', 'GV5010', NULL, 'LIJADORA DE DISCO TIPO TALADRO + 125MM (5") 440W', 'MAKITA'),
	(129, 'ROTOMARTILLO', '450002   TH50MR', NULL, '', 'HITACHI'),
	(130, 'Martillo perforador con SDS plus', 'DH 2-24 DSR', NULL, 'Potencia absorbida*	820 W\nPotencia de percusión*	2,7 J\nNúmero de impactos en velocidad nominal de rotación	0 – 5.100 bpm\nVelocidad nominal de rotación	0 – 1.300 rpm\nPeso*	2,8 kg\nPortaherramientas	SDS plus', 'BOSCH'),
	(131, 'TALADRO PERCUTOR', 'DW502-B3', NULL, '', 'DEWALT'),
	(132, 'TALADRO ROTACION', 'DESCONOCIDO', NULL, '', 'DESCONOCIDO'),
	(133, 'TALADRO INALAMBRICO ', 'GSB-12', NULL, '', 'BOSCH'),
	(134, 'TALADRO INALAMBRICO ', 'GSB-12', NULL, '', 'BOSCH'),
	(135, 'TALADRO INALAMBRICO ', 'GSB-12', NULL, '', 'BOSCH'),
	(136, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, 'NUMERO CLIENTE INTERNO 611', 'Makita'),
	(137, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, 'NUMERO INTERNO DEL CLIENTE 739', 'Makita'),
	(138, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, 'NUMERO INTERNO DEL CLIENTE 623', 'Makita'),
	(139, 'PULIDORA ANGULAR 7" + 2200W 8500 RPM', 'GA7060', '0007727Y', 'NUMERO CLIENTE 623', 'Makita'),
	(140, 'PULIDORA ANGULAR 7" + 2200W 8500 RPM', 'GA7060', '0039489Y', 'NUMERO CLIENTE ', 'Makita'),
	(141, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, 'NUMERO INTERNO DEL CLIENTE 09', 'Makita'),
	(142, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, 'NUMERO INTERNO DEL CLIENTE 740', 'Makita'),
	(143, 'PULIDORA ANGULAR 7" + 2200W 8500 RPM', 'GA7060', '0039491', 'NUMERO CLIENTE 743', 'Makita'),
	(144, 'PULIDORA ANGULAR 125MM (5") +', 'GA5020C', NULL, '', 'Makita'),
	(145, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, 'NUMERO INTERNO DEL CLIENTE 542', 'Makita'),
	(146, 'PULIDORA ANGULAR 125MM (5") +', 'GA5020C', '12134A', '', 'Makita'),
	(147, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, 'NUMERO INTERNO DEL CLIENTE 02', 'Makita'),
	(148, 'PULIDORA ANGULAR 125MM (5") +', 'GA5020', NULL, '', 'Makita'),
	(149, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', NULL, 'NUMERO CLIENTE 496', 'Makita'),
	(150, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', ' ', 'NUMERO CLIENTE 594', 'Makita'),
	(151, 'CALADORA ', 'JV0600', 'LR21670', '', 'MAKITA'),
	(152, 'CALADORA ', 'JV0600', 'LR21670', '', 'MAKITA'),
	(153, 'CALADORA ', 'JV0600', 'LR21670', '', 'MAKITA'),
	(154, 'CALADORA ', 'JV0600', 'LR21670', '', 'MAKITA'),
	(155, 'CALADORA ', 'JV0600', 'LR21670', '', 'MAKITA'),
	(156, 'CALADORA ', 'JV0600', 'LR21670', 'DDDED', 'MAKITA'),
	(157, 'CALADORA ', 'JV0600', 'LR21670', 'DDDED', 'MAKITA'),
	(158, 'CALADORA ', 'JV0600', 'LR21670', '', 'MAKITA'),
	(159, 'CALADORA ', 'JV0600', 'LR21670', '', 'MAKITA'),
	(160, 'CALADORA ', 'JV0600', 'LR21670', '', 'MAKITA'),
	(161, 'CALADORA ', 'JV0600', 'LR21670', '', 'MAKITA'),
	(162, 'CALADORA ', 'JV0600', 'LR21670', '', 'MAKITA'),
	(163, 'CALADORA ', 'JV0600', 'LR21670', '', 'MAKITA'),
	(164, 'CALADORA ', 'JV0600', 'LR21670', '', 'MAKITA'),
	(165, 'CALADORA ', 'JV0600K', 'LR21670', '', 'MAKITA'),
	(166, 'CALADORA ', 'JV0600K', 'LR21670', '', 'MAKITA'),
	(167, 'SIERRA CALADORA 650W V.V. ', 'JV0600K', 'LR21670', '', 'MAKITA'),
	(168, 'SIERRA CALADORA 650W', 'JV0600K', 'LR21670', '', 'MAKITA'),
	(169, 'SIERRA CALADORA 650W V.V. ', 'JV0600K', 'LR21670', '', 'MAKITA'),
	(170, 'SIERRA CALADORA 650W', 'JV0600K', 'LR21670', '', 'MAKITA'),
	(171, 'CALADORA ', 'JV0600', 'LR21670', '', 'MAKITA'),
	(172, 'CALADORA ', 'JV0600', 'LR21670', '', 'MAKITA'),
	(173, 'CALADORA ', 'JV0600K', 'LR21670', '', 'MAKITA'),
	(174, 'SOPLADORA, ASPIRADORA', 'UB1101', '16000', '', 'MAKITA'),
	(175, 'SOPLADORA, ASPIRADORA', 'UB1101', '16000', '', 'MAKITA'),
	(176, 'PULIDORA', 'RT-AG 125', '15-20215', '', 'EINHELL'),
	(177, 'CALADORA ', 'JV0600', 'LR21670', '', 'MAKITA'),
	(178, 'TALADRO PERCUTOR', 'HP1630', '00000', '', 'MAKITA'),
	(179, 'SIERRA DE MESA', 'MLT100', '0000', '', 'MAKITA'),
	(180, 'MOTOSIERRA', 'ms2500', 'D-71336', '', 'STIHL'),
	(181, 'MOTOSIERRA', 'MS250/C', 'D-71336', '', 'STIHL'),
	(182, 'PULIDORA ANGULAR 125MM (5") +', 'GA5020C', '12131A', '', 'Makita'),
	(183, 'PULIDORA', 'GA 5020', 'NUMERO INTERNO 67237', 'PULIDORA GA 5020 SIN SERIAL POR EL DESGASTE EN LA CARCASA, PERO CON NUMERO INTERNO # 67237', 'MAKITA'),
	(184, 'SOPLADORA, ASPIRADORA', 'UB1101', '16000', '', 'MAKITA'),
	(185, 'ROTOMARTILLO', 'HR2651', '0003461Y', '', 'MAKITA'),
	(186, 'LIJADORA ROTORBITAL', 'M9204G', '00104425K', '', 'MAKITA'),
	(187, 'EGG3300 GENERADOR A GASOLINA 3,3KW 120/240 V.', '384735  ', '384735-178', '', 'ALTERMAN'),
	(188, 'TALADRO MAGNETICO 2" (50MM)', 'DWE1622K-B3', '003629', '', 'DeWalt'),
	(189, 'PULIDORA', '9557HP', '00117364', 'PULIDORA REF:9557HP CON SERIAL No. 00117364 Y NO TIENE NUMERO INTERNO.', 'MAKITA'),
	(190, 'ROTOMARTILLA 40MM', 'HR4010C', '57508', '', 'MAKITA'),
	(191, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', 'PM730', 'NUMERO CLIENTE 730', 'Makita'),
	(192, 'PULIDORA ANGULAR 7" + 2200W 8500 RPM', 'GA7060', '0114717Y', 'NUMERO CLIENTE PM677', 'Makita'),
	(193, 'PULIDORA ANGULAR 125MM (5") +', 'GA5020C', 'PM713', '', 'Makita'),
	(194, 'PULIDORA DE 9"', 'GA9050', '47053K', '', 'MAKITA'),
	(195, 'PULIDORA ANGULAR 7" + 2200W 8500 RPM', 'GA7060', '0011436Y', 'NUMERO CLIENTE PM715', 'Makita'),
	(196, 'PULIDORA ANGULAR 125MM (5") +', 'GA5020', 'PM587', 'PM587', 'Makita'),
	(197, 'PULIDORA', '9557NH', 'SIN SERIAL Y SIN SERIAL INTERNO// TBX0001', '', 'MAKITA'),
	(198, 'PILIDORA', 'GA9030', '4334A', '\n\n', 'MAKITA'),
	(199, 'PILIDORA', 'GA9030', '4331A', '\n\n', 'MAKITA'),
	(200, 'PILIDORA', 'GA9030', '4314A', '\n\n', 'MAKITA'),
	(201, 'PULIDORA', '9557HPG', 'CERCOL 49', '', 'MAKITA'),
	(202, 'FUMIGADOR A MOTOR DE GASOLINA + 4 TIEMPOS', 'EVH2000', '2008000162', '', 'MAKITA'),
	(203, 'LIJADORA DE DISCO', 'GV5000', '000000000', '', 'MAKITA'),
	(204, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', 'SOS PM11', 'NUMERO CLIENTE PM11', 'Makita'),
	(205, 'PULIDORA ANGULAR 7" + 2200W 8500 RPM', 'GA7060', '0039474Y', 'NUMERO CLIENTE 748', 'Makita'),
	(206, 'PULIDORA DE 9"', 'GA9050', '47054K', '', 'MAKITA'),
	(207, 'GUADAÑA 4 TIEMPOS', 'EBH340U', '0152103', '', 'MAKITA'),
	(208, 'PULIDORA', 'DWE4010-B3', '021502', '', 'DEWALT'),
	(209, 'PULIDORA', 'DWE4212-B3', '21286', '', 'DEWALT'),
	(210, 'PULIDORA', 'GA7040R', '1083A', '', 'MAKITA'),
	(211, 'PULIDORA', 'DWE4597', '01945', '', 'DEWALT'),
	(212, 'PULIDORA', 'DWE4577-B3', '114', '', 'DEWALT'),
	(213, 'PULIDORA', '9557HN', '0734046Y', '', 'MAKITA'),
	(214, 'PULIDORA', 'DWE4577-B3', '006954', '', 'DEWALT'),
	(215, 'PILIDORA', 'GA9030', '4313A', '\n\n', 'MAKITA'),
	(216, 'PILIDORA', 'GA9030', '4333A', '\n\n', 'MAKITA'),
	(217, 'PULIDORA ANGULAR 7" + 2200W 8500 RPM', 'D28494', '037', '', 'DeWalt'),
	(218, 'TALADRO', 'TC3422', '2600', '', 'TOOLCRAFT'),
	(219, 'PULIDORA', 'GPO 14 E', '000', '', 'BOSCH'),
	(220, 'TALADRO', 'DWD024-B3', '30924', '', 'DEWALT'),
	(221, 'PULIDORA', 'PM', '850', '', 'INCOLMA'),
	(222, 'GENERADOR A GASOLINA', 'EGG3300', 'EGG3300', '', 'ALTERMAN'),
	(223, 'PULIDORA ANGULAR 180MM (7") ', 'GA7063R', '0001260Y', 'MARCACION INTERNA DEL CLIENTE 1260', 'MAKITA'),
	(224, 'PULIDORA', '9514B', '9514B', 'PULIDORA REF 9514B, SIN SERIAL DESGASTADA', 'MAKITA'),
	(225, 'PULIDORA ANGULAR 7" + 2200W 8500 RPM', 'GA7060', '0011355Y', 'MARCA INTERNA DEL CLIENTE PM722', 'Makita'),
	(226, 'PULIDORA ANGULAR 180MM (7") ', 'GA7063R', '0001254Y', 'MARCA INTERNA DEL CLIENTE 1254', 'MAKITA'),
	(227, 'PULIDORA 4 1/2 ', 'GA4540C', '000000000', 'MARCA INTERNA POR CLIENTE 1203', 'MAKITA'),
	(228, 'ruteadora mt', 'm3600', '13951', '', 'makita'),
	(229, 'ruteadora mt', 'm3600', '13962k', '', 'makita'),
	(230, 'TALADRO', '6055', 'f012605500', '', 'SKIL'),
	(231, 'PULIDORA ANGULAR 180MM (7") ', 'GA7063', '0001276Y', '', 'MAKITA'),
	(232, 'ACOLILLADORA', 'LS1221', '74581A', '', 'MAKITA'),
	(233, 'LIJADORA ROTORBITAL', 'BO5030', '00000000', '', 'MAKITA'),
	(234, 'MOTORTOOL', 'DW887-B2', '103879', '', 'DEWALT'),
	(235, 'PULIDORA', 'DWE4577-B3', '117', '', 'DEWALT'),
	(236, 'PULIDORA', 'GWS23-230', '82', '', 'BOSCH'),
	(237, 'PULIDORA', 'D28494WB3', '080', '', 'DEWALT'),
	(238, 'taladro', '6055', '60', '', 'skil'),
	(239, 'PULIDORA', 'f01290210', 'f01290210', '', 'SKIL'),
	(240, 'Martillo perforador con SDS plus', 'DH 2 - 24 DSR', '78400000', 'Potencia absorbida*	820 W\nPotencia de percusión*	2,7 J\nNúmero de impactos en velocidad nominal de rotación	0 – 5.100 bpm\nVelocidad nominal de rotación	0 – 1.300 rpm\nPeso*	2,8 kg\nPortaherramientas	SDS plus', 'BOSCH'),
	(241, 'RUTEADORA', 'MRP101', '000621K', 'RUTEADORA MAKITA REF MRP 101', 'MAKITA'),
	(242, 'PULIDORA', 'M0901', 'SIN SERIAL', 'PULIDORA MAKITA 4 1/2 PULGADAS', 'MAKITA'),
	(243, 'ROTOMARTILLO', '5317-20', 'C84AD14410287', '', 'MILWAUKEE'),
	(244, 'RUTEADORA', 'CRAFTSMAN', 'CRAFTSMAN', '', 'CRAFTSMAN'),
	(245, 'TALADRO', 'TALADRO', '761699', '', 'MAKITA'),
	(246, 'PULIDORA 4 1/2 ', '9557PB', '067822Y', '', 'MAKITA'),
	(247, 'PILIDORA', '9564P', '44459A', '', 'MAKITA'),
	(248, 'PULIDORA 4 1/2 ', '9554HN', '000000', 'MARCACION INTERNA CLIENTE 45', 'MAKITA'),
	(249, 'Taladro inalambrico 18v', 'DHP453', '221026', 'Taladro inalambrico 18v\nincluye una bateria 18v', 'Makita'),
	(250, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', '733', 'NUMERO CLIENTE 733', 'Makita'),
	(251, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', '733', 'NUMERO CLIENTE 733', 'Makita'),
	(252, 'PULIDORA ANGULAR 180MM (7") ', 'GA7020', '733', 'NUMERO CLIENTE 733', 'Makita');
/*!40000 ALTER TABLE `equipo_servicio_tecnico` ENABLE KEYS */;

-- Volcando estructura para tabla u107806033_tool.estado_equipo
CREATE TABLE IF NOT EXISTS `estado_equipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` text NOT NULL,
  `foto1` text NOT NULL,
  `foto2` text NOT NULL,
  `foto3` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla u107806033_tool.estado_equipo: ~191 rows (aproximadamente)
/*!40000 ALTER TABLE `estado_equipo` DISABLE KEYS */;
INSERT INTO `estado_equipo` (`id`, `descripcion`, `foto1`, `foto2`, `foto3`) VALUES
	(33, 'normal de uso con rallones', 'https://toolboxcentersas.website/upload/image2018122015453189450291.png', 'https://toolboxcentersas.website/upload/image2018122015453189454671.png', 'https://toolboxcentersas.website/upload/image2018122015453189457070.png'),
	(34, 'Con desgaste normal por el uso, sin estuche con una batería', 'https://toolboxcentersas.website/upload/image2018122015453230710861.png', 'https://toolboxcentersas.website/upload/image2018122015453230713730.png', 'https://toolboxcentersas.website/upload/image2018122015453230715691.png'),
	(35, 'Condiciones normales de uso', 'https://toolboxcentersas.website/upload/image2018122015453256886530.png', 'https://toolboxcentersas.website/upload/image2018122015453256889521.png', 'https://toolboxcentersas.website/upload/image2018122015453256891475.png'),
	(36, 'en condiciones normal de uso', 'https://toolboxcentersas.website/upload/image2018122115454105337732.png', 'https://toolboxcentersas.website/upload/image2018122115454106370587.png', 'https://toolboxcentersas.website/upload/image2018122115454106375872.png'),
	(37, 'EN CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2018122115454243408571.png', 'https://toolboxcentersas.website/upload/image2018122115454243411619.png', 'https://toolboxcentersas.website/upload/image2018122115454243414494.png'),
	(38, 'CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2018122215454909215325.png', 'https://toolboxcentersas.website/upload/image2018122215454909217372.png', 'https://toolboxcentersas.website/upload/image2018122215454909219456.png'),
	(39, 'CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2018122215454987770467.png', 'https://toolboxcentersas.website/upload/image2018122215454987773228.png', 'https://toolboxcentersas.website/upload/image2018122215454987775818.png'),
	(40, 'CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2018122215454990607252.png', 'https://toolboxcentersas.website/upload/image2018122215454990609749.png', 'https://toolboxcentersas.website/upload/image2018122215454990611675.png'),
	(41, 'CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2018122215454991221790.png', 'https://toolboxcentersas.website/upload/image2018122215454991224459.png', 'https://toolboxcentersas.website/upload/image2018122215454991226323.png'),
	(42, 'CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2018122215454992022850.png', 'https://toolboxcentersas.website/upload/image2018122215454992025146.png', 'https://toolboxcentersas.website/upload/image2018122215454992029401.png'),
	(43, 'CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2018122215454992705503.png', 'https://toolboxcentersas.website/upload/image2018122215454992707474.png', 'https://toolboxcentersas.website/upload/image2018122215454992709642.png'),
	(44, 'CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2018122215454993268302.png', 'https://toolboxcentersas.website/upload/image2018122215454993270542.png', 'https://toolboxcentersas.website/upload/image2018122215454993272516.png'),
	(45, 'CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2018122215454993931205.png', 'https://toolboxcentersas.website/upload/image2018122215454993933066.png', 'https://toolboxcentersas.website/upload/image2018122215454993934987.png'),
	(46, 'CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2018122215454994498559.png', 'https://toolboxcentersas.website/upload/image2018122215454994500450.png', 'https://toolboxcentersas.website/upload/image2018122215454994502572.png'),
	(47, 'CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2018122215454995149173.png', 'https://toolboxcentersas.website/upload/image2018122215454995152861.png', 'https://toolboxcentersas.website/upload/image2018122215454995159114.png'),
	(48, 'CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2018122215454997442495.png', 'https://toolboxcentersas.website/upload/image2018122215454997445205.png', 'https://toolboxcentersas.website/upload/image2018122215454997447509.png'),
	(49, 'CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2018122215454998338404.png', 'https://toolboxcentersas.website/upload/image2018122215454998341206.png', 'https://toolboxcentersas.website/upload/image2018122215454998344119.png'),
	(50, 'CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2018122215454998916506.png', 'https://toolboxcentersas.website/upload/image2018122215454998940029.png', 'https://toolboxcentersas.website/upload/image2018122215454998950875.png'),
	(51, 'CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2018122215455013038996.png', 'https://toolboxcentersas.website/upload/image2018122215455013040875.png', 'https://toolboxcentersas.website/upload/image2018122215455013043049.png'),
	(52, 'CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2018122215455014910046.png', 'https://toolboxcentersas.website/upload/image2018122215455014913599.png', 'https://toolboxcentersas.website/upload/image2018122215455014915389.png'),
	(53, 'CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2018122215455015997133.png', 'https://toolboxcentersas.website/upload/image2018122215455015998809.png', 'https://toolboxcentersas.website/upload/image2018122215455016000799.png'),
	(54, 'CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2018122215455016728157.png', 'https://toolboxcentersas.website/upload/image2018122215455016730140.png', 'https://toolboxcentersas.website/upload/image2018122215455016732184.png'),
	(55, 'CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2018122215455017238480.png', 'https://toolboxcentersas.website/upload/image2018122215455017240987.png', 'https://toolboxcentersas.website/upload/image2018122215455017242879.png'),
	(56, 'EN CONDICIONES NORMALES DE USO.SUCIO', 'https://toolboxcentersas.website/upload/image2019010315465313624852.png', 'https://toolboxcentersas.website/upload/image2019010315465313627380.png', 'https://toolboxcentersas.website/upload/image2019010315465313629389.png'),
	(57, 'EN CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2019011015471481247926.png', 'https://toolboxcentersas.website/upload/image2019011015471481251359.png', 'https://toolboxcentersas.website/upload/image2019011015471481254415.png'),
	(58, 'EN NCONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2019011715477568083304.png', 'https://toolboxcentersas.website/upload/image2019011715477568085384.png', 'https://toolboxcentersas.website/upload/image2019011715477568087383.png'),
	(59, 'golpeada y sucia', 'https://toolboxcentersas.website/upload/image2019011815478310761205.png', 'https://toolboxcentersas.website/upload/image2019011815478310763169.png', 'https://toolboxcentersas.website/upload/image2019011815478310765455.png'),
	(60, 'EN CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2019012515484380271545.png', 'https://toolboxcentersas.website/upload/image2019012515484380274263.png', 'https://toolboxcentersas.website/upload/image2019012515484380278507.png'),
	(61, 'EN CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2019012515484381940900.png', 'https://toolboxcentersas.website/upload/image2019012515484381943523.png', 'https://toolboxcentersas.website/upload/image2019012515484381945995.png'),
	(62, 'EN CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2019012515484384128928.png', 'https://toolboxcentersas.website/upload/image2019012515484384146236.png', 'https://toolboxcentersas.website/upload/image2019012515484384148656.png'),
	(63, 'EN CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2019012515484385860243.png', 'https://toolboxcentersas.website/upload/image2019012515484385863880.png', 'https://toolboxcentersas.website/upload/image2019012515484385870167.png'),
	(64, 'EN CONDICIONES NORMALES DE USO, CON BRIDAS Y MANGO,, SIN GUARDA', 'https://toolboxcentersas.website/upload/image2019012815487070508938.png', 'https://toolboxcentersas.website/upload/image2019012815487070511736.png', 'https://toolboxcentersas.website/upload/image2019012815487070514298.png'),
	(65, 'EN CONDICIONES NORMALES DE USO, CON BRIDAS EMPUÑADURA,,,SIN GUARDA', 'https://toolboxcentersas.website/upload/image2019012815487086206947.png', 'https://toolboxcentersas.website/upload/image2019012815487086208224.png', 'https://toolboxcentersas.website/upload/image2019012815487086209533.png'),
	(66, 'EN CONDICIONES NORMALES DE USO,, CON BRIDAS EMPUÑADURA Y GUARDAS', 'https://toolboxcentersas.website/upload/image2019012815487097035382.png', 'https://toolboxcentersas.website/upload/image2019012815487097047447.png', 'https://toolboxcentersas.website/upload/image2019012815487097062806.png'),
	(67, 'DESGASTE NORMAL, CON BRIDAS,, CON GUARDA,, CON EMPUÑADURA', 'https://toolboxcentersas.website/upload/image2019012815487123172783.png', 'https://toolboxcentersas.website/upload/image2019012815487123174894.png', 'https://toolboxcentersas.website/upload/image2019012815487123176987.png'),
	(68, 'DESGASTE NORMAL DE USO,, CON GUARDA, BRIDAS Y MANGO', 'https://toolboxcentersas.website/upload/image2019012815487129861640.png', 'https://toolboxcentersas.website/upload/image2019012815487129863551.png', 'https://toolboxcentersas.website/upload/image2019012815487129865620.png'),
	(69, 'DESGASTE NORMAL DE USO,, CON BRIDAS,,GUARDA Y EMPUÑADURA', 'https://toolboxcentersas.website/upload/image2019012815487134049898.png', 'https://toolboxcentersas.website/upload/image2019012815487134051926.png', 'https://toolboxcentersas.website/upload/image2019012815487134053898.png'),
	(70, 'USO NORMAL DE USO,, CON BRIDAS EMPUÑADURA SIN GUARDA', 'https://toolboxcentersas.website/upload/image2019012815487138163305.png', 'https://toolboxcentersas.website/upload/image2019012815487138165372.png', 'https://toolboxcentersas.website/upload/image2019012815487138167371.png'),
	(71, 'USO NORMAL,, CON BRIDAS , MANGO Y GUARDA DE DISCO', 'https://toolboxcentersas.website/upload/image2019012815487140681861.png', 'https://toolboxcentersas.website/upload/image2019012815487140684426.png', 'https://toolboxcentersas.website/upload/image2019012815487140686569.png'),
	(72, 'DESGASTE NORMAL POR EL USO', 'https://toolboxcentersas.website/upload/image2019012815487142752107.png', 'https://toolboxcentersas.website/upload/image2019012815487142754185.png', 'https://toolboxcentersas.website/upload/image2019012815487142756148.png'),
	(73, 'DESGASTE NORMAL POR EL USO ,,\nCON EMPUÑADURA, BRIDAS,,SIN GUARDA ', 'https://toolboxcentersas.website/upload/image2019012815487195459356.png', 'https://toolboxcentersas.website/upload/image2019012815487195466159.png', 'https://toolboxcentersas.website/upload/image2019012815487195470697.png'),
	(74, 'DESGASTE NORMAL POR EL USO,, CON BRIDAS, GUARDA, MANGO', 'https://toolboxcentersas.website/upload/image2019012915487201168941.png', 'https://toolboxcentersas.website/upload/image2019012915487201173759.png', 'https://toolboxcentersas.website/upload/image2019012915487201175691.png'),
	(75, 'DESGATE NORMAL DE USO,, CON BRIDAS, EMPUÑADURA Y GUARDA ', 'https://toolboxcentersas.website/upload/image2019012915487278780192.png', 'https://toolboxcentersas.website/upload/image2019012915487278782620.png', 'https://toolboxcentersas.website/upload/image2019012915487278784101.png'),
	(76, 'DESGATE NORMAL DE USO,, CON,, BRIDAS, GUARDA Y EMPUÑADURA', 'https://toolboxcentersas.website/upload/image2019012915487282491561.png', 'https://toolboxcentersas.website/upload/image2019012915487282492957.png', 'https://toolboxcentersas.website/upload/image2019012915487282494557.png'),
	(77, 'DESGASTE NORMAL DE USO,,CON BRIDAS, MANGO Y GUARDA ', 'https://toolboxcentersas.website/upload/image2019012915487289726185.png', 'https://toolboxcentersas.website/upload/image2019012915487289727438.png', 'https://toolboxcentersas.website/upload/image2019012915487289729039.png'),
	(78, 'DESGASTE NORMAL DE USO,, CON BRIDAS Y MANGO,, SIN GUARDA', 'https://toolboxcentersas.website/upload/image2019012915487293444165.png', 'https://toolboxcentersas.website/upload/image2019012915487293445555.png', 'https://toolboxcentersas.website/upload/image2019012915487293447487.png'),
	(79, 'DESGASTE NORMAL DE USO,,GUARDA Y BRIDAS,, SIN MANGO', 'https://toolboxcentersas.website/upload/image2019012915487295518843.png', 'https://toolboxcentersas.website/upload/image2019012915487295522049.png', 'https://toolboxcentersas.website/upload/image2019012915487295523611.png'),
	(80, 'Numero interno 708\ndesgaste normal de Uso\nsin guarda\nsin mango\nsin bridas', 'https://toolboxcentersas.website/upload/image2019012915488043250993.png', 'https://toolboxcentersas.website/upload/image2019012915488043253142.png', 'https://toolboxcentersas.website/upload/image2019012915488043255194.png'),
	(81, 'NUMERO INTERNO 710\nDESGASTE NORMAL DE USO\nCON GUARDA\nCON MANGO\nCON BRIDAS\nCON DISCO', 'https://toolboxcentersas.website/upload/image2019012915488049415102.png', 'https://toolboxcentersas.website/upload/image2019012915488049417033.png', 'https://toolboxcentersas.website/upload/image2019012915488049418827.png'),
	(82, 'NUMERO INTERNO 461\nSIN ACCESORIOS', 'https://toolboxcentersas.website/upload/image2019012915488051837911.png', 'https://toolboxcentersas.website/upload/image2019012915488051839793.png', 'https://toolboxcentersas.website/upload/image2019012915488051841550.png'),
	(83, 'Desgaste normal de uso\ncon bridas\nsin guarda\nsin mango', 'https://toolboxcentersas.website/upload/image2019013015488700104345.png', 'https://toolboxcentersas.website/upload/image2019013015488700106149.png', 'https://toolboxcentersas.website/upload/image2019013015488700107781.png'),
	(84, 'Desgate normal de uso..\nnumero interno 650\nsin accesorios', 'https://toolboxcentersas.website/upload/image2019013115489575142068.png', 'https://toolboxcentersas.website/upload/image2019013115489575163317.png', 'https://toolboxcentersas.website/upload/image2019013115489575167053.png'),
	(85, 'DESGASTE NORMAL DE USO.\nNUMERO INTERNO:  473\nCON BRIDAS \nCON DISCO\nSIN GUARDA', 'https://toolboxcentersas.website/upload/image2019013115489581396565.png', 'https://toolboxcentersas.website/upload/image2019013115489581417755.png', 'https://toolboxcentersas.website/upload/image2019013115489581420552.png'),
	(86, 'desgaste normal de uso\nNumero Interno 578', 'https://toolboxcentersas.website/upload/image2019013115489587212543.png', 'https://toolboxcentersas.website/upload/image2019013115489587235056.png', 'https://toolboxcentersas.website/upload/image2019013115489587237973.png'),
	(87, 'DESGASTE NORMAL DE USO\nNUMERO INTERNO; 621\nCON BRIDAS\nSIN GUARDA\nSIN MANGO', 'https://toolboxcentersas.website/upload/image2019013115489593663619.png', 'https://toolboxcentersas.website/upload/image2019013115489593687412.png', 'https://toolboxcentersas.website/upload/image2019013115489593701509.png'),
	(88, 'DESGASTE NORMAL DE USO\nNUMERO INTERNO; 604\nCON MANGO\nCON BRIDAS\nSIN GUARDA', 'https://toolboxcentersas.website/upload/image2019013115489613426650.png', 'https://toolboxcentersas.website/upload/image2019013115489613446589.png', 'https://toolboxcentersas.website/upload/image2019013115489613471540.png'),
	(89, 'DESGASTE NORMAL DE USO\nNUMERO INTERNO; PM12\nCON BRIDAS\nSIN GUARDA\nSIN MANGO', 'https://toolboxcentersas.website/upload/image2019013115489625097149.png', 'https://toolboxcentersas.website/upload/image2019013115489625141257.png', 'https://toolboxcentersas.website/upload/image2019013115489625188322.png'),
	(90, 'DESGASTE NORMAL DE USO\nNUMERO INTERNO; PM735\nCON BRIDAS\nCON MANGO\nSIN GUARDA', 'https://toolboxcentersas.website/upload/image2019013115489637220275.png', 'https://toolboxcentersas.website/upload/image2019013115489637244242.png', 'https://toolboxcentersas.website/upload/image2019013115489637273906.png'),
	(91, 'DESGASTE NORMAL DE USO\nNUMERO INTERNO; PM 624\nCON GUARDA\nCON MANGO\nCON BRIDAS', 'https://toolboxcentersas.website/upload/image2019013115489645647849.png', 'https://toolboxcentersas.website/upload/image2019013115489645663798.png', 'https://toolboxcentersas.website/upload/image2019013115489645667429.png'),
	(92, 'DESGASTE NORMAL DE USO\nNUMERO INTERNO; PM736\nCON BRIDAS\nCON GUARDA\nCON MANGO', 'https://toolboxcentersas.website/upload/image2019013115489649743738.png', 'https://toolboxcentersas.website/upload/image2019013115489649858812.png', 'https://toolboxcentersas.website/upload/image2019013115489649902495.png'),
	(93, 'DESGASTE NORMAL POR EL USO\nNUMERO INTERNO; PM 544\nCON BRIDAS CON MANGO\nSIN GUARDA', 'https://toolboxcentersas.website/upload/image2019013115489654646239.png', 'https://toolboxcentersas.website/upload/image2019013115489654668654.png', 'https://toolboxcentersas.website/upload/image2019013115489654708254.png'),
	(94, 'DESGASTE NORMAL POR EL USO\nNUMERO INTERNO; 741', 'https://toolboxcentersas.website/upload/image2019013115489659065096.png', 'https://toolboxcentersas.website/upload/image2019013115489659090773.png', 'https://toolboxcentersas.website/upload/image2019013115489659167989.png'),
	(95, 'DESGASTE NORMAL POR EL USO\nNUMERO INTERNO, PM04\nCON BRIDAS\nCON MANGO\nSIN GUARDA', 'https://toolboxcentersas.website/upload/image2019013115489673167364.png', 'https://toolboxcentersas.website/upload/image2019013115489673310973.png', 'https://toolboxcentersas.website/upload/image2019013115489673354323.png'),
	(96, 'DESGASTE NORMAL POR EL USO\nNUMERO INTERNO; PM737\nCON GUARDA\nCON MANGO\nCON BRIDAS', 'https://toolboxcentersas.website/upload/image2019013115489679960342.png', 'https://toolboxcentersas.website/upload/image2019013115489680048434.png', 'https://toolboxcentersas.website/upload/image2019013115489680091711.png'),
	(97, 'EN CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2019020115490308838506.png', 'https://toolboxcentersas.website/upload/image2019020115490308839781.png', 'https://toolboxcentersas.website/upload/image2019020115490308841079.png'),
	(98, 'CONDICIONES NORMALES DE USO,SUCIO', 'https://toolboxcentersas.website/upload/image2019020115490391657262.png', 'https://toolboxcentersas.website/upload/image2019020115490391659541.png', 'https://toolboxcentersas.website/upload/image2019020115490391660876.png'),
	(99, 'DESGASTE NORMAL POR EL USO\nNUMERO INTERNO ; PM514\nSIN GUARDA\nCON MANGO\nCON GUARDAS', 'https://toolboxcentersas.website/upload/image2019020215491207791642.png', 'https://toolboxcentersas.website/upload/image2019020215491207863679.png', 'https://toolboxcentersas.website/upload/image2019020215491207900082.png'),
	(100, 'DESGASTE NORMAL POR EL USO\nNUMERO INTERNO; PM738\nCON GUARDA\nCON BRIDAS \nCON MANGO', 'https://toolboxcentersas.website/upload/image2019020215491219147884.png', 'https://toolboxcentersas.website/upload/image2019020215491219180865.png', 'https://toolboxcentersas.website/upload/image2019020215491219229653.png'),
	(101, 'TRAE ESTUCHE GUÍA Y DOS LLAVES\nPRODUCTO EN GARANTÍA', 'https://toolboxcentersas.website/upload/image2019020215491238583272.png', 'https://toolboxcentersas.website/upload/image2019020215491238697373.png', 'https://toolboxcentersas.website/upload/image2019020215491238707847.png'),
	(102, 'DESGASTE NORMAL POR EL USO\nNUMERO INTERNO; PM725\nCON GUARDA\nCON MANGO\nCON BRIDAS', 'https://toolboxcentersas.website/upload/image2019020215491248538866.png', 'https://toolboxcentersas.website/upload/image2019020215491248576397.png', 'https://toolboxcentersas.website/upload/image2019020215491248631897.png'),
	(103, 'USADA RALLADA SIN Maleta y accesorios ', 'https://toolboxcentersas.website/upload/image2019020415493073459237.png', 'https://toolboxcentersas.website/upload/image2019020415493073461217.png', 'https://toolboxcentersas.website/upload/image2019020415493073463310.png'),
	(104, 'EDGARDO LA ROMPIÓ', 'https://toolboxcentersas.website/upload/image2019020515494082778343.png', 'https://toolboxcentersas.website/upload/image2019020515494082780798.png', 'https://toolboxcentersas.website/upload/image2019020515494082782315.png'),
	(105, 'DESGASTE NORMAL POR EL USO\nNUMERO INTERNO 679', 'https://toolboxcentersas.website/upload/image2019020615494842666642.png', 'https://toolboxcentersas.website/upload/image2019020615494842833600.png', 'https://toolboxcentersas.website/upload/image2019020615494842874859.png'),
	(106, 'DESGASTE NORMAL POR EL USO\nNUMERO INTERNO;  705\nCON GUARDA\nCON BRIDAS\nCON MANGO', 'https://toolboxcentersas.website/upload/image2019020615494847368888.png', 'https://toolboxcentersas.website/upload/image2019020615494847388749.png', 'https://toolboxcentersas.website/upload/image2019020615494847410299.png'),
	(107, 'DESGASTE NORMAL DE USO', 'https://toolboxcentersas.website/upload/image2019020615494917370566.png', 'https://toolboxcentersas.website/upload/image2019020615494917395070.png', 'https://toolboxcentersas.website/upload/image2019020615494917431081.png'),
	(108, 'Rayada golpeada ', 'https://toolboxcentersas.website/upload/image2019020815496513321589.png', 'https://toolboxcentersas.website/upload/image2019020815496513449362.png', 'https://toolboxcentersas.website/upload/image2019020815496513568143.png'),
	(109, 'Rallada usada golpeada', 'https://toolboxcentersas.website/upload/image2019021115499230397998.png', 'https://toolboxcentersas.website/upload/image2019021115499230664549.png', 'https://toolboxcentersas.website/upload/image2019021115499231022174.png'),
	(110, 'Rallada usada y golpeada ', 'https://toolboxcentersas.website/upload/image2019021115499233948245.png', 'https://toolboxcentersas.website/upload/image2019021115499234133483.png', 'https://toolboxcentersas.website/upload/image2019021115499234310090.png'),
	(111, 'CONDICIONES NORMALES DE USO ,SUCIA', 'https://toolboxcentersas.website/upload/image2019021215500044850255.png', 'https://toolboxcentersas.website/upload/image2019021215500044859191.png', 'https://toolboxcentersas.website/upload/image2019021215500044861922.png'),
	(112, 'CONDICIONES NORMALES DE USO,SUCIA', 'https://toolboxcentersas.website/upload/image2019021215500052280432.png', 'https://toolboxcentersas.website/upload/image2019021215500052287260.png', 'https://toolboxcentersas.website/upload/image2019021215500052289841.png'),
	(113, 'condiciones normales de uso, sucia', 'https://toolboxcentersas.website/upload/image2019021215500056702501.png', 'https://toolboxcentersas.website/upload/image2019021215500056706076.png', 'https://toolboxcentersas.website/upload/image2019021215500056707351.png'),
	(114, 'condiciones normales de uso, sucia', 'https://toolboxcentersas.website/upload/image2019021215500060129800.png', 'https://toolboxcentersas.website/upload/image2019021215500060133565.png', 'https://toolboxcentersas.website/upload/image2019021215500060134930.png'),
	(115, 'condiciones normales de uso, sucia ', 'https://toolboxcentersas.website/upload/image2019021215500064336493.png', 'https://toolboxcentersas.website/upload/image2019021215500064339645.png', 'https://toolboxcentersas.website/upload/image2019021215500064341015.png'),
	(116, 'condiciones normales de uso, sucia', 'https://toolboxcentersas.website/upload/image2019021215500067266953.png', 'https://toolboxcentersas.website/upload/image2019021215500067270306.png', 'https://toolboxcentersas.website/upload/image2019021215500067271697.png'),
	(117, 'ESTADO NORMAL DE USO, SUCIA ', 'https://toolboxcentersas.website/upload/image2019021215500103825755.png', 'https://toolboxcentersas.website/upload/image2019021215500103829212.png', 'https://toolboxcentersas.website/upload/image2019021215500103830610.png'),
	(118, 'Nueva, rallada, con llave de ajuste ', 'https://toolboxcentersas.website/upload/image2019021315500714289250.png', 'https://toolboxcentersas.website/upload/image2019021315500714415362.png', 'https://toolboxcentersas.website/upload/image2019021315500714550573.png'),
	(119, 'EN CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2019021515502470245431.png', 'https://toolboxcentersas.website/upload/image2019021515502470274401.png', 'https://toolboxcentersas.website/upload/image2019021515502470288180.png'),
	(120, 'NUEVO NO USO', 'https://toolboxcentersas.website/upload/image2019021515502662892892.png', 'https://toolboxcentersas.website/upload/image2019021515502662896922.png', 'https://toolboxcentersas.website/upload/image2019021515502662902242.png'),
	(121, 'EN CONDICIONES NORMALES POR EL USO.\nNO TRAE GUARDA\nNO TRAE BRIDAS\nNO TRAE MANGO\nSIN ESCOBILLAS', 'https://toolboxcentersas.website/upload/image2019021615503309498784.png', 'https://toolboxcentersas.website/upload/image2019021615503309643305.png', 'https://toolboxcentersas.website/upload/image2019021615503309647893.png'),
	(122, 'RALLADA, USADA,MARCADA SIN BOLSA RECOLECTORA DE POLVO', 'https://toolboxcentersas.website/upload/image2019021815505266834399.png', 'https://toolboxcentersas.website/upload/image2019021815505266839478.png', 'https://toolboxcentersas.website/upload/image2019021815505266851811.png'),
	(123, 'NORMAL POR EL USO', 'https://toolboxcentersas.website/upload/image2019021915506065950107.png', 'https://toolboxcentersas.website/upload/image2019021915506066078914.png', 'https://toolboxcentersas.website/upload/image2019021915506066117298.png'),
	(124, 'EN CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2019021915506156955033.png', 'https://toolboxcentersas.website/upload/image2019021915506156958193.png', 'https://toolboxcentersas.website/upload/image2019021915506156962733.png'),
	(125, 'EN CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2019021915506160384490.png', 'https://toolboxcentersas.website/upload/image2019021915506160392741.png', 'https://toolboxcentersas.website/upload/image2019021915506160397961.png'),
	(126, 'EN CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2019022115507786360430.png', 'https://toolboxcentersas.website/upload/image2019022115507786364574.png', 'https://toolboxcentersas.website/upload/image2019022115507786366380.png'),
	(127, 'SIN DISCO\nDESGASTE POR EL USO NORMAL', 'https://toolboxcentersas.website/upload/image2019022215508503213414.png', 'https://toolboxcentersas.website/upload/image2019022215508503245803.png', 'https://toolboxcentersas.website/upload/image2019022215508503250115.png'),
	(128, 'CONDICIONES NORMALES DE USO ', 'https://toolboxcentersas.website/upload/image2019022615512098823891.png', 'https://toolboxcentersas.website/upload/image2019022615512098825893.png', 'https://toolboxcentersas.website/upload/image2019022615512098827332.png'),
	(129, 'SIN MALETA SIN MANGO\nSIN ACCESORIOS\nCONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2019022615512200096695.png', 'https://toolboxcentersas.website/upload/image2019022615512200118706.png', 'https://toolboxcentersas.website/upload/image2019022615512200121783.png'),
	(130, 'RALLADA, USADA, GOLPEADA', 'https://toolboxcentersas.website/upload/image2019022615512244059235.png', 'https://toolboxcentersas.website/upload/image2019022615512244149795.png', 'https://toolboxcentersas.website/upload/image2019022615512244164119.png'),
	(131, 'RALLADA, USADA, ', 'https://toolboxcentersas.website/upload/image2019022615512248595557.png', 'https://toolboxcentersas.website/upload/image2019022615512248700523.png', 'https://toolboxcentersas.website/upload/image2019022615512248792285.png'),
	(132, 'USADA RALLADA, CARGADORES PARA REPARAR', 'https://toolboxcentersas.website/upload/image2019022615512251739708.png', 'https://toolboxcentersas.website/upload/image2019022615512251759009.png', 'https://toolboxcentersas.website/upload/image2019022615512251760638.png'),
	(133, 'USADA RALLADA ', 'https://toolboxcentersas.website/upload/image2019022615512252299649.png', 'https://toolboxcentersas.website/upload/image2019022615512252311326.png', 'https://toolboxcentersas.website/upload/image2019022615512252313072.png'),
	(134, 'USADA RALLADA ', 'https://toolboxcentersas.website/upload/image2019022615512253364786.png', 'https://toolboxcentersas.website/upload/image2019022615512253373436.png', 'https://toolboxcentersas.website/upload/image2019022615512253399789.png'),
	(135, 'DESGASTADA, SUCIA, SIN GUARDA NI MANGO', 'https://toolboxcentersas.website/upload/image2019022715512935965904.png', 'https://toolboxcentersas.website/upload/image2019022715512935991419.png', 'https://toolboxcentersas.website/upload/image2019022715512936031749.png'),
	(136, 'DESGASTADA Y SUCIA', 'https://toolboxcentersas.website/upload/image2019022715512940926547.png', 'https://toolboxcentersas.website/upload/image2019022715512940954903.png', 'https://toolboxcentersas.website/upload/image2019022715512940986944.png'),
	(137, 'DESGASTADA Y SUCIA. LLEGA SIN GUARDA Y SIN MANGO', 'https://toolboxcentersas.website/upload/image2019022715512947895425.png', 'https://toolboxcentersas.website/upload/image2019022715512947921653.png', 'https://toolboxcentersas.website/upload/image2019022715512947956851.png'),
	(138, 'EN CONDICIONES NORMALES DE USO\nCON GUARDA\nCON MANGO\nCON BRIDAS\nSERIE 0007727Y', 'https://toolboxcentersas.website/upload/image2019022715512954155742.png', 'https://toolboxcentersas.website/upload/image2019022715512954562679.png', 'https://toolboxcentersas.website/upload/image2019022715512954895019.png'),
	(139, 'NO PRENDE\n0039489Y\nEN CONDICIONES NORMALES DE USO\nSIN ESCOBILLAS\nCON BRIDAS \nCON GUARDA\nCON MANGO\n', 'https://toolboxcentersas.website/upload/image2019022715512960173546.png', 'https://toolboxcentersas.website/upload/image2019022715512960584109.png', 'https://toolboxcentersas.website/upload/image2019022715512960987659.png'),
	(140, 'DESGASTADA Y SUCIA. VIENE SIN GUARDA, CON MANGO.', 'https://toolboxcentersas.website/upload/image2019022715512963152834.png', 'https://toolboxcentersas.website/upload/image2019022715512963190598.png', 'https://toolboxcentersas.website/upload/image2019022715512963230216.png'),
	(141, 'DESGASTADO, SUCIA. LLEGA SIN GUARDA Y SIN MANGO', 'https://toolboxcentersas.website/upload/image2019022715512966425244.png', 'https://toolboxcentersas.website/upload/image2019022715512966466499.png', 'https://toolboxcentersas.website/upload/image2019022715512966498837.png'),
	(142, 'EN CONDICIONES NORMALES DE USO\nCON GUARDA\nCON MANGO\nCON BRIDAS\nSERIE 0039491', 'https://toolboxcentersas.website/upload/image2019022715512975902093.png', 'https://toolboxcentersas.website/upload/image2019022715512976201200.png', 'https://toolboxcentersas.website/upload/image2019022715512976470682.png'),
	(143, 'DESGASTE NORMAL POR EL USO\nSERIE 9545A\nSIN GUARDA\nSIN MANGO\nSIN BRIDAS', 'https://toolboxcentersas.website/upload/image2019022715512983453542.png', 'https://toolboxcentersas.website/upload/image2019022715512983759549.png', 'https://toolboxcentersas.website/upload/image2019022715512984077217.png'),
	(144, 'DESGASTADA, SUCIA. LLEGA SIN GUARDA Y SIN MANGO', 'https://toolboxcentersas.website/upload/image2019022715512998645691.png', 'https://toolboxcentersas.website/upload/image2019022715512998679749.png', 'https://toolboxcentersas.website/upload/image2019022715512998714360.png'),
	(145, 'DESGASTE NORMAL POR EL USO\nSIN GUARDA\nSERIE 12134A\n', 'https://toolboxcentersas.website/upload/image2019022715512999206101.png', 'https://toolboxcentersas.website/upload/image2019022715512999597544.png', 'https://toolboxcentersas.website/upload/image2019022715512999871465.png'),
	(146, 'DESGASTADA Y SUCIA. LLEGA SIN GUARDA Y SIN MANGO', 'https://toolboxcentersas.website/upload/image2019022715513001994442.png', 'https://toolboxcentersas.website/upload/image2019022715513002031241.png', 'https://toolboxcentersas.website/upload/image2019022715513002068646.png'),
	(147, 'SIN MANGO, SIN GUARDA,SIN BRIDAS, RALLADA GOLPEADA \nMARCACION 70872', 'https://toolboxcentersas.website/upload/image2019030115514722692695.png', 'https://toolboxcentersas.website/upload/image2019030115514722697402.png', 'https://toolboxcentersas.website/upload/image2019030115514722700675.png'),
	(148, 'RALLADA USADA GOLPEADA', 'https://toolboxcentersas.website/upload/image2019030615518898676423.png', 'https://toolboxcentersas.website/upload/image2019030615518898680814.png', 'https://toolboxcentersas.website/upload/image2019030615518898684775.png'),
	(149, 'RALLADA USADA GOLPEADA ', 'https://toolboxcentersas.website/upload/image2019030615518899872861.png', 'https://toolboxcentersas.website/upload/image2019030615518899876700.png', 'https://toolboxcentersas.website/upload/image2019030615518899880418.png'),
	(150, 'SUCIA CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2019031315524868051941.png', 'https://toolboxcentersas.website/upload/image2019031315524868065449.png', 'https://toolboxcentersas.website/upload/image2019031315524868074626.png'),
	(151, 'USADA RALLADA GOLPEADA', 'https://toolboxcentersas.website/upload/image2019031315524890063099.png', 'https://toolboxcentersas.website/upload/image2019031315524890068968.png', 'https://toolboxcentersas.website/upload/image2019031315524890071638.png'),
	(152, 'USADA RALLADA ', 'https://toolboxcentersas.website/upload/image2019031315524902080180.png', 'https://toolboxcentersas.website/upload/image2019031315524902096473.png', 'https://toolboxcentersas.website/upload/image2019031315524902099039.png'),
	(153, 'USADA RALLADA ', 'https://toolboxcentersas.website/upload/image2019031315524903756915.png', 'https://toolboxcentersas.website/upload/image2019031315524903818140.png', 'https://toolboxcentersas.website/upload/image2019031315524903860790.png'),
	(154, 'RALLADA USADA GOLPEADA', 'https://toolboxcentersas.website/upload/image2019031315524926269987.png', 'https://toolboxcentersas.website/upload/image2019031315524926283972.png', 'https://toolboxcentersas.website/upload/image2019031315524926340558.png'),
	(155, 'USADA RALLADA GOLPEADA', 'https://toolboxcentersas.website/upload/image2019031315524928349457.png', 'https://toolboxcentersas.website/upload/image2019031315524928392762.png', 'https://toolboxcentersas.website/upload/image2019031315524928395023.png'),
	(156, 'USADA RALLADA, SIN GUARDA NI MANGO ', 'https://toolboxcentersas.website/upload/image2019031315524949384919.png', 'https://toolboxcentersas.website/upload/image2019031315524949389176.png', 'https://toolboxcentersas.website/upload/image2019031315524949406265.png'),
	(157, 'EN CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2019031415525741547659.png', 'https://toolboxcentersas.website/upload/image2019031415525741553791.png', 'https://toolboxcentersas.website/upload/image2019031415525741556782.png'),
	(158, 'RALLADA USADA ', 'https://toolboxcentersas.website/upload/image2019031415525793894064.png', 'https://toolboxcentersas.website/upload/image2019031415525794116856.png', 'https://toolboxcentersas.website/upload/image2019031415525794119840.png'),
	(159, 'RALLADA USADA', 'https://toolboxcentersas.website/upload/image2019031915530171683420.png', 'https://toolboxcentersas.website/upload/image2019031915530171684943.png', 'https://toolboxcentersas.website/upload/image2019031915530171686396.png'),
	(160, 'USADA, SIN BOLSA RECOLECTORA DE POLVO', 'https://toolboxcentersas.website/upload/image2019032115531982440694.png', 'https://toolboxcentersas.website/upload/image2019032115531982447472.png', 'https://toolboxcentersas.website/upload/image2019032115531982455636.png'),
	(161, 'LE FALTA EL ARRANQUE, MAQUINA EN MAL ESTADO CON EL CHASIS DOBLADO', 'https://toolboxcentersas.website/upload/image2019032715537126356446.png', 'https://toolboxcentersas.website/upload/image2019032715537126401370.png', 'https://toolboxcentersas.website/upload/image2019032715537126431749.png'),
	(162, 'Taladro con piezas partidas\nBase partida\neje descentrado ', 'https://toolboxcentersas.website/upload/image2019032715537136396395.png', 'https://toolboxcentersas.website/upload/image2019032715537136438160.png', 'https://toolboxcentersas.website/upload/image2019032715537136584924.png'),
	(163, 'EN CONDICIONES NORMALES DE USO. LLEGA CON MANGO Y SIN GUARDA.', 'https://toolboxcentersas.website/upload/image2019032815538024542768.png', 'https://toolboxcentersas.website/upload/image2019032815538024548938.png', 'https://toolboxcentersas.website/upload/image2019032815538024554275.png'),
	(164, 'EN CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2019032915538896131232.png', 'https://toolboxcentersas.website/upload/image2019032915538896248583.png', 'https://toolboxcentersas.website/upload/image2019032915538896254697.png'),
	(165, 'SIN GUARDA, USADA RALLADA, GOLPEADA ', 'https://toolboxcentersas.website/upload/image2019033015539565276156.png', 'https://toolboxcentersas.website/upload/image2019033015539565367628.png', 'https://toolboxcentersas.website/upload/image2019033015539565374606.png'),
	(166, 'RALLADA, USADA, GOLPEADA\n', 'https://toolboxcentersas.website/upload/image2019033015539624897373.png', 'https://toolboxcentersas.website/upload/image2019033015539624937562.png', 'https://toolboxcentersas.website/upload/image2019033015539625045682.png'),
	(167, 'RALLADA USADA, GOLPEADA', 'https://toolboxcentersas.website/upload/image2019033015539652455117.png', 'https://toolboxcentersas.website/upload/image2019033015539652480036.png', 'https://toolboxcentersas.website/upload/image2019033015539652482114.png'),
	(168, 'USADA, RALLADA', 'https://toolboxcentersas.website/upload/image2019033015539662031207.png', 'https://toolboxcentersas.website/upload/image2019033015539662034548.png', 'https://toolboxcentersas.website/upload/image2019033015539662037452.png'),
	(169, 'USADA RALLADA GOLPEADA ', 'https://toolboxcentersas.website/upload/image2019033015539676660823.png', 'https://toolboxcentersas.website/upload/image2019033015539676774802.png', 'https://toolboxcentersas.website/upload/image2019033015539676831883.png'),
	(170, 'USADA, RALLADA, SIN GUARDAS NI BRIDAS DE AJUSTE DISCO', 'https://toolboxcentersas.website/upload/image2019033015539701643814.png', 'https://toolboxcentersas.website/upload/image2019033015539701701626.png', 'https://toolboxcentersas.website/upload/image2019033015539701703306.png'),
	(171, 'EN CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2019033015539712710499.png', 'https://toolboxcentersas.website/upload/image2019033015539712713823.png', 'https://toolboxcentersas.website/upload/image2019033015539712717098.png'),
	(172, 'USADA RALLADA', 'https://toolboxcentersas.website/upload/image2019033015539715350668.png', 'https://toolboxcentersas.website/upload/image2019033015539715385940.png', 'https://toolboxcentersas.website/upload/image2019033015539715421772.png'),
	(173, 'USADO RALLADO', 'https://toolboxcentersas.website/upload/image2019033015539717937012.png', 'https://toolboxcentersas.website/upload/image2019033015539717985538.png', 'https://toolboxcentersas.website/upload/image2019033015539718011066.png'),
	(174, 'USADA,RALLADA', 'https://toolboxcentersas.website/upload/image2019033015539719663770.png', 'https://toolboxcentersas.website/upload/image2019033015539719685951.png', 'https://toolboxcentersas.website/upload/image2019033015539719699707.png'),
	(175, 'USADA RALLADA , SIN GUARDA NI BRIDAS', 'https://toolboxcentersas.website/upload/image2019040115541399480772.png', 'https://toolboxcentersas.website/upload/image2019040115541399488373.png', 'https://toolboxcentersas.website/upload/image2019040115541399492406.png'),
	(176, 'CONDICIONES NORMALES DE USO 50%', 'https://toolboxcentersas.website/upload/image2019040215542168394345.png', 'https://toolboxcentersas.website/upload/image2019040215542168428325.png', 'https://toolboxcentersas.website/upload/image2019040215542168460291.png'),
	(177, 'USADA, RALLADA, ROTA EN PARTE SUPERIOR ', 'https://toolboxcentersas.website/upload/image2019040215542291231346.png', 'https://toolboxcentersas.website/upload/image2019040215542291234836.png', 'https://toolboxcentersas.website/upload/image2019040215542291238148.png'),
	(178, 'USADA RAYADA ', 'https://toolboxcentersas.website/upload/image2019040815547551325830.png', 'https://toolboxcentersas.website/upload/image2019040815547551350400.png', 'https://toolboxcentersas.website/upload/image2019040815547551495748.png'),
	(179, 'USADA, RALLADA', 'https://toolboxcentersas.website/upload/image2019040815547554440604.png', 'https://toolboxcentersas.website/upload/image2019040815547554454342.png', 'https://toolboxcentersas.website/upload/image2019040815547554468699.png'),
	(180, 'USADA, RALLADA', 'https://toolboxcentersas.website/upload/image2019040815547555743537.png', 'https://toolboxcentersas.website/upload/image2019040815547555809479.png', 'https://toolboxcentersas.website/upload/image2019040815547555864461.png'),
	(181, 'USADA, RALLADA, GOLPEADA', 'https://toolboxcentersas.website/upload/image2019040815547600876623.png', 'https://toolboxcentersas.website/upload/image2019040815547600880912.png', 'https://toolboxcentersas.website/upload/image2019040815547600883790.png'),
	(182, 'SUCIA, CONDICIONES NORMALES DE USO, SIN GUARDA CON BRIDAS', 'https://toolboxcentersas.website/upload/image2019040915548356609453.png', 'https://toolboxcentersas.website/upload/image2019040915548356632719.png', 'https://toolboxcentersas.website/upload/image2019040915548356634912.png'),
	(183, 'SUCIA, ESTADO NORMAL DE USO', 'https://toolboxcentersas.website/upload/image2019040915548465026042.png', 'https://toolboxcentersas.website/upload/image2019040915548465042824.png', 'https://toolboxcentersas.website/upload/image2019040915548465044352.png'),
	(184, 'SUCIA, CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2019040915548466825602.png', 'https://toolboxcentersas.website/upload/image2019040915548466840068.png', 'https://toolboxcentersas.website/upload/image2019040915548466842725.png'),
	(185, 'SUCIA, CONDICIONES NORMALES DE USO\n', 'https://toolboxcentersas.website/upload/image2019040915548469071394.png', 'https://toolboxcentersas.website/upload/image2019040915548469088856.png', 'https://toolboxcentersas.website/upload/image2019040915548469090249.png'),
	(186, 'SUCIA, ESTADO NORMAL DE USO', 'https://toolboxcentersas.website/upload/image2019040915548471808578.png', 'https://toolboxcentersas.website/upload/image2019040915548471818303.png', 'https://toolboxcentersas.website/upload/image2019040915548471819649.png'),
	(187, 'SUCIA, CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2019040915548473252253.png', 'https://toolboxcentersas.website/upload/image2019040915548473278928.png', 'https://toolboxcentersas.website/upload/image2019040915548473280606.png'),
	(188, 'SUCIA, CONDICIONES NORMALES DE USO\n', 'https://toolboxcentersas.website/upload/image2019040915548475312543.png', 'https://toolboxcentersas.website/upload/image2019040915548475370728.png', 'https://toolboxcentersas.website/upload/image2019040915548475372647.png'),
	(189, 'USADA RALLADA ', 'https://toolboxcentersas.website/upload/image2019041115550140509712.png', 'https://toolboxcentersas.website/upload/image2019041115550140534685.png', 'https://toolboxcentersas.website/upload/image2019041115550140559345.png'),
	(190, 'USADA,RALLADA', 'https://toolboxcentersas.website/upload/image2019041115550141888578.png', 'https://toolboxcentersas.website/upload/image2019041115550141900836.png', 'https://toolboxcentersas.website/upload/image2019041115550141910907.png'),
	(191, 'EQUIPO EN CONDICIONES NORMALES DE USO, NUMERO INTERNO 037', 'https://toolboxcentersas.website/upload/image2019041215550970521069.png', 'https://toolboxcentersas.website/upload/image2019041215550970644235.png', 'https://toolboxcentersas.website/upload/image2019041215550970647958.png'),
	(192, 'SUCIO, CONDICIONES NORMALES DE USO\n', 'https://toolboxcentersas.website/upload/image2019041215550993288644.png', 'https://toolboxcentersas.website/upload/image2019041215550993300418.png', 'https://toolboxcentersas.website/upload/image2019041215550993302101.png'),
	(193, 'SUCIO, CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2019041215550995896581.png', 'https://toolboxcentersas.website/upload/image2019041215550995914095.png', 'https://toolboxcentersas.website/upload/image2019041215550995915604.png'),
	(194, 'SUCIO, CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2019041215550999818200.png', 'https://toolboxcentersas.website/upload/image2019041215550999829397.png', 'https://toolboxcentersas.website/upload/image2019041215550999832811.png'),
	(195, 'SUCIA, CONDICIONES NORMALES USO', 'https://toolboxcentersas.website/upload/image2019041215551002349852.png', 'https://toolboxcentersas.website/upload/image2019041215551002362683.png', 'https://toolboxcentersas.website/upload/image2019041215551002364046.png'),
	(196, 'SUCIA CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2019041515553614729086.png', 'https://toolboxcentersas.website/upload/image2019041515553614737995.png', 'https://toolboxcentersas.website/upload/image2019041515553614739715.png'),
	(197, 'USADA, RALLADA, GOLPEADA', 'https://toolboxcentersas.website/upload/image2019041715555110583873.png', 'https://toolboxcentersas.website/upload/image2019041715555110615413.png', 'https://toolboxcentersas.website/upload/image2019041715555110659057.png'),
	(198, 'EN CONDICIONES NORMALES DE USO, DESGASTADA SUCIA', 'https://toolboxcentersas.website/upload/image2019041715555116489589.png', 'https://toolboxcentersas.website/upload/image2019041715555116492703.png', 'https://toolboxcentersas.website/upload/image2019041715555116495790.png'),
	(199, 'USADA, RALLADA', 'https://toolboxcentersas.website/upload/image2019041715555116945767.png', 'https://toolboxcentersas.website/upload/image2019041715555117066374.png', 'https://toolboxcentersas.website/upload/image2019041715555117209283.png'),
	(200, 'USADA, RALLADA', 'https://toolboxcentersas.website/upload/image2019041715555121562160.png', 'https://toolboxcentersas.website/upload/image2019041715555121600278.png', 'https://toolboxcentersas.website/upload/image2019041715555121647589.png'),
	(201, 'USADA,RALLADA, ', 'https://toolboxcentersas.website/upload/image2019041715555127747581.png', 'https://toolboxcentersas.website/upload/image2019041715555127759460.png', 'https://toolboxcentersas.website/upload/image2019041715555127765780.png'),
	(202, '1 semana de uso\n', 'https://toolboxcentersas.website/upload/image2019042215559424161497.png', 'https://toolboxcentersas.website/upload/image2019042215559424181241.png', 'https://toolboxcentersas.website/upload/image2019042215559424182945.png'),
	(203, 'nuevo', 'https://toolboxcentersas.website/upload/image2019042215559430179487.png', 'https://toolboxcentersas.website/upload/image2019042215559430194154.png', 'https://toolboxcentersas.website/upload/image2019042215559430195785.png'),
	(204, 'SUCIO CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2019042315560395253329.png', 'https://toolboxcentersas.website/upload/image2019042315560395320518.png', 'https://toolboxcentersas.website/upload/image2019042315560395323999.png'),
	(205, 'USADA, RALLADA, SIN BRIDAS NI GUARDAS, SIN MAGO DE AGARRE', 'https://toolboxcentersas.website/upload/image2019042415561297012154.png', 'https://toolboxcentersas.website/upload/image2019042415561297017344.png', 'https://toolboxcentersas.website/upload/image2019042415561297072162.png'),
	(206, 'SUCIA, CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2019042415561453595528.png', 'https://toolboxcentersas.website/upload/image2019042415561453614653.png', 'https://toolboxcentersas.website/upload/image2019042415561453616425.png'),
	(207, 'USADA, RALLADA, SIN BOLSA RECOLECTORA DE PARTICULAS', 'https://toolboxcentersas.website/upload/image2019042515562033884550.png', 'https://toolboxcentersas.website/upload/image2019042515562033886197.png', 'https://toolboxcentersas.website/upload/image2019042515562033887603.png'),
	(208, 'USADA, RALLADA, ', 'https://toolboxcentersas.website/upload/image2019042515562038938439.png', 'https://toolboxcentersas.website/upload/image2019042515562038942077.png', 'https://toolboxcentersas.website/upload/image2019042515562038945799.png'),
	(209, 'SUCIA, CONDICIONES NORMALES DE USO, DESARMADA', 'https://toolboxcentersas.website/upload/image2019042515562309120941.png', 'https://toolboxcentersas.website/upload/image2019042515562309140934.png', 'https://toolboxcentersas.website/upload/image2019042515562309142455.png'),
	(210, 'SUCIA, CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2019042515562311026385.png', 'https://toolboxcentersas.website/upload/image2019042515562311045753.png', 'https://toolboxcentersas.website/upload/image2019042515562311047389.png'),
	(211, 'SUCIA, CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2019042515562312764048.png', 'https://toolboxcentersas.website/upload/image2019042515562312776839.png', 'https://toolboxcentersas.website/upload/image2019042515562312778224.png'),
	(212, 'SUCIO CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2019042615562943081844.png', 'https://toolboxcentersas.website/upload/image2019042615562943101175.png', 'https://toolboxcentersas.website/upload/image2019042615562943102678.png'),
	(213, 'SUCIA, CONDICIONES NORMALES DE USO.', 'https://toolboxcentersas.website/upload/image2019042615562952318126.png', 'https://toolboxcentersas.website/upload/image2019042615562952327101.png', 'https://toolboxcentersas.website/upload/image2019042615562952328843.png'),
	(214, 'EN CONDICIONES NORMALES DE USO LLEGA SIN ESTUCHE Y SIN MANGO', 'https://toolboxcentersas.website/upload/image2019042615563177112287.png', 'https://toolboxcentersas.website/upload/image2019042615563177126792.png', 'https://toolboxcentersas.website/upload/image2019042615563177128512.png'),
	(215, 'EN CONDICIONES NORMALES DE USO ', 'https://toolboxcentersas.website/upload/image2019042615563189794575.png', 'https://toolboxcentersas.website/upload/image2019042615563189797931.png', 'https://toolboxcentersas.website/upload/image2019042615563189801575.png'),
	(216, 'EN CONDICIONES NORMALES DE USO, SIN GUARDA Y SIN MANGO', 'https://toolboxcentersas.website/upload/image2019042615563202469581.png', 'https://toolboxcentersas.website/upload/image2019042615563202473407.png', 'https://toolboxcentersas.website/upload/image2019042615563202476977.png'),
	(217, 'USADA,RALLADA, CON MANGO Y ESTUCHE PLÁSTICO', 'https://toolboxcentersas.website/upload/image2019042715563745263089.png', 'https://toolboxcentersas.website/upload/image2019042715563745293863.png', 'https://toolboxcentersas.website/upload/image2019042715563745410931.png'),
	(218, 'SUCIA CONDICIONES NORMALES DE USO', 'https://toolboxcentersas.website/upload/image2019042915565532667619.png', 'https://toolboxcentersas.website/upload/image2019042915565532679956.png', 'https://toolboxcentersas.website/upload/image2019042915565532682427.png'),
	(219, 'SUCIA, CONDICIONES NORMALES DE USO\n', 'https://toolboxcentersas.website/upload/image2019042915565534661227.png', 'https://toolboxcentersas.website/upload/image2019042915565534689057.png', 'https://toolboxcentersas.website/upload/image2019042915565534690568.png'),
	(220, 'USADA, RALLADA, SIN GURDA ', 'https://toolboxcentersas.website/upload/image2019043015566435041408.png', 'https://toolboxcentersas.website/upload/image2019043015566435047991.png', 'https://toolboxcentersas.website/upload/image2019043015566435049408.png'),
	(221, 'USADA,RALLADA,SIN GUARDAS NI MANGO', 'https://toolboxcentersas.website/upload/image2019050215568198594829.png', 'https://toolboxcentersas.website/upload/image2019050215568198599019.png', 'https://toolboxcentersas.website/upload/image2019050215568198616078.png'),
	(222, 'USADA,RALLADA,SIN GUARDA NI BRIDAS', 'https://toolboxcentersas.website/upload/image2019050215568204217285.png', 'https://toolboxcentersas.website/upload/image2019050215568204221142.png', 'https://toolboxcentersas.website/upload/image2019050215568204224537.png'),
	(223, 'condiciones normales de uso trae maleta', 'https://toolboxcentersas.website/upload/image2019050315568999807221.png', 'https://toolboxcentersas.website/upload/image2019050315568999836764.png', 'https://toolboxcentersas.website/upload/image2019050315568999864866.png'),
	(224, 'asdf', 'http://localhost/TOOLBOXCENTER/upload/image2019050715572128233539.png', 'http://localhost/TOOLBOXCENTER/upload/image2019050715572128234462.png', 'http://localhost/TOOLBOXCENTER/upload/image2019050715572128235441.png'),
	(225, 'sdfgsdfhsdhfgjfgjfgjhfgjhf', 'http://localhost/TOOLBOXCENTER/upload/image2019050715572134136110.png', 'http://localhost/TOOLBOXCENTER/upload/image2019050715572134136880.png', 'http://localhost/TOOLBOXCENTER/upload/image2019050715572134137728.png'),
	(226, 'asdfasdf', 'http://localhost/TOOLBOXCENTER/upload/image2019050715572139704207.png', 'http://localhost/TOOLBOXCENTER/upload/image2019050715572139704987.png', 'http://localhost/TOOLBOXCENTER/upload/image2019050715572139705743.png');
/*!40000 ALTER TABLE `estado_equipo` ENABLE KEYS */;

-- Volcando estructura para tabla u107806033_tool.factura
CREATE TABLE IF NOT EXISTS `factura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `valor` decimal(10,0) NOT NULL DEFAULT '0',
  `descuento` decimal(10,0) NOT NULL DEFAULT '0',
  `subtotal` decimal(10,0) NOT NULL DEFAULT '0',
  `total` decimal(10,0) NOT NULL DEFAULT '0',
  `estado` varchar(45) NOT NULL DEFAULT 'REGISTRANDO',
  PRIMARY KEY (`id`),
  KEY `fk_factura_cliente1_idx` (`id_cliente`),
  KEY `fk_factura_empleado1_idx` (`id_empleado`),
  CONSTRAINT `fk_factura_cliente1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_factura_empleado1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla u107806033_tool.factura: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;

-- Volcando estructura para tabla u107806033_tool.impuesto
CREATE TABLE IF NOT EXISTS `impuesto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla u107806033_tool.impuesto: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `impuesto` DISABLE KEYS */;
INSERT INTO `impuesto` (`id`, `nombre`, `valor`, `descripcion`) VALUES
	(2, 'IVA', 0.19, 'Impuesto sobre las ventas 19%');
/*!40000 ALTER TABLE `impuesto` ENABLE KEYS */;

-- Volcando estructura para tabla u107806033_tool.inventario
CREATE TABLE IF NOT EXISTS `inventario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(45) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `codigo` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `precio` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla u107806033_tool.inventario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;

-- Volcando estructura para tabla u107806033_tool.kardex
CREATE TABLE IF NOT EXISTS `kardex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tipo` varchar(45) NOT NULL,
  `precio` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla u107806033_tool.kardex: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `kardex` DISABLE KEYS */;
/*!40000 ALTER TABLE `kardex` ENABLE KEYS */;

-- Volcando estructura para tabla u107806033_tool.kardex_repuestos
CREATE TABLE IF NOT EXISTS `kardex_repuestos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_repuesto` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `cantidad` varchar(45) DEFAULT NULL,
  `precio` decimal(10,0) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `total` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_kardex_repuestos_repuesto1_idx` (`id_repuesto`),
  KEY `fk_kardex_repuestos_empleado1_idx` (`id_empleado`),
  CONSTRAINT `fk_kardex_repuestos_empleado1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_kardex_repuestos_repuesto1` FOREIGN KEY (`id_repuesto`) REFERENCES `repuesto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=632 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla u107806033_tool.kardex_repuestos: ~624 rows (aproximadamente)
/*!40000 ALTER TABLE `kardex_repuestos` DISABLE KEYS */;
INSERT INTO `kardex_repuestos` (`id`, `id_repuesto`, `id_empleado`, `fecha`, `cantidad`, `precio`, `tipo`, `total`) VALUES
	(1, 7, 6, '2018-12-20 15:19:04', '1', 30000, 'ENTRADA', '1'),
	(2, 7, 6, '2018-12-20 15:22:24', '1', 30000, 'SALIDA', '0'),
	(3, 8, 6, '2018-12-20 17:18:50', '20', 100000, 'ENTRADA', '20'),
	(4, 9, 6, '2018-12-20 17:26:16', '6', 43800, 'ENTRADA', '6'),
	(5, 9, 6, '2018-12-20 17:27:00', '0', 0, 'SALIDA', '6'),
	(6, 10, 6, '2018-12-21 17:24:32', '1', 9900, 'ENTRADA', '1'),
	(7, 11, 6, '2018-12-21 17:28:02', '1', 104000, 'ENTRADA', '1'),
	(8, 12, 6, '2018-12-21 17:32:37', '1', 16200, 'ENTRADA', '1'),
	(9, 13, 6, '2018-12-21 17:35:09', '1', 4000, 'ENTRADA', '1'),
	(10, 14, 6, '2018-12-21 19:26:00', '1', 7200, 'ENTRADA', '1'),
	(11, 15, 7, '2018-12-21 20:34:27', '1', 9000, 'ENTRADA', '1'),
	(12, 9, 1, '2018-12-22 22:17:55', '0', 0, 'SALIDA', '6'),
	(13, 16, 7, '2018-12-24 14:41:27', '10', 10, 'ENTRADA', '10'),
	(14, 17, 7, '2018-12-24 14:46:17', '6', 6, 'ENTRADA', '6'),
	(15, 17, 6, '2018-12-24 14:50:51', '0', 0, 'SALIDA', '6'),
	(16, 17, 6, '2018-12-24 14:51:00', '0', 0, 'SALIDA', '6'),
	(17, 18, 7, '2018-12-24 15:04:40', '5', 5, 'ENTRADA', '5'),
	(18, 19, 7, '2018-12-24 15:06:17', '5', 5, 'ENTRADA', '5'),
	(19, 20, 7, '2018-12-24 15:07:24', '5', 5, 'ENTRADA', '5'),
	(20, 21, 7, '2018-12-24 15:08:28', '5', 5, 'ENTRADA', '5'),
	(21, 20, 7, '2018-12-24 15:08:46', '0', 0, 'SALIDA', '5'),
	(22, 22, 7, '2018-12-24 15:10:55', '5', 5, 'ENTRADA', '5'),
	(23, 23, 7, '2018-12-24 15:12:07', '17', 17, 'ENTRADA', '17'),
	(24, 24, 7, '2018-12-24 15:13:41', '5', 5, 'ENTRADA', '5'),
	(25, 25, 7, '2018-12-24 15:19:46', '5', 5, 'ENTRADA', '5'),
	(26, 21, 7, '2018-12-24 16:19:31', '0', 0, 'SALIDA', '5'),
	(27, 22, 7, '2018-12-24 16:20:12', '0', 0, 'SALIDA', '5'),
	(28, 26, 7, '2018-12-24 16:41:14', '5', 65400, 'ENTRADA', '5'),
	(29, 27, 7, '2018-12-24 16:45:43', '5', 54000, 'ENTRADA', '5'),
	(30, 17, 7, '2018-12-24 16:46:55', '0', 0, 'SALIDA', '6'),
	(31, 28, 7, '2018-12-24 17:06:26', '4', 30000, 'ENTRADA', '4'),
	(32, 29, 7, '2018-12-24 17:09:38', '5', 39000, 'ENTRADA', '5'),
	(33, 30, 7, '2018-12-24 17:32:55', '5', 142000, 'ENTRADA', '5'),
	(34, 31, 7, '2018-12-26 20:30:46', '5', 112500, 'ENTRADA', '5'),
	(35, 32, 7, '2018-12-26 20:38:11', '4', 56000, 'ENTRADA', '4'),
	(36, 33, 7, '2018-12-26 20:58:55', '10', 110000, 'ENTRADA', '10'),
	(37, 28, 7, '2018-12-26 21:00:58', '5', 37500, 'ENTRADA', '9'),
	(38, 34, 7, '2018-12-26 21:04:54', '5', 55000, 'ENTRADA', '5'),
	(39, 35, 7, '2018-12-26 21:10:03', '5', 95000, 'ENTRADA', '5'),
	(40, 36, 7, '2018-12-26 21:13:39', '5', 95000, 'ENTRADA', '5'),
	(41, 37, 7, '2018-12-26 21:16:11', '5', 70000, 'ENTRADA', '5'),
	(42, 38, 7, '2018-12-26 21:20:42', '5', 55000, 'ENTRADA', '5'),
	(43, 39, 7, '2018-12-26 21:23:38', '5', 50000, 'ENTRADA', '5'),
	(44, 32, 7, '2018-12-26 21:24:59', '1', 14000, 'ENTRADA', '5'),
	(45, 40, 7, '2018-12-26 21:43:26', '10', 170000, 'ENTRADA', '10'),
	(46, 41, 7, '2018-12-26 21:45:45', '10', 110000, 'ENTRADA', '10'),
	(47, 42, 7, '2018-12-26 21:48:58', '10', 115000, 'ENTRADA', '10'),
	(48, 43, 7, '2018-12-26 21:51:37', '10', 40000, 'ENTRADA', '10'),
	(49, 44, 7, '2018-12-26 21:53:44', '10', 20000, 'ENTRADA', '10'),
	(50, 45, 7, '2018-12-26 21:55:59', '10', 100000, 'ENTRADA', '10'),
	(51, 46, 7, '2018-12-26 21:58:16', '10', 20000, 'ENTRADA', '10'),
	(52, 47, 7, '2018-12-26 22:00:13', '10', 70000, 'ENTRADA', '10'),
	(53, 48, 7, '2018-12-26 22:02:07', '10', 120000, 'ENTRADA', '10'),
	(54, 49, 7, '2018-12-26 22:04:53', '20', 220000, 'ENTRADA', '20'),
	(55, 42, 7, '2018-12-26 22:06:15', '10', 115000, 'ENTRADA', '20'),
	(56, 44, 7, '2018-12-26 22:09:21', '10', 20000, 'ENTRADA', '20'),
	(57, 50, 7, '2018-12-26 22:14:18', '20', 100000, 'ENTRADA', '20'),
	(58, 51, 7, '2018-12-26 22:16:15', '20', 180000, 'ENTRADA', '20'),
	(59, 52, 7, '2018-12-28 14:48:53', '10', 60000, 'ENTRADA', '10'),
	(60, 53, 7, '2018-12-28 14:59:40', '10', 70000, 'ENTRADA', '10'),
	(61, 54, 7, '2018-12-28 15:26:57', '10', 85000, 'ENTRADA', '10'),
	(62, 55, 7, '2018-12-28 15:29:30', '10', 105000, 'ENTRADA', '10'),
	(63, 56, 7, '2018-12-28 15:34:40', '10', 20000, 'ENTRADA', '10'),
	(64, 57, 7, '2018-12-28 15:39:33', '10', 50000, 'ENTRADA', '10'),
	(65, 58, 7, '2018-12-28 15:59:55', '10', 100000, 'ENTRADA', '10'),
	(66, 59, 7, '2018-12-28 16:02:36', '10', 35000, 'ENTRADA', '10'),
	(67, 60, 7, '2018-12-28 16:05:09', '10', 95000, 'ENTRADA', '10'),
	(68, 60, 7, '2018-12-28 16:09:09', '8', 76000, 'ENTRADA', '18'),
	(69, 52, 7, '2018-12-28 16:10:56', '10', 60000, 'ENTRADA', '20'),
	(70, 61, 7, '2018-12-28 16:14:40', '5', 5000, 'ENTRADA', '5'),
	(71, 52, 7, '2018-12-28 16:16:33', '0', 0, 'SALIDA', '20'),
	(72, 53, 7, '2018-12-28 16:18:39', '20', 140000, 'ENTRADA', '30'),
	(73, 46, 7, '2018-12-28 16:19:58', '10', 20000, 'ENTRADA', '20'),
	(74, 62, 7, '2018-12-28 16:23:10', '10', 50000, 'ENTRADA', '10'),
	(75, 63, 7, '2018-12-28 16:37:11', '5', 410000, 'ENTRADA', '5'),
	(76, 64, 7, '2018-12-28 17:06:33', '5', 60000, 'ENTRADA', '5'),
	(77, 65, 7, '2018-12-28 17:14:41', '5', 15000, 'ENTRADA', '5'),
	(78, 66, 7, '2018-12-28 17:18:26', '10', 250000, 'ENTRADA', '10'),
	(79, 67, 7, '2018-12-28 17:22:29', '5', 110000, 'ENTRADA', '5'),
	(80, 68, 7, '2018-12-28 17:25:44', '5', 7500, 'ENTRADA', '5'),
	(81, 69, 7, '2018-12-28 17:30:05', '5', 0, 'ENTRADA', '5'),
	(82, 70, 7, '2018-12-28 17:32:24', '5', 150000, 'ENTRADA', '5'),
	(83, 71, 7, '2018-12-28 17:40:55', '5', 65000, 'ENTRADA', '5'),
	(84, 72, 7, '2018-12-28 17:43:16', '5', 15000, 'ENTRADA', '5'),
	(85, 73, 7, '2018-12-28 17:58:21', '5', 15000, 'ENTRADA', '5'),
	(86, 74, 7, '2018-12-28 18:01:04', '5', 37500, 'ENTRADA', '5'),
	(87, 75, 7, '2018-12-28 18:04:04', '5', 0, 'ENTRADA', '5'),
	(88, 76, 7, '2018-12-28 18:08:24', '5', 4500, 'ENTRADA', '5'),
	(89, 77, 7, '2018-12-28 18:10:44', '5', 2000, 'ENTRADA', '5'),
	(90, 78, 7, '2018-12-28 18:13:45', '5', 35000, 'ENTRADA', '5'),
	(91, 79, 7, '2018-12-28 18:17:11', '5', 25000, 'ENTRADA', '5'),
	(92, 80, 7, '2018-12-28 18:20:17', '5', 7500, 'ENTRADA', '5'),
	(93, 81, 7, '2018-12-28 18:48:34', '5', 2500, 'ENTRADA', '5'),
	(94, 82, 7, '2018-12-28 18:50:54', '5', 70000, 'ENTRADA', '5'),
	(95, 83, 7, '2018-12-28 18:55:15', '5', 0, 'ENTRADA', '5'),
	(96, 84, 7, '2018-12-28 18:58:04', '5', 82500, 'ENTRADA', '5'),
	(97, 85, 7, '2018-12-28 19:03:37', '5', 20000, 'ENTRADA', '5'),
	(98, 86, 7, '2018-12-28 19:05:54', '5', 20000, 'ENTRADA', '5'),
	(99, 87, 7, '2018-12-28 19:09:08', '5', 2500, 'ENTRADA', '5'),
	(100, 88, 7, '2018-12-28 19:14:51', '5', 15000, 'ENTRADA', '5'),
	(101, 89, 7, '2018-12-28 19:17:49', '5', 7500, 'ENTRADA', '5'),
	(102, 90, 7, '2018-12-28 19:36:27', '5', 0, 'ENTRADA', '5'),
	(103, 91, 7, '2018-12-28 19:55:08', '5', 0, 'ENTRADA', '5'),
	(104, 92, 7, '2018-12-28 19:58:15', '5', 2000, 'ENTRADA', '5'),
	(105, 93, 7, '2018-12-28 20:03:04', '5', 1000, 'ENTRADA', '5'),
	(106, 93, 7, '2018-12-28 20:03:36', '5', 1000, 'ENTRADA', '10'),
	(107, 94, 7, '2018-12-28 20:07:34', '5', 4500, 'ENTRADA', '5'),
	(108, 95, 7, '2018-12-28 20:11:42', '5', 7500, 'ENTRADA', '5'),
	(109, 96, 7, '2018-12-28 20:13:59', '5', 1250, 'ENTRADA', '5'),
	(110, 97, 7, '2018-12-28 20:16:31', '5', 1250, 'ENTRADA', '5'),
	(111, 9, 7, '2018-12-28 20:18:44', '0', 0, 'SALIDA', '6'),
	(112, 98, 7, '2018-12-28 20:21:22', '2', 3000, 'ENTRADA', '2'),
	(113, 99, 7, '2018-12-28 20:22:29', '1', 600, 'ENTRADA', '1'),
	(114, 100, 7, '2018-12-28 20:23:51', '2', 1400, 'ENTRADA', '2'),
	(115, 101, 7, '2018-12-28 20:24:47', '2', 3400, 'ENTRADA', '2'),
	(116, 102, 7, '2018-12-28 20:26:04', '2', 6200, 'ENTRADA', '2'),
	(117, 103, 7, '2018-12-28 20:28:04', '2', 1400, 'ENTRADA', '2'),
	(118, 104, 7, '2018-12-28 20:29:52', '5', 65000, 'ENTRADA', '5'),
	(119, 105, 7, '2018-12-28 20:31:15', '2', 70000, 'ENTRADA', '2'),
	(120, 106, 7, '2018-12-28 20:36:28', '2', 336000, 'ENTRADA', '2'),
	(121, 107, 7, '2018-12-28 20:52:52', '5', 335000, 'ENTRADA', '5'),
	(122, 108, 7, '2018-12-28 20:56:22', '5', 215000, 'ENTRADA', '5'),
	(123, 109, 7, '2018-12-28 20:58:56', '5', 210000, 'ENTRADA', '5'),
	(124, 110, 7, '2018-12-28 21:02:11', '5', 320000, 'ENTRADA', '5'),
	(125, 111, 7, '2018-12-28 21:05:11', '5', 150000, 'ENTRADA', '5'),
	(126, 112, 7, '2018-12-28 21:06:42', '2', 238000, 'ENTRADA', '2'),
	(127, 113, 7, '2018-12-28 22:16:46', '5', 415000, 'ENTRADA', '5'),
	(128, 115, 7, '2018-12-28 22:18:24', '5', 295000, 'ENTRADA', '5'),
	(129, 112, 7, '2018-12-28 22:19:53', '3', 357000, 'ENTRADA', '5'),
	(130, 116, 7, '2018-12-28 22:21:14', '5', 930000, 'ENTRADA', '5'),
	(131, 111, 7, '2018-12-28 22:22:16', '5', 150000, 'ENTRADA', '10'),
	(132, 117, 7, '2018-12-28 22:23:33', '5', 0, 'ENTRADA', '5'),
	(133, 118, 7, '2018-12-28 22:26:10', '4', 174000, 'ENTRADA', '4'),
	(134, 119, 7, '2018-12-28 22:27:30', '5', 890000, 'ENTRADA', '5'),
	(135, 120, 7, '2018-12-28 22:29:14', '5', 215000, 'ENTRADA', '5'),
	(136, 121, 7, '2018-12-28 22:30:17', '5', 375000, 'ENTRADA', '5'),
	(137, 122, 7, '2018-12-28 22:31:30', '5', 317500, 'ENTRADA', '5'),
	(138, 123, 7, '2018-12-28 22:36:25', '5', 500000, 'ENTRADA', '5'),
	(139, 124, 7, '2018-12-28 22:39:22', '4', 100000, 'ENTRADA', '4'),
	(140, 125, 7, '2018-12-28 22:41:40', '5', 45000, 'ENTRADA', '5'),
	(141, 126, 7, '2018-12-28 22:45:07', '5', 110000, 'ENTRADA', '5'),
	(142, 127, 7, '2018-12-28 22:47:56', '5', 1500, 'ENTRADA', '5'),
	(143, 128, 7, '2018-12-28 22:50:21', '5', 20000, 'ENTRADA', '5'),
	(144, 129, 7, '2018-12-28 22:52:49', '5', 10000, 'ENTRADA', '5'),
	(145, 130, 7, '2018-12-28 22:54:49', '5', 5000, 'ENTRADA', '5'),
	(146, 131, 7, '2018-12-28 22:57:13', '5', 35000, 'ENTRADA', '5'),
	(147, 132, 7, '2018-12-28 22:59:54', '5', 52500, 'ENTRADA', '5'),
	(148, 133, 7, '2018-12-28 23:02:52', '5', 10000, 'ENTRADA', '5'),
	(149, 134, 7, '2018-12-28 23:04:46', '5', 1000, 'ENTRADA', '5'),
	(150, 135, 7, '2018-12-28 23:07:01', '5', 5000, 'ENTRADA', '5'),
	(151, 136, 7, '2018-12-28 23:08:54', '5', 27500, 'ENTRADA', '5'),
	(152, 137, 7, '2018-12-28 23:11:05', '5', 12500, 'ENTRADA', '5'),
	(153, 118, 7, '2018-12-29 13:37:46', '1', 43500, 'ENTRADA', '5'),
	(154, 138, 7, '2018-12-29 13:41:37', '5', 425000, 'ENTRADA', '5'),
	(155, 139, 7, '2018-12-29 13:44:01', '5', 20000, 'ENTRADA', '5'),
	(156, 140, 7, '2018-12-29 13:45:55', '5', 180000, 'ENTRADA', '5'),
	(157, 141, 7, '2018-12-29 13:47:34', '5', 207500, 'ENTRADA', '5'),
	(158, 142, 7, '2019-01-04 17:52:43', '1', 500, 'ENTRADA', '1'),
	(159, 143, 7, '2019-01-04 17:54:22', '1', 500, 'ENTRADA', '1'),
	(160, 144, 7, '2019-01-04 17:58:11', '1', 2500, 'ENTRADA', '1'),
	(161, 143, 7, '2019-01-08 15:05:53', '1', 500, 'SALIDA', '0'),
	(162, 142, 7, '2019-01-08 15:05:53', '1', 500, 'SALIDA', '0'),
	(163, 144, 7, '2019-01-08 15:05:53', '1', 2500, 'SALIDA', '0'),
	(164, 13, 7, '2019-01-09 17:16:19', '1', 4000, 'SALIDA', '0'),
	(165, 11, 7, '2019-01-09 17:16:19', '1', 104000, 'SALIDA', '0'),
	(166, 10, 7, '2019-01-09 17:16:19', '1', 9900, 'SALIDA', '0'),
	(167, 12, 7, '2019-01-09 17:16:19', '1', 16200, 'SALIDA', '0'),
	(168, 14, 7, '2019-01-09 17:16:19', '1', 7200, 'SALIDA', '0'),
	(169, 145, 6, '2019-01-18 15:51:25', '1', 0, 'ENTRADA', '1'),
	(170, 145, 6, '2019-01-18 15:53:13', '1', 0, 'SALIDA', '0'),
	(171, 146, 6, '2019-01-18 18:35:29', '1', 204400, 'ENTRADA', '1'),
	(172, 10, 6, '2019-01-18 18:38:06', '1', 10800, 'ENTRADA', '1'),
	(173, 28, 6, '2019-01-23 14:10:01', '1', 7500, 'SALIDA', '8'),
	(174, 147, 6, '2019-01-23 15:33:15', '0', 0, 'ENTRADA', '0'),
	(175, 147, 6, '2019-01-23 15:35:10', '0', 0, 'SALIDA', '0'),
	(176, 149, 6, '2019-01-23 15:38:03', '0', 0, 'ENTRADA', '0'),
	(177, 150, 6, '2019-01-23 15:39:11', '0', 0, 'ENTRADA', '0'),
	(178, 151, 6, '2019-01-23 15:42:34', '0', 0, 'ENTRADA', '0'),
	(179, 152, 6, '2019-01-23 15:51:20', '0', 0, 'ENTRADA', '0'),
	(180, 153, 6, '2019-01-23 15:52:10', '0', 0, 'ENTRADA', '0'),
	(181, 154, 6, '2019-01-23 15:53:00', '0', 0, 'ENTRADA', '0'),
	(182, 155, 6, '2019-01-23 15:53:44', '0', 0, 'ENTRADA', '0'),
	(183, 156, 6, '2019-01-23 15:56:36', '0', 0, 'ENTRADA', '0'),
	(184, 157, 6, '2019-01-28 19:52:50', '0', 0, 'ENTRADA', '0'),
	(185, 158, 6, '2019-01-28 20:28:50', '0', 0, 'ENTRADA', '0'),
	(186, 159, 6, '2019-01-28 20:34:11', '2', 28000, 'ENTRADA', '2'),
	(187, 160, 6, '2019-01-28 20:47:33', '0', 0, 'ENTRADA', '0'),
	(188, 161, 6, '2019-01-28 20:53:46', '0', 0, 'ENTRADA', '0'),
	(189, 162, 6, '2019-01-28 20:56:41', '0', 0, 'ENTRADA', '0'),
	(190, 163, 6, '2019-01-28 21:04:21', '0', 0, 'ENTRADA', '0'),
	(191, 164, 6, '2019-01-28 21:05:42', '0', 0, 'ENTRADA', '0'),
	(192, 165, 6, '2019-01-28 21:12:42', '0', 0, 'ENTRADA', '0'),
	(193, 166, 6, '2019-01-28 21:21:17', '0', 0, 'ENTRADA', '0'),
	(194, 167, 6, '2019-01-28 21:22:23', '0', 0, 'ENTRADA', '0'),
	(195, 168, 6, '2019-01-28 21:23:32', '0', 0, 'ENTRADA', '0'),
	(196, 169, 6, '2019-01-28 21:24:35', '0', 0, 'ENTRADA', '0'),
	(197, 170, 6, '2019-01-28 21:28:13', '0', 0, 'ENTRADA', '0'),
	(198, 165, 6, '2019-01-28 21:46:58', '0', 0, 'SALIDA', '0'),
	(199, 171, 6, '2019-01-28 21:49:09', '0', 0, 'ENTRADA', '0'),
	(200, 172, 6, '2019-01-28 21:54:53', '0', 0, 'ENTRADA', '0'),
	(201, 173, 6, '2019-01-28 21:55:46', '0', 0, 'ENTRADA', '0'),
	(202, 174, 6, '2019-01-28 21:56:47', '0', 0, 'ENTRADA', '0'),
	(203, 175, 6, '2019-01-28 22:00:03', '0', 0, 'ENTRADA', '0'),
	(204, 169, 6, '2019-01-28 22:13:36', '0', 0, 'SALIDA', '0'),
	(205, 176, 6, '2019-01-28 22:53:34', '0', 0, 'ENTRADA', '0'),
	(206, 177, 6, '2019-01-28 22:54:40', '0', 0, 'ENTRADA', '0'),
	(207, 178, 6, '2019-01-28 22:55:28', '0', 0, 'ENTRADA', '0'),
	(208, 179, 6, '2019-01-28 23:55:59', '0', 0, 'ENTRADA', '0'),
	(209, 180, 6, '2019-01-29 02:07:54', '0', 0, 'ENTRADA', '0'),
	(210, 181, 6, '2019-01-29 02:23:18', '0', 0, 'ENTRADA', '0'),
	(211, 106, 6, '2019-01-29 23:01:58', '0', 0, 'SALIDA', '2'),
	(212, 184, 6, '2019-01-29 23:03:10', '0', 0, 'ENTRADA', '0'),
	(213, 185, 6, '2019-01-29 23:04:14', '0', 0, 'ENTRADA', '0'),
	(214, 186, 6, '2019-01-29 23:07:39', '0', 0, 'ENTRADA', '0'),
	(215, 187, 6, '2019-01-29 23:28:12', '0', 0, 'ENTRADA', '0'),
	(216, 188, 6, '2019-01-29 23:29:02', '0', 0, 'ENTRADA', '0'),
	(217, 189, 6, '2019-01-29 23:30:00', '0', 0, 'ENTRADA', '0'),
	(218, 188, 6, '2019-01-29 23:44:15', '0', 0, 'SALIDA', '0'),
	(219, 190, 6, '2019-01-31 17:22:02', '0', 0, 'ENTRADA', '0'),
	(220, 191, 6, '2019-01-31 17:25:41', '0', 0, 'ENTRADA', '0'),
	(221, 192, 6, '2019-01-31 17:28:15', '0', 0, 'ENTRADA', '0'),
	(222, 193, 6, '2019-01-31 17:31:50', '1', 169300, 'ENTRADA', '1'),
	(223, 106, 6, '2019-01-31 17:39:23', '0', 0, 'SALIDA', '2'),
	(224, 194, 6, '2019-01-31 18:12:52', '0', 0, 'ENTRADA', '0'),
	(225, 195, 6, '2019-01-31 18:24:17', '0', 0, 'ENTRADA', '0'),
	(226, 196, 6, '2019-01-31 18:33:57', '0', 0, 'ENTRADA', '0'),
	(227, 197, 6, '2019-01-31 20:45:43', '0', 0, 'ENTRADA', '0'),
	(228, 198, 7, '2019-02-05 16:52:42', '0', 0, 'ENTRADA', '0'),
	(229, 199, 6, '2019-02-05 23:05:31', '0', 0, 'ENTRADA', '0'),
	(230, 104, 7, '2019-02-07 15:17:20', '0', 0, 'SALIDA', '5'),
	(231, 200, 7, '2019-02-07 15:30:20', '2', 118000, 'ENTRADA', '2'),
	(232, 200, 7, '2019-02-07 15:30:46', '0', 0, 'SALIDA', '2'),
	(233, 201, 7, '2019-02-07 15:31:23', '2', 5000, 'ENTRADA', '2'),
	(234, 202, 7, '2019-02-07 15:31:50', '2', 5000, 'ENTRADA', '2'),
	(235, 203, 7, '2019-02-07 15:32:22', '2', 13000, 'ENTRADA', '2'),
	(236, 204, 7, '2019-02-07 15:34:07', '2', 170000, 'ENTRADA', '2'),
	(237, 198, 7, '2019-02-08 16:57:28', '1', 6000, 'ENTRADA', '1'),
	(238, 198, 7, '2019-02-08 16:59:42', '1', 6000, 'ENTRADA', '2'),
	(239, 198, 7, '2019-02-08 17:00:31', '1', 6000, 'SALIDA', '1'),
	(240, 198, 7, '2019-02-08 17:01:41', '1', 6000, 'SALIDA', '0'),
	(241, 205, 6, '2019-02-08 18:09:55', '0', 0, 'ENTRADA', '0'),
	(242, 206, 6, '2019-02-08 18:11:29', '0', 0, 'ENTRADA', '0'),
	(243, 207, 6, '2019-02-08 21:54:36', '0', 0, 'ENTRADA', '0'),
	(244, 208, 6, '2019-02-08 21:55:25', '0', 0, 'ENTRADA', '0'),
	(245, 209, 6, '2019-02-08 21:56:13', '0', 0, 'ENTRADA', '0'),
	(246, 210, 6, '2019-02-08 21:57:38', '0', 0, 'ENTRADA', '0'),
	(247, 211, 6, '2019-02-08 21:58:27', '0', 0, 'ENTRADA', '0'),
	(248, 212, 6, '2019-02-08 21:59:12', '0', 0, 'ENTRADA', '0'),
	(249, 213, 6, '2019-02-08 22:00:23', '0', 0, 'ENTRADA', '0'),
	(250, 214, 6, '2019-02-09 18:52:16', '0', 0, 'ENTRADA', '0'),
	(251, 215, 6, '2019-02-09 18:53:12', '0', 0, 'ENTRADA', '0'),
	(252, 26, 9, '2019-02-13 15:41:07', '0', 0, 'SALIDA', '5'),
	(253, 26, 9, '2019-02-13 15:41:41', '0', 0, 'SALIDA', '5'),
	(254, 186, 7, '2019-02-14 20:19:50', '1', 6300, 'ENTRADA', '1'),
	(255, 186, 7, '2019-02-14 20:20:11', '0', 0, 'SALIDA', '1'),
	(256, 186, 7, '2019-02-14 20:46:57', '1', 6300, 'SALIDA', '0'),
	(257, 104, 7, '2019-02-14 20:46:57', '1', 11600, 'SALIDA', '4'),
	(258, 186, 7, '2019-02-14 20:49:41', '1', 6300, 'ENTRADA', '1'),
	(259, 104, 7, '2019-02-14 20:49:54', '1', 11600, 'SALIDA', '3'),
	(260, 204, 7, '2019-02-14 20:49:54', '1', 85000, 'SALIDA', '1'),
	(261, 186, 7, '2019-02-14 20:49:54', '1', 6300, 'SALIDA', '0'),
	(262, 200, 7, '2019-02-14 20:51:38', '1', 59000, 'SALIDA', '1'),
	(263, 201, 7, '2019-02-14 20:51:38', '1', 2500, 'SALIDA', '1'),
	(264, 203, 7, '2019-02-14 20:51:38', '1', 6500, 'SALIDA', '1'),
	(265, 157, 7, '2019-02-14 21:02:54', '1', 199990, 'ENTRADA', '1'),
	(266, 157, 7, '2019-02-14 21:03:43', '1', 199990, 'SALIDA', '0'),
	(267, 9, 6, '2019-02-16 15:19:37', '0', 0, 'SALIDA', '6'),
	(268, 186, 6, '2019-02-16 16:17:45', '6', 37800, 'ENTRADA', '6'),
	(269, 194, 6, '2019-02-16 16:18:06', '3', 40500, 'ENTRADA', '3'),
	(270, 186, 6, '2019-02-16 16:18:18', '1', 6300, 'SALIDA', '5'),
	(271, 106, 6, '2019-02-16 16:18:18', '1', 148300, 'SALIDA', '1'),
	(272, 194, 6, '2019-02-16 16:18:18', '1', 13500, 'SALIDA', '2'),
	(273, 186, 6, '2019-02-16 16:25:25', '1', 6300, 'SALIDA', '4'),
	(274, 186, 6, '2019-02-16 16:25:25', '1', 6300, 'SALIDA', '3'),
	(275, 9, 6, '2019-02-16 16:25:25', '2', 14600, 'SALIDA', '4'),
	(276, 216, 9, '2019-02-18 21:58:28', '0', 0, 'ENTRADA', '0'),
	(277, 217, 7, '2019-02-18 22:05:30', '0', 0, 'ENTRADA', '0'),
	(278, 216, 6, '2019-02-19 20:55:40', '2', 23000, 'ENTRADA', '2'),
	(279, 217, 6, '2019-02-19 20:57:50', '2', 93278, 'ENTRADA', '2'),
	(280, 216, 6, '2019-02-19 20:58:22', '1', 11500, 'SALIDA', '1'),
	(281, 217, 6, '2019-02-19 20:58:22', '1', 46639, 'SALIDA', '1'),
	(282, 216, 6, '2019-02-19 20:58:36', '1', 11500, 'SALIDA', '0'),
	(283, 217, 6, '2019-02-19 20:58:36', '1', 46639, 'SALIDA', '0'),
	(284, 218, 6, '2019-02-20 22:28:00', '0', 0, 'ENTRADA', '0'),
	(285, 219, 6, '2019-02-20 22:35:06', '0', 0, 'ENTRADA', '0'),
	(286, 219, 6, '2019-02-20 22:46:15', '0', 0, 'SALIDA', '0'),
	(287, 219, 6, '2019-02-21 13:30:38', '1', 129000, 'ENTRADA', '1'),
	(288, 219, 6, '2019-02-21 13:33:02', '0', 0, 'SALIDA', '1'),
	(289, 222, 9, '2019-02-22 22:16:20', '0', 0, 'ENTRADA', '0'),
	(290, 223, 9, '2019-02-22 22:20:15', '0', 0, 'ENTRADA', '0'),
	(291, 224, 9, '2019-02-22 22:21:19', '0', 0, 'ENTRADA', '0'),
	(292, 225, 9, '2019-02-22 22:22:18', '0', 0, 'ENTRADA', '0'),
	(293, 226, 9, '2019-02-22 22:23:29', '0', 0, 'ENTRADA', '0'),
	(294, 227, 9, '2019-02-22 22:24:29', '0', 0, 'ENTRADA', '0'),
	(295, 230, 9, '2019-02-22 22:30:29', '0', 0, 'ENTRADA', '0'),
	(296, 124, 6, '2019-02-22 22:43:43', '1', 25000, 'SALIDA', '3'),
	(297, 231, 9, '2019-02-26 14:45:30', '0', 0, 'ENTRADA', '0'),
	(298, 233, 6, '2019-02-28 21:21:04', '0', 0, 'ENTRADA', '0'),
	(299, 234, 6, '2019-02-28 21:26:02', '0', 0, 'ENTRADA', '0'),
	(300, 235, 6, '2019-02-28 21:28:00', '0', 0, 'ENTRADA', '0'),
	(301, 236, 9, '2019-03-01 20:49:33', '0', 0, 'ENTRADA', '0'),
	(302, 237, 6, '2019-03-08 21:24:42', '0', 0, 'ENTRADA', '0'),
	(303, 238, 6, '2019-03-08 21:27:15', '0', 0, 'ENTRADA', '0'),
	(304, 239, 6, '2019-03-11 22:30:59', '1', 23500, 'ENTRADA', '1'),
	(305, 239, 6, '2019-03-11 22:34:10', '1', 23500, 'SALIDA', '0'),
	(306, 124, 6, '2019-03-11 22:36:05', '1', 25000, 'SALIDA', '2'),
	(307, 239, 6, '2019-03-11 22:38:21', '1', 23500, 'ENTRADA', '1'),
	(308, 239, 6, '2019-03-11 22:38:53', '1', 23500, 'SALIDA', '0'),
	(309, 240, 9, '2019-03-11 23:47:51', '0', 0, 'ENTRADA', '0'),
	(310, 241, 9, '2019-03-11 23:49:35', '0', 0, 'ENTRADA', '0'),
	(311, 243, 9, '2019-03-11 23:54:37', '0', 0, 'ENTRADA', '0'),
	(312, 245, 9, '2019-03-11 23:58:08', '0', 0, 'ENTRADA', '0'),
	(313, 246, 9, '2019-03-13 15:23:11', '0', 0, 'ENTRADA', '0'),
	(314, 243, 9, '2019-03-13 15:26:28', '0', 0, 'SALIDA', '0'),
	(315, 247, 9, '2019-03-13 15:34:08', '0', 0, 'ENTRADA', '0'),
	(316, 248, 9, '2019-03-13 15:37:30', '0', 0, 'ENTRADA', '0'),
	(317, 249, 9, '2019-03-13 15:41:06', '0', 0, 'ENTRADA', '0'),
	(318, 250, 9, '2019-03-13 15:45:15', '0', 0, 'ENTRADA', '0'),
	(319, 251, 9, '2019-03-13 15:51:09', '0', 0, 'ENTRADA', '0'),
	(320, 252, 9, '2019-03-13 18:48:09', '0', 0, 'ENTRADA', '0'),
	(321, 252, 9, '2019-03-13 19:44:11', '0', 0, 'SALIDA', '0'),
	(322, 252, 9, '2019-03-13 20:59:14', '0', 0, 'SALIDA', '0'),
	(323, 253, 7, '2019-03-21 13:27:26', '1', 5500, 'ENTRADA', '1'),
	(324, 241, 7, '2019-03-21 13:35:13', '1', 1000, 'ENTRADA', '1'),
	(325, 245, 7, '2019-03-21 13:38:25', '1', 200, 'ENTRADA', '1'),
	(326, 243, 7, '2019-03-21 13:39:28', '1', 600, 'ENTRADA', '1'),
	(327, 241, 7, '2019-03-21 13:39:49', '1', 1000, 'SALIDA', '0'),
	(328, 245, 7, '2019-03-21 13:39:49', '1', 200, 'SALIDA', '0'),
	(329, 243, 7, '2019-03-21 13:39:50', '1', 600, 'SALIDA', '0'),
	(330, 253, 7, '2019-03-21 13:39:50', '1', 5500, 'SALIDA', '0'),
	(331, 216, 7, '2019-03-27 14:49:33', '1', 11500, 'ENTRADA', '1'),
	(332, 216, 7, '2019-03-27 14:50:00', '1', 11500, 'SALIDA', '0'),
	(333, 255, 6, '2019-03-27 19:30:07', '0', 0, 'ENTRADA', '0'),
	(334, 256, 6, '2019-03-27 19:33:49', '0', 0, 'ENTRADA', '0'),
	(335, 256, 6, '2019-03-27 19:39:48', '0', 0, 'SALIDA', '0'),
	(336, 255, 6, '2019-03-27 20:06:50', '0', 0, 'SALIDA', '0'),
	(337, 256, 6, '2019-03-29 13:37:24', '0', 0, 'SALIDA', '0'),
	(338, 255, 6, '2019-03-29 13:38:11', '0', 0, 'SALIDA', '0'),
	(339, 258, 6, '2019-03-29 22:08:43', '0', 0, 'ENTRADA', '0'),
	(340, 259, 6, '2019-03-29 22:11:22', '0', 0, 'ENTRADA', '0'),
	(341, 260, 6, '2019-03-29 22:13:21', '0', 0, 'ENTRADA', '0'),
	(342, 14, 7, '2019-03-29 23:40:37', '1', 7200, 'ENTRADA', '1'),
	(343, 194, 7, '2019-03-29 23:41:26', '1', 13500, 'SALIDA', '1'),
	(344, 14, 7, '2019-03-29 23:41:26', '1', 7200, 'SALIDA', '0'),
	(345, 106, 7, '2019-03-29 23:41:26', '1', 148300, 'SALIDA', '0'),
	(346, 261, 9, '2019-03-30 16:41:57', '0', 0, 'ENTRADA', '0'),
	(347, 262, 9, '2019-03-30 17:07:37', '0', 0, 'ENTRADA', '0'),
	(348, 263, 9, '2019-03-30 17:20:10', '1', 159000, 'ENTRADA', '1'),
	(349, 264, 9, '2019-03-30 17:23:16', '0', 0, 'ENTRADA', '0'),
	(350, 265, 9, '2019-03-30 17:24:41', '0', 0, 'ENTRADA', '0'),
	(351, 218, 6, '2019-03-30 19:21:51', '0', 0, 'SALIDA', '0'),
	(352, 189, 6, '2019-03-30 19:25:01', '1', 15000, 'ENTRADA', '1'),
	(353, 218, 6, '2019-03-30 19:25:45', '1', 30000, 'ENTRADA', '1'),
	(354, 218, 6, '2019-03-30 19:25:59', '1', 30000, 'SALIDA', '0'),
	(355, 189, 6, '2019-03-30 19:25:59', '1', 15000, 'SALIDA', '0'),
	(356, 267, 9, '2019-04-01 17:41:06', '0', 0, 'ENTRADA', '0'),
	(357, 268, 9, '2019-04-01 17:47:43', '0', 0, 'ENTRADA', '0'),
	(358, 269, 9, '2019-04-02 16:27:14', '0', 0, 'ENTRADA', '0'),
	(359, 270, 6, '2019-04-02 18:12:33', '0', 0, 'ENTRADA', '0'),
	(360, 271, 6, '2019-04-02 18:14:49', '1', 70100, 'ENTRADA', '1'),
	(361, 271, 6, '2019-04-02 18:16:36', '0', 0, 'SALIDA', '1'),
	(362, 271, 6, '2019-04-02 18:17:22', '0', 0, 'SALIDA', '1'),
	(363, 271, 6, '2019-04-02 18:18:19', '0', 0, 'SALIDA', '1'),
	(364, 271, 6, '2019-04-02 18:19:00', '0', 0, 'SALIDA', '1'),
	(365, 271, 6, '2019-04-02 18:23:54', '0', 0, 'SALIDA', '1'),
	(366, 273, 6, '2019-04-02 18:25:40', '1', 129800, 'ENTRADA', '1'),
	(367, 274, 6, '2019-04-02 18:27:09', '1', 52000, 'ENTRADA', '1'),
	(368, 275, 9, '2019-04-02 18:34:33', '0', 0, 'ENTRADA', '0'),
	(369, 275, 9, '2019-04-02 18:37:06', '0', 0, 'SALIDA', '0'),
	(370, 277, 9, '2019-04-02 18:51:51', '0', 0, 'ENTRADA', '0'),
	(371, 278, 9, '2019-04-02 19:13:17', '0', 0, 'ENTRADA', '0'),
	(372, 279, 9, '2019-04-02 19:14:22', '0', 0, 'ENTRADA', '0'),
	(373, 280, 9, '2019-04-02 19:15:44', '0', 0, 'ENTRADA', '0'),
	(374, 281, 9, '2019-04-02 19:16:58', '0', 0, 'ENTRADA', '0'),
	(375, 14, 7, '2019-04-02 19:50:16', '1', 7200, 'ENTRADA', '1'),
	(376, 223, 7, '2019-04-02 19:50:50', '1', 9700, 'ENTRADA', '1'),
	(377, 14, 7, '2019-04-02 19:51:23', '1', 7200, 'SALIDA', '0'),
	(378, 33, 7, '2019-04-02 19:51:23', '1', 11000, 'SALIDA', '9'),
	(379, 203, 7, '2019-04-02 19:51:23', '1', 6500, 'SALIDA', '0'),
	(380, 224, 7, '2019-04-02 19:51:54', '1', 5700, 'ENTRADA', '1'),
	(381, 225, 7, '2019-04-02 19:52:19', '1', 6500, 'ENTRADA', '1'),
	(382, 226, 7, '2019-04-02 19:52:54', '1', 16303, 'ENTRADA', '1'),
	(384, 227, 7, '2019-04-02 19:53:43', '1', 3529, 'ENTRADA', '1'),
	(385, 230, 7, '2019-04-02 19:54:38', '1', 1400, 'ENTRADA', '1'),
	(386, 222, 7, '2019-04-02 19:55:08', '1', 125800, 'ENTRADA', '1'),
	(387, 223, 9, '2019-04-02 19:55:16', '1', 9700, 'SALIDA', '0'),
	(388, 226, 9, '2019-04-02 19:55:16', '1', 16303, 'SALIDA', '0'),
	(389, 227, 9, '2019-04-02 19:55:16', '1', 3529, 'SALIDA', '0'),
	(390, 225, 9, '2019-04-02 19:55:16', '1', 6500, 'SALIDA', '0'),
	(391, 224, 9, '2019-04-02 19:55:16', '1', 5700, 'SALIDA', '0'),
	(392, 222, 9, '2019-04-02 19:55:17', '1', 125800, 'SALIDA', '0'),
	(393, 230, 9, '2019-04-02 19:55:17', '1', 1400, 'SALIDA', '0'),
	(394, 252, 7, '2019-04-02 19:58:06', '1', 117453, 'ENTRADA', '1'),
	(395, 252, 7, '2019-04-02 19:58:13', '1', 117453, 'SALIDA', '0'),
	(396, 213, 7, '2019-04-02 19:58:47', '1', 1800, 'ENTRADA', '1'),
	(397, 106, 7, '2019-04-02 20:00:26', '1', 148300, 'ENTRADA', '1'),
	(398, 236, 7, '2019-04-02 20:00:57', '1', 6000, 'ENTRADA', '1'),
	(399, 106, 7, '2019-04-02 20:01:01', '1', 148300, 'SALIDA', '0'),
	(400, 236, 7, '2019-04-02 20:01:01', '1', 6000, 'SALIDA', '0'),
	(401, 194, 7, '2019-04-02 20:01:02', '1', 13500, 'SALIDA', '0'),
	(402, 210, 7, '2019-04-02 20:02:02', '1', 1200, 'ENTRADA', '1'),
	(403, 212, 7, '2019-04-02 20:02:33', '1', 1400, 'ENTRADA', '1'),
	(404, 211, 7, '2019-04-02 20:02:54', '1', 800, 'ENTRADA', '1'),
	(405, 209, 7, '2019-04-02 20:03:29', '1', 1400, 'ENTRADA', '1'),
	(406, 208, 7, '2019-04-02 20:03:50', '1', 1300, 'ENTRADA', '1'),
	(407, 207, 7, '2019-04-02 20:04:10', '1', 1700, 'ENTRADA', '1'),
	(408, 206, 7, '2019-04-02 20:04:30', '1', 46000, 'ENTRADA', '1'),
	(409, 205, 7, '2019-04-02 20:04:49', '1', 2500, 'ENTRADA', '1'),
	(410, 213, 9, '2019-04-02 20:04:56', '1', 1800, 'SALIDA', '0'),
	(411, 210, 9, '2019-04-02 20:04:56', '1', 1200, 'SALIDA', '0'),
	(412, 211, 9, '2019-04-02 20:04:56', '1', 800, 'SALIDA', '0'),
	(413, 212, 9, '2019-04-02 20:04:56', '1', 1400, 'SALIDA', '0'),
	(414, 209, 9, '2019-04-02 20:04:56', '1', 1400, 'SALIDA', '0'),
	(415, 208, 9, '2019-04-02 20:04:56', '1', 1300, 'SALIDA', '0'),
	(416, 207, 9, '2019-04-02 20:04:56', '1', 1700, 'SALIDA', '0'),
	(417, 206, 9, '2019-04-02 20:04:56', '1', 46000, 'SALIDA', '0'),
	(418, 205, 9, '2019-04-02 20:04:56', '1', 2500, 'SALIDA', '0'),
	(419, 199, 7, '2019-04-02 20:07:45', '1', 25000, 'ENTRADA', '1'),
	(420, 199, 9, '2019-04-02 20:07:48', '1', 25000, 'SALIDA', '0'),
	(421, 149, 7, '2019-04-02 20:08:22', '1', 72900, 'ENTRADA', '1'),
	(422, 150, 7, '2019-04-02 20:08:38', '1', 55900, 'ENTRADA', '1'),
	(423, 156, 7, '2019-04-02 20:08:58', '1', 1900, 'ENTRADA', '1'),
	(424, 151, 7, '2019-04-02 20:09:17', '1', 23300, 'ENTRADA', '1'),
	(425, 152, 7, '2019-04-02 20:09:34', '1', 55000, 'ENTRADA', '1'),
	(426, 153, 7, '2019-04-02 20:09:50', '1', 4300, 'ENTRADA', '1'),
	(427, 154, 7, '2019-04-02 20:10:10', '1', 14400, 'ENTRADA', '1'),
	(428, 147, 7, '2019-04-02 20:10:30', '1', 49300, 'ENTRADA', '1'),
	(429, 149, 9, '2019-04-02 20:10:36', '1', 72900, 'SALIDA', '0'),
	(430, 156, 9, '2019-04-02 20:10:36', '1', 1900, 'SALIDA', '0'),
	(431, 150, 9, '2019-04-02 20:10:36', '1', 55900, 'SALIDA', '0'),
	(432, 152, 9, '2019-04-02 20:10:36', '1', 55000, 'SALIDA', '0'),
	(433, 151, 9, '2019-04-02 20:10:36', '1', 23300, 'SALIDA', '0'),
	(434, 153, 9, '2019-04-02 20:10:36', '1', 4300, 'SALIDA', '0'),
	(435, 154, 9, '2019-04-02 20:10:37', '1', 14400, 'SALIDA', '0'),
	(436, 147, 9, '2019-04-02 20:10:37', '1', 49300, 'SALIDA', '0'),
	(437, 157, 7, '2019-04-02 20:11:13', '1', 199990, 'ENTRADA', '1'),
	(438, 165, 7, '2019-04-02 20:11:28', '1', 170200, 'ENTRADA', '1'),
	(439, 158, 7, '2019-04-02 20:11:46', '2', 25600, 'ENTRADA', '2'),
	(440, 157, 9, '2019-04-02 20:11:53', '1', 199990, 'SALIDA', '0'),
	(441, 165, 9, '2019-04-02 20:11:54', '1', 170200, 'SALIDA', '0'),
	(442, 158, 9, '2019-04-02 20:11:54', '1', 12800, 'SALIDA', '1'),
	(443, 168, 9, '2019-04-02 20:16:00', '1', 4200, 'ENTRADA', '1'),
	(444, 168, 7, '2019-04-02 20:16:24', '1', 4200, 'ENTRADA', '1'),
	(445, 168, 7, '2019-04-02 20:16:58', '1', 4200, 'ENTRADA', '2'),
	(446, 166, 7, '2019-04-02 20:17:16', '1', 164100, 'ENTRADA', '1'),
	(447, 170, 7, '2019-04-02 20:17:36', '1', 128500, 'ENTRADA', '1'),
	(448, 169, 7, '2019-04-02 20:17:50', '1', 13000, 'ENTRADA', '1'),
	(449, 168, 9, '2019-04-02 20:17:53', '2', 8400, 'SALIDA', '0'),
	(450, 170, 9, '2019-04-02 20:17:53', '1', 128500, 'SALIDA', '0'),
	(451, 169, 9, '2019-04-02 20:17:54', '1', 13000, 'SALIDA', '0'),
	(452, 166, 9, '2019-04-02 20:17:54', '1', 164100, 'SALIDA', '0'),
	(453, 166, 7, '2019-04-02 20:18:16', '0', 0, 'SALIDA', '1'),
	(454, 170, 7, '2019-04-02 20:18:46', '0', 0, 'SALIDA', '1'),
	(455, 168, 7, '2019-04-02 20:18:59', '1', 4200, 'ENTRADA', '1'),
	(456, 169, 7, '2019-04-02 20:19:12', '1', 13000, 'ENTRADA', '1'),
	(457, 173, 7, '2019-04-02 20:19:23', '1', 200, 'ENTRADA', '1'),
	(458, 172, 7, '2019-04-02 20:19:38', '1', 1300, 'ENTRADA', '1'),
	(459, 166, 9, '2019-04-02 20:19:43', '1', 164100, 'SALIDA', '0'),
	(460, 170, 9, '2019-04-02 20:19:43', '1', 128500, 'SALIDA', '0'),
	(461, 169, 9, '2019-04-02 20:19:43', '1', 13000, 'SALIDA', '0'),
	(462, 168, 9, '2019-04-02 20:19:44', '1', 4200, 'SALIDA', '0'),
	(463, 173, 9, '2019-04-02 20:19:44', '1', 200, 'SALIDA', '0'),
	(464, 172, 9, '2019-04-02 20:19:44', '1', 1300, 'SALIDA', '0'),
	(465, 160, 7, '2019-04-02 20:20:21', '1', 11800, 'ENTRADA', '1'),
	(466, 178, 7, '2019-04-02 20:20:34', '1', 1900, 'ENTRADA', '1'),
	(467, 165, 7, '2019-04-02 20:20:49', '1', 170200, 'ENTRADA', '1'),
	(468, 163, 7, '2019-04-02 20:21:03', '1', 11300, 'ENTRADA', '1'),
	(469, 180, 7, '2019-04-02 20:21:19', '1', 8200, 'ENTRADA', '1'),
	(470, 160, 9, '2019-04-02 20:21:22', '1', 11800, 'SALIDA', '0'),
	(471, 178, 9, '2019-04-02 20:21:22', '1', 1900, 'SALIDA', '0'),
	(472, 165, 9, '2019-04-02 20:21:23', '1', 170200, 'SALIDA', '0'),
	(473, 180, 9, '2019-04-02 20:21:23', '1', 8200, 'SALIDA', '0'),
	(474, 158, 9, '2019-04-02 20:21:23', '1', 12800, 'SALIDA', '0'),
	(475, 163, 9, '2019-04-02 20:21:23', '1', 11300, 'SALIDA', '0'),
	(476, 282, 9, '2019-04-02 22:19:49', '0', 0, 'ENTRADA', '0'),
	(477, 284, 9, '2019-04-02 22:36:21', '0', 0, 'ENTRADA', '0'),
	(478, 285, 9, '2019-04-03 15:25:32', '0', 0, 'ENTRADA', '0'),
	(479, 286, 9, '2019-04-03 21:38:48', '0', 0, 'ENTRADA', '0'),
	(480, 287, 9, '2019-04-03 21:39:25', '0', 0, 'ENTRADA', '0'),
	(481, 289, 9, '2019-04-04 17:18:06', '0', 0, 'ENTRADA', '0'),
	(482, 291, 9, '2019-04-04 17:23:39', '0', 0, 'ENTRADA', '0'),
	(483, 203, 9, '2019-04-04 23:00:32', '1', 6500, 'ENTRADA', '1'),
	(484, 200, 9, '2019-04-04 23:00:38', '1', 59000, 'SALIDA', '0'),
	(485, 203, 9, '2019-04-04 23:00:38', '1', 6500, 'SALIDA', '0'),
	(486, 282, 6, '2019-04-06 19:05:38', '3', 471900, 'ENTRADA', '3'),
	(487, 160, 6, '2019-04-06 19:05:57', '1', 11800, 'ENTRADA', '1'),
	(488, 285, 6, '2019-04-06 19:06:22', '3', 516600, 'ENTRADA', '3'),
	(489, 158, 6, '2019-04-06 19:06:52', '3', 38400, 'ENTRADA', '3'),
	(490, 158, 6, '2019-04-06 19:07:03', '1', 12800, 'SALIDA', '2'),
	(491, 282, 6, '2019-04-06 19:07:03', '1', 157300, 'SALIDA', '2'),
	(492, 160, 6, '2019-04-06 19:07:03', '1', 11800, 'SALIDA', '0'),
	(493, 285, 6, '2019-04-06 19:07:03', '1', 172200, 'SALIDA', '2'),
	(494, 158, 6, '2019-04-06 19:07:34', '1', 12800, 'SALIDA', '1'),
	(495, 282, 6, '2019-04-06 19:07:34', '1', 157300, 'SALIDA', '1'),
	(496, 285, 6, '2019-04-06 19:07:34', '1', 172200, 'SALIDA', '1'),
	(497, 285, 6, '2019-04-06 19:08:27', '1', 172200, 'SALIDA', '0'),
	(498, 158, 6, '2019-04-06 19:08:28', '1', 12800, 'SALIDA', '0'),
	(499, 282, 6, '2019-04-06 19:08:28', '1', 157300, 'SALIDA', '0'),
	(500, 215, 6, '2019-04-08 20:37:08', '1', 30200, 'ENTRADA', '1'),
	(501, 287, 6, '2019-04-08 20:37:25', '1', 43800, 'ENTRADA', '1'),
	(502, 287, 6, '2019-04-08 20:37:34', '1', 43800, 'SALIDA', '0'),
	(503, 215, 6, '2019-04-08 20:37:34', '1', 30200, 'SALIDA', '0'),
	(504, 255, 6, '2019-04-08 20:38:05', '1', 410000, 'ENTRADA', '1'),
	(505, 292, 9, '2019-04-08 20:38:21', '0', 0, 'ENTRADA', '0'),
	(506, 255, 6, '2019-04-08 20:38:22', '1', 410000, 'SALIDA', '0'),
	(507, 293, 9, '2019-04-08 21:52:10', '0', 0, 'ENTRADA', '0'),
	(508, 294, 9, '2019-04-08 21:53:15', '0', 0, 'ENTRADA', '0'),
	(509, 295, 9, '2019-04-08 21:54:33', '0', 0, 'ENTRADA', '0'),
	(510, 296, 9, '2019-04-08 21:55:36', '0', 0, 'ENTRADA', '0'),
	(511, 297, 9, '2019-04-08 21:56:55', '0', 0, 'ENTRADA', '0'),
	(512, 298, 9, '2019-04-08 21:58:39', '0', 0, 'ENTRADA', '0'),
	(513, 258, 6, '2019-04-11 00:36:00', '1', 217100, 'ENTRADA', '1'),
	(514, 259, 6, '2019-04-11 00:36:15', '1', 21100, 'ENTRADA', '1'),
	(515, 260, 6, '2019-04-11 00:36:32', '1', 19360, 'ENTRADA', '1'),
	(516, 260, 6, '2019-04-11 00:36:41', '1', 19360, 'SALIDA', '0'),
	(517, 259, 6, '2019-04-11 00:36:41', '1', 21100, 'SALIDA', '0'),
	(518, 258, 6, '2019-04-11 00:36:41', '1', 217100, 'SALIDA', '0'),
	(519, 299, 9, '2019-04-11 20:31:52', '0', 0, 'ENTRADA', '0'),
	(520, 300, 9, '2019-04-11 20:37:31', '0', 0, 'ENTRADA', '0'),
	(521, 160, 9, '2019-04-11 21:00:00', '0', 0, 'SALIDA', '0'),
	(522, 282, 6, '2019-04-11 21:11:08', '1', 157300, 'ENTRADA', '1'),
	(523, 285, 6, '2019-04-11 21:12:02', '1', 172200, 'ENTRADA', '1'),
	(524, 160, 6, '2019-04-11 21:12:17', '1', 11800, 'ENTRADA', '1'),
	(525, 158, 6, '2019-04-11 21:12:33', '1', 12800, 'ENTRADA', '1'),
	(526, 282, 6, '2019-04-11 21:13:19', '1', 157300, 'SALIDA', '0'),
	(527, 285, 6, '2019-04-11 21:13:19', '1', 172200, 'SALIDA', '0'),
	(528, 160, 6, '2019-04-11 21:13:19', '1', 11800, 'SALIDA', '0'),
	(529, 158, 6, '2019-04-11 21:13:19', '1', 12800, 'SALIDA', '0'),
	(530, 301, 9, '2019-04-11 21:23:48', '0', 0, 'ENTRADA', '0'),
	(531, 303, 9, '2019-04-11 21:49:07', '0', 0, 'ENTRADA', '0'),
	(532, 304, 9, '2019-04-11 22:12:53', '0', 0, 'ENTRADA', '0'),
	(533, 305, 9, '2019-04-11 22:44:59', '0', 0, 'ENTRADA', '0'),
	(534, 306, 9, '2019-04-11 22:46:51', '0', 0, 'ENTRADA', '0'),
	(535, 307, 9, '2019-04-11 22:49:38', '0', 0, 'ENTRADA', '0'),
	(536, 308, 9, '2019-04-11 23:04:54', '0', 0, 'ENTRADA', '0'),
	(537, 309, 9, '2019-04-11 23:07:18', '0', 0, 'ENTRADA', '0'),
	(538, 310, 9, '2019-04-11 23:44:50', '0', 0, 'ENTRADA', '0'),
	(539, 311, 6, '2019-04-12 17:47:45', '1', 8000, 'ENTRADA', '1'),
	(540, 312, 6, '2019-04-12 17:58:45', '1', 130000, 'ENTRADA', '1'),
	(541, 312, 6, '2019-04-12 18:00:21', '0', 0, 'SALIDA', '1'),
	(542, 312, 6, '2019-04-12 18:01:55', '0', 0, 'SALIDA', '1'),
	(543, 312, 6, '2019-04-12 18:03:00', '0', 0, 'SALIDA', '1'),
	(544, 313, 6, '2019-04-12 19:30:41', '0', 0, 'ENTRADA', '0'),
	(545, 314, 6, '2019-04-12 19:34:18', '0', 0, 'ENTRADA', '0'),
	(546, 315, 6, '2019-04-12 19:39:08', '0', 0, 'ENTRADA', '0'),
	(547, 319, 9, '2019-04-13 17:52:05', '0', 0, 'ENTRADA', '0'),
	(548, 320, 9, '2019-04-16 23:30:31', '0', 0, 'ENTRADA', '0'),
	(549, 321, 9, '2019-04-17 14:27:00', '0', 0, 'ENTRADA', '0'),
	(550, 322, 9, '2019-04-17 14:29:42', '0', 0, 'ENTRADA', '0'),
	(551, 323, 9, '2019-04-17 14:54:22', '0', 0, 'ENTRADA', '0'),
	(552, 324, 9, '2019-04-17 14:56:04', '0', 0, 'ENTRADA', '0'),
	(553, 325, 9, '2019-04-23 23:52:45', '0', 0, 'ENTRADA', '0'),
	(554, 313, 6, '2019-04-24 15:05:37', '1', 38000, 'ENTRADA', '1'),
	(555, 314, 6, '2019-04-24 15:06:03', '1', 9900, 'ENTRADA', '1'),
	(556, 315, 6, '2019-04-24 15:06:17', '1', 7000, 'ENTRADA', '1'),
	(557, 315, 6, '2019-04-24 15:07:24', '1', 7000, 'SALIDA', '0'),
	(558, 314, 6, '2019-04-24 15:07:24', '1', 9900, 'SALIDA', '0'),
	(559, 311, 6, '2019-04-24 15:07:24', '1', 8000, 'SALIDA', '0'),
	(560, 313, 6, '2019-04-24 15:07:24', '1', 38000, 'SALIDA', '0'),
	(561, 203, 6, '2019-04-24 15:08:23', '1', 6500, 'ENTRADA', '1'),
	(562, 289, 6, '2019-04-24 15:08:36', '1', 58500, 'ENTRADA', '1'),
	(563, 304, 6, '2019-04-24 15:08:48', '1', 200, 'ENTRADA', '1'),
	(564, 319, 6, '2019-04-24 15:09:06', '1', 2300, 'ENTRADA', '1'),
	(565, 304, 6, '2019-04-24 15:09:32', '3', 600, 'ENTRADA', '4'),
	(566, 304, 6, '2019-04-24 15:09:39', '4', 800, 'SALIDA', '0'),
	(567, 203, 6, '2019-04-24 15:09:39', '1', 6500, 'SALIDA', '0'),
	(568, 319, 6, '2019-04-24 15:09:39', '1', 2300, 'SALIDA', '0'),
	(569, 289, 6, '2019-04-24 15:09:39', '1', 58500, 'SALIDA', '0'),
	(570, 303, 6, '2019-04-24 15:10:37', '1', 28211, 'ENTRADA', '1'),
	(571, 311, 6, '2019-04-24 15:10:51', '1', 8000, 'ENTRADA', '1'),
	(572, 311, 6, '2019-04-24 15:10:59', '1', 8000, 'SALIDA', '0'),
	(573, 303, 6, '2019-04-24 15:10:59', '1', 28211, 'SALIDA', '0'),
	(574, 303, 6, '2019-04-24 15:12:48', '1', 28211, 'ENTRADA', '2'),
	(575, 303, 6, '2019-04-24 15:12:56', '1', 28211, 'SALIDA', '1'),
	(576, 312, 6, '2019-04-24 15:12:56', '1', 130000, 'SALIDA', '0'),
	(577, 158, 6, '2019-04-24 15:13:32', '1', 12800, 'ENTRADA', '1'),
	(578, 300, 6, '2019-04-24 15:13:48', '1', 1500, 'ENTRADA', '1'),
	(579, 164, 6, '2019-04-24 15:14:00', '1', 11300, 'ENTRADA', '1'),
	(580, 160, 6, '2019-04-24 15:14:33', '1', 11800, 'ENTRADA', '1'),
	(581, 301, 6, '2019-04-24 15:14:46', '1', 2000, 'ENTRADA', '1'),
	(582, 197, 6, '2019-04-24 15:15:12', '1', 1500, 'ENTRADA', '1'),
	(583, 300, 6, '2019-04-24 15:15:22', '1', 1500, 'SALIDA', '0'),
	(584, 158, 6, '2019-04-24 15:15:23', '1', 12800, 'SALIDA', '0'),
	(585, 164, 6, '2019-04-24 15:15:23', '1', 11300, 'SALIDA', '0'),
	(586, 160, 6, '2019-04-24 15:15:23', '1', 11800, 'SALIDA', '0'),
	(587, 197, 6, '2019-04-24 15:15:23', '1', 1500, 'SALIDA', '0'),
	(588, 301, 6, '2019-04-24 15:15:23', '1', 2000, 'SALIDA', '0'),
	(589, 305, 6, '2019-04-24 15:15:45', '1', 92000, 'ENTRADA', '1'),
	(590, 307, 6, '2019-04-24 15:16:02', '1', 7000, 'ENTRADA', '1'),
	(591, 306, 6, '2019-04-24 15:16:14', '1', 12000, 'ENTRADA', '1'),
	(592, 305, 6, '2019-04-24 15:18:05', '1', 92000, 'SALIDA', '0'),
	(593, 307, 6, '2019-04-24 15:18:05', '1', 7000, 'SALIDA', '0'),
	(594, 306, 6, '2019-04-24 15:18:05', '1', 12000, 'SALIDA', '0'),
	(595, 326, 9, '2019-04-25 14:47:34', '0', 0, 'ENTRADA', '0'),
	(596, 327, 9, '2019-04-25 15:14:04', '0', 0, 'ENTRADA', '0'),
	(597, 328, 9, '2019-04-25 15:16:36', '0', 0, 'ENTRADA', '0'),
	(598, 329, 9, '2019-04-25 15:45:35', '0', 0, 'ENTRADA', '0'),
	(599, 330, 6, '2019-04-25 18:08:21', '1', 32000, 'ENTRADA', '1'),
	(600, 331, 6, '2019-04-26 20:38:16', '2', 2000, 'ENTRADA', '2'),
	(601, 332, 6, '2019-04-26 22:19:10', '1', 5000, 'ENTRADA', '1'),
	(602, 335, 6, '2019-04-26 22:25:12', '1', 3000, 'ENTRADA', '1'),
	(603, 336, 9, '2019-04-27 17:59:26', '0', 0, 'ENTRADA', '0'),
	(604, 337, 9, '2019-04-27 18:01:38', '0', 0, 'ENTRADA', '0'),
	(605, 338, 9, '2019-04-27 18:03:20', '0', 0, 'ENTRADA', '0'),
	(606, 339, 7, '2019-04-29 14:18:12', '1', 0, 'ENTRADA', '1'),
	(607, 339, 7, '2019-04-29 14:19:20', '0', 0, 'SALIDA', '1'),
	(608, 340, 6, '2019-04-29 15:34:31', '1', 51500, 'ENTRADA', '1'),
	(609, 341, 6, '2019-04-29 15:44:01', '1', 5000, 'ENTRADA', '1'),
	(610, 342, 6, '2019-04-29 15:51:09', '10', 20000, 'ENTRADA', '10'),
	(611, 343, 6, '2019-04-29 16:25:42', '1', 756500, 'ENTRADA', '1'),
	(612, 344, 6, '2019-04-29 16:27:53', '1', 209600, 'ENTRADA', '1'),
	(613, 345, 6, '2019-04-29 16:29:23', '1', 52900, 'ENTRADA', '1'),
	(614, 346, 6, '2019-04-29 17:10:04', '1', 157000, 'ENTRADA', '1'),
	(615, 347, 6, '2019-04-29 17:18:19', '1', 11500, 'ENTRADA', '1'),
	(616, 348, 6, '2019-04-29 17:19:18', '1', 4500, 'ENTRADA', '1'),
	(617, 351, 9, '2019-05-02 18:09:22', '0', 0, 'ENTRADA', '0'),
	(618, 202, 9, '2019-05-02 18:10:59', '0', 0, 'SALIDA', '2'),
	(619, 352, 9, '2019-05-02 18:15:27', '0', 0, 'ENTRADA', '0'),
	(620, 353, 9, '2019-05-02 18:17:14', '0', 0, 'ENTRADA', '0'),
	(621, 354, 9, '2019-05-02 18:18:31', '0', 0, 'ENTRADA', '0'),
	(622, 355, 9, '2019-05-02 18:20:43', '0', 0, 'ENTRADA', '0'),
	(623, 347, 6, '2019-05-02 19:40:35', '1', 11500, 'SALIDA', '0'),
	(624, 346, 6, '2019-05-02 19:40:35', '1', 157000, 'SALIDA', '0'),
	(625, 356, 1, '2019-05-04 12:02:15', '12', 0, 'ENTRADA', '12'),
	(626, 357, 1, '2019-05-07 00:24:16', '3', 0, 'ENTRADA', '3'),
	(627, 357, 1, '2019-05-07 00:39:26', '0', 0, 'SALIDA', '3'),
	(628, 357, 1, '2019-05-07 00:40:57', '0', 0, 'SALIDA', '3'),
	(629, 357, 1, '2019-05-07 00:41:31', '0', 0, 'SALIDA', '3'),
	(630, 357, 1, '2019-05-07 00:45:33', '0', 0, 'SALIDA', '3'),
	(631, 357, 1, '2019-05-07 00:48:52', '1', 50000, 'SALIDA', '2');
/*!40000 ALTER TABLE `kardex_repuestos` ENABLE KEYS */;

-- Volcando estructura para tabla u107806033_tool.notificacion
CREATE TABLE IF NOT EXISTS `notificacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` text,
  `text` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tipo` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla u107806033_tool.notificacion: ~191 rows (aproximadamente)
/*!40000 ALTER TABLE `notificacion` DISABLE KEYS */;
INSERT INTO `notificacion` (`id`, `url`, `text`, `fecha`, `tipo`) VALUES
	(19, '', 'Nuevo servicio técnico - Ref: 50', '2018-12-20 15:15:47', 'EMPLEADO'),
	(20, '', 'Nuevo servicio técnico - Ref: 51', '2018-12-20 16:24:32', 'EMPLEADO'),
	(21, '', 'Nuevo servicio técnico - Ref: 52', '2018-12-20 17:08:29', 'EMPLEADO'),
	(22, '', 'Nuevo servicio técnico - Ref: 53', '2018-12-21 16:43:58', 'EMPLEADO'),
	(23, '', 'Nuevo servicio técnico - Ref: 54', '2018-12-21 20:32:22', 'EMPLEADO'),
	(24, '', 'Nuevo servicio técnico - Ref: 55', '2018-12-22 15:02:02', 'EMPLEADO'),
	(25, '', 'Nuevo servicio técnico - Ref: 56', '2018-12-22 17:12:58', 'EMPLEADO'),
	(26, '', 'Nuevo servicio técnico - Ref: 57', '2018-12-22 17:17:41', 'EMPLEADO'),
	(27, '', 'Nuevo servicio técnico - Ref: 58', '2018-12-22 17:18:43', 'EMPLEADO'),
	(28, '', 'Nuevo servicio técnico - Ref: 59', '2018-12-22 17:20:03', 'EMPLEADO'),
	(29, '', 'Nuevo servicio técnico - Ref: 60', '2018-12-22 17:21:11', 'EMPLEADO'),
	(30, '', 'Nuevo servicio técnico - Ref: 61', '2018-12-22 17:22:08', 'EMPLEADO'),
	(31, '', 'Nuevo servicio técnico - Ref: 62', '2018-12-22 17:23:14', 'EMPLEADO'),
	(32, '', 'Nuevo servicio técnico - Ref: 63', '2018-12-22 17:24:11', 'EMPLEADO'),
	(33, '', 'Nuevo servicio técnico - Ref: 64', '2018-12-22 17:25:16', 'EMPLEADO'),
	(34, '', 'Nuevo servicio técnico - Ref: 65', '2018-12-22 17:29:05', 'EMPLEADO'),
	(35, '', 'Nuevo servicio técnico - Ref: 66', '2018-12-22 17:30:35', 'EMPLEADO'),
	(36, '', 'Nuevo servicio técnico - Ref: 67', '2018-12-22 17:31:36', 'EMPLEADO'),
	(37, '', 'Nuevo servicio técnico - Ref: 68', '2018-12-22 17:55:04', 'EMPLEADO'),
	(38, '', 'Nuevo servicio técnico - Ref: 69', '2018-12-22 17:58:12', 'EMPLEADO'),
	(39, '', 'Nuevo servicio técnico - Ref: 70', '2018-12-22 18:00:00', 'EMPLEADO'),
	(40, '', 'Nuevo servicio técnico - Ref: 71', '2018-12-22 18:01:13', 'EMPLEADO'),
	(41, '', 'Nuevo servicio técnico - Ref: 72', '2018-12-22 18:02:04', 'EMPLEADO'),
	(42, '', 'Nuevo servicio técnico - Ref: 73', '2019-01-03 16:02:43', 'EMPLEADO'),
	(43, '', 'Nuevo servicio técnico - Ref: 74', '2019-01-10 19:22:06', 'EMPLEADO'),
	(44, '', 'Nuevo servicio técnico - Ref: 75', '2019-01-17 20:26:49', 'EMPLEADO'),
	(45, '', 'Nuevo servicio técnico - Ref: 76', '2019-01-18 17:04:37', 'EMPLEADO'),
	(46, '', 'Nuevo servicio técnico - Ref: 77', '2019-01-25 17:40:28', 'EMPLEADO'),
	(47, '', 'Nuevo servicio técnico - Ref: 78', '2019-01-25 17:43:15', 'EMPLEADO'),
	(48, '', 'Nuevo servicio técnico - Ref: 79', '2019-01-25 17:46:56', 'EMPLEADO'),
	(49, '', 'Nuevo servicio técnico - Ref: 80', '2019-01-25 17:49:47', 'EMPLEADO'),
	(50, '', 'Nuevo servicio técnico - Ref: 81', '2019-01-28 20:24:13', 'EMPLEADO'),
	(51, '', 'Nuevo servicio técnico - Ref: 82', '2019-01-28 20:50:22', 'EMPLEADO'),
	(52, '', 'Nuevo servicio técnico - Ref: 83', '2019-01-28 21:08:29', 'EMPLEADO'),
	(53, '', 'Nuevo servicio técnico - Ref: 84', '2019-01-28 21:51:59', 'EMPLEADO'),
	(54, '', 'Nuevo servicio técnico - Ref: 85', '2019-01-28 22:03:07', 'EMPLEADO'),
	(55, '', 'Nuevo servicio técnico - Ref: 86', '2019-01-28 22:10:06', 'EMPLEADO'),
	(56, '', 'Nuevo servicio técnico - Ref: 87', '2019-01-28 22:16:58', 'EMPLEADO'),
	(57, '', 'Nuevo servicio técnico - Ref: 88', '2019-01-28 22:21:10', 'EMPLEADO'),
	(58, '', 'Nuevo servicio técnico - Ref: 89', '2019-01-28 22:24:36', 'EMPLEADO'),
	(59, '', 'Nuevo servicio técnico - Ref: 90', '2019-01-28 23:52:28', 'EMPLEADO'),
	(60, '', 'Nuevo servicio técnico - Ref: 91', '2019-01-29 00:01:58', 'EMPLEADO'),
	(61, '', 'Nuevo servicio técnico - Ref: 92', '2019-01-29 02:11:19', 'EMPLEADO'),
	(62, '', 'Nuevo servicio técnico - Ref: 93', '2019-01-29 02:17:30', 'EMPLEADO'),
	(63, '', 'Nuevo servicio técnico - Ref: 94', '2019-01-29 02:29:34', 'EMPLEADO'),
	(64, '', 'Nuevo servicio técnico - Ref: 95', '2019-01-29 02:35:46', 'EMPLEADO'),
	(65, '', 'Nuevo servicio técnico - Ref: 96', '2019-01-29 02:39:13', 'EMPLEADO'),
	(66, '', 'Nuevo servicio técnico - Ref: 97', '2019-01-29 23:25:26', 'EMPLEADO'),
	(67, '', 'Nuevo servicio técnico - Ref: 98', '2019-01-29 23:35:43', 'EMPLEADO'),
	(68, '', 'Nuevo servicio técnico - Ref: 99', '2019-01-29 23:39:45', 'EMPLEADO'),
	(69, '', 'Nuevo servicio técnico - Ref: 100', '2019-01-30 17:40:12', 'EMPLEADO'),
	(70, '', 'Nuevo servicio técnico - Ref: 101', '2019-01-31 17:58:37', 'EMPLEADO'),
	(71, '', 'Nuevo servicio técnico - Ref: 102', '2019-01-31 18:09:03', 'EMPLEADO'),
	(72, '', 'Nuevo servicio técnico - Ref: 103', '2019-01-31 18:18:44', 'EMPLEADO'),
	(73, '', 'Nuevo servicio técnico - Ref: 104', '2019-01-31 18:29:31', 'EMPLEADO'),
	(74, '', 'Nuevo servicio técnico - Ref: 105', '2019-01-31 19:02:35', 'EMPLEADO'),
	(75, '', 'Nuevo servicio técnico - Ref: 106', '2019-01-31 19:22:07', 'EMPLEADO'),
	(76, '', 'Nuevo servicio técnico - Ref: 107', '2019-01-31 19:42:08', 'EMPLEADO'),
	(77, '', 'Nuevo servicio técnico - Ref: 108', '2019-01-31 19:56:07', 'EMPLEADO'),
	(78, '', 'Nuevo servicio técnico - Ref: 109', '2019-01-31 20:03:11', 'EMPLEADO'),
	(79, '', 'Nuevo servicio técnico - Ref: 110', '2019-01-31 20:11:12', 'EMPLEADO'),
	(80, '', 'Nuevo servicio técnico - Ref: 111', '2019-01-31 20:18:37', 'EMPLEADO'),
	(81, '', 'Nuevo servicio técnico - Ref: 112', '2019-01-31 20:42:16', 'EMPLEADO'),
	(82, '', 'Nuevo servicio técnico - Ref: 113', '2019-01-31 20:53:30', 'EMPLEADO'),
	(83, '', 'Nuevo servicio técnico - Ref: 114', '2019-02-01 14:21:24', 'EMPLEADO'),
	(84, '', 'Nuevo servicio técnico - Ref: 115', '2019-02-01 16:39:26', 'EMPLEADO'),
	(85, '', 'Nuevo servicio técnico - Ref: 116', '2019-02-02 15:19:51', 'EMPLEADO'),
	(86, '', 'Nuevo servicio técnico - Ref: 117', '2019-02-02 15:38:45', 'EMPLEADO'),
	(87, '', 'Nuevo servicio técnico - Ref: 118', '2019-02-02 16:11:15', 'EMPLEADO'),
	(88, '', 'Nuevo servicio técnico - Ref: 119', '2019-02-02 16:27:45', 'EMPLEADO'),
	(89, '', 'Nuevo servicio técnico - Ref: 120', '2019-02-04 19:09:07', 'EMPLEADO'),
	(90, '', 'Nuevo servicio técnico - Ref: 121', '2019-02-05 23:11:19', 'EMPLEADO'),
	(91, '', 'Nuevo servicio técnico - Ref: 122', '2019-02-06 20:18:08', 'EMPLEADO'),
	(92, '', 'Nuevo servicio técnico - Ref: 123', '2019-02-06 20:25:43', 'EMPLEADO'),
	(93, '', 'Nuevo servicio técnico - Ref: 124', '2019-02-06 22:22:24', 'EMPLEADO'),
	(94, '', 'Nuevo servicio técnico - Ref: 125', '2019-02-08 18:42:41', 'EMPLEADO'),
	(95, '', 'Nuevo servicio técnico - Ref: 126', '2019-02-11 22:11:47', 'EMPLEADO'),
	(96, '', 'Nuevo servicio técnico - Ref: 127', '2019-02-11 22:17:16', 'EMPLEADO'),
	(97, '', 'Nuevo servicio técnico - Ref: 128', '2019-02-12 20:48:06', 'EMPLEADO'),
	(98, '', 'Nuevo servicio técnico - Ref: 129', '2019-02-12 21:00:29', 'EMPLEADO'),
	(99, '', 'Nuevo servicio técnico - Ref: 130', '2019-02-12 21:07:51', 'EMPLEADO'),
	(100, '', 'Nuevo servicio técnico - Ref: 131', '2019-02-12 21:13:33', 'EMPLEADO'),
	(101, '', 'Nuevo servicio técnico - Ref: 132', '2019-02-12 21:20:34', 'EMPLEADO'),
	(102, '', 'Nuevo servicio técnico - Ref: 133', '2019-02-12 21:25:27', 'EMPLEADO'),
	(103, '', 'Nuevo servicio técnico - Ref: 134', '2019-02-12 22:26:23', 'EMPLEADO'),
	(104, '', 'Nuevo servicio técnico - Ref: 135', '2019-02-13 15:24:19', 'EMPLEADO'),
	(105, '', 'Nuevo servicio técnico - Ref: 136', '2019-02-15 16:10:30', 'EMPLEADO'),
	(106, '', 'Nuevo servicio técnico - Ref: 137', '2019-02-15 21:31:30', 'EMPLEADO'),
	(107, '', 'Nuevo servicio técnico - Ref: 138', '2019-02-16 15:29:26', 'EMPLEADO'),
	(108, '', 'Nuevo servicio técnico - Ref: 139', '2019-02-18 21:51:25', 'EMPLEADO'),
	(109, '', 'Nuevo servicio técnico - Ref: 140', '2019-02-19 20:03:33', 'EMPLEADO'),
	(110, '', 'Nuevo servicio técnico - Ref: 141', '2019-02-19 22:34:56', 'EMPLEADO'),
	(111, '', 'Nuevo servicio técnico - Ref: 142', '2019-02-19 22:40:40', 'EMPLEADO'),
	(112, '', 'Nuevo servicio técnico - Ref: 143', '2019-02-21 19:50:37', 'EMPLEADO'),
	(113, '', 'Nuevo servicio técnico - Ref: 144', '2019-02-22 15:45:26', 'EMPLEADO'),
	(114, '', 'Nuevo servicio técnico - Ref: 145', '2019-02-26 19:38:03', 'EMPLEADO'),
	(115, '', 'Nuevo servicio técnico - Ref: 146', '2019-02-26 22:26:53', 'EMPLEADO'),
	(116, '', 'Nuevo servicio técnico - Ref: 147', '2019-02-26 23:40:16', 'EMPLEADO'),
	(117, '', 'Nuevo servicio técnico - Ref: 148', '2019-02-26 23:47:59', 'EMPLEADO'),
	(118, '', 'Nuevo servicio técnico - Ref: 149', '2019-02-26 23:52:56', 'EMPLEADO'),
	(119, '', 'Nuevo servicio técnico - Ref: 150', '2019-02-26 23:53:51', 'EMPLEADO'),
	(120, '', 'Nuevo servicio técnico - Ref: 151', '2019-02-26 23:55:40', 'EMPLEADO'),
	(121, '', 'Nuevo servicio técnico - Ref: 152', '2019-02-27 18:53:24', 'EMPLEADO'),
	(122, '', 'Nuevo servicio técnico - Ref: 153', '2019-02-27 19:01:39', 'EMPLEADO'),
	(123, '', 'Nuevo servicio técnico - Ref: 154', '2019-02-27 19:13:16', 'EMPLEADO'),
	(124, '', 'Nuevo servicio técnico - Ref: 155', '2019-02-27 19:24:51', 'EMPLEADO'),
	(125, '', 'Nuevo servicio técnico - Ref: 156', '2019-02-27 19:35:00', 'EMPLEADO'),
	(126, '', 'Nuevo servicio técnico - Ref: 157', '2019-02-27 19:38:43', 'EMPLEADO'),
	(127, '', 'Nuevo servicio técnico - Ref: 158', '2019-02-27 19:44:10', 'EMPLEADO'),
	(128, '', 'Nuevo servicio técnico - Ref: 159', '2019-02-27 20:00:48', 'EMPLEADO'),
	(129, '', 'Nuevo servicio técnico - Ref: 160', '2019-02-27 20:13:29', 'EMPLEADO'),
	(130, '', 'Nuevo servicio técnico - Ref: 161', '2019-02-27 20:37:52', 'EMPLEADO'),
	(131, '', 'Nuevo servicio técnico - Ref: 162', '2019-02-27 20:39:50', 'EMPLEADO'),
	(132, '', 'Nuevo servicio técnico - Ref: 163', '2019-02-27 20:43:27', 'EMPLEADO'),
	(133, '', 'Nuevo servicio técnico - Ref: 164', '2019-03-01 20:31:11', 'EMPLEADO'),
	(134, '', 'Nuevo servicio técnico - Ref: 165', '2019-03-06 16:31:09', 'EMPLEADO'),
	(135, '', 'Nuevo servicio técnico - Ref: 166', '2019-03-06 16:33:08', 'EMPLEADO'),
	(136, '', 'Nuevo servicio técnico - Ref: 167', '2019-03-13 14:20:08', 'EMPLEADO'),
	(137, '', 'Nuevo servicio técnico - Ref: 168', '2019-03-13 14:56:47', 'EMPLEADO'),
	(138, '', 'Nuevo servicio técnico - Ref: 169', '2019-03-13 15:16:50', 'EMPLEADO'),
	(139, '', 'Nuevo servicio técnico - Ref: 170', '2019-03-13 15:19:46', 'EMPLEADO'),
	(140, '', 'Nuevo servicio técnico - Ref: 171', '2019-03-13 15:57:14', 'EMPLEADO'),
	(141, '', 'Nuevo servicio técnico - Ref: 172', '2019-03-13 16:00:40', 'EMPLEADO'),
	(142, '', 'Nuevo servicio técnico - Ref: 173', '2019-03-13 16:35:41', 'EMPLEADO'),
	(143, '', 'Nuevo servicio técnico - Ref: 174', '2019-03-14 14:35:56', 'EMPLEADO'),
	(144, '', 'Nuevo servicio técnico - Ref: 175', '2019-03-14 16:03:32', 'EMPLEADO'),
	(145, '', 'Nuevo servicio técnico - Ref: 176', '2019-03-19 17:39:29', 'EMPLEADO'),
	(146, '', 'Nuevo servicio técnico - Ref: 177', '2019-03-21 19:57:26', 'EMPLEADO'),
	(147, '', 'Nuevo servicio técnico - Ref: 178', '2019-03-27 18:50:45', 'EMPLEADO'),
	(148, '', 'Nuevo servicio técnico - Ref: 179', '2019-03-27 19:07:47', 'EMPLEADO'),
	(149, '', 'Nuevo servicio técnico - Ref: 180', '2019-03-28 19:47:36', 'EMPLEADO'),
	(150, '', 'Nuevo servicio técnico - Ref: 181', '2019-03-29 20:00:27', 'EMPLEADO'),
	(151, '', 'Nuevo servicio técnico - Ref: 182', '2019-03-30 14:35:37', 'EMPLEADO'),
	(152, '', 'Nuevo servicio técnico - Ref: 183', '2019-03-30 16:15:05', 'EMPLEADO'),
	(153, '', 'Nuevo servicio técnico - Ref: 184', '2019-03-30 17:00:48', 'EMPLEADO'),
	(154, '', 'Nuevo servicio técnico - Ref: 185', '2019-03-30 17:16:44', 'EMPLEADO'),
	(155, '', 'Nuevo servicio técnico - Ref: 186', '2019-03-30 17:41:23', 'EMPLEADO'),
	(156, '', 'Nuevo servicio técnico - Ref: 187', '2019-03-30 18:22:50', 'EMPLEADO'),
	(157, '', 'Nuevo servicio técnico - Ref: 188', '2019-03-30 18:41:12', 'EMPLEADO'),
	(158, '', 'Nuevo servicio técnico - Ref: 189', '2019-03-30 18:45:42', 'EMPLEADO'),
	(159, '', 'Nuevo servicio técnico - Ref: 190', '2019-03-30 18:50:06', 'EMPLEADO'),
	(160, '', 'Nuevo servicio técnico - Ref: 191', '2019-03-30 18:52:50', 'EMPLEADO'),
	(161, '', 'Nuevo servicio técnico - Ref: 192', '2019-04-01 17:32:29', 'EMPLEADO'),
	(162, '', 'Nuevo servicio técnico - Ref: 193', '2019-04-02 14:54:07', 'EMPLEADO'),
	(163, '', 'Nuevo servicio técnico - Ref: 194', '2019-04-02 18:18:44', 'EMPLEADO'),
	(164, '', 'Nuevo servicio técnico - Ref: 195', '2019-04-08 20:25:50', 'EMPLEADO'),
	(165, '', 'Nuevo servicio técnico - Ref: 196', '2019-04-08 20:30:47', 'EMPLEADO'),
	(166, '', 'Nuevo servicio técnico - Ref: 197', '2019-04-08 20:33:06', 'EMPLEADO'),
	(167, '', 'Nuevo servicio técnico - Ref: 198', '2019-04-08 21:48:08', 'EMPLEADO'),
	(168, '', 'Nuevo servicio técnico - Ref: 199', '2019-04-09 18:47:46', 'EMPLEADO'),
	(169, '', 'Nuevo servicio técnico - Ref: 200', '2019-04-09 21:48:24', 'EMPLEADO'),
	(170, '', 'Nuevo servicio técnico - Ref: 201', '2019-04-09 21:51:26', 'EMPLEADO'),
	(171, '', 'Nuevo servicio técnico - Ref: 202', '2019-04-09 21:55:09', 'EMPLEADO'),
	(172, '', 'Nuevo servicio técnico - Ref: 203', '2019-04-09 21:59:42', 'EMPLEADO'),
	(173, '', 'Nuevo servicio técnico - Ref: 204', '2019-04-09 22:02:08', 'EMPLEADO'),
	(174, '', 'Nuevo servicio técnico - Ref: 205', '2019-04-09 22:05:37', 'EMPLEADO'),
	(175, '', 'Nuevo servicio técnico - Ref: 206', '2019-04-11 20:20:56', 'EMPLEADO'),
	(176, '', 'Nuevo servicio técnico - Ref: 207', '2019-04-11 20:23:11', 'EMPLEADO'),
	(177, '', 'Nuevo servicio técnico - Ref: 208', '2019-04-12 19:24:26', 'EMPLEADO'),
	(178, '', 'Nuevo servicio técnico - Ref: 209', '2019-04-12 20:02:10', 'EMPLEADO'),
	(179, '', 'Nuevo servicio técnico - Ref: 210', '2019-04-12 20:06:32', 'EMPLEADO'),
	(180, '', 'Nuevo servicio técnico - Ref: 211', '2019-04-12 20:13:03', 'EMPLEADO'),
	(181, '', 'Nuevo servicio técnico - Ref: 212', '2019-04-12 20:17:16', 'EMPLEADO'),
	(182, '', 'Nuevo servicio técnico - Ref: 213', '2019-04-15 20:51:14', 'EMPLEADO'),
	(183, '', 'Nuevo servicio técnico - Ref: 214', '2019-04-17 14:24:30', 'EMPLEADO'),
	(184, '', 'Nuevo servicio técnico - Ref: 215', '2019-04-17 14:34:10', 'EMPLEADO'),
	(185, '', 'Nuevo servicio técnico - Ref: 216', '2019-04-17 14:35:21', 'EMPLEADO'),
	(186, '', 'Nuevo servicio técnico - Ref: 217', '2019-04-17 14:42:45', 'EMPLEADO'),
	(187, '', 'Nuevo servicio técnico - Ref: 218', '2019-04-17 14:52:57', 'EMPLEADO'),
	(188, '', 'Nuevo servicio técnico - Ref: 219', '2019-04-22 14:13:38', 'EMPLEADO'),
	(189, '', 'Nuevo servicio técnico - Ref: 220', '2019-04-22 14:23:40', 'EMPLEADO'),
	(190, '', 'Nuevo servicio técnico - Ref: 221', '2019-04-23 17:12:13', 'EMPLEADO'),
	(191, '', 'Nuevo servicio técnico - Ref: 222', '2019-04-24 18:15:07', 'EMPLEADO'),
	(192, '', 'Nuevo servicio técnico - Ref: 223', '2019-04-24 22:36:02', 'EMPLEADO'),
	(193, '', 'Nuevo servicio técnico - Ref: 224', '2019-04-25 14:43:09', 'EMPLEADO'),
	(194, '', 'Nuevo servicio técnico - Ref: 225', '2019-04-25 14:51:35', 'EMPLEADO'),
	(195, '', 'Nuevo servicio técnico - Ref: 226', '2019-04-25 22:21:54', 'EMPLEADO'),
	(196, '', 'Nuevo servicio técnico - Ref: 227', '2019-04-25 22:25:05', 'EMPLEADO'),
	(197, '', 'Nuevo servicio técnico - Ref: 228', '2019-04-25 22:27:58', 'EMPLEADO'),
	(198, '', 'Nuevo servicio técnico - Ref: 229', '2019-04-26 15:58:30', 'EMPLEADO'),
	(199, '', 'Nuevo servicio técnico - Ref: 230', '2019-04-26 16:13:53', 'EMPLEADO'),
	(200, '', 'Nuevo servicio técnico - Ref: 231', '2019-04-26 22:28:33', 'EMPLEADO'),
	(201, '', 'Nuevo servicio técnico - Ref: 232', '2019-04-26 22:49:40', 'EMPLEADO'),
	(202, '', 'Nuevo servicio técnico - Ref: 233', '2019-04-26 23:10:48', 'EMPLEADO'),
	(203, '', 'Nuevo servicio técnico - Ref: 234', '2019-04-27 14:15:45', 'EMPLEADO'),
	(204, '', 'Nuevo servicio técnico - Ref: 235', '2019-04-29 15:54:29', 'EMPLEADO'),
	(205, '', 'Nuevo servicio técnico - Ref: 236', '2019-04-29 15:57:49', 'EMPLEADO'),
	(206, '', 'Nuevo servicio técnico - Ref: 237', '2019-04-30 16:58:25', 'EMPLEADO'),
	(207, '', 'Nuevo servicio técnico - Ref: 238', '2019-05-02 17:57:42', 'EMPLEADO'),
	(208, '', 'Nuevo servicio técnico - Ref: 239', '2019-05-02 18:07:02', 'EMPLEADO'),
	(209, '', 'Nuevo servicio técnico - Ref: 240', '2019-05-03 16:13:07', 'EMPLEADO'),
	(210, '', 'Nuevo servicio técnico - Ref: 242', '2019-05-07 02:07:04', 'EMPLEADO'),
	(211, '', 'Nuevo servicio técnico - Ref: 243', '2019-05-07 02:16:54', 'EMPLEADO'),
	(212, '', 'Nuevo servicio técnico - Ref: 244', '2019-05-07 02:26:11', 'EMPLEADO');
/*!40000 ALTER TABLE `notificacion` ENABLE KEYS */;

-- Volcando estructura para tabla u107806033_tool.repuesto
CREATE TABLE IF NOT EXISTS `repuesto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `referencia` varchar(45) NOT NULL,
  `fabricante` varchar(45) NOT NULL,
  `descripcion` text,
  `precio` decimal(10,0) NOT NULL DEFAULT '0',
  `nombre` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL DEFAULT 'BODEGA',
  `cantidad` varchar(45) NOT NULL DEFAULT '0',
  `imagen` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `referencia_UNIQUE` (`referencia`)
) ENGINE=InnoDB AUTO_INCREMENT=358 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla u107806033_tool.repuesto: ~324 rows (aproximadamente)
/*!40000 ALTER TABLE `repuesto` DISABLE KEYS */;
INSERT INTO `repuesto` (`id`, `referencia`, `fabricante`, `descripcion`, `precio`, `nombre`, `estado`, `cantidad`, `imagen`) VALUES
	(7, '1', 'makita', 'maquina en corto', 30000, 'Inducido', 'Bodega Bogota', '0', 'https://toolboxcentersas.website/upload/image2018122015453191440302.png'),
	(8, '2', 'General', '', 5000, 'Clavija ', 'Bogota', '20', 'https://toolboxcentersas.website/upload/image2018122015453263234992.png'),
	(9, '210005-4', 'Makita', '', 7300, 'RODAMIENTO 608DDW ', 'Bogota', '4', 'https://toolboxcentersas.website/upload/image2018122015453267762413.png'),
	(10, '194991-6', 'Makita', '', 10800, 'JUEGO DE ESCOBILLAS CB-203 + P/2414NB/M0920/M', 'BOGOTA', '1', 'https://toolboxcentersas.website/upload/image2018122115454130666827.png'),
	(11, '763622-4', 'MAKITA', '', 104000, 'COLLECT CONICO + 1/2" P/3612', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2018122115454132820025.png'),
	(12, '153764-6', 'MAKITA', '', 16200, 'KNOB 50 COMPLETE + P/3612/3612C', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2018122115454135502661.png'),
	(13, '410129-8', 'MAKITA', '', 4000, 'TUERCA DE PLASTICO P/3612B + P/RP1800/RP2301F', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2018122115454137078823.png'),
	(14, '211092-6', 'makita', '', 7200, 'RODAMIENTO 629DDW + P/GA4530/BO4556/BO5030/M9', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2018122115454203594353.png'),
	(15, '607', 'VARIOS', '', 9000, 'RODAMIENTO', 'BOGOTA', '1', 'https://toolboxcentersas.website/upload/image2018122115454244598587.png'),
	(16, '209322001044', 'EINHELL', 'repuesto polichadora', 11000, 'MANGA DE LANA', 'BOGOTA', '10', 'https://toolboxcentersas.website/upload/image2018122415456675728818.png'),
	(17, '234028201010', 'EINHELL', '', 5000, 'FILTRO AZUL', 'BOGOTA', '6', 'https://toolboxcentersas.website/upload/image2018122415456677610016.png'),
	(18, '234028201009', 'EINHELL', '', 3500, 'BOLSA DE POLVO', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122415456680191947.png'),
	(19, '234028201012', 'EINHELL', '', 2500, 'FILTRO DE ESPUMA', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122415456681651343.png'),
	(20, '209326001802', 'EINHELL', '', 2000, 'PAPEL DE LIJA 80 GRS', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122415456683161110.png'),
	(21, ' 209326001803', 'EINHELL', '', 2000, 'PAPEL DE LIJA 120GRS', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122415456641080340.png'),
	(22, '209326001801', 'EINHELL', '', 2000, 'PAPEL DE LIJA 60GRS', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122415456684917678.png'),
	(23, '446056001037', 'EINHELL', '', 2000, 'PAPEL DE LIJA P240', 'BOGOTA', '17', 'https://toolboxcentersas.website/upload/image2018122415456685383551.png'),
	(24, '446056001036', 'EINHELL', '', 2000, 'PAPEL DE LIJA P120', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122415456686272221.png'),
	(25, '401044001003', 'EINHELL', '', 35500, 'FILTRO DE AIRE', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122415456687244627.png'),
	(26, '400740001046', 'EINHELL', '', 13080, 'FILTRO DE AIRE', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122415456696742809.png'),
	(27, '4732502051', 'EINHELL', '', 10800, 'PROTECTOR COMPRESOR', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122415456699431156.png'),
	(28, '443055001046', 'EINHELL', '', 7500, 'SWITCH', 'BOGOTA', '8', 'https://toolboxcentersas.website/upload/image2018122415456711860460.png'),
	(29, '443059002021', 'EINHELL', '', 7800, 'CAJA DE ENGRANAJES', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122415456713776459.png'),
	(30, '425980901033', 'EINHELL', '', 28400, 'SWITCH (Br) 127V', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122415456727749092.png'),
	(31, '432110001035', 'EINHELL', '', 22500, 'SWITCH', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122615458562381983.png'),
	(32, '443061302046', 'ENHELL', '', 14000, 'SWITCH2', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122615458566796333.png'),
	(33, '443059002045', 'EINHELL', '', 11000, 'SWITCH', 'BOGOTA', '9', 'https://toolboxcentersas.website/upload/image2018122615458579276965.png'),
	(34, '434527001012', 'EINHELL', '', 11000, 'SWITCH4', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122615458582826069.png'),
	(35, '413908401083', 'EINHELL', '', 19000, 'SWITCH5', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122615458585889222.png'),
	(36, '413909001071', 'EINHELL', '', 19000, 'SWITCH6', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122615458588164593.png'),
	(37, '425823701040', 'EINHELL', '', 14000, 'SWITCH7', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122615458589709901.png'),
	(38, '452016702021', 'EINHELL', '', 11000, 'SWITCH8', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122615458592423196.png'),
	(39, ' 441916801007', 'EINHELL', '', 10000, 'SWITCH9', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122615458594181760.png'),
	(40, '430082002192', 'EINHELL', '', 17000, 'ESCOBILLAS', 'BOGOTA', '10', 'https://toolboxcentersas.website/upload/image2018122615458606064329.png'),
	(41, '425974201030', 'EINHELL', '', 11000, 'ESCOBILLAS1', 'BOGOTA', '10', 'https://toolboxcentersas.website/upload/image2018122615458607371879.png'),
	(42, '433097001019', 'EINHELL', '', 11500, 'ESCOBILLAS2', 'BOGOTA', '20', 'https://toolboxcentersas.website/upload/image2018122615458609275568.png'),
	(43, '425865804022', 'EINHELL', '', 4000, 'ESCOBILLAS3', 'BOGOTA', '10', 'https://toolboxcentersas.website/upload/image2018122615458610968857.png'),
	(44, '446056001010', 'EINHELL', '', 2000, 'ESCOBILLAS4', 'BOGOTA', '20', 'https://toolboxcentersas.website/upload/image2018122615458612232127.png'),
	(45, '441916601012', 'EINHELL', '', 10000, 'ESCOBILLAS5', 'BOGOTA', '10', 'https://toolboxcentersas.website/upload/image2018122615458613585091.png'),
	(46, '425892001016', 'EINHELL', '', 2000, 'ESCOBILLAS6', 'BOGOTA', '20', 'https://toolboxcentersas.website/upload/image2018122615458614893234.png'),
	(47, '209326001016', 'EINHELL', '', 7000, 'ESCOBILLAS7', 'BOGOTA', '10', 'https://toolboxcentersas.website/upload/image2018122615458616127853.png'),
	(48, '425842501072', 'EINHELL', '', 12000, 'ESCOBILLAS8', 'BOGOTA', '10', 'https://toolboxcentersas.website/upload/image2018122615458617267838.png'),
	(49, '425979001016', 'EINHELL', '', 11000, 'ESCOBILLAS9', 'BOGOTA', '20', 'https://toolboxcentersas.website/upload/image2018122615458618872109.png'),
	(50, '443055001031', 'EINHELL', '', 5000, 'ESCOBILLAS10', 'BOGOTA', '20', 'https://toolboxcentersas.website/upload/image2018122615458624456123.png'),
	(51, '443059002039', 'EINHELL', '', 9000, 'ESCOBILLAS11', 'BOGOTA', '20', 'https://toolboxcentersas.website/upload/image2018122615458625746739.png'),
	(52, '425980001016', 'EINHELL', '', 6000, 'ESCOBILLAS12', 'BOGOTA', '20', 'https://toolboxcentersas.website/upload/image2018122815460085858917.png'),
	(53, '425973501018', 'EINHELL', '', 7000, 'ESCOBILLAS13', 'BOGOTA', '30', 'https://toolboxcentersas.website/upload/image2018122815460091723466.png'),
	(54, '413906702094', 'EINHELL', '', 8500, 'ESCOBILLAS14', 'BOGOTA', '10', 'https://toolboxcentersas.website/upload/image2018122815460108161521.png'),
	(55, '443057001056', 'EINHELL', '', 10500, 'ESCOBILLAS15', 'BOGOTA', '10', 'https://toolboxcentersas.website/upload/image2018122815460109648808.png'),
	(56, '446055001008', 'EINHELL', '', 2000, 'ESCOBILLAS16', 'BOGOTA', '10', 'https://toolboxcentersas.website/upload/image2018122815460113183281.png'),
	(57, '43086003037', 'EINHELL', '', 5000, 'ESCOBILLAS17', 'BOGOTA', '10', 'https://toolboxcentersas.website/upload/image2018122815460115642394.png'),
	(58, '433094501065', 'EINHELL', '', 10000, 'ESCOBILLAS18', 'BOGOTA', '10', 'https://toolboxcentersas.website/upload/image2018122815460127862970.png'),
	(59, '432110001024', 'EINHELL', '', 3500, 'ESCOBILLAS19', 'BOGOTA', '10', 'https://toolboxcentersas.website/upload/image2018122815460129555384.png'),
	(60, '443061003037', 'EINHELL', '', 9500, 'ESCOBILLAS20', 'BOGOTA', '18', 'https://toolboxcentersas.website/upload/image2018122815460131094413.png'),
	(61, '425980001018', 'EINHELL', '', 1000, 'PORTAESCOBILLAS', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460136658570.png'),
	(62, '446200001019', 'EINHELL', '', 5000, 'ESCOBILLAS21', 'BOGOTA', '10', 'https://toolboxcentersas.website/upload/image2018122815460141894664.png'),
	(63, '401044001071', 'EINHELL', '', 82000, 'INTERRUPTOR DE PRESION', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460150312073.png'),
	(64, '425845303088', 'EINHELL', '', 12000, 'SWITCH', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460167930355.png'),
	(65, '443059002023', 'EINHELL', '', 3000, 'PIN AUTOBLOQUEANTE', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460172813319.png'),
	(66, '430082002191', 'EINHELL', '', 25000, 'PORTA ESCOBILLAS', 'BOGOTA', '10', 'https://toolboxcentersas.website/upload/image2018122815460175065100.png'),
	(67, '413906702001', 'EINHELL', '', 22000, 'PALANCA DE PARADA', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460177318193.png'),
	(68, '443057001043', 'EINHELL', '', 1500, 'PORTA ESCOBILLAS1', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460179438933.png'),
	(69, '413906702003', 'EINHELL', '', 0, 'ARBUSTO', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460182050376.png'),
	(70, '451349001008', 'EINHELL', '', 30000, 'BATERIA LION', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460183436144.png'),
	(71, '400732502022', 'EINHELL', '', 13000, 'PLACA DE LA VALVULA', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460188548286.png'),
	(72, '443059002003', 'EINHELL', '', 3000, 'BRIDA INTERNA', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460189840291.png'),
	(73, '443059002001', 'EINHELL', '', 3000, 'BRIDA EXTERIOR', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460199007271.png'),
	(74, '425844003026', 'EINHELL', '', 7500, 'PISTON', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460200564905.png'),
	(75, '413906702095', 'EINHELL', '', 0, 'PORTA ESCOBILLAS2', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460202411985.png'),
	(76, '443055001032', 'EINHELL', '', 900, 'PORTA ESCOBILLAS3', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460204928350.png'),
	(77, '446056001011', 'EINHELL', '', 400, 'PORTA ESCOBILLAS4', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460206433780.png'),
	(78, '434527001030', 'EINHELL', '', 7000, 'CUCHILLO DE RECAMBIO', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460208243474.png'),
	(79, '443057001033', 'EINHELL', '', 5000, 'RODAMIENTO 6000Z', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460210314564.png'),
	(80, '441916601018', 'EINHELL', '', 1500, 'TUERCA DE ACERO', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460212050766.png'),
	(81, '446056001012', 'EINHELL', '', 500, 'PORTA ESCOBILLAS5', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460229069835.png'),
	(82, '400732502061', 'EINHELL', '', 14000, 'VALVULA DE SEGURIDAD', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460230538940.png'),
	(83, '413906702093', 'EINHELL', '', 0, 'TAPA DE ESCOBILLA', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460233084461.png'),
	(84, '413906702025', 'EINHELL', '', 16500, 'ANILLO DE SELLADO', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460234835846.png'),
	(85, '400732502019', 'EINHELL', '', 4000, 'JUNTA DE PLACA VALVULA', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460238174105.png'),
	(86, '400732502017', 'EINHELL', '', 4000, 'JUNTA DE CILINDRO', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460239473104.png'),
	(87, '42584403028', 'EINHELL', '', 500, 'ANILLO 18x3.1', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460241395137.png'),
	(88, '443059002037', 'EINHELL', '', 3000, 'PORTA ESCOBILLAS6', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460244912036.png'),
	(89, '446056001022', 'EINHELL', '', 1500, 'PINZA DE FILTRO', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460246693379.png'),
	(90, '413906702007', 'EINHELL', '', 0, 'PIN', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460257738323.png'),
	(91, '413906702004', 'EINHELL', '', 0, 'RESORTE', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460269079504.png'),
	(92, '443086003009', 'EINHELL', '', 400, 'RESORTE1', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460270873746.png'),
	(93, '443059002022', 'EINHELL', '', 200, 'RESORTE2', 'BOGOTA', '10', 'https://toolboxcentersas.website/upload/image2018122815460273841669.png'),
	(94, '443061901023', 'EINHELL', '', 900, 'PIN DE AUTO BLOQUEO', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460276535890.png'),
	(95, '441916601014', 'EINHELL', '', 1500, 'PIN ANTI BLOQUEO', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460279012733.png'),
	(96, '434527001027', 'EINHELL', '', 250, 'TORNILLO HEXAGONAL', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460280384678.png'),
	(97, '434527001029', 'EINHELL', '', 250, 'TORNILLO DE BLOQUEO', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460281908137.png'),
	(98, '213317-4', 'MAKITA', '', 1500, 'ANILLO 20', 'BOGOTA', '2', 'https://toolboxcentersas.website/upload/image2018122815460284775570.png'),
	(99, '213379-2', 'MAKITA', '', 600, 'ANILLO 21', 'BOGOTA', '1', 'https://toolboxcentersas.website/upload/image2018122815460285485225.png'),
	(100, '233940-9', 'MAKITA', '', 700, 'RESORTE 19', 'BOGOTA', '2', 'https://toolboxcentersas.website/upload/image2018122815460286173238.png'),
	(101, '345187-4', 'MAKITA', '', 1700, 'ARANDELA GUIA', 'BOGOTA', '2', 'https://toolboxcentersas.website/upload/image2018122815460286868421.png'),
	(102, '257241-1', 'MAKITA', '', 3100, 'RESORTE 21', 'BOGOTA', '2', 'https://toolboxcentersas.website/upload/image2018122815460287572510.png'),
	(103, '216022-2', 'MAKITA', '', 700, 'BOLA DE ACERO 7', 'BOGOTA', '2', 'https://toolboxcentersas.website/upload/image2018122815460288828626.png'),
	(104, '194996-6', 'MAKITA', '', 11600, 'JUEGO DE ESCOBILLAS CB-303', 'BOGOTA', '3', 'https://toolboxcentersas.website/upload/image2018122815460289699833.png'),
	(105, '651172-0', 'MAKITA', '', 35000, 'SWITCH +', 'BOGOTA', '2', 'https://toolboxcentersas.website/upload/image2018122815460290662479.png'),
	(106, '513706-6', 'MAKITA', '', 148300, 'INDUCIDO / GA5020 + P/GA5020', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2018122815460293861072.png'),
	(107, '425979201019', 'EINHELL', '', 67000, 'INDUCIDO', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460303715087.png'),
	(108, '425893101013', 'EINHELL', '', 43000, 'INDUCIDO', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460305816035.png'),
	(109, '443055601036', 'EINHELL', '', 42000, 'BOBINADO', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460307362171.png'),
	(110, '425973801022', 'EINHELL', '', 64000, 'BOBINA', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460309234328.png'),
	(111, '425973501028', 'EINHELL', '', 30000, 'SWITCH10', 'BOGOTA', '10', 'https://toolboxcentersas.website/upload/image2018122815460311002565.png'),
	(112, '425845303905', 'EINHELL', '', 119000, 'INDUCIDO', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460312001415.png'),
	(113, '425980901014', 'EINHELL', '', 83000, 'INDUCIDO', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460354057665.png'),
	(115, '425897901019', 'EINHELL', '', 59000, 'INDUCIDO', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460355040227.png'),
	(116, '413908401056', 'EINHELL', '', 186000, 'INDUCIDO', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460356666968.png'),
	(117, '443088401004', 'EINHELL', '', 0, 'INDUCIDO', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460358129629.png'),
	(118, '443059401033', 'EINHELL', '', 43500, 'BOBINA', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460359586996.png'),
	(119, '443057901032', 'EINHELL', '', 178000, 'INDUCIDO', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460360439598.png'),
	(120, '443055601003', 'EINHELL', '', 43000, 'INDUCIDO', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460361448588.png'),
	(121, '425974201016', 'EINHELL', '', 75000, 'INDUCIDO', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460362123405.png'),
	(122, '443059401028', 'EINHELL', '', 63500, 'INDUCIDO', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460362897576.png'),
	(123, '425973501002', 'EINHELL', '', 100000, 'MANDRIL', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460365851211.png'),
	(124, '425980001002', 'EINHELL', '', 25000, 'MANDRIL LLAVE', 'BOGOTA', '2', 'https://toolboxcentersas.website/upload/image2018122815460367614971.png'),
	(125, '425973501901', 'EINHELL', '', 9000, 'SOPORTE CON RODAMIENTO', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460368924193.png'),
	(126, '432108601063', 'EINHELL', '', 22000, 'EMSAMBLADOR DE EMBOLO', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460371073296.png'),
	(127, '430082002193', 'EINHELL', '', 300, 'TAPA ESCOBILLAS', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460372755393.png'),
	(128, '432108601062', 'EINHELL', '', 4000, 'RODAMIENTO DESLIZABLE SUPERIOR', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460374128840.png'),
	(129, '432110001006', 'EINHELL', '', 2000, 'PINZA DE HOJA', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460375684675.png'),
	(130, '433094501066', 'EINHELL', '', 1000, 'PORTA ESCOBILLAS7', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460376891289.png'),
	(131, '433097001077', 'EINHELL', '', 7000, 'BRIDA EXTERIOR', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460378263070.png'),
	(132, '432108601040', 'EINHELL', '', 10500, 'PLATO BASE', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460379929620.png'),
	(133, '425973501033', 'EINHELL', '', 2000, 'MANDO BLOQUEO DE EJE', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460381593803.png'),
	(134, '425973501034', 'EINHELL', '', 200, 'RESORTE3', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460382857786.png'),
	(135, '425973501035', 'EINHELL', '', 1000, 'BLOQUEO DE EJE1', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460384212172.png'),
	(136, '434527001061', 'EINHELL', '', 5500, 'CORREA', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460385342466.png'),
	(137, '432108601034', 'EINHELL', '', 2500, 'CUBIERTA PLACA BASE', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122815460386569554.png'),
	(138, '451132501009', 'EINHELL', '', 85000, 'BATERIA', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122915460908973832.png'),
	(139, '400732502024', 'EINHELL', '', 4000, 'FILTRO DE AIRE', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122915460910411698.png'),
	(140, '400732502060', 'EINHELL', '', 36000, 'SWITCH', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122915460911551329.png'),
	(141, '441915401901', 'EINHELL', '', 41500, 'INDUCIDO', 'BOGOTA', '5', 'https://toolboxcentersas.website/upload/image2018122915460912534611.png'),
	(142, 'G1 2/8', 'GENERAL', '', 500, 'TORNILLO HEXAGONAL', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019010415466243628717.png'),
	(143, 'G1 2/8 TU', 'GENERAL', '', 500, 'TUERCA DE SEGURIDAD', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019010415466244533307.png'),
	(144, 'CLAG1', 'GENERAL', '', 2500, 'CLAVIJA CAUCHO', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019010415466246854774.png'),
	(145, '450067-2', 'MAKITA', 'BASE LIJADORA', 0, 'BASE LIJADORA', 'Bogota', '0', 'https://toolboxcentersas.website/upload/image2019011815478266840421.png'),
	(146, '510239-2', 'MAKITA', '', 204400, 'INDUCIDO 2414NB', 'Bogota', '1', 'https://toolboxcentersas.website/upload/image2019011815478365288355.png'),
	(147, '154551-6', 'makita', '', 49300, 'GEAR HOUSING COVER COMPLETE + P/JR3070CT', '', '0', 'https://toolboxcentersas.website/upload/image2019012315482575946388.png'),
	(149, '317842-8', 'makita', '', 72900, 'GEAR HOUSING + P/JR3070CT', '', '0', 'https://toolboxcentersas.website/upload/image2019012315482578827061.png'),
	(150, '421904-7', 'makita', '', 55900, 'INSULATION COVER + P/JR3070CT', '', '0', 'https://toolboxcentersas.website/upload/image2019012315482579508798.png'),
	(151, '310285-3', 'makita', '', 23300, 'GUIA + P/JR3050T/JR3070CT/BJR181', 'Bogota', '0', 'https://toolboxcentersas.website/upload/image2019012315482581533727.png'),
	(152, '168410-8', 'makita', '', 55000, 'SLIDER + P/JR3070CT', '', '0', 'https://toolboxcentersas.website/upload/image2019012315482586786354.png'),
	(153, '214170-1', 'makita', '', 4300, 'PLANE BEARING 14A + P/JR3070CT/BJR181/BJR182', '', '0', 'https://toolboxcentersas.website/upload/image2019012315482587275122.png'),
	(154, '154547-7', 'makita', '', 14400, 'BEARING COMPLETE + P/JR3070CT', '', '0', 'https://toolboxcentersas.website/upload/image2019012315482587792995.png'),
	(155, '650222-8', 'makita', '', 123200, 'SWITCH TG71ARS-1 + P/JR3070CT', '', '0', 'https://toolboxcentersas.website/upload/image2019012315482588233432.png'),
	(156, '424147-0', 'Makita', '', 1900, 'ANILLO ESPACIADOR 24-HR5201C', '', '0', 'https://toolboxcentersas.website/upload/image2019012315482589961162.png'),
	(157, '517791-1', 'Makita', '', 199990, 'ARMATURE ASS\'Y 115V + P/GA9020/GA7020/GA7021', '', '0', 'https://toolboxcentersas.website/upload/image2019012815487051692034.png'),
	(158, '194992-4', 'makita', '', 12800, 'JUEGO DE ESCOBILLAS CB-204 ', '', '0', 'https://toolboxcentersas.website/upload/image2019012815487073295443.png'),
	(159, '0001', 'Makita', '', 14000, 'CONECTORES PORTA ESCOBILLAS GA7020 ', '', '2', 'https://toolboxcentersas.website/upload/image2019012815487076506713.png'),
	(160, '211132-0', 'Makita', '', 11800, 'RODAMIENTO 6301DDW + P/GA9020/GA7020', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019012815487084526535.png'),
	(161, '643712-8', 'Makita', '', 9500, 'BRUSH HOLDER + P/GA9020', '', '0', 'https://toolboxcentersas.website/upload/image2019012815487088263322.png'),
	(162, '526156-6', 'Makita', '', 170200, 'CAMPO 115V + P/GA9020/GA7020/GA7021', '', '0', 'https://toolboxcentersas.website/upload/image2019012815487089999689.png'),
	(163, '210075-3', 'Makita', '', 11300, 'RODAMIENTO 6200DDW', '', '0', 'https://toolboxcentersas.website/upload/image2019012815487094594994.png'),
	(164, '211087-9', '', '', 11300, 'RODAMIENTO 6200DDW +', '', '0', 'https://toolboxcentersas.website/upload/image2019012815487095410095.png'),
	(165, '520071-6', 'Makita', '', 170200, 'FIELD ASS\'Y 115V + P/GA9020', '', '0', 'https://toolboxcentersas.website/upload/image2019012815487099590268.png'),
	(166, '513447-4', 'Makita', '', 164100, 'ARMATURE ASS\'Y 115V ', '', '0', 'https://toolboxcentersas.website/upload/image2019012815487104764502.png'),
	(167, '632F76-1', 'Makita', '', 47900, 'SWITCH UNIT', '', '0', 'https://toolboxcentersas.website/upload/image2019012815487105426969.png'),
	(168, '643715-2', 'Makita', '', 4200, 'BRUSH HOLDER', '', '0', 'https://toolboxcentersas.website/upload/image2019012815487106124313.png'),
	(169, '197128-4', 'Makita', '', 13000, 'CARBON BRUSH CB-218 + P/GA7060/GA9060', '', '0', 'https://toolboxcentersas.website/upload/image2019012815487106750124.png'),
	(170, '621777-0', 'Makita', '', 128500, 'FIELD 115V + P/GA7060/', '', '0', 'https://toolboxcentersas.website/upload/image2019012815487108923600.png'),
	(171, '650101-0', 'Makita', '', 73800, 'SWITCH TG08-1100-011', '', '0', 'https://toolboxcentersas.website/upload/image2019012815487121484285.png'),
	(172, '456247-8', 'Makita', '', 1300, 'PIN CAP + P/GA7060/GA906', '', '0', 'https://toolboxcentersas.website/upload/image2019012815487124923689.png'),
	(173, '234391-9', 'Makita', '', 200, 'COMPRESSION SPRING 8 + P/GA7060', '', '0', 'https://toolboxcentersas.website/upload/image2019012815487125456711.png'),
	(174, '256571-7', 'Makita', '', 2500, 'SHOULDER PIN 7 + P/GA7060/', '', '0', 'https://toolboxcentersas.website/upload/image2019012815487126065297.png'),
	(175, '211032-4', 'Makita', '', 6600, 'BALL BEARING 608ZZ + P/HR2470', '', '0', 'https://toolboxcentersas.website/upload/image2019012815487128012500.png'),
	(176, '233292-8', 'Makita', '', 300, 'RESORTE COMPRESION 12 ', '', '0', 'https://toolboxcentersas.website/upload/image2019012815487160133813.png'),
	(177, '419133-4', 'Makita', '', 700, 'PERNO OBTURADOR P/3709 + P/GA9020', '', '0', 'https://toolboxcentersas.website/upload/image2019012815487160794315.png'),
	(178, '256491-5', 'Makita', '', 1900, 'SOPORTE DEL PERNO P/GA7021 +', '', '0', 'https://toolboxcentersas.website/upload/image2019012815487161277830.png'),
	(179, '664463-0', 'Makita', '', 62400, 'CABLE SUMINISTRO ELECTRICO + P/GA9020/', '', '0', 'https://toolboxcentersas.website/upload/image2019012815487197589208.png'),
	(180, '211285-5', 'Makita', '', 8200, 'RODAMIENTO 6203DDW + P/GA9020/GA7020', '', '0', 'https://toolboxcentersas.website/upload/image2019012915487276733983.png'),
	(181, '211062-5', 'Makita', '', 8200, 'RODAMIENTO 6000ZZ + P/GA9020/GA7020', '', '0', 'https://toolboxcentersas.website/upload/image2019012915487285976788.png'),
	(184, '520057-0', 'Makita', '', 92500, 'CAMPO 115V + P/GA5020', '', '0', 'https://toolboxcentersas.website/upload/image2019012915488029900013.png'),
	(185, '651195-8', 'Makita', '', 39500, 'SWITCH TG933TNB-1 + P/GA5020', '', '0', 'https://toolboxcentersas.website/upload/image2019012915488030540753.png'),
	(186, '210059-1', 'Makita', '', 6300, 'RODAMIENTO 6000DDW + ', 'BOGOTA', '4', 'https://toolboxcentersas.website/upload/image2019012915488032506021.png'),
	(187, '227519-6', 'Makita', '', 26100, 'PIÑON ESPIRAL 34B + P/GA5020/GA5020-220V', '', '0', 'https://toolboxcentersas.website/upload/image2019012915488044917350.png'),
	(188, '227517-0', 'Makita', '', 11000, 'PIÑON ESPIRAL 13 + P/GA5020/GA5020-220V', '', '0', 'https://toolboxcentersas.website/upload/image2019012915488045419357.png'),
	(189, '211236-8', 'Makita', '', 15000, 'RODAMIENTO 6002DDW + P/GA5020/5007N', '', '0', 'https://toolboxcentersas.website/upload/image2019012915488045993842.png'),
	(190, '318299-6', 'Makita', '', 15100, 'BEARING BOX + P/GA5020/GA5020C/GA5020-220V', '', '0', 'https://toolboxcentersas.website/upload/image2019013115489553217218.png'),
	(191, '227522-7', 'Makita', '', 27700, 'PIÑON HELICOIDAL GA5021 35B', '', '0', 'https://toolboxcentersas.website/upload/image2019013115489555412933.png'),
	(192, '651060-1', '', '', 43100, 'SWITCH TG933TRA-1 + P/GA5020C', '', '0', 'https://toolboxcentersas.website/upload/image2019013115489556950621.png'),
	(193, '513881-8', 'Makita', '', 169300, 'ARMATURE ASS\'Y 115V + P/GA5020C/PC5000C', '', '1', 'https://toolboxcentersas.website/upload/image2019013115489559104038.png'),
	(194, '194998-2', 'Makita', '', 13500, 'JUEGO DE ESCOBILLAS CB-311 + P/GA5020', '', '0', 'https://toolboxcentersas.website/upload/image2019013115489583722236.png'),
	(195, '194994-0', 'MAKITA', '', 14200, 'JUEGO DE ESCOBILLAS CB-253 + P/GA5020c', '', '0', 'https://toolboxcentersas.website/upload/image2019013115489590566134.png'),
	(196, '211480-7', 'MAKITA', '', 4600, 'BALL BEARING 6000ZZ + P/GA9020/GA7020', '', '0', 'https://toolboxcentersas.website/upload/image2019013115489596366526.png'),
	(197, '643700-5', 'MAKITA', '', 1500, 'TAPON DE ESCOBILLAS 7-18 *', '', '0', 'https://toolboxcentersas.website/upload/image2019013115489675428165.png'),
	(198, '763430-3', 'MAKITA', '', 6000, 'llave mandril 1/2', 'toolbox', '0', 'https://toolboxcentersas.website/upload/image2019020515493855626564.png'),
	(199, '651280-7', 'MAKITA', '', 25000, 'INTERRUPTOR PARA 3620', '', '0', 'https://toolboxcentersas.website/upload/image2019020515494079301280.png'),
	(200, '510083-7', 'MAKITA', '', 59000, 'INDUCIDO', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019020715495534204311.png'),
	(201, '210034-7', 'MAKITA', '', 2500, 'RODAMIENTO', 'BOGOTA', '1', 'https://toolboxcentersas.website/upload/image2019020715495534826283.png'),
	(202, '210042-8', 'MAKITA', '', 7600, 'RODAMIENTO', 'BOGOTA', '2', 'https://toolboxcentersas.website/upload/image2019020715495535097213.png'),
	(203, '195001-2', 'MAKITA', '', 6500, 'ESCOBILLAS', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019020715495535418821.png'),
	(204, '518736-6', 'MAKITA', '', 85000, 'INDUCIDO', 'BOGOTA', '1', 'https://toolboxcentersas.website/upload/image2019020715495536441518.png'),
	(205, 'HY00000030', 'Makita', '', 2500, 'NOSE ADAPTER + P/AF505', '', '0', 'https://toolboxcentersas.website/upload/image2019020815496493946797.png'),
	(206, 'HY00000018', 'Makita', '', 46000, 'DRIVER COMPLETE + P/AF505N/AF505', '', '0', 'https://toolboxcentersas.website/upload/image2019020815496494888791.png'),
	(207, 'HY00000017', 'MAKITA', '', 1700, 'O-RING 24 + P/AF505N/AF505', '', '0', 'https://toolboxcentersas.website/upload/image2019020815496628758899.png'),
	(208, 'HY00000016', 'MAKITA', '', 1300, 'O-RING 46 + P/AF505N/AT638A/AF505', '', '0', 'https://toolboxcentersas.website/upload/image2019020815496629248295.png'),
	(209, 'HY00000008', 'Makita', '', 1400, 'CUSHION V + P/AF505N/AT638A/AF505', '', '0', 'https://toolboxcentersas.website/upload/image2019020815496629728417.png'),
	(210, 'HY00000004', 'Makita', '', 1200, 'RUBBER WASHER 7 + P/AF505N/AT638A/AF505', '', '0', 'https://toolboxcentersas.website/upload/image2019020815496630575948.png'),
	(211, 'HY00000010', 'Makita', '', 800, 'O-RING 12 + P/AF505N/AT638A/AF353/AF505', '', '0', 'https://toolboxcentersas.website/upload/image2019020815496631061675.png'),
	(212, 'HY00000011', 'Makita', '', 1400, 'O-RING 33 + P/AF505N/AT638A/AF505', '', '0', 'https://toolboxcentersas.website/upload/image2019020815496631518169.png'),
	(213, 'HY00000013', 'Makita', '', 1800, 'O-RING 29 + P/AF505N/AF505', '', '0', 'https://toolboxcentersas.website/upload/image2019020815496632218702.png'),
	(214, '126270-4', 'MAKITA', '', 180800, 'BOBINA PS32/EA3200', '', '0', 'https://toolboxcentersas.website/upload/image2019020915497383356745.png'),
	(215, '168401-9', '', '', 30200, 'BUJIA P/BHX2500 + P/EBH340U/EA3203S/BHX2500', '', '0', 'https://toolboxcentersas.website/upload/image2019020915497383917248.png'),
	(216, '211228-7', 'MAKITA', '', 11500, 'rodamiento 6202DW', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019021815505271081865.png'),
	(217, '743081-8', 'MAKITA', '', 46639, 'COJINETE 123 + P/BO5030/BO5010/BO5041K', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019021815505275302247.png'),
	(218, '51-36-7090', 'Miwaukee', '', 30000, 'Hook-and-Loop Sanding Disc Assembly', '', '0', 'https://toolboxcentersas.website/upload/image2019022015507016802611.png'),
	(219, '14-20-0185 ', 'Milwaukee', '', 129000, 'PCB ASSY, AC RO SANDER', 'Bogota', '1', 'https://toolboxcentersas.website/upload/image2019022015507021058740.png'),
	(222, '515311-5', 'MAKITA', '', 125800, 'INDUCIDO + P/GV5010', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019022215508737796528.png'),
	(223, '194971-2', 'MAKITA', '', 9700, 'JUEGO DE ESCOBILLAS', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019022215508740154948.png'),
	(224, '211031-6', 'MAKITA', '', 5700, 'RODAMIENTO 608LLB ', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019022215508740789683.png'),
	(225, '210023-2', 'MAKITA', '', 6500, 'RODAMIENTO 627DDW', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019022215508741379612.png'),
	(226, '743025-8', 'MAKITA', '', 16303, 'RESPALDO PLASTICO + 5"', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019022215508742088781.png'),
	(227, '253951-8', 'MAKITA', '', 3529, 'ARANDELA 10 P/GV5000 ', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019022215508742692632.png'),
	(230, '265812-0', 'MAKITA', '', 1400, 'TORNILLO HEX. M8X20', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019022215508746293513.png'),
	(231, '453786-9', 'MAKITA', '', 8900, 'CAM PLATE + P/EA3203S/EA3502S/EA3501S', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019022615511923300043.png'),
	(233, '14200185', 'MIWAUKEE', '', 150000, 'PCB ASSY, AC RO SANDER', '', '0', 'https://toolboxcentersas.website/upload/image2019022815513888638495.png'),
	(234, '1 612 026 037', 'BOSCH', '', 45000, 'MANETA NEGRO', '', '0', 'https://toolboxcentersas.website/upload/image2019022815513891614564.png'),
	(235, '1 610 508 008', 'BOSCH', '', 15000, 'Caperuza de protección', '', '0', 'https://toolboxcentersas.website/upload/image2019022815513892793045.png'),
	(236, '210006-2', 'MAKITA', '', 6000, 'RODAMIENTO 696ZZ', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019030115514733732604.png'),
	(237, '651298-8', 'MAKITA', '', 79900, 'SWITCH + P/UB1103/UB1101', '', '0', 'https://toolboxcentersas.website/upload/image2019030815520802820314.png'),
	(238, '414145-2', 'MAKITA', '', 1500, 'JOINT 4014N + P/DUB182/LXCV02/UB1101', '', '0', 'https://toolboxcentersas.website/upload/image2019030815520804343966.png'),
	(239, '401229-19', 'BLACK & DECKER', '', 23500, 'MANDRIL TB550 3/8', '', '0', 'https://toolboxcentersas.website/upload/image2019031115523434592042.png'),
	(240, '257804-3', 'MAKITA', '', 5500, 'SHOULDER SLEEVE 7 + P/JV0600', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019031115523480707559.png'),
	(241, '232183-0', 'MAKITA', '', 1000, 'LEAF SPRING 4324 + P/JV0600', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019031115523481725381.png'),
	(243, '253180-3', 'MAKITA', '', 600, 'FLAT WASHER 10 6223D', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019031115523484772950.png'),
	(245, '216008-6', 'MAKITA', '', 200, 'BOLA DE ACERO 4', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019031115523486882642.png'),
	(246, '211241-5', 'MAKITA', '', 5900, 'RODAMIENTO 6202DDW', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019031315524905907252.png'),
	(247, 'JM27000168', 'MAKITA', '', 4700, 'PERILLA P/MLT100', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019031315524912478022.png'),
	(248, 'JM27000133', 'MAKITA', '', 76700, 'SWITCH ASSI 7 SWB SOX CAX ', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019031315524914501846.png'),
	(249, 'JM27000307', 'MAKITA', '', 303400, 'ARMADURA (120V) P/MLT100', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019031315524916660012.png'),
	(250, 'JM27000294', 'MAKITA', '', 900, 'TAPA DE LA ESCOBILLA DE CARBON', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019031315524919155214.png'),
	(251, 'JM23000123', 'MAKITA', '', 10200, 'JUEGO DE ESCOBILLAS ', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019031315524922688703.png'),
	(252, '30050004713', 'STIHL', '', 117453, 'ESPADA STIHL DE 44 CMTRS', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019031315525028886645.png'),
	(253, '257804-3	', 'MAKITA', '', 5500, 'SHOULDER SLEEVE 7 + P/JV0600', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019032115531748462230.png'),
	(255, '1004686-31', '', '', 410000, 'BODY', 'Duitama', '0', 'https://toolboxcentersas.website/upload/image2019032715537150070138.png'),
	(256, '1004685', 'DeWalt', '', 270000, 'SPINDLE ASSEMBLY', '', '0', 'https://toolboxcentersas.website/upload/image2019032715537152284813.png'),
	(258, '513631-1', 'MAKITA', '', 217100, 'INDUCIDO 115V + P/HR4001C/HR4010C', '', '0', 'https://toolboxcentersas.website/upload/image2019032915538973232024.png'),
	(259, '638715-5', 'MAKITA', '', 21100, 'PORTA ESCOBILLAS + P/HR4001C/HR4010C', 'Duitama', '0', 'https://toolboxcentersas.website/upload/image2019032915538974817809.png'),
	(260, '197244-2', 'MAKITA', '', 19360, 'CARBON BRUSH CB-351 ', '', '0', 'https://toolboxcentersas.website/upload/image2019032915538975992936.png'),
	(261, '419135-0', 'MAKITA', '', 2000, 'PLACA DIFUSORA P/GA7021 + P/GA9020/GA7020', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019033015539641169938.png'),
	(262, '158401-7', 'MAKITA', '', 16800, 'PALANCA DE INTERRUPTOR', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019033015539656572309.png'),
	(263, '518746-9', 'MAKITA', '', 159000, 'INDUCIDO 115V + P/GA9050/GA7050R/GA7050', '', '1', 'https://toolboxcentersas.website/upload/image2019033015539664102683.png'),
	(264, '523411-7', 'MAKITA', '', 115200, 'FIELD ASSEMBLY 115V + P/GA9050/GA7050R/GA7050', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019033015539665964161.png'),
	(265, '650109-4', 'MAKITA', '', 49600, '650109-4', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019033015539666808339.png'),
	(267, '621706-3', 'MAKITA', '', 57800, 'CAMPO 115V + P/9557HP/9557PB', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019040115541404659892.png'),
	(268, '664891-9', 'MAKITA', '', 24300, 'CABLE SUMINISTRO ELECTRICO + P/9557HP/9557PB', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019040115541408632109.png'),
	(269, '515116-3', 'MAKITA', '', 151500, 'NDUCIDO 115V + P/GV5000', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019040215542224338339.png'),
	(270, '0120215 0000105', 'ALTERMAN', '', 22600, 'ARRANQUE COMPLETO EGG2400', '', '0', 'https://toolboxcentersas.website/upload/image2019040215542287528752.png'),
	(271, '290306', 'ALTERMAN', '', 70100, 'AVR P', '', '1', 'https://toolboxcentersas.website/upload/image2019040215542288890124.png'),
	(273, 'J35240', 'ALTERMAN', '', 129800, 'BOBINA ENCENDIDO 302cc/ 6.5 HP ALTERMAN', '', '1', 'https://toolboxcentersas.website/upload/image2019040215542295395511.png'),
	(274, '388140', 'ALTERMAN', '', 52000, 'CARBURADOR EGG2400 ', '', '1', 'https://toolboxcentersas.website/upload/image2019040215542296283642.png'),
	(275, '211033-2', 'MAKITA', '', 5700, 'BALL BEARING 608DDW', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019040215542300732181.png'),
	(277, '214004-8', 'MAKITA', '', 1300, 'BALERO P/6510LVR, GV5000', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019040215542311110908.png'),
	(278, '233376-2', 'MAKITA', '', 300, 'RESORTE COMPRESION 8 + P/9557HP', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019040215542323970430.png'),
	(279, '417771-6', 'MAKITA', '', 600, 'TAPA DEL PERNO P/MT950 + P/9557HP/', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019040215542324624812.png'),
	(280, '213960-9', 'MAKITA', '', 300, 'ANILLO 5 + P/9557HP/M9510/9557PB/9557HN', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019040215542325440783.png'),
	(281, '256486-8', 'MAKITA', '', 2000, 'SOPORTE DEL PERNO P/9554NB', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019040215542326184038.png'),
	(282, '517826-8', 'MAKITA', '', 157300, 'INDUCIDO 115V + P/GA9030', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019040215542435886929.png'),
	(284, '419566-3', 'MAKITA', '', 2000, 'BOTON SWITCH + P/9557HN/9554HN', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019040215542445813919.png'),
	(285, '520068-5', 'MAKITA', '', 172200, 'CAMPO 115V + P/GA9030', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019040315543051317183.png'),
	(286, '162535-0', 'MAKITA', '', 0, 'DAMPER COMPLETE', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019040315543275276583.png'),
	(287, '168816-0', 'MAKITA', '', 43800, 'IGNITION COIL + P/EBH340U/BHX2500/EW1050H', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019040315543275652745.png'),
	(289, '515611-3', 'MAKITA', '', 58500, 'INDUCIDO 115V + P/9557HP/9557PB/9557HN', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019040415543982845624.png'),
	(291, '123098-1', 'MAKITA', '', 19000, 'GUARDA PULIDORA 4-1/2" + P/MGA90B', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019040415543986188747.png'),
	(292, '210029-0', 'MAKITA', '', 7000, 'BALL BEARING 608ZZ ', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019040815547559012847.png'),
	(293, '195141-6', 'MAKITA', '', 35800, 'SET ANILLOS PISTON + P/EBH340U/EBH340R', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019040815547603299689.png'),
	(294, '197454-1', 'MAKITA', '', 47100, 'PISTON SET + P/EBH340U', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019040815547603950908.png'),
	(295, '443171-4', 'MAKITA', '', 3200, 'AIR CLEANER ELEMENT + P/EBH340U', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019040815547604728001.png'),
	(296, '443169-1', 'MAKITA', '', 4200, 'AIR CLEANER ELEMENT + P/EBH340U', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019040815547605364188.png'),
	(297, '125757-3', 'MAKITA', '', 14400, 'CLUTCH ASSEMBLY + P/EBH340U', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019040815547606153232.png'),
	(298, 'AN04002000', 'MAKITA', '', 21000, 'CLUTCH SHOE + P/EBH340U', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019040815547607195736.png'),
	(299, '233375-4', 'MAKITA', '', 200, 'RESORTE COMPRESION + P/GA7040R/GA9030', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019041115550147121559.png'),
	(300, '654197-3', 'MAKITA', '', 1500, 'ANILLO TERMINAL P/GA7021 + P/GA9020', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019041115550150512922.png'),
	(301, '419144-9', 'MAKITA', '', 2000, 'BUMPER + P/GA9020/GA7020/GA7040R/GA9030', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019041115550178279755.png'),
	(303, 'N259979', 'DEWALT', '', 28211, 'SET ESCOBILLA DWE4579/77', 'BOGOTA', '1', 'https://toolboxcentersas.website/upload/image2019041115550193467030.png'),
	(304, '266361-0', 'MAKITA', '', 200, 'TORNILLO ROSCADOR P/9554NB', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019041115550207732818.png'),
	(305, 'N409482', 'DEWALT', '', 92000, 'INDUCIDO DWE4212', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019041115550226996065.png'),
	(306, 'N257540', 'DEWALT', '', 12000, 'ESCOBILLAS DWE4212', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019041115550228108431.png'),
	(307, 'N175104', 'DEWALT', '', 7000, 'RODAMIENTO DWE4120-B3', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019041115550229780250.png'),
	(308, '939539-00', 'DEWALT', '', 16000, 'ESCOBILLAS DW818', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019041115550238937544.png'),
	(309, '562097-13', 'DEWALT', '', 1000, 'TORNILLO CARCASA ', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019041115550240381006.png'),
	(310, '569624-01', 'DEWALT', '', 5000, 'BOTON INTERRUPTOR DW818', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019041115550262901460.png'),
	(311, 'N110359', 'DeWalt', '', 8000, 'RODAMIENTO DWE4579/59/57', '', '0', 'https://toolboxcentersas.website/upload/image2019041215550912644425.png'),
	(312, 'N-203632 ', 'DeWalt', '', 130000, 'INDUCIDO DWE4579-4577', '', '0', 'https://toolboxcentersas.website/upload/image2019041215550919241121.png'),
	(313, '394375-04', 'DeWalt', '', 38000, 'INTERRUPTOR D28476/94/96', 'Bogota', '0', 'https://toolboxcentersas.website/upload/image2019041215550974400374.png'),
	(314, '605040-27', 'DeWalt', '', 9900, 'RODAMIENTO D28474WB3', 'Bogota', '0', 'https://toolboxcentersas.website/upload/image2019041215550976580806.png'),
	(315, '609970-00', 'DeWalt', '', 7000, 'RETENEDOR D28494M/474W', 'Bogota', '0', 'https://toolboxcentersas.website/upload/image2019041215550979481590.png'),
	(319, '421868-5', 'MAKITA', '', 2300, 'ANILLO DE GOMA P/9554NB + P/9557HP', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019041315551779245077.png'),
	(320, 'N034411', 'DEWALT', '', 14400, 'ESCOBILLA DWD010/014/024', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019041615554574313636.png'),
	(321, '456240-2', 'MAKITA', '', 78100, 'MOTOR HOUSING + P/GA7060/GA9060/GA7063R', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019041715555112201537.png'),
	(322, '265541-5', 'MAKITA', '', 500, 'TORNILLO DE CABEZA HEX. + P/GA9020/GA7020', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019041715555113820303.png'),
	(323, '196454-8', 'MAKITA', '', 31000, 'JUEGO DE ESCOBILLAS CB-318 + P/9564CV', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019041715555128624463.png'),
	(324, '510376-2', 'MAKITA', '', 153400, 'ARMATURE ASS\'Y 115V + P/GA4540C/PC5010C', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019041715555129640557.png'),
	(325, '401751-00', 'DEWALT', '', 12452, 'PASACABLE DW520', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019042315560635655693.png'),
	(326, '515731-3', 'MAKITA', '', 93500, 'INDUCIDO + P/BO5030/BO5041', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019042515562036539080.png'),
	(327, '5140110-67', 'DEWALT', '', 45807, 'INTERRUPTOR DW887', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019042515562052441747.png'),
	(328, '445861-25', 'DEWALT', '', 12000, 'ESCOBILLA DW313/402/411', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019042515562053956751.png'),
	(329, '445217-01', 'DEWALT', '', 9000, 'RUBBER CUP', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019042515562071351496.png'),
	(330, 'F000.608.089', 'SKIL', '', 32000, 'INTERRUPTOR SKIL', '', '1', 'https://toolboxcentersas.website/upload/image2019042515562157010842.png'),
	(331, '324425-7', 'MAKITA', '', 1000, 'LOCK PIN + P/M3600/MRP100/MRP101/MRP102', '', '2', 'https://toolboxcentersas.website/upload/image2019042615563110957068.png'),
	(332, 'N094853', 'DEWALT', '', 5000, 'BAFLE DWE4579/59/57/77-B', '', '1', 'https://toolboxcentersas.website/upload/image2019042615563171491769.png'),
	(335, 'N111898', 'DEWALT', '', 3000, 'TAPA ESCOBILLA DWE4577', '', '1', 'https://toolboxcentersas.website/upload/image2019042615563175113261.png'),
	(336, '16-07-5316', 'MILWAUKEE', '', 286068, 'MOTOR ARMATURE 120V-60HZ', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019042715563879661859.png'),
	(337, '23-66-5315', 'MILWAUKEE', '', 66664, 'TRIGGER SWITCH W / WIRES ASS\'Y', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019042715563880984701.png'),
	(338, '22-18-6025', 'MILWAUKEE', '', 26272, 'BRUSH SERVICE KIT', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019042715563882004496.png'),
	(339, '195025-8', 'MAKITA', '', 6800, 'ESCOBILLAS CB-458', 'BOGOTA', '1', 'https://toolboxcentersas.website/upload/image2019042915565474920591.png'),
	(340, 'N116820', 'DEWALT', '', 51500, 'CORDON ENER DWE4577/79', '', '1', 'https://toolboxcentersas.website/upload/image2019042915565520708938.png'),
	(341, 'N094854', 'DEWALT', '', 5000, 'STATOR DWE4579/59/57/77-', '', '1', 'https://toolboxcentersas.website/upload/image2019042915565526403396.png'),
	(342, '330019-32', 'DEWALT', '', 2000, 'TORNILLO D28490', '', '10', 'https://toolboxcentersas.website/upload/image2019042915565530690622.png'),
	(343, '1604.011.155-000', 'BOSCH', '', 756500, 'INDUCIDO', '', '1', 'https://toolboxcentersas.website/upload/image2019042915565551412713.png'),
	(344, '1604.220.387-000', 'BOSCH', '', 209600, 'CAMPO SEGMENTADO', '', '1', 'https://toolboxcentersas.website/upload/image2019042915565552725530.png'),
	(345, '1607.014.171-000', 'BOSCH', '', 52900, 'JUEGO DE ESCOBILLAS', '', '1', 'https://toolboxcentersas.website/upload/image2019042915565553622171.png'),
	(346, '635998-01', 'DEWALT', '', 157000, 'INDUCIDO D28474W', '', '0', 'https://toolboxcentersas.website/upload/image2019042915565578037993.png'),
	(347, '392574-01', 'DEWALT', '', 11500, 'ESCOBILLA D28476W', '', '0', 'https://toolboxcentersas.website/upload/image2019042915565582984571.png'),
	(348, '394387-00', 'DEWALT', '', 4500, 'TAPA ESC D28747W/494W', '', '1', 'https://toolboxcentersas.website/upload/image2019042915565583580288.png'),
	(351, '515616-3', 'MAKITA', '', 59800, 'IDUCIDO 115V + P/9554HN/9554NB', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019050215568205599373.png'),
	(352, '211142-7', 'MAKITA', '', 10700, 'RODAMIENTO 6001LLB + P/9564P/9564CV', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019050215568209273849.png'),
	(353, '211129-9', 'MAKITA', '', 19000, 'RODAMIENTO 6201DDW + P/9557HP/9557PB', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019050215568210342964.png'),
	(354, '664265-4', 'MAKITA', '', 65600, 'CABLE SUMINISTRO ELECTRICO + P/GA5020/9564P', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019050215568211107991.png'),
	(355, '660002-4', 'MAKITA', '', 30000, 'CABLE SUMINISTRO ELECTRICO ', 'BOGOTA', '0', 'https://toolboxcentersas.website/upload/image2019050215568212427316.png'),
	(356, 'wert', 'wert', 'wert', 0, 'wert', 'wert', '12', 'http://localhost/TOOLBOXCENTER/upload/image2019050415569893354173.png'),
	(357, 'prueba', 'asdf', 'rgsdfg', 50000, 'alcollazosc', 'Tunja', '2', 'http://localhost/TOOLBOXCENTER/upload/image2019050715572066556841.png');
/*!40000 ALTER TABLE `repuesto` ENABLE KEYS */;

-- Volcando estructura para tabla u107806033_tool.servicio_tecnico
CREATE TABLE IF NOT EXISTS `servicio_tecnico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_empleado` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_estado_equipo` int(11) NOT NULL,
  `id_equipo_servicio_tecnico` int(11) NOT NULL,
  `fecha_recibido` datetime DEFAULT NULL,
  `fecha_entrega` datetime DEFAULT NULL,
  `descripcion_problema` text NOT NULL,
  `costo_mano_obra` decimal(10,0) NOT NULL DEFAULT '0',
  `costo_repuestos` decimal(10,0) NOT NULL DEFAULT '0',
  `iva` decimal(10,2) NOT NULL DEFAULT '0.19',
  `estado` varchar(45) NOT NULL DEFAULT 'RECIBIDO',
  PRIMARY KEY (`id`),
  KEY `fk_servicio_tecnico_empleado1_idx` (`id_empleado`),
  KEY `fk_servicio_tecnico_cliente1_idx` (`id_cliente`),
  KEY `fk_servicio_tecnico_estado_equipo1_idx` (`id_estado_equipo`),
  KEY `fk_servicio_tecnico_equipo_servicio_tecnico1_idx` (`id_equipo_servicio_tecnico`),
  CONSTRAINT `fk_servicio_tecnico_cliente1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_servicio_tecnico_empleado1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_servicio_tecnico_equipo_servicio_tecnico1` FOREIGN KEY (`id_equipo_servicio_tecnico`) REFERENCES `equipo_servicio_tecnico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_servicio_tecnico_estado_equipo1` FOREIGN KEY (`id_estado_equipo`) REFERENCES `estado_equipo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla u107806033_tool.servicio_tecnico: ~191 rows (aproximadamente)
/*!40000 ALTER TABLE `servicio_tecnico` DISABLE KEYS */;
INSERT INTO `servicio_tecnico` (`id`, `id_empleado`, `id_cliente`, `id_estado_equipo`, `id_equipo_servicio_tecnico`, `fecha_recibido`, `fecha_entrega`, `descripcion_problema`, `costo_mano_obra`, `costo_repuestos`, `iva`, `estado`) VALUES
	(50, 6, 24, 33, 34, '2018-12-20 10:15:46', '2018-12-20 10:21:21', 'no prende', 25000, 30000, 0.19, 'TERMINADO'),
	(51, 6, 29, 34, 35, '2018-12-20 11:24:31', '2018-12-20 12:10:40', 'Mandril bloqueado', 0, 0, 0.19, 'TERMINADO'),
	(52, 6, 30, 35, 36, '2018-12-20 12:08:09', '2018-12-21 14:59:17', 'Mantenimiento general', 15000, 0, 0.19, 'TERMINADO'),
	(53, 6, 31, 36, 37, '2018-12-21 11:43:57', '2019-01-09 12:16:19', 'mantenimiento generl', 0, 141300, 0.19, 'TERMINADO'),
	(54, 7, 33, 37, 38, '2018-12-21 15:32:21', '2019-01-10 14:03:00', 'NO FUNCIONA', 0, 0, 0.19, 'TERMINADO'),
	(55, 7, 34, 38, 39, '2018-12-22 10:02:02', '2019-01-08 17:25:13', 'MANDRIL BOTA LAS PUNTAS', 0, 0, 0.19, 'TERMINADO'),
	(56, 7, 32, 39, 40, '2018-12-22 12:12:57', '2019-02-14 16:02:04', 'SIN REPORTE DE DAÑO', 0, 0, 0.19, 'TERMINADO'),
	(57, 7, 32, 40, 41, '2018-12-22 12:17:41', '2019-02-14 16:01:29', 'SIN REPORTE DE DAÑO', 0, 0, 0.19, 'TERMINADO'),
	(58, 7, 32, 41, 42, '2018-12-22 12:18:42', '2019-02-08 12:56:00', 'SIN REPORTE DE DAÑO', 35000, 0, 0.19, 'TERMINADO'),
	(59, 7, 32, 42, 43, '2018-12-22 12:20:03', '2019-02-08 12:57:16', 'SIN REPORTE DE DAÑO', 35000, 0, 0.19, 'TERMINADO'),
	(60, 7, 32, 43, 44, '2018-12-22 12:21:11', '2019-02-14 16:00:54', 'SIN REPORTE DE DAÑO', 0, 0, 0.19, 'TERMINADO'),
	(61, 7, 32, 44, 45, '2018-12-22 12:22:07', '2019-02-14 16:00:23', 'SIN REPORTE DE DAÑO', 0, 0, 0.19, 'TERMINADO'),
	(62, 7, 32, 45, 46, '2018-12-22 12:23:13', '2019-02-14 15:59:52', 'SIN REPORTE DE DAÑO', 0, 0, 0.19, 'TERMINADO'),
	(63, 7, 32, 46, 47, '2018-12-22 12:24:10', '2019-02-08 13:48:47', 'SIN REPORTE DE DAÑO', 35000, 0, 0.19, 'TERMINADO'),
	(64, 7, 32, 47, 48, '2018-12-22 12:25:16', '2019-02-08 13:52:53', 'SIN REPORTE DE DAÑO', 35000, 0, 0.19, 'TERMINADO'),
	(65, 7, 32, 48, 49, '2018-12-22 12:29:04', '2019-02-14 15:59:16', 'SIN REPORTE DE DAÑO', 0, 0, 0.19, 'TERMINADO'),
	(66, 7, 32, 49, 50, '2018-12-22 12:30:34', '2019-02-14 15:58:26', 'SIN REPORTE DE DAÑO', 0, 0, 0.19, 'TERMINADO'),
	(67, 7, 32, 50, 51, '2018-12-22 12:31:35', '2019-02-08 12:41:55', 'SIN REPORTE DE DAÑO', 0, 0, 0.19, 'TERMINADO'),
	(68, 7, 32, 51, 52, '2018-12-22 12:55:04', '2019-02-08 12:39:36', 'SIN REPORTE DE DAÑO', 0, 0, 0.19, 'TERMINADO'),
	(69, 7, 32, 52, 53, '2018-12-22 12:58:11', '2019-02-08 12:17:39', 'SIN REPORTE DE DAÑO', 0, 0, 0.19, 'TERMINADO'),
	(70, 7, 32, 53, 54, '2018-12-22 13:00:00', '2019-02-08 12:29:58', 'SIN REPORTE DE DAÑO', 60000, 0, 0.19, 'TERMINADO'),
	(71, 7, 32, 54, 55, '2018-12-22 13:01:13', '2019-02-08 12:25:47', 'SIN REPORTE DE DAÑO', 60000, 0, 0.19, 'TERMINADO'),
	(72, 7, 32, 55, 56, '2018-12-22 13:02:04', '2019-02-08 12:15:45', 'SIN REPORTE DE DAÑO', 0, 0, 0.19, 'TERMINADO'),
	(73, 7, 30, 56, 57, '2019-01-03 11:02:43', '2019-01-08 10:05:58', 'CAMBIO DE CONDENSADORES', 50000, 3500, 0.19, 'TERMINADO'),
	(74, 7, 33, 57, 58, '2019-01-10 14:22:05', '2019-01-23 09:09:12', 'NO ENCIENDE', 15000, 7500, 0.19, 'TERMINADO'),
	(75, 7, 36, 58, 59, '2019-01-17 15:26:48', '2019-01-18 10:51:46', 'FRENADA', 0, 0, 0.19, 'TERMINADO'),
	(76, 7, 37, 59, 60, '2019-01-18 12:04:36', '2019-04-02 15:10:36', 'no prende por golpe caida de 40 metros\n', 0, 277000, 0.19, 'TERMINADO'),
	(77, 7, 39, 60, 61, '2019-01-25 12:40:28', '2019-02-07 09:56:46', 'FALLA DE VENTILADOR', 0, 0, 0.19, 'TERMINADO'),
	(78, 7, 39, 61, 62, '2019-01-25 12:43:14', '2019-02-14 15:46:59', 'AL PARECER INDUCIDO', 20000, 19300, 0.19, 'TERMINADO'),
	(79, 7, 39, 62, 63, '2019-01-25 12:46:55', '2019-02-14 15:49:56', 'AL PARECER INDUCIDO', 20000, 102900, 0.19, 'TERMINADO'),
	(80, 7, 39, 63, 64, '2019-01-25 12:49:47', '2019-02-14 15:51:40', 'AL PARECER CAMBIO DE INDUCIDO', 20000, 68000, 0.19, 'TERMINADO'),
	(81, 6, 40, 64, 65, '2019-01-28 15:24:12', NULL, 'NO PRENDE', 30000, 252590, 0.19, 'EN PROCESO'),
	(82, 6, 40, 65, 66, '2019-01-28 15:50:21', NULL, 'NO PRENDE', 30000, 173000, 0.19, 'EN PROCESO'),
	(83, 6, 40, 66, 67, '2019-01-28 16:08:26', NULL, 'NO PRENDE', 30000, 456790, 0.19, 'EN PROCESO'),
	(84, 6, 40, 67, 68, '2019-01-28 16:51:58', NULL, 'NO PRENDE', 30000, 150400, 0.19, 'EN PROCESO'),
	(85, 6, 40, 68, 69, '2019-01-28 17:03:06', NULL, 'NO PRENDE', 30000, 245790, 0.19, 'EN PROCESO'),
	(86, 6, 40, 69, 70, '2019-01-28 17:10:05', NULL, 'NO PRENDE', 30000, 152800, 0.19, 'EN PROCESO'),
	(87, 6, 40, 70, 71, '2019-01-28 17:16:57', NULL, 'NO PRENDE', 30000, 188900, 0.19, 'EN PROCESO'),
	(88, 6, 40, 71, 72, '2019-01-28 17:21:09', '2019-04-02 15:11:53', 'INDUCIDO Y CAMPO QUEMADOS', 30000, 382990, 0.19, 'TERMINADO'),
	(89, 6, 40, 72, 73, '2019-01-28 17:24:36', NULL, 'NO PRENDE', 30000, 404890, 0.19, 'EN PROCESO'),
	(90, 6, 40, 73, 74, '2019-01-28 18:52:27', NULL, 'NO PRENDE', 30000, 137200, 0.19, 'EN PROCESO'),
	(91, 6, 40, 74, 75, '2019-01-28 19:01:57', '2019-04-02 15:21:22', 'NO PRENDE', 30000, 216200, 0.19, 'TERMINADO'),
	(92, 6, 40, 75, 76, '2019-01-28 21:11:18', NULL, 'NO PRENDE', 30000, 250890, 0.19, 'EN PROCESO'),
	(93, 6, 40, 76, 77, '2019-01-28 21:17:29', NULL, 'NO PRENDE', 30000, 398790, 0.19, 'EN PROCESO'),
	(94, 6, 40, 77, 78, '2019-01-28 21:29:33', NULL, 'NO PRENDE', 30000, 155700, 0.19, 'EN PROCESO'),
	(95, 6, 40, 78, 79, '2019-01-28 21:35:45', NULL, 'NO PRENDE', 30000, 161900, 0.19, 'EN PROCESO'),
	(96, 6, 40, 79, 80, '2019-01-28 21:39:12', NULL, 'NO PRENDE', 30000, 324500, 0.19, 'EN PROCESO'),
	(97, 6, 40, 80, 81, '2019-01-29 18:25:25', NULL, 'Ruido Excesivo', 25000, 58400, 0.19, 'EN PROCESO'),
	(98, 6, 40, 81, 82, '2019-01-29 18:35:42', NULL, 'RUIDO EXCESIVO', 25000, 29600, 0.19, 'EN PROCESO'),
	(99, 6, 40, 82, 83, '2019-01-29 18:39:44', NULL, 'EQUIPO QUEMADO CON BASTANTE RUIDO ', 25000, 250900, 0.19, 'EN PROCESO'),
	(100, 6, 40, 83, 84, '2019-01-30 12:40:12', NULL, 'Ruido excesivo', 25000, 262200, 0.19, 'EN PROCESO'),
	(101, 6, 40, 84, 85, '2019-01-31 12:58:36', NULL, 'NO PRENDE', 25000, 220800, 0.19, 'EN PROCESO'),
	(102, 6, 40, 85, 86, '2019-01-31 13:09:02', NULL, 'NO PRENDE', 25000, 308800, 0.19, 'EN PROCESO'),
	(103, 6, 40, 86, 87, '2019-01-31 13:18:44', NULL, 'No prende', 25000, 241600, 0.19, 'EN PROCESO'),
	(104, 6, 40, 87, 88, '2019-01-31 13:29:30', NULL, 'EQUIPO EN CORTO', 30000, 219290, 0.19, 'EN PROCESO'),
	(105, 6, 40, 88, 89, '2019-01-31 14:02:35', NULL, 'MOTOR QUEMADO', 30000, 398090, 0.19, 'EN PROCESO'),
	(106, 6, 40, 89, 90, '2019-01-31 14:22:06', NULL, 'MOTOR EN CORTO', 30000, 447290, 0.19, 'EN PROCESO'),
	(107, 6, 40, 90, 91, '2019-01-31 14:42:07', NULL, 'MOTOR EN CORTO', 30000, 389490, 0.19, 'EN PROCESO'),
	(108, 6, 40, 91, 92, '2019-01-31 14:56:07', NULL, 'MOTOR EN CORTO', 30000, 445390, 0.19, 'EN PROCESO'),
	(109, 6, 40, 92, 93, '2019-01-31 15:03:10', NULL, 'MOTOR EN CORTO', 30000, 521090, 0.19, 'EN PROCESO'),
	(110, 6, 40, 93, 94, '2019-01-31 15:11:11', NULL, 'MOTOR EN CORTO', 30000, 305090, 0.19, 'EN PROCESO'),
	(111, 6, 40, 94, 95, '2019-01-31 15:18:37', NULL, 'MOTOR EN CORTO', 30000, 384890, 0.19, 'EN PROCESO'),
	(112, 6, 40, 95, 96, '2019-01-31 15:42:15', NULL, 'Motor en Corto', 30000, 448790, 0.19, 'EN PROCESO'),
	(113, 6, 40, 96, 97, '2019-01-31 15:53:29', NULL, 'MOTOR EN CORTO', 30000, 214690, 0.19, 'EN PROCESO'),
	(114, 7, 41, 97, 98, '2019-02-01 09:21:24', NULL, 'SE TRABA CUANDO LO PONEN EN MODO MARTILLO Y UN RUIDO RARO', 0, 0, 0.19, 'EN PROCESO'),
	(115, 7, 42, 98, 99, '2019-02-01 11:39:26', NULL, 'NO PRENDE ', 65000, 219900, 0.19, 'EN PROCESO'),
	(116, 6, 40, 99, 100, '2019-02-02 10:19:50', NULL, 'NO PRENDE', 30000, 255700, 0.19, 'EN PROCESO'),
	(117, 6, 40, 100, 101, '2019-02-02 10:38:43', NULL, 'NO PRENDE', 30000, 385290, 0.19, 'EN PROCESO'),
	(118, 6, 43, 101, 102, '2019-02-02 11:11:11', '2019-04-02 15:07:48', 'EL INTERRUPTOR SE PEGO, NO TIENE FUERZA', 25000, 25000, 0.19, 'TERMINADO'),
	(119, 6, 40, 102, 103, '2019-02-02 11:27:43', NULL, 'MOTOR EN CORTO', 0, 242000, 0.19, 'EN PROCESO'),
	(120, 7, 44, 103, 104, '2019-02-04 14:09:06', '2019-02-08 12:01:42', 'MANTENIMIENTO PREVENTIVO Y LLAVE DE AJUSTE ', 25000, 6000, 0.19, 'TERMINADO'),
	(121, 6, 45, 104, 105, '2019-02-05 18:11:18', '2019-02-14 16:03:45', 'PRUEBA', 0, 199990, 0.19, 'TERMINADO'),
	(122, 6, 40, 105, 106, '2019-02-06 15:18:07', NULL, 'NO PRENDE', 30000, 313100, 0.19, 'EN PROCESO'),
	(123, 6, 40, 106, 107, '2019-02-06 15:25:42', NULL, 'MOTOR EN CORTO', 30000, 239500, 0.19, 'EN PROCESO'),
	(124, 6, 46, 107, 108, '2019-02-06 17:22:23', '2019-04-02 15:04:56', 'CON REPUESTOS PARTIDOS', 25000, 58100, 0.19, 'TERMINADO'),
	(125, 9, 47, 108, 109, '2019-02-08 13:42:41', '2019-03-30 14:25:58', 'Base de lijadora y pad', 14000, 45000, 0.19, 'TERMINADO'),
	(126, 9, 44, 109, 110, '2019-02-11 17:11:46', '2019-02-21 21:35:05', 'Tiene fuga de aceite ', 75000, 0, 0.19, 'TERMINADO'),
	(127, 9, 44, 110, 111, '2019-02-11 17:17:16', '2019-02-21 21:34:44', 'Fuga de gasolina ', 60000, 0, 0.19, 'TERMINADO'),
	(128, 7, 48, 111, 112, '2019-02-12 15:48:06', '2019-02-21 21:31:49', 'INDUCIDO ', 0, 0, 0.19, 'TERMINADO'),
	(129, 7, 48, 112, 113, '2019-02-12 16:00:29', '2019-02-21 21:32:05', 'INDUCIDO', 0, 0, 0.19, 'TERMINADO'),
	(130, 7, 48, 113, 114, '2019-02-12 16:07:50', '2019-02-21 21:32:28', 'inducido', 0, 0, 0.19, 'TERMINADO'),
	(131, 7, 48, 114, 115, '2019-02-12 16:13:33', '2019-02-21 21:32:43', 'inducido quemado mas resistencia', 0, 0, 0.19, 'TERMINADO'),
	(132, 7, 48, 115, 116, '2019-02-12 16:20:34', '2019-02-21 21:32:57', 'inducido portaescobillas', 0, 0, 0.19, 'TERMINADO'),
	(133, 7, 48, 116, 117, '2019-02-12 16:25:27', '2019-02-21 21:31:23', 'inducido en corto', 0, 0, 0.19, 'TERMINADO'),
	(134, 7, 49, 117, 118, '2019-02-12 17:26:23', NULL, 'NO PRENDE', 0, 11600, 0.19, 'EN PROCESO'),
	(135, 9, 50, 118, 119, '2019-02-13 10:24:19', '2019-03-01 23:28:04', 'Perdida de velocidad ', 0, 0, 0.19, 'TERMINADO'),
	(136, 6, 51, 119, 120, '2019-02-15 11:10:29', '2019-02-16 11:24:40', 'NO PRENDE', 25000, 27200, 0.19, 'TERMINADO'),
	(137, 7, 42, 120, 121, '2019-02-15 16:31:30', '2019-02-21 21:34:02', 'CARGA ', 0, 0, 0.19, 'TERMINADO'),
	(138, 6, 39, 121, 122, '2019-02-16 10:29:25', '2019-02-16 11:17:33', 'NO PRENDE', 25000, 168100, 0.19, 'TERMINADO'),
	(139, 9, 45, 122, 123, '2019-02-18 16:51:25', '2019-02-19 15:58:35', 'RODAMIENTO DE LA BASE, Y PAD', 25000, 58139, 0.19, 'TERMINADO'),
	(140, 6, 52, 123, 124, '2019-02-19 15:03:32', '2019-02-19 15:58:20', 'CAMBIO DE PAD\nREVISAR VIBRACION', 25000, 58139, 0.19, 'TERMINADO'),
	(141, 7, 52, 124, 125, '2019-02-19 17:34:56', '2019-03-01 18:10:22', 'CAMBIO DE PAD, REVISAR RODAMIENTOS, MANTENIMIENTO EN GENERAL', 0, 0, 0.19, 'TERMINADO'),
	(142, 7, 52, 125, 126, '2019-02-19 17:40:39', '2019-03-01 18:11:02', 'CAMBIO DE PAD, REVISAR RODAMIENTOS Y MANTENIMIENTO EN GENERAL', 0, 0, 0.19, 'TERMINADO'),
	(143, 7, 54, 126, 127, '2019-02-21 14:50:36', '2019-02-22 17:43:42', 'MANDRIL NO SIRVE', 5000, 25000, 0.19, 'TERMINADO'),
	(144, 6, 55, 127, 128, '2019-02-22 10:45:25', '2019-04-02 14:55:16', 'NO PRENDE', 25000, 168932, 0.19, 'TERMINADO'),
	(145, 7, 57, 128, 129, '2019-02-26 14:38:02', '2019-04-02 14:57:31', 'TRABAJA LENTO Y SIN FUERZA', 0, 0, 0.19, 'TERMINADO'),
	(146, 6, 30, 129, 130, '2019-02-26 17:26:52', NULL, 'TIENE LA PERILLA DE CAMBIO DE FUNCIÓN PARTIDA', 25000, 60000, 0.19, 'EN PROCESO'),
	(147, 9, 56, 130, 131, '2019-02-26 18:40:16', '2019-03-11 17:34:46', 'PERCUTOR DESGASTADO PARA CAMBIO', 0, 25000, 0.19, 'TERMINADO'),
	(148, 9, 56, 131, 132, '2019-02-26 18:47:59', '2019-03-11 17:37:33', 'CAMBIO DE MANDRIL', 0, 23500, 0.19, 'TERMINADO'),
	(149, 9, 56, 132, 133, '2019-02-26 18:52:56', NULL, 'REVISION DE BATERIAS Y CARGADORES ', 0, 0, 0.19, 'RECIBIDO'),
	(150, 9, 56, 133, 134, '2019-02-26 18:53:51', '2019-03-11 17:32:50', 'REVISION GENERAL', 0, 23500, 0.19, 'TERMINADO'),
	(151, 9, 56, 134, 135, '2019-02-26 18:55:40', NULL, 'REVISION GENERAL, PROBLEMAS DE ENGRANE ', 0, 4000, 0.19, 'EN PROCESO'),
	(152, 7, 40, 135, 136, '2019-02-27 13:53:23', NULL, 'REVISAR INDUCIDO Y ESCOBILLAS', 0, 0, 0.19, 'RECIBIDO'),
	(153, 7, 40, 136, 137, '2019-02-27 14:01:38', NULL, 'REVISAR INDUCIDO Y ESCOBILLAS, RODAMIENTOS', 0, 0, 0.19, 'RECIBIDO'),
	(154, 7, 40, 137, 138, '2019-02-27 14:13:15', NULL, 'REVISION DE INDUCIDO, ESCOBILLAS Y RODAMIENTOS', 0, 0, 0.19, 'RECIBIDO'),
	(155, 6, 40, 138, 139, '2019-02-27 14:24:49', '2019-04-02 15:17:53', 'PROBLEMA EN LOS TERMINALES \nNO PRENDE', 0, 314000, 0.19, 'TERMINADO'),
	(156, 6, 40, 139, 140, '2019-02-27 14:34:59', '2019-04-02 15:19:43', 'NO PRENDE', 0, 311300, 0.19, 'TERMINADO'),
	(157, 7, 40, 140, 141, '2019-02-27 14:38:43', NULL, 'REVISAR INDUCIDO, ESCOBILLAS Y RODAMIENTOS', 0, 0, 0.19, 'RECIBIDO'),
	(158, 7, 40, 141, 142, '2019-02-27 14:44:10', NULL, 'REVISAR INDUCIDO, ESCOBILLAS RODAMIENTOS Y CAMPO', 0, 0, 0.19, 'RECIBIDO'),
	(159, 6, 40, 142, 143, '2019-02-27 15:00:47', NULL, 'NO PRENDE', 0, 177100, 0.19, 'EN PROCESO'),
	(160, 6, 40, 143, 144, '2019-02-27 15:13:28', NULL, 'NO PRENDE', 0, 0, 0.19, 'RECIBIDO'),
	(161, 7, 40, 144, 145, '2019-02-27 15:37:51', NULL, 'REVISAR INDUCIDO, ESCOBILLAS Y RODAMIENTOS', 0, 0, 0.19, 'RECIBIDO'),
	(162, 6, 40, 145, 146, '2019-02-27 15:39:47', NULL, 'INTERRUPTOR DAÑADO', 0, 0, 0.19, 'RECIBIDO'),
	(163, 7, 40, 146, 147, '2019-02-27 15:43:27', NULL, 'REVISION DE INDUCIDO, ESCOBILLAS Y RODAMIENTOS', 0, 0, 0.19, 'RECIBIDO'),
	(164, 9, 39, 147, 148, '2019-03-01 15:31:10', '2019-04-02 15:01:01', 'MATENIMIENTO GENERAL ', 20000, 167800, 0.19, 'TERMINADO'),
	(165, 9, 40, 148, 149, '2019-03-06 11:31:08', NULL, 'REVISIÓN GENERAL', 0, 0, 0.19, 'RECIBIDO'),
	(166, 9, 40, 149, 150, '2019-03-06 11:33:08', NULL, 'REVISIÓN GENERAL', 0, 0, 0.19, 'RECIBIDO'),
	(167, 7, 61, 150, 176, '2019-03-13 09:20:07', NULL, 'SE LE DAÑO "RODAMIENTO"', 0, 0, 0.19, 'RECIBIDO'),
	(168, 9, 60, 151, 177, '2019-03-13 09:56:47', '2019-03-21 08:39:49', 'CASQUILLO, ARANDELA, BALINERA 4, SPRING', 25000, 7300, 0.19, 'TERMINADO'),
	(169, 9, 60, 152, 178, '2019-03-13 10:16:50', NULL, 'RODAMIENTO 6202DDW', 25000, 5900, 0.19, 'EN PROCESO'),
	(170, 9, 60, 153, 179, '2019-03-13 10:19:46', NULL, 'INDUCIDO,SWITCH,MANIGUETA', 35000, 392100, 0.19, 'EN PROCESO'),
	(171, 9, 57, 154, 180, '2019-03-13 10:57:14', '2019-04-02 14:59:27', 'MANGUERRA ROTA, AFILADO DE CADENA Y MANTENIMIENTO GENERAL', 50420, 0, 0.19, 'TERMINADO'),
	(172, 9, 57, 155, 181, '2019-03-13 11:00:39', '2019-04-02 14:58:13', 'CAMBIO DE ESPADA, AFILADO DE CADENA, MANTENIMIENTO GENERAL ', 50420, 117453, 0.19, 'TERMINADO'),
	(173, 9, 40, 156, 182, '2019-03-13 11:35:41', NULL, 'INDICIDO EN CORTO, RODAMIENTO 969ZZ DAÑADO, CAMBIO ESCOBILLAS', 25000, 189500, 0.19, 'EN PROCESO'),
	(174, 7, 39, 157, 183, '2019-03-14 09:35:55', '2019-03-29 18:41:26', 'REVISAR ESCOBILLAS E INDUCIDO Y CAMPO', 20000, 169000, 0.19, 'TERMINADO'),
	(175, 9, 40, 158, 184, '2019-03-14 11:03:32', NULL, 'SWITH,ANILLO', 25000, 81400, 0.19, 'ENTREGADO'),
	(176, 9, 62, 159, 185, '2019-03-19 12:39:28', '2019-04-02 14:57:00', 'CINLINDRO, RODAMIENTO', 0, 0, 0.19, 'TERMINADO'),
	(177, 9, 63, 160, 186, '2019-03-21 14:57:25', '2019-03-27 09:50:01', 'RODAMIENTO DAÑADO 6202, Y MANTENIMIENTO GENERAL', 0, 11500, 0.19, 'TERMINADO'),
	(178, 6, 57, 161, 187, '2019-03-27 13:50:43', NULL, 'NO PRENDE', 65000, 274500, 0.19, 'EN PROCESO'),
	(179, 6, 64, 162, 188, '2019-03-27 14:07:45', '2019-04-08 15:38:09', 'Revisión ', 75000, 410000, 0.19, 'ENTREGADO'),
	(180, 7, 65, 163, 189, '2019-03-28 14:47:35', '2019-04-04 18:00:40', 'NO PRENDE', 25000, 65500, 0.19, 'TERMINADO'),
	(181, 6, 67, 164, 190, '2019-03-29 15:00:26', '2019-04-10 19:36:41', 'REVISAR EL ROTOR', 45000, 257560, 0.19, 'TERMINADO'),
	(182, 9, 40, 165, 191, '2019-03-30 09:35:37', NULL, 'INDUCIDO EN CORTO, CAMPO EN CORTO, CAMBIO DE RODAMIENTO Y CAMBIO DE ESCOBILLAS ', 0, 394790, 0.19, 'EN PROCESO'),
	(183, 9, 40, 166, 192, '2019-03-30 11:15:04', NULL, 'RODAMIENTO,INDUCIDO,ESCOBILLAS,CABLE DE PODER ', 0, 188900, 0.19, 'EN PROCESO'),
	(184, 9, 40, 167, 193, '2019-03-30 12:00:48', NULL, 'RODAMIENTO 696,ESCOBILLAS,INDUCIDO,\nINTERRUPTOR MAL ESTADO', 0, 206300, 0.19, 'EN PROCESO'),
	(185, 9, 40, 168, 194, '2019-03-30 12:16:43', NULL, 'INDUCIDO,INTERRUPTOR,ESCOBILLAS,CAMPO', 0, 358800, 0.19, 'EN PROCESO'),
	(186, 9, 40, 169, 195, '2019-03-30 12:41:23', NULL, 'PORTA ESCOBILLAS,INDICIDO,CAMPO,ESCOBILLAS\nRODAMIENTO\n', 0, 325800, 0.19, 'EN PROCESO'),
	(187, 9, 40, 170, 196, '2019-03-30 13:22:50', NULL, 'RODAMIENTO,ESCOBILLAS,INDUCIDO', 0, 203800, 0.19, 'EN PROCESO'),
	(188, 7, 68, 171, 197, '2019-03-30 13:41:11', '2019-04-02 14:51:23', 'NO ENCIENDE, REVISAR SWICH', 0, 24700, 0.19, 'TERMINADO'),
	(189, 9, 48, 172, 198, '2019-03-30 13:45:42', '2019-04-06 14:06:53', 'INDUCIDO,CAMPO,ESCOBILLAS', 0, 342300, 0.19, 'ENTREGADO'),
	(190, 9, 48, 173, 199, '2019-03-30 13:50:01', '2019-04-06 14:06:00', 'INDUCIDO,CAMPO,ESCONILLAS', 0, 342300, 0.19, 'ENTREGADO'),
	(191, 9, 48, 174, 200, '2019-03-30 13:52:50', '2019-04-06 14:05:29', 'INDUCIDO,CAMPO,ESCOBIILAS', 0, 354100, 0.19, 'ENTREGADO'),
	(192, 9, 69, 175, 201, '2019-04-01 12:32:29', NULL, 'INDUCIDO, CAMPO ESCOBILLAS, CABLE PODER', 21008, 147600, 0.19, 'EN PROCESO'),
	(193, 6, 42, 176, 202, '2019-04-02 09:54:06', '2019-04-08 15:37:21', 'NO FUNCIONA', 60000, 74000, 0.19, 'ENTREGADO'),
	(194, 9, 55, 177, 203, '2019-04-02 13:18:44', NULL, 'INDUCIDO, ESCONILLAS,RODAMIENTO', 25000, 168200, 0.19, 'EN PROCESO'),
	(195, 9, 40, 178, 204, '2019-04-08 15:25:49', NULL, 'CAMPO,INDUCIDO,ESCOBILLAS,RODAMIENTO', 0, 394790, 0.19, 'EN PROCESO'),
	(196, 9, 40, 179, 205, '2019-04-08 15:30:47', NULL, 'CAMPO,INDUCIDO,ESCOBILLAS,RODAMIENTO', 0, 317400, 0.19, 'EN PROCESO'),
	(197, 9, 40, 180, 206, '2019-04-08 15:33:06', NULL, 'INDUCIDO,ESCOBILLAS,RODAMIENTO', 0, 178800, 0.19, 'EN PROCESO'),
	(198, 9, 70, 181, 207, '2019-04-08 16:48:08', NULL, 'CAMBIO DE PISTON, ANILLOS, FILTROS ', 50420, 90300, 0.19, 'EN PROCESO'),
	(199, 12, 71, 182, 208, '2019-04-09 13:47:43', NULL, 'NO PRENDE, REVISAR EL CABLE ', 25000, 22000, 0.19, 'EN PROCESO'),
	(200, 12, 72, 183, 209, '2019-04-09 16:48:24', '2019-04-24 10:15:41', 'NO FUNCIONA', 25000, 111000, 0.19, 'ENTREGADO'),
	(201, 12, 72, 184, 210, '2019-04-09 16:51:24', '2019-04-24 10:12:59', 'NO FUNCIONA', 25000, 40900, 0.19, 'ENTREGADO'),
	(202, 12, 72, 185, 211, '2019-04-09 16:55:09', '2019-04-24 10:08:35', 'NO FUNCIONA\n\n', 20000, 36211, 0.19, 'ENTREGADO'),
	(203, 12, 72, 186, 212, '2019-04-09 16:59:42', '2019-04-24 10:10:33', 'NO FUNCIONA', 25000, 158211, 0.19, 'ENTREGADO'),
	(204, 12, 72, 187, 213, '2019-04-09 17:02:08', '2019-04-24 10:07:15', 'NO FUNCIONA\n', 35000, 68100, 0.19, 'ENTREGADO'),
	(205, 12, 72, 188, 214, '2019-04-09 17:05:37', NULL, 'NO FUNCIONA\n\n\n', 25000, 28211, 0.19, 'ENTREGADO'),
	(206, 9, 48, 189, 215, '2019-04-11 15:20:56', NULL, 'INDUCIDO,RODAMIENTO,ESCOBILLAS,ANILLOS', 0, 183400, 0.19, 'EN PROCESO'),
	(207, 9, 48, 190, 216, '2019-04-11 15:23:11', '2019-04-11 16:12:49', 'INDUCIDO,CAMPO,ESCOBILLAS,RODAMIENTO', 0, 354100, 0.19, 'TERMINADO'),
	(208, 6, 72, 191, 217, '2019-04-12 14:24:25', '2019-04-24 10:05:00', 'NO PRENDE', 25000, 62900, 0.19, 'ENTREGADO'),
	(209, 12, 73, 192, 218, '2019-04-12 15:02:10', NULL, 'NO FUNCIONA\n', 25000, 39400, 0.19, 'EN PROCESO'),
	(210, 12, 73, 193, 219, '2019-04-12 15:06:31', NULL, 'NO FUNCIONA', 0, 0, 0.19, 'EN PROCESO'),
	(211, 12, 73, 194, 220, '2019-04-12 15:13:03', NULL, 'NO FUNCIONA\n', 25000, 40052, 0.19, 'EN PROCESO'),
	(212, 12, 73, 195, 221, '2019-04-12 15:17:16', NULL, 'NO FUNCIONA\n\n\n', 25000, 13500, 0.19, 'EN PROCESO'),
	(213, 12, 57, 196, 222, '2019-04-15 15:51:14', NULL, 'GOTEO DE ACEITE\n', 0, 0, 0.19, 'EN PROCESO'),
	(214, 9, 74, 197, 223, '2019-04-17 09:24:30', NULL, 'CARCASA ROTA, INDUCIDO, ESCOBILLAS, RODAMIENTO, TORNILLO', 25000, 267500, 0.19, 'EN PROCESO'),
	(215, 7, 75, 198, 224, '2019-04-17 09:34:09', NULL, 'CAMBIO CARCASA, ESCOBILLAS Y GUARDA', 0, 0, 0.19, 'RECIBIDO'),
	(216, 9, 40, 199, 225, '2019-04-17 09:35:21', NULL, 'INDUCIDO,ESCOBILLAS,RODAMIENTO,PORTAESCOBILLAS', 25000, 197300, 0.19, 'EN PROCESO'),
	(217, 9, 74, 200, 226, '2019-04-17 09:42:44', NULL, 'INDUCIDO,ESCOBILLAS,RODAMIENTO ', 25000, 188900, 0.19, 'EN PROCESO'),
	(218, 9, 74, 201, 227, '2019-04-17 09:52:56', NULL, 'INDUCIDO, ESCOBILLAS', 25000, 184400, 0.19, 'EN PROCESO'),
	(219, 12, 76, 202, 228, '2019-04-22 09:13:38', NULL, 'se resbala la palanca de freno', 0, 1000, 0.19, 'EN PROCESO'),
	(220, 12, 76, 203, 229, '2019-04-22 09:23:39', NULL, 'palanca de freno no baja', 0, 1000, 0.19, 'EN PROCESO'),
	(221, 12, 73, 204, 230, '2019-04-23 12:12:12', NULL, 'NO FUNCIONA\n', 25000, 32000, 0.19, 'EN PROCESO'),
	(222, 9, 74, 205, 231, '2019-04-24 13:15:07', NULL, 'AJUSTE DE CABLES ELÉCTRICOS', 25000, 0, 0.19, 'EN PROCESO'),
	(223, 12, 77, 206, 232, '2019-04-24 17:36:01', NULL, 'CALIBRACION, NO TIENE PRECISION EN EL CORTE', 0, 0, 0.19, 'RECIBIDO'),
	(224, 9, 69, 207, 233, '2019-04-25 09:43:08', NULL, 'INDUCIDO EN CORTO, ESCOBILLAS, RODAMIENTO,PAD', 21008, 151639, 0.19, 'EN PROCESO'),
	(225, 9, 69, 208, 234, '2019-04-25 09:51:34', NULL, 'CONECTOR ESCOBILLAS, ESCOBILLAS,RODAAMIENTO,EMPAQUE', 21008, 73407, 0.19, 'EN PROCESO'),
	(226, 12, 72, 209, 235, '2019-04-25 17:21:54', NULL, 'NO FUNCIONA', 35000, 104711, 0.19, 'EN PROCESO'),
	(227, 12, 72, 210, 236, '2019-04-25 17:25:04', NULL, 'NO FUNCIONA ', 35000, 1019000, 0.19, 'EN PROCESO'),
	(228, 12, 72, 211, 237, '2019-04-25 17:27:57', '2019-05-02 14:39:35', 'NO FUNCIONA\n', 0, 168500, 0.19, 'TERMINADO'),
	(229, 12, 73, 212, 238, '2019-04-26 10:58:30', NULL, 'no funciona\n', 25000, 32000, 0.19, 'EN PROCESO'),
	(230, 12, 73, 213, 239, '2019-04-26 11:13:53', NULL, 'NO FUNCIONA\n', 0, 0, 0.19, 'RECIBIDO'),
	(231, 7, 58, 214, 240, '2019-04-26 17:28:33', NULL, 'TIENE LA PERILLA DE CAMBIO DE FUNCION PARTIDA', 25000, 60000, 0.19, 'EN PROCESO'),
	(232, 7, 79, 215, 241, '2019-04-26 17:49:40', NULL, 'AJUSTAR ROSCA, COLLET ', 0, 0, 0.19, 'RECIBIDO'),
	(233, 7, 80, 216, 242, '2019-04-26 18:10:47', NULL, 'NO ENCIENDE ', 25000, 6800, 0.19, 'EN PROCESO'),
	(234, 9, 81, 217, 243, '2019-04-27 09:15:45', NULL, 'INDUCIDO EN CORTO, ESCOBILLAS, MANTENIMIENTO GENERAL', 21008, 379004, 0.19, 'EN PROCESO'),
	(235, 12, 60, 218, 244, '2019-04-29 10:54:28', NULL, '\n\nNO FUNCIONA\n\n\n', 0, 0, 0.19, 'RECIBIDO'),
	(236, 12, 60, 219, 245, '2019-04-29 10:57:49', NULL, 'NO FUNCIONA\n', 0, 0, 0.19, 'RECIBIDO'),
	(237, 9, 83, 220, 246, '2019-04-30 11:58:25', NULL, 'RODAMIENTO 607, SUPLEMENTO RODAMIENTO,ECOBILLAS', 21008, 11300, 0.19, 'EN PROCESO'),
	(238, 9, 69, 221, 247, '2019-05-02 12:57:41', NULL, 'RODAMIENTOS,CABLE DE PODER,', 21008, 66200, 0.19, 'EN PROCESO'),
	(239, 9, 69, 222, 248, '2019-05-02 13:07:02', NULL, 'INDUCIDO,ESCOBILLAS,RODAMIENTO, BOTON SWITCH', 21008, 71700, 0.19, 'EN PROCESO'),
	(240, 6, 29, 223, 249, '2019-05-03 11:13:06', NULL, 'REVISAR BATERIAS\nHACER MANTENIMIENTO', 0, 0, 0.19, 'RECIBIDO'),
	(241, 6, 24, 33, 34, '2018-12-20 10:15:46', '2018-12-20 10:21:21', 'no prende', 25000, 30000, 0.19, 'TERMINADO'),
	(242, 1, 24, 224, 250, NULL, NULL, 'dfdasf', 0, 0, 0.19, 'RECIBIDO'),
	(243, 1, 24, 225, 251, NULL, NULL, 'asdfgadfg', 0, 0, 0.19, 'RECIBIDO'),
	(244, 1, 24, 226, 252, '2019-05-07 02:26:10', NULL, 'dafasf', 0, 0, 0.19, 'RECIBIDO');
/*!40000 ALTER TABLE `servicio_tecnico` ENABLE KEYS */;

-- Volcando estructura para tabla u107806033_tool.tipo_usuario
CREATE TABLE IF NOT EXISTS `tipo_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL COMMENT 'Nombre del rol',
  `repuestos` char(1) NOT NULL DEFAULT '0' COMMENT ' 0 - no tiene permiso, 1 - tiene permitido ver, 2 - tiene permitido modificar',
  `kardex_repuestos` char(1) NOT NULL DEFAULT '0' COMMENT ' 0 - no tiene permiso, 1 - tiene permitido ver, 2 - tiene permitido modificar',
  `equipos_servicio` char(1) NOT NULL DEFAULT '0' COMMENT ' 0 - no tiene permiso, 1 - tiene permitido ver, 2 - tiene permitido modificar',
  `servicios_pendientes` char(1) NOT NULL DEFAULT '0' COMMENT ' 0 - no tiene permiso, 1 - tiene permitido ver, 2 - tiene permitido modificar',
  `consultar_servicios` char(1) NOT NULL DEFAULT '0' COMMENT ' 0 - no tiene permiso, 1 - tiene permitido ver, 2 - tiene permitido modificar',
  `clientes` char(1) NOT NULL DEFAULT '0' COMMENT ' 0 - no tiene permiso, 1 - tiene permitido ver, 2 - tiene permitido modificar',
  `empresas` char(1) NOT NULL DEFAULT '0' COMMENT ' 0 - no tiene permiso, 1 - tiene permitido ver, 2 - tiene permitido modificar',
  `landing_page` char(1) NOT NULL DEFAULT '0' COMMENT ' 0 - no tiene permiso, 1 - tiene permitido ver, 2 - tiene permitido modificar',
  `empleados` char(1) NOT NULL DEFAULT '0' COMMENT ' 0 - no tiene permiso, 1 - tiene permitido ver, 2 - tiene permitido modificar',
  `roles` char(1) NOT NULL DEFAULT '0' COMMENT ' 0 - no tiene permiso, 1 - tiene permitido ver, 2 - tiene permitido modificar',
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='Roles y permisos del usuario, 0 - no tiene permiso, 1 - tiene permitido ver, 2 - tiene permitido modificar';

-- Volcando datos para la tabla u107806033_tool.tipo_usuario: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_usuario` DISABLE KEYS */;
INSERT INTO `tipo_usuario` (`id`, `nombre`, `repuestos`, `kardex_repuestos`, `equipos_servicio`, `servicios_pendientes`, `consultar_servicios`, `clientes`, `empresas`, `landing_page`, `empleados`, `roles`) VALUES
	(1, 'ADMINISTRADOR', '2', '1', '2', '2', '2', '2', '2', '2', '2', '2'),
	(2, 'GERENTE', '2', '1', '2', '2', '2', '2', '2', '2', '2', '1'),
	(3, 'SUBGERENTE', '0', '1', '0', '0', '2', '2', '2', '2', '1', '0'),
	(4, 'TECNICO', '2', '1', '2', '2', '2', '2', '2', '0', '0', '0'),
	(5, 'COMERCIAL', '0', '0', '0', '1', '1', '2', '2', '2', '0', '0'),
	(6, 'CLIENTE', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
/*!40000 ALTER TABLE `tipo_usuario` ENABLE KEYS */;

-- Volcando estructura para tabla u107806033_tool.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipo_usuario` int(11) DEFAULT NULL,
  `correo_electronico` varchar(150) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `clave` text NOT NULL,
  `estado` varchar(50) NOT NULL DEFAULT 'NO VERIFICADO',
  `tipo` varchar(50) NOT NULL DEFAULT '6',
  `notificaciones` varchar(45) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo_electronico` (`correo_electronico`),
  KEY `FK_usuario_tipo_usuario` (`id_tipo_usuario`),
  CONSTRAINT `FK_usuario_tipo_usuario` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipo_usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla u107806033_tool.usuario: ~63 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id`, `id_tipo_usuario`, `correo_electronico`, `nombre`, `clave`, `estado`, `tipo`, `notificaciones`) VALUES
	(14, 1, 'toolboxcenter@toolboxcentersas.website', 'ADMIN TOOLBOXCENTER SAS', '7d4a71b8fdacf2e84c4f7dd9f82ba3ee6e57f0339cfef4ba9ca7c9b5', 'ACTIVO', 'ADMINISTRADOR', '0'),
	(23, 2, 'gustavo.sanchez@toolboxcentersas.com', 'GUSTAVO SANCHEZ', '3b67dbe9cd9790c84e25ab64431fd6057b16ddc0d3d0525d3ff4c02e', 'ACTIVO', 'GERENTE', '0'),
	(24, 2, 'gerencia@toolboxcentersas.com', 'LUZ ÁNGELA BAHENA RUDAS', '19aebbb39c4d8799e1934abb08e9abce2b19d731e3e23ee5bb00d423', 'ACTIVO', 'GERENTE', '191'),
	(25, 3, 'subgerente@toolboxcentersas.com', 'MARTHA SEGURA CAMARGO', 'b42298c6ab38ddfaad5728c7d657e47eec17f5f89f7babc89e789db1', 'ACTIVO', 'SUBGERENTE', '191'),
	(26, 4, 'ventas@toolboxcentersas.com', 'PEDRO CAMARGO MARINEZ', '55d6463b67bb446eb2135507b9ff3fb8bca18074d799c8b859a6b569', 'ACTIVO', 'TECNICO', '70'),
	(28, 4, 'asesor.industrial@toolboxcentersas.com', 'Cesar', '657988fe3335911d4be7fdae9c09b133b157ccfa1ad447d7219cc4c2', 'ACTIVO', 'TECNICO', '18'),
	(50, 5, 'comercial@toolboxcentersas.com', 'SANDRA SEGURA LEON', '47e622a0118185059ffc5c990e0d9541daa3db4382d9a680a0d657e3', 'ACTIVO', 'COMERCIAL', '185'),
	(51, 6, '1102jhan@gmail.com', 'Jhan Carlos Leon Osma', 'bc0846404d73bb73991ecdd47995aed7dbbe02832ab22696205cfe98', 'ACTIVO', 'CLIENTE', '191'),
	(53, 6, 'jhaleon@uniboyaca.edu.co', 'Hernando Acero', 'ef35b53dc0c6ca5ce8373d750a4f5b933c34207903859c3442801969', 'ACTIVO', 'CLIENTE', '190'),
	(54, 6, 'comprasgamajggg@gmail.com', 'CONSORCIO CEDROS DE SANTA BARBARA', '72c887691a8ec488f0c2da9ef103e00b801f5174ed83258981863f91', 'ACTIVO', 'CLIENTE', '189'),
	(55, 6, 'carlos.velasquez907@hotmail.com', 'Carlos Arturo Velasquez Turmeque', '5eb7e2617306edb66268161a20f964558ad9b555f540661b4564220f', 'ACTIVO', 'CLIENTE', '188'),
	(56, 6, 'compras@eminser.com.co', 'EMINSER SAS', 'b4922a8f97b44f758994d208cf85e280f519f44cbcc1c1433d43d934', 'ACTIVO', 'CLIENTE', '187'),
	(57, 6, 'pecama1624@gmail.com', 'JOSE VEGA', '499c57c7add7157e820e53eba3b7fe94fbc578232caa21928f2f7f04', 'ACTIVO', 'CLIENTE', '187'),
	(58, 6, 'rafaelacabados@hotmail.com', 'JOSE RAFAEL BUITRAGO RICO', '675632c65dfedae8c269d84cf1a5e03cdda1c92b374abe0d29792d19', 'ACTIVO', 'CLIENTE', '186'),
	(61, 6, 'pecama1624@yahoo.es', 'cesar de la torre', '9b1d063225a140c0ba3d08f6d2c30dea91a48defa91c23311a7ec0b3', 'NO VERIFICADO', 'CLIENTE', '166'),
	(62, 6, 'sergemco@gmail.com', 'SERGEMCO LTDA', '8bf83e3a375e985163fcadb025d6074a8c2c4d6440308ad147845337', 'ACTIVO', 'CLIENTE', '165'),
	(63, 6, 'rene@qaconstrucciones.com', 'construcciones y remodelacion quintero ardila sas', '085b621ff52020b1ca74b10a241c6d0be4407cc374fefd535a7fcc43', 'NO VERIFICADO', 'CLIENTE', '164'),
	(64, 6, 'compras@vialambre.com.co', 'VIALAMBRE', 'ae000c340e4e5c26bb3c32e838d1a37bfa306b4f066fe8a8689fba6a', 'NO VERIFICADO', 'CLIENTE', '164'),
	(65, 6, 'serafin.camacho@hbsadelec.com.co', 'HB SADELEC', '2b121915ea4c13f07a5c9e29bde70b5840f3347c5f8fb76ae65f160e', 'ACTIVO', 'CLIENTE', '160'),
	(66, 6, 'rafaelsoto1586@hotmail.com', 'RAFAEL SOTO', '4aa0d5d454aa6eaf777a3d9d8b2c02c58da3fa4a976afcccfe4bc6d8', 'ACTIVO', 'CLIENTE', '127'),
	(67, 6, 'ferremetro0520@hotmail.com', 'ferremetro', '26f8b0e27b375786b6f11befa01e92e34525cb71ba7e51aca26d3ab5', 'NO VERIFICADO', 'CLIENTE', '126'),
	(68, 6, 'luchitonanin@hotmail.com', 'LUIS ORLANDO ANGARITA', '90cf95a0600909da112ead4b77f44322748795c41772275417599687', 'NO VERIFICADO', 'CLIENTE', '123'),
	(69, 6, 'julian@prepacol.com', 'PREPACOLSAS', '7898b2f9527fc43e3e9ecf9e2206a6c33d6f9291541909070da8008d', 'NO VERIFICADO', 'CLIENTE', '121'),
	(70, 6, 'cesar07168@gmail.com', 'edgardo sandoval', '5ba0d66b2484a42dc612d161380cbe51d8969949dfe68c671ab0e3c1', 'ACTIVO', 'CLIENTE', '120'),
	(71, 2, 'gerenciaduitama@toolboxcentersas.com', 'Jhan Carlos León', 'b8dcdc90f2eca97b5b2099c8edf61606be72aac254bbfaa191f5977e', 'ACTIVO', 'GERENTE', '98'),
	(73, 4, 'duitama@toolboxcentersas.com', 'Viviana Marin', 'cd3a8eecd99d20de13b89bea5f27ca6e06799af7d5ab61ed5f769fe2', 'ACTIVO', 'TECNICO', '19'),
	(74, 6, 'karinita2877@hotmail.com', 'FREDY GONZALEZ', 'f19fa9720f9408db7d00b1c480e9b41c5aa3fa1a91ffa2bd10e0395e', 'NO VERIFICADO', 'CLIENTE', '117'),
	(75, 6, 'juank0080@hotmail.com', 'juan carlos paez ', '31da56b2faa297054c07bc4878e06d4605f8129d187edf7e67fd2345', 'ACTIVO', 'CLIENTE', '116'),
	(76, 6, 'mrincon@indumil.gov.co', 'INDUMIL', '886eccd39b3bff895b21c11bee282fcc2c4b2e0dac304062d979092a', 'NO VERIFICADO', 'CLIENTE', '113'),
	(77, 6, 'rusticoslacabana@hotmail.com', 'DAVID MANOSALVA CASTAÑEDA', '39cb98cb74351db3f48ac270978e16b2bf725cb52fb474cb87db9c73', 'ACTIVO', 'CLIENTE', '107'),
	(78, 6, 'jhonmartinez@aquitronica.com.co', 'EQUITRONICA SAS', '0d36568d2ffe49d554dcdd2251cdd0bb9f1d4c21788d42616dc7811e', 'NO VERIFICADO', 'CLIENTE', '106'),
	(79, 6, 'jcristancho2158@gmail', 'JOSE IGNACIO CRISTANCHO', '93719975720b2bc3d948e6ed4a185e8f0018899a355ca0a972dd9f7a', 'NO VERIFICADO', 'CLIENTE', '105'),
	(80, 6, 'raulbedoya04@gmail.com', 'EMER AUTOS', 'a44a045b3c7150ebb23c9756f88c7f8560811654cd04461c0fb5f373', 'NO VERIFICADO', 'CLIENTE', '101'),
	(81, 6, 'gloria.67@hotmail.com', 'LUIS SALAZAR', '6ddd622ae46d3320d616e1850d895b987a9193a5c27facf7fa538316', 'NO VERIFICADO', 'CLIENTE', '98'),
	(82, 6, 'vidriosaenz@hotmail.com', 'VIDRIO SAENZ', 'bbacf35f2d30b94f9e872e302e16a20f88bcfc59fb15c4c07bf0a7c2', 'ACTIVO', 'CLIENTE', '97'),
	(83, 6, 'vidriosdavidgutierrez@gmail.com', 'david gutierrez', 'bcdcad1a69ed4e8c91161ab7cb46add50627a58c6d74549b62f46e83', 'ACTIVO', 'CLIENTE', '96'),
	(84, 6, 'almacen@ingenieriaprac.com.co', 'PRAC S.A.S.', '61a825fb6a53c8ed0c752f2c693948469000229c293f08ee6b0e1102', 'ACTIVO', 'CLIENTE', '96'),
	(85, 6, 'ingenieros10@hotmail.com', 'YENSO MONROY', 'f6eba5668fed31089ac9e845400d60cf0c06c0c0194556d36cf9b7ef', 'NO VERIFICADO', 'CLIENTE', '95'),
	(86, 6, 'JAVIERPIRACON@HOTMAIL.COM', 'JAVIER PIRACON ', '15eac9dfb506fb7da0e8c31a327e46ab63844522e06c5a3664138804', 'NO VERIFICADO', 'CLIENTE', '77'),
	(87, 6, 'ARTUNDAMADUITAMA@GMAIL.COM', 'ARTUNDAMA SAS', '4e79eff9f73b3e818c4c0cf6542f5dddce5cb70d63c6778846b7294a', 'NO VERIFICADO', 'CLIENTE', '74'),
	(88, 6, '', 'diomedez blanco', '7d2fbe0326e8811d72a1d0f0ea0b7a61639d09fea997dc8d99807a18', 'NO VERIFICADO', 'CLIENTE', '74'),
	(89, 6, 'moviendo.ideas@hotmail.com', 'MOVIENDO IDEAS SAS', 'd0f05cf290251f66cb1fb8277ca1c52df10ad483fa8062cdb1d892d3', 'NO VERIFICADO', 'CLIENTE', '65'),
	(90, 6, 'dcarrillo@ingenieriadeviassas.com.co', 'INGENIERIA DE VIAS S.A', 'c42e059eec51599628fe0892e5b784e78621ef5e942d1a98e1ee5b3f', 'NO VERIFICADO', 'CLIENTE', '64'),
	(91, 6, 'blackbull@gmail.com', 'JHON REYES', 'e4d26144154363018e6eed7980cbb5e02281c12777e0ca44c2d98efe', 'NO VERIFICADO', 'CLIENTE', '62'),
	(92, 6, 'eliasperezj@hotmail.com', 'PRODULIMAS', 'cbed5af7d6a785cbb40b23d0f0c33fed11d136cee6924f01dd427ac0', 'NO VERIFICADO', 'CLIENTE', '61'),
	(93, 6, 'camilo.type928@yahoo.com', 'CAMILO SANCHEZ', '649c7dfbc4a30d185e6f2b1f96ac4c0a073ed44f0662a8280a70079d', 'ACTIVO', 'CLIENTE', '0'),
	(94, 6, 'vdlrojas@gmail.com', 'VIDAL ROJAS', 'b1009d62bff9bd535555ace43258ba8ee765c8265a03a171ea411f73', 'ACTIVO', 'CLIENTE', '60'),
	(95, 6, 'pecama1624@hotmail.com', 'DANILO PIÑA', '5100ebf602d3c743a05f824d74e75371d905addbe7d299488fccd10b', 'NO VERIFICADO', 'CLIENTE', '53'),
	(96, 6, 'compras@cercol-colombia.com', 'CERCOL COLOMBIA S.A.S', '59c0e8d8004c03951375106c3f92e6d1ddf5c8c90df58dd0fadd0ac2', 'ACTIVO', 'CLIENTE', '49'),
	(97, 6, 'easy.jobmultiserviciossas@gmail.com', 'EASY-JOB MULTISERVICIOS S.A.S', '2ccf439a64c8c33696b25ae6ebaa3195cc0ef2b794d36a8e71975e58', 'ACTIVO', 'CLIENTE', '43'),
	(98, 6, 'cortesydoblados722@hotmail.com', 'Olimpo Cardenas Cely', 'a3e31a77276d6bdea9ee3749eb4454610146cb6486fd4397578a789c', 'ACTIVO', 'CLIENTE', '42'),
	(99, 6, 'compras@icmsas.com.co', 'ICM INGENIERIA CONSTRUCCIONES Y MONTAJES SAS', '6aca7b582acac791a311d3702fc10aead4986ea0500e89c00f6fcaca', 'NO VERIFICADO', 'CLIENTE', '41'),
	(100, 6, 'cieloscubiertasyacabados@yahoo.com', 'CIELOS CUBIERTAS ACABADOS Y SERVICIOS SAS', '591fc6d790d92477368012502007475db4f392c7f7e3e4520bdbc620', 'NO VERIFICADO', 'CLIENTE', '33'),
	(101, 6, 'mantenimiento@sac.com.co', 'SAC ESTRUCTURAS S.A', '2e80f9fe8a7f696b74875b0f81c2aae37da9449e61da04e95c947d46', 'ACTIVO', 'CLIENTE', '27'),
	(102, 6, 'adrianogue@gmail.com', 'ADRIANO GUEVARA', '2f59682765218082bf255b9b34adeca34ef6008fccf3eed49c12b33b', 'NO VERIFICADO', 'CLIENTE', '26'),
	(103, 6, 'centroherramientassharito@hotmail.com', 'LUIS EDUARDO SANCHEZ', '9507d2931c75a3fba09bd6857ebe2a7f6c7159c2be84fe71051fd689', 'ACTIVO', 'CLIENTE', '22'),
	(104, 6, 'diego_pg28@hotmail.com', 'DIEGO PUERTO', '3bd1fc531a306f17d60fe2c6d6b55cbcb2a752b1c74dec632a55417e', 'NO VERIFICADO', 'CLIENTE', '18'),
	(106, 6, 'diegocamilofrencher@gmail.com', 'CERCOL COLOMBIA', 'd0d7fec8fef421e51ce2505dc43a18b63c94d5c16f88029b094096ed', 'ACTIVO', 'CLIENTE', '12'),
	(107, 6, 'ruben.yara@santareyes.com.co', 'RUBEN DARIO YARA', '896ce2191edfbab958175bd9733a2a971dcdaa6374a3558a953b13f8', 'ACTIVO', 'CLIENTE', '9'),
	(108, 6, 'ingenieria@inversionesinna.com', 'INVERSIONES INNA S.A.S.', 'd6210f7f284968ff1317327f563336ff11c88bf527863971ef8e235b', 'NO VERIFICADO', 'CLIENTE', '8'),
	(109, 6, 'ingecon1a@gmail.com', 'INGECON1A S.A.S', '8423d0d646621afcf2219232e25d9cfa0b14e9436ab2a09e104c6b2b', 'NO VERIFICADO', 'CLIENTE', '7'),
	(110, 6, 'diegocamilofrencher@gmail.com.co', 'diego frencher', 'be3b45a664f9679287071bf6aea6f300b1856f10ad2c5cfd3148e081', 'NO VERIFICADO', 'CLIENTE', '5'),
	(112, 6, 'jaimerodriguezdya@gmail.com', 'jaime de jesus rodriguez sana', 'ca66a1d3c200f6250abdd3a2d06242929f6bc6a861adc36899b15eb2', 'ACTIVO', 'CLIENTE', '4');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

-- Volcando estructura para procedimiento u107806033_tool.cliente_insert
DELIMITER //
CREATE DEFINER=`u107806033_tool`@`localhost` PROCEDURE `cliente_insert`(
	IN `_cedula` VARCHAR(50),
	IN `_telefono` VARCHAR(50),
	IN `_direccion` VARCHAR(150),
	IN `_correo_electronico` VARCHAR(150),
	IN `_nombre` VARCHAR(50),
	IN `_clave` TEXT



,
	IN `_id_empresa` INT



,
	IN `_tipo_cliente` VARCHAR(50)




,
	IN `_correo_opcional` VARCHAR(150)

)
BEGIN
DECLARE v_cedula VARCHAR(50);
DECLARE v_correo VARCHAR(150);
SELECT c.cedula INTO v_cedula FROM cliente c WHERE c.cedula = _cedula;
SELECT u.correo_electronico INTO  v_correo FROM usuario u WHERE u.correo_electronico = _correo_electronico;

IF v_cedula = _cedula THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'cedula ya existe';
END IF;
IF v_correo = _correo_electronico THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'correo_electronico ya existe';
END IF;

INSERT cliente SET
cedula = _cedula,
telefono = _telefono,
id_empresa = _id_empresa,
tipo = _tipo_cliente,
correo_opcional = _correo_opcional,
direccion = _direccion;

INSERT usuario SET
correo_electronico  = _correo_electronico,
nombre = _nombre,
clave = SHA2(_clave,224),
tipo = 'CLIENTE';

UPDATE cliente c, usuario u SET
c.id_usuario = u.id_usuario
WHERE c.cedula = _cedula
AND u.correo_electronico = _correo_electronico;

SELECT * FROM cliente c, usuario u WHERE c.id_usuario = u.id_usuario AND c.cedula  = _cedula;
END//
DELIMITER ;

-- Volcando estructura para procedimiento u107806033_tool.cliente_update
DELIMITER //
CREATE DEFINER=`u107806033_tool`@`localhost` PROCEDURE `cliente_update`(
	IN `_id_cliente` INT,
	IN `_id_usuario` INT,
	IN `_cedula` VARCHAR(50),
	IN `_telefono` VARCHAR(50),
	IN `_id_empresa` INT,
	IN `_tipo_cliente` VARCHAR(50),
	IN `_direccion` VARCHAR(50),
	IN `_correo_electronico` VARCHAR(150),
	IN `_nombre` VARCHAR(50)
,
	IN `_correo_opcional` VARCHAR(150)
)
BEGIN
UPDATE cliente SET
cedula = _cedula,
telefono = _telefono,
id_empresa = _id_empresa,
tipo = _tipo_cliente,
direccion = _direccion,
correo_opcional = _correo_opcional
WHERE id_cliente = _id_cliente;

UPDATE usuario SET
correo_electronico  = _correo_electronico,
nombre = _nombre
WHERE id_usuario = _id_usuario;

END//
DELIMITER ;

-- Volcando estructura para procedimiento u107806033_tool.cotizacion_insert
DELIMITER //
CREATE DEFINER=`u107806033_tool`@`localhost` PROCEDURE `cotizacion_insert`(
	IN `_id_cliente` INT,
	IN `_id_empleado` INT,
	IN `_valor` INT,
	IN `_subtotal` INT,
	IN `_descuento` INT,
	IN `_descripcion` INT,
	IN `_total` INT
)
BEGIN
INSERT cotizacion SET
id_cliente = _id_cliente,
id_empleado = _id_empleado,
valor = _valor,
subtotal = _subtotal,
descuento = _descuento,
descripcion = _descripcion,
total = _total;

SELECT * FROM cotizacion WHERE id_cliente = _id_cliente ORDER BY id_cotizacion DESC LIMIT 1;
END//
DELIMITER ;

-- Volcando estructura para procedimiento u107806033_tool.empleado_insert
DELIMITER //
CREATE DEFINER=`u107806033_tool`@`localhost` PROCEDURE `empleado_insert`(
	IN `_cedula` VARCHAR(50),
	IN `_telefono` VARCHAR(50),
	IN `_direccion` VARCHAR(150),
	IN `_correo_electronico` VARCHAR(150),
	IN `_nombre` VARCHAR(50),
	IN `_clave` TEXT,
	IN `_estado` VARCHAR(50),
	IN `_id_tipo_usuario` INT
,
	IN `_notificaciones` VARCHAR(45)


)
BEGIN
DECLARE v_cedula VARCHAR(50);
DECLARE v_correo VARCHAR(150);
SELECT c.cedula INTO v_cedula FROM empleado c WHERE c.cedula = _cedula;
SELECT u.correo_electronico INTO  v_correo FROM usuario u WHERE u.correo_electronico = _correo_electronico;

IF v_cedula = _cedula THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'cedula ya existe';
END IF;
IF v_correo = _correo_electronico THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'correo_electronico ya existe';
END IF;

INSERT usuario SET
id_tipo_usuario = _id_tipo_usuario,
correo_electronico  = _correo_electronico,
nombre = _nombre,
clave = SHA2(_clave,224),
estado = _estado,
tipo = (select t.nombre from tipo_usuario t where t.id_tipo_usuario = _id_tipo_usuario),
notificaciones = _notificaciones;

INSERT empleado SET
cedula = _cedula,
telefono = _telefono,
direccion = _direccion,
id_usuario = (select u.id_usuario from usuario u where u.correo_electronico = _correo_electronico);

SELECT * FROM empleado c, usuario u WHERE c.id_usuario = u.id_usuario AND c.cedula  = _cedula;
END//
DELIMITER ;

-- Volcando estructura para procedimiento u107806033_tool.empleado_update
DELIMITER //
CREATE DEFINER=`u107806033_tool`@`localhost` PROCEDURE `empleado_update`(
	IN `_id_empleado` INT,
	IN `_id_usuario` INT,
	IN `_cedula` VARCHAR(50),
	IN `_telefono` VARCHAR(50),
	IN `_direccion` VARCHAR(150),
	IN `_correo_electronico` VARCHAR(150),
	IN `_nombre` VARCHAR(50),
	IN `_estado` VARCHAR(50),
	IN `_id_tipo_usuario` INT
,
	IN `_notificaciones` VARCHAR(45)



)
BEGIN
UPDATE usuario SET
id_tipo_usuario = _id_tipo_usuario,
correo_electronico  = _correo_electronico,
nombre = _nombre,
estado = _estado,
tipo = (select t.nombre from tipo_usuario t where t.id_tipo_usuario = _id_tipo_usuario),
notificaciones = _notificaciones
WHERE id_usuario = _id_usuario;

UPDATE empleado SET
cedula = _cedula,
telefono = _telefono,
direccion = _direccion
WHERE id_empleado = _id_empleado;

SELECT * FROM empleado c, usuario u WHERE c.id_usuario = u.id_usuario AND c.cedula  = _cedula;

END//
DELIMITER ;

-- Volcando estructura para procedimiento u107806033_tool.empresa_insert
DELIMITER //
CREATE DEFINER=`u107806033_tool`@`localhost` PROCEDURE `empresa_insert`(
	IN `_nit` VARCHAR(50),
	IN `_nombre_empresa` VARCHAR(50),
	IN `_correo_empresa` VARCHAR(150),
	IN `_telefono_empresa` VARCHAR(50),
	IN `_direccion_empresa` TEXT,
	IN `_descripcion` TEXT,
	IN `_imagen_empresa` TEXT,
	IN `_cedula` VARCHAR(50),
	IN `_telefono_cliente` VARCHAR(50),
	IN `_direccion_cliente` TEXT,
	IN `_correo_cliente` VARCHAR(150),
	IN `_nombre_cliente` VARCHAR(50),
	IN `_clave` TEXT,
	IN `_estado` VARCHAR(50),
	IN `_tipo_usuario` VARCHAR(50),
	IN `_notificaciones` VARCHAR(50)

)
BEGIN
DECLARE v_id_empresa INT(11);
DECLARE v_id_usuario INT(11);

DECLARE v_nombre_empresa VARCHAR(50);
DECLARE v_correo_empresa VARCHAR(150);
DECLARE v_correo_cliente VARCHAR(150);
DECLARE v_nit VARCHAR(50);
DECLARE v_cedula VARCHAR(50);

SELECT e.nombre INTO v_nombre_empresa FROM empresa e WHERE e.nombre = _nombre_empresa; 
SELECT e.correo_electronico INTO v_correo_empresa FROM empresa e WHERE e.correo_electronico  = _correo_empresa; 
SELECT u.correo_electronico INTO v_correo_cliente FROM usuario u WHERE u.correo_electronico = _correo_cliente; 
SELECT e.nit INTO v_nit FROM empresa e WHERE e.nit = _nit; 
SELECT c.cedula INTO v_cedula FROM cliente c WHERE c.cedula = _cedula; 

IF v_nombre_empresa = _nombre_empresa THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'nombre_empresa ya existe';
END IF;
IF v_correo_empresa = _correo_empresa THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'correo_empresa ya existe';
END IF;
IF v_correo_cliente = _correo_cliente THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'correo_cliente ya existe';
END IF;
IF v_nit = _nit THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'nit ya existe';
END IF;
IF v_cedula = _cedula THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'cedula ya existe';
END IF;

INSERT empresa SET
nit = _nit,
nombre = _nombre_empresa,
correo_electronico = _correo_empresa,
telefono = _telefono_empresa,
direccion = _direccion_empresa,
descripcion = _descripcion,
imagen = _imagen_empresa;


INSERT usuario SET
correo_electronico = _correo_cliente,
nombre = _nombre_cliente,
clave = SHA2(_clave,224),
tipo = 'CLIENTE';

SELECT e.id_empresa INTO v_id_empresa FROM empresa e WHERE e.nit = _nit; 
SELECT u.id_usuario INTO v_id_usuario FROM usuario u WHERE u.correo_electronico = _correo_cliente; 

INSERT cliente SET
id_usuario = v_id_usuario,
id_empresa = v_id_empresa,
cedula = _cedula,
telefono = _telefono_cliente,
direccion = _direccion_cliente,
tipo = 'EMPRESA';

SELECT * FROM empresa_cliente WHERE nit = _nit;

END//
DELIMITER ;

-- Volcando estructura para procedimiento u107806033_tool.empresa_update
DELIMITER //
CREATE DEFINER=`u107806033_tool`@`localhost` PROCEDURE `empresa_update`(
	IN `_id_cliente` INT,
	IN `_id_empresa` INT,
	IN `_id_usuario` INT,
	IN `_nit` VARCHAR(50),
	IN `_nombre_empresa` VARCHAR(50),
	IN `_correo_empresa` VARCHAR(150),
	IN `_telefono_empresa` VARCHAR(50),
	IN `_direccion_empresa` TEXT,
	IN `_descripcion` TEXT,
	IN `_imagen_empresa` TEXT,
	IN `_cedula` VARCHAR(50),
	IN `_telefono_cliente` VARCHAR(50),
	IN `_direccion_cliente` TEXT,
	IN `_correo_cliente` VARCHAR(150),
	IN `_nombre_cliente` VARCHAR(50),
	IN `_clave` TEXT,
	IN `_estado` VARCHAR(50),
	IN `_tipo_usuario` VARCHAR(50),
	IN `_notificaciones` VARCHAR(50)


)
BEGIN

UPDATE empresa SET
nit = _nit,
nombre = _nombre_empresa,
correo_electronico = _correo_empresa,
telefono = _telefono_empresa,
direccion = _direccion_empresa,
descripcion = _descripcion,
imagen = _imagen_empresa
WHERE id_empresa = _id_empresa;

UPDATE usuario SET
correo_electronico = _correo_cliente,
nombre = _nombre_cliente,
estado = _estado,
tipo = _tipo_usuario,
notificaciones = _notificaciones
WHERE id_usuario = _id_usuario;

UPDATE cliente SET
id_usuario = _id_usuario,
id_empresa = _id_empresa,
cedula = _cedula,
telefono = _telefono_cliente,
direccion = _direccion_cliente,
tipo = 'EMPRESA'
WHERE id_cliente = _id_cliente;

END//
DELIMITER ;

-- Volcando estructura para procedimiento u107806033_tool.equipo_insert
DELIMITER //
CREATE DEFINER=`u107806033_tool`@`localhost` PROCEDURE `equipo_insert`(
	IN `_nombre` VARCHAR(50),
	IN `_codigo` VARCHAR(50),
	IN `_precio` VARCHAR(50),
	IN `_descripcion` TEXT,
	IN `_fabricante` VARCHAR(50)




)
BEGIN
INSERT equipo SET
nombre = _nombre,
codigo = _codigo,
precio = _precio,
descripcion = _descripcion,
fabricante = _fabricante;
INSERT kardex SET
codigo = _codigo,
nombre = _nombre,
tipo = 'BODEGA',
precio = _precio;
INSERT inventario SET
codigo = _codigo,
nombre = _nombre,
estado = 'BODEGA',
precio = _precio;
END//
DELIMITER ;

-- Volcando estructura para procedimiento u107806033_tool.equipo_update
DELIMITER //
CREATE DEFINER=`u107806033_tool`@`localhost` PROCEDURE `equipo_update`(
	IN `_id_equipo` INT,
	IN `_nombre` VARCHAR(50),
	IN `_codigo` VARCHAR(50),
	IN `_precio` VARCHAR(50),
	IN `_descripcion` TEXT,
	IN `_fabricante` VARCHAR(50)


,
	IN `_estado` VARCHAR(50)

)
BEGIN
UPDATE equipo SET
nombre = _nombre,
codigo = _codigo,
precio = _precio,
descripcion = _descripcion,
fabricante = _fabricante,
estado = _estado
WHERE id_equipo = _id_equipo;
INSERT kardex SET
codigo = _codigo,
nombre = _nombre,
precio = _precio,
tipo = _estado;
UPDATE inventario SET
codigo = _codigo,
nombre = _nombre,
precio = _precio,
estado = _estado
WHERE codigo = _codigo;
END//
DELIMITER ;

-- Volcando estructura para procedimiento u107806033_tool.factura_insert
DELIMITER //
CREATE DEFINER=`u107806033_tool`@`localhost` PROCEDURE `factura_insert`(
	IN `_id_cliente` INT,
	IN `_id_empleado` INT,
	IN `_valor` DECIMAL(10,2),
	IN `_subtotal` DECIMAL(10,2),
	IN `_descuento` DECIMAL(10,2),
	IN `_total` DECIMAL(10,2)

)
BEGIN
INSERT factura SET
id_cliente = _id_cliente,
id_empleado = _id_empleado,
valor = _valor,
subtotal = _subtotal,
descuento = _descuento,
total = _total;

SELECT * FROM factura WHERE id_cliente = _id_cliente ORDER BY id_factura DESC LIMIT 1;
END//
DELIMITER ;

-- Volcando estructura para procedimiento u107806033_tool.login
DELIMITER //
CREATE DEFINER=`u107806033_tool`@`localhost` PROCEDURE `login`(
	IN `_correo_electronico` VARCHAR(150),
	IN `_clave` VARCHAR(50)









)
BEGIN
DECLARE v_estado VARCHAR(50);
SELECT estado INTO v_estado
FROM usuario
WHERE correo_electronico = _correo_electronico;
IF v_estado = 'NO VERIFICADO' THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'USUARIO NO VERIFICADO';
END IF;
IF v_estado = 'INACTIVO' THEN
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'USUARIO INACTIVO';
END IF;

SELECT u.*
FROM usuario u
WHERE u.correo_electronico = _correo_electronico
AND clave = SHA2(_clave, 224)
AND estado = 'ACTIVO';
END//
DELIMITER ;

-- Volcando estructura para procedimiento u107806033_tool.notificacion_insert
DELIMITER //
CREATE DEFINER=`u107806033_tool`@`localhost` PROCEDURE `notificacion_insert`(
	IN `_url` TEXT,
	IN `_text` TEXT,
	IN `_tipo` VARCHAR(50)
)
BEGIN
INSERT notificacion SET
url = _url, 
text = _text, 
tipo = _tipo;

UPDATE usuario SET
notificaciones = notificaciones + 1;

END//
DELIMITER ;

-- Volcando estructura para procedimiento u107806033_tool.repuesto_insert
DELIMITER //
CREATE DEFINER=`u107806033_tool`@`localhost` PROCEDURE `repuesto_insert`(
	IN `_referencia` VARCHAR(50),
	IN `_fabricante` VARCHAR(50),
	IN `_descripcion` TEXT,
	IN `_nombre` VARCHAR(50),
	IN `_cantidad` VARCHAR(50),
	IN `_imagen` TEXT,
	IN `_estado` VARCHAR(50),
	IN `_precio` DECIMAL(10,0)
)
BEGIN
INSERT repuesto SET
referencia = _referencia,
fabricante = _fabricante,
descripcion = _descripcion,
nombre = _nombre,
cantidad = _cantidad,
imagen = _imagen,
estado = _estado,
precio = _precio;
SELECT * 
FROM repuesto r
WHERE r.referencia = _referencia;
END//
DELIMITER ;

-- Volcando estructura para procedimiento u107806033_tool.servicio_tecnico_insert
DELIMITER //
CREATE DEFINER=`u107806033_tool`@`localhost` PROCEDURE `servicio_tecnico_insert`(
	IN `_nombre_equipo` VARCHAR(50),
	IN `_codigo_equipo` VARCHAR(50),
	IN `_serial_equipo` VARCHAR(50),
	IN `_fabricante` VARCHAR(50),
	IN `_descripcion` TEXT,
	IN `_id_cliente` INT,
	IN `_id_empleado` INT,
	IN `_descripcion_estado` TEXT,
	IN `_descripcion_problema` TEXT,
	IN `_foto1` TEXT,
	IN `_foto2` TEXT,
	IN `_foto3` TEXT








)
BEGIN
DECLARE v_id_equipo INT(11);
DECLARE v_id_estado_equipo INT(11);
DECLARE v_iva DECIMAL(10,2);
SELECT valor INTO v_iva FROM impuesto WHERE nombre = 'IVA';
INSERT equipo_servicio_tecnico SET
nombre = _nombre_equipo,
codigo = _codigo_equipo,
serial = _serial_equipo,
descripcion = _descripcion,
fabricante = _fabricante;
SELECT id_equipo_servicio_tecnico INTO v_id_equipo 
FROM equipo_servicio_tecnico WHERE codigo = _codigo_equipo
ORDER BY id_equipo_servicio_tecnico DESC LIMIT 1;

INSERT estado_equipo SET
descripcion = _descripcion_estado,
foto1 = _foto1,
foto2 = _foto2,
foto3 = _foto3;
SELECT id_estado_equipo INTO v_id_estado_equipo 
FROM estado_equipo ORDER BY id_estado_equipo DESC LIMIT 1;

SET time_zone = '-5:00';

INSERT servicio_tecnico SET
id_equipo = v_id_equipo,
id_estado_equipo = v_id_estado_equipo,
id_empleado = _id_empleado,
id_cliente = _id_cliente,
iva = v_iva,
fecha_recibido = NOW(),
descripcion_problema = _descripcion_problema;

SELECT *
FROM servicio_tecnico WHERE id_estado_equipo = v_id_estado_equipo;
END//
DELIMITER ;

-- Volcando estructura para procedimiento u107806033_tool.usuario_insert
DELIMITER //
CREATE DEFINER=`u107806033_tool`@`localhost` PROCEDURE `usuario_insert`(
	IN `_correo_electronico` VARCHAR(150),
	IN `_nombre` VARCHAR(50),
	IN `_clave` VARCHAR(50),
	IN `_tipo` VARCHAR(50)
    )
BEGIN
DECLARE v_id_usuario INT(11);

INSERT usuario set 
correo_electronico = _correo_electronico, 
nombre = _nombre, 
clave = SHA2(_clave,224),
tipo = _tipo;

SELECT 
    u.id_usuario
INTO v_id_usuario FROM
    usuario u
WHERE
    u.correo_electronico = _correo_electronico;

IF _tipo = 'CLIENTE' THEN
INSERT cliente set
id_usuario = v_id_usuario;
ELSE
INSERT empleado set id_usuario = v_id_usuario;
END
IF;

SELECT 
    *
FROM
    usuario u
WHERE
    u.correo_electronico = _correo_electronico;
END//
DELIMITER ;

-- Volcando estructura para procedimiento u107806033_tool.usuario_update
DELIMITER //
CREATE DEFINER=`u107806033_tool`@`localhost` PROCEDURE `usuario_update`(
	IN `_id_usuario` INT,
	IN `_correo_electronico` VARCHAR(150),
	IN `_nombre` VARCHAR(50),
	IN `_clave` VARCHAR(50)
,
	IN `_estado` VARCHAR(50)
,
	IN `_tipo` VARCHAR
(
50
)

,
	IN `_notificaciones` VARCHAR(50)


)
BEGIN
IF _clave LIKE '' OR _clave IS NULL OR _clave THEN
	UPDATE usuario set
	correo_electronico = _correo_electronico,
	nombre = _nombre, 
	estado = _estado, 
	tipo = _tipo,
	notificaciones = _notificaciones
	WHERE id_usuario = _id_usuario;
ELSE
	UPDATE usuario set
	correo_electronico = _correo_electronico,
	nombre = _nombre, 
	clave = SHA2(_clave,224), 
	estado = _estado, 
	tipo = _tipo,
	notificaciones = _notificaciones
	WHERE id_usuario = _id_usuario;
END IF;
END//
DELIMITER ;

-- Volcando estructura para disparador u107806033_tool.detalle_cotizacion_after_delete
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `detalle_cotizacion_after_delete` AFTER DELETE ON `detalle_cotizacion` FOR EACH ROW BEGIN
UPDATE cotizacion SET
valor = (SELECT sum(valor) from detalle_cotizacion where id_cotizacion =  OLD.id_cotizacion)
WHERE id_cotizacion = OLD.id_cotizacion;

UPDATE cotizacion SET
subtotal = valor - descuento 
WHERE id_cotizacion = OLD.id_cotizacion;

UPDATE cotizacion SET
total = subtotal * 1.19
WHERE id_cotizacion = OLD.id_cotizacion;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador u107806033_tool.detalle_cotizacion_after_insert
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `detalle_cotizacion_after_insert` AFTER INSERT ON `detalle_cotizacion` FOR EACH ROW BEGIN
UPDATE cotizacion SET
valor = (SELECT sum(valor) from detalle_cotizacion where id_cotizacion =  NEW.id_cotizacion)
WHERE id_cotizacion = NEW.id_cotizacion;

UPDATE cotizacion SET
subtotal = valor - descuento 
WHERE id_cotizacion = NEW.id_cotizacion;

UPDATE cotizacion SET
total = subtotal * 1.19
WHERE id_cotizacion = NEW.id_cotizacion;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador u107806033_tool.detalle_factura_after_delete
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `detalle_factura_after_delete` AFTER DELETE ON `detalle_factura` FOR EACH ROW BEGIN
UPDATE factura SET
valor = (SELECT sum(valor) from detalle_factura where id_factura =  OLD.id_factura)
WHERE id_factura = OLD.id_factura;

UPDATE factura SET
subtotal = valor - descuento 
WHERE id_factura = OLD.id_factura;

UPDATE factura SET
total = subtotal * 1.19
WHERE id_factura = OLD.id_factura;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador u107806033_tool.detalle_factura_after_insert
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `detalle_factura_after_insert` AFTER INSERT ON `detalle_factura` FOR EACH ROW BEGIN
UPDATE factura SET
valor = (SELECT sum(valor) from detalle_factura where id_factura =  NEW.id_factura)
WHERE id_factura = NEW.id_factura;

UPDATE factura SET
subtotal = valor - descuento 
WHERE id_factura = NEW.id_factura;

UPDATE factura SET
total = subtotal * 1.19
WHERE id_factura = NEW.id_factura;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador u107806033_tool.detalle_servicio_after_delete
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `detalle_servicio_after_delete` AFTER DELETE ON `detalle_servicio_tecnico` FOR EACH ROW BEGIN
UPDATE servicio_tecnico SET
costo_repuestos = (SELECT sum(precio) from detalle_servicio_tecnico where id_servicio_tecnico = OLD.id_servicio_tecnico)
WHERE id_servicio_tecnico = OLD.id_servicio_tecnico;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador u107806033_tool.detalle_servicio_after_insert
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `detalle_servicio_after_insert` AFTER INSERT ON `detalle_servicio_tecnico` FOR EACH ROW BEGIN
UPDATE servicio_tecnico SET
costo_repuestos = (SELECT sum(precio) from detalle_servicio_tecnico where id_servicio_tecnico =  NEW.id_servicio_tecnico)
WHERE id_servicio_tecnico = NEW.id_servicio_tecnico;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Volcando estructura para disparador u107806033_tool.kardex_repuestos_before_insert
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `kardex_repuestos_before_insert` BEFORE INSERT ON `kardex_repuestos` FOR EACH ROW BEGIN
SET time_zone = '-5:00';
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
