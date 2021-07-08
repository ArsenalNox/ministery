-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2021 at 10:53 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `min`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `createdAt` datetime NOT NULL,
  `expiersAt` datetime NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `educational`
--

CREATE TABLE `educational` (
  `id` int(11) NOT NULL,
  `name` varchar(240) NOT NULL,
  `address` varchar(240) NOT NULL,
  `region` int(11) NOT NULL,
  `build_complete` int(4) NOT NULL,
  `project_capacity` int(11) NOT NULL,
  `factial_capacity` int(11) NOT NULL,
  `second_shift` int(11) DEFAULT NULL,
  `bybus_count` int(11) DEFAULT NULL,
  `bybus_km` int(11) DEFAULT NULL,
  `level_type` varchar(200) DEFAULT NULL,
  `leve_repair` varchar(100) DEFAULT NULL,
  `roof_type` varchar(200) DEFAULT NULL,
  `roof_area` int(11) DEFAULT NULL,
  `roof_repair` varchar(100) DEFAULT NULL,
  `otmost_repair` varchar(100) DEFAULT NULL,
  `foundation_repair` varchar(100) DEFAULT NULL,
  `electricity_repair` varchar(100) DEFAULT NULL,
  `thermal_repair` varchar(100) DEFAULT NULL,
  `water_repair` varchar(100) DEFAULT NULL,
  `sewer_repair` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `educational`
--

INSERT INTO `educational` (`id`, `name`, `address`, `region`, `build_complete`, `project_capacity`, `factial_capacity`, `second_shift`, `bybus_count`, `bybus_km`, `level_type`, `leve_repair`, `roof_type`, `roof_area`, `roof_repair`, `otmost_repair`, `foundation_repair`, `electricity_repair`, `thermal_repair`, `water_repair`, `sewer_repair`) VALUES
(1, 'МБОУ«Васильевская ООШ» имени Героя Советского Союза Г.М.Линькова ', '462044, Оренбургская область, Октябрьский район,с. Васильевка, ул. Школьная, 1, Раб. 44-1-68', 20, 1981, 320, 50, 0, 0, 0, 'железобетонные', 'Не требуется', 'скатная', 2500, 'Полный', 'Полный', 'Не требуется', 'Полный', 'Не требуется', 'Не требуется', 'Не требуется'),
(4, 'МБОУ \"Старокульшариповская СОШ\"', 'С.Старокульшарипово ул.Школьная 29 83535124534', 5, 1970, 360, 43, 0, 19, 93, 'железобетонные', 'Не требуется', 'скатная', 420, 'полный', 'частинчный', 'полный', 'частинчный', 'частинчный', 'Не требуется', 'полный'),
(5, 'МОБУ \"Средняя общеобразовательная школа №3\"', '462776, Оренбургская область, п. Новосельский, ул.Школьная, 7', 35, 1983, 194, 109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'МБОУ \"Новопавловская средняя общеобразовательная школа Акбулакского района Оренбургской области\"', '461561, Россия, Оренбургская область, Акбулакский район, с. Новопавловка, пер. Школьный, 8  тел.8(35335)31136', 3, 1972, 320, 134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'МБОУ \"Акбулакская  средняя общеобразовательная школа № 2 Акбулакского района Оренбургской области\" ', '461550,Оренбургская область, Акбулакский район, п.Акбулак, улица Оренбургская, дом 103, тел.8(35335)21952', 3, 1976, 620, 637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'МБОУ \"Лицей №1\" п. Тюльган', 'Оренбургская область, п. Тюльган, ул. М. Горького, д. 11, 835332 2-19-01', 33, 1993, 846, 477, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'МБОУ \"Белогорская основная общеобразовательная школа\" ', '461342 Оренбургская область Беляевский район п.Белогорский ул.Школьная д.6', 6, 1987, 180, 140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'МАОУ \"Средняя общеобразовательная школа № 7\" г. Гая Оренбургской области', '462635, Оренбургская область, г. Гай, ул. Декабристов, 10А', 9, 1988, 1179, 800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'МОАУ \"СОШ № 31\"', 'г. Оренбург, ул Братская, д.8/1', 36, 1974, 850, 720, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'МОАУ \"СОШ№54\"', 'г.Оренбург, ул.Сергея Лазо, д.8/2', 36, 1973, 1000, 546, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'МАОУ \"Лабазинская СОШ\"', 'с. Лабазы, ул. Зорина, 12', 16, 1963, 180, 261, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'МБОУ \"Волжская СОШ\"', 'п. Волжский, ул. Центральная, 4', 16, 1976, 360, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'МАОУ \"Нежинский лицей\"', '460520, Оренбургская область, Оренбургский район, с. Нежинка, ул.Нежинская, 46; 8(3532) 56-26-34', 21, 1984, 514, 625, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'МБОУ \"Курлинская средняя общеобразовательная школа\"', 'Оренбургская область, Первомайский район, п. Курлин, ул. Молодежная, 1а, тел. 89272917927', 22, 1997, 180, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'МБОУ \"Основная общеобразовательная школа №5\" муниципального образования \"город Бугуруслан\"', 'ул.Строителей, д.2, 8(35352) 3-51-07', 37, 1955, 375, 385, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'МБОУ \"Гимназия г. Медногорска\" ', '462280, Оренбургская обл., г. Медногорск, ул. Гагарина, д. 1а', 39, 1988, 800, 550, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'МАОУ \"Первомайская СОШ\"', 'Кваркенский район, п.Майский, ул.Школьная, д.17', 13, 1974, 200, 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'МАОУ «Фадеевская ООШ»', 'Оренбургская область, Пономаревский район, п. Фадеевка, ул. Совхозная, д. 2 тел 8(35357) 24-3-40', 24, 1987, 170, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'МБОУ Краснокоммунарская СОШ', 'Оренбургская обл, Сакмарский район, п.Красный Коммунар, ул.Краснокоммунарская, д.30, 8(35331)27356', 25, 1984, 320, 567, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Ковыляевская ООШ- филиал МАОУ Богдановская СОШ', 'Оренбургская область, Тоцкий район, село Ковыляевка, Школьная улица, 1А', 32, 1984, 192, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'МБОУ \"Тюльганская СОШ №1\"', 'Оренбургская область, п. Тюльган, ул. М. Горького, д. 20, 835332 2-13-80', 33, 1978, 1200, 626, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Муниципальное общеобразовательное бюджетное учреждение \"Целинная основная общеобразовательная школа\"', '462776, Оренбургская область, п. Новосельский, ул.Школьная, 7', 35, 1983, 194, 109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `munipal`
--

CREATE TABLE `munipal` (
  `id` int(11) NOT NULL,
  `name` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `munipal`
--

INSERT INTO `munipal` (`id`, `name`) VALUES
(1, 'Абдулинский городской округ'),
(2, 'Адамовский район'),
(3, 'Акбулакский район'),
(4, 'Александровский район'),
(5, 'Асекеевский район'),
(6, 'Беляевский район'),
(7, 'Бугурусланский район'),
(8, 'Бузулукский район'),
(9, 'Гайский городской округ'),
(10, 'Грачевский район'),
(11, 'Домбаровский район'),
(12, 'Илекский район'),
(13, 'Кваркенский район'),
(14, 'Красногвардейский район'),
(15, 'Кувандыкский городской округ'),
(16, 'Курманаевский район'),
(17, 'Матвеевский район'),
(18, 'Новоорский район'),
(19, 'Новосергиевский район'),
(20, 'Октябрьский район'),
(21, 'Оренбургский район'),
(22, 'Первомайский район'),
(23, 'Переволоцкий район'),
(24, 'Пономаревский район'),
(25, 'Сакмарский район'),
(26, 'Саракташский район'),
(27, 'Светлинский район'),
(28, 'Северный район'),
(29, 'Соль-Илецкий городской округ'),
(30, 'Сорочинский городской округ'),
(31, 'Ташлинский район'),
(32, 'Тоцкий район'),
(33, 'Тюльганский район'),
(34, 'Шарлыкский район'),
(35, 'Ясненский городской округ'),
(36, 'г. Оренбург'),
(37, 'г. Бугуруслан'),
(38, 'г. Бузулук'),
(39, 'г. Медногорск'),
(40, 'г. Новотроицк'),
(41, 'г. Орск'),
(42, 'Южноуральский сельский совет');

-- --------------------------------------------------------

--
-- Table structure for table `photos_edu`
--

CREATE TABLE `photos_edu` (
  `id` int(11) NOT NULL,
  `schid` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `path` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `photos_edu`
--

INSERT INTO `photos_edu` (`id`, `schid`, `category`, `path`) VALUES
(10, 2, 4, 'img/photo8.jpg'),
(11, 2, 4, 'img/photo9.jpg'),
(12, 2, 5, 'img/photo10.jpg'),
(31, 4, 9, 'img/4/01_9.jpg'),
(32, 4, 9, 'img/4/01_10.jpg'),
(33, 4, 9, 'img/4/01_12.jpg'),
(34, 4, 9, 'img/4/01_13.jpg'),
(35, 4, 9, 'img/4/01_14.jpg'),
(36, 4, 9, 'img/4/01_16.jpg'),
(37, 4, 9, 'img/4/01_17.jpg'),
(38, 4, 1, 'img/4/01_18.jpg'),
(39, 4, 8, 'img/4/01_20.jpg'),
(40, 4, 8, 'img/4/01_21.jpg'),
(41, 4, 8, 'img/4/01_22.jpg'),
(42, 4, 9, 'img/4/01_23.jpg'),
(43, 4, 1, 'img/4/03_1.jpg'),
(44, 4, 1, 'img/4/02_1.jpg'),
(45, 4, 4, 'img/4/05_1.jpg'),
(46, 4, 2, 'img/4/05_2.jpg'),
(47, 4, 3, 'img/4/06_1.jpg'),
(48, 4, 3, 'img/4/06_2.jpg'),
(49, 4, 7, 'img/4/07_1.jpg'),
(50, 4, 7, 'img/4/07_2.jpg'),
(51, 4, 6, 'img/4/08_1.jpg'),
(52, 4, 6, 'img/4/08_2.jpg'),
(53, 4, 9, 'img/4/10_1.jpg'),
(54, 4, 5, 'img/4/10_2.jpg'),
(55, 4, 5, 'img/4/10_3.jpg'),
(56, 4, 5, 'img/4/10_4.jpg'),
(57, 4, 4, 'img/4/11_1.jpg'),
(58, 4, 2, 'img/4/04_1.jpg'),
(59, 4, 1, 'img/4/01_19.jpg'),
(87, 6, 1, 'img/6/01_01.jpg'),
(88, 6, 9, 'img/6/01_06.jpg'),
(89, 6, 9, 'img/6/01_07.jpg'),
(90, 6, 1, 'img/6/02_01.jpg'),
(91, 6, 1, 'img/6/01_10.jpg'),
(92, 6, 2, 'img/6/04_01.jpg'),
(93, 6, 2, 'img/6/04_02.jpg'),
(94, 6, 4, 'img/6/05_01.jpg'),
(95, 6, 4, 'img/6/05_02.jpg'),
(96, 6, 3, 'img/6/06_01.jpg'),
(97, 6, 3, 'img/6/06_02.jpg'),
(98, 6, 3, 'img/6/06_03.jpg'),
(99, 6, 3, 'img/6/06_05.jpg'),
(100, 6, 3, 'img/6/06_06.jpg'),
(101, 6, 3, 'img/6/06_07.jpg'),
(102, 6, 8, 'img/6/07_01.jpg'),
(103, 6, 8, 'img/6/07_03.jpg'),
(104, 6, 8, 'img/6/07_05.jpg'),
(105, 6, 6, 'img/6/08_01.jpg'),
(106, 6, 6, 'img/6/08_02.jpg'),
(107, 6, 6, 'img/6/08_03.jpg'),
(108, 6, 6, 'img/6/08_04.jpg'),
(109, 6, 6, 'img/6/08_05.jpg'),
(110, 6, 6, 'img/6/08_06.jpg'),
(111, 6, 6, 'img/6/08_07.jpg'),
(112, 6, 6, 'img/6/09_01.jpg'),
(113, 6, 6, 'img/6/09_02.jpg'),
(114, 6, 5, 'img/6/10_01.jpg'),
(115, 6, 5, 'img/6/10_02.jpg'),
(116, 6, 5, 'img/6/10_03.jpg'),
(117, 6, 7, 'img/6/12_01.jpg'),
(118, 6, 7, 'img/6/12_03.jpg'),
(143, 7, 1, 'img/7/01_1.jpg'),
(144, 7, 9, 'img/7/01_2.jpg'),
(145, 7, 9, 'img/7/01_3.jpg'),
(146, 7, 9, 'img/7/01_4.jpg'),
(147, 7, 11, 'img/7/01_5.jpg'),
(148, 7, 1, 'img/7/02_1.jpg'),
(149, 7, 1, 'img/7/03_1.jpg'),
(150, 7, 1, 'img/7/03_2.jpg'),
(151, 7, 2, 'img/7/04_1.jpg'),
(152, 7, 4, 'img/7/05_1.jpg'),
(153, 7, 4, 'img/7/05_2.jpg'),
(154, 7, 3, 'img/7/06_1.jpg'),
(155, 7, 8, 'img/7/07_1.jpg'),
(156, 7, 6, 'img/7/08_1.jpg'),
(157, 7, 6, 'img/7/08_2.jpg'),
(158, 7, 6, 'img/7/08_3.jpg'),
(159, 7, 6, 'img/7/09_1.jpg'),
(160, 7, 5, 'img/7/10_1.jpg'),
(161, 7, 7, 'img/7/10_2.jpg'),
(162, 7, 4, 'img/7/11_1.jpg'),
(163, 7, 7, 'img/7/12_1.jpg'),
(164, 7, 7, 'img/7/12_2.jpg'),
(165, 7, 7, 'img/7/12_3.jpg'),
(166, 7, 7, 'img/7/13_1.jpg'),
(167, 8, 1, 'img/8/01_01.JPG'),
(168, 8, 1, 'img/8/01_02.JPG'),
(169, 8, 11, 'img/8/01_03.JPG'),
(170, 8, 1, 'img/8/02_04.JPG'),
(171, 8, 1, 'img/8/03_05.JPG'),
(172, 8, 2, 'img/8/03_06.JPG'),
(173, 8, 2, 'img/8/03_07.JPG'),
(174, 8, 2, 'img/8/04_08.JPG'),
(175, 8, 4, 'img/8/05_09.JPG'),
(176, 8, 2, 'img/8/05_10.JPG'),
(177, 8, 2, 'img/8/05_11.JPG'),
(178, 8, 3, 'img/8/06_12.JPG'),
(179, 8, 3, 'img/8/06_13.JPG'),
(180, 8, 3, 'img/8/06_14.JPG'),
(181, 8, 8, 'img/8/07_15.JPG'),
(182, 8, 8, 'img/8/07_16.JPG'),
(183, 8, 8, 'img/8/07_17.JPG'),
(184, 8, 9, 'img/8/07_18.JPG'),
(185, 8, 8, 'img/8/07_19.JPG'),
(186, 8, 9, 'img/8/07_20.JPG'),
(187, 8, 6, 'img/8/08_21.JPG'),
(188, 8, 6, 'img/8/08_22.JPG'),
(189, 8, 9, 'img/8/08_23.JPG'),
(190, 8, 6, 'img/8/09_24.JPG'),
(191, 8, 6, 'img/8/09_25.JPG'),
(192, 8, 5, 'img/8/10_26.JPG'),
(193, 8, 5, 'img/8/10_27.JPG'),
(194, 8, 5, 'img/8/10_28.JPG'),
(195, 8, 5, 'img/8/10_29.JPG'),
(196, 8, 5, 'img/8/10_30.JPG'),
(197, 8, 5, 'img/8/10_31.JPG'),
(198, 8, 5, 'img/8/10_32.JPG'),
(199, 8, 5, 'img/8/10_33.JPG'),
(200, 8, 4, 'img/8/11_34.JPG'),
(201, 8, 4, 'img/8/11_35.JPG'),
(202, 8, 4, 'img/8/11_36.JPG'),
(203, 8, 4, 'img/8/11_37.JPG'),
(204, 8, 7, 'img/8/12_38.JPG'),
(205, 8, 7, 'img/8/12_39.JPG'),
(206, 8, 7, 'img/8/12_40.JPG'),
(207, 8, 7, 'img/8/12_41.JPG'),
(208, 8, 7, 'img/8/12_42.JPG'),
(209, 8, 7, 'img/8/12_43.JPG'),
(210, 8, 7, 'img/8/12_44.JPG'),
(211, 8, 7, 'img/8/12_45.JPG'),
(212, 8, 7, 'img/8/13_46.JPG'),
(213, 8, 7, 'img/8/13_47.JPG'),
(214, 8, 7, 'img/8/13_48.JPG'),
(215, 8, 7, 'img/8/13_49.JPG'),
(216, 9, 1, 'img/9/01_1.jpg.jpg'),
(217, 9, 1, 'img/9/01_2.jpg.jpg'),
(218, 9, 1, 'img/9/01_3.jpg.jpg'),
(219, 9, 11, 'img/9/01_4.jpg.jpg'),
(220, 9, 9, 'img/9/01_5.jpg.jpg'),
(221, 9, 1, 'img/9/02_1.jpg.jpg'),
(222, 9, 2, 'img/9/03_1.jpg.jpg'),
(223, 9, 2, 'img/9/03_2.jpg.jpg'),
(224, 9, 2, 'img/9/04_1.jpg.jpg'),
(225, 9, 2, 'img/9/04_2.jpg.jpg'),
(226, 9, 9, 'img/9/04_3.jpg.jpg'),
(227, 9, 4, 'img/9/05_1.jpg.jpg'),
(228, 9, 2, 'img/9/05_2.jpg.jpg'),
(229, 9, 2, 'img/9/05_3.jpg.jpg'),
(230, 9, 3, 'img/9/06_1.jpg.jpg'),
(231, 9, 3, 'img/9/06_2.jpg.jpg'),
(232, 9, 3, 'img/9/06_3.jpg.jpg'),
(233, 9, 3, 'img/9/06_4.jpg.jpg'),
(234, 9, 8, 'img/9/07_1.jpg.jpg'),
(235, 9, 6, 'img/9/08_1.jpg.jpg'),
(236, 9, 6, 'img/9/08_2.jpg.jpg'),
(237, 9, 6, 'img/9/08_3.jpg.jpg'),
(238, 9, 6, 'img/9/09_1.jpg.jpg'),
(239, 9, 6, 'img/9/09_2jpg.jpg'),
(240, 9, 5, 'img/9/10_1.jpg.jpg'),
(241, 9, 11, 'img/9/10_2.jpg (2).jpg'),
(242, 9, 11, 'img/9/10_3.jpg (2).jpg'),
(243, 9, 5, 'img/9/10_4.jpg.jpg'),
(244, 9, 8, 'img/9/10_5.jpg.jpg'),
(245, 9, 4, 'img/9/11_1.jpg.jpg'),
(246, 9, 4, 'img/9/11_2.jpg.jpg'),
(247, 9, 9, 'img/9/11_3.jpg.jpg'),
(248, 9, 7, 'img/9/12_1.jpg.jpg'),
(249, 9, 9, 'img/9/12_2.jpg.jpg'),
(250, 9, 7, 'img/9/12_3.jpg.jpg'),
(251, 9, 7, 'img/9/12_4.jpg.jpg'),
(252, 9, 9, 'img/9/12_5.jpg.jpg'),
(253, 9, 9, 'img/9/12_6.jpg.jpg'),
(254, 9, 9, 'img/9/12_7.jpg.jpg'),
(255, 9, 7, 'img/9/13_1.jpg.jpg'),
(256, 9, 7, 'img/9/13_2.jpg.jpg'),
(257, 9, 7, 'img/9/13_3.jpg.jpg'),
(258, 10, 1, 'img/10/01_1.jpg'),
(259, 10, 1, 'img/10/01_2.jpg'),
(260, 10, 11, 'img/10/01_3.jpg'),
(261, 10, 11, 'img/10/01_4.jpg'),
(262, 10, 9, 'img/10/01_5.jpg'),
(263, 10, 1, 'img/10/02_1.jpg'),
(264, 10, 2, 'img/10/03_1.jpg'),
(265, 10, 2, 'img/10/03_2.jpg'),
(266, 10, 2, 'img/10/03_3.jpg'),
(267, 10, 2, 'img/10/04_1.jpg'),
(268, 10, 2, 'img/10/04_2.jpg'),
(269, 10, 2, 'img/10/05_1.jpg'),
(270, 10, 2, 'img/10/05_2.jpg'),
(271, 10, 9, 'img/10/05_3.jpg'),
(272, 10, 9, 'img/10/05_4.jpg'),
(273, 10, 3, 'img/10/06_1.jpg'),
(274, 10, 3, 'img/10/06_2.jpg'),
(275, 10, 3, 'img/10/06_3.jpg'),
(276, 10, 8, 'img/10/07_1.jpg'),
(277, 10, 8, 'img/10/07_2.jpg'),
(278, 10, 8, 'img/10/07_3.jpg'),
(279, 10, 8, 'img/10/07_4.jpg'),
(280, 10, 8, 'img/10/07_5.jpg'),
(281, 10, 6, 'img/10/08_1.jpg'),
(282, 10, 6, 'img/10/08_2.jpg'),
(283, 10, 6, 'img/10/08_3.jpg'),
(284, 10, 6, 'img/10/09_1.jpg'),
(285, 10, 6, 'img/10/09_2.jpg'),
(286, 10, 5, 'img/10/10_1.jpg'),
(287, 10, 5, 'img/10/10_2.jpg'),
(288, 10, 5, 'img/10/10_3.jpg'),
(289, 10, 4, 'img/10/11_1.jpg'),
(290, 10, 4, 'img/10/11_2.jpg'),
(291, 10, 7, 'img/10/12_1.jpg'),
(292, 10, 7, 'img/10/12_2.jpg'),
(293, 10, 7, 'img/10/12_3.jpg'),
(294, 10, 7, 'img/10/12_4.jpg'),
(295, 10, 9, 'img/10/12_5.jpg'),
(296, 10, 7, 'img/10/13_1.jpg'),
(297, 10, 7, 'img/10/13_2.jpg'),
(298, 5, 11, 'img/5/01_1.jpeg'),
(299, 5, 9, 'img/5/01_2.jpeg'),
(300, 5, 9, 'img/5/01_3.jpeg'),
(301, 5, 9, 'img/5/01_4.jpeg'),
(302, 5, 1, 'img/5/01_5.jpeg'),
(303, 5, 1, 'img/5/01_6.jpeg'),
(304, 5, 1, 'img/5/01_7.jpeg'),
(305, 5, 1, 'img/5/02_10.jpeg'),
(306, 5, 1, 'img/5/02_8.jpeg'),
(307, 5, 1, 'img/5/02_9.jpeg'),
(308, 5, 2, 'img/5/03_11.jpeg'),
(309, 5, 2, 'img/5/04_12.jpeg'),
(310, 5, 2, 'img/5/04_13.jpeg'),
(311, 5, 2, 'img/5/04_14.jpeg'),
(312, 5, 2, 'img/5/04_15.jpeg'),
(313, 5, 2, 'img/5/04_16.jpeg'),
(314, 5, 2, 'img/5/05_17.jpeg'),
(315, 5, 2, 'img/5/05_18.jpeg'),
(316, 5, 2, 'img/5/05_19.jpeg'),
(317, 5, 4, 'img/5/06_20.jpeg'),
(318, 5, 3, 'img/5/06_21.jpeg'),
(319, 5, 3, 'img/5/06_22.jpeg'),
(320, 5, 3, 'img/5/06_23.jpeg'),
(321, 5, 8, 'img/5/07_24.jpeg'),
(322, 5, 4, 'img/5/07_25.jpeg'),
(323, 5, 8, 'img/5/07_26.jpeg'),
(324, 5, 6, 'img/5/08_27.jpeg'),
(325, 5, 6, 'img/5/08_28.jpeg'),
(326, 5, 6, 'img/5/08_29.jpeg'),
(327, 5, 6, 'img/5/08_30.jpeg'),
(328, 5, 6, 'img/5/09_31.jpeg'),
(329, 5, 5, 'img/5/10_32.jpeg'),
(330, 5, 5, 'img/5/10_33.jpeg'),
(331, 5, 5, 'img/5/10_34.jpeg'),
(332, 5, 5, 'img/5/10_35.jpeg'),
(333, 5, 5, 'img/5/10_36.jpeg'),
(334, 5, 5, 'img/5/10_37.jpeg'),
(335, 5, 5, 'img/5/10_38.jpeg'),
(336, 5, 5, 'img/5/10_39.jpeg'),
(337, 5, 5, 'img/5/10_40.jpeg'),
(338, 5, 5, 'img/5/10_41.jpeg'),
(339, 5, 4, 'img/5/11_42.jpeg'),
(340, 5, 4, 'img/5/11_43.jpeg'),
(341, 5, 7, 'img/5/12_10.jpeg'),
(342, 5, 7, 'img/5/12_11.jpeg'),
(343, 5, 7, 'img/5/12_12.jpeg'),
(344, 5, 7, 'img/5/12_44.jpeg'),
(345, 5, 7, 'img/5/12_45.jpeg'),
(346, 5, 7, 'img/5/12_46.jpeg'),
(347, 5, 9, 'img/5/12_47.jpeg'),
(348, 5, 7, 'img/5/12_48.jpeg'),
(349, 5, 9, 'img/5/12_49.jpeg'),
(350, 5, 7, 'img/5/12_50.jpeg'),
(351, 5, 7, 'img/5/12_51.jpeg'),
(352, 5, 9, 'img/5/12_52.jpeg'),
(353, 5, 7, 'img/5/13_02.jpeg'),
(354, 5, 7, 'img/5/13_03.jpeg'),
(355, 5, 11, 'img/5/13_04.jpeg'),
(356, 5, 7, 'img/5/13_05.jpeg'),
(357, 5, 7, 'img/5/13_06.jpeg'),
(358, 5, 7, 'img/5/13_07.jpeg'),
(359, 5, 7, 'img/5/13_08.jpeg'),
(360, 5, 7, 'img/5/13_09.jpeg'),
(361, 5, 7, 'img/5/13_10.jpeg'),
(362, 5, 7, 'img/5/13_53.jpeg'),
(363, 5, 1, 'img/5/01_1.jpeg'),
(364, 5, 1, 'img/5/01_2.jpeg'),
(365, 5, 1, 'img/5/01_3.jpeg'),
(366, 5, 1, 'img/5/01_4.jpeg'),
(367, 5, 1, 'img/5/01_5.jpeg'),
(368, 5, 1, 'img/5/01_6.jpeg'),
(369, 5, 1, 'img/5/01_7.jpeg'),
(370, 5, 1, 'img/5/02_10.jpeg'),
(371, 5, 1, 'img/5/02_8.jpeg'),
(372, 5, 1, 'img/5/02_9.jpeg'),
(373, 5, 1, 'img/5/03_11.jpeg'),
(374, 5, 1, 'img/5/04_12.jpeg'),
(375, 5, 1, 'img/5/04_13.jpeg'),
(376, 5, 1, 'img/5/04_14.jpeg'),
(377, 5, 1, 'img/5/04_15.jpeg'),
(378, 5, 1, 'img/5/04_16.jpeg'),
(379, 5, 1, 'img/5/05_17.jpeg'),
(380, 5, 1, 'img/5/05_18.jpeg'),
(381, 5, 1, 'img/5/05_19.jpeg'),
(382, 5, 1, 'img/5/06_20.jpeg'),
(383, 5, 1, 'img/5/06_21.jpeg'),
(384, 5, 1, 'img/5/06_22.jpeg'),
(385, 5, 1, 'img/5/06_23.jpeg'),
(386, 5, 1, 'img/5/07_24.jpeg'),
(387, 5, 1, 'img/5/07_25.jpeg'),
(388, 5, 1, 'img/5/07_26.jpeg'),
(389, 5, 1, 'img/5/08_27.jpeg'),
(390, 5, 1, 'img/5/08_28.jpeg'),
(391, 5, 1, 'img/5/08_29.jpeg'),
(392, 5, 1, 'img/5/08_30.jpeg'),
(393, 5, 1, 'img/5/09_31.jpeg'),
(394, 5, 1, 'img/5/10_32.jpeg'),
(395, 5, 1, 'img/5/10_33.jpeg'),
(396, 5, 1, 'img/5/10_34.jpeg'),
(397, 5, 1, 'img/5/10_35.jpeg'),
(398, 5, 1, 'img/5/10_36.jpeg'),
(399, 5, 1, 'img/5/10_37.jpeg'),
(400, 5, 1, 'img/5/10_38.jpeg'),
(401, 5, 1, 'img/5/10_39.jpeg'),
(402, 5, 1, 'img/5/10_40.jpeg'),
(403, 5, 1, 'img/5/10_41.jpeg'),
(404, 5, 1, 'img/5/11_42.jpeg'),
(405, 5, 1, 'img/5/11_43.jpeg'),
(406, 5, 1, 'img/5/12_10.jpeg'),
(407, 5, 1, 'img/5/12_11.jpeg'),
(408, 5, 1, 'img/5/12_12.jpeg'),
(409, 5, 1, 'img/5/12_44.jpeg'),
(410, 5, 1, 'img/5/12_45.jpeg'),
(411, 5, 1, 'img/5/12_46.jpeg'),
(412, 5, 1, 'img/5/12_47.jpeg'),
(413, 5, 1, 'img/5/12_48.jpeg'),
(414, 5, 1, 'img/5/12_49.jpeg'),
(415, 5, 1, 'img/5/12_50.jpeg'),
(416, 5, 1, 'img/5/12_51.jpeg'),
(417, 5, 1, 'img/5/12_52.jpeg'),
(418, 5, 1, 'img/5/13_02.jpeg'),
(419, 5, 1, 'img/5/13_03.jpeg'),
(420, 5, 1, 'img/5/13_04.jpeg'),
(421, 5, 1, 'img/5/13_05.jpeg'),
(422, 5, 1, 'img/5/13_06.jpeg'),
(423, 5, 1, 'img/5/13_07.jpeg'),
(424, 5, 1, 'img/5/13_08.jpeg'),
(425, 5, 1, 'img/5/13_09.jpeg'),
(426, 5, 1, 'img/5/13_10.jpeg'),
(427, 5, 1, 'img/5/13_53.jpeg'),
(453, 1, 1, 'img/1/01_0246.jpg'),
(454, 1, 1, 'img/1/01_10806.jpg'),
(455, 1, 1, 'img/1/02_0140.jpg'),
(456, 1, 2, 'img/1/03_0116.jpg'),
(457, 1, 1, 'img/1/03_0318.jpg'),
(458, 1, 2, 'img/1/04_5834.jpg'),
(459, 1, 2, 'img/1/05_5758.jpg'),
(460, 1, 4, 'img/1/05_5851.jpg'),
(461, 1, 3, 'img/1/06_20210702.jpg'),
(462, 1, 9, 'img/1/06_5521.jpg'),
(463, 1, 9, 'img/1/06_5537.jpg'),
(464, 1, 8, 'img/1/07_1057.jpg'),
(465, 1, 8, 'img/1/07_105721.jpg'),
(466, 1, 8, 'img/1/07_1138.jpg'),
(467, 1, 8, 'img/1/07_5728.jpg'),
(468, 1, 6, 'img/1/08_0010.jpg'),
(469, 1, 6, 'img/1/08_0036.jpg'),
(470, 1, 6, 'img/1/09_5953.jpg'),
(471, 1, 5, 'img/1/10_10949.jpg'),
(472, 1, 4, 'img/1/11_105419.jpg'),
(473, 1, 7, 'img/1/11_111218.jpg'),
(474, 1, 7, 'img/1/12_105358.jpg'),
(475, 1, 7, 'img/1/12_105441.jpg'),
(476, 1, 7, 'img/1/12_110929.jpg'),
(523, 11, 1, 'img/11/01_1.jpg'),
(524, 11, 1, 'img/11/02_2.jpg'),
(525, 11, 9, 'img/11/02_3.jpg'),
(526, 11, 1, 'img/11/03_3.jpg'),
(527, 11, 9, 'img/11/03_4.jpg'),
(528, 11, 9, 'img/11/03_5.jpg'),
(529, 11, 2, 'img/11/04_6.jpg'),
(530, 11, 2, 'img/11/05_7.jpg'),
(531, 11, 3, 'img/11/06_10.jpg'),
(532, 11, 3, 'img/11/06_8.jpg'),
(533, 11, 3, 'img/11/06_9.jpg'),
(534, 11, 8, 'img/11/07_11.jpg'),
(535, 11, 6, 'img/11/08_12.jpg'),
(536, 11, 6, 'img/11/08_13.jpg'),
(537, 11, 5, 'img/11/10_14.jpg'),
(538, 11, 4, 'img/11/11_15.JPG'),
(539, 11, 7, 'img/11/12_16.jpg'),
(540, 11, 7, 'img/11/12_17.jpg'),
(541, 11, 7, 'img/11/12_18.jpg'),
(542, 11, 7, 'img/11/12_19.jpg'),
(543, 11, 7, 'img/11/12_20.jpg'),
(544, 11, 7, 'img/11/12_21.jpg'),
(545, 11, 7, 'img/11/13_22.jpg'),
(546, 12, 1, 'img/12/01_1.jpg'),
(547, 12, 9, 'img/12/01_2.jpg'),
(548, 12, 9, 'img/12/01_3.jpg'),
(549, 12, 9, 'img/12/01_4.jpg'),
(550, 12, 1, 'img/12/01_5.jpg'),
(551, 12, 1, 'img/12/02_1.jpg'),
(552, 12, 1, 'img/12/03_1.jpg'),
(553, 12, 2, 'img/12/04_1.jpg'),
(554, 12, 2, 'img/12/05_1.jpg'),
(555, 12, 4, 'img/12/05_2.jpg'),
(556, 12, 3, 'img/12/06_1.jpg'),
(557, 12, 3, 'img/12/06_2.jpg'),
(558, 12, 3, 'img/12/06_3.jpg'),
(559, 12, 8, 'img/12/07_1.jpg'),
(560, 12, 8, 'img/12/07_2.jpg'),
(561, 12, 6, 'img/12/08_1.jpg'),
(562, 12, 6, 'img/12/08_2.jpg'),
(563, 12, 11, 'img/12/08_3.jpg'),
(564, 12, 11, 'img/12/08_4.jpg'),
(565, 12, 6, 'img/12/08_5.jpg'),
(566, 12, 6, 'img/12/08_6.jpg'),
(567, 12, 6, 'img/12/08_7.jpg'),
(568, 12, 6, 'img/12/09_1.jpg'),
(569, 12, 6, 'img/12/09_2.jpg'),
(570, 12, 5, 'img/12/10_1.jpg'),
(571, 12, 5, 'img/12/10_2.jpg'),
(572, 12, 5, 'img/12/10_3.jpg'),
(573, 12, 5, 'img/12/10_4.jpg'),
(574, 12, 5, 'img/12/10_5.jpg'),
(575, 12, 5, 'img/12/10_6.jpg'),
(576, 12, 4, 'img/12/11_1.jpg'),
(577, 12, 4, 'img/12/11_2.jpg'),
(578, 12, 4, 'img/12/11_3.jpg'),
(579, 12, 7, 'img/12/12_1.jpg'),
(580, 12, 7, 'img/12/12_2.jpg'),
(581, 12, 7, 'img/12/12_3.jpg'),
(582, 12, 7, 'img/12/12_4.jpg'),
(583, 12, 7, 'img/12/13_1.jpg'),
(584, 12, 7, 'img/12/13_2.jpg'),
(585, 12, 7, 'img/12/13_3.jpg'),
(586, 12, 7, 'img/12/13_4.jpg'),
(587, 13, 11, 'img/13/01_1.jpg'),
(588, 13, 1, 'img/13/01_2.jpg'),
(589, 13, 1, 'img/13/01_3.jpg'),
(590, 13, 1, 'img/13/02_4.jpg'),
(591, 13, 2, 'img/13/03_10.jpg'),
(592, 13, 2, 'img/13/03_11.jpg'),
(593, 13, 2, 'img/13/03_12.jpg'),
(594, 13, 2, 'img/13/03_5.jpg'),
(595, 13, 11, 'img/13/03_6.jpg'),
(596, 13, 9, 'img/13/03_7.jpg'),
(597, 13, 11, 'img/13/03_8.jpg'),
(598, 13, 2, 'img/13/03_9.jpg'),
(599, 13, 2, 'img/13/04_13.jpg'),
(600, 13, 2, 'img/13/04_14.jpg'),
(601, 13, 4, 'img/13/05_15.jpg'),
(602, 13, 4, 'img/13/05_16.jpg'),
(603, 13, 2, 'img/13/05_17.jpg'),
(604, 13, 3, 'img/13/06_18.jpg'),
(605, 13, 3, 'img/13/06_19.jpg'),
(606, 13, 3, 'img/13/06_20.jpg'),
(607, 13, 11, 'img/13/07_21.jpg'),
(608, 13, 8, 'img/13/07_22.jpg'),
(609, 13, 8, 'img/13/07_23.jpg'),
(610, 13, 8, 'img/13/07_24.jpg'),
(611, 13, 6, 'img/13/08_25.jpg'),
(612, 13, 6, 'img/13/08_26.jpg'),
(613, 13, 6, 'img/13/08_27.jpg'),
(614, 13, 6, 'img/13/08_28.jpg'),
(615, 13, 6, 'img/13/08_29.jpg'),
(616, 13, 6, 'img/13/08_30.jpg'),
(617, 13, 6, 'img/13/08_31.jpg'),
(618, 13, 6, 'img/13/08_32.jpg'),
(619, 13, 6, 'img/13/08_33.jpg'),
(620, 13, 5, 'img/13/10_37.jpg'),
(621, 13, 5, 'img/13/10_38.jpg'),
(622, 13, 5, 'img/13/10_39.jpg'),
(623, 13, 8, 'img/13/10_40.jpg'),
(624, 13, 8, 'img/13/10_41.jpg'),
(625, 13, 8, 'img/13/10_42.jpg'),
(626, 13, 5, 'img/13/10_43.jpg'),
(627, 13, 5, 'img/13/10_44.jpg'),
(628, 13, 4, 'img/13/11_45.jpg'),
(629, 13, 4, 'img/13/11_46.jpg'),
(630, 13, 7, 'img/13/12_47.jpg'),
(631, 13, 7, 'img/13/12_48.jpg'),
(632, 13, 7, 'img/13/12_49.jpg'),
(633, 13, 7, 'img/13/13_50.jpg'),
(634, 13, 7, 'img/13/13_51.jpg'),
(635, 14, 1, 'img/14/01_01.jpg'),
(636, 14, 1, 'img/14/01_02.jpg'),
(637, 14, 1, 'img/14/02_01.jpg'),
(638, 14, 2, 'img/14/04_01.jpg'),
(639, 14, 2, 'img/14/05_01.jpg'),
(640, 14, 3, 'img/14/06_01.jpg'),
(641, 14, 8, 'img/14/07_01.jpg'),
(642, 14, 8, 'img/14/07_02.jpg'),
(643, 14, 8, 'img/14/07_03.jpg'),
(644, 14, 8, 'img/14/07_04.jpg'),
(645, 14, 6, 'img/14/08_01.jpg'),
(646, 14, 11, 'img/14/08_02.jpg'),
(647, 14, 6, 'img/14/09_01.jpg'),
(648, 14, 5, 'img/14/10_01.jpg'),
(649, 14, 5, 'img/14/10_02.jpg'),
(650, 14, 4, 'img/14/11_01.jpg'),
(651, 14, 7, 'img/14/12_01.jpg'),
(652, 14, 7, 'img/14/12_02.jpg'),
(653, 14, 7, 'img/14/12_03.jpg'),
(654, 14, 7, 'img/14/12_04.jpg'),
(655, 14, 7, 'img/14/12_05.jpg'),
(656, 14, 7, 'img/14/13_01.jpg'),
(657, 14, 7, 'img/14/13_02.jpg'),
(658, 14, 7, 'img/14/13_03.jpg'),
(659, 14, 7, 'img/14/13_04.jpg'),
(660, 15, 1, 'img/15/01_1.jpg'),
(661, 15, 1, 'img/15/01_2.jpg'),
(662, 15, 1, 'img/15/02_4.jpg'),
(663, 15, 9, 'img/15/03_05.jpg'),
(664, 15, 9, 'img/15/03_06.jpg'),
(665, 15, 9, 'img/15/03_2.jpg'),
(666, 15, 2, 'img/15/03_3.jpg'),
(667, 15, 2, 'img/15/04.jpg'),
(668, 15, 2, 'img/15/05.jpg'),
(669, 15, 3, 'img/15/06_1.jpg'),
(670, 15, 9, 'img/15/06_2.jpg'),
(671, 15, 3, 'img/15/06_3.jpg'),
(672, 15, 8, 'img/15/07_01.jpg'),
(673, 15, 8, 'img/15/07_02.jpg'),
(674, 15, 8, 'img/15/07_03.jpg'),
(675, 15, 6, 'img/15/08.jpg'),
(676, 15, 11, 'img/15/08_1.jpg'),
(677, 15, 11, 'img/15/08_2.jpg'),
(678, 15, 11, 'img/15/08_3.jpg'),
(679, 15, 11, 'img/15/08_4.jpg'),
(680, 15, 11, 'img/15/08_5.jpg'),
(681, 15, 6, 'img/15/09.jpg'),
(682, 15, 5, 'img/15/10.jpg'),
(683, 15, 5, 'img/15/10_0.jpg'),
(684, 15, 9, 'img/15/10_1.jpg'),
(685, 15, 5, 'img/15/10_2.jpg'),
(686, 15, 5, 'img/15/10_2_1.jpg'),
(687, 15, 8, 'img/15/10_3.jpg'),
(688, 15, 8, 'img/15/10_3_1.jpg'),
(689, 15, 4, 'img/15/11_1.jpg'),
(690, 15, 9, 'img/15/12_1.jpg'),
(691, 15, 7, 'img/15/12_16_1.jpg'),
(692, 15, 9, 'img/15/12_16_2.jpg'),
(693, 15, 7, 'img/15/12_17.jpg'),
(694, 15, 7, 'img/15/12_19.jpg'),
(695, 15, 11, 'img/15/13_1.jpg'),
(696, 15, 11, 'img/15/13_2.jpg'),
(747, 16, 11, 'img/16/01_21.jpg'),
(748, 16, 1, 'img/16/02_09.jpg'),
(749, 16, 1, 'img/16/03_10.jpg'),
(750, 16, 2, 'img/16/03_18.jpg'),
(751, 16, 2, 'img/16/03_22.jpg'),
(752, 16, 1, 'img/16/03_25.jpg'),
(753, 16, 2, 'img/16/04_15.jpg'),
(754, 16, 2, 'img/16/04_16.jpg'),
(755, 16, 2, 'img/16/05_14.jpg'),
(756, 16, 2, 'img/16/05_20.jpg'),
(757, 16, 2, 'img/16/05_5.jpg'),
(758, 16, 8, 'img/16/07_11.jpg'),
(759, 16, 8, 'img/16/07_12.jpg'),
(760, 16, 6, 'img/16/08_1.jpg'),
(761, 16, 6, 'img/16/08_2.jpg'),
(762, 16, 7, 'img/16/09_3.jpg'),
(763, 16, 5, 'img/16/10_6.jpg'),
(764, 16, 5, 'img/16/10_7.jpg'),
(765, 16, 3, 'img/16/10_8.jpg'),
(766, 16, 4, 'img/16/11_13.jpg'),
(767, 16, 9, 'img/16/12_17.jpg'),
(768, 16, 9, 'img/16/12_18.jpg'),
(769, 16, 9, 'img/16/12_19.jpg'),
(770, 16, 9, 'img/16/12_24.jpg'),
(771, 16, 9, 'img/16/13_4.jpg'),
(857, 17, 1, 'img/17/01_1.jpg'),
(858, 17, 9, 'img/17/01_2.jpg'),
(859, 17, 9, 'img/17/01_3.jpg'),
(860, 17, 9, 'img/17/01_4.jpg'),
(861, 17, 9, 'img/17/01_5.jpg'),
(862, 17, 1, 'img/17/02_1.jpg'),
(863, 17, 1, 'img/17/03_1.jpg'),
(864, 17, 2, 'img/17/03_2.jpg'),
(865, 17, 2, 'img/17/03_3.jpg'),
(866, 17, 2, 'img/17/04_1.jpg'),
(867, 17, 2, 'img/17/04_2.jpg'),
(868, 17, 2, 'img/17/05_1.jpg'),
(869, 17, 4, 'img/17/05_2.jpg'),
(870, 17, 4, 'img/17/05_3.jpg'),
(871, 17, 3, 'img/17/06_1.jpg'),
(872, 17, 3, 'img/17/06_2.jpg'),
(873, 17, 3, 'img/17/06_3.jpg'),
(874, 17, 3, 'img/17/06_4.jpg'),
(875, 17, 8, 'img/17/07_01.jpg'),
(876, 17, 8, 'img/17/07_2.jpg'),
(877, 17, 8, 'img/17/07_3.jpg'),
(878, 17, 11, 'img/17/07_4.jpg'),
(879, 17, 6, 'img/17/08_1.jpg'),
(880, 17, 6, 'img/17/08_2.jpg'),
(881, 17, 6, 'img/17/08_3.jpg'),
(882, 17, 6, 'img/17/08_4.jpg'),
(883, 17, 6, 'img/17/09_1.jpg'),
(884, 17, 6, 'img/17/09_2.jpg'),
(885, 17, 5, 'img/17/10_1.jpg'),
(886, 17, 9, 'img/17/10_2.jpg'),
(887, 17, 9, 'img/17/10_4.jpg'),
(888, 17, 11, 'img/17/10_5.jpg'),
(889, 17, 11, 'img/17/10_6.jpg'),
(890, 17, 5, 'img/17/10_7.jpg'),
(891, 17, 4, 'img/17/11_1.jpg'),
(892, 17, 7, 'img/17/12_1.jpg'),
(893, 17, 7, 'img/17/12_2.jpg'),
(894, 17, 7, 'img/17/12_3.jpg'),
(895, 18, 1, 'img/18/01_1.jpg'),
(896, 18, 1, 'img/18/02_2.JPG'),
(897, 18, 1, 'img/18/03_3.jpg'),
(898, 18, 2, 'img/18/04_4.jpg'),
(899, 18, 2, 'img/18/05_5.jpg'),
(900, 18, 3, 'img/18/06_6.jpg'),
(901, 18, 8, 'img/18/07_7.jpg'),
(902, 18, 6, 'img/18/08_8.jpg'),
(903, 18, 6, 'img/18/09_9.jpg'),
(904, 18, 5, 'img/18/10_10.jpg'),
(905, 18, 5, 'img/18/10_11.jpg'),
(906, 18, 5, 'img/18/10_12.jpg'),
(907, 18, 4, 'img/18/11_13.jpg'),
(908, 18, 7, 'img/18/12_14.jpg'),
(909, 18, 7, 'img/18/12_15.jpg'),
(910, 18, 9, 'img/18/13_16.jpg'),
(911, 18, 11, 'img/18/13_17.jpg'),
(912, 18, 7, 'img/18/13_18.jpg'),
(913, 19, 1, 'img/19/01_1.jpg'),
(914, 19, 1, 'img/19/01_2.jpg'),
(915, 19, 1, 'img/19/02_3.jpg'),
(916, 19, 1, 'img/19/03_4.jpg'),
(917, 19, 1, 'img/19/03_5.jpg'),
(918, 19, 2, 'img/19/04_6.jpg'),
(919, 19, 7, 'img/19/05_7.jpg'),
(920, 19, 3, 'img/19/06_10.jpg'),
(921, 19, 3, 'img/19/06_11.jpg'),
(922, 19, 3, 'img/19/06_8.jpg'),
(923, 19, 3, 'img/19/06_9.jpg'),
(924, 19, 8, 'img/19/07_12.jpg'),
(925, 19, 8, 'img/19/07_13.jpg'),
(926, 19, 8, 'img/19/07_14.jpg'),
(927, 19, 6, 'img/19/08_15.jpg'),
(928, 19, 9, 'img/19/08_16.jpg'),
(929, 19, 6, 'img/19/09_17.jpg'),
(930, 19, 5, 'img/19/10_18.jpg'),
(931, 19, 5, 'img/19/10_19.jpg'),
(932, 19, 11, 'img/19/10_20.jpg'),
(933, 19, 3, 'img/19/10_21.jpg'),
(934, 19, 4, 'img/19/11_22.jpg'),
(935, 19, 7, 'img/19/12_23.jpg'),
(936, 19, 7, 'img/19/12_24.jpg'),
(937, 19, 7, 'img/19/12_25.jpg'),
(938, 19, 9, 'img/19/12_26.jpg'),
(939, 19, 9, 'img/19/12_27.jpg'),
(940, 19, 11, 'img/19/12_28.jpg'),
(941, 19, 8, 'img/19/12_29.jpg'),
(942, 19, 11, 'img/19/12_30.jpg'),
(943, 19, 11, 'img/19/12_31.jpg'),
(944, 20, 1, 'img/20/01_1.jpg'),
(945, 20, 1, 'img/20/02_2.jpg'),
(946, 20, 1, 'img/20/03_3.jpg'),
(947, 20, 2, 'img/20/04_4.jpg'),
(948, 20, 2, 'img/20/05_5.jpg'),
(949, 20, 3, 'img/20/06_6.jpg'),
(950, 20, 9, 'img/20/06_7.jpg'),
(951, 20, 9, 'img/20/06_8.jpg'),
(952, 20, 8, 'img/20/07_10.jpg'),
(953, 20, 8, 'img/20/07_11.jpg'),
(954, 20, 8, 'img/20/07_9.jpg'),
(955, 20, 6, 'img/20/08_12.jpg'),
(956, 20, 6, 'img/20/09_13.jpg'),
(957, 20, 5, 'img/20/10_14.jpg'),
(958, 20, 4, 'img/20/10_15.jpg'),
(959, 20, 4, 'img/20/10_16.jpg'),
(960, 20, 4, 'img/20/10_17.jpg'),
(961, 20, 4, 'img/20/11_18.jpg'),
(962, 20, 7, 'img/20/12_19.jpg'),
(963, 20, 7, 'img/20/12_20.jpg'),
(964, 20, 7, 'img/20/13_21.jpg'),
(983, 21, 1, 'img/21/01_1.jpg'),
(984, 21, 1, 'img/21/02_2.jpg'),
(985, 21, 1, 'img/21/03_3.jpg'),
(986, 21, 2, 'img/21/04_4.jpg'),
(987, 21, 2, 'img/21/05_5.jpg'),
(988, 21, 3, 'img/21/06_6.jpg'),
(989, 21, 8, 'img/21/07_7.jpg'),
(990, 21, 8, 'img/21/07_8.jpg'),
(991, 21, 6, 'img/21/08_10.jpg'),
(992, 21, 6, 'img/21/08_11.jpg'),
(993, 21, 6, 'img/21/08_9.jpg'),
(994, 21, 6, 'img/21/09_12.jpg'),
(995, 21, 5, 'img/21/10_13.jpg'),
(996, 21, 5, 'img/21/10_14.jpg'),
(997, 21, 9, 'img/21/10_15.jpg'),
(998, 21, 4, 'img/21/11_16.jpg'),
(999, 21, 7, 'img/21/12_17.jpg'),
(1000, 21, 7, 'img/21/12_18.jpg'),
(1001, 21, 7, 'img/21/12_19.jpg'),
(1002, 21, 7, 'img/21/12_20.jpg'),
(1003, 21, 7, 'img/21/12_21.jpg'),
(1004, 21, 7, 'img/21/13_22.jpg'),
(1005, 21, 7, 'img/21/13_23.jpg'),
(1006, 22, 9, 'img/22/01_.jpeg'),
(1007, 22, 9, 'img/22/01__.jpeg'),
(1008, 22, 1, 'img/22/02_.jpeg'),
(1009, 22, 2, 'img/22/03_.jpeg'),
(1010, 22, 2, 'img/22/04_.jpeg'),
(1011, 22, 4, 'img/22/05_.jpeg'),
(1012, 22, 3, 'img/22/06_.jpeg'),
(1013, 22, 8, 'img/22/07_.jpeg'),
(1014, 22, 6, 'img/22/08_.jpeg'),
(1015, 22, 6, 'img/22/09_.jpeg'),
(1016, 22, 5, 'img/22/10_.jpeg'),
(1017, 22, 5, 'img/22/10__.jpeg'),
(1018, 22, 4, 'img/22/11_.jpeg'),
(1019, 22, 7, 'img/22/12_.jpeg'),
(1020, 22, 7, 'img/22/12__.jpeg'),
(1021, 22, 7, 'img/22/12___.jpeg'),
(1022, 22, 7, 'img/22/13_.jpeg'),
(1023, 23, 1, 'img/23/01_1.jpg'),
(1024, 23, 9, 'img/23/01_2.jpg'),
(1025, 23, 11, 'img/23/01_3.jpg'),
(1026, 23, 11, 'img/23/01_4.jpg'),
(1027, 23, 1, 'img/23/02_5.jpg'),
(1028, 23, 11, 'img/23/03_6.jpg'),
(1029, 23, 2, 'img/23/03_7.jpg'),
(1030, 23, 11, 'img/23/03_8.jpg'),
(1031, 23, 2, 'img/23/04_10.jpg'),
(1032, 23, 2, 'img/23/04_11.jpg'),
(1033, 23, 2, 'img/23/04_9.jpg'),
(1034, 23, 4, 'img/23/05_12.jpg'),
(1035, 23, 4, 'img/23/05_13.jpg'),
(1036, 23, 3, 'img/23/06_14.jpg'),
(1037, 23, 9, 'img/23/06_15.jpg'),
(1038, 23, 8, 'img/23/07_16.jpg'),
(1039, 23, 9, 'img/23/07_17.jpg'),
(1040, 23, 8, 'img/23/07_18.jpg'),
(1041, 23, 9, 'img/23/07_19.jpg'),
(1042, 23, 6, 'img/23/08_20.jpg'),
(1043, 23, 6, 'img/23/08_21.jpg'),
(1044, 23, 6, 'img/23/08_22.jpg'),
(1045, 23, 6, 'img/23/09_23.jpg'),
(1046, 23, 5, 'img/23/10_24.jpg'),
(1047, 23, 5, 'img/23/10_25.jpg'),
(1048, 23, 5, 'img/23/10_26.jpg'),
(1049, 23, 5, 'img/23/10_27.jpg'),
(1050, 23, 4, 'img/23/11_28.jpg'),
(1051, 23, 4, 'img/23/11_29.jpg'),
(1052, 23, 7, 'img/23/12_30.jpg'),
(1053, 23, 4, 'img/23/12_31.jpg'),
(1054, 23, 7, 'img/23/12_32.jpg'),
(1055, 23, 7, 'img/23/12_33.jpg'),
(1056, 23, 9, 'img/23/12_34.jpg'),
(1057, 23, 7, 'img/23/13_35.jpg'),
(1058, 23, 7, 'img/23/13_36.jpg'),
(1059, 23, 7, 'img/23/13_37.jpg'),
(1060, 24, 1, 'img/24/01_1.jpeg'),
(1061, 24, 1, 'img/24/02_2.jpeg'),
(1062, 24, 2, 'img/24/03_3.jpeg'),
(1063, 24, 2, 'img/24/03_4.jpeg'),
(1064, 24, 2, 'img/24/04_5.jpeg'),
(1065, 24, 2, 'img/24/05_6.jpeg'),
(1066, 24, 3, 'img/24/06_7.jpeg'),
(1067, 24, 8, 'img/24/07_8.jpeg'),
(1068, 24, 7, 'img/24/08_10.jpeg'),
(1069, 24, 6, 'img/24/08_11.jpeg'),
(1070, 24, 6, 'img/24/08_9.jpeg'),
(1071, 24, 6, 'img/24/09_12.jpeg'),
(1072, 24, 5, 'img/24/10_13.jpeg'),
(1073, 24, 5, 'img/24/10_14.jpeg'),
(1074, 24, 5, 'img/24/10_15.jpeg'),
(1075, 24, 4, 'img/24/11_16.jpg'),
(1076, 24, 7, 'img/24/12_17.jpeg'),
(1077, 24, 7, 'img/24/12_18.jpeg'),
(1078, 24, 9, 'img/24/12_19.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `photo_categories`
--

CREATE TABLE `photo_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `photo_categories`
--

INSERT INTO `photo_categories` (`id`, `name`) VALUES
(1, 'фасад, таблица с названием'),
(2, 'входная группа, фое, гардероб'),
(3, 'лест. пролёты, площадка последних этажей '),
(4, 'корридоры'),
(5, 'спорт. зал, раздевалки, душевые'),
(6, 'пищеблок'),
(7, 'классные кабинеты, мастерские, медблок'),
(8, 'сан. узлы'),
(9, 'основные дефекты '),
(11, 'Не подходит');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uid` varchar(200) NOT NULL,
  `pwd` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uid`, `pwd`) VALUES
(1, 'admin', '$2y$10$zYjlG0Pecn2XQUOBDhjl6.G4RxEw8c5gnnRGK15gPQxDBvIoecoFO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `educational`
--
ALTER TABLE `educational`
  ADD PRIMARY KEY (`id`),
  ADD KEY `region` (`region`);

--
-- Indexes for table `munipal`
--
ALTER TABLE `munipal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos_edu`
--
ALTER TABLE `photos_edu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schid` (`schid`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `photo_categories`
--
ALTER TABLE `photo_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `educational`
--
ALTER TABLE `educational`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `munipal`
--
ALTER TABLE `munipal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `photos_edu`
--
ALTER TABLE `photos_edu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1079;

--
-- AUTO_INCREMENT for table `photo_categories`
--
ALTER TABLE `photo_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `access`
--
ALTER TABLE `access`
  ADD CONSTRAINT `access_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`id`);

--
-- Constraints for table `educational`
--
ALTER TABLE `educational`
  ADD CONSTRAINT `educational_ibfk_1` FOREIGN KEY (`region`) REFERENCES `munipal` (`id`);

--
-- Constraints for table `photos_edu`
--
ALTER TABLE `photos_edu`
  ADD CONSTRAINT `photos_edu_ibfk_1` FOREIGN KEY (`schid`) REFERENCES `educational` (`id`),
  ADD CONSTRAINT `photos_edu_ibfk_2` FOREIGN KEY (`category`) REFERENCES `photo_categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
