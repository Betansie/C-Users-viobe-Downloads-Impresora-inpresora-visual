-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-11-2026 a las 12:54:14
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `portal_pnf`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE TABLE `asignaturas` (
  `id` int(10) UNSIGNED NOT NULL,
  `carrera_id` int(10) UNSIGNED NOT NULL,
  `semestre` tinyint(3) UNSIGNED NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `nombre` varchar(160) NOT NULL
) ;

--
-- Volcado de datos para la tabla `asignaturas`
--

INSERT INTO `asignaturas` (`id`, `carrera_id`, `semestre`, `codigo`, `nombre`) VALUES
(1, 1, 1, 'INF-101', 'Matemática I'),
(2, 1, 1, 'INF-102', 'Introducción a la Informática'),
(3, 1, 1, 'INF-103', 'Lenguaje y Comunicación'),
(4, 1, 2, 'INF-201', 'Matemática II'),
(5, 1, 2, 'INF-202', 'Algoritmos y Programación'),
(6, 1, 2, 'INF-203', 'Arquitectura del Computador'),
(7, 1, 3, 'INF-301', 'Bases de Datos I'),
(8, 1, 3, 'INF-302', 'Programación Orientada a Objetos'),
(9, 1, 3, 'INF-303', 'Redes de Computadoras'),
(10, 1, 4, 'INF-401', 'Bases de Datos II'),
(11, 1, 4, 'INF-402', 'Ingeniería de Software'),
(12, 1, 4, 'INF-403', 'Sistemas Operativos'),
(13, 1, 5, 'INF-501', 'Desarrollo Web'),
(14, 1, 5, 'INF-502', 'Seguridad Informática'),
(15, 1, 5, 'INF-503', 'Proyecto Socio-Tecnológico'),
(16, 2, 1, 'VET-101', 'Anatomía Animal I'),
(17, 2, 1, 'VET-102', 'Biología General'),
(18, 2, 1, 'VET-103', 'Química General'),
(19, 2, 2, 'VET-201', 'Fisiología Animal'),
(20, 2, 2, 'VET-202', 'Bioquímica'),
(21, 2, 2, 'VET-203', 'Anatomía Animal II'),
(22, 2, 3, 'VET-301', 'Microbiología Veterinaria'),
(23, 2, 3, 'VET-302', 'Nutrición Animal'),
(24, 2, 3, 'VET-303', 'Semiología'),
(25, 2, 4, 'VET-401', 'Farmacología Veterinaria'),
(26, 2, 4, 'VET-402', 'Patología Veterinaria'),
(27, 2, 4, 'VET-403', 'Cirugía Básica'),
(28, 2, 5, 'VET-501', 'Salud Pública Veterinaria'),
(29, 2, 5, 'VET-502', 'Producción Animal'),
(30, 2, 5, 'VET-503', 'Proyecto Socio-Comunitario'),
(31, 3, 1, 'ADM-101', 'Contabilidad I'),
(32, 3, 1, 'ADM-102', 'Fundamentos de Administración'),
(33, 3, 1, 'ADM-103', 'Matemática Financiera'),
(34, 3, 2, 'ADM-201', 'Contabilidad II'),
(35, 3, 2, 'ADM-202', 'Microeconomía'),
(36, 3, 2, 'ADM-203', 'Estadística I'),
(37, 3, 3, 'ADM-301', 'Gerencia de Empresas'),
(38, 3, 3, 'ADM-302', 'Macroeconomía'),
(39, 3, 3, 'ADM-303', 'Derecho Mercantil'),
(40, 3, 4, 'ADM-401', 'Finanzas Corporativas'),
(41, 3, 4, 'ADM-402', 'Mercadeo'),
(42, 3, 4, 'ADM-403', 'Gestión del Talento Humano'),
(43, 3, 5, 'ADM-501', 'Planificación Estratégica'),
(44, 3, 5, 'ADM-502', 'Formulación de Proyectos'),
(45, 3, 5, 'ADM-503', 'Presupuesto Empresarial'),
(46, 4, 1, 'AGR-101', 'Botánica General'),
(47, 4, 1, 'AGR-102', 'Química Agrícola'),
(48, 4, 1, 'AGR-103', 'Introducción a la Agroalimentaria'),
(49, 4, 2, 'AGR-201', 'Suelos y Fertilizantes'),
(50, 4, 2, 'AGR-202', 'Fisiología Vegetal'),
(51, 4, 2, 'AGR-203', 'Maquinaria Agrícola'),
(52, 4, 3, 'AGR-301', 'Producción Vegetal'),
(53, 4, 3, 'AGR-302', 'Zootecnia General'),
(54, 4, 3, 'AGR-303', 'Inocuidad Alimentaria'),
(55, 4, 4, 'AGR-401', 'Transformación Agroindustrial'),
(56, 4, 4, 'AGR-402', 'Riego y Drenaje'),
(57, 4, 4, 'AGR-403', 'Control de Plagas'),
(58, 4, 5, 'AGR-501', 'Gestión Agroempresarial'),
(59, 4, 5, 'AGR-502', 'Tecnología de Alimentos'),
(60, 4, 5, 'AGR-503', 'Proyecto Socio-Productivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `duracion` varchar(50) NOT NULL DEFAULT '5 semestres'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id`, `codigo`, `nombre`, `descripcion`, `duracion`) VALUES
(1, 'INF', 'PNF Informática', 'Formación en desarrollo de software, redes, bases de datos y seguridad informática.', '5 semestres'),
(2, 'VET', 'PNF Veterinaria', 'Formación en salud animal, producción pecuaria y salud pública veterinaria.', '5 semestres'),
(3, 'ADM', 'PNF Administración', 'Formación en gestión empresarial, finanzas, mercadeo y talento humano.', '5 semestres'),
(4, 'AGR', 'PNF Agroalimentaria', 'Formación en producción vegetal, transformación agroindustrial e inocuidad alimentaria.', '5 semestres');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` int(10) UNSIGNED NOT NULL,
  `cedula` varchar(20) NOT NULL,
  `nombres` varchar(120) NOT NULL,
  `apellidos` varchar(120) NOT NULL,
  `email` varchar(190) NOT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `creado_en` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `cedula`, `nombres`, `apellidos`, `email`, `telefono`, `fecha_nacimiento`, `sexo`, `direccion`, `password_hash`, `creado_en`) VALUES
(1, 'V-12345678', 'María', 'Pérez González', 'demo@pnf.edu.ve', '0414-1234567', '2003-05-18', 'F', 'Av. Universidad, sector Centro, Barquisimeto', 'scrypt$aebfba161c36c35d798ff5923859f8c5$45526fad2da8a22e7d0fed5dbbe43dcf78a9be40e1f18adcb16b2dfd46cb28967ae654db41cf7e94487dd4de345138ca0e6f238ea9f2685c1e58d0177838afe5', '2026-11-01 12:48:53'),
(2, 'V-87654321', 'José', 'Rodríguez', 'jose@pnf.edu.ve', '0424-7654321', '2001-11-02', 'M', 'Calle 5 con Av. Bolívar, Barquisimeto', 'scrypt$378b087ccbe3d89a2e2c858d2a55da76$a01ff693ef24254b915d129c0cd90e7a84762ee8296c9e58a574118f81ecb3c85122cd208e828cfafc1204e818c13f20c3e7f51a7e2f914db717fd01b67478e3', '2026-11-01 12:48:54'),
(3, 'V-28733097', 'miguel', 'osorio', 'miguelosorio2873@gmail.com', '0238-3342185', '2003-09-28', 'M', 'altagracia de orituco estado guarico', 'scrypt$e59a695fb06616a3ffb1edfd2e12a307$e26b862e7eb2a8b17850d17967fa04ac36c15cddc1a3ab55b6ee72c90301d97c9118580998d8fd5f6c16b46f99e2a5f60cc723866dbec47da49b607649d25df4', '2026-11-01 12:52:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripciones`
--

CREATE TABLE `inscripciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo` varchar(64) NOT NULL,
  `estudiante_id` int(10) UNSIGNED NOT NULL,
  `carrera_id` int(10) UNSIGNED NOT NULL,
  `semestre` tinyint(3) UNSIGNED NOT NULL,
  `turno` varchar(20) NOT NULL,
  `condicion` enum('REGULAR','FLOTANTE') NOT NULL DEFAULT 'REGULAR',
  `fecha_inscripcion` datetime NOT NULL DEFAULT current_timestamp(),
  `estado` enum('REGISTRADA','IMPRESA','ANULADA') NOT NULL DEFAULT 'REGISTRADA',
  `observaciones` text DEFAULT NULL,
  `impreso_en` datetime DEFAULT NULL,
  `impresiones` int(10) UNSIGNED NOT NULL DEFAULT 0
) ;

--
-- Volcado de datos para la tabla `inscripciones`
--

INSERT INTO `inscripciones` (`id`, `codigo`, `estudiante_id`, `carrera_id`, `semestre`, `turno`, `fecha_inscripcion`, `estado`, `observaciones`, `impreso_en`, `impresiones`) VALUES
(1, 'INS-2026-000001', 1, 1, 3, 'Mañana', '2026-11-01 12:48:54', 'REGISTRADA', 'Estudiante de ejemplo para demostración.', NULL, 0),
(2, 'INS-2026-000002', 1, 4, 1, 'Tarde', '2026-11-01 12:48:54', 'REGISTRADA', NULL, NULL, 0),
(3, 'INS-2026-000003', 2, 2, 2, 'Noche', '2026-11-01 12:48:54', 'REGISTRADA', 'Segunda inscripción de ejemplo.', NULL, 0),
(4, 'INS-2026-000004', 3, 1, 1, 'Noche', '2026-11-01 12:52:38', 'IMPRESA', NULL, '2026-11-03 18:46:31', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcion_asignaturas`
--

CREATE TABLE `inscripcion_asignaturas` (
  `inscripcion_id` int(10) UNSIGNED NOT NULL,
  `asignatura_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `inscripcion_asignaturas`
--

INSERT INTO `inscripcion_asignaturas` (`inscripcion_id`, `asignatura_id`) VALUES
(1, 7),
(1, 8),
(1, 9),
(2, 46),
(2, 47),
(2, 48),
(3, 19),
(3, 20),
(3, 21),
(4, 1),
(4, 2),
(4, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_asignaturas_carrera_codigo` (`carrera_id`,`codigo`),
  ADD KEY `idx_asignaturas_carrera` (`carrera_id`,`semestre`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_carreras_codigo` (`codigo`),
  ADD UNIQUE KEY `uq_carreras_nombre` (`nombre`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_estudiantes_cedula` (`cedula`),
  ADD UNIQUE KEY `uq_estudiantes_email` (`email`);

--
-- Indices de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_inscripciones_codigo` (`codigo`),
  ADD UNIQUE KEY `uq_inscripciones_estudiante_carrera_semestre` (`estudiante_id`,`carrera_id`,`semestre`),
  ADD KEY `idx_inscripciones_estudiante` (`estudiante_id`),
  ADD KEY `fk_inscripciones_carrera` (`carrera_id`);

--
-- Indices de la tabla `inscripcion_asignaturas`
--
ALTER TABLE `inscripcion_asignaturas`
  ADD PRIMARY KEY (`inscripcion_id`,`asignatura_id`),
  ADD KEY `fk_inscripcion_asignaturas_asignatura` (`asignatura_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD CONSTRAINT `fk_asignaturas_carrera` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD CONSTRAINT `fk_inscripciones_carrera` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`),
  ADD CONSTRAINT `fk_inscripciones_estudiante` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `inscripcion_asignaturas`
--
ALTER TABLE `inscripcion_asignaturas`
  ADD CONSTRAINT `fk_inscripcion_asignaturas_asignatura` FOREIGN KEY (`asignatura_id`) REFERENCES `asignaturas` (`id`),
  ADD CONSTRAINT `fk_inscripcion_asignaturas_inscripcion` FOREIGN KEY (`inscripcion_id`) REFERENCES `inscripciones` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
