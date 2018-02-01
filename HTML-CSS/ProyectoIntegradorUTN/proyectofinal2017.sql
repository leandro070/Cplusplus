-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 18-11-2017 a las 04:32:17
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectofinal2017`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `OID_departamento` int(11) NOT NULL,
  `FK_provincia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`nombre`, `OID_departamento`, `FK_provincia`) VALUES
('Capital', 5, 1),
('General Alvear', 6, 1),
('Godoy Cruz', 7, 1),
('Guaymallén', 8, 1),
('Junín', 9, 1),
('La Paz', 10, 1),
('Las Heras', 11, 1),
('Lavalle', 12, 1),
('Luj?n de Cuyo', 13, 1),
('Maip?', 14, 1),
('Malarg?e', 15, 1),
('Rivadavia', 16, 1),
('San Carlos', 17, 1),
('San Mart?n', 18, 1),
('San Rafael', 19, 1),
('Santa Rosa', 20, 1),
('Tunuy?n', 21, 1),
('Tupungato', 22, 1),
('Adolfo Alsina', 23, 2),
('Adolfo Gonzales Chaves', 24, 2),
('Alberti', 25, 2),
('Almirante Brown', 26, 2),
('Arrecifes', 27, 2),
('Avellaneda', 28, 2),
('Ayacucho', 29, 2),
('Azul', 30, 2),
('Bah?a Blanca', 31, 2),
('Balcarce', 32, 2),
('Baradero', 33, 2),
('Benito Ju?rez', 34, 2),
('Berazategui', 35, 2),
('Berisso', 36, 2),
('Bol?var', 37, 2),
('Bragado', 38, 2),
('Brandsen', 39, 2),
('Campana', 40, 2),
('Ca?uelas', 41, 2),
('Capit?n Sarmiento Carlos', 42, 2),
('Carlos Casares', 43, 2),
('Carlos Tejedor', 44, 2),
('Carmen de Areco', 45, 2),
('Castelli', 46, 2),
('Chacabuco', 47, 2),
('Chascom?s', 48, 2),
('Chivilcoy', 49, 2),
('Col?n', 50, 2),
('Coronel de Marina Leonardo Rosales', 51, 2),
('Coronel Dorrego', 52, 2),
('Coronel Pringles', 53, 2),
('Coronel Su?rez', 54, 2),
('Daireaux', 55, 2),
('Dolores', 56, 2),
('Ensenada', 57, 2),
('Escobar', 58, 2),
('Esteban Echeverr?a', 59, 2),
('Exaltaci?n de la Cruz', 60, 2),
('Ezeiza', 61, 2),
('Florencio Varela', 62, 2),
('Florentino Ameghino', 63, 2),
('General Alvarado', 64, 2),
('General Alvear', 65, 2),
('General Arenales', 66, 2),
('General Belgrano', 67, 2),
('General Guido', 68, 2),
('General Juan Madariaga', 69, 2),
('General La Madrid', 70, 2),
('General Las Heras', 71, 2),
('General Lavalle', 72, 2),
('General Paz', 73, 2),
('General Pinto', 74, 2),
('General Pueyrred?n', 75, 2),
('General Rodr?guez', 76, 2),
('General San Mart?n', 77, 2),
('General Viamonte', 78, 2),
('General Villegas', 79, 2),
('Guamin?', 80, 2),
('Hip?lito Yrigoyen', 81, 2),
('Hurlingham', 82, 2),
('Ituzaing?', 83, 2),
('Jos? C. Paz', 84, 2),
('Jun?n', 85, 2),
('La Costa', 86, 2),
('La Matanza', 87, 2),
('Lan?s', 88, 2),
('La Plata', 89, 2),
('Laprida', 90, 2),
('Las Flores', 91, 2),
('Leandro N. Alem', 92, 2),
('Lincoln', 93, 2),
('Lober?a', 94, 2),
('Lobos', 95, 2),
('Lomas de Zamora', 96, 2),
('Luj?n', 97, 2),
('Magdalena', 98, 2),
('Maip?', 99, 2),
('Malvinas Argentinas', 100, 2),
('Mar Chiquita', 101, 2),
('Marcos Paz', 102, 2),
('Mercedes', 103, 2),
('Merlo', 104, 2),
('Monte', 105, 2),
('Monte Hermoso', 106, 2),
('Moreno', 107, 2),
('Mor?n', 108, 2),
('Navarro', 109, 2),
('Necochea', 110, 2),
('Nueve de Julio (9 de Julio)', 111, 2),
('Olavarr?a', 112, 2),
('Patagones', 113, 2),
('Pehuaj?', 114, 2),
('Pellegrini', 115, 2),
('Pergamino', 116, 2),
('Pila', 117, 2),
('Pilar', 118, 2),
('Pinamar', 119, 2),
('Presidente Per?n', 120, 2),
('Puan', 121, 2),
('Punta Indio', 122, 2),
('Quilmes', 123, 2),
('Ramallo', 124, 2),
('Rauch', 125, 2),
('Rivadavia', 126, 2),
('Rojas', 127, 2),
('Roque P?rez', 128, 2),
('Saavedra', 129, 2),
('Saladillo', 130, 2),
('Salliquel?', 131, 2),
('Salto', 132, 2),
('San Andr?s de Giles', 133, 2),
('San Antonio de Areco', 134, 2),
('San Cayetano', 135, 2),
('San Fernando', 136, 2),
('San Isidro', 137, 2),
('San Miguel', 138, 2),
('San Nicol?s', 139, 2),
('San Pedro', 140, 2),
('San Vicente', 141, 2),
('Suipacha', 142, 2),
('Tandil', 143, 2),
('Tapalqu?', 144, 2),
('Tigre', 145, 2),
('Tordillo', 146, 2),
('Tornquist', 147, 2),
('Trenque Lauquen', 148, 2),
('Tres Arroyos', 149, 2),
('Tres de Febrero', 150, 2),
('Tres Lomas', 151, 2),
('25 de Mayo', 152, 2),
('Vicente L?pez', 153, 2),
('Villa Gesell', 154, 2),
('Villarino', 155, 2),
('Z?rate', 156, 2),
('Ciudad Aut?noma de Buenos Aires', 157, 2),
('Ambato', 158, 3),
('Ancasti', 159, 3),
('Andalgal?', 160, 3),
('Antofagasta de la Sierra', 161, 3),
('Bel?n', 162, 3),
('Capay?n', 163, 3),
('Capital', 164, 3),
('El Alto', 165, 3),
('Fray Mamerto Esqui?', 166, 3),
('La Paz', 167, 3),
('Pacl?n', 168, 3),
('Pom?n', 169, 3),
('Santa Mar?a', 170, 3),
('Santa Rosa', 171, 3),
('Tinogasta', 172, 3),
('Valle Viejo', 173, 3),
('Almirante Brown', 174, 4),
('Bermejo', 175, 4),
('Chacabuco', 176, 4),
('Comandante Fern?ndez', 177, 4),
('12 de Octubre', 178, 4),
('2 de Abril', 179, 4),
('Fray Justo Santa Mar?a de Oro', 180, 4),
('General Belgrano', 181, 4),
('General Donovan', 182, 4),
('General G?emes', 183, 4),
('Independencia', 184, 4),
('Libertad', 185, 4),
('Libertador General San Mart?n', 186, 4),
('Maip?', 187, 4),
('Mayor Luis Jorge Fontana', 188, 4),
('9 de Julio', 189, 4),
('O\'Higgins', 190, 4),
('Presidencia de la Plaza', 191, 4),
('1 de Mayo', 192, 4),
('Quitilipi', 193, 4),
('San Fernando', 194, 4),
('San Lorenzo', 195, 4),
('Sargento Cabral', 196, 4),
('Tapenag?', 197, 4),
('25 de Mayo', 198, 4),
('Biedma', 199, 5),
('Cushamen', 200, 5),
('Escalante', 201, 5),
('Florentino Ameghino', 202, 5),
('Futaleuf?', 203, 5),
('Gaiman', 204, 5),
('Gastre', 205, 5),
('Langui?eo', 206, 5),
('M?rtires', 207, 5),
('Paso de Indios', 208, 5),
('Rawson', 209, 5),
('R?o Senguer', 210, 5),
('Sarmiento', 211, 5),
('Tehuelches', 212, 5),
('Telsen', 213, 5),
('Calamuchita', 214, 6),
('Capital', 215, 6),
('Col?n', 216, 6),
('Cruz del Eje', 217, 6),
('General Roca', 218, 6),
('General San Mart?n', 219, 6),
('Ischil?n', 220, 6),
('Ju?rez Celman', 221, 6),
('Marcos Ju?rez', 222, 6),
('Minas', 223, 6),
('Pocho', 224, 6),
('Presidente Roque S?enz Pe?a', 225, 6),
('Punilla', 226, 6),
('R?o Cuarto', 227, 6),
('R?o Primero', 228, 6),
('R?o Seco', 229, 6),
('R?o Segundo', 230, 6),
('San Alberto', 231, 6),
('San Javier', 232, 6),
('San Justo', 233, 6),
('Santa Mar?a', 234, 6),
('Sobremonte', 235, 6),
('Tercero Arriba', 236, 6),
('Totoral', 237, 6),
('Tulumba', 238, 6),
('Uni?n', 239, 6),
('Bella Vista', 240, 7),
('Ber?n de Astrada', 241, 7),
('Capital', 242, 7),
('Concepci?n', 243, 7),
('Curuz? Cuati?', 244, 7),
('Empedrado', 245, 7),
('Esquina', 246, 7),
('General Alvear', 247, 7),
('General Paz', 248, 7),
('Goya', 249, 7),
('Itat?', 250, 7),
('Ituzaing?', 251, 7),
('Lavalle', 252, 7),
('Mburucuy?', 253, 7),
('Mercedes', 254, 7),
('Monte Caseros', 255, 7),
('Paso de los Libres', 256, 7),
('Saladas', 257, 7),
('San Cosme', 258, 7),
('San Luis del Palmar', 259, 7),
('San Mart?n', 260, 7),
('San Miguel', 261, 7),
('San Roque', 262, 7),
('Santo Tom?', 263, 7),
('Sauce', 264, 7),
('Col?n', 265, 8),
('Concordia', 266, 8),
('Diamante', 267, 8),
('Federaci?n', 268, 8),
('Federal', 269, 8),
('Feliciano', 270, 8),
('Gualeguay', 271, 8),
('Gualeguaych?', 272, 8),
('Islas del Ibicuy', 273, 8),
('La Paz', 274, 8),
('Nogoy?', 275, 8),
('Paran?', 276, 8),
('San Salvador', 277, 8),
('Tala', 278, 8),
('Uruguay', 279, 8),
('Victoria', 280, 8),
('Villaguay', 281, 8),
('Bermejo', 282, 9),
('Formosa', 283, 9),
('Laishi', 284, 9),
('Matacos', 285, 9),
('Pati?o', 286, 9),
('Pilag?s', 287, 9),
('Pilcomayo', 288, 9),
('Piran?', 289, 9),
('Ram?n Lista', 290, 9),
('Cochinoca', 291, 10),
('Doctor Manuel Belgrano', 292, 10),
('El Carmen', 293, 10),
('Humahuaca', 294, 10),
('Ledesma', 295, 10),
('Palpal?', 296, 10),
('Rinconada', 297, 10),
('San Antonio', 298, 10),
('San Pedro', 299, 10),
('Santa B?rbara', 300, 10),
('Santa Catalina', 301, 10),
('Susques', 302, 10),
('Tilcara', 303, 10),
('Tumbaya', 304, 10),
('Valle Grande', 305, 10),
('Yavi', 306, 10),
('Atreuc?', 307, 11),
('Caleu Caleu', 308, 11),
('Capital', 309, 11),
('Catril?', 310, 11),
('Chalileo', 311, 11),
('Chapaleuf?', 312, 11),
('Chical Co', 313, 11),
('Conhelo', 314, 11),
('Curac?', 315, 11),
('Guatrach?', 316, 11),
('Hucal', 317, 11),
('Lihuel Calel', 318, 11),
('Limay Mahuida', 319, 11),
('Loventu?', 320, 11),
('Marac?', 321, 11),
('Puel?n', 322, 11),
('Quem? Quem?', 323, 11),
('Rancul', 324, 11),
('Realic?', 325, 11),
('Toay', 326, 11),
('Trenel', 327, 11),
('Utrac?n', 328, 11),
('Arauco', 329, 12),
('Capital', 330, 12),
('Castro Barros', 331, 12),
('Chamical', 332, 12),
('Chilecito', 333, 12),
('Coronel Felipe Varela', 334, 12),
('Famatina', 335, 12),
('General ?ngel V. Pe?aloza', 336, 12),
('General Belgrano', 337, 12),
('General Juan Facundo Quiroga', 338, 12),
('General Lamadrid', 339, 12),
('General Ocampo', 340, 12),
('General San Mart?n', 341, 12),
('Independencia', 342, 12),
('Rosario Vera Pe?aloza', 343, 12),
('Sanagasta', 344, 12),
('San Blas de los Sauces', 345, 12),
('Vinchina', 346, 12),
('Ap?stoles', 347, 13),
('Caingu?s', 348, 13),
('Candelaria', 349, 13),
('Capital', 350, 13),
('Concepci?n', 351, 13),
('Eldorado', 352, 13),
('General Manuel Belgrano', 353, 13),
('Guaran?', 354, 13),
('Iguaz?', 355, 13),
('Leandro N. Alem', 356, 13),
('Libertador General San Mart?n', 357, 13),
('Montecarlo', 358, 13),
('Ober?', 359, 13),
('San Ignacio', 360, 13),
('San Javier', 361, 13),
('San Pedro', 362, 13),
('25 de Mayo', 363, 13),
('Alumin?', 364, 14),
('A?elo', 365, 14),
('Cat?n Lil', 366, 14),
('Chos Malal', 367, 14),
('Coll?n Cur?', 368, 14),
('Confluencia', 369, 14),
('Huiliches', 370, 14),
('L?car', 371, 14),
('Loncopu?', 372, 14),
('Los Lagos', 373, 14),
('Minas', 374, 14),
('?orqu?n', 375, 14),
('Pehuenches', 376, 14),
('Picunches', 377, 14),
('Pic?n Leuf?', 378, 14),
('Zapala', 379, 14),
('Adolfo Alsina', 380, 15),
('Avellaneda', 381, 15),
('Bariloche', 382, 15),
('Conesa', 383, 15),
('El Cuy', 384, 15),
('General Roca', 385, 15),
('?orquinc?', 386, 15),
('9 de Julio', 387, 15),
('Pichi Mahuida', 388, 15),
('Pilcaniyeu', 389, 15),
('San Antonio', 390, 15),
('Valcheta', 391, 15),
('25 de Mayo', 392, 15),
('Anta', 393, 16),
('Cachi', 394, 16),
('Cafayate', 395, 16),
('Capital', 396, 16),
('Cerrillos', 397, 16),
('Chicoana', 398, 16),
('General G?emes', 399, 16),
('General Jos? de San Mart?n', 400, 16),
('Guachipas', 401, 16),
('Iruya', 402, 16),
('La Caldera', 403, 16),
('La Candelaria', 404, 16),
('La Poma', 405, 16),
('La Vi?a', 406, 16),
('Los Andes', 407, 16),
('Met?n', 408, 16),
('Molinos', 409, 16),
('Or?n', 410, 16),
('Rivadavia', 411, 16),
('Rosario de la Frontera', 412, 16),
('Rosario de Lerma', 413, 16),
('San Carlos', 414, 16),
('Santa Victoria', 415, 16),
('Albard?n', 416, 17),
('Angaco', 417, 17),
('Calingasta', 418, 17),
('Capital', 419, 17),
('Caucete', 420, 17),
('Chimbas', 421, 17),
('Iglesia', 422, 17),
('J?chal', 423, 17),
('Nueve de Julio (9 de Julio)', 424, 17),
('Pocito', 425, 17),
('Rawson', 426, 17),
('Rivadavia', 427, 17),
('San Mart?n', 428, 17),
('Santa Luc?a', 429, 17),
('Sarmiento', 430, 17),
('Ullum', 431, 17),
('Valle F?rtil', 432, 17),
('25 de Mayo', 433, 17),
('Zonda', 434, 17),
('Ayacucho', 435, 18),
('Belgrano', 436, 18),
('Chacabuco', 437, 18),
('Coronel Pringles', 438, 18),
('General Pedernera', 439, 18),
('Gobernador Dupuy', 440, 18),
('Jun?n', 441, 18),
('La Capital', 442, 18),
('Libertador General San Mart?n', 443, 18),
('Corpen Aike', 444, 19),
('Deseado', 445, 19),
('G?er Aike', 446, 19),
('Lago Argentino', 447, 19),
('Lago Buenos Aires', 448, 19),
('Magallanes', 449, 19),
('R?o Chico', 450, 19),
('Belgrano', 451, 20),
('Caseros', 452, 20),
('Castellanos', 453, 20),
('Constituci?n', 454, 20),
('Garay', 455, 20),
('General L?pez', 456, 20),
('General Obligado', 457, 20),
('Iriondo', 458, 20),
('La Capital', 459, 20),
('Las Colonias', 460, 20),
('Nueve de Julio (9 de Julio)', 461, 20),
('Rosario', 462, 20),
('San Crist?bal', 463, 20),
('San Javier', 464, 20),
('San Jer?nimo', 465, 20),
('San Justo', 466, 20),
('San Lorenzo', 467, 20),
('San Mart?n', 468, 20),
('Vera', 469, 20),
('Aguirre', 470, 21),
('Alberdi', 471, 21),
('Atamisqui', 472, 21),
('Avellaneda', 473, 21),
('Banda', 474, 21),
('Belgrano', 475, 21),
('Capital', 476, 21),
('Choya', 477, 21),
('Copo', 478, 21),
('Figueroa', 479, 21),
('General Taboada', 480, 21),
('Guasay?n', 481, 21),
('Jim?nez', 482, 21),
('Juan F. Ibarra', 483, 21),
('Loreto', 484, 21),
('Mitre', 485, 21),
('Moreno', 486, 21),
('Ojo de Agua', 487, 21),
('Pellegrini', 488, 21),
('Quebrachos', 489, 21),
('R?o Hondo', 490, 21),
('Rivadavia', 491, 21),
('Robles', 492, 21),
('Salavina', 493, 21),
('San Mart?n', 494, 21),
('Sarmiento', 495, 21),
('Sil?pica', 496, 21),
('Ant?rtida Argentina', 497, 22),
('Islas del Atl?ntico Sur', 498, 22),
('R?o Grande', 499, 22),
('Ushuaia', 500, 22),
('Burruyac?', 501, 23),
('Capital', 502, 23),
('Chicligasta', 503, 23),
('Cruz Alta', 504, 23),
('Famaill?', 505, 23),
('Graneros', 506, 23),
('Juan Bautista Alberdi', 507, 23),
('La Cocha', 508, 23),
('Leales', 509, 23),
('Lules', 510, 23),
('Monteros', 511, 23),
('R?o Chico', 512, 23),
('Simoca', 513, 23),
('Taf? del Valle', 514, 23),
('Taf? Viejo', 515, 23),
('Trancas', 516, 23),
('Yerba Buena', 517, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `domicilio`
--

CREATE TABLE `domicilio` (
  `calle` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `numero` int(11) NOT NULL,
  `piso` int(11) DEFAULT NULL,
  `depto` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `OID_domicilio` int(11) NOT NULL,
  `fk_departamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadocivil`
--

CREATE TABLE `estadocivil` (
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `OID_estadocivil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `estadocivil`
--

INSERT INTO `estadocivil` (`nombre`, `OID_estadocivil`) VALUES
('Soltero/a', 1),
('Conyugue', 2),
('Casado/a', 3),
('Viudo/a', 4),
('Divorciado/a', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `nombre` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `OID_genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`nombre`, `OID_genero`) VALUES
('Hombre', 1),
('Mujer', 2),
('Otro', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `nombre` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellido` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellido_materno` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dni` int(9) UNSIGNED NOT NULL,
  `cuil` int(12) UNSIGNED NOT NULL,
  `f_nacimiento` date DEFAULT NULL,
  `telefono_fijo` int(11) DEFAULT NULL,
  `telefono_celular` int(11) DEFAULT NULL,
  `telefono_alt` int(11) DEFAULT NULL,
  `correo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `OID_persona` int(11) NOT NULL,
  `fk_genero` int(11) DEFAULT NULL,
  `fk_estadocivil` int(11) DEFAULT NULL,
  `fk_domicilio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `OID_provincia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`nombre`, `OID_provincia`) VALUES
('﻿Mendoza\r', 1),
('Buenos Aires\r', 2),
('Catamarca\r', 3),
('Chaco\r', 4),
('Chubut\r', 5),
('Córdoba\r', 6),
('Corrientes\r', 7),
('Entre Rios\r', 8),
('Formosa\r', 9),
('Jujuy\r', 10),
('La Pampa\r', 11),
('La Rioja\r', 12),
('Misiones\r', 13),
('Neuquén\r', 14),
('Rio Negro\r', 15),
('Salta\r', 16),
('San Juan\r', 17),
('San Luis\r', 18),
('Santa Cruz\r', 19),
('Santa Fe\r', 20),
('Santiago del Estero\r', 21),
('Tierra del Fuego\r', 22),
('Tucumán\r', 23);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`OID_departamento`),
  ADD KEY `FK_provincia` (`FK_provincia`);

--
-- Indices de la tabla `domicilio`
--
ALTER TABLE `domicilio`
  ADD PRIMARY KEY (`OID_domicilio`),
  ADD UNIQUE KEY `direccion` (`calle`,`numero`,`piso`,`depto`,`fk_departamento`) USING BTREE,
  ADD KEY `domicilio_departamento` (`fk_departamento`);

--
-- Indices de la tabla `estadocivil`
--
ALTER TABLE `estadocivil`
  ADD PRIMARY KEY (`OID_estadocivil`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`OID_genero`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`OID_persona`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD KEY `persona_genero` (`fk_genero`),
  ADD KEY `persona_estadocivil` (`fk_estadocivil`),
  ADD KEY `persona_domicilio` (`fk_domicilio`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`OID_provincia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `OID_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=518;
--
-- AUTO_INCREMENT de la tabla `domicilio`
--
ALTER TABLE `domicilio`
  MODIFY `OID_domicilio` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `OID_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `OID_persona` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `provincia`
--
ALTER TABLE `provincia`
  MODIFY `OID_provincia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`FK_provincia`) REFERENCES `provincia` (`OID_provincia`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `domicilio`
--
ALTER TABLE `domicilio`
  ADD CONSTRAINT `domicilio_departamento` FOREIGN KEY (`fk_departamento`) REFERENCES `departamento` (`OID_departamento`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_domicilio` FOREIGN KEY (`fk_domicilio`) REFERENCES `domicilio` (`OID_domicilio`),
  ADD CONSTRAINT `persona_estadocivil` FOREIGN KEY (`fk_estadocivil`) REFERENCES `estadocivil` (`OID_estadocivil`),
  ADD CONSTRAINT `persona_genero` FOREIGN KEY (`fk_genero`) REFERENCES `genero` (`OID_genero`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
