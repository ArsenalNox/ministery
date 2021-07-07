-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2021 at 09:43 PM
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
(10, 'МАОУ \"Средняя общеобразовательная школа № 7\" г. Гая Оренбургской области', '462635, Оренбургская область, г. Гай, ул. Декабристов, 10А', 9, 1988, 1179, 800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(476, 1, 7, 'img/1/12_110929.jpg');

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
(3, 'лест. пролёты, полщадка последних этажей '),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `munipal`
--
ALTER TABLE `munipal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `photos_edu`
--
ALTER TABLE `photos_edu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=477;

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
