-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-10-2024 a las 18:45:35
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `serverweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `nombreCorto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`id`, `descripcion`, `estado`, `nombre`, `nombreCorto`) VALUES
(1, 'Componente de Formación Disciplinar o Profesional', 'Activo', 'Formación Disciplinar o Profesional', 'Componente de Formación Disciplinar o Profesional'),
(2, 'Componente de Fundamentación', 'Activo', 'Componente de Fundamentación', 'Componente de Fundamentación'),
(3, 'Componente de Libre Elección', 'Activo', 'Componente de Libre Elección', 'Componente de Libre Elección');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `id` bigint(20) NOT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `creditos` int(11) NOT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `nombreCorto` varchar(255) DEFAULT NULL,
  `area_id` bigint(20) DEFAULT NULL,
  `seccion_id` bigint(20) DEFAULT NULL,
  `profesor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`id`, `codigo`, `creditos`, `estado`, `nombre`, `nombreCorto`, `area_id`, `seccion_id`, `profesor_id`) VALUES
(2, 'A0214', 4, 'Activa', 'Algoritmo', 'Algoritmo y Programación de Computadores', 1, 3, 133),
(6, 'A2658', 4, 'Activa', 'Estructuras de Datos', 'Estructuras de Datos', 1, 8, 129),
(7, 'A2658', 4, 'Activa', 'Estructuras de Datos', 'Estructuras de Datos', 1, 11, 131),
(8, 'A1111', 4, 'Activa', 'Analisis y Diseño de software', 'Analisis y Diseño de software', 1, 8, 132),
(9, 'A1111', 4, 'Activa', 'Analisis y Diseño de software', 'Analisis y Diseño de software', 1, 11, 5),
(10, 'A0021', 4, 'Activa', 'Matematicas I', 'Matematicas I', 2, 3, NULL),
(11, 'Q0451', 3, 'Activa', 'Calculo I', 'Calculo I', 2, 1, 134),
(17, 'A3654', 2, 'Activa', 'Introduccion a los Sistemas', 'Introduccion a los Sistemas de informacion', 1, 3, NULL),
(19, 'A5485', 3, 'Activa', 'Escritura e Investigacion', 'Escritura e Investigacion', 2, 8, 130),
(20, 'A5485', 3, 'Activa', 'Escritura e Investigacion', 'Escritura e Investigacion', 2, 11, NULL),
(21, 'A9852', 4, 'Activa', 'Programacion Orientada a Objetos', 'Programación Orientada a Objetos', 1, 4, 132),
(22, 'A7843', 4, 'Activa', 'Desarrollo de Software I', 'Desarrollo de Software I', 1, 9, 132),
(23, 'A7843', 4, 'Activa', 'Desarrollo de Software I', 'Desarrollo de Software I', 1, 12, NULL),
(24, 'A1235', 3, 'Activa', 'Aplicaciones Web', 'Aplicaciones Web', 1, 9, NULL),
(25, 'A1235', 3, 'Activa', 'Aplicaciones Web', 'Aplicaciones Web', 1, 12, NULL),
(26, 'EL542', 3, 'Activa', 'Framework JS', 'Framework JS', 3, 10, 132),
(27, 'A2543', 4, 'Activa', 'Desarrollo de Software II', 'Desarrollo de Software II', 1, 10, 133),
(28, 'md098', 4, 'Activa', 'Matemáticas Discretas', 'Matemáticas Discretas', 2, 8, 6),
(29, 'md098', 4, 'Activa', 'Matemáticas Discretas', 'Matemáticas Discretas', 2, 11, NULL),
(30, 'et345', 3, 'Activa', 'Electiva Tecnológica', 'Electiva Tecnológica', 3, 8, 134),
(31, 'et345', 3, 'Activa', 'Electiva Tecnológica', 'Electiva Tecnológica', 3, 11, NULL),
(32, 'A0452', 4, 'Activa', 'Programacion I', 'Programacion I', 1, 1, 129),
(33, 'A0452', 4, 'Activa', 'Programacion I', 'Programacion I', 1, 2, NULL),
(42, 'wer45', 4, 'Activa', 'Administracion I', 'Administracion I', 1, 29, NULL),
(43, 'wer45', 4, 'Activa', 'Administracion I', 'Administracion I', 1, 30, NULL),
(44, 'P0293', 4, 'Activa', 'Produccion de materiales I', 'Produccion de materiales I', 1, 32, 131),
(45, 'P0293', 4, 'Activa', 'Produccion de materiales I', 'Produccion de materiales I', 1, 33, NULL),
(46, 'P1234', 4, 'Activa', 'Calculo III', 'Calculo III', 2, 32, NULL),
(47, 'P1234', 4, 'Activa', 'Calculo III', 'Calculo III', 2, 33, NULL),
(48, 'API452', 4, 'Activa', 'Procesos industriales', 'Procesos industriales', 1, 34, 131),
(49, 'API452', 4, 'Activa', 'Procesos industriales', 'Procesos industriales', 1, 35, NULL),
(62, 'API534', 4, 'Activa', 'Calculo IV', 'Calculo IV', 2, 34, 134),
(63, 'API534', 4, 'Activa', 'Calculo IV', 'Calculo IV', 2, 35, NULL),
(66, 'AA234', 3, 'Activa', 'Contabilidad II', 'Contabilidad II', 1, 36, 134),
(67, 'AA234', 3, 'Activa', 'Contabilidad II', 'Contabilidad II', 1, 37, NULL),
(70, 'PI1324', 3, 'Activa', 'Investigacion de operaciones', 'Investigacion de operaciones', 2, 35, NULL),
(71, 'PI1324', 3, 'Activa', 'Investigacion de operaciones', 'Investigacion de operaciones', 2, 34, 135),
(72, 'API982', 2, 'Activa', 'Cultura Ambiental', 'Cultura Ambiental', 3, 34, 136),
(73, 'API982', 2, 'Activa', 'Cultura Ambiental', 'Cultura Ambiental', 3, 35, NULL),
(74, 'API876', 4, 'Activa', 'Manejo de materiales', 'Manejo de Materiales', 1, 34, 130),
(75, 'API876', 4, 'Activa', 'Manejo de materiales', 'Manejo de Materiales', 1, 35, NULL),
(76, 'A124', 3, 'Activa', 'calculo', 'Razonamiento y ecuaciones matematicas', 1, 39, NULL),
(78, 'A124', 3, 'Activa', 'calculo', 'Razonamiento y ecuaciones matematicas', 1, 43, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistente`
--

CREATE TABLE `asistente` (
  `id` bigint(20) NOT NULL,
  `estudiante_id` bigint(20) DEFAULT NULL,
  `tutoria_id` bigint(20) DEFAULT NULL,
  `asistio` bit(1) DEFAULT NULL,
  `motivo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `asistente`
--

INSERT INTO `asistente` (`id`, `estudiante_id`, `tutoria_id`, `asistio`, `motivo`) VALUES
(1, 107, 5, b'1', ''),
(2, 108, 5, b'0', 'excusa medica'),
(3, 109, 5, b'1', ''),
(4, 107, 7, b'1', ''),
(5, 108, 7, b'1', ''),
(6, 109, 7, b'1', ''),
(7, 94, 10, b'1', ''),
(8, 96, 10, b'1', ''),
(12, 94, 13, b'1', ''),
(13, 96, 13, b'1', ''),
(16, 135, 16, b'1', ''),
(17, 136, 16, b'0', 'dfgdfg'),
(18, 137, 16, b'1', ''),
(19, 133, 17, b'1', ''),
(20, 131, 18, b'1', ''),
(21, 132, 18, b'1', ''),
(22, 107, 8, b'1', ''),
(23, 108, 8, b'1', ''),
(24, 109, 8, b'1', ''),
(25, 133, 19, b'1', ''),
(26, 167, 20, b'1', ''),
(27, 168, 20, b'1', ''),
(28, 169, 20, b'1', ''),
(29, 135, 21, b'1', ''),
(30, 136, 21, b'1', ''),
(31, 137, 21, b'0', 'zfcbzfcbv'),
(32, 135, 22, b'1', ''),
(33, 136, 22, b'1', ''),
(34, 137, 22, b'1', ''),
(35, 133, 23, b'1', ''),
(36, 133, 24, b'1', ''),
(37, 135, 25, b'1', ''),
(38, 136, 25, b'0', 'zdghsdt'),
(39, 137, 25, b'1', ''),
(40, 173, 28, b'1', ''),
(41, 174, 28, b'1', ''),
(42, 175, 28, b'1', ''),
(43, 173, 29, b'0', ''),
(44, 174, 29, b'1', 'vchjcghn'),
(45, 175, 29, b'0', ''),
(46, 173, 27, b'1', ''),
(47, 174, 27, b'1', ''),
(48, 175, 27, b'1', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspecto`
--

CREATE TABLE `aspecto` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `dimension_id` bigint(20) DEFAULT NULL,
  `porcentaje` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `avance`
--

CREATE TABLE `avance` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `fechaEntrega` date DEFAULT NULL,
  `numero` int(11) NOT NULL,
  `fase_id` bigint(20) DEFAULT NULL,
  `integrante_id` bigint(20) DEFAULT NULL,
  `proyecto_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `avance`
--

INSERT INTO `avance` (`id`, `descripcion`, `estado`, `fechaEntrega`, `numero`, `fase_id`, `integrante_id`, `proyecto_id`) VALUES
(2, 'Primer avance', 'Guardado', '2022-12-21', 1, 1, 133, 49),
(7, 'Segundo avance', 'Guardado', '2023-01-18', 2, 2, 133, 49),
(8, 'Primera entrega del proyecto: \nEntrega de documento inicial, Diagrama de clases, y diagrama de casos de uso', 'Guardado', '2023-01-19', 1, 1, 101, 37),
(10, 'hjdfgdfg', 'Guardado', '2023-04-05', 1, 1, 107, 38),
(11, 'zdfhsdfzg', 'Guardado', '2023-05-18', 1, 1, 136, 50),
(12, 'primer avance', 'Guardado', '2023-06-02', 1, 1, 121, 43),
(13, 'fdghdfghsdfghsd', 'Guardado', '2023-06-16', 1, 1, 131, 48),
(14, 'asdgfsdfg sdf gsdf gsdf g', 'Guardado', '2023-07-07', 1, 16, 175, 60),
(15, 'segundo avance', 'Guardado', '2023-07-07', 2, 17, 175, 60);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `competencia`
--

CREATE TABLE `competencia` (
  `id` bigint(20) NOT NULL,
  `unidad_id` bigint(20) DEFAULT NULL,
  `tipo_id` bigint(20) DEFAULT NULL,
  `evidencia` varchar(500) DEFAULT NULL,
  `bibliografia` varchar(500) DEFAULT NULL,
  `estrategia` varchar(1000) DEFAULT NULL,
  `horas` int(4) DEFAULT NULL,
  `tipoentregable_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `competencia`
--

INSERT INTO `competencia` (`id`, `unidad_id`, `tipo_id`, `evidencia`, `bibliografia`, `estrategia`, `horas`, `tipoentregable_id`) VALUES
(2, 4, 3, 'Se determinara el modelo funcional del proyecto', 'uml gota a gota', 'Se realizara un analisis documental , entrevistas y estudiso de casos para establecer el modelo funcional del proyecto', 7, 2),
(3, 4, 3, 'thyrthrst', 'gsdfgdhertyre', 'fthdrthedsrthsrt', 6, 1),
(4, 6, 3, 'hdfgh', 'dfghdfg', 'gfhdfg', 1, 5),
(5, 7, 1, 'ghsdfghfgh', 'dfghdfghdfg', 'dsfghsdf', 4, 6),
(6, 5, 3, 'cddxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxx', 'cddxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxx', 'cddxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxx', 4, 1),
(7, 8, 1, 'fgsdfhsdf', 'hsdfhsdfhsdfg', 'sfdhsdfhgsd', 4, 7),
(8, 9, 3, 'wergwerg wer we gwer wer w\ne rgw erg werg', 'wer gwe rgw er\ng we\nr gwer gwe', 'drfgsergwer \nwer \ngw ergwergwertgwe', 4, 8),
(9, 10, 2, 'dsfgsdf', NULL, 'dsfgsdf', 1, 9),
(10, 11, 2, 'dsfgsdf', NULL, 'dsfgsdf', 1, 10),
(244, 247, 3, 'las entidades del contexto son representadas mediante un diagrama de clases, en la cual se relacionan correctamente, y son codificadas en la capa de modelo del proyecto.', 'uml gota a gota', 'Generar escenarios o contextos con problemas definidos para identificar las entidades de negocio', 4, 244),
(249, 252, 1, 'dfhdfg jd yjdf gj dfg jdfg df gnd fgjd fg dfg dfg', ' hdfg h dfgh dfg dfg dfg dfg dfg hdfg hdfg hd fg hd dfgjhfg kryudsa', 'gdfg sdfgsdfgsdfgsdfs sdf hsdf gsdf sd fh dsfh s', 1, 249),
(274, 277, 2, 'Tutorias', NULL, 'Tutorias', 1, 274),
(275, 278, 2, 'Sustentacion', NULL, 'Sustentacion', 1, 275),
(276, 279, 2, 'Tutorias', NULL, 'Tutorias', 1, 276),
(277, 280, 2, 'Sustentacion', NULL, 'Sustentacion', 1, 277),
(278, 281, 2, 'Tutorias', NULL, 'Tutorias', 1, 278),
(279, 282, 2, 'Sustentacion', NULL, 'Sustentacion', 1, 279),
(280, 283, 2, 'Tutorias', NULL, 'Tutorias', 1, 280),
(281, 284, 2, 'Sustentacion', NULL, 'Sustentacion', 1, 281),
(282, 285, 2, 'Tutorias', NULL, 'Tutorias', 1, 282),
(283, 286, 2, 'Sustentacion', NULL, 'Sustentacion', 1, 283),
(284, 287, 2, 'Tutorias', NULL, 'Tutorias', 1, 284),
(285, 288, 2, 'Sustentacion', NULL, 'Sustentacion', 1, 285),
(286, 289, 3, 'xxxxxxxxx', 'xxxxxx', 'Desarrollar funcionalidades de\nprogramas que permitan organizar, y\nprocesar datos mediante estructuras\nlineales.', 4, 286),
(287, 289, 3, 'xxxxxxxxxxxxx', 'xxxxxxxxxxxxx', 'Desarrollar funcionalidades de\nprogramas que permitan organizar, y\nprocesar datos mediante estructuras no lineales', 4, 287),
(288, 8, 1, 'aaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaa', 3, 7),
(289, 291, 3, 'yertywertywe', 'rtywertyd', 'efrwrgter', 3, 294),
(290, 292, 1, 'evidencias de calculo IV', 'bibliografia de calculo IV', 'estrategia de claculo IV', 4, 295),
(291, 293, 3, 'esquema', 'esquema', 'esquema', 4, 296),
(292, 293, 3, 'prototipo', 'prototipo', 'prototipo', 4, 297),
(293, 295, 1, 'evidencias IO', 'bibliografia IO', 'estrategia IO', 3, 298),
(294, 296, 3, 'evidencias mm', 'bibliografia mm', 'estrategia mm', 3, 299),
(295, 297, 1, 'evidencias ambientales', 'bibliografia ambiental', 'estrategia ambiental', 2, 300),
(296, 298, 2, 'Tutorias', NULL, 'Tutorias', 1, 301),
(297, 299, 2, 'Sustentacion', NULL, 'Sustentacion', 1, 302),
(298, 300, 2, 'Tutorias', NULL, 'Tutorias', 1, 303),
(299, 301, 2, 'Sustentacion', NULL, 'Sustentacion', 1, 304),
(300, 302, 2, 'Tutorias', NULL, 'Tutorias', 1, 305),
(301, 303, 2, 'Sustentacion', NULL, 'Sustentacion', 1, 306),
(302, 304, 2, 'Tutorias', NULL, 'Tutorias', 1, 307),
(303, 305, 2, 'Sustentacion', NULL, 'Sustentacion', 1, 308),
(304, 306, 2, 'Tutorias', NULL, 'Tutorias', 1, 309),
(305, 307, 2, 'Sustentacion', NULL, 'Sustentacion', 1, 310);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coordinador`
--

CREATE TABLE `coordinador` (
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `coordinador`
--

INSERT INTO `coordinador` (`id`) VALUES
(2),
(3),
(137);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `criterio`
--

CREATE TABLE `criterio` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `competencia_id` bigint(20) DEFAULT NULL,
  `porcentaje` int(11) DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `criterio`
--

INSERT INTO `criterio` (`id`, `descripcion`, `competencia_id`, `porcentaje`, `tipo`) VALUES
(2, 'el modelo funcional del proyecto esta acorde a las necesidades del contexto y esta correctamente modelado segun los estandares de ingenieria', 2, 50, 'Especifico'),
(3, 'cddxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxx', 6, 60, 'Especifico'),
(4, 'Los actores del sistemas estan correctamente identificados deacuerdo a los stakeholders y las necesidades del contexto', 2, 25, 'Especifico'),
(6, 'xdfghsdfghdsfghsdf', 2, 25, 'Especifico'),
(8, 'dfghdfghsdfgasdf', 3, 30, 'Especifico'),
(9, 'zdsrfgsdfgadsfgasdfgs', 3, 50, 'Especifico'),
(10, 'zdfhsdfghsdgfbsd', 3, 20, 'Especifico'),
(11, 'aaaaaaaaaaaaaaaa\nbbbbbbbbbbbbbbbbbbbbbb\nbbbbbbbbbbbbbbbbbbbb', 6, 40, 'Especifico'),
(12, 'fhsdfgsdfgsdfgsd wergwer gwe rgwe rgwe r gwe ger', 7, 100, 'Especifico'),
(13, 'xdfgsdfgs df gs fg\n sdf\n gs\ndf gsdfgsdfghsdfgsd', 8, 100, 'Especifico'),
(246, 'el estudiante formula adecuadamente las variables a tener en cuenta para los calculos numericos del proyecto', 5, 50, 'Especifico'),
(247, 'el estudiante identifica correctamente las variables a tener en cuenta en un problema definido', 5, 50, 'Especifico'),
(250, 'Los atributos de las entidades de negocio estan bien descritos y acordes a sus tipos de datos', 244, 30, 'Especifico'),
(251, 'las relaciones entre las entidades estan bien establecidas y acordes a la dinamica del contexto ', 244, 70, 'Especifico'),
(256, 'La documentacion presentada para el proyecto de aula cumple con los estandares especificos e informa claramente el dominio del contexto', 249, 100, 'Especifico'),
(281, 'Tutorias', 274, 100, 'Global'),
(282, 'Sustentacion', 275, 100, 'Global'),
(283, 'Tutorias', 276, 100, 'Global'),
(284, 'Sustentacion', 277, 100, 'Global'),
(285, 'Tutorias', 278, 100, 'Global'),
(286, 'Sustentacion', 279, 100, 'Global'),
(287, 'Tutorias', 280, 100, 'Global'),
(288, 'Sustentacion', 281, 100, 'Global'),
(289, 'Tutorias', 282, 100, 'Global'),
(290, 'Sustentacion', 283, 100, 'Global'),
(291, 'Tutorias', 284, 100, 'Global'),
(292, 'Sustentacion', 285, 100, 'Global'),
(293, 'Desarrolla clases auto\nreferenciadas (Nodos)\npara formar enlaces\nentre los objetos.', 286, 33, 'Especifico'),
(294, 'Maneja los\nconceptos de Pila y\nCola en la aplicación\npara operaciones en\nestructuras lineales.', 286, 33, 'Especifico'),
(295, 'Manipulación de\nenlaces en las\noperaciones para\nmantenimiento de la\nLista.', 286, 34, 'Especifico'),
(296, 'Maneja los\nalgoritmos que aplican\nsobre los grafos para la\nsatisfacción de\nnecesidades\nespecíficas.', 287, 35, 'Especifico'),
(297, 'Diseño de las\nestructuras de grafo a\npartir de estructuras\nlineales.', 287, 29, 'Especifico'),
(298, 'Desarrolla soluciones de\naplicaciones que\nrequieren uso de grafos\ny sus algoritmos.', 287, 36, 'Especifico'),
(299, 'sfhsdfgsdf sdg sdf gsd fg', 4, 100, 'Especifico'),
(300, 'zdshsdfgwerywertgwe er twe rtw erg', 289, 100, 'Especifico'),
(301, 'Criterio de competencia  1 de calculo IV', 290, 100, 'Especifico'),
(302, 'realiza esquema', 291, 100, 'Especifico'),
(303, 'elabora prototipo', 292, 50, 'Especifico'),
(304, 'documenta prototipo', 292, 50, 'Especifico'),
(305, 'criterio de competencia IO', 293, 100, 'Especifico'),
(306, 'critgerio de competencia MM', 294, 100, 'Especifico'),
(307, 'Tutorias', 296, 100, 'Global'),
(308, 'Sustentacion', 297, 100, 'Global'),
(309, 'Tutorias', 298, 100, 'Global'),
(310, 'Sustentacion', 299, 100, 'Global'),
(311, 'Tutorias', 300, 100, 'Global'),
(312, 'Sustentacion', 301, 100, 'Global'),
(313, 'Tutorias', 302, 100, 'Global'),
(314, 'Sustentacion', 303, 100, 'Global'),
(315, 'Tutorias', 304, 100, 'Global'),
(316, 'Sustentacion', 305, 100, 'Global');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `criterioevaluacion`
--

CREATE TABLE `criterioevaluacion` (
  `id` bigint(20) NOT NULL,
  `criterio_id` bigint(20) DEFAULT NULL,
  `evaluacion_id` bigint(20) DEFAULT NULL,
  `dimension_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `criterioevaluacion`
--

INSERT INTO `criterioevaluacion` (`id`, `criterio_id`, `evaluacion_id`, `dimension_id`) VALUES
(430, 281, 28, 96),
(431, 282, 28, 97),
(432, 283, 28, 96),
(433, 284, 28, 97),
(434, 285, 28, 96),
(435, 286, 28, 97),
(436, 287, 28, 96),
(437, 288, 28, 97),
(438, 9, 28, 98),
(439, 10, 28, 98),
(440, 12, 28, 99),
(441, 11, 28, 99),
(442, 8, 28, 99),
(443, 3, 28, 99),
(444, 13, 28, 99),
(445, 2, 28, 100),
(446, 6, 28, 100),
(447, 256, 28, 100),
(448, 4, 28, 100),
(449, 289, 27, 88),
(450, 290, 27, 89),
(451, 291, 27, 88),
(452, 292, 27, 89),
(453, 246, 27, 90),
(454, 247, 27, 90),
(455, 250, 27, 90),
(456, 251, 27, 91),
(457, 307, 29, 125),
(458, 308, 29, 127),
(459, 309, 29, 125),
(460, 310, 29, 127),
(461, 311, 29, 125),
(462, 312, 29, 127),
(463, 313, 29, 125),
(464, 314, 29, 127),
(465, 315, 29, 125),
(466, 316, 29, 127),
(467, 302, 29, 126),
(468, 303, 29, 126),
(469, 304, 29, 126),
(470, 306, 29, 126),
(471, 301, 29, 128),
(472, 305, 29, 128);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dimension`
--

CREATE TABLE `dimension` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `porcentaje` int(11) DEFAULT NULL,
  `periodo_id` bigint(20) DEFAULT NULL,
  `programa_id` bigint(20) DEFAULT NULL,
  `semestre_id` bigint(20) DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `dimension`
--

INSERT INTO `dimension` (`id`, `nombre`, `descripcion`, `porcentaje`, `periodo_id`, `programa_id`, `semestre_id`, `tipo`) VALUES
(68, 'Documento', '', 21, 1, 1, 7, 'Particular'),
(69, 'Producto', '', 21, 1, 1, 7, 'Particular'),
(70, 'Sustenciaon', '', 34, 1, 1, 7, 'Global'),
(71, 'Tutorias', '', 24, 1, 1, 7, 'Global'),
(84, 'Sustentacion', 'Sustentacion', 22, 1, 1, 1, 'Global'),
(85, 'Producto', 'Producto', 37, 1, 1, 1, 'Particular'),
(86, 'Documentacion', 'Documentacion', 29, 1, 1, 1, 'Particular'),
(87, 'Tutoria', 'Tutoria', 12, 1, 1, 1, 'Global'),
(88, 'Tutorias', 'dh', 18, 1, 1, 2, 'Global'),
(89, 'Sustentacion', 'Sustentacion', 20, 1, 1, 2, 'Global'),
(90, 'Producto', 'producto', 46, 1, 1, 2, 'Particular'),
(91, 'Documentacion', '', 16, 1, 1, 2, 'Particular'),
(92, 'Sustenciaon', 'jyhg', 20, 1, 1, 3, 'Global'),
(93, 'Tutorias', 'dh', 18, 1, 1, 3, 'Global'),
(94, 'Producto', '', 15, 1, 1, 3, 'Particular'),
(95, 'Documentacion', '', 47, 1, 1, 3, 'Particular'),
(96, 'Tutorias', 'dsfgsdf', 10, 1, 1, 4, 'Global'),
(97, 'Sustentacion', 'drtfgdsfg', 15, 1, 1, 4, 'Global'),
(98, 'Modelo de negocio', 'sdgfhsefgd', 15, 1, 1, 4, 'Particular'),
(99, 'Producto', '', 40, 1, 1, 4, 'Particular'),
(100, 'Documentacion', '', 20, 1, 1, 4, 'Particular'),
(101, 'Sustentacion', 'gdfgfd', 24, 1, 1, 5, 'Global'),
(102, 'Tutorias', 'xfgxf', 9, 1, 1, 5, 'Global'),
(103, 'Producto', '', 52, 1, 1, 5, 'Particular'),
(104, 'Documentacion', '', 15, 1, 1, 5, 'Particular'),
(105, 'Tutorias', 'dsfgsdf', 10, 1, 1, 6, 'Global'),
(106, 'Sustentacion', 'drtfgdsfg', 15, 1, 1, 6, 'Global'),
(107, 'Modelo de negocio', 'sdgfhsefgd', 15, 1, 1, 6, 'Particular'),
(108, 'Documentacion', '', 20, 1, 1, 6, 'Particular'),
(109, 'Producto', '', 40, 1, 1, 6, 'Particular'),
(110, 'Tutorias', 'Tutorias', 15, 2, 1, 6, 'Global'),
(111, 'Sustentacion', 'Sustentacion', 20, 2, 1, 6, 'Global'),
(112, 'Producto', 'Producto', 40, 2, 1, 6, 'Particular'),
(113, 'Documento', 'Documento', 15, 2, 1, 6, 'Particular'),
(114, 'Modelo de Negocio', 'Modelo de Negocio', 10, 2, 1, 6, 'Particular'),
(115, 'Tutorias', 'Tutorias', 15, 2, 1, 1, 'Global'),
(116, 'Sustentacion', 'Sustentacion', 20, 2, 1, 1, 'Global'),
(117, 'Producto', 'Producto', 40, 2, 1, 1, 'Particular'),
(118, 'Documento', 'Documento', 15, 2, 1, 1, 'Particular'),
(119, 'Modelo de Negocio', 'Modelo de Negocio', 10, 2, 1, 1, 'Particular'),
(120, 'Tutorias', 'Tutorias', 15, 2, 1, 4, 'Global'),
(121, 'Sustentacion', 'Sustentacion', 20, 2, 1, 4, 'Global'),
(122, 'Producto', 'Producto', 40, 2, 1, 4, 'Particular'),
(123, 'Documento', 'Documento', 15, 2, 1, 4, 'Particular'),
(124, 'Modelo de Negocio', 'Modelo de Negocio', 10, 2, 1, 4, 'Particular'),
(125, 'Tutorias', 'Tutorias', 15, 2, 4, 4, 'Global'),
(126, 'Producto', 'Producto', 40, 2, 4, 4, 'Particular'),
(127, 'Sustentacion', 'Sustentacion', 20, 2, 4, 4, 'Global'),
(128, 'Documentacion', 'Documentacion', 25, 2, 4, 4, 'Particular');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entregable`
--

CREATE TABLE `entregable` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `fechaEntrega` date DEFAULT NULL,
  `fechaRevisado` date DEFAULT NULL,
  `tipo_id` bigint(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `asignatura_id` bigint(20) DEFAULT NULL,
  `porcentajeEjecucion` int(11) DEFAULT NULL,
  `porcentajeAutoevaluacion` int(11) DEFAULT NULL,
  `avance_id` bigint(20) DEFAULT NULL,
  `nombreArchivo` varchar(70) DEFAULT NULL,
  `extencionArchivo` varchar(150) DEFAULT NULL,
  `observaciones` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `entregable`
--

INSERT INTO `entregable` (`id`, `descripcion`, `fechaEntrega`, `fechaRevisado`, `tipo_id`, `estado`, `asignatura_id`, `porcentajeEjecucion`, `porcentajeAutoevaluacion`, `avance_id`, `nombreArchivo`, `extencionArchivo`, `observaciones`) VALUES
(3, 'Diagrama de casos de uso del proyecto', '2022-12-21', '2023-01-11', 2, 'Revisado', 8, 55, 0, 2, '001IV20226712A1111', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', 'xxxxxxxxxxxxxxxxxxxxxxxxx'),
(8, 'gfuyjykuykuyh  jgf\nkjhg', '2022-12-28', NULL, 1, 'Revisado', 8, 25, 52, 2, '001IV20226711A1111', 'image/jpeg', 'aaaaaaaaaaaaaaaaa\naaaaaaaaaaaaaaaaaaaaaaa'),
(12, 'Codigo del proyecto', '2023-01-18', NULL, 3, 'Entregado', 6, 0, 62, 7, '001IV20226713A2658', 'application/zip', NULL),
(13, 'Diagrama de clases completo', '2023-01-18', NULL, 1, 'Revisado', 8, 68, 97, 7, '001IV20226711A1111', 'image/jpeg', 'wwwwwwwwwwwwwwwwwwwww'),
(14, 'Diagrama de clases', '2023-01-19', NULL, 1, 'Revisado', 11, 81, 69, 8, '001220222741Q0451', 'image/jpeg', 'fghxdfgs'),
(15, 'Diagrama de casos de uso', '2023-01-19', NULL, 2, 'Revisado', 11, 95, 70, 8, '001220222742Q0451', 'image/jpeg', 'dsfbsdvx'),
(18, 'dfgsdfgdf', '2023-04-05', NULL, 6, 'Revisado', 11, 75, 78, 10, '001II20229236Q0451', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'esta en un 75%'),
(19, 'htfkjyglkjnk', '2023-05-17', NULL, 244, 'Revisado', 32, 51, 79, 8, '00122022274244A0452', 'image/png', 'dfghdfghdfghsdfgdhg'),
(21, 'fdghdfghf', '2023-05-17', NULL, 244, 'Revisado', 32, 90, 73, 8, '00122022274244A0452', 'image/bmp', 'xfghsxcfgszdfv'),
(22, 'fgzdfg', '2023-05-18', NULL, 1, 'Entregado', 8, 82, 93, 11, '001IV20225141A1111', 'image/png', ''),
(23, 'sdfgsdfgds', '2023-05-18', NULL, 1, 'Entregado', 8, 0, 81, 11, '001IV20225141A1111', 'image/png', NULL),
(24, 'bsdfgsdfgsdf', '2023-05-18', NULL, 7, 'Entregado', 28, 0, 84, 11, '001IV20225147md098', 'image/png', NULL),
(26, 'diagrama de clases', '2023-06-02', NULL, 288, 'Revisado', 27, 46, 0, 12, '001VI2022622288A2543', 'image/png', 'el diagrama tiene problemas de relaciones entre..'),
(27, 'fghsdfgdf', '2023-06-16', NULL, 6, 'Entregado', 11, 0, 68, 13, '001II20226456Q0451', 'application/vnd.ms-publisher', NULL),
(28, 'formula de maximos y minimos', '2023-07-07', NULL, 298, 'Entregado', 71, 0, 82, 14, '002IV2023854298PI1324', 'image/png', NULL),
(29, 'Esquema del proceso', '2023-07-07', NULL, 296, 'Revisado', 48, 64, 78, 14, '002IV2023854296API452', 'image/png', '<sdfdfsdfsdf\ngsd\nfgsdfgsdf'),
(30, 'dfgsdfgsd', '2023-07-07', NULL, 297, 'Entregado', 48, 0, 75, 15, '002IV2023854297API452', 'image/png', ''),
(31, 'dfgsdfgsed', '2023-07-07', NULL, 299, 'Entregado', 74, 0, 77, 15, '002IV2023854299API876', 'application/vnd.ms-publisher', NULL),
(32, 'dfsgsdg', '2023-07-07', NULL, 295, 'Entregado', 62, 0, 82, 15, '002IV2023854295API534', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `codigo` varchar(255) DEFAULT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`codigo`, `id`) VALUES
(NULL, 4),
(NULL, 7),
('001123438', 8),
('001456569', 9),
('0016474510', 10),
('0017856611', 11),
('0016754412', 12),
('0013674513', 13),
('0041007714', 14),
('0011007715', 15),
('0011007716', 16),
(NULL, 17),
(NULL, 18),
(NULL, 19),
(NULL, 20),
(NULL, 21),
(NULL, 22),
('0011008223', 23),
(NULL, 24),
(NULL, 25),
(NULL, 26),
(NULL, 27),
(NULL, 28),
(NULL, 29),
(NULL, 30),
(NULL, 31),
(NULL, 32),
(NULL, 33),
(NULL, 34),
(NULL, 35),
(NULL, 36),
(NULL, 37),
(NULL, 38),
(NULL, 39),
(NULL, 40),
(NULL, 41),
(NULL, 42),
(NULL, 43),
(NULL, 44),
(NULL, 45),
(NULL, 46),
(NULL, 47),
(NULL, 48),
('0011008249', 49),
('0011008350', 50),
('0011008451', 51),
('0011008452', 52),
(NULL, 53),
(NULL, 54),
('0011008555', 55),
('0011008656', 56),
('0011009057', 57),
(NULL, 58),
(NULL, 59),
('0011006760', 60),
('0021006761', 61),
(NULL, 62),
(NULL, 63),
(NULL, 64),
(NULL, 65),
(NULL, 66),
(NULL, 67),
(NULL, 68),
('0011006969', 69),
('0011007170', 70),
('0011007171', 71),
(NULL, 72),
(NULL, 73),
(NULL, 74),
(NULL, 75),
(NULL, 76),
(NULL, 77),
('0021007778', 78),
('0011007879', 79),
(NULL, 80),
(NULL, 81),
(NULL, 82),
('0021008083', 83),
('0011008084', 84),
(NULL, 85),
('0011008386', 86),
(NULL, 87),
(NULL, 88),
(NULL, 89),
(NULL, 90),
('0011006591', 91),
('0011006692', 92),
('0011006693', 93),
(NULL, 94),
('0011006695', 95),
(NULL, 96),
('0011006797', 97),
('0011006798', 98),
(NULL, 99),
(NULL, 100),
(NULL, 101),
('00110067102', 102),
('00110068103', 103),
(NULL, 104),
(NULL, 105),
(NULL, 106),
(NULL, 107),
(NULL, 108),
(NULL, 109),
(NULL, 110),
('00110072111', 111),
(NULL, 112),
(NULL, 113),
(NULL, 114),
(NULL, 115),
(NULL, 116),
('00110077117', 117),
(NULL, 118),
(NULL, 119),
(NULL, 120),
('00110078121', 121),
(NULL, 122),
(NULL, 123),
(NULL, 124),
(NULL, 125),
('00110082126', 126),
('00110082127', 127),
(NULL, 128);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacion`
--

CREATE TABLE `evaluacion` (
  `id` bigint(20) NOT NULL,
  `seccion_id` bigint(20) DEFAULT NULL,
  `fechacreacion` date DEFAULT NULL,
  `fechaprogramada` date DEFAULT NULL,
  `fecharealizacion` date DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `fechapublicacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `evaluacion`
--

INSERT INTO `evaluacion` (`id`, `seccion_id`, `fechacreacion`, `fechaprogramada`, `fecharealizacion`, `estado`, `fechapublicacion`) VALUES
(27, 1, '2023-05-18', '2022-11-07', NULL, 'Publicada', '2023-05-18'),
(28, 8, '2023-05-18', '2022-10-12', NULL, 'Publicada', '2023-05-18'),
(29, 34, '2023-07-05', '2023-06-08', NULL, 'Publicada', '2023-07-06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fase`
--

CREATE TABLE `fase` (
  `id` bigint(20) NOT NULL,
  `fechaFinal` date DEFAULT NULL,
  `fechaInicial` date DEFAULT NULL,
  `numero` int(11) NOT NULL,
  `periodo_id` bigint(20) DEFAULT NULL,
  `programa_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `fase`
--

INSERT INTO `fase` (`id`, `fechaFinal`, `fechaInicial`, `numero`, `periodo_id`, `programa_id`) VALUES
(1, '2022-08-08', '2022-10-14', 1, 1, 1),
(2, '2022-12-01', '2022-10-17', 2, 1, 1),
(12, '2023-04-29', '2023-02-01', 1, 2, 1),
(13, '2023-06-08', '2023-04-30', 2, 2, 1),
(14, '2023-03-30', '2023-01-09', 1, 2, 5),
(15, '2023-06-08', '2023-03-31', 2, 2, 5),
(16, '2023-03-30', '2023-01-10', 1, 2, 4),
(17, '2023-06-08', '2023-03-31', 2, 2, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `integrante`
--

CREATE TABLE `integrante` (
  `id` bigint(20) NOT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `fechaIngreso` date DEFAULT NULL,
  `fechaUltimaModificacion` date DEFAULT NULL,
  `rol` varchar(255) DEFAULT NULL,
  `matricula_id` bigint(20) DEFAULT NULL,
  `proyecto_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `integrante`
--

INSERT INTO `integrante` (`id`, `estado`, `fechaIngreso`, `fechaUltimaModificacion`, `rol`, `matricula_id`, `proyecto_id`) VALUES
(94, 'Activo', '2022-09-30', NULL, 'Estudiante', 6, 35),
(96, 'Activo', '2022-09-30', NULL, 'Estudiante', 8, 35),
(101, 'Activo', '2022-09-28', NULL, 'Estudiante', 3, 37),
(103, 'Activo', '2022-09-28', NULL, 'Estudiante', 5, 37),
(107, 'Activo', '2023-06-24', NULL, 'Estudiante', 1, 38),
(108, 'Activo', '2023-06-24', NULL, 'Estudiante', 9, 38),
(109, 'Activo', '2023-06-24', NULL, 'Estudiante', 10, 38),
(120, 'Activo', '2022-10-25', NULL, 'Estudiante', 22, 43),
(121, 'Activo', '2022-10-25', NULL, 'Estudiante', 23, 43),
(124, 'Activo', '2022-11-07', NULL, 'Estudiante', 39, 46),
(125, 'Activo', '2022-11-07', NULL, 'Estudiante', 40, 46),
(131, 'Activo', '2022-11-11', NULL, 'Estudiante', 11, 48),
(132, 'Activo', '2022-11-11', NULL, 'Estudiante', 38, 48),
(133, 'Activo', '2023-05-18', NULL, 'Estudiante', 41, 49),
(135, 'Activo', '2023-05-18', NULL, 'Estudiante', 44, 50),
(136, 'Activo', '2023-05-18', NULL, 'Estudiante', 45, 50),
(137, 'Activo', '2023-05-18', NULL, 'Estudiante', 46, 50),
(167, 'Activo', '2023-06-24', NULL, 'Estudiante', 12, 58),
(168, 'Activo', '2023-06-24', NULL, 'Estudiante', 26, 58),
(169, 'Activo', '2023-06-24', NULL, 'Estudiante', 47, 58),
(170, 'Activo', '2023-07-01', NULL, 'Estudiante', 48, 59),
(171, 'Activo', '2023-07-01', NULL, 'Estudiante', 52, 59),
(172, 'Activo', '2023-07-01', NULL, 'Estudiante', 51, 59),
(173, 'Activo', '2023-07-06', NULL, 'Estudiante', 60, 60),
(174, 'Activo', '2023-07-06', NULL, 'Estudiante', 61, 60),
(175, 'Activo', '2023-07-06', NULL, 'Estudiante', 62, 60);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item_proyecto`
--

CREATE TABLE `item_proyecto` (
  `id` bigint(20) NOT NULL,
  `contenido` varchar(255) DEFAULT NULL,
  `fechamodificacion` date DEFAULT NULL,
  `fecharegistro` date DEFAULT NULL,
  `editor_id` bigint(20) DEFAULT NULL,
  `proyecto_id` bigint(20) DEFAULT NULL,
  `tipo_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `item_proyecto`
--

INSERT INTO `item_proyecto` (`id`, `contenido`, `fechamodificacion`, `fecharegistro`, `editor_id`, `proyecto_id`, `tipo_id`) VALUES
(1, 'xxxxxxxxxxxxxxxxxxxxxx', NULL, '2022-10-05', 3, 37, 9),
(2, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\nbbbbbbbbbbbbbbbbbbbbbbbbb\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '2022-10-05', '2022-10-05', 3, 37, 10),
(6, 'sdthsftghsftghf', NULL, '2022-10-11', 1, 38, 9),
(7, 'dstguyhdftgudftyu\ndf\nt\nudfrth', NULL, '2022-10-12', 6, 35, 6),
(8, 'wse5tyewr6yu7er5yewr5ty\ner5yer5ye4r5yw34\n5y3w45\ny34w5\ny34w5y45', NULL, '2022-10-12', 6, 35, 9),
(9, 'fghgghgh', NULL, '2022-11-22', 41, 49, 9),
(10, 'kjm ', NULL, '2023-05-18', 45, 50, 3),
(11, 'kkhnbm,', NULL, '2023-05-18', 45, 50, 6),
(12, 'akshjg sdfrgsekrg ser gw esrgwerg', NULL, '2023-05-23', 6, 35, 15),
(13, 'este proyecto pretende solucionar la problematica de los .....', NULL, '2023-05-24', 22, 43, 6),
(14, 'Desarrollar un sistema de informacion que.....', NULL, '2023-05-24', 22, 43, 9),
(15, 'xdfgsdfgsdfgdfg\ndfgs\ndfgsd\nfgs\ndfgsd', NULL, '2023-06-15', 1, 38, 10),
(16, 'dfsgsdfgadsfgs dfg \nsdf g\nsdf gs df', NULL, '2023-06-16', 11, 48, 6),
(17, 'adsfgasdfgasdf', NULL, '2023-06-16', 11, 48, 9),
(18, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', NULL, '2023-07-06', 62, 60, 6),
(19, 'aaaaaaaaaaaaaaaaa aaaaaaaaaaaaa\naaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', NULL, '2023-07-06', 62, 60, 7),
(20, 'skldfg sdfogsdf gsdif gsidf gnsd fgsdf', NULL, '2023-07-06', 62, 60, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `liderpa`
--

CREATE TABLE `liderpa` (
  `id` bigint(20) NOT NULL,
  `profesor_id` bigint(20) DEFAULT NULL,
  `seccion_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `liderpa`
--

INSERT INTO `liderpa` (`id`, `profesor_id`, `seccion_id`) VALUES
(1, 5, 1),
(2, 5, 2),
(3, 5, 8),
(4, 129, 10),
(5, 132, 4),
(6, 132, 14),
(9, 130, 29),
(10, 133, 30),
(11, 131, 3),
(15, 134, 32),
(16, 134, 25),
(17, 130, 34);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matricula`
--

CREATE TABLE `matricula` (
  `id` bigint(20) NOT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `seccion_id` bigint(20) DEFAULT NULL,
  `estadopa` varchar(10) DEFAULT NULL,
  `estudiante_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `matricula`
--

INSERT INTO `matricula` (`id`, `estado`, `fecha`, `seccion_id`, `estadopa`, `estudiante_id`) VALUES
(1, 'Academica', '2022-09-12', 1, 'Asignado', 4),
(2, 'Financiera', '2022-09-13', 1, 'Asignado', 7),
(3, 'Becado', '2022-09-16', 1, 'Asignado', 8),
(4, 'Academica', '2022-09-26', 1, 'Asignado', 9),
(5, 'Academica', '2022-09-26', 1, 'Asignado', 10),
(6, 'Academica', '2022-09-26', 1, 'Asignado', 11),
(8, 'Academica', '2022-09-26', 1, 'Asignado', 12),
(9, 'Academica', '2022-09-26', 1, 'Asignado', 13),
(10, 'Academica', '2022-10-20', 10, 'Libre', 128),
(11, 'Academica', '2022-10-14', 1, 'Asignado', 15),
(12, 'Academica', '2022-10-21', 4, 'Asignado', 98),
(22, 'Academica', '2022-10-25', 10, 'Asignado', 95),
(23, 'Academica', '2022-10-25', 10, 'Asignado', 126),
(24, 'Academica', '2022-10-25', 12, 'Libre', 111),
(26, 'Academica', '2022-10-27', 4, 'Asignado', 49),
(28, 'Academica', '2022-11-01', 9, 'Libre', 92),
(29, 'Academica', '2022-11-01', 9, 'Libre', 86),
(31, 'Academica', '2022-11-01', 3, 'Libre', 102),
(32, 'Academica', '2022-11-01', 3, 'Libre', 56),
(33, 'Academica', '2022-11-01', 3, 'Libre', 55),
(34, 'Academica', '2022-11-01', 3, 'Libre', 52),
(35, 'Academica', '2022-11-03', 3, 'Libre', 84),
(36, 'Academica', '2022-11-03', 3, 'Libre', 117),
(37, 'Academica', '2022-11-04', 3, 'Libre', 23),
(38, 'Academica', '2022-11-04', 1, 'Asignado', 51),
(39, 'Academica', '2022-11-07', 2, 'Asignado', 60),
(40, 'Academica', '2022-11-07', 2, 'Asignado', 57),
(41, 'Academica', '2022-11-17', 8, 'Asignado', 93),
(42, 'Academica', '2023-05-17', 10, 'Libre', 103),
(43, 'Academica', '2023-05-17', 10, 'Libre', 127),
(44, 'Academica', '2023-05-18', 8, 'Asignado', 70),
(45, 'Academica', '2023-05-18', 8, 'Asignado', 97),
(46, 'Academica', '2023-05-18', 8, 'Asignado', 121),
(47, 'Academica', '2023-05-26', 4, 'Asignado', 79),
(48, 'Academica', '2023-06-02', 14, 'Asignado', 69),
(49, 'Academica', '2023-06-03', 14, 'Libre', 10),
(50, 'Academica', '2023-06-03', 14, 'Libre', 12),
(51, 'Academica', '2023-06-03', 14, 'Asignado', 15),
(52, 'Academica', '2023-06-03', 14, 'Asignado', 9),
(53, 'Academica', '2023-06-03', 14, 'Libre', 51),
(54, 'Academica', '2023-06-03', 14, 'Libre', 50),
(55, 'Academica', '2023-06-03', 14, 'Libre', 91),
(56, 'Academica', '2023-06-15', 10, 'Libre', 78),
(57, 'Academica', '2023-06-20', 21, 'Libre', 13),
(58, 'Academica', '2023-06-23', 11, 'Libre', 71),
(59, 'Academica', '2023-06-23', 11, 'Libre', 91),
(60, 'Academica', '2023-07-06', 34, 'Asignado', 61),
(61, 'Academica', '2023-07-06', 34, 'Asignado', 83),
(62, 'Academica', '2023-07-06', 34, 'Asignado', 78),
(63, 'Academica', '2024-10-09', 39, 'Libre', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nucleo`
--

CREATE TABLE `nucleo` (
  `id` bigint(20) NOT NULL,
  `semestre_id` bigint(20) DEFAULT NULL,
  `programa_id` bigint(20) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `nucleo`
--

INSERT INTO `nucleo` (`id`, `semestre_id`, `programa_id`, `descripcion`, `fecha`) VALUES
(1, 4, 1, '¿Cómo proponer soluciones software innovador, escalable, eficiente, de alta disponibilidad e interoperabilidad con interfaces externas, respondiendo a las necesidades del entorno, teniendo en cuenta procesos y estándares internacionales?\n', '2023-05-27'),
(2, 1, 1, 'xdgh', '2023-06-22'),
(3, 2, 1, 'evaluación de proyectos de aula es importante porque proporciona retroalimentación y mejora continua, monitorea el progreso de los estudiantes, promueve la metacognición, valida logros y ', '2023-06-26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo`
--

CREATE TABLE `periodo` (
  `id` bigint(20) NOT NULL,
  `anio` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `fechaFinal` date DEFAULT NULL,
  `fechaInicial` date DEFAULT NULL,
  `numero` int(11) NOT NULL,
  `actual` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `periodo`
--

INSERT INTO `periodo` (`id`, `anio`, `fecha`, `fechaFinal`, `fechaInicial`, `numero`, `actual`) VALUES
(1, 2022, '2022-09-12', '2022-12-01', '2022-08-01', 2, 1),
(2, 2023, '2022-09-14', '2023-06-08', '2023-01-01', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `idioma2` varchar(255) DEFAULT NULL,
  `idioma3` varchar(255) DEFAULT NULL,
  `nivelacademico` varchar(255) DEFAULT NULL,
  `perfil` varchar(255) DEFAULT NULL,
  `tipocontrato` varchar(255) DEFAULT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`idioma2`, `idioma3`, `nivelacademico`, `perfil`, `tipocontrato`, `id`) VALUES
(NULL, NULL, NULL, NULL, 'Tiempo Completo', 5),
(NULL, NULL, NULL, NULL, 'Medio Tiempo', 6),
(NULL, NULL, NULL, NULL, 'Catedra', 129),
(NULL, NULL, NULL, NULL, '3/4 de Tiempo', 130),
(NULL, NULL, NULL, NULL, 'Medio Tiempo', 131),
(NULL, NULL, NULL, NULL, 'Catedra', 132),
(NULL, NULL, NULL, NULL, 'Tiempo Completo', 133),
(NULL, NULL, NULL, NULL, 'Tiempo Completo', 134),
(NULL, NULL, NULL, NULL, 'Medio Tiempo', 135),
(NULL, NULL, NULL, NULL, 'Tiempo Completo', 136);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programaacademico`
--

CREATE TABLE `programaacademico` (
  `id` bigint(20) NOT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `nombreCompleto` varchar(255) DEFAULT NULL,
  `coordinador_id` bigint(20) DEFAULT NULL,
  `coordinadorPA_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `programaacademico`
--

INSERT INTO `programaacademico` (`id`, `codigo`, `estado`, `nombre`, `nombreCompleto`, `coordinador_id`, `coordinadorPA_id`) VALUES
(1, '001', 'Activo', 'Tecnologia En Sistemas', 'Tecnologia En Sistemas', 3, 6),
(4, '002', 'Activo', 'Produccion Industrial', 'Produccion Industrial', 2, 131),
(5, '003', 'Activo', 'Administracion de Empresas', 'Administracion de Empresas', 2, 130),
(6, '004', 'Activo', 'ing. sistemas', 'ingenieria de sistemas', 137, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto_aula`
--

CREATE TABLE `proyecto_aula` (
  `id` bigint(20) NOT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `fecha_aprobacion` date DEFAULT NULL,
  `fecha_finalizacion` date DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `problematica` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `coordinadorPA_id` bigint(20) DEFAULT NULL,
  `codigo` varchar(20) DEFAULT NULL,
  `seccion_id` bigint(20) DEFAULT NULL,
  `profesorLider_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `proyecto_aula`
--

INSERT INTO `proyecto_aula` (`id`, `estado`, `fecha_aprobacion`, `fecha_finalizacion`, `fecha_ingreso`, `fecha_inicio`, `problematica`, `titulo`, `coordinadorPA_id`, `codigo`, `seccion_id`, `profesorLider_id`) VALUES
(35, 'Produccion', '2022-10-12', '2022-11-30', '2022-09-30', '2022-08-07', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'xxxxxxxxxxxxxxxxxxxxxx', NULL, '00122022214', 1, 1),
(37, 'Produccion', '2023-01-19', '2022-11-30', '2022-09-28', '2022-08-10', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\nxxxxxxxxxxxxxxxxxxxxxxxxx', 'Desarrollo de Sistema de Informacion para lavadero de carros', NULL, '00122022274', 1, 1),
(38, 'Guardado', '2022-10-11', '2022-10-31', '2023-06-24', '2022-10-10', 'en un contexto....', 'desarrollo de un sistema de informacion para---....', NULL, '001III202272', 4, 5),
(43, 'Produccion', '2023-05-24', '2022-10-29', '2022-10-25', '2022-10-02', 'el contexto de los ....', 'Proyecto de aula de prueba', NULL, '001VI2022622', 10, 4),
(46, 'Guardado', NULL, NULL, '2022-11-07', NULL, '', '', NULL, '001II2022885', 2, 2),
(48, 'Produccion', '2023-06-16', '2023-10-31', '2022-11-11', '2023-06-05', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', NULL, '001II2022645', 1, 1),
(49, 'Guardado', '2022-11-22', '2022-11-30', '2023-05-18', '2022-08-02', 'cccccccccccccccccccccc', 'cccccccccccccccccccccccc', NULL, '001IV2022880', 8, 3),
(50, 'Produccion', '2023-05-18', '2023-05-31', '2023-05-18', '2023-03-06', 'Sistema de informacion de parqueaderos', 'Sistema de informacion de parqueaderos', NULL, '001IV2022514', 8, 3),
(58, 'Guardado', NULL, NULL, '2023-06-24', NULL, NULL, NULL, NULL, '001III202229', 4, 5),
(59, 'Aplazado', '2023-07-10', NULL, '2023-07-01', NULL, '', '', NULL, '001I2023837', 14, 6),
(60, 'Produccion', '2023-07-06', '2023-06-06', '2023-07-06', '2023-02-06', 'En el contexto de la produccion de lacteos....', 'Proceso industrial para-.....', NULL, '002IV2023854', 34, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE `seccion` (
  `id` bigint(20) NOT NULL,
  `denominacion` varchar(10) DEFAULT NULL,
  `semestre_id` bigint(20) DEFAULT NULL,
  `periodo_id` bigint(20) DEFAULT NULL,
  `programa_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`id`, `denominacion`, `semestre_id`, `periodo_id`, `programa_id`) VALUES
(1, '1', 2, 1, 1),
(2, '2', 2, 1, 1),
(3, '1', 1, 1, 1),
(4, '1', 3, 1, 1),
(8, '2', 4, 1, 1),
(9, '1', 5, 1, 1),
(10, '1', 6, 1, 1),
(11, '1', 4, 1, 1),
(12, '2', 5, 1, 1),
(13, '1', 11, 1, 1),
(14, '1', 1, 2, 1),
(17, '1', 7, 1, 1),
(18, '1', 2, 2, 1),
(20, '1', 4, 2, 1),
(21, '1', 3, 2, 1),
(22, '1', 5, 2, 1),
(23, '2', 1, 2, 1),
(25, '1', 6, 2, 1),
(28, '1', 1, 2, 5),
(29, '1', 2, 2, 5),
(30, '2', 2, 2, 5),
(31, '1', 3, 2, 5),
(32, '1', 3, 2, 4),
(33, '2', 3, 2, 4),
(34, '1', 4, 2, 4),
(35, '2', 4, 2, 4),
(36, '1', 4, 2, 5),
(37, '2', 4, 2, 5),
(39, '2', 1, 1, 6),
(40, '3', 2, 1, 6),
(41, '2', 2, 1, 6),
(42, '1', 1, 1, 6),
(43, '3', 1, 1, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semestre`
--

CREATE TABLE `semestre` (
  `id` bigint(20) NOT NULL,
  `denominacion` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `semestre`
--

INSERT INTO `semestre` (`id`, `denominacion`) VALUES
(1, 'I'),
(2, 'II'),
(3, 'III'),
(4, 'IV'),
(5, 'V'),
(6, 'VI'),
(7, 'VII'),
(8, 'VIII'),
(9, 'IX'),
(10, 'X'),
(11, 'XI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocompetencia`
--

CREATE TABLE `tipocompetencia` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `tipocompetencia`
--

INSERT INTO `tipocompetencia` (`id`, `descripcion`) VALUES
(1, 'Basica'),
(2, 'Generica'),
(3, 'Especifica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_entregable`
--

CREATE TABLE `tipo_entregable` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `asignatura_id` bigint(20) DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `tipo_entregable`
--

INSERT INTO `tipo_entregable` (`id`, `descripcion`, `nombre`, `asignatura_id`, `tipo`) VALUES
(1, 'Modelo de datos del proyecto', 'Diagrama de Clases', 8, 'Especifico'),
(2, 'Modelo Funcional del proyecto materializado en el Diagrama de Casos de uso', 'Diagrama de Casos de Uso', 8, 'Especifico'),
(3, 'Codigo del proyecto', 'Codigo del Proyecto', 7, 'Especifico'),
(4, 'Proyecto web con persistencia de datos en JPA, vistas frontend en cualquier framework y backend en cualquier lenguaje de programacion', 'Codigo del Proyecto', 22, 'Especifico'),
(5, 'artefacto que permite modelar el comportamiento o algortimo de cada una de las funcionalidades del sistema', 'Diagrama de Actividades', 9, 'Especifico'),
(6, 'formula que calcula jdfhgdg', 'Metodo numerico del proyecto', 11, 'Especifico'),
(7, 'sdfghsdfgsd', 'modelo de funciones matematicas', 28, 'Especifico'),
(8, 'prototipo front end', 'prototipo front end', 30, 'Especifico'),
(9, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(10, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(11, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(12, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(13, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(14, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(15, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(16, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(17, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(18, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(19, 'Sustentacion', 'Sustentacion', 30, 'Global'),
(20, 'Sustentacion', 'Sustentacion', 30, 'Global'),
(21, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(22, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(23, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(24, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(25, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(26, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(27, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(28, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(29, 'Sustentacion', 'Sustentacion', 30, 'Global'),
(30, 'Sustentacion', 'Sustentacion', 30, 'Global'),
(31, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(32, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(33, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(34, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(35, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(36, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(37, 'Sustentacion', 'Sustentacion', 30, 'Global'),
(38, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(39, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(40, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(41, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(42, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(43, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(44, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(45, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(46, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(47, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(48, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(49, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(50, 'Sustentacion', 'Sustentacion', 30, 'Global'),
(51, 'Sustentacion', 'Sustentacion', 30, 'Global'),
(52, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(53, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(54, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(55, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(56, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(57, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(58, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(59, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(60, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(61, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(62, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(63, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(64, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(65, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(66, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(67, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(68, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(69, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(70, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(71, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(72, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(73, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(74, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(75, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(76, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(77, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(78, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(79, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(80, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(81, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(82, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(83, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(84, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(85, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(86, 'Sustentacion', 'Sustentacion', 30, 'Global'),
(87, 'Sustentacion', 'Sustentacion', 30, 'Global'),
(88, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(89, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(90, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(91, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(92, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(93, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(94, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(95, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(96, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(97, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(98, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(99, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(100, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(101, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(102, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(103, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(104, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(105, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(106, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(107, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(108, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(109, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(110, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(111, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(112, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(113, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(114, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(115, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(116, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(117, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(118, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(119, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(120, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(121, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(122, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(123, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(124, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(125, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(126, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(127, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(128, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(129, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(130, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(131, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(132, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(133, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(134, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(135, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(136, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(137, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(138, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(139, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(140, 'Sustentacion', 'Sustentacion', 30, 'Global'),
(141, 'Sustentacion', 'Sustentacion', 30, 'Global'),
(142, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(143, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(144, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(145, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(146, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(147, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(148, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(149, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(150, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(151, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(152, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(153, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(154, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(155, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(156, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(157, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(158, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(159, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(160, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(161, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(162, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(163, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(164, 'Sustentacion', 'Sustentacion', 30, 'Global'),
(165, 'Sustentacion', 'Sustentacion', 30, 'Global'),
(166, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(167, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(168, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(169, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(170, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(171, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(172, 'Sustentacion', 'Sustentacion', 30, 'Global'),
(173, 'Sustentacion', 'Sustentacion', 30, 'Global'),
(174, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(175, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(176, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(177, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(178, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(179, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(180, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(181, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(182, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(183, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(184, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(185, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(186, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(187, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(188, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(189, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(190, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(191, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(192, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(193, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(194, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(195, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(196, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(197, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(198, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(199, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(200, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(201, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(202, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(203, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(204, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(205, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(206, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(207, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(208, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(209, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(210, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(211, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(212, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(213, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(214, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(215, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(216, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(217, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(218, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(219, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(220, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(221, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(222, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(223, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(224, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(225, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(226, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(227, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(228, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(229, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(230, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(231, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(232, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(233, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(234, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(235, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(236, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(237, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(238, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(239, 'Sustentacion', 'Sustentacion', 28, 'Global'),
(240, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(241, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(242, 'Sustentacion', 'Sustentacion', 11, 'Global'),
(243, 'Sustentacion', 'Sustentacion', 11, 'Global'),
(244, 'Entrega del modelo del proyecto codificado en java', 'Codigo del Proyecto(capa de Modelo)', 32, 'Especifico'),
(245, 'Sustentacion', 'Sustentacion', 11, 'Global'),
(246, 'Sustentacion', 'Sustentacion', 11, 'Global'),
(247, 'Sustentacion', 'Sustentacion', 32, 'Global'),
(248, 'Sustentacion', 'Sustentacion', 32, 'Global'),
(249, 'Documento del Proyecto', 'Documento del Proyecto', 19, 'Especifico'),
(250, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(251, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(252, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(253, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(254, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(255, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(256, 'Sustentacion', 'Sustentacion', 30, 'Global'),
(257, 'Sustentacion', 'Sustentacion', 30, 'Global'),
(258, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(259, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(260, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(261, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(262, 'Sustentacion', 'Sustentacion', 30, 'Global'),
(263, 'Sustentacion', 'Sustentacion', 30, 'Global'),
(264, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(265, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(266, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(267, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(268, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(269, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(270, 'Sustentacion', 'Sustentacion', 30, 'Global'),
(271, 'Sustentacion', 'Sustentacion', 30, 'Global'),
(272, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(273, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(274, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(275, 'Sustentacion', 'Sustentacion', 8, 'Global'),
(276, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(277, 'Sustentacion', 'Sustentacion', 6, 'Global'),
(278, 'Sustentacion', 'Sustentacion', 30, 'Global'),
(279, 'Sustentacion', 'Sustentacion', 30, 'Global'),
(280, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(281, 'Sustentacion', 'Sustentacion', 19, 'Global'),
(282, 'Sustentacion', 'Sustentacion', 11, 'Global'),
(283, 'Sustentacion', 'Sustentacion', 11, 'Global'),
(284, 'Sustentacion', 'Sustentacion', 32, 'Global'),
(285, 'Sustentacion', 'Sustentacion', 32, 'Global'),
(286, 'Solución de\naplicaciones que\nrequieren uso de Pilas\ny/o Colas.', 'aplicacion (pilas-Colas)', 6, 'Especifico'),
(287, 'Solución de\naplicaciones que\nrequieren uso de\nestructuras no lineales', 'aplicacion(Estructuras no lineales)', 6, 'Especifico'),
(288, 'Modelo de Datos', 'Modelo de Datos', 27, 'Especifico'),
(289, 'Diagrama de flujo', 'Diagrama de Flujo', 2, 'Especifico'),
(290, 'Codigo del proyecto solo con modelo de datos codificado', 'Codigo del proyecto (inicial)', 27, 'Especifico'),
(294, 'tipo de entregable 1 de contabilidad', 'tipo de entregable 1 ', 66, 'Especifico'),
(295, 'Tipo de entregable1\ncalculoIV xxxx', 'Tipo de entregable1', 62, 'Especifico'),
(296, 'Esquema de proceso industrial', 'Esquema de proceso industrial', 48, 'Especifico'),
(297, 'Prototipo industrial', 'Prototipo industrial', 48, 'Especifico'),
(298, 'tipo entregable IO', 'tipo entregable IO', 71, 'Especifico'),
(299, 'entregable de materiales', 'entregable de materiales', 74, 'Especifico'),
(300, 'TE ambiental', 'TE ambiental', 72, 'Especifico'),
(301, 'Tutorias', 'Tutorias', 62, 'Global'),
(302, 'Sustentacion', 'Sustentacion', 62, 'Global'),
(303, 'Tutorias', 'Tutorias', 72, 'Global'),
(304, 'Sustentacion', 'Sustentacion', 72, 'Global'),
(305, 'Tutorias', 'Tutorias', 71, 'Global'),
(306, 'Sustentacion', 'Sustentacion', 71, 'Global'),
(307, 'Tutorias', 'Tutorias', 74, 'Global'),
(308, 'Sustentacion', 'Sustentacion', 74, 'Global'),
(309, 'Tutorias', 'Tutorias', 48, 'Global'),
(310, 'Sustentacion', 'Sustentacion', 48, 'Global');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_item`
--

CREATE TABLE `tipo_item` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(5000) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `tipo_item`
--

INSERT INTO `tipo_item` (`id`, `descripcion`, `nombre`) VALUES
(3, 'En el resumen se debe sinterizar la información de todo el proyecto, se debe hacer una ligera introducción al tema, especificar que estamos en el marco proyecto de aula. Se debe describir de forma general lo que se trabajó en el proyecto, mencionando los elementos más importantes en el desarrollo del documento, además se debe dejar evidencia de algún resultado de la investigación.', 'RESUMEN Y PALABRAS CLAVES'),
(5, 'Es el mismo resumen, pero traducido al inglés. Es posible incluir el resumen en otro idioma diferente al español o al inglés, si se considera como importante dentro del tema tratado en la investigación.', 'ABSTRAC'),
(6, 'La introducción debe contener como máximo 2 hojas, que permita contextualizar al lector acerca del documento, se debe describir el alcance del documento, y realizar una explicación o resumen del contenido del mismo. El objetivo principal de la introducción, es permitir que el lector se haga una idea general del contenido del texto, antes de comenzar la lectura de este.', 'INTRODUCCIÓN'),
(7, 'Consiste en preguntarnos sobre que queremos saber del tema, planteándonos una situación problema del mismo que previamente hemos delimitado, el problema de investigación implica hacer una descripción precisa y concisa de los límites de nuestro tema, indicando hasta dónde llega nuestro interés, cual aspectos incluye y cuales no consideramos relevantes y termina con la formulación de la pregunta problema que luego se convertirá en el objetivo general de nuestro trabajo.  Consiste en describir de manera amplia la situación objeto de estudio del proyecto de aula, ubicándola en un contexto que permita comprender su origen y relaciones. Durante el planteamiento del problema, es conveniente que los juicios emitidos sean soportados con datos o cifras provenientes de estudios anteriores.   Al plantear el problema, se recomienda dar respuesta a las siguientes interrogantes:  ¿Cuáles son los elementos del problema: datos, situaciones y conceptos relacionados con el mismo?  ¿Cuáles son los hechos anteriores que guardan relación con el problema?  ¿Cuál es la situación actual?  ¿Cuál es la relevancia del problema?  El punto de partida para el proyecto es elegir el tema ò problema de un entorno especifico. ', 'PLANTEAMIENTO DEL PROBLEMA'),
(8, 'Se debe redactar la justificación del proyecto teniendo en cuenta el planteamiento del problema y los requerimientos del proyecto. En este punto se debe indicar de forma clara y concreta por qué y para qué se requiere llevar a cabo la ejecución del proyecto, exponiendo las motivaciones de realización del trabajo. La justificación debe explicar las razones por las cuales el proyecto es pertinente y permite dar respuesta efectiva al problema identificado anteriormente respecto a otras posibles alternativas de solución, así como exponer el aporte a lo cognitivo, propósito, contexto, alcances y/o limitaciones potenciales. Es preciso identificar el beneficio central del proyecto y sus beneficios secundarios, en términos económicos, sociales, institucionales, culturales y/o ambientales. Los datos ofrecidos en la justificación deben estar debidamente referenciados. Del mismo modo, debe expresarse de forma explícita los principales beneficiarios de la ejecución del proyecto de aula e indicar que el documento está en el marco de un proyecto de aula de Unicolombo en el programa de tecnología en Desarrollo de Software.', 'JUSTIFICACIÓN'),
(9, 'Escriba el objetivo general o propósito final del proyecto de aula. El objetivo general se elabora en función del título del proyecto y su redacción debe iniciar con el verbo en forma infinitiva. El objetivo general debe evidenciar de forma explícita una acción, un medio y un fin o beneficio, a través de tres interrogantes básicos: ¿Qué se va a hacer?, ¿Cómo se va a hacer?, ¿Para qué se va a hacer? .  Cabe mencionar que tanto el objetivo general como los específicos no pueden llevar más de dos verbos en infinitivo. La formulación del objetivo general es un punto clave dentro del desarrollo del proyecto, ya que es el que nos muestra el producto principal que se obtiene al realizar la investigación.', 'OBJETIVO GENERAL'),
(10, 'Estos objetivos se desprenden del general, y constituyen las acciones concretas que el estudiante realizará en forma secuencial para intentar responder a la pregunta de investigación planteada.  Los objetivos específicos deben dar respuesta al objetivo general y para su construcción se debe seguir la metodología definida acerca ¿Qué se va a hacer?, ¿Cómo se va a hacer?, ¿Para qué se va a hacer? Al igual que el objetivo general, su redacción debe iniciar con un verbo en forma infinitiva. En la redacción de los objetivos se deben tener en cuenta los siguientes puntos:  • Que sean cuantificables • Deben ser concretos. No mezclar dos objetivos en uno • Deben ser enunciados secuencialmente • No confundirlos con actividades específicas (como la aplicación de una encuesta o realización de entrevista)', 'OBJETIVOS ESPECIFICOS'),
(11, 'El marco referencial constituye uno de los más importantes aspectos en la construcción de un proyecto de aula, ya que es donde esta evidenciado el trabajo de revisión y soporte bibliográfico del proyecto. Los conceptos, teorías, estudios de caso, artículos y trabajos previos expuestos, deben estar debidamente referenciados siguiendo la norma de estilo APA.', 'MARCO REFERENCIAL'),
(12, 'Este apartado es uno de los más importantes en un proyecto, se deben definir todos los conceptos, fundamentos y teorías que contribuyen al desarrollo del proyecto de aula, hay que evidenciar las bases teóricas de la investigación, en este capítulo se debe realizar una fuerte revisión bibliográfica.', 'MARCO TEÓRICO'),
(13, 'Se especifican las investigaciones más relevantes que se hayan realizado sobre el tema del proyecto aula y en donde se mencionan él título, los autores y los resultados de dichas investigaciones. Se deben iniciar con las realizadas en el campo local y luego al nivel nacional e internacional. ', 'MARCO HISTORICO'),
(14, 'En éste, se citan las normas, resoluciones, acuerdos, etc., que respaldan la realización del proyecto. El marco legal depende de la naturaleza del tema. En cada norma citada deben presentarse textualmente los artículos pertinentes. ', 'MARCO LEGAL'),
(15, 'La metodología del proyecto incluye el tipo o tipos de investigación, las técnicas y los procedimientos que serán utilizados para llevar a cabo la indagación. Es el \"cómo\" se realizará el estudio para responder a la pregunta - problema planteado en el proyecto de aula. En primer lugar, se debe definir el Enfoque de investigación, teniendo en cuenta si la investigación es de tipo cualitativo, cuantitativo o mixto e indicando las características que le corresponden, así como el Tipo de investigación a realizar: exploratoria, descriptiva o propositiva.  Seguido a ello, se debe presentar la población y la muestra con la cual se trabajará, los instrumentos y/o técnicas de recolección de información y el procedimiento o actividades metodológicas a realizar para cumplir satisfactoriamente con los objetivos específicos propuestos del proyecto de aula, dejando claro que los métodos utilizados deben estar debidamente referenciados por la bibliografía. Además, se debe mostrar cómo se van a hacer el análisis de los datos (análisis estadístico) y si es pertinente al proyecto, se debe plantear el Diseño Experimental.', 'METODOLOGÍA'),
(16, 'Realizar las afirmaciones que permitan evidenciar los resultados del desarrollo de los objetivos establecidos para este proyecto de aula, de acuerdo a lo desarrollado en el análisis y discusión de resultados.', 'CONCLUSIONES'),
(17, 'En este apartado se mencionan todas las fuentes bibliográficas utilizadas para el desarrollo del proyecto de aula. La bibliografía debe referenciarse siguiendo las normas APA. El proyecto debe estar fuertemente fundamentado en bibliografía indexada, por lo tanto, se exige mínimo reportar 15 referencias. ', 'REFERENCIAS BIBLIOGRAFICAS'),
(18, 'Los anexos están conformados por aquellos contenidos referidos en el informe que por su amplitud y especificidad no se incluyen en él. En este se incluyen documentos soporte o explicativos del proyecto, ilustraciones, gráficas, tablas, entre otros, a manera de complemento. Dentro de los anexos debe incluirse el formato del instrumento de recolección de información utilizado (formato de encuesta y/o entrevista) y presentado en el avance anterior.', 'ANEXOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutoria`
--

CREATE TABLE `tutoria` (
  `id` bigint(20) NOT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `fechaAsignacion` datetime DEFAULT NULL,
  `fechaEjecucion` datetime DEFAULT NULL,
  `fechaSolicitud` datetime DEFAULT NULL,
  `asignatura_id` bigint(20) DEFAULT NULL,
  `integrante_id` bigint(20) DEFAULT NULL,
  `proyecto_id` bigint(20) DEFAULT NULL,
  `recomendaciones` varchar(1000) DEFAULT NULL,
  `compromisos` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `tutoria`
--

INSERT INTO `tutoria` (`id`, `estado`, `fechaAsignacion`, `fechaEjecucion`, `fechaSolicitud`, `asignatura_id`, `integrante_id`, `proyecto_id`, `recomendaciones`, `compromisos`) VALUES
(4, 'Realizada', '2023-02-17 08:23:00', '2023-02-14 07:53:47', '2023-02-10 00:00:00', 11, 103, 37, 'aaaaaaaaaaaaaaaaaaaaaaa', 'bbbbbbbbbbbbbbbbbbbbbbbbbbb'),
(5, 'Realizada', '2023-02-07 10:05:00', '2023-02-14 10:50:27', '2023-02-10 07:59:20', 11, 107, 38, 'dfghdfghd', 'dfyurtyurty'),
(6, 'Realizada', NULL, NULL, '2023-02-09 00:00:00', 11, 96, 35, '', ''),
(7, 'Realizada', '2023-02-22 11:20:00', '2023-04-05 15:53:19', '2023-02-10 10:11:35', 11, 107, 38, 'sfgadgsdf', 'gsdfgsdf'),
(8, 'Realizada', '2023-06-21 08:09:00', '2023-06-16 08:15:05', '2023-04-14 16:12:34', 11, 107, 38, 'kdjfbgsdf dfgad sfga sdf', 'sjdf sdf gsdlf v dsfgsdf'),
(9, 'Programada', '2023-05-23 10:08:00', NULL, '2023-05-20 09:06:26', 8, 136, 50, NULL, NULL),
(10, 'Realizada', '2023-05-15 17:42:00', '2023-05-23 17:43:35', '2023-05-23 17:30:20', 32, 94, 35, 'sdrgsdfhshbr', 'tysrtysdvthsdth'),
(13, 'Realizada', '2023-05-11 17:36:00', '2023-06-16 06:30:43', '2023-05-23 17:36:28', 32, 96, 35, 'dsfghfgjy', 'hjdbfthdfth'),
(16, 'Realizada', NULL, '2023-06-16 08:04:07', NULL, 6, NULL, 50, 'sdfgsdfgd', 'dfgsdfgds'),
(17, 'Realizada', NULL, '2023-06-16 08:08:33', NULL, 6, NULL, 49, 'sdfgsdfgsdgh', 'fghsfghdfghsdf'),
(18, 'Realizada', NULL, '2023-06-16 08:10:38', NULL, 11, NULL, 48, 'dfghsdfgs', 'sdfgsdfgsdf'),
(19, 'Realizada', NULL, '2023-06-23 20:24:19', NULL, 28, NULL, 49, 'XFGHSFGDF', 'DFGADFGFDS'),
(20, 'Realizada', NULL, '2023-06-24 09:52:16', NULL, 21, NULL, 58, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'aaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaa'),
(21, 'Realizada', NULL, '2023-06-26 07:37:42', NULL, 8, NULL, 50, 'xcgbzdfgb', 'fdghzdfgzsd'),
(22, 'Realizada', NULL, '2023-06-26 07:51:59', NULL, 19, NULL, 50, 'rdfg', 'dfgsdf'),
(23, 'Realizada', NULL, '2023-06-26 08:04:14', NULL, 30, NULL, 49, 'eryr', 'sedryhserdtgsdf'),
(24, 'Realizada', NULL, '2023-06-26 08:09:07', NULL, 28, NULL, 49, 'sdfgsdfgd', 'adsfgasdgf'),
(25, 'Realizada', NULL, '2023-06-26 12:14:14', NULL, 28, NULL, 50, 'thsthsrt', 'rstywsrtr'),
(26, 'Programada', '2023-07-08 15:14:00', NULL, '2023-07-07 15:14:11', 48, 175, 60, NULL, NULL),
(27, 'Realizada', '2023-05-17 10:30:00', '2023-07-10 08:07:54', '2023-07-10 07:04:34', 62, 175, 60, 'hu9oyuo', 'uioguiotuio'),
(28, 'Realizada', NULL, '2023-07-10 07:55:20', NULL, 62, NULL, 60, 'recomendaciones 1', 'compromisos 1'),
(29, 'Realizada', NULL, '2023-07-10 08:04:16', NULL, 62, NULL, 60, 'cxgghxfghxf', 'fghxfgh');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidadcompetencia`
--

CREATE TABLE `unidadcompetencia` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `asignatura_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `unidadcompetencia`
--

INSERT INTO `unidadcompetencia` (`id`, `descripcion`, `asignatura_id`) VALUES
(1, 'Desarrollar software a partir del modelo de diseño especificado y teniendo en cuenta estándares y metodologías reconocidas a nivel internacional.', 22),
(2, 'Analizar el sistema para que cumpla con los requerimientos del cliente y tenga en cuenta los estándares y metodologías reconocidas a nivel internacional', 21),
(4, 'Desarrollar el modelo funcional de un proyecto de desarrollo de software, basado en las necesidades del contexto y los estándares en ingeniería de requerimientos de software.', 8),
(5, 'Identificar cada uno de los conceptos que están sumergidos en el mundo de la ingeniería de software, determinar sus importancia y el rol que asumen en el desarrollo de productos de software.', 8),
(6, 'sdtysertywr', 9),
(7, 'asdfasdfasdfasdfa\nsd\nfa\nsd\nfasd', 11),
(8, 'sfdgdfhdfghsdfgbsd sdfhsd fsdf sdfhsd', 28),
(9, 'desarrollar prototipos frontend con la implementacion de framework de vistas de la actualidad', 30),
(10, 'dsfgsdf', 8),
(11, 'dsfgsdf', 28),
(247, 'Desarrollo de la capa de modelo de datos', 32),
(252, 'desarrolla aspecto metodologico del proyecto', 19),
(277, 'Tutorias', 8),
(278, 'Sustentacion', 8),
(279, 'Tutorias', 6),
(280, 'Sustentacion', 6),
(281, 'Tutorias', 30),
(282, 'Sustentacion', 30),
(283, 'Tutorias', 19),
(284, 'Sustentacion', 19),
(285, 'Tutorias', 11),
(286, 'Sustentacion', 11),
(287, 'Tutorias', 32),
(288, 'Sustentacion', 32),
(289, 'Desarrollar sistemas de información que permitan organizar, y procesar datos\nmediante estructuras lineales.', 6),
(290, 'Unidad de competencia 1 de analisis', 9),
(291, 'unidad de competencia 1', 66),
(292, 'Unidad de competencia 1', 62),
(293, 'Unidad de competencia 1', 48),
(295, 'Unidad de competencia IO', 71),
(296, 'unidad de competencia 1 MM', 74),
(297, 'UC ambiental', 72),
(298, 'Tutorias', 62),
(299, 'Sustentacion', 62),
(300, 'Tutorias', 72),
(301, 'Sustentacion', 72),
(302, 'Tutorias', 71),
(303, 'Sustentacion', 71),
(304, 'Tutorias', 74),
(305, 'Sustentacion', 74),
(306, 'Tutorias', 48),
(307, 'Sustentacion', 48);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` bigint(20) NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `identificacion` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `primerApellido` varchar(255) DEFAULT NULL,
  `primerNombre` varchar(255) DEFAULT NULL,
  `segundoApellido` varchar(255) DEFAULT NULL,
  `segundoNombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `tipo_ide` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `direccion`, `email`, `estado`, `genero`, `identificacion`, `login`, `password`, `primerApellido`, `primerNombre`, `segundoApellido`, `segundoNombre`, `telefono`, `tipo`, `tipo_ide`) VALUES
(1, NULL, NULL, 'Activo', NULL, 'super', 'super', 'super', 'Administrador', 'Usuario', NULL, NULL, NULL, 'Super', NULL),
(2, 'xxxxx', 'jcmm80@yahoo.com', 'Activo', 'Masculino', '8834679', 'jcmm', '9911', 'Martinez', 'Julio', 'Morales', 'Cesar', '3114066507', 'Coordinador', 'CC'),
(3, 'kjshdfe', 'jorgeb@gmail.com', 'Activo', 'Masculino', '6574654', 'jorge', 'jorge', 'Bustos', 'Jorge', '.', '.', '54654768', 'Coordinador', 'CC'),
(4, 'gfjfghyjfg', 'alfredo@gmail.com', 'Pre-Matricula', 'Masculino', '897897689', 'alfredo', 'alfredo', 'ARAUJO ', 'ALFREDO ', 'PAJARO', 'ENRIQUE ', '56745', 'Estudiante', 'CC'),
(5, 'kjgfkguf', 'luis@gmail.com', 'Activo', 'Masculino', '65465465', 'luis', 'luis', 'FRIAS ', 'LUIS ', 'RHENALS', 'MANUEL', '65465465', 'Profesor', 'CC'),
(6, 'fghjdfghy', 'dfghdf', 'Activo', 'Masculino', '54674567', 'jhonatan', 'jhonatan', 'MARTINEZ ', 'JHONATAN ', 'RICARDO', 'DAVID', '678567', 'Profesor', 'CC'),
(7, 'cdvfdsv', 'kgkhg', 'Pre-Matricula', 'Masculino', '6546546546', 'jaime', 'jaime', 'Marin', 'Jaime', 'Florez', 'Enrique', '9876574', 'Estudiante', 'CC'),
(8, 'fghdfgh', 'dfgdsfgdf', 'Pre-Matricula', 'Masculino', '1234345655', 'michael', 'michael', 'CANTILLO', 'MICHAEL', 'VALDES', 'GABRIEL', '3214555555', 'Estudiante', 'CC'),
(9, 'dfghdfg', 'fghdfgh', 'Pre-Matricula', 'Masculino', '4565674567', 'juand', 'juand', 'BORNACHERA	', 'JUAN	', 'ARANGUREN	', 'DIEGO', '56745674', 'Estudiante', 'TI'),
(10, 'hdfghdf', '56fdgjhdfg', 'Pre-Matricula', 'Femenino', '6474567456', 'nathaly', 'nathaly', 'CASTILLO	', 'NATHALY	', 'MORENO	', 'SOFIA', '567456', 'Estudiante', 'CC'),
(11, 'gthertert', 'fdthefdr', 'Pre-Matricula', 'Femenino', '7856673', 'julioj', 'julioj', 'ESPITALETA	', 'MARIA	', 'JULIO	', 'JOSE', '6785677', 'Estudiante', 'CC'),
(12, 'ftghwsrtuyewrty', 'emilis@gmail.com', 'Pre-Matricula', 'Femenino', '675445234', 'emilis', 'emilis', 'CASSERES		', 'EMILIS	', 'TORRES', 'YUSSETH', '845673456', 'Estudiante', 'CC'),
(13, 'fghsftghsrfth', 'fgjghjdf', 'Pre-Matricula', 'Femenino', '36745674567', 'andres', 'andres', 'VARGAS	', 'ANDRES	', 'SILVA	', 'MAURICIO', '56745367', 'Estudiante', 'CC'),
(14, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10077156921', 'marnavarro5', 'marnavarro5', 'MONTES', 'ERICK', 'HERNANDEZ', 'SAMUEL', '3006759891', 'Estudiante', 'CC'),
(15, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10077127712', 'marmontoya6', 'marmontoya6', 'MONTOYA', 'MARIA', 'MORENO', 'CAMILA', '3006759892', 'Estudiante', 'CC'),
(16, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '1007786521', 'aurmorandys7', 'aurmorandys7', 'MORANDYS', 'AURA', 'MONTOYA', '.', '3006759893', 'Estudiante', 'CC'),
(17, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '1007778340', 'sanmuñoz6', 'sanmuñoz6', 'MUÑOZ', 'SANTIAGO', 'ORTEGA', '.', '3006759894', 'Estudiante', 'CC'),
(18, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10078147747', 'marnavarro5', 'marnavarro5', 'NAVARRO', 'MARIA', 'SALAS', 'ALEJANDRA', '3006759895', 'Estudiante', 'CC'),
(19, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10078136913', 'elinavarro6', 'elinavarro6', 'NAVARRO', 'ELIANA', 'TILVEZ', 'MARCELA', '3006759896', 'Estudiante', 'CC'),
(20, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10079158349', 'luirivera6', 'luirivera6', 'OLASCUAGA', 'SIKIUT', 'CARDONA', 'CAROLINA', '3006759897', 'Estudiante', 'CC'),
(21, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10082137212', 'hanramos7', 'hanramos7', 'RAMOS', 'HANNY', 'CAMARGO', 'MILENA', '3006759898', 'Estudiante', 'CC'),
(22, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10082126937', 'eferamos7', 'eferamos7', 'RAMOS', 'EFERSON', 'MACHADO', 'DAVID', '3006759899', 'Estudiante', 'CC'),
(23, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10082128316', 'sheramos7', 'sheramos7', 'RAMOS', 'SHELLYANN', 'MURILLO', 'ELENA', '3006759900', 'Estudiante', 'CC'),
(24, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10082108222', 'reyrios6', 'reyrios6', 'RIOS', 'REYVIN', 'TORRES', 'JOSE', '3006759901', 'Estudiante', 'CC'),
(25, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '100827768', 'luirivera6', 'luirivera6', 'RIVERA', 'LUIS', 'FRANCO', '.', '3006759902', 'Estudiante', 'CC'),
(26, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10082137025', 'florojas8', 'florojas8', 'ROJAS', 'FLORIAN', 'RESTREPO', 'MARIE', '3006759903', 'Estudiante', 'CC'),
(27, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '1008310658', 'angsarmiento5', 'angsarmiento5', 'SARMIENTO', 'ANGY', 'LOPEZ', 'SOFIA', '3006759904', 'Estudiante', 'CC'),
(28, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '1008316684', 'dansuarez9', 'dansuarez9', 'SUAREZ', 'DANELLY', 'SARMIENTO', 'MARCELA', '3006759905', 'Estudiante', 'CC'),
(29, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10084127436', 'juatabares6', 'juatabares6', 'TABARES', 'JUAN', 'CAÑATE', 'CAMILO', '3006759906', 'Estudiante', 'CC'),
(30, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10084176833', 'dantapia11', 'dantapia11', 'TAPIA', 'DANNA', 'ALTAMIRANDA', 'ISABEL', '3006759907', 'Estudiante', 'CC'),
(31, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10084136716', 'camtorres7', 'camtorres7', 'TORRES', 'CAMILA', 'VENECIA', 'ANDREA', '3006759908', 'Estudiante', 'CC'),
(32, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '1008486819', 'dantriana7', 'dantriana7', 'TRIANA', 'DANIELA', 'MACHADO', '.', '3006759909', 'Estudiante', 'CC'),
(33, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '1007113693', 'eligarces8', 'eligarces8', 'GARCES', 'ELISEO', 'PALOMINO', 'DAVID', '3006759910', 'Estudiante', 'CC'),
(34, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '1007178423', 'thagarnica6', 'thagarnica6', 'GARNICA', 'THALIANA', 'GARCES', '.', '3105600525', 'Estudiante', 'CC'),
(35, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10076138439', 'thalambis5', 'thalambis5', 'LAMBIS', 'THALIANA', 'PEREZ', 'CRISTINA', '3004619556', 'Estudiante', 'CC'),
(36, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '1007688444', 'talllamas7', 'talllamas7', 'LLAMAS', 'TALIANA', 'RECUERO', '.', '3004619557', 'Estudiante', 'CC'),
(37, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10077147950', 'omamarrugo5', 'omamarrugo5', 'MARRUGO', 'OMAR', 'MUETE', 'SEBASTIAN', '3004619558', 'Estudiante', 'CC'),
(38, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10077107129', 'gabmerlano4', 'gabmerlano4', 'MERLANO', 'GABRIELA', 'CAEZ', 'ISABEL', '3004619559', 'Estudiante', 'CC'),
(39, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10077137417', 'johmestre5', 'johmestre5', 'MESTRE', 'JOHNNYS', 'PÉREZ', 'DE JESUS', '3015774027', 'Estudiante', 'CC'),
(40, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '1007988635', 'valochoa7', 'valochoa7', 'OCHOA', 'VALERIA', 'SANCHEZ', '.', '3023629427', 'Estudiante', 'CC'),
(41, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10079167721', 'marorrego8', 'marorrego8', 'ORREGO', 'MARIA', 'GUERRERO', 'FERNANDA', '3023629427', 'Estudiante', 'CC'),
(42, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10080137433', 'jaipalomino8', 'jaipalomino8', 'PALOMINO', 'JAIRO', 'OLIVARES', 'JESUS', '3013322221', 'Estudiante', 'CC'),
(43, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '1008087723', 'marpaternina7', 'marpaternina7', 'PATERNINA', 'MARIA', 'NARVAEZ', '.', '3106041662', 'Estudiante', 'CC'),
(44, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '100808743', 'josperez7', 'josperez7', 'PEREZ', 'JOSE', 'BELTRAN', '.', '3106041662', 'Estudiante', 'CC'),
(45, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10080126535', 'antperez6', 'antperez6', 'PEREZ', 'ANTONIO', 'LASTRE', 'CARLOS', '3215344734', 'Estudiante', 'CC'),
(46, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10080146515', 'andprimera8', 'andprimera8', 'PRIMERA', 'ANDRES', 'GONZALEZ', 'FELIPE', '3156281360', 'Estudiante', 'CC'),
(47, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10082128323', 'sarramirez6', 'sarramirez6', 'RAMIREZ', 'SARA', 'TORRES', 'ISABEL', '3156281360', 'Estudiante', 'CC'),
(48, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10082146527', 'andrivas6', 'andrivas6', 'RIVAS', 'ANDREA', 'MORENO', 'CAROLINA', '3174755841', 'Estudiante', 'CC'),
(49, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '1008212837', 'sarromero6', 'sarromero6', 'ROMERO', 'SARAY', 'LOZANO', 'JIMENA', '3005049529', 'Estudiante', 'CC'),
(50, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10083147333', 'isasalcedo9', 'isasalcedo9', 'SALCEDO', 'ISAAC', 'VELASQUEZ', 'DAVID', '3217150064', 'Estudiante', 'CC'),
(51, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '100848691', 'ematorres7', 'ematorres7', 'TORRES', 'EMANUEL', 'URSHELA', '.', '3116981804', 'Estudiante', 'CC'),
(52, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '1008487414', 'jeaturizo7', 'jeaturizo7', 'TURIZO', 'JEAN', 'PEDROZA', '.', '3172158030', 'Estudiante', 'CC'),
(53, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '100859718', 'gabutria8', 'gabutria8', 'UTRIA', 'GABRIELA', 'JIEMENEZ', '.', '3172158030', 'Estudiante', 'CC'),
(54, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '1008588634', 'valutria7', 'valutria7', 'UTRIA', 'VALERIE', 'JIMENEZ', '.', '3005022619', 'Estudiante', 'CC'),
(55, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10085156912', 'eylutria6', 'eylutria6', 'UTRIA', 'EYLEEN', 'PAJARO', 'VALENTINA', '3135691700', 'Estudiante', 'CC'),
(56, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10086136813', 'danvillalobos8', 'danvillalobos8', 'VILLALOBOS', 'DANIEL', 'ESCORCIA', 'JESUS', '3137585772', 'Estudiante', 'CC'),
(57, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '1009077629', 'luczuñiga6', 'luczuñiga6', 'ZUÑIGA', 'LUCAS', 'AGAMES', '.', '3137585773', 'Estudiante', 'CC'),
(58, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '1009088048', 'petzuñiga7', 'petzuñiga7', 'ZUÑIGA', 'PETER', 'HERRERA', '.', '3137585774', 'Estudiante', 'CC'),
(59, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '1006768319', 'stecantillo5', 'stecantillo5', 'CANTILLO', 'STEISY', 'OLIVO', '.', '3137585775', 'Estudiante', 'CC'),
(60, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10067136843', 'dancassiani8', 'dancassiani8', 'CASSIANI', 'DANIELA', 'CASSIANI', 'SOFIA', '3137585776', 'Estudiante', 'CC'),
(61, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10067107526', 'karcastellano9', 'karcastellano9', 'CASTELLANO', 'KARIB', 'HENRIQUEZ', '.', '3137585777', 'Estudiante', 'CC'),
(62, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10067136538', 'andcastillo7', 'andcastillo7', 'CASTILLO', 'ANDRES', 'DEL RIO', 'FELIPE', '3137585778', 'Estudiante', 'CC'),
(63, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10067127548', 'kaicastillo6', 'kaicastillo6', 'CASTILLO', 'KAITLYN', 'OROZCO', 'ANDREA', '3137585779', 'Estudiante', 'CC'),
(64, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10067157410', 'juacastro9', 'juacastro9', 'CASTRO', 'JUAN', 'CASTELLAR', 'MANUEL', '3137585780', 'Estudiante', 'CC'),
(65, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '1006712764', 'liycedeño6', 'liycedeño6', 'CEDEÑO', 'LIYEN', 'TINOCO', 'VANESA', '3137585781', 'Estudiante', 'CC'),
(66, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '1006886919', 'emmdel castillo7', 'emmdel castillo7', 'DEL CASTILLO', 'EMMANUEL', 'BARROSO', '.', '3137585782', 'Estudiante', 'CC'),
(67, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '1006897243', 'handuran8', 'handuran8', 'DURAN', 'HANNY', 'TRUJILLO', '.', '3137585783', 'Estudiante', 'CC'),
(68, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '1006887217', 'heldurango7', 'heldurango7', 'DURANGO', 'HELEEN', 'BARRIOS', '.', '3137585784', 'Estudiante', 'CC'),
(69, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10069207813', 'nicespitia11', 'nicespitia11', 'ESPITIA', 'NICOLL', 'VILLADIEGO ', 'VALENTINA', '3137585785', 'Estudiante', 'CC'),
(70, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '1007157712', 'margaray4', 'margaray4', 'GARAY', 'MARIANA', 'PAEZ', '.', '3137585786', 'Estudiante', 'CC'),
(71, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '1007187618', 'laugonzalez7', 'laugonzalez7', 'GONZALEZ', 'LAURA', 'CATALAN', '.', '3137585787', 'Estudiante', 'CC'),
(72, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '1007486911', 'elijoly7', 'elijoly7', 'JOLY', 'ELIAS', 'VELILLA', '.', '3137585788', 'Estudiante', 'CC'),
(73, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10077126942', 'estmendez7', 'estmendez7', 'MENDEZ', 'ESTEBAN', 'PADILLA', 'DAVID', '3137585789', 'Estudiante', 'CC'),
(74, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '1007710765', 'lizmendoza9', 'lizmendoza9', 'MENDOZA', 'LIZ', 'CASTELLAR', '.', '3137585790', 'Estudiante', 'CC'),
(75, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10077177731', 'marmendoza9', 'marmendoza9', 'MENDOZA', 'MARIA', 'CASTELLAR', 'FERNANDA', '3137585791', 'Estudiante', 'CC'),
(76, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10077116716', 'cesmercado6', 'cesmercado6', 'MERCADO', 'CESAR ', 'TORRES', 'DAVID', '3137585792', 'Estudiante', 'CC'),
(77, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10077116518', 'anamiranda6', 'anamiranda6', 'MIRANDA', 'ANA', 'MADRID', 'SOFIA', '3137585793', 'Estudiante', 'CC'),
(78, 'hdfghdf', 'josuemunoz@gmail.com', NULL, 'Masculino', '1007767436', 'josuer', 'josuer', 'MUÑOZ', 'JOSUE', 'CHICO', 'RAMIRO', '3137585794', 'Estudiante', 'CC'),
(79, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10078117724', 'milnavarro5', 'milnavarro5', 'NAVARRO', 'MILTON', 'LOPEZ', 'ANDRES', '3137585795', 'Estudiante', 'CC'),
(80, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10078117636', 'lianevado4', 'lianevado4', 'NEVADO', 'LIANA', 'VEGA', 'MARCELA', '3137585796', 'Estudiante', 'CC'),
(81, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10079127833', 'nicolivero6', 'nicolivero6', 'OLIVERO', 'NICOLLE', 'GARCIA', 'ANDREA', '3137585797', 'Estudiante', 'CC'),
(82, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '100808676', 'campereira7', 'campereira7', 'PEREIRA', 'CAMILA', 'RHENALS', '.', '3137585798', 'Estudiante', 'CC'),
(83, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '1008067712', 'micperiñan5', 'micperiñan5', 'PERIÑAN', 'MICHELLE', 'HOYOS', '.', '3137585799', 'Estudiante', 'CC'),
(84, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10080146539', 'andpuello6', 'andpuello6', 'PUELLO', 'ANDREA', 'GUZMAN', 'CAROLINA', '3137585800', 'Estudiante', 'CC'),
(85, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10082118015', 'pedrico7', 'pedrico7', 'RICO', 'PEDRO', 'PINEDA ', 'JOSE', '3137585801', 'Estudiante', 'CC'),
(86, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '1008312658', 'annsantander11', 'annsantander11', 'SANTANDER', 'ANNABELLA', 'CAVICCHIOLI', '.', '3137585802', 'Estudiante', 'CC'),
(87, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10084127632', 'luitenorio7', 'luitenorio7', 'TENORIO', 'LUIS ', 'PALACIO', 'DAVID', '3137585803', 'Estudiante', 'CC'),
(88, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10084117329', 'isaacter1', 'isaacter1', 'TERAN', 'ISAAC', 'ARNEDO', 'DAVID', '3137585804', 'Estudiante', 'CC'),
(89, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10084146730', 'cestinoco8', 'cestinoco8', 'TINOCO', 'CESAR ', 'CAMARGO ', 'ARTURO', '3137585805', 'Estudiante', 'CC'),
(90, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10085176541', 'anauribarren9', 'anauribarren9', 'URIBARREN', 'ANA', 'MOLINARES', 'CRISTINA', '3137585806', 'Estudiante', 'CC'),
(91, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10065106645', 'braangulo5', 'braangulo5', 'ANGULO', 'BRANDON', 'LOPEZ', 'DAVID', '3017178100', 'Estudiante', 'CC'),
(92, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '1006667717', 'mahbabilonia5', 'mahbabilonia5', 'BABILONIA', 'MAHILDE', 'OCHOA', '.', '3145292153', 'Estudiante', 'CC'),
(93, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '100668657', 'avrbarrios7', 'avrbarrios7', 'BARRIOS', 'AVRIL', 'DURANGO', '.', '3168655921', 'Estudiante', 'CC'),
(94, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10066147745', 'melbechara6', 'melbechara6', 'BECHARA', 'MELANIE', 'TORRES', 'CRISTINA', '3012959505', 'Estudiante', 'CC'),
(95, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10066107114', 'gabbenitez5', 'gabbenitez5', 'BENITEZ', 'GABRIELA', 'MACEA', 'SOFIA', '3126287779', 'Estudiante', 'CC'),
(96, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '100668684', 'daiberdugo7', 'daiberdugo7', 'BERDUGO', 'DAICKLYN', 'MALAMBO', '.', '3002946165', 'Estudiante', 'CC'),
(97, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10067137625', 'luicampas5', 'luicampas5', 'CAMPAS', 'LUISA', 'VILLA', 'FERNANDA', '3043629159', 'Estudiante', 'CC'),
(98, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10067147616', 'leicassiani9', 'leicassiani9', 'CASSIANI', 'LEIRU', 'GUTIERREZ', 'DAVID', '3104309687', 'Estudiante', 'CC'),
(99, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10067169019', 'daiberdugo7', 'daiberdugo7', 'CEDEÑO', 'ZURY', 'ALVAREZ', 'VALENTINA', '3014291417', 'Estudiante', 'CC'),
(100, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '1006710683', 'dancorreales9', 'dancorreales9', 'CORREALES', 'DANIELA', 'CONTRERAS', '.', '3225367434', 'Estudiante', 'CC'),
(101, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '1006787347', 'isacortina7', 'isacortina7', 'CORTINA', 'ISABELA', 'MENDOZA', '.', '3008272974', 'Estudiante', 'CC'),
(102, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10067156544', 'alecuesta7', 'alecuesta7', 'CUESTA', 'ALEXIS', 'POMARES', 'DE JESUS', '3106211484', 'Estudiante', 'CC'),
(103, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10068127425', 'juaduran6', 'juaduran6', 'DURAN', 'JUAN', 'ORTEGA', 'MIGUEL', '3052986492', 'Estudiante', 'CC'),
(104, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '1007010835', 'shafaria5', 'shafaria5', 'FARIA', 'SHARON', 'OCHOA', 'SOFIA', '3012610600', 'Estudiante', 'CC'),
(105, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10071137447', 'juagarcia6', 'juagarcia6', 'GARCIA', 'JUAN', 'ACOSTA', 'DE DIOS', '3005877418', 'Estudiante', 'CC'),
(106, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10071107713', 'milgarcia5', 'milgarcia5', 'GARCIA', 'MILTON', 'OLMOS', 'ELIAS', '3182186202', 'Estudiante', 'CC'),
(107, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10071158215', 'rosgonzalez7', 'rosgonzalez7', 'GONZALEZ', 'ROSIVEL', 'VANEGAS', 'CAROLINA', '3182186203', 'Estudiante', 'CC'),
(108, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10071116545', 'albguardo7', 'albguardo7', 'GUARDO', 'ALBA', 'GALINDO', 'ROSA', '3182186204', 'Estudiante', 'CC'),
(109, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10072136732', 'cathernandez7', 'cathernandez7', 'HERNANDEZ', 'CATALINA', 'LONDOÑO', 'ANDREA', '3106539138', 'Estudiante', 'CC'),
(110, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10072126741', 'camhernandez6', 'camhernandez6', 'HERNANDEZ', 'CAMILO', 'ROMERO', 'ANDRES', '3216994658', 'Estudiante', 'CC'),
(111, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '1007257442', 'julherrera4', 'julherrera4', 'HERRERA', 'JULISSA', 'MALO', '.', '3017726405', 'Estudiante', 'CC'),
(112, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '1007214731', 'isaherrera9', 'isaherrera9', 'HERRERA', 'ISABELLA', 'SARMIENTO', 'SOFIA', '3183978317', 'Estudiante', 'CC'),
(113, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '100746779', 'marjimenez5', 'marjimenez5', 'JIMENEZ', 'MARIANA', 'PEREZ', '.', '3102116033', 'Estudiante', 'CC'),
(114, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '1007677440', 'jualicona6', 'jualicona6', 'LICONA', 'JUAN', 'ROMERO', '.', '3156289117', 'Estudiante', 'CC'),
(115, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10076107435', 'julluna5', 'julluna5', 'LUNA', 'JULIO', 'PEREZ', 'CESAR', '3147773470', 'Estudiante', 'CC'),
(116, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10077157715', 'marmarrugo10', 'marmarrugo10', 'MARRUGO', 'MARIA', 'DE LA CRUZ', 'PAULA', '3004245628', 'Estudiante', 'CC'),
(117, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10077137641', 'linmartinez6', 'linmartinez6', 'MARTINEZ', 'LINA', 'MESTRA', 'MARCELA', '3168809325', 'Estudiante', 'CC'),
(118, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '100775831', 'sarmendez4', 'sarmendez4', 'MENDEZ', 'SARA', 'PABA', '.', '3168809326', 'Estudiante', 'CC'),
(119, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '1007757750', 'marmogollon4', 'marmogollon4', 'MOGOLLON', 'MARIANA', 'LUNA', '.', '3017247660', 'Estudiante', 'CC'),
(120, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10077127443', 'jesmuñoz7', 'jesmuñoz7', 'MUÑOZ', 'JESUS', 'MARRUGO', 'DAVID', '3135029099', 'Estudiante', 'CC'),
(121, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10078126540', 'alanovoa6', 'alanovoa6', 'NOVOA', 'ALAN ', 'REALES', 'RAFAEL', '3126264606', 'Estudiante', 'CC'),
(122, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '1007913758', 'cathernandez7', 'cathernandez7', 'OLIVERA', 'KATHERIN', 'CANTILLO', 'SOFIA', '3176538687', 'Estudiante', 'CC'),
(123, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '1008067321', 'isaperez5', 'isaperez5', 'PEREZ', 'ISABELLA', 'PEREZ', '.', '3007621613', 'Estudiante', 'CC'),
(124, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '1008298047', 'pedramirez5', 'pedramirez5', 'RAMIREZ', 'PEDRO', 'OLIVO', 'JOSE', '3147710583', 'Estudiante', 'CC'),
(125, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10082147522', 'kerramos9', 'kerramos9', 'RAMOS', 'KEREN', 'RODRIGUEZ', 'SOFIA', '3024010620', 'Estudiante', 'CC'),
(126, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '1008218744', 'jilrodriguez9', 'jilrodriguez9', 'RODRIGUEZ', 'JILIANIS', 'PATERNINA', 'MARGARITA', '3003317458', 'Estudiante', 'CC'),
(127, 'hdfghdf', '56fdgjhdfg', NULL, 'Masculino', '10082118349', 'sebrodriguez5', 'sebrodriguez5', 'RODRIGUEZ', 'SEBASTIAN', 'SALAS', 'ANDRES', '3003317459', 'Estudiante', 'CC'),
(128, 'hdfghdf', '56fdgjhdfg', NULL, 'Femenino', '10084137543', 'keitapias6', 'keitapias6', 'TAPIAS', 'KEIDY', 'IBAÑEZ', 'JULIANA', '3003317460', 'Estudiante', 'CC'),
(129, 'fhdfghdfg', 'jaimej@gmail.com', 'Activo', 'Masculino', '4563456345', 'jaimej', 'jaimej', 'Jimenez ', 'Jaime ', 'Blanco', 'Jose', '4563456', 'Profesor', 'CC'),
(130, 'fghdf', 'huyt@gmail.com', 'Activo', 'Femenino', '4536345', 'sandramil', 'sandramil', 'Agudelo', 'Sandra', 'Corredor', 'Milena', '56345', 'Profesor', 'CC'),
(131, 'sdfghsf', 'fdgh@gmail.com', 'Activo', 'Masculino', '5674567', 'andresg', 'andresg', 'GUARDO', 'ROYNER ', ' HERNANDEZ ', 'ANDRES	', '65465', 'Profesor', 'CC'),
(132, 'barrio el pozon', 'gabriel@gmail.com', 'Activo', 'Masculino', '9678', 'gabriels', 'gabriels', 'SABATINI ', 'GABRIEL	', 'TAMAYO ', '', '456345', 'Profesor', 'CC'),
(133, 'barrio los alpes', 'jasonc@gmail.com', 'Activo', 'Masculino', '95946546', 'jasonc', 'jasonc', 'CRISTANCHO ', 'JASON ', 'PADILLA ', 'DUVAN	', '4563455', 'Profesor', 'CC'),
(134, 'fethjuefrtyhwrt', 'beliza@gmail.com', 'Activo', 'Femenino', '123523464536', 'beliza', 'beliza', 'MONTES ', 'BELIZA ', 'SALAZAR ', 'ANDREA	', '45764357345', 'Profesor', 'CC'),
(135, 'x', 'miguelj@gmail.com', 'Activo', 'Masculino', '12455425202', 'miguelj', 'miguelj', 'Barrios', 'Miguel', 'Jimenez', 'Jose', '3215212223', 'Profesor', NULL),
(136, 'xxxx', 'sandrap@gmail.com', 'Activo', 'Femenino', '1245785623', 'sandrap', 'sandrap', 'Osorio', 'Sandra', 'Perez', 'Patricia', '3124525485', 'Profesor', NULL),
(137, '********************', 'angelmarin@gmail.com', 'Activo', 'Masculino', '1007229727', 'angel', 'angel', 'Marin', 'Angel', 'giraldo', '.', '3055315106', 'Coordinador', 'CC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valoracion`
--

CREATE TABLE `valoracion` (
  `id` bigint(20) NOT NULL,
  `integrante_id` bigint(20) DEFAULT NULL,
  `criterio_id` bigint(20) DEFAULT NULL,
  `valor` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `valoracion`
--

INSERT INTO `valoracion` (`id`, `integrante_id`, `criterio_id`, `valor`) VALUES
(86, 107, 449, 4),
(87, 107, 450, 4),
(88, 107, 453, 4),
(89, 107, 454, 4),
(90, 108, 449, 3.5),
(91, 108, 450, 3.2),
(92, 108, 453, 3),
(93, 108, 454, 3.2),
(94, 109, 449, 4),
(95, 109, 450, 4),
(96, 109, 453, 0),
(97, 109, 454, 0),
(98, 131, 453, 3.6),
(99, 131, 454, 3.5),
(100, 131, 449, 4),
(101, 131, 450, 5),
(102, 132, 453, 0),
(103, 132, 454, 0),
(104, 132, 449, 0),
(105, 132, 450, 0),
(106, 94, 453, 2.5),
(107, 94, 454, 3),
(108, 94, 449, 5),
(109, 94, 450, 3.5),
(110, 96, 453, 3.6),
(111, 96, 454, 3.8),
(112, 96, 449, 5),
(113, 96, 450, 3.5),
(162, 133, 445, 3.5),
(163, 133, 448, 5),
(164, 133, 446, 3.8),
(165, 133, 442, 3.9),
(166, 133, 438, 4),
(167, 133, 439, 2),
(168, 133, 443, 2),
(169, 133, 441, 3),
(170, 133, 430, 3.5),
(171, 133, 431, 4.3),
(172, 135, 445, 5),
(173, 135, 448, 3.5),
(174, 135, 446, 4),
(175, 135, 442, 4),
(176, 135, 438, 3),
(177, 135, 439, 4),
(178, 135, 443, 3),
(179, 135, 441, 4),
(180, 135, 430, 4),
(181, 135, 431, 4),
(182, 136, 445, 3.6),
(183, 136, 448, 0),
(184, 136, 446, 0),
(185, 136, 442, 0),
(186, 136, 438, 0),
(187, 136, 439, 0),
(188, 136, 443, 0),
(189, 136, 441, 0),
(190, 136, 430, 3.6),
(191, 136, 431, 0),
(192, 137, 445, 0),
(193, 137, 448, 0),
(194, 137, 446, 0),
(195, 137, 442, 0),
(196, 137, 438, 0),
(197, 137, 439, 0),
(198, 137, 443, 0),
(199, 137, 441, 0),
(200, 137, 430, 0),
(201, 137, 431, 0),
(202, 107, 455, 4),
(203, 107, 456, 4),
(204, 107, 451, 4),
(205, 107, 452, 4),
(206, 108, 455, 0),
(207, 108, 456, 0),
(208, 108, 451, 0),
(209, 108, 452, 0),
(210, 109, 455, 0),
(211, 109, 456, 0),
(212, 109, 451, 0),
(213, 109, 452, 0),
(214, 135, 444, 4),
(215, 135, 434, 3),
(216, 135, 435, 0),
(217, 136, 444, 0),
(218, 136, 434, 0),
(219, 136, 435, 0),
(220, 137, 444, 0),
(221, 137, 434, 0),
(222, 137, 435, 0),
(223, 135, 444, 4),
(224, 135, 434, 4),
(225, 135, 435, 0),
(226, 136, 444, 0),
(227, 136, 434, 0),
(228, 136, 435, 0),
(229, 137, 444, 0),
(230, 137, 434, 0),
(231, 137, 435, 0),
(232, 135, 444, 4),
(233, 135, 434, 4),
(234, 135, 435, 4),
(235, 136, 444, 0),
(236, 136, 434, 0),
(237, 136, 435, 0),
(238, 137, 444, 0),
(239, 137, 434, 0),
(240, 137, 435, 0),
(241, 133, 444, 4),
(242, 133, 434, 4),
(243, 133, 435, 4),
(244, 133, 440, 3.5),
(245, 135, 440, 4),
(246, 136, 440, 4),
(247, 137, 440, 3.7),
(248, 94, 455, 4),
(249, 94, 456, 4),
(250, 94, 451, 4),
(251, 94, 452, 3.5),
(252, 96, 455, 3.7),
(253, 96, 456, 3.8),
(254, 96, 451, 3),
(255, 96, 452, 4),
(256, 131, 455, 3.6),
(257, 131, 456, 3.4),
(258, 131, 451, 4),
(259, 131, 452, 4),
(260, 132, 455, 3.8),
(261, 132, 456, 3.4),
(262, 132, 451, 4),
(263, 132, 452, 4.1),
(264, 173, 467, 3.5),
(265, 173, 468, 3.2),
(266, 173, 469, 3.5),
(267, 173, 465, 4),
(268, 173, 466, 3.5),
(269, 174, 467, 3.6),
(270, 174, 468, 4),
(271, 174, 469, 3.5),
(272, 174, 465, 4),
(273, 174, 466, 3.8),
(274, 175, 467, 4),
(275, 175, 468, 4.2),
(276, 175, 469, 4.3),
(277, 175, 465, 4.5),
(278, 175, 466, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_jfx4la722xpbufvby4er1php9` (`area_id`),
  ADD KEY `FKprofesorasignaturakjhdj` (`profesor_id`),
  ADD KEY `FKseccionasignaturadhfkjef` (`seccion_id`);

--
-- Indices de la tabla `asistente`
--
ALTER TABLE `asistente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FkIntegranteAsistentekd` (`estudiante_id`),
  ADD KEY `fktutoriaasistenciasfr` (`tutoria_id`);

--
-- Indices de la tabla `aspecto`
--
ALTER TABLE `aspecto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkdimensionaspecto` (`dimension_id`);

--
-- Indices de la tabla `avance`
--
ALTER TABLE `avance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_mqgofphtf8hnmte30ojal442a` (`fase_id`),
  ADD KEY `FK_5sgod911kqo7uol1t4it5mbju` (`integrante_id`),
  ADD KEY `FK_hgovry0bb31xy57t7xis4ur0h` (`proyecto_id`);

--
-- Indices de la tabla `competencia`
--
ALTER TABLE `competencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkunidadccompetencia` (`unidad_id`),
  ADD KEY `fktipocompetenciacompetencia` (`tipo_id`),
  ADD KEY `fktipoentregablecompetencia` (`tipoentregable_id`);

--
-- Indices de la tabla `coordinador`
--
ALTER TABLE `coordinador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `criterio`
--
ALTER TABLE `criterio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkcompetenciacriteriosfd` (`competencia_id`);

--
-- Indices de la tabla `criterioevaluacion`
--
ALTER TABLE `criterioevaluacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkcriteriocevaluacion` (`criterio_id`),
  ADD KEY `fkevaluacioncrievaluacion` (`evaluacion_id`),
  ADD KEY `fkdimensioncriterioevaluacione` (`dimension_id`);

--
-- Indices de la tabla `dimension`
--
ALTER TABLE `dimension`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkperiododimensiondf` (`periodo_id`),
  ADD KEY `fkprogramadiomensiondfg` (`programa_id`),
  ADD KEY `fksemestredimensionsdjfd` (`semestre_id`);

--
-- Indices de la tabla `entregable`
--
ALTER TABLE `entregable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_qd93ou8ykauwidni97bl0gfj9` (`tipo_id`),
  ADD KEY `fkasignaturaentregableefrr` (`asignatura_id`),
  ADD KEY `fkavanceentregable` (`avance_id`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkseccionevaluacion` (`seccion_id`);

--
-- Indices de la tabla `fase`
--
ALTER TABLE `fase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ko87odmvx82wccmvra38012yh` (`periodo_id`),
  ADD KEY `FK_2q2n03ftxwc7nwbctetapryx3` (`programa_id`);

--
-- Indices de la tabla `integrante`
--
ALTER TABLE `integrante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_aoyloigy6dmb3ue1ocvjmgftr` (`matricula_id`),
  ADD KEY `FK_j30eoql6w4okktijjnwf8t3dg` (`proyecto_id`);

--
-- Indices de la tabla `item_proyecto`
--
ALTER TABLE `item_proyecto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_jvksqtddf55vt958j2kvyqnvu` (`editor_id`),
  ADD KEY `FK_oyojpdv1cc85k0mytd2eiftae` (`proyecto_id`),
  ADD KEY `FK_oj3e0bi2x1fb1mxe4u4akg4p4` (`tipo_id`);

--
-- Indices de la tabla `liderpa`
--
ALTER TABLE `liderpa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKhgjksadhgfd` (`profesor_id`),
  ADD KEY `FKseccionliderjrgrg` (`seccion_id`);

--
-- Indices de la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_m95uuox2pkybrffpesrxc592g` (`estudiante_id`),
  ADD KEY `FK_semestrematriculafsdfg` (`seccion_id`);

--
-- Indices de la tabla `nucleo`
--
ALTER TABLE `nucleo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fksemestrenucleodf` (`semestre_id`),
  ADD KEY `fkprohgramanucleokdjf` (`programa_id`);

--
-- Indices de la tabla `periodo`
--
ALTER TABLE `periodo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `programaacademico`
--
ALTER TABLE `programaacademico`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ku552utuafjkw5rmj5thr8f35` (`coordinador_id`),
  ADD KEY `FK_tpg2xruw4mfymn2hcsg7ob1uu` (`coordinadorPA_id`);

--
-- Indices de la tabla `proyecto_aula`
--
ALTER TABLE `proyecto_aula`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_87uuwdrr3xqdwpeak2a57wjpq` (`coordinadorPA_id`),
  ADD KEY `FK_jsdhkfjshdfkjsdgdf` (`profesorLider_id`),
  ADD KEY `FKseccionproyectoaulasdkhjf` (`seccion_id`);

--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKsemestreidookjed` (`semestre_id`),
  ADD KEY `FKperiodoidhirejfhek` (`periodo_id`),
  ADD KEY `FKprogramaacademicoseccioniejf` (`programa_id`);

--
-- Indices de la tabla `semestre`
--
ALTER TABLE `semestre`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipocompetencia`
--
ALTER TABLE `tipocompetencia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_entregable`
--
ALTER TABLE `tipo_entregable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkasignaturatipoentregablesf` (`asignatura_id`);

--
-- Indices de la tabla `tipo_item`
--
ALTER TABLE `tipo_item`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tutoria`
--
ALTER TABLE `tutoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_su05jpc2reksb1h2jrywicy49` (`integrante_id`),
  ADD KEY `FK_64noap21fb9xlhi5k37dbil9u` (`proyecto_id`),
  ADD KEY `FK_sd6r4d9ka4htw4jhhm4d7dxjb` (`asignatura_id`);

--
-- Indices de la tabla `unidadcompetencia`
--
ALTER TABLE `unidadcompetencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkasignaturaunidad` (`asignatura_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `valoracion`
--
ALTER TABLE `valoracion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkintegrantevaloracion` (`integrante_id`),
  ADD KEY `fkcriteriovaloraciontryh` (`criterio_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de la tabla `asistente`
--
ALTER TABLE `asistente`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `aspecto`
--
ALTER TABLE `aspecto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `avance`
--
ALTER TABLE `avance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `competencia`
--
ALTER TABLE `competencia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT de la tabla `criterio`
--
ALTER TABLE `criterio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- AUTO_INCREMENT de la tabla `criterioevaluacion`
--
ALTER TABLE `criterioevaluacion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=473;

--
-- AUTO_INCREMENT de la tabla `dimension`
--
ALTER TABLE `dimension`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT de la tabla `entregable`
--
ALTER TABLE `entregable`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `fase`
--
ALTER TABLE `fase`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `integrante`
--
ALTER TABLE `integrante`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT de la tabla `item_proyecto`
--
ALTER TABLE `item_proyecto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `liderpa`
--
ALTER TABLE `liderpa`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `matricula`
--
ALTER TABLE `matricula`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `nucleo`
--
ALTER TABLE `nucleo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `periodo`
--
ALTER TABLE `periodo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `programaacademico`
--
ALTER TABLE `programaacademico`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `proyecto_aula`
--
ALTER TABLE `proyecto_aula`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `seccion`
--
ALTER TABLE `seccion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `semestre`
--
ALTER TABLE `semestre`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tipocompetencia`
--
ALTER TABLE `tipocompetencia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_entregable`
--
ALTER TABLE `tipo_entregable`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT de la tabla `tipo_item`
--
ALTER TABLE `tipo_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `tutoria`
--
ALTER TABLE `tutoria`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `unidadcompetencia`
--
ALTER TABLE `unidadcompetencia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT de la tabla `valoracion`
--
ALTER TABLE `valoracion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD CONSTRAINT `FK_jfx4la722xpbufvby4er1php9` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`),
  ADD CONSTRAINT `FKprofesorasignaturakjhdj` FOREIGN KEY (`profesor_id`) REFERENCES `profesor` (`id`),
  ADD CONSTRAINT `FKseccionasignaturadhfkjef` FOREIGN KEY (`seccion_id`) REFERENCES `seccion` (`id`);

--
-- Filtros para la tabla `asistente`
--
ALTER TABLE `asistente`
  ADD CONSTRAINT `FkIntegranteAsistentekd` FOREIGN KEY (`estudiante_id`) REFERENCES `integrante` (`id`),
  ADD CONSTRAINT `fktutoriaasistenciasfr` FOREIGN KEY (`tutoria_id`) REFERENCES `tutoria` (`id`);

--
-- Filtros para la tabla `aspecto`
--
ALTER TABLE `aspecto`
  ADD CONSTRAINT `fkdimensionaspecto` FOREIGN KEY (`dimension_id`) REFERENCES `dimension` (`id`);

--
-- Filtros para la tabla `avance`
--
ALTER TABLE `avance`
  ADD CONSTRAINT `FK_5sgod911kqo7uol1t4it5mbju` FOREIGN KEY (`integrante_id`) REFERENCES `integrante` (`id`),
  ADD CONSTRAINT `FK_hgovry0bb31xy57t7xis4ur0h` FOREIGN KEY (`proyecto_id`) REFERENCES `proyecto_aula` (`id`),
  ADD CONSTRAINT `FK_mqgofphtf8hnmte30ojal442a` FOREIGN KEY (`fase_id`) REFERENCES `fase` (`id`);

--
-- Filtros para la tabla `competencia`
--
ALTER TABLE `competencia`
  ADD CONSTRAINT `fktipocompetenciacompetencia` FOREIGN KEY (`tipo_id`) REFERENCES `tipocompetencia` (`id`),
  ADD CONSTRAINT `fktipoentregablecompetencia` FOREIGN KEY (`tipoentregable_id`) REFERENCES `tipo_entregable` (`id`),
  ADD CONSTRAINT `fkunidadccompetencia` FOREIGN KEY (`unidad_id`) REFERENCES `unidadcompetencia` (`id`);

--
-- Filtros para la tabla `coordinador`
--
ALTER TABLE `coordinador`
  ADD CONSTRAINT `FK_pdmq90fua29xd1qcg5n98xavw` FOREIGN KEY (`id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `criterio`
--
ALTER TABLE `criterio`
  ADD CONSTRAINT `fkcriteriocompetenciasfsf` FOREIGN KEY (`competencia_id`) REFERENCES `competencia` (`id`);

--
-- Filtros para la tabla `criterioevaluacion`
--
ALTER TABLE `criterioevaluacion`
  ADD CONSTRAINT `fkcriteriocevaluacion` FOREIGN KEY (`criterio_id`) REFERENCES `criterio` (`id`),
  ADD CONSTRAINT `fkdimensioncriterioevaluaciom34fr` FOREIGN KEY (`dimension_id`) REFERENCES `dimension` (`id`),
  ADD CONSTRAINT `fkevaluacioncrievaluacion` FOREIGN KEY (`evaluacion_id`) REFERENCES `evaluacion` (`id`);

--
-- Filtros para la tabla `dimension`
--
ALTER TABLE `dimension`
  ADD CONSTRAINT `fkperiododimension` FOREIGN KEY (`periodo_id`) REFERENCES `periodo` (`id`),
  ADD CONSTRAINT `fkprogramaacademicodimension` FOREIGN KEY (`programa_id`) REFERENCES `programaacademico` (`id`),
  ADD CONSTRAINT `fksemestredimension` FOREIGN KEY (`semestre_id`) REFERENCES `semestre` (`id`);

--
-- Filtros para la tabla `entregable`
--
ALTER TABLE `entregable`
  ADD CONSTRAINT `FK_qd93ou8ykauwidni97bl0gfj9` FOREIGN KEY (`tipo_id`) REFERENCES `tipo_entregable` (`id`),
  ADD CONSTRAINT `fkasignaturaentregableefrr` FOREIGN KEY (`asignatura_id`) REFERENCES `asignatura` (`id`),
  ADD CONSTRAINT `fkavanceentregable` FOREIGN KEY (`avance_id`) REFERENCES `avance` (`id`);

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `FK_751y8g99a4ss0s6ljggwahg83` FOREIGN KEY (`id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  ADD CONSTRAINT `fkseccionevaluacion` FOREIGN KEY (`seccion_id`) REFERENCES `seccion` (`id`);

--
-- Filtros para la tabla `fase`
--
ALTER TABLE `fase`
  ADD CONSTRAINT `FK_2q2n03ftxwc7nwbctetapryx3` FOREIGN KEY (`programa_id`) REFERENCES `programaacademico` (`id`),
  ADD CONSTRAINT `FK_ko87odmvx82wccmvra38012yh` FOREIGN KEY (`periodo_id`) REFERENCES `periodo` (`id`);

--
-- Filtros para la tabla `integrante`
--
ALTER TABLE `integrante`
  ADD CONSTRAINT `FK_aoyloigy6dmb3ue1ocvjmgftr` FOREIGN KEY (`matricula_id`) REFERENCES `matricula` (`id`),
  ADD CONSTRAINT `FK_j30eoql6w4okktijjnwf8t3dg` FOREIGN KEY (`proyecto_id`) REFERENCES `proyecto_aula` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `item_proyecto`
--
ALTER TABLE `item_proyecto`
  ADD CONSTRAINT `FK_jvksqtddf55vt958j2kvyqnvu` FOREIGN KEY (`editor_id`) REFERENCES `matricula` (`id`),
  ADD CONSTRAINT `FK_oj3e0bi2x1fb1mxe4u4akg4p4` FOREIGN KEY (`tipo_id`) REFERENCES `tipo_item` (`id`),
  ADD CONSTRAINT `FK_oyojpdv1cc85k0mytd2eiftae` FOREIGN KEY (`proyecto_id`) REFERENCES `proyecto_aula` (`id`);

--
-- Filtros para la tabla `liderpa`
--
ALTER TABLE `liderpa`
  ADD CONSTRAINT `FKprofesorliderkjh` FOREIGN KEY (`profesor_id`) REFERENCES `profesor` (`id`),
  ADD CONSTRAINT `FKseccionliderjrgrg` FOREIGN KEY (`seccion_id`) REFERENCES `seccion` (`id`);

--
-- Filtros para la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `FK_m95uuox2pkybrffpesrxc592g` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiante` (`id`),
  ADD CONSTRAINT `FK_semestrematriculafsdfg` FOREIGN KEY (`seccion_id`) REFERENCES `seccion` (`id`);

--
-- Filtros para la tabla `nucleo`
--
ALTER TABLE `nucleo`
  ADD CONSTRAINT `fkprohgramanucleokdjf` FOREIGN KEY (`programa_id`) REFERENCES `programaacademico` (`id`),
  ADD CONSTRAINT `fksemestrenucleodf` FOREIGN KEY (`semestre_id`) REFERENCES `semestre` (`id`);

--
-- Filtros para la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD CONSTRAINT `FK_or5mf3rfj9ecf3r5wndriorfj` FOREIGN KEY (`id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `programaacademico`
--
ALTER TABLE `programaacademico`
  ADD CONSTRAINT `FK_ku552utuafjkw5rmj5thr8f35` FOREIGN KEY (`coordinador_id`) REFERENCES `coordinador` (`id`),
  ADD CONSTRAINT `FK_tpg2xruw4mfymn2hcsg7ob1uu` FOREIGN KEY (`coordinadorPA_id`) REFERENCES `profesor` (`id`);

--
-- Filtros para la tabla `proyecto_aula`
--
ALTER TABLE `proyecto_aula`
  ADD CONSTRAINT `FK_87uuwdrr3xqdwpeak2a57wjpq` FOREIGN KEY (`coordinadorPA_id`) REFERENCES `profesor` (`id`),
  ADD CONSTRAINT `FK_jsdhkfjshdfkjsdgdf` FOREIGN KEY (`profesorLider_id`) REFERENCES `liderpa` (`id`),
  ADD CONSTRAINT `FKseccionproyectoaulasdkhjf` FOREIGN KEY (`seccion_id`) REFERENCES `seccion` (`id`);

--
-- Filtros para la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD CONSTRAINT `FKperiodoseccionkjehrter` FOREIGN KEY (`periodo_id`) REFERENCES `periodo` (`id`),
  ADD CONSTRAINT `FKprogramaacademicoseccioniejf` FOREIGN KEY (`programa_id`) REFERENCES `programaacademico` (`id`),
  ADD CONSTRAINT `FKsemestreseccionjhdfgkd` FOREIGN KEY (`semestre_id`) REFERENCES `semestre` (`id`);

--
-- Filtros para la tabla `tipo_entregable`
--
ALTER TABLE `tipo_entregable`
  ADD CONSTRAINT `fkasignaturatipoentregablesf` FOREIGN KEY (`asignatura_id`) REFERENCES `asignatura` (`id`);

--
-- Filtros para la tabla `tutoria`
--
ALTER TABLE `tutoria`
  ADD CONSTRAINT `FK_64noap21fb9xlhi5k37dbil9u` FOREIGN KEY (`proyecto_id`) REFERENCES `proyecto_aula` (`id`),
  ADD CONSTRAINT `FK_sd6r4d9ka4htw4jhhm4d7dxjb` FOREIGN KEY (`asignatura_id`) REFERENCES `asignatura` (`id`),
  ADD CONSTRAINT `FK_su05jpc2reksb1h2jrywicy49` FOREIGN KEY (`integrante_id`) REFERENCES `integrante` (`id`);

--
-- Filtros para la tabla `unidadcompetencia`
--
ALTER TABLE `unidadcompetencia`
  ADD CONSTRAINT `fkasignaturaunidad` FOREIGN KEY (`asignatura_id`) REFERENCES `asignatura` (`id`);

--
-- Filtros para la tabla `valoracion`
--
ALTER TABLE `valoracion`
  ADD CONSTRAINT `fkcriteriovaloraciontryh` FOREIGN KEY (`criterio_id`) REFERENCES `criterioevaluacion` (`id`),
  ADD CONSTRAINT `fkintegrantevaloracion` FOREIGN KEY (`integrante_id`) REFERENCES `integrante` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
