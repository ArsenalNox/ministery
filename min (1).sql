-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2022 at 07:49 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

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
  `name_full` varchar(4000) NOT NULL,
  `address` varchar(240) DEFAULT NULL,
  `region` int(11) NOT NULL,
  `project_capacity` int(11) NOT NULL,
  `factial_capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `educational`
--

INSERT INTO `educational` (`id`, `name`, `name_full`, `address`, `region`, `project_capacity`, `factial_capacity`) VALUES
(1, 'Школа №000', 'МБОУ \"ШКОЛА №000\"', 'г. Оренбург ул. X/Y', 36, 233, 200);

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
  `path` varchar(200) NOT NULL,
  `thumb` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `photos_edu`
--

INSERT INTO `photos_edu` (`id`, `schid`, `category`, `path`, `thumb`) VALUES
(1, 1, 2, 'img/5/02_01.jpeg', 'img/5/02_01.jpeg'),
(2, 1, 3, 'img/5/02_07.jpeg', 'img/5/02_07.jpeg'),
(3, 1, 4, 'img/5/03_11.jpeg', 'img/5/03_11.jpeg'),
(4, 1, 13, 'img/5/05_04.jpeg', 'img/5/05_04.jpeg'),
(5, 1, 5, 'img/5/07_05.jpeg', 'img/5/07_05.jpeg'),
(6, 1, 2, 'img/5/09_05.jpg', 'img/5/09_05.jpg'),
(7, 1, 3, 'img/5/01_02.jpeg', 'img/5/01_02.jpeg'),
(8, 1, 5, 'img/5/02_08.jpeg', 'img/5/02_08.jpeg'),
(9, 1, 3, 'img/5/03_12.jpeg', 'img/5/03_12.jpeg'),
(10, 1, 11, 'img/5/05_05.jpeg', 'img/5/05_05.jpeg'),
(11, 1, 14, 'img/5/07_06.jpeg', 'img/5/07_06.jpeg'),
(12, 1, 1, 'img/5/09_06.jpg', 'img/5/09_06.jpg'),
(13, 1, 4, 'img/5/01_03.jpeg', 'img/5/01_03.jpeg'),
(14, 1, 1, 'img/5/03_01.jpeg', 'img/5/03_01.jpeg'),
(15, 1, 12, 'img/5/03-13.jpeg', 'img/5/03-13.jpeg'),
(16, 1, 7, 'img/5/06_01.jpeg', 'img/5/06_01.jpeg'),
(17, 1, 15, 'img/5/07_07.jpeg', 'img/5/07_07.jpeg'),
(18, 1, 1, 'img/5/09_07.jpg', 'img/5/09_07.jpg'),
(19, 1, 7, 'img/5/01_04.jpeg', 'img/5/01_04.jpeg'),
(20, 1, 1, 'img/5/03_02.jpeg', 'img/5/03_02.jpeg'),
(21, 1, 8, 'img/5/04_01.jpg', 'img/5/04_01.jpg'),
(22, 1, 10, 'img/5/06_02.jpeg', 'img/5/06_02.jpeg'),
(23, 1, 11, 'img/5/07_08.jpeg', 'img/5/07_08.jpeg'),
(24, 1, 4, 'img/5/09_08.jpg', 'img/5/09_08.jpg'),
(25, 1, 8, 'img/5/01_05.jpeg', 'img/5/01_05.jpeg'),
(26, 1, 12, 'img/5/03_03.jpeg', 'img/5/03_03.jpeg'),
(27, 1, 12, 'img/5/04_02.jpg', 'img/5/04_02.jpg'),
(28, 1, 1, 'img/5/06_03.jpeg', 'img/5/06_03.jpeg'),
(29, 1, 6, 'img/5/07_09.jpeg', 'img/5/07_09.jpeg'),
(30, 1, 13, 'img/5/09_09.jpg', 'img/5/09_09.jpg'),
(31, 1, 14, 'img/5/01_06.jpeg', 'img/5/01_06.jpeg'),
(32, 1, 8, 'img/5/03_04.jpeg', 'img/5/03_04.jpeg'),
(33, 1, 11, 'img/5/04_03.jpeg', 'img/5/04_03.jpeg'),
(34, 1, 2, 'img/5/06_04.jpeg', 'img/5/06_04.jpeg'),
(35, 1, 7, 'img/5/07_10.jpeg', 'img/5/07_10.jpeg'),
(36, 1, 10, 'img/5/09_10.jpg', 'img/5/09_10.jpg'),
(37, 1, 9, 'img/5/01_07.jpeg', 'img/5/01_07.jpeg'),
(38, 1, 14, 'img/5/03_05.jpeg', 'img/5/03_05.jpeg'),
(39, 1, 14, 'img/5/04_04.jpg', 'img/5/04_04.jpg'),
(40, 1, 6, 'img/5/06_05.jpeg', 'img/5/06_05.jpeg'),
(41, 1, 14, 'img/5/08_01.jpeg', 'img/5/08_01.jpeg'),
(42, 1, 7, 'img/5/09_11.jpg', 'img/5/09_11.jpg'),
(43, 1, 3, 'img/5/02_01.jpeg', 'img/5/02_01.jpeg'),
(44, 1, 12, 'img/5/03_06.jpeg', 'img/5/03_06.jpeg'),
(45, 1, 9, 'img/5/04_05.jpg', 'img/5/04_05.jpg'),
(46, 1, 8, 'img/5/06_06.jpeg', 'img/5/06_06.jpeg'),
(47, 1, 8, 'img/5/08_02.jpeg', 'img/5/08_02.jpeg'),
(48, 1, 12, 'img/5/09_12.jpg', 'img/5/09_12.jpg'),
(49, 1, 9, 'img/5/02_03.jpeg', 'img/5/02_03.jpeg'),
(50, 1, 15, 'img/5/03_07.jpeg', 'img/5/03_07.jpeg'),
(51, 1, 10, 'img/5/04_06.jpg', 'img/5/04_06.jpg'),
(52, 1, 11, 'img/5/07_01.jpeg', 'img/5/07_01.jpeg'),
(53, 1, 4, 'img/5/09_01.jpeg', 'img/5/09_01.jpeg'),
(54, 1, 9, 'img/5/09_13.jpg', 'img/5/09_13.jpg'),
(55, 1, 15, 'img/5/02_04.jpeg', 'img/5/02_04.jpeg'),
(56, 1, 13, 'img/5/03_08.jpeg', 'img/5/03_08.jpeg'),
(57, 1, 6, 'img/5/05_01.jpeg', 'img/5/05_01.jpeg'),
(58, 1, 6, 'img/5/07_02.jpeg', 'img/5/07_02.jpeg'),
(59, 1, 9, 'img/5/09_02.jpeg', 'img/5/09_02.jpeg'),
(60, 1, 2, 'img/5/09_14.jpg', 'img/5/09_14.jpg'),
(61, 1, 12, 'img/5/02_05.jpeg', 'img/5/02_05.jpeg'),
(62, 1, 8, 'img/5/03_09.jpeg', 'img/5/03_09.jpeg'),
(63, 1, 9, 'img/5/05_02.jpeg', 'img/5/05_02.jpeg'),
(64, 1, 4, 'img/5/07_03.jpeg', 'img/5/07_03.jpeg'),
(65, 1, 12, 'img/5/09_03.jpg', 'img/5/09_03.jpg'),
(66, 1, 6, 'img/5/09_15.jpg', 'img/5/09_15.jpg'),
(67, 1, 1, 'img/5/02_06.jpeg', 'img/5/02_06.jpeg'),
(68, 1, 15, 'img/5/03_10.jpeg', 'img/5/03_10.jpeg'),
(69, 1, 15, 'img/5/05_03.jpeg', 'img/5/05_03.jpeg'),
(70, 1, 4, 'img/5/07_04.jpeg', 'img/5/07_04.jpeg'),
(71, 1, 5, 'img/5/09_04.jpg', 'img/5/09_04.jpg');

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
(1, 'Ремонт фундамента, цоколя и отмостки.'),
(2, 'Ремонт кровли.'),
(3, 'Ремонт потолков, междуэтажных перекрытий и полов.'),
(4, 'Ремонт окон, дверей (входных и внутренних) и ворот учебных зданий'),
(5, 'Ремонт входных групп, лестниц и крылец.'),
(6, 'пищеблок Внутренние штукатурные, облицовочные и малярные работы.'),
(7, 'Ремонт фасадов.'),
(8, 'Ремонт системы отопления.'),
(9, 'Ремонт системы вентиляции.'),
(11, 'Ремонт системы горячего и холодного водоснабжения.'),
(12, 'Ремонт системы канализации.'),
(13, 'Электромонтажные работы.'),
(14, 'Ремонт слаботочных сетей.'),
(15, 'Ремонт систем пожаротушения.'),
(16, 'Без категории');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uid` varchar(200) NOT NULL,
  `pwd` varchar(200) NOT NULL,
  `type` int(1) NOT NULL,
  `region` int(11) DEFAULT NULL,
  `token` varchar(200) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uid`, `pwd`, `type`, `region`, `token`) VALUES
(1, 'M00-0000-AAAA', '$2y$10$zYjlG0Pecn2XQUOBDhjl6.G4RxEw8c5gnnRGK15gPQxDBvIoecoFO', 1, NULL, '292b84fac37674d415857c013511aee4'),
(86, 'M1-6150-MHJM', '$2y$10$z8.zohB52bZRmhu5oBXW9OFLN3ikhNeBKJBPqZCujbfHV6VJJcVg.', 0, 1, ''),
(87, 'M2-8957-JMAZ', '$2y$10$Z75c9dxEWmuP90EYO.3pSuqhlJMdYc8B3IaGpXMpymtdgNZZjDuw.', 0, 2, ''),
(88, 'M3-8603-CXBL', '$2y$10$e2FhrGO7FYowb/RmJ0zL4.AnK2zW6AbhsHJjd0ahNa8qNeoyuvgXe', 0, 3, ''),
(89, 'M4-8241-SEZY', '$2y$10$4YluB.hZy9TcGHBQ1wn6Cu/DeXqS3L98k3qqCyJ4Y8s5m6FhC8ZLS', 0, 4, ''),
(90, 'M5-9969-TZRB', '$2y$10$AjZZ/NILj8Th9K9WQ7x5W.MnXRLZ5Nnzjwhzrj09OuAnnuYiHUHV6', 0, 5, ''),
(91, 'M6-5530-QHZZ', '$2y$10$HPkUF/2VHxT/KdPqvyVlvejNnkVD1JZv6OyoNIJglckz/0Gi6vq6m', 0, 6, ''),
(92, 'M7-3491-XYMZ', '$2y$10$/yFl52anAtVlVXZfjracluxfjfaTPU0Ly/fIO3WFMd5CS8yVfeekG', 0, 7, ''),
(93, 'M8-3380-JFGS', '$2y$10$p0dNd8C5Nm.MPXMMS4eaDeXYpTN/.ekPfbW1.8DcVZaifZpgTHX8a', 0, 8, ''),
(94, 'M9-2593-YTSO', '$2y$10$11J7yDD6DBr8WmfkgBXYMujQnacLT52cwDo41q4q6/t5SbM0U1ESW', 0, 9, ''),
(95, 'M10-5818-FNHG', '$2y$10$.oCC574udpxjFOYFu6wuEukJ/ywTpoTnR7sf7N2F202s//T5VU4OS', 0, 10, ''),
(96, 'M11-4806-HFIP', '$2y$10$xzG9qqCGRmsnmnk4bC4QdeGVdC0Q/7YrVVX1l.wKMat0k7GGX2Tw6', 0, 11, ''),
(97, 'M12-7259-FOOP', '$2y$10$TkOuIurH79docZ3juPqUfOxXOcAv7GaNK4xogEpvwLZwhuhQwhJLm', 0, 12, ''),
(98, 'M13-6860-AGAA', '$2y$10$JQ.pwI6nSbTPzIcRPxktDOvCl4OXfbENFehaEEtH3whrMoUwjnMs6', 0, 13, ''),
(99, 'M14-6478-JUHV', '$2y$10$w08TfcCgHYGB2uRfFWiqi.f7ozgq1gRa20UVcuOSIpXlYUBUteF1m', 0, 14, 'deff7257a486487963b91166d37a403f'),
(100, 'M15-3334-VUUS', '$2y$10$FTy505GUJO9oHgGSwY.4TeDNVuTykNoqAsong7NNS1bEy9apon8M6', 0, 15, ''),
(101, 'M16-7707-UOEH', '$2y$10$kzYuodBkmj5DfNrxY/jLreO9RjvmIRh.HwWeb/OmPXMN5kGprjaP6', 0, 16, ''),
(102, 'M17-7263-RBUA', '$2y$10$HjifxvGdN7Mg35DqmgCGoe7WDYJfnPZGMemkH0EJ8pDiLajdjZedu', 0, 17, ''),
(103, 'M18-2784-AJUP', '$2y$10$kYlxxkcM3d57yQ/xGrXPc.hYHrjP77vCHNKZmInnlVPT2oe/PRvdu', 0, 18, ''),
(104, 'M19-6034-YIBA', '$2y$10$mqcWdYxZjX8ajDz5JGAy5ekjlRjqqsoDlJ7Xm.UReI9pl2DRn1Kba', 0, 19, ''),
(105, 'M20-4851-VMYB', '$2y$10$B2FwMiWa0peM2JU4tcVm5eN34PTlVnF6I2/SCkOnDXWsTnhYJH4FS', 0, 20, ''),
(106, 'M21-7558-ZYBO', '$2y$10$aXixfCxg9m64x4ubSMH50umx5p9uZFkGm34YLNNmmx668lIMFiBxm', 0, 21, ''),
(107, 'M22-3669-IBKP', '$2y$10$YUmRfIBjftDnNy0w2CDc2uVgpJcWgp/2nmPig69TJMhU1...Xh1Si', 0, 22, ''),
(108, 'M23-6422-XWES', '$2y$10$Xloi/3YxFDayA5XvocaLhur1ihX.71TAIx3xn51yW0sCs29Z16SOe', 0, 23, ''),
(109, 'M24-3905-AWWH', '$2y$10$5Uccd6Jl/BZJh2pZvTPxEuOeuJRSplMdFHV71op03IFh8eP2..uge', 0, 24, ''),
(110, 'M25-9406-KHZJ', '$2y$10$aN5tUDLALyEjGfMwvvef8.gvtlF3CS6UKVbK6/Oqr4c6OhidgCHAe', 0, 25, ''),
(111, 'M26-0733-VCST', '$2y$10$VRCUQnyXHSykMNj1q6Kk/eR2RfvXXPWQ.RVNLgBEjjvpaTRYlae2W', 0, 26, ''),
(112, 'M27-2523-JXGT', '$2y$10$Jp9XNQdvvv0fUUGRWmoxpedgI4HGzQ6CvVX2E3nqQvo57qsEkb/Hi', 0, 27, ''),
(113, 'M28-7878-DXGB', '$2y$10$T2GFdiM9gqb6uijjXqr2/.BO9mI1473YAheHNE7nnSHlP3HYV5Q9y', 0, 28, ''),
(114, 'M29-9629-GWIF', '$2y$10$2fHo2VzjMOQ7w67x0hiEX.3Lr36qdsUJyRgOriyL.ZjHfgLpV3IWm', 0, 29, ''),
(115, 'M30-4249-KJJG', '$2y$10$JblIUcdpO/Pnj75YNVnKF.1aZNLtgihwEJwAhehoZdHxD/NhhRj4O', 0, 30, ''),
(116, 'M31-3234-YJAG', '$2y$10$sondBl8n.QCmOU2Hm3y8y.yBTTWKum6YHNWGDvduPQidHgVCAnJGq', 0, 31, ''),
(117, 'M32-9527-OBXK', '$2y$10$aWpaAgXWSSX5yLouQbVpLubzIQRWziA7C/wcLuvcfhl6p8zYcbkyq', 0, 32, ''),
(118, 'M33-2656-FFZQ', '$2y$10$39Gx0uYw5DNauLLrd7VPMew/wXjIflkZSL/mSrp7ceJPeuqv/ScBC', 0, 33, ''),
(119, 'M34-8499-CCSP', '$2y$10$ulxohdPtD1KQ/nDod8K.0u9oBSSoeNvtmL7qQ4/CPgy4IwpQNVJpG', 0, 34, ''),
(120, 'M35-6172-QHNK', '$2y$10$zlM5XVrMPqCnd9eZXLxxSORTTq062/UXKUirkR9PihYkAzNMBd2nS', 0, 35, '1f573dc12432fa318e722344e7f9cee8'),
(121, 'M36-0186-OEUI', '$2y$10$3b8RWf7739SYkO9HKubQfeTt2H4Xg./Fh18IdNpnEJeb9GGhM2xVq', 0, 36, ''),
(122, 'M37-8767-RLON', '$2y$10$HRdGEc.20HEngSiucYyhfOa9z8vgtAacpvackaYStTtQqC9d0Dlw2', 0, 37, ''),
(123, 'M38-0815-QDTT', '$2y$10$OsSrB5o/QvXmWX1DA1bVDO6FxHzOHfomaNBHChwZhEy9QuvWurUfK', 0, 38, ''),
(124, 'M39-6325-WNNL', '$2y$10$HeMcfIqozmcTU1pVNoggoeapyovr1Gtqi3pB3WAir3rIbHjar5aXy', 0, 39, ''),
(125, 'M40-4480-YEBX', '$2y$10$Y7K251IwwxMWe3tAPqWyxOr3Tx/tJqQZ7i6aaaf74HSIORIwYyNRm', 0, 40, ''),
(126, 'M41-9322-TXAK', '$2y$10$lXz2FeryAX5c4V/4mPPwmeMwqkNFtNwcctqbYZGc/XNMf3./A5lz6', 0, 41, ''),
(127, 'M42-3057-GPJN', '$2y$10$6an/fft16E3jBZkx5rNl9.Nxne4s/C3xtkspX/r.1JRSlY5Th67O6', 0, 42, ''),
(128, 'M00-5328-TDSR', '$2y$10$7iKt9FVQbprgRcL3h92Ev.SVG/wkR8zzkfbrMnTwt/8tzcAro.NNq', 1, NULL, '74d942ed5b5218aba03a17c23e025c32'),
(129, 'M00-5329-TPLS', '$2y$10$miE0yPE2Gs8F4.old5vVn.hPig5TPxyA9jUkegN6U/ObTwyUTmvpq', 1, NULL, 'd199df3d4d11175b3de8053d5a489f93');

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` int(11) NOT NULL,
  `test_desc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `test_desc`) VALUES
(0, 'Regular user'),
(1, 'SuperUser');

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `region` (`region`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `educational`
--
ALTER TABLE `educational`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `munipal`
--
ALTER TABLE `munipal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `photos_edu`
--
ALTER TABLE `photos_edu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `photo_categories`
--
ALTER TABLE `photo_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`type`) REFERENCES `user_types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
