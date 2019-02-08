-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2019 a las 01:16:33
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `evento_cultural`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adonis_schema`
--

CREATE TABLE `adonis_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `migration_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `adonis_schema`
--

INSERT INTO `adonis_schema` (`id`, `name`, `batch`, `migration_time`) VALUES
(1, '1503248427885_user', 1, '2018-11-28 00:13:04'),
(2, '1503248427886_token', 1, '2018-11-28 00:13:07'),
(3, '1543337622646_notice_schema', 1, '2018-11-28 00:13:07'),
(4, '1543643647727_hotels_schema', 2, '2018-12-10 10:59:51'),
(5, '1543643662265_hospitals_schema', 2, '2018-12-10 10:59:52'),
(6, '1544587408700_restaurants_schema', 3, '2019-02-07 00:43:31'),
(7, '1549499766726_disciplina_schema', 3, '2019-02-07 00:43:32'),
(8, '1549576546071_universidad_schema', 4, '2019-02-07 22:13:28'),
(9, '1549577329329_partidos_schema', 5, '2019-02-07 22:21:29'),
(10, '1549578021655_equipo_schema', 5, '2019-02-07 22:21:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `disciplinas`
--

CREATE TABLE `disciplinas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `clase` enum('deportivo','cultural') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `disciplinas`
--

INSERT INTO `disciplinas` (`id`, `name`, `clase`, `created_at`, `updated_at`) VALUES
(2, 'Atletismo', 'deportivo', '2019-02-06 21:22:04', '2019-02-06 21:22:04'),
(3, 'Ajedrez', 'deportivo', '2019-02-06 21:22:59', '2019-02-06 21:22:59'),
(4, 'Básquetbol', 'deportivo', '2019-02-06 21:23:14', '2019-02-06 21:23:14'),
(5, 'Béisbol', 'deportivo', '2019-02-06 21:23:25', '2019-02-06 21:23:25'),
(6, 'Softbol', 'deportivo', '2019-02-06 21:23:40', '2019-02-06 21:23:40'),
(7, 'Fútbol', 'deportivo', '2019-02-06 21:23:52', '2019-02-06 21:23:52'),
(8, 'Fútbol 7', 'deportivo', '2019-02-06 21:24:06', '2019-02-06 21:24:06'),
(9, 'Tae Kwon Do', 'deportivo', '2019-02-06 21:24:22', '2019-02-06 21:24:22'),
(10, 'Voleibol de sala', 'deportivo', '2019-02-06 21:24:35', '2019-02-06 21:24:35'),
(11, 'Declamación', 'cultural', NULL, NULL),
(12, 'Rondalla', 'cultural', NULL, NULL),
(13, 'Canto', 'cultural', NULL, NULL),
(14, 'Danza folklórica', 'cultural', NULL, NULL),
(15, 'Mural de Gis', 'cultural', NULL, NULL),
(16, 'Oratoria', 'cultural', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_disc` int(11) UNSIGNED DEFAULT NULL,
  `id_part` int(10) UNSIGNED DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `mapa` varchar(1000) COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `hospitals`
--

INSERT INTO `hospitals` (`id`, `name`, `description`, `image`, `address`, `telephone`, `website`, `mapa`, `created_at`, `updated_at`) VALUES
(1, 'Hospital General 450 Durango', 'Hospital general · Boulevard José María Patoni S/N, El Ciprés', 'hospitals/450.jpg', NULL, '6181373328', NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58299.89717720067!2d-104.64499775000002!3d24.040106100000003!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bb636ab47752b%3A0xec2d215a4d1ba4e2!2sHospital+General+450+Durango!5e0!3m2!1ses-419!2smx!4v1544157460385', NULL, NULL),
(2, 'Hospital San Jorge, S.A. De C.V.', 'Hospital general · Prol. Lázaro Cárdenas Sur 249', 'hospitals/sanjorge.jpg', NULL, '6188172210', NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58305.29647183737!2d-104.6875616208984!3d24.028207600000016!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bb7de788031f1%3A0x232eaaf357520d9d!2sHospital+San+Jorge%2C+S.A.+De+C.V.!5e0!3m2!1ses-419!2smx!4v1544157419729', NULL, NULL),
(3, 'Hospital Santé', 'Hospital general · Calle Isauro Venzor No. 1136 ote', 'hospitals/sante.JPG', NULL, '6188180118', NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58299.89717720067!2d-104.64499775000002!3d24.040106100000003!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bb790d8b94869%3A0xeeb0e863300b9424!2sHospital+Sant%C3%A9!5e0!3m2!1ses-419!2smx!4v1544157495239', NULL, NULL),
(4, 'Clínica Jardines', 'Hospital general · Blvrd Francisco Villa 139 c.p', 'hospitals/clinicajardines.jpg', NULL, '6181297704', NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58299.89717720067!2d-104.64499775000002!3d24.040106100000003!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bc84916bff319%3A0x2358d987709eda0d!2sCl%C3%ADnica+Jardines!5e0!3m2!1ses-419!2smx!4v1544157525406', NULL, NULL),
(5, 'Hospital Santa Bárbara del Rieti', 'Hospital general. · Felipe Pescador # 302, Centro.', 'hospitals/santabarbara.jpg', NULL, '6188111025', NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58299.89717720067!2d-104.64499775000002!3d24.040106100000003!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bc82615eb394b%3A0xa89552ff3b541859!2sHospital+Santa+B%C3%A1rbara+del+Rieti!5e0!3m2!1ses-419!2smx!4v1544157554573', NULL, NULL),
(6, 'Instituto Mexicano del Seguro Social', 'Hospital general · Avenue De La Normal', 'hospitals/imss.jpg', NULL, '6188119820', NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d98040.67708729977!2d-104.62416708939367!3d24.050154688775542!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bc840b783d6d7%3A0xad0033e7ae6892c1!2sInstituto+Mexicano+del+Seguro+Social!5e0!3m2!1ses-419!2smx!4v1544157591168', NULL, NULL),
(7, 'Hospital Cristiano Abc', 'Hospital general. · Calle Professor Manuel Morales 503', 'hospitals/cristianoabc.jpeg', NULL, '6188177422', NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58299.89717720067!2d-104.64499775000002!3d24.040106100000003!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bb7e3950873d3%3A0xa60a024ac0a52d14!2sHospital+Cristiano+Abc!5e0!3m2!1ses-419!2smx!4v1544157686770', NULL, NULL),
(8, 'Cruz Azul', 'Hospital privado · Av. Mercurio 101', 'hospitals/cruzazul.jpg', NULL, '6181590267', NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58299.89717720067!2d-104.64499775000002!3d24.040106100000003!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bb6fda7a65cd9%3A0xdef04b5159bf33c4!2sCruz+Azul!5e0!3m2!1ses-419!2smx!4v1544157337398', NULL, NULL),
(9, 'IMSS Hospital General de Zona 1 Durango', 'Hospital · Predio Canoas SN, Dorador', 'hospitals/imsszona1.jpg', NULL, '6188119820', NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58299.906169003705!2d-104.67888200751895!3d24.04008628924457!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bc838abb3742b%3A0x36f52cd799d9a87d!2sIMSS+Hospital+General+de+Zona+1+Durango!5e0!3m2!1ses-419!2smx!4v1544518174837', NULL, NULL),
(10, 'Hospital San Juan Bautista', 'Hospital · Caoba 712', 'hospitals/sanjuan.jpg', NULL, '6188101422', NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58299.906169003705!2d-104.67888200751895!3d24.04008628924457!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x9593b167f6a0e14f!2sHospital+San+Juan+Bautista!5e0!3m2!1ses-419!2smx!4v1544518209549', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hotels`
--

CREATE TABLE `hotels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(7,2) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `map` varchar(1000) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `price`, `description`, `image`, `map`, `created_at`, `updated_at`) VALUES
(3, 'Hotel Ana Isabel', '450.00', 'Hotel de 3 estrellas. \r\nSe permiten mascotas.\r\nApto para niños.', 'hotels/anaisabel.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58306.87020466442!2d-104.69808962089841!3d24.0247385!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85da6ab41ad44a41%3A0xfe2c7fdc8e2c9ccb!2sHotel+Ana+Isabel!5e0!3m2!1ses-419!2smx!4v1544156205427', NULL, NULL),
(4, 'Hotel Casa Ma Elena', '517.00', 'Wi-Fi gratis. \r\nEstacionamiento.\r\nServicio de lavandería. \r\nApto para niños', 'hotels/maelena.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58306.767461054034!2d-104.68702992089842!3d24.02496500000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bb7e744f96c11%3A0x65ed3f0192cebba!2sHotel+Casa+Ma+Elena!5e0!3m2!1ses-419!2smx!4v1544156449819', NULL, NULL),
(5, 'Hotel Durango', '582.00', 'Wi-Fi gratis.\r\nEstacionamiento gratuito.\r\nAire acondicionado.\r\nCentro de negocios.\r\nSe permiten mascotas.\r\nServicio en la habitación.\r\nApto para niños.\r\nRestaurante.\r\nCocina en algunas habitaciones.\r\nLibre de humo.', 'hotels/durango.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58299.89897556443!2d-104.67888190004003!3d24.040102137843235!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bc8181ca90b37%3A0x704a4a554f1d47d8!2sHotel+Durango!5e0!3m2!1ses-419!2smx!4v1544517477032', NULL, NULL),
(7, 'Hotel Principado', '681.00', 'Hotel de 3 estrellas.\r\nHotel sencillo con restaurante y bar\r\nWi-Fi gratis.\r\nDesayuno gratuito.', 'hotels/principado.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29152.70553463344!2d-104.68921746044921!3d24.027955!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bc83cc172a1f3%3A0x686eeed0e97eb2e4!2sHotel+Principado!5e0!3m2!1ses-419!2smx!4v1544483308749', NULL, NULL),
(8, 'Hotel Villa Express', '750.00', 'Hotel.\r\nHotel con estacionamiento y WiFi.', 'hotels/villaexpress.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29146.84272958269!2d-104.64540156044922!3d24.05378809999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bb64cee18518f%3A0x4318fb436a9212ce!2sHotel+Villa+Express!5e0!3m2!1ses-419!2smx!4v1544483484094', NULL, NULL),
(9, 'Hotel Roma', '820.00', 'Servicio de lavandería\r\nApto para niños.\r\nRestaurante.', 'hotels/roma.jpg', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d29153.53387553841!2d-104.6887155!3d24.024303!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8428ade0410b2427%3A0x7a312b76de3c4f12!2sHotel+Roma!5e0!3m2!1ses-419!2smx!4v1544513012463', NULL, NULL),
(10, 'Hotel Rincon Real Suites', '850.00', 'Wi-Fi gratis.\r\nDesayuno gratuito.\r\nEstacionamiento gratuito.\r\nPiscina al aire libre.\r\nAire acondicionado.\r\nCentro de negocios.', 'hotels/rinconreal.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58299.898984393694!2d-104.68001730093206!3d24.04010211839059!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bc8220391887d%3A0xd9150f9b8d21aff3!2sHotel+Rincon+Real+Suites!5e0!3m2!1ses-419!2smx!4v1544513220001', NULL, NULL),
(11, 'City Express Durango', '872.00', 'Wi-Fi gratis.\r\nDesayuno gratuito.\r\nAire acondicionado.\r\nServicio de lavandería.\r\nCentro de negocios.', 'hotels/cityexpress.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58299.898984393694!2d-104.68001730093206!3d24.040102118390593!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bb7dd2e3e1ba9%3A0x679848c7e2e1f941!2sCity+Express+Durango!5e0!3m2!1ses-419!2smx!4v1544513528357', NULL, NULL),
(12, 'Misión Express Durango', '876.00', 'Servicio de lavandería.\r\nCentro de negocios.\r\nApto para niños.\r\nRestaurante.', 'hotels/misionexpress.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58299.898984393694!2d-104.68001730093206!3d24.040102118390593!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bb654fe8887c3%3A0xd58d73303f69372f!2sMision+Express+Durango!5e0!3m2!1ses-419!2smx!4v1544513605014', NULL, NULL),
(13, 'Grad Hotel Elizabeth Durango', '956.00', 'Wi-Fi gratis.\r\nAire acondicionado.\r\nCentro de negocios.\r\nApto para niños.\r\nRestaurante.\r\nBar.', 'hotels/elizabeth.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d69328.55702399055!2d-104.67475634182667!3d24.043988067539267!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bc821ee501783%3A0x8c3abb4106f0270d!2sGrand+Hotel+Elizabeth%2C+Durango!5e0!3m2!1ses-419!2smx!4v1544515039668', NULL, NULL),
(14, 'One Durango', '1028.00', 'Servicio de lavandería.\r\nCentro de negocios.\r\nServicio en la habitación.\r\nApto para niños.\r\nRestaurante.', 'hotels/one.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58299.898984393694!2d-104.68001730093206!3d24.040102118390593!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bb7db19b9571f%3A0x3f63b8e8b278d005!2sOne+Durango!5e0!3m2!1ses-419!2smx!4v1544515350199', NULL, NULL),
(15, 'Hotel Victoria Express', '1095.00', 'Piscina cubierta.\r\nAire acondicionado.\r\nServicio de lavandería.\r\nCentro de negocios.\r\nServicio en la habitación.\r\nApto para niños.\r\nRestaurante.\r\nJacuzzi.\r\nBar.', 'hotels/victoriaexpress.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58299.898984393694!2d-104.68001730093206!3d24.040102118390593!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bb7b26c6f4ce7%3A0x2a23c135bf78a9f3!2sHotel+Victoria+Express!5e0!3m2!1ses-419!2smx!4v1544515436823', NULL, NULL),
(16, 'Hampton Inn By Hilton Durango', '1429.00', 'Desayuno gratuito.\r\nServicio de lavandería.\r\nCentro de negocios.\r\nApto para niños.\r\nRestaurante.\r\nBar.', 'hotels/hamptoninn.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58299.898984393694!2d-104.68001730093206!3d24.040102118390593!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bb7c15eb1c3a3%3A0xd755a60c1fc6b095!2sHampton+Inn+by+Hilton+Durango!5e0!3m2!1ses-419!2smx!4v1544515495672', NULL, NULL),
(17, 'Fiesta Inn Durango', '1577.00', 'Wi-Fi gratis. \r\nEstacionamiento pago.\r\nAire acondicionado.\r\nServicio de lavandería.\r\nCentro de negocios.\r\nServicio en la habitación.\r\nApto para niños.\r\nRestaurante.\r\nTransporte desde/hacia el aeropuerto.\r\nGimnasio.\r\nBar.\r\nLibre de humo.', 'hotels/fiestainn.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58299.898984393694!2d-104.68001730093206!3d24.040102118390593!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bb7dbadcb7ef9%3A0x29a91dcca5addc33!2sFiesta+Inn+Durango!5e0!3m2!1ses-419!2smx!4v1544515620268', NULL, NULL),
(18, 'Holiday Inn Durango', '1646.00', 'Wi-Fi gratis.\r\nEstacionamiento gratuito.\r\nPiscina.\r\nAire acondicionado.\r\nServicio de lavandería.\r\nCentro de negocios.\r\nServicio en la habitación.\r\nApto para niños.\r\nRestaurante. \r\nJacuzzi.\r\nGimnasio.\r\nBar.\r\nLibre de humo.', 'hotels/holidayinn.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58299.898984393694!2d-104.68001730093206!3d24.040102118390593!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bb655082e2769%3A0x40d4ecd6031d4e43!2sHoliday+Inn!5e0!3m2!1ses-419!2smx!4v1544515716865', NULL, NULL),
(19, 'Hotel Gobernador', '1818.00', 'Wi-Fi gratis.\r\nEstacionamiento gratuito.\r\nPiscina al aire libre.\r\nAire acondicionado.\r\nServicio de lavandería.\r\nCentro de negocios.\r\nServicio en la habitación.\r\nApto para niños.\r\nRestaurante.\r\nTransporte desde/hacia el aeropuerto.\r\nJacuzzi.\r\nGimnasio.\r\nBa', 'hotels/gobernador.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58299.898984393694!2d-104.68001730093206!3d24.040102118390593!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bc8203590180f%3A0x6be8c6f10f922d69!2sHotel+Gobernador!5e0!3m2!1ses-419!2smx!4v1544515812324', NULL, NULL),
(26, 'Fiesta Inn', '1597.00', 'Wi-Fi gratis.\r\nEstacionamiento pago.\r\nAire acondicionado.\r\nServicio de lavandería.\r\nCentro de negocios .\r\nServicio en la habitación.\r\nApto para niños.\r\nRestaurante.\r\nTransporte desde/hacia el aeropuerto.\r\nGimnasio.\r\nBar.\r\nLibre de humo.', 'hotels/fiestainn.jpg', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29150.084547236354!2d-104.66250741426212!3d24.03950700462896!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bb7dbadcb7ef9%3A0x29a91dcca5addc33!2sFiesta+Inn+Durango!5e0!3m2!1ses-419!2smx!4v1544516417663', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notices`
--

CREATE TABLE `notices` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_spanish_ci,
  `image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `autor` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `notices`
--

INSERT INTO `notices` (`id`, `name`, `content`, `image`, `autor`, `created_at`, `updated_at`) VALUES
(2, 'prueba2', 'nasodnaosk oaskn oaksn oask naosk naosk n', 'notices/1543381522335.jpeg', 'dariuzcm', '2018-11-27 23:05:22', '2018-11-27 23:05:22'),
(3, 'YEYYYYY prueba 3', 'lano asokaosk noaskn askmdjii hoaosh oiha osin kals', 'notices/1543381667198.jpeg', 'pepin', '2018-11-27 23:07:47', '2018-11-27 23:07:47'),
(4, 'Prueba 4', 'ajsb oajsoasn aksn pkfpkfn oj aojwojojnonp knpk np knpkn pfkn\r\n npk npfkn pfkn \r\nfn fpk nfpknpfk nf \r\nfn fpk npknpknf \r\nf', 'notices/1543439941372.jpeg', 'Asmen', '2018-11-28 15:19:01', '2018-11-28 15:19:01'),
(5, 'Titulo 5 prueba error inesperado', 'error inesperado ´pureba alsmdpas pokans pkasnp knasp kansp knaspk nspk naps k', 'notices/1543442227827.gif', 'Marger', '2018-11-28 15:57:07', '2018-11-28 15:57:07'),
(7, 'Titulo 6 prueba error inesperado p', ' nasondoajsn oas oaj soajs ojanojn sojnaosj no', 'notices/1543443746820.png', 'merger', '2018-11-28 16:22:26', '2018-11-28 16:22:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidos`
--

CREATE TABLE `partidos` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `lugar` varchar(30) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `telephone` bigint(20) DEFAULT NULL,
  `map` varchar(1000) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `description`, `image`, `telephone`, `map`, `created_at`, `updated_at`) VALUES
(1, 'Bistro Garden', 'Oferta extensa de recetas internacionales en un ambiente romántico con paredes de piedra y plantas naturales.', 'restaurants/bistrogarden.jpg', 6188291505, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58299.91695915959!2d-104.6788821769737!3d24.040062516335084!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bb7b20c729cb5%3A0x65aa297c5f1be1bb!2sBistro+Garden!5e0!3m2!1ses-419!2smx!4v1544588330984', NULL, NULL),
(2, 'Restaurante Los Corridos', 'Buenos cocteles.\r\nTenedor libre.\r\nAgradable.', 'restaurants/loscorridos.jpg', 6188187766, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58299.92055588215!2d-104.67888223894953!3d24.04005459201835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85d1f04333700e65%3A0x695323bc15dc3a44!2sRestaurante+Los+Corridos!5e0!3m2!1ses-419!2smx!4v1544588656057', NULL, NULL),
(3, 'Norteños Chilis\'s Tacos', 'Comidas durante la madrugada.\r\nAgradable.\r\nInformal.', 'restaurants/chilistacos.jpg', 6188143892, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58299.92055588215!2d-104.67888223894953!3d24.04005459201835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bb6f8cefd8f73%3A0x1be3696b70a1d9bb!2sNorte%C3%B1os+Chili&#39;s+Tacos!5e0!3m2!1ses-419!2smx!4v1544588790358', NULL, NULL),
(4, 'Restaurant Tacos Fer', 'Desayunos.\r\nAlmuerzo.\r\nCena.\r\nEspacio con asientos.', 'restaurants/tacosfer.jpg', 6182716468, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58299.92055588215!2d-104.67888223894953!3d24.04005459201835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bb6ff59bc7089%3A0x73fddcbdf0485d2a!2sRestaurant+Tacos+Fer!5e0!3m2!1ses-419!2smx!4v1544588900578', NULL, NULL),
(5, 'Applebee\'s Durango', 'Buenos cocteles.\r\nInformal.\r\nAgradable.', 'restaurants/applebees.jpg', 6181292144, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58299.92055588215!2d-104.67888223894953!3d24.04005459201835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bb7dbadcb7ef9%3A0x7fb0bae5a4757607!2sApplebee%C2%B4s+Durango!5e0!3m2!1ses-419!2smx!4v1544589021211', NULL, NULL),
(6, 'Kiromi Sushi Jardines', 'Especialidades de Japón con influencia mexicana en un comedor luminoso decorado con plantas naturales.', 'restaurants/kiromisushi.jpg', 6188174255, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58299.92055588215!2d-104.67888223894953!3d24.04005459201835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bb7b7128dddd7%3A0xbe6acd6a1c235830!2sKiromi+Sushi+Jardines!5e0!3m2!1ses-419!2smx!4v1544589095565', NULL, NULL),
(7, 'Restaurante La Fogata Steak House', 'Parrilla rústica con paredes de madera, techo de palmas y acogedor patio que ofrece cortes y cocina mexicana.', 'restaurants/lafogata.JPG', 6188170347, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58299.92055588215!2d-104.67888223894953!3d24.04005459201835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bb7df0f70a78d%3A0xa51567dd2e22c66d!2sRestaurante+La+Fogata+Steak+House!5e0!3m2!1ses-419!2smx!4v1544589155464', NULL, NULL),
(8, 'Daisuki Sushi', 'Agradable.\r\nInformal.\r\nGrupos.', 'restaurants/daisukisushi.jpg', 6184553528, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58299.92055588215!2d-104.67888223894953!3d24.04005459201835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bb7b42f56f6b9%3A0xc5856326a42810a!2sDaisuki+Sushi!5e0!3m2!1ses-419!2smx!4v1544589244252', NULL, NULL),
(9, 'Pizza Bunch', 'Agradable. \r\nInformal.\r\nRecomendable para ir con niños.', 'restaurants/pizzabunch.jpg', 6761098125, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58299.92055588215!2d-104.67888223894953!3d24.04005459201835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bb7da5a2e290b%3A0x2fef0384a2d8b95!2sPizza+Bunch!5e0!3m2!1ses-419!2smx!4v1544589327989', NULL, NULL),
(10, 'Subway', 'Bocadillos personalizados y ensaladas en mostrador de esta cadena informal, con opciones saludables.', 'restaurants/subway.jpg', 6188100700, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58299.92055588215!2d-104.67888223894953!3d24.04005459201835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x869bb795a8a856c1%3A0xe5ac0d232075bacd!2sSubway!5e0!3m2!1ses-419!2smx!4v1544589380880', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tokens`
--

CREATE TABLE `tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `type` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `is_revoked` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'dariuzcm', 'admin@1.com', '$2y$10$rxymyKZylGT0Z.s.cKCWNuK1RVc7Gm29Ebu3jOlCYrH0YkZyvosRK', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adonis_schema`
--
ALTER TABLE `adonis_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `disciplinas_name_unique` (`name`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipos_id_disc_foreign` (`id_disc`),
  ADD KEY `equipos_id_part_foreign` (`id_part`);

--
-- Indices de la tabla `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `partidos`
--
ALTER TABLE `partidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tokens_token_unique` (`token`),
  ADD KEY `tokens_user_id_foreign` (`user_id`),
  ADD KEY `tokens_token_index` (`token`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `adonis_schema`
--
ALTER TABLE `adonis_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `partidos`
--
ALTER TABLE `partidos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD CONSTRAINT `equipos_id_disc_foreign` FOREIGN KEY (`id_disc`) REFERENCES `disciplinas` (`id`),
  ADD CONSTRAINT `equipos_id_part_foreign` FOREIGN KEY (`id_part`) REFERENCES `partidos` (`id`);

--
-- Filtros para la tabla `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
