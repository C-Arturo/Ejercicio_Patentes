-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-08-2024 a las 02:01:14
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
-- Base de datos: `patente`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ayudantes`
--

CREATE TABLE `ayudantes` (
  `DNI_Ayudante` int(10) NOT NULL,
  `Nombre_Ayudante` varchar(30) DEFAULT NULL,
  `Direccion_Ayudante` varchar(30) DEFAULT NULL,
  `Telefono_Ayudante` int(10) DEFAULT NULL,
  `DNI_Inventores_FK` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ayudantes`
--

INSERT INTO `ayudantes` (`DNI_Ayudante`, `Nombre_Ayudante`, `Direccion_Ayudante`, `Telefono_Ayudante`, `DNI_Inventores_FK`) VALUES
(1, 'Fernando Caceres', 'Carrera 23 #62-00', 12121212, 1),
(2, 'Ferney Castiblanco ', 'Avendia 68 #95-02', 15151515, 3),
(3, 'Norma Buenaventura ', 'Transerval 50 #80-95', 14141414, 2),
(4, 'Jesus Andrade', 'Call 3 # 3-80', 13131313, 2),
(5, 'Laura Fernandez', 'Calle 38 #8-99', 16161616, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `Codigo_Empresa` int(10) NOT NULL,
  `Nombre_Empresa` varchar(30) DEFAULT NULL,
  `Direccion_Empresa` varchar(50) DEFAULT NULL,
  `Telefono_Empresa` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`Codigo_Empresa`, `Nombre_Empresa`, `Direccion_Empresa`, `Telefono_Empresa`) VALUES
(1, 'Xiaomi', 'Calle 105 #31-95', 66666666),
(2, 'Cloud', 'Carrera 85 #36-09', 77777777),
(3, 'Huawei', 'Calle 12 #76-02', 88888888),
(4, 'Motorola', 'Carrera 1 #41-45', 99999999),
(5, 'Oppo', 'Calle 32 #14-30', 10101010);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_ayudante`
--

CREATE TABLE `empresa_ayudante` (
  `Codigo_Empresa_FK` int(10) DEFAULT NULL,
  `DNI_Ayudante_FK` int(10) DEFAULT NULL,
  `Fecha_Contratacion_Ayudante` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresa_ayudante`
--

INSERT INTO `empresa_ayudante` (`Codigo_Empresa_FK`, `DNI_Ayudante_FK`, `Fecha_Contratacion_Ayudante`) VALUES
(1, 1, '2024-01-01'),
(2, 2, '2024-02-02'),
(3, 3, '2024-03-03'),
(4, 4, '2024-04-04'),
(5, 5, '2024-05-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_inventores`
--

CREATE TABLE `empresa_inventores` (
  `Codigo_Empresa_FK` int(10) DEFAULT NULL,
  `DNI_Inventores_FK` int(10) DEFAULT NULL,
  `Fecha_Contratacion_Inventor` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empresa_inventores`
--

INSERT INTO `empresa_inventores` (`Codigo_Empresa_FK`, `DNI_Inventores_FK`, `Fecha_Contratacion_Inventor`) VALUES
(1, 1, '2023-01-01'),
(2, 2, '2023-02-02'),
(3, 3, '2023-03-03'),
(4, 4, '2023-04-04'),
(5, 5, '2023-05-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventor`
--

CREATE TABLE `inventor` (
  `DNI_Inventor` int(10) NOT NULL,
  `Nombre_Inventor` varchar(30) DEFAULT NULL,
  `Direccion_Inventor` varchar(50) DEFAULT NULL,
  `Telefono_Inventor` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventor`
--

INSERT INTO `inventor` (`DNI_Inventor`, `Nombre_Inventor`, `Direccion_Inventor`, `Telefono_Inventor`) VALUES
(1, 'Diana Romero', 'Carrera 50 #63-95', 11111111),
(2, 'Cristian Trujillo', 'Calle 154 #32-50', 22222222),
(3, 'Breiner Borda', 'Carrera 80 #3-36 sur', 33333333),
(4, 'Carlos Rios', 'Calle 30 #60-04 Este', 44444444),
(5, 'Andres Mota', 'Carrera 163 #20-30', 55555555);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patentes`
--

CREATE TABLE `patentes` (
  `Numero_Patente` int(10) NOT NULL,
  `Nombre_Invento` varchar(30) DEFAULT NULL,
  `Fecha_Obtencion_Patente` date DEFAULT NULL,
  `Fecha_Compra_Patente` date DEFAULT NULL,
  `DNI_Inventores_FK` int(10) DEFAULT NULL,
  `Codigo_Empresa_FK` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `patentes`
--

INSERT INTO `patentes` (`Numero_Patente`, `Nombre_Invento`, `Fecha_Obtencion_Patente`, `Fecha_Compra_Patente`, `DNI_Inventores_FK`, `Codigo_Empresa_FK`) VALUES
(2, 'Figuer', '2023-05-04', '2024-01-02', 1, 1),
(3, 'Sander', '2022-09-30', '2023-05-25', 2, 2),
(4, 'Xiyu', '2021-04-03', '2022-12-25', 3, 3),
(5, 'Hungla', '2024-10-06', '2024-11-14', 4, 4),
(6, 'Porfon', '2020-01-28', '2022-02-08', 5, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ayudantes`
--
ALTER TABLE `ayudantes`
  ADD PRIMARY KEY (`DNI_Ayudante`),
  ADD KEY `fk_tres` (`DNI_Inventores_FK`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`Codigo_Empresa`);

--
-- Indices de la tabla `empresa_ayudante`
--
ALTER TABLE `empresa_ayudante`
  ADD KEY `fk_cinco` (`DNI_Ayudante_FK`),
  ADD KEY `fk_cuatro` (`Codigo_Empresa_FK`);

--
-- Indices de la tabla `empresa_inventores`
--
ALTER TABLE `empresa_inventores`
  ADD KEY `fk_seis` (`Codigo_Empresa_FK`),
  ADD KEY `fk_siete` (`DNI_Inventores_FK`);

--
-- Indices de la tabla `inventor`
--
ALTER TABLE `inventor`
  ADD PRIMARY KEY (`DNI_Inventor`);

--
-- Indices de la tabla `patentes`
--
ALTER TABLE `patentes`
  ADD PRIMARY KEY (`Numero_Patente`),
  ADD KEY `fk_dos` (`Codigo_Empresa_FK`),
  ADD KEY `fk_uno` (`DNI_Inventores_FK`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ayudantes`
--
ALTER TABLE `ayudantes`
  MODIFY `DNI_Ayudante` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `Codigo_Empresa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `inventor`
--
ALTER TABLE `inventor`
  MODIFY `DNI_Inventor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `patentes`
--
ALTER TABLE `patentes`
  MODIFY `Numero_Patente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ayudantes`
--
ALTER TABLE `ayudantes`
  ADD CONSTRAINT `fk_tres` FOREIGN KEY (`DNI_Inventores_FK`) REFERENCES `inventor` (`DNI_Inventor`);

--
-- Filtros para la tabla `empresa_ayudante`
--
ALTER TABLE `empresa_ayudante`
  ADD CONSTRAINT `fk_cinco` FOREIGN KEY (`DNI_Ayudante_FK`) REFERENCES `ayudantes` (`DNI_Ayudante`),
  ADD CONSTRAINT `fk_cuatro` FOREIGN KEY (`Codigo_Empresa_FK`) REFERENCES `empresa` (`Codigo_Empresa`);

--
-- Filtros para la tabla `empresa_inventores`
--
ALTER TABLE `empresa_inventores`
  ADD CONSTRAINT `fk_seis` FOREIGN KEY (`Codigo_Empresa_FK`) REFERENCES `empresa` (`Codigo_Empresa`),
  ADD CONSTRAINT `fk_siete` FOREIGN KEY (`DNI_Inventores_FK`) REFERENCES `inventor` (`DNI_Inventor`);

--
-- Filtros para la tabla `patentes`
--
ALTER TABLE `patentes`
  ADD CONSTRAINT `fk_dos` FOREIGN KEY (`Codigo_Empresa_FK`) REFERENCES `empresa` (`Codigo_Empresa`),
  ADD CONSTRAINT `fk_uno` FOREIGN KEY (`DNI_Inventores_FK`) REFERENCES `inventor` (`DNI_Inventor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
