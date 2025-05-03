-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-05-2025 a las 15:23:22
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
-- Base de datos: `nuevas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquiler`
--

CREATE TABLE `alquiler` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fechaRecogida` date NOT NULL,
  `lugarRecogida` varchar(100) NOT NULL,
  `horaRecogida` varchar(5) NOT NULL,
  `fechaEntrega` date NOT NULL,
  `lugarEntrega` varchar(100) NOT NULL,
  `horaEntrega` varchar(5) NOT NULL,
  `importe` decimal(9,2) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `clienteID` bigint(20) UNSIGNED NOT NULL,
  `vehiculoID` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alquiler`
--

INSERT INTO `alquiler` (`id`, `fechaRecogida`, `lugarRecogida`, `horaRecogida`, `fechaEntrega`, `lugarEntrega`, `horaEntrega`, `importe`, `activo`, `clienteID`, `vehiculoID`) VALUES
(7, '2025-04-16', 'Fuengirola', '08:00', '2025-04-17', 'Fuengirola', '08:00', 95.00, 0, 1, 13),
(8, '2025-04-17', 'Fuengirola', '08:00', '2025-04-18', 'Fuengirola', '08:00', 75.00, 1, 4948, 12),
(9, '2025-04-18', 'Fuengirola', '08:00', '2025-04-19', 'Fuengirola', '08:00', 85.00, 0, 1, 11),
(10, '2025-04-17', 'Fuengirola', '08:00', '2025-04-18', 'Fuengirola', '08:00', 75.00, 0, 1, 12),
(11, '2025-04-17', 'Fuengirola', '08:00', '2025-04-18', 'Fuengirola', '08:00', 75.00, 0, 1, 12),
(12, '2025-04-17', 'Fuengirola', '08:00', '2025-04-18', 'Fuengirola', '08:00', 95.00, 0, 4949, 13),
(13, '2026-01-20', 'Fuengirola', '08:00', '2026-02-21', 'Fuengirola', '08:00', 2400.00, 0, 1, 12),
(14, '2025-04-18', 'Fuengirola', '08:00', '2025-04-19', 'Fuengirola', '08:00', 75.00, 0, 1, 12),
(15, '2025-04-20', 'Fuengirola', '08:00', '2025-04-22', 'Fuengirola', '08:00', 170.00, 0, 4950, 11),
(16, '2025-04-18', 'Fuengirola', '08:00', '2025-04-20', 'Fuengirola', '08:00', 150.00, 1, 1, 12),
(17, '2025-05-01', 'Fuengirola', '08:00', '2025-05-04', 'Fuengirola', '08:30', 255.00, 1, 4951, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `domicilio` varchar(50) NOT NULL,
  `ocupacion` varchar(30) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `nombre`, `apellidos`, `domicilio`, `ocupacion`, `fechaNacimiento`, `foto`) VALUES
(1, 'cliente', 'cliente', 'calle fuengirola', 'Estudiante', '1995-01-01', 'storage/cliente/1.png'),
(4946, 'clienteuno', 'clienteuno', 'sin', 'No especificado', '2000-10-10', 'storage/cliente/4946.png'),
(4947, 'prueba', 'prueba', 'prueba', 'Empleado', '2000-10-10', 'storage/cliente/4947.png'),
(4948, 'Estrella', 'Estella', 'fuengirola', 'Estudiante', '1990-08-19', 'storage/cliente/4948.png'),
(4949, 'Virginia', 'Virginia', 'Malaga', 'No especificado', '1992-05-16', 'storage/cliente/4949.png'),
(4950, 'estrella', 'M a', 'rio tinto', 'No especificado', '1990-08-19', '../storage/persona.png'),
(4951, 'María', 'Pérez', 'b', 'Trabajador', '1987-07-31', 'storage/cliente/4951.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id`, `nombre`, `apellidos`, `foto`) VALUES
(1, 'empleado', 'empleado', 'storage/empleado/1.png'),
(4885, 'virginia', 'perez', 'storage/empleado/4885.png'),
(4886, 'TestdosTestdos', 'TestdosTestdos', 'storage/empleado/4886.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2025_04_04_163124_create_usuario_table', 1),
(2, '2025_04_04_163351_create_cliente_table', 1),
(3, '2025_04_04_163459_create_empleado_table', 1),
(4, '2025_04_04_163525_create_vehiculo_table', 1),
(5, '2025_04_04_163547_create_alquiler_table', 1),
(6, '2025_04_04_163619_create_sessions_table', 1),
(7, '2025_04_16_132924_add_disponible_to_vehiculo_table', 2),
(8, '2025_05_02_102251_add_ruta_json_to_vehiculos_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('uHMQQqw4KblwZzkvHlWR04H9epGGh3rhwwzpCS1i', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUjVLYllrYjAyQWhaRXc3VXZqeTdwdjVxWTBQT05aRmd0b09heVdXVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdmVoaWN1bG9zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mzt9', 1746183291),
('zcZy85MfQy5wdEOdt1p3CRDDvXJyj9H6XCKsQzgR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicEFScVRaSjJPS0xadVJUbmlLTXhKSXIwak9ZVjU5NFZlTk1QbmFjQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvdmVoaWN1bG9zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1746192198);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `utenteable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `utenteable_type` varchar(25) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `username`, `password`, `utenteable_id`, `utenteable_type`, `remember_token`) VALUES
(1, 'clientecliente', '$2y$12$5RvB7MQf.DorHHpHYbFfBOIINt.mdUscvK7cxufr5T9UpDVQqk.ry', 1, 'App\\Models\\Cliente', 'FzX5RjAKd4HNkapq0fYsjo8mEEcrcUCeeOhtW8TeQZ5KhzCPotacDxllLgti'),
(2, 'empleadoempleado', '$2y$12$uN9JBXy3D2P9xW/m8uRHIOUUjG882u3qRMWgPnCzhhVX33cvMKqgO', 1, 'App\\Models\\Empleado', 'yRNRqevnIORXEqxtMUFavqDi5BczELMjbe3jIC9IE6EnpxxD2wYzG04Rn6Kf'),
(3, 'adminadmin', '$2y$12$wP95JGorgZsdJlct7ppPB.3q4K/BrxhJmf5rk6fzgnSlSDMPTmMi.', NULL, 'Admin', '71Su1iMWqs9qLubXl7jmYzEe5hrCXmrmu3yMD9zEswwbBNIlArGsTOyjE6d6'),
(4981, 'Virginia1', '$2y$12$BiCI4DuvN7zoeBumJLeUx.rAVzbYIKp2c0svhTPhPbztyoSIyL7rm', 4885, 'App\\Models\\Empleado', NULL),
(4982, 'TestdosTestdos', '$2y$12$Sg57rN4884WaFgq44wOOZuOsX/uV6TCXuAXFESBRrUZTZysvVRyu6', 4886, 'App\\Models\\Empleado', NULL),
(4983, 'Clienteuno', '$2y$12$xg2RDLrCdwWqt6AH2J8lk.MvfO2C8al41LUT8nz65kR1BIZa4YAQS', 4946, 'App\\Models\\Cliente', NULL),
(4984, 'Prueba2025', '$2y$12$i5tl4YdARpN9TSGmtXQa4O0Ji4wSZ3vf.dWEUBYWsXK/cqxN5n3zm', 4947, 'App\\Models\\Cliente', NULL),
(4985, 'Estrella1', '$2y$12$Z88JL3IjWtUrK5er3NCUb.V8UK0z5Gc75HpwZKKgWaKvTI9DAAZL6', 4948, 'App\\Models\\Cliente', NULL),
(4986, 'Virginia12', '$2y$12$2Kk.e.X9xkrFkFvA3JEucuSWx761r6VomlnC.3H5iWi6BTZFTeL1a', 4949, 'App\\Models\\Cliente', NULL),
(4987, 'emalors90', '$2y$12$K82SOq9YPBQGOi/U33c7ceRP2r19piqRrY/ri8c.Cj7dLVEtp5jVO', 4950, 'App\\Models\\Cliente', NULL),
(4988, 'mariacar', '$2y$12$ukJBibz6e6SjQYr04uLJu.ylTnqVVYMTqVUzFXBd.Rhf4ISLCtw06', 4951, 'App\\Models\\Cliente', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `matricula` char(7) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `motor` varchar(20) NOT NULL,
  `cambio` varchar(20) NOT NULL,
  `equipamiento` varchar(100) NOT NULL,
  `puertas` varchar(10) NOT NULL,
  `asientos` char(1) NOT NULL,
  `autonomia` decimal(8,2) NOT NULL,
  `color` varchar(30) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `disponible` tinyint(1) NOT NULL DEFAULT 1,
  `emision` date NOT NULL,
  `vencimiento` date NOT NULL,
  `costoDiario` decimal(6,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lat` decimal(10,7) DEFAULT NULL,
  `lng` decimal(10,7) DEFAULT NULL,
  `ruta_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`ruta_json`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`id`, `matricula`, `modelo`, `marca`, `motor`, `cambio`, `equipamiento`, `puertas`, `asientos`, `autonomia`, `color`, `foto`, `descripcion`, `disponible`, `emision`, `vencimiento`, `costoDiario`, `created_at`, `updated_at`, `lat`, `lng`, `ruta_json`) VALUES
(10, '2222AAA', 'Yaris Hybrid', 'Toyota', 'Hibrido', 'Automatico', 'Navegador', '4', '5', 600.00, 'Blanco', 'storage/vehiculo/10.png', 'El Toyota Yaris Hybrid es un coche compacto ideal para ciudad, gracias a su tamaño reducido y su eficiencia energética. Su sistema híbrido combina un motor de gasolina con uno eléctrico, ofreciendo una conducción suave, silenciosa y con bajo consumo. Dispone de cambio automático, navegador, y etiqueta ECO, lo que lo convierte en una excelente opción para circular por zonas restringidas al tráfico.\r\n\r\nPerfecto para quienes buscan comodidad, sostenibilidad y tecnología en sus desplazamientos diarios o vacaciones.', 1, '2025-04-15', '2026-04-15', 90.00, '2025-04-15 18:48:43', '2025-04-30 12:20:36', 36.5364000, -4.6218000, '[\r\n  { \"lat\": 36.540970, \"lng\": -4.638239 },\r\n  { \"lat\": 36.541750, \"lng\": -4.637800 },\r\n  { \"lat\": 36.542300, \"lng\": -4.637600 },\r\n  { \"lat\": 36.543058, \"lng\": -4.637507 },\r\n  { \"lat\": 36.543403, \"lng\": -4.637891 },\r\n  { \"lat\": 36.544000, \"lng\": -4.638300 },\r\n  { \"lat\": 36.544600, \"lng\": -4.638800 },\r\n  { \"lat\": 36.545200, \"lng\": -4.639100 },\r\n  { \"lat\": 36.545900, \"lng\": -4.639600 }\r\n]'),
(11, '2222BBB', 'Ioniq Hybrid', 'Hyundai', 'Hibrido', 'Automatico', 'Control crucero adaptativo, pantalla táctil, sensores', '5', '5', 900.00, 'Gris plata', 'storage/vehiculo/11.png', 'El Hyundai Ioniq Hybrid es una berlina moderna que destaca por su eficiencia y confort. Su sistema híbrido permite una conducción económica tanto en ciudad como en carretera. Ofrece un diseño elegante, buena capacidad de maletero y un interior cómodo equipado con tecnologías de asistencia al conductor. Ideal para viajes largos o uso diario, con bajo consumo y etiqueta ECO.', 0, '2025-04-15', '2026-04-15', 85.00, '2025-04-15 18:56:07', '2025-04-30 11:35:05', NULL, NULL, '[\r\n  { \"lat\": 36.550000, \"lng\": -4.640000 },\r\n  { \"lat\": 36.551000, \"lng\": -4.641000 },\r\n  { \"lat\": 36.552000, \"lng\": -4.642000 },\r\n  { \"lat\": 36.553000, \"lng\": -4.643000 },\r\n  { \"lat\": 36.554000, \"lng\": -4.644000 },\r\n  { \"lat\": 36.555000, \"lng\": -4.645000 },\r\n  { \"lat\": 36.556000, \"lng\": -4.646000 },\r\n  { \"lat\": 36.557000, \"lng\": -4.647000 },\r\n  { \"lat\": 36.558000, \"lng\": -4.648000 }\r\n]'),
(12, '3333CCC', 'Clio E-Tech', 'Renault', 'Hibrido', 'Automatico', 'Pantalla táctil, modos de conducción, sensores de aparcamiento', '5', '5', 800.00, 'Rojo', 'storage/vehiculo/12.png', 'El Renault Clio E-Tech Hybrid ofrece una experiencia de conducción ágil y eficiente. Su sistema híbrido avanzado permite circular hasta el 80 % del tiempo en eléctrico por ciudad, lo que reduce el consumo y las emisiones. Compacto pero espacioso, es perfecto para quienes buscan un coche moderno, cómodo y económico.', 0, '2025-04-15', '2026-04-15', 75.00, '2025-04-15 18:58:26', '2025-04-17 09:09:11', NULL, NULL, '[\r\n  { \"lat\": 36.560000, \"lng\": -4.650000 },\r\n  { \"lat\": 36.561000, \"lng\": -4.651000 },\r\n  { \"lat\": 36.562000, \"lng\": -4.652000 },\r\n  { \"lat\": 36.563000, \"lng\": -4.653000 },\r\n  { \"lat\": 36.564000, \"lng\": -4.654000 },\r\n  { \"lat\": 36.565000, \"lng\": -4.655000 },\r\n  { \"lat\": 36.566000, \"lng\": -4.656000 },\r\n  { \"lat\": 36.567000, \"lng\": -4.657000 },\r\n  { \"lat\": 36.568000, \"lng\": -4.658000 }\r\n]'),
(13, '4444DDD', 'Niro Hybrid', 'Kia', 'Hibrido', 'Automatico', 'Navegador, cámara trasera, control de crucero', '5', '5', 999.00, 'Azul oscuro', 'storage/vehiculo/13.png', 'El Kia Niro Hybrid es un SUV compacto que combina estilo, confort y tecnología. Su sistema híbrido es eficiente en cualquier tipo de trayecto, y su posición elevada mejora la visibilidad y la sensación de seguridad. Con amplio espacio interior y múltiples sistemas de asistencia, es ideal para familias o conductores que buscan versatilidad.', 1, '2025-04-15', '2026-04-15', 95.00, '2025-04-15 19:00:58', '2025-04-16 12:12:32', NULL, NULL, '[\r\n  { \"lat\": 36.570000, \"lng\": -4.660000 },\r\n  { \"lat\": 36.571000, \"lng\": -4.661000 },\r\n  { \"lat\": 36.572000, \"lng\": -4.662000 },\r\n  { \"lat\": 36.573000, \"lng\": -4.663000 },\r\n  { \"lat\": 36.574000, \"lng\": -4.664000 },\r\n  { \"lat\": 36.575000, \"lng\": -4.665000 },\r\n  { \"lat\": 36.576000, \"lng\": -4.666000 },\r\n  { \"lat\": 36.577000, \"lng\": -4.667000 },\r\n  { \"lat\": 36.578000, \"lng\": -4.668000 }\r\n]');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alquiler`
--
ALTER TABLE `alquiler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alquiler_clienteid_foreign` (`clienteID`),
  ADD KEY `alquiler_vehiculoid_foreign` (`vehiculoID`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario_username_unique` (`username`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vehiculo_matricula_unique` (`matricula`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alquiler`
--
ALTER TABLE `alquiler`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4952;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4887;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4989;

--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alquiler`
--
ALTER TABLE `alquiler`
  ADD CONSTRAINT `alquiler_clienteid_foreign` FOREIGN KEY (`clienteID`) REFERENCES `cliente` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `alquiler_vehiculoid_foreign` FOREIGN KEY (`vehiculoID`) REFERENCES `vehiculo` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
