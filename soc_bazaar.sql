-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2022 at 11:51 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soc_bazaar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admins_id` int(10) UNSIGNED NOT NULL,
  `user_type_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admins_status` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_info` datetime NOT NULL DEFAULT current_timestamp(),
  `update_info` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admins_id`, `user_type_id`, `name`, `username`, `image`, `phone`, `email`, `address`, `email_verified_at`, `password`, `remember_token`, `admins_status`, `create_info`, `update_info`) VALUES
(1, 27, 'Dhali Abir', 'biA0 l8Dl8', 'allImages/userimage/Pax3l_biA0 l8Dl8.jpg', '01315007287', 'dhaliabir@gmail.com', NULL, '38eac0aa2ac54022', 'e10adc3949ba59abbe56e057f20f883e', '2e850073c04cb511', 'A', '2022-08-29 15:42:54', '2022-08-29 15:42:54'),
(4, 26, 'Rifat', 'rifat', 'allImages/userimage/Rifat_1.png', '01632594374', 'rifat@gmail.com', NULL, '', 'e10adc3949ba59abbe56e057f20f883e', '6a47-df59-5111-7867', 'A', '2021-05-16 15:14:36', '2021-05-16 15:14:36'),
(46, 28, 'Dhali Abir', '9 1A9499ai', 'allImages/userimage/sz6UY_9 1A9499ai.jpg', '01684924439', 'abirdhali6876@gmail.com', NULL, '318379b8f9b71ace', 'e10adc3949ba59abbe56e057f20f883e', 'a5cb858e72e6be14', 'A', '2021-08-21 11:36:55', '2021-08-21 11:36:55');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brands_id` int(10) UNSIGNED NOT NULL,
  `brands_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brands_status` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BrandImage/Brand1.png',
  `create_info` datetime NOT NULL DEFAULT current_timestamp(),
  `update_info` datetime NOT NULL DEFAULT current_timestamp(),
  `shop_id` int(50) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brands_id`, `brands_name`, `brands_status`, `brand_image`, `create_info`, `update_info`, `shop_id`) VALUES
(1, '1More', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(2, 'A4 Tech', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(3, 'Acer', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(4, 'Adata', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(5, 'Altec Lansing', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(6, 'Amazon', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(7, 'AMD', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(8, 'Antec', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(9, 'AOC', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(10, 'Apacer', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(11, 'Apple', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(12, 'ASRock', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(13, 'Asus', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(14, 'Asustor', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(15, 'Aurora', 'A', 'BrandImage/Brand1.png', '0006-01-21 00:00:00', '0006-01-21 00:00:00', 0),
(16, 'Avermedia', 'A', 'BrandImage/Brand1.png', '0006-02-21 00:00:00', '0006-02-21 00:00:00', 0),
(17, 'Avira', 'A', 'BrandImage/Brand1.png', '0006-03-21 00:00:00', '0006-03-21 00:00:00', 0),
(18, 'Avita', 'A', 'BrandImage/Brand1.png', '0006-04-21 00:00:00', '0006-04-21 00:00:00', 0),
(19, 'Baseus', 'A', 'BrandImage/Brand1.png', '0006-05-21 00:00:00', '0006-05-21 00:00:00', 0),
(20, 'Belkin', 'A', 'BrandImage/Brand1.png', '0006-06-21 00:00:00', '0006-06-21 00:00:00', 0),
(21, 'BenQ', 'A', 'BrandImage/Brand1.png', '0006-07-21 00:00:00', '0006-07-21 00:00:00', 0),
(22, 'Biostar', 'A', 'BrandImage/Brand1.png', '0006-08-21 00:00:00', '0006-08-21 00:00:00', 0),
(23, 'Bitdefender', 'A', 'BrandImage/Brand1.png', '0006-09-21 00:00:00', '0006-09-21 00:00:00', 0),
(24, 'Bose', 'A', 'BrandImage/Brand1.png', '0006-10-21 00:00:00', '0006-10-21 00:00:00', 0),
(25, 'Boxlight', 'A', 'BrandImage/Brand1.png', '0006-11-21 00:00:00', '0006-11-21 00:00:00', 0),
(26, 'Boya', 'A', 'BrandImage/Brand1.png', '0006-12-21 00:00:00', '0006-12-21 00:00:00', 0),
(27, 'Brother', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(28, 'C-Net', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(29, 'Canon', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(30, 'Casio', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(31, 'Chuwi', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(32, 'Cooler Master', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(33, 'Corsair', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(34, 'Creative', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(35, 'Crown Micro', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(36, 'Crucial', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(37, 'CZUR', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(38, 'D-Link', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(39, 'Dahua', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(40, 'Deepcool', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(41, 'Deli', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(42, 'Dell', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(43, 'Delux', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(44, 'Digital X', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(45, 'DJI', 'A', 'BrandImage/Brand1.png', '0007-01-21 00:00:00', '0007-01-21 00:00:00', 0),
(46, 'Double A', 'A', 'BrandImage/Brand1.png', '0007-02-21 00:00:00', '0007-02-21 00:00:00', 0),
(47, 'Edifier', 'A', 'BrandImage/Brand1.png', '0007-03-21 00:00:00', '0007-03-21 00:00:00', 0),
(48, 'Epson', 'A', 'BrandImage/Brand1.png', '0007-04-21 00:00:00', '0007-04-21 00:00:00', 0),
(49, 'eScan', 'A', 'BrandImage/Brand1.png', '0007-05-21 00:00:00', '0007-05-21 00:00:00', 0),
(50, 'Esonic', 'A', 'BrandImage/Brand1.png', '0007-06-21 00:00:00', '0007-06-21 00:00:00', 0),
(51, 'F&D', 'A', 'BrandImage/Brand1.png', '0007-07-21 00:00:00', '0007-07-21 00:00:00', 0),
(52, 'Fantech', 'A', 'BrandImage/Brand1.png', '0007-08-21 00:00:00', '0007-08-21 00:00:00', 0),
(53, 'Fanvil', 'A', 'BrandImage/Brand1.png', '0007-09-21 00:00:00', '0007-09-21 00:00:00', 0),
(54, 'Fitbit', 'A', 'BrandImage/Brand1.png', '0007-10-21 00:00:00', '0007-10-21 00:00:00', 0),
(55, 'Fuji', 'A', 'BrandImage/Brand1.png', '0007-11-21 00:00:00', '0007-11-21 00:00:00', 0),
(56, 'G.Skill', 'A', 'BrandImage/Brand1.png', '0007-12-21 00:00:00', '0007-12-21 00:00:00', 0),
(57, 'Gamdias', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(58, 'Gamemax', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(59, 'Genius', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(60, 'Gigabyte', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(61, 'Golden Field', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(62, 'Google', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(63, 'GoPro', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(64, 'Grameen Phone', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(65, 'Grandstream', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(66, 'Havit', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(67, 'Hikvision', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(68, 'Hitachi', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(69, 'Honeywell', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(70, 'HP', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(71, 'Huawei', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(72, 'Hynix', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(73, 'HyperX', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(74, 'i-life', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(75, 'In Win', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(76, 'Intel', 'A', 'BrandImage/Brand1.png', '0008-01-21 00:00:00', '0008-01-21 00:00:00', 0),
(77, 'Jabra', 'A', 'BrandImage/Brand1.png', '0008-02-21 00:00:00', '0008-02-21 00:00:00', 0),
(78, 'JBL by Harman', 'A', 'BrandImage/Brand1.png', '0008-03-21 00:00:00', '0008-03-21 00:00:00', 0),
(79, 'Kaspersky', 'A', 'BrandImage/Brand1.png', '0008-04-21 00:00:00', '0008-04-21 00:00:00', 0),
(80, 'Lenovo', 'A', 'BrandImage/Brand1.png', '0008-05-21 00:00:00', '0008-05-21 00:00:00', 0),
(81, 'Lexar', 'A', 'BrandImage/Brand1.png', '0008-06-21 00:00:00', '0008-06-21 00:00:00', 0),
(82, 'Lexin', 'A', 'BrandImage/Brand1.png', '0008-07-21 00:00:00', '0008-07-21 00:00:00', 0),
(83, 'LG', 'A', 'BrandImage/Brand1.png', '0008-08-21 00:00:00', '0008-08-21 00:00:00', 0),
(84, 'Lian Li', 'A', 'BrandImage/Brand1.png', '0008-09-21 00:00:00', '0008-09-21 00:00:00', 0),
(85, 'Linksys', 'A', 'BrandImage/Brand1.png', '0008-10-21 00:00:00', '0008-10-21 00:00:00', 0),
(86, 'Logitech', 'A', 'BrandImage/Brand1.png', '0008-11-21 00:00:00', '0008-11-21 00:00:00', 0),
(87, 'Maken', 'A', 'BrandImage/Brand1.png', '0008-12-21 00:00:00', '0008-12-21 00:00:00', 0),
(88, 'Maxell', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(89, 'Microlab', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(90, 'Micronet', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(91, 'Micropack', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(92, 'Microsoft', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(93, 'Mikrotik', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(94, 'Motospeed', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(95, 'MSI', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(96, 'Netgear', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(97, 'Netis', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(98, 'Nexstgo', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(99, 'Nikon', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(100, 'Nintendo', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(101, 'Norton', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(102, 'NZXT', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(103, 'Optoma', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(104, 'ORICO', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(105, 'OVO', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(106, 'Panasonic', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(107, 'Panda', 'A', 'BrandImage/Brand1.png', '0009-01-21 00:00:00', '0009-01-21 00:00:00', 0),
(108, 'PANTUM', 'A', 'BrandImage/Brand1.png', '0009-02-21 00:00:00', '0009-02-21 00:00:00', 0),
(109, 'Paramount', 'A', 'BrandImage/Brand1.png', '0009-03-21 00:00:00', '0009-03-21 00:00:00', 0),
(110, 'Patriot', 'A', 'BrandImage/Brand1.png', '0009-04-21 00:00:00', '0009-04-21 00:00:00', 0),
(111, 'Phanteks', 'A', 'BrandImage/Brand1.png', '0009-05-21 00:00:00', '0009-05-21 00:00:00', 0),
(112, 'Philips', 'A', 'BrandImage/Brand1.png', '0009-06-21 00:00:00', '0009-06-21 00:00:00', 0),
(113, 'PlayStation', 'A', 'BrandImage/Brand1.png', '0009-07-21 00:00:00', '0009-07-21 00:00:00', 0),
(114, 'Plextone', 'A', 'BrandImage/Brand1.png', '0009-08-21 00:00:00', '0009-08-21 00:00:00', 0),
(115, 'PNY', 'A', 'BrandImage/Brand1.png', '0009-09-21 00:00:00', '0009-09-21 00:00:00', 0),
(116, 'Powerpac', 'A', 'BrandImage/Brand1.png', '0009-10-21 00:00:00', '0009-10-21 00:00:00', 0),
(117, 'Prolink', 'A', 'BrandImage/Brand1.png', '0009-11-21 00:00:00', '0009-11-21 00:00:00', 0),
(118, 'Rapoo', 'A', 'BrandImage/Brand1.png', '0009-12-21 00:00:00', '0009-12-21 00:00:00', 0),
(119, 'Razer', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(120, 'Remax', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(121, 'Reve', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(122, 'Ricoh', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(123, 'RODE', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(124, 'Rongta', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(125, 'Ryans', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(126, 'Safeway', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(127, 'Samsung', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(128, 'Sandisk', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(129, 'Sapphire', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(130, 'Seagate', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(131, 'Seemo', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(132, 'Sharp', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(133, 'Silicon Power', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(134, 'SilverStone', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(135, 'Sony', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(136, 'Steelseries', 'A', 'BrandImage/Brand1.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(137, 'Super Talant', 'A', 'BrandImage/Brand1.png', '2010-01-21 00:00:00', '2010-01-21 00:00:00', 0),
(138, 'Targus', 'A', 'BrandImage/Brand1.png', '2010-02-21 00:00:00', '2010-02-21 00:00:00', 0),
(139, 'TEAM', 'A', 'BrandImage/Brand1.png', '2010-03-21 00:00:00', '2010-03-21 00:00:00', 0),
(140, 'Tenda', 'A', 'BrandImage/Brand1.png', '2010-04-21 00:00:00', '2010-04-21 00:00:00', 0),
(141, 'Teutons', 'A', 'BrandImage/Brand1.png', '2010-05-21 00:00:00', '2010-05-21 00:00:00', 0),
(142, 'Thermaltake', 'A', 'BrandImage/Brand1.png', '2010-06-21 00:00:00', '2010-06-21 00:00:00', 0),
(143, 'Toshiba', 'A', 'BrandImage/Brand1.png', '2010-07-21 00:00:00', '2010-07-21 00:00:00', 0),
(144, 'Totolink', 'A', 'BrandImage/Brand1.png', '2010-08-21 00:00:00', '2010-08-21 00:00:00', 0),
(145, 'TP-Link', 'A', 'BrandImage/Brand1.png', '2010-09-21 00:00:00', '2010-09-21 00:00:00', 0),
(146, 'Transcend', 'A', 'BrandImage/Brand1.png', '2010-09-21 00:00:00', '2010-09-21 00:00:00', 0),
(147, 'Trend Micro', 'A', 'BrandImage/Brand1.png', '2010-09-21 00:00:00', '2010-09-21 00:00:00', 0),
(148, 'Trendnet', 'A', 'BrandImage/Brand1.png', '2010-09-21 00:00:00', '2010-09-21 00:00:00', 0),
(149, 'TRM', 'A', 'BrandImage/Brand1.png', '2010-09-21 00:00:00', '2010-09-21 00:00:00', 0),
(150, 'Tronix', 'A', 'BrandImage/Brand1.png', '2010-09-21 00:00:00', '2010-09-21 00:00:00', 0),
(151, 'Tucano', 'A', 'BrandImage/Brand1.png', '2010-09-21 00:00:00', '2010-09-21 00:00:00', 0),
(152, 'Twinmos', 'A', 'BrandImage/Brand1.png', '2010-01-21 00:00:00', '2010-01-21 00:00:00', 0),
(153, 'Ugreen', 'A', 'BrandImage/Brand1.png', '2010-02-21 00:00:00', '2010-02-21 00:00:00', 0),
(154, 'Value Top', 'A', 'BrandImage/Brand1.png', '2010-03-21 00:00:00', '2010-03-21 00:00:00', 0),
(155, 'Vention', 'A', 'BrandImage/Brand1.png', '2010-04-21 00:00:00', '2010-04-21 00:00:00', 0),
(156, 'ViewSonic', 'A', 'BrandImage/Brand1.png', '2010-05-21 00:00:00', '2010-05-21 00:00:00', 0),
(157, 'Vivanco', 'A', 'BrandImage/Brand1.png', '2010-06-21 00:00:00', '2010-06-21 00:00:00', 0),
(158, 'Vivitek', 'A', 'BrandImage/Brand1.png', '2010-07-21 00:00:00', '2010-07-21 00:00:00', 0),
(159, 'Wacom', 'A', 'BrandImage/Brand1.png', '2010-08-21 00:00:00', '2010-08-21 00:00:00', 0),
(160, 'Western Digital', 'A', 'BrandImage/Brand1.png', '2010-01-21 00:00:00', '2010-01-21 00:00:00', 0),
(161, 'Xbox', 'A', 'BrandImage/Brand1.png', '2010-02-21 00:00:00', '2010-02-21 00:00:00', 0),
(162, 'Xiaomi', 'A', 'BrandImage/Brand1.png', '2010-03-21 00:00:00', '2010-03-21 00:00:00', 0),
(163, 'Xigmatek', 'A', 'BrandImage/Brand1.png', '2010-04-21 00:00:00', '2010-04-21 00:00:00', 0),
(164, 'XP-Pen', 'A', 'BrandImage/Brand1.png', '2010-05-21 00:00:00', '2010-05-21 00:00:00', 0),
(165, 'Yunteng', 'A', 'BrandImage/Brand1.png', '2010-06-21 00:00:00', '2010-06-21 00:00:00', 0),
(166, 'Zebex', 'A', 'BrandImage/Brand1.png', '2010-07-21 00:00:00', '2010-07-21 00:00:00', 0),
(167, 'Zebra', 'A', 'BrandImage/Brand1.png', '2010-08-21 00:00:00', '2010-08-21 00:00:00', 0),
(168, 'ZKTeco', 'A', 'BrandImage/Brand1.png', '2010-01-21 00:00:00', '2010-01-21 00:00:00', 0),
(169, 'ZOTAC', 'A', 'BrandImage/Brand1.png', '2010-02-21 00:00:00', '2010-02-21 00:00:00', 0),
(170, 'Zyxel', 'A', 'BrandImage/Brand1.png', '2010-03-21 00:00:00', '2010-03-21 00:00:00', 0),
(14545, 'My Brand', 'A', 'BrandImage/Brand1.png', '2021-08-21 13:10:04', '2021-08-21 13:10:04', 4),
(14546, 'Razer', 'A', 'BrandImage/Brand1.png', '2021-08-21 13:22:01', '2021-08-21 13:22:01', 4);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(10) UNSIGNED NOT NULL,
  `categories_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_status` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `sub_menu_status` int(10) NOT NULL DEFAULT 1,
  `create_info` datetime NOT NULL DEFAULT current_timestamp(),
  `update_info` datetime NOT NULL DEFAULT current_timestamp(),
  `shop_id` int(50) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_status`, `sub_menu_status`, `create_info`, `update_info`, `shop_id`) VALUES
(1, 'Desktop', 'A', 1, '2021-05-18 00:00:00', '2021-05-18 00:00:00', 0),
(2, 'Laptop', 'A', 1, '2021-05-19 00:00:00', '2021-05-19 00:00:00', 0),
(3, 'Component', 'A', 1, '2021-05-20 00:00:00', '2021-05-20 00:00:00', 0),
(4, 'Monitor', 'A', 1, '2021-05-21 00:00:00', '2021-05-21 00:00:00', 0),
(5, 'UPS', 'A', 1, '2021-05-22 00:00:00', '2021-05-22 00:00:00', 0),
(6, 'Tablet', 'A', 1, '2021-05-23 00:00:00', '2021-05-23 00:00:00', 0),
(7, 'Office Equipment', 'A', 1, '2021-05-24 00:00:00', '2021-05-24 00:00:00', 0),
(8, 'Camera', 'A', 1, '2021-05-25 00:00:00', '2021-05-25 00:00:00', 0),
(9, 'Security', 'A', 1, '2021-05-26 00:00:00', '2021-05-26 00:00:00', 0),
(10, 'Networking', 'A', 1, '2021-05-27 00:00:00', '2021-05-27 00:00:00', 0),
(11, 'Accessories', 'A', 1, '2021-05-28 00:00:00', '2021-05-28 00:00:00', 0),
(12, 'Software', 'A', 1, '2021-05-29 00:00:00', '2021-05-29 00:00:00', 0),
(13, 'Server & Storage', 'A', 1, '2021-05-30 00:00:00', '2021-05-30 00:00:00', 0),
(14, 'TV', 'A', 1, '2021-05-31 00:00:00', '2021-05-31 00:00:00', 0),
(15, 'AC', 'A', 1, '2021-06-01 00:00:00', '2021-06-01 00:00:00', 0),
(16, 'Gadget', 'A', 1, '2021-06-02 00:00:00', '2021-06-02 00:00:00', 0),
(17, 'Gaming', 'A', 1, '2021-06-03 00:00:00', '2021-06-03 00:00:00', 0),
(18, 'Test', 'N', 1, '2021-05-19 22:17:01', '2021-05-19 22:17:01', 0),
(19, 'My Main Categories', 'A', 1, '2021-08-21 13:13:05', '2021-08-21 13:13:05', 0),
(20, 'My Main Categories', 'A', 1, '2021-08-21 13:14:08', '2021-08-21 13:14:08', 4),
(21, 'Gaming', 'A', 1, '2021-08-21 13:22:17', '2021-08-21 13:22:17', 4);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263);

-- --------------------------------------------------------

--
-- Table structure for table `markets`
--

CREATE TABLE `markets` (
  `markets_id` int(10) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `admins_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(100) NOT NULL DEFAULT 0,
  `create_info` datetime NOT NULL DEFAULT current_timestamp(),
  `update_info` datetime NOT NULL DEFAULT current_timestamp(),
  `market_status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'P'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `markets`
--

INSERT INTO `markets` (`markets_id`, `products_id`, `admins_id`, `quantity`, `create_info`, `update_info`, `market_status`) VALUES
(88, 53, 1, 1, '2022-10-23 12:58:58', '2022-10-23 12:58:58', 'C'),
(89, 153, 1, 1, '2022-10-23 12:59:05', '2022-10-23 12:59:05', 'C'),
(90, 10, 1, 1, '2022-10-23 12:59:41', '2022-10-23 12:59:41', 'C'),
(92, 118, 46, 1, '2022-10-23 15:21:29', '2022-10-23 15:21:29', 'P'),
(93, 128, 46, 2, '2022-10-23 15:21:36', '2022-10-23 15:21:36', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `oder_info`
--

CREATE TABLE `oder_info` (
  `order_id` int(10) NOT NULL,
  `admin_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `address` varchar(250) DEFAULT NULL,
  `price` varchar(50) NOT NULL DEFAULT '0',
  `quntity` varchar(10) NOT NULL DEFAULT '0',
  `order_status` varchar(10) NOT NULL DEFAULT 'A',
  `create_info` varchar(30) DEFAULT NULL,
  `update_by` varchar(30) DEFAULT NULL,
  `update_date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oder_info`
--

INSERT INTO `oder_info` (`order_id`, `admin_id`, `product_id`, `address`, `price`, `quntity`, `order_status`, `create_info`, `update_by`, `update_date`) VALUES
(1, 1, 53, NULL, '2000', '1', 'Pending', NULL, NULL, NULL),
(2, 1, 153, NULL, '400', '1', 'Pending', NULL, NULL, NULL),
(3, 1, 10, NULL, '4200', '1', 'Accept', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` int(10) UNSIGNED NOT NULL,
  `product_types_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `sub_categories_id` int(50) DEFAULT NULL,
  `brands_id` int(10) UNSIGNED DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` int(50) NOT NULL,
  `image_one` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_two` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_three` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_four` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `discount_price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sort_order` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_status` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_info` datetime NOT NULL DEFAULT current_timestamp(),
  `update_info` datetime NOT NULL DEFAULT current_timestamp(),
  `create_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_id` int(50) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `product_types_id`, `category_id`, `sub_categories_id`, `brands_id`, `country_id`, `name`, `details`, `product_code`, `image_one`, `image_two`, `image_three`, `image_four`, `price`, `discount_price`, `discount`, `quantity`, `sort_order`, `products_status`, `create_info`, `update_info`, `create_by`, `update_by`, `shop_id`) VALUES
(10, 0, 3, 28, 60, 18, 'Gigabyte 8GB DDR4 2666MHz Heatsink Desktop Ram', 'Memory Size: 8 GB Frequency: DDR4-2666 MHz Timing:16-16-16-35 Voltage:1.2V 100% Sorted & Tested High efficient classic black heat spreaders Profile: XMP 2.0 Lifetime Warranty User friendly design Comply with industrial standard JEDEC DDR4', 0, 'public/allImages/productimage/2FF9N_Gigabyte 8GB DDR4 2666MHz Heatsink Desktop Ram.png', 'public/allImages/productimage/6j9TF_Gigabyte 8GB DDR4 2666MHz Heatsink Desktop Ram.png', 'public/allImages/productimage/cQJya_Gigabyte 8GB DDR4 2666MHz Heatsink Desktop Ram.png', 'public/allImages/productimage/gadle_Gigabyte 8GB DDR4 2666MHz Heatsink Desktop Ram.png', 4500, 4200, 300, 500, 'Top', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abir@gmail.com', '', 5),
(11, 0, 3, 28, 60, 18, 'Gigabyte AORUS RGB 8GB 3600MHz Desktop RAM', 'Model: Gigabyte AORUS RGB 8GB\r\nFrequency: 3600MHz\r\nRGB Fusion Supported\r\nOperating voltage: 1.35V\r\nAMD Latency Timings- 18-19-19-30', 0, 'public/allImages/productimage/hf1JH_Gigabyte AORUS RGB 8GB 3600MHz Desktop RAM.jpg', 'No Image', 'No Image', 'No Image', 5860, 5500, 360, 15, 'Top', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abir@gmail.com', '', 5),
(12, 0, 3, 21, 76, 18, 'Intel Pentium Gold G6400 10th gen Coffee Lake Processor', 'Model: Intel Pentium Gold G6400\r\nSocket Supported FCLGA1200\r\nSpeed 4.00 GHz\r\nCores- 2 & Threads- 4\r\n4M Intel Smart Cache', 15250, 'public/allImages/productimage/DbdAR_Intel Pentium Gold G6400 10th gen Coffee Lake Processor.jpg', 'No Image', 'No Image', 'No Image', 6290, 5800, 1000, 8, 'Top', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abir@gmail.com', NULL, 5),
(13, 0, 10, 123, 13, 18, 'Asus RT-AC1200 V2 Dual-Band Wifi Wireless Router', 'Model: Asus RT-AC1200 V2\r\nExternal antenna x 4\r\n2.4 GHz and 5 GHz bands\r\n300+867 Mbps\r\nDual WAN function', 15061, 'public/allImages/productimage/8Jtpf_Asus RT-AC1200 V2 Dual-Band Wifi Wireless Router.jpg', 'public/allImages/productimage/l9DcH_Asus RT-AC1200 V2 Dual-Band Wifi Wireless Router.jpg', 'public/allImages/productimage/un9vJ_Asus RT-AC1200 V2 Dual-Band Wifi Wireless Router.jpg', 'No Image', 5900, 5399, 400, 34, 'Propular', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'rifat@gmail.com', NULL, 5),
(14, 0, 11, 123, 38, 18, 'Dlink DWR-932 4G LTE Pocket Router with Battery', 'Model: Dlink DWR-932 4G LTE\r\nUses a USIM card to connect to the Internet\r\nMicro-USB port for easy charging\r\nMicro –SD slot for 32GB', 8405, 'public/allImages/productimage/gV9tT_Dlink DWR-932 4G LTE Pocket Router with Battery.jpg', 'No Image', 'No Image', 'No Image', 4390, 4390, 250, 23, 'Top', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'rifat@gmail.com', NULL, 5),
(15, 0, 6, 61, 11, 18, 'Apple 10.2 Inch 7th Generation iPad MW762 Wi-Fi, 32GB, Gold', 'Model: Apple iPad 10.2 Inch Gold\r\nCapacity: 32GB\r\nCamera: 8MP back, 1.2MP front\r\nTouch ID fingerprint sensor\r\nUp to 10 hours of battery life', 14041, 'public/allImages/productimage/aIDdv_Apple 10.2 Inch 7th Generation iPad MW762 Wi-Fi, 32GB, Gold.jpg', 'public/allImages/productimage/kWeCq_Apple 10.2 Inch 7th Generation iPad MW762 Wi-Fi, 32GB, Gold.jpg', 'public/allImages/productimage/P0ECp_Apple 10.2 Inch 7th Generation iPad MW762 Wi-Fi, 32GB, Gold.jpg', 'No Image', 38000, 35000, 3000, 21, 'Propuler', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(16, 0, 16, 38, 42, 18, 'Dell E1920H 18.5 Inch HD (1366x768) WideScreen LED Monitor (DP, VGA)', 'Display Size (Inch)18.5\r\nDisplay TypeHD LED\r\nPanel TypeTN\r\nDisplay Resolution1360x768 (WxH) HD\r\nAspect Ratio16:09', 85321, 'public/allImages/productimage/WXsJs_Dell E1920H 18.5 Inch HD (1366x768) WideScreen LED Monitor (DP, VGA).jpg', 'public/allImages/productimage/kYxRC_Dell E1920H 18.5 Inch HD (1366x768) WideScreen LED Monitor (DP, VGA).jpg', 'public/allImages/productimage/kg5zl_Dell E1920H 18.5 Inch HD (1366x768) WideScreen LED Monitor (DP, VGA).jpg', 'No Image', 5000, 5422, 550, 25, 'Top', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(17, 0, 4, 55, 42, 18, 'Dell E1916HV 18.5 Inch LED Monitor (VGA)', 'Display Size (Inch)18.5\r\nDisplay TypeLED\r\nPanel TypeTN\r\nDisplay Resolution1366x768 (WxH) HD\r\nAspect Ratio16:9\r\nDisplay SurfaceAnti-Glare\r\nBrightness (cd/m2)200cd/m2\r\nContrast Ratio (TCR/DCR)600:1\r\nRefresh Rate (Hz)60Hz\r\nColor Gamut / Color Space72% (CIE 1931) color gamut, 82% (CIE 1976)\r\nColor Bit / Bit Depth8 bit\r\nColor Support / Display Color16.7 Million\r\nResponse Time (ms)5ms\r\nHorizontal Viewing Angle90 degree\r\nVertical Viewing Angle65 degree\r\nDot Pitch0.30 x 0.30 mm', 402, 'public/allImages/productimage/gRRQi_Dell E1916HV 18.5 Inch LED Monitor (VGA).jpg', 'No Image', 'No Image', 'No Image', 7600, 7100, 500, 15, 'Top', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(18, 0, 4, 55, 42, 18, 'Dell D1918H Inch LED Monitor (VGA, HDMI)', 'Model: Dell D1918H\r\nResponse Time: 5ms\r\nResolution: 1366 x 768\r\nFlicker-free screen and Comfort View', 10585, 'public/allImages/productimage/XcqtG_Dell D1918H 18.5 Inch LED Monitor (VGA, HDMI).jpg', 'public/allImages/productimage/o1wLc_Dell D1918H 18.5 Inch LED Monitor (VGA, HDMI).jpg', 'public/allImages/productimage/faYMc_Dell D1918H 18.5 Inch LED Monitor (VGA, HDMI).jpg', 'public/allImages/productimage/dwdkt_Dell D1918H 18.5 Inch LED Monitor (VGA, HDMI).jpg', 7380, 7200, 180, 20, 'Top', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(19, 0, 4, 55, 42, 18, 'Dell S2421HN 24\'\' IPS AMD FreeSync Full HD Monitor', 'Model: S2421HN\r\nLED edgelight system\r\nResolution: 1920x1080 at 75Hz\r\nAMD FreeSync, Response Time: 4 ms\r\nPorts: 2 x HDMI , Audio line-out', 15238, 'public/allImages/productimage/ONTK3_Dell S2421HN 24\'\' IPS AMD FreeSync Full HD Monitor.jpg', 'public/allImages/productimage/aO5MG_Dell S2421HN 24\'\' IPS AMD FreeSync Full HD Monitor.jpg', 'public/allImages/productimage/Mutvp_Dell S2421HN 24\'\' IPS AMD FreeSync Full HD Monitor.jpg', 'No Image', 16600, 15500, 1100, 10, 'Top', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(20, 0, 3, 21, 76, 18, 'Intel 9th Gen Core i5 9400F Processor', 'Model: Intel Core i5-9400F\r\nSocket Supported FCLGA1151\r\nSpeed 2.90 up to 4.10 GHz\r\nCor', 9252, 'public/allImages/productimage/Oiqy7_Intel 9th Gen Core i5 9400F Processor.jpg', 'public/allImages/productimage/Hhud4_Intel 9th Gen Core i5 9400F Processor.png', 'No Image', 'No Image', 13560, 12500, 1060, 20, 'Top', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(21, 0, 4, 55, 127, 18, 'Samsung 21.5 Inch S22F350F LED FULL HD Monitor', 'Model: Samsung 21.5 Inch S22F350F\r\nResolution:1920 x 1080 @ 60Hz\r\nResponse Time: 5ms\r\nViewing Angle:170°(H)/160°(V)\r\nBrightness: 200cd/m2', 6722, 'public/allImages/productimage/bUKhV_Samsung 21.5 Inch S22F350F LED FULL HD Monitor.jpg', 'No Image', 'No Image', 'No Image', 9800, 9000, 800, 15, 'Top', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(22, 0, 4, 55, 127, 18, 'SAMSUNG C24F390FHW Series Curved 24-Inch FHD Monitor', 'Model: SAMSUNG C24F390FHW\r\nResolution:1920 x 1080\r\nResponse Time: 4ms\r\nViewing Angle:178°(H)/178°(V)\r\nBrightness: 250 cd/m²', 6089, 'public/allImages/productimage/slyO2_SAMSUNG C24F390FHW Series Curved 24-Inch FHD Monitor.jpg', 'No Image', 'No Image', 'No Image', 15730, 14900, 830, 10, 'Top', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(23, 0, 4, 55, 127, 18, 'Samsung 27AM500 27\'\' M5 Smart WiFi FHD Monitor', 'Model: 27AM500 M5\r\nWorld\'s 1st Do-It-All Screen\r\nMobile meets big screen\r\nStream endless entertainment\r\nHDMI 2.0, Bluetooth, Wireless LAN', 16255, 'public/allImages/productimage/1E8Rq_Samsung 27AM500 27\'\' M5 Smart WiFi FHD Monitor.jpg', 'public/allImages/productimage/MzPKH_Samsung 27AM500 27\'\' M5 Smart WiFi FHD Monitor.jpg', 'public/allImages/productimage/p118S_Samsung 27AM500 27\'\' M5 Smart WiFi FHD Monitor.jpg', 'No Image', 31900, 31000, 900, 20, 'Top', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(24, 0, 4, 55, 127, 18, 'Samsung LU28E590DS 28 Inch 4K Ultra HD LED Monitor', 'Model: Samsung LU28E590DS\r\nResolution:3840 x 2160\r\nResponse Time: 1ms\r\nViewing Angle:170°(H)/160°(V)\r\nContrast Ratio:1000:1', 3210, 'public/allImages/productimage/PjjJG_Samsung LU28E590DS 28 Inch 4K Ultra HD LED Monitor.jpg', 'No Image', 'No Image', 'No Image', 47200, 43000, 4200, 15, 'Top', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(25, 0, 4, 55, 156, 18, 'ViewSonic VA2232-H 22” Full HD IPS Monitor', 'Model: VA2232-H\r\nFlicker-Free Technology & Blue Light Filter\r\n22\" FHD (1920x1080) IPS Display\r\nThree-sided Frameless Design\r\nHDMI and VGA Inputs', 15111, 'public/allImages/productimage/AVNc1_ViewSonic VA2232-H 22” Full HD IPS Monitor.jpg', 'public/allImages/productimage/2ShgB_ViewSonic VA2232-H 22” Full HD IPS Monitor.jpg', 'public/allImages/productimage/12x81_ViewSonic VA2232-H 22” Full HD IPS Monitor.jpg', 'No Image', 11500, 10700, 800, 15, 'Top', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(26, 0, 4, 55, 112, 18, 'PHILIPS 21.5” 226E9QDSB IPS GAMING LED AMD Free Sync MONITOR', 'Model: Philips 226E9QDSB/69\r\nPanel Size 21.5 inch / 54.6 cm\r\nLCD panel type IPS technology\r\nResolution 1920 x 1080 @ 75Hz\r\nFree Sync Supported Yes', 8769, 'public/allImages/productimage/hBS47_PHILIPS 21.5” 226E9QDSB IPS GAMING LED AMD Free Sync MONITOR.jpg', 'public/allImages/productimage/M56DU_PHILIPS 21.5” 226E9QDSB IPS GAMING LED AMD Free Sync MONITOR.jpg', 'No Image', 'No Image', 12300, 11300, 1000, 10, 'Top', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(27, 0, 4, 55, 95, 18, 'MSI G241V 23.8\'\' 75Hz FHD IPS Gaming Monitor', 'Model: MSI G241V\r\nAnti-Flicker and Less Blue Light\r\n75Hz Refresh Rate\r\n4ms GTG Response Time\r\nAMD FreeSync Technology', 14634, 'public/allImages/productimage/fha2G_MSI G241V 23.8\'\' 75Hz FHD IPS Gaming Monitor.jpg', 'public/allImages/productimage/77duA_MSI G241V 23.8\'\' 75Hz FHD IPS Gaming Monitor.jpg', 'No Image', 'No Image', 19750, 18199, 1551, 10, 'Top', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(28, 0, 4, 55, 83, 18, 'LG 24GL600F-B 24 Inch 144Hz Gaming Monitor', 'Model: LG 24GL600F-B\r\n24 inch Full HD (1920 x 1080) TN panel\r\nRadeon FreeSync\r\nResponse Time: 1ms\r\nReresh Rate: 144Hz', 10676, 'public/allImages/productimage/hPKV9_LG 24GL600F-B 24 Inch 144Hz Gaming Monitor.jpg', 'public/allImages/productimage/d0W3U_LG 24GL600F-B 24 Inch 144Hz Gaming Monitor.jpg', 'No Image', 'No Image', 25280, 23300, 1980, 10, 'Top', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(29, 0, 4, 55, 13, 18, 'ASUS VP278QGL 27” Full HD 1ms FreeSync Gaming Monitor', 'Model: VP278QGL\r\n27-inch Full HD monitor with 1ms (GTG) quick response time\r\nAdaptive-Sync/FreeSync technology\r\nDisplayPort, HDMI x 2 and D-sub ports included\r\n2-Watt stereo speakers & VESA wall-mountable', 16359, 'public/allImages/productimage/PYiX3_ASUS VP278QGL 27” Full HD 1ms FreeSync Gaming Monitor.jpg', 'public/allImages/productimage/5OOhX_ASUS VP278QGL 27” Full HD 1ms FreeSync Gaming Monitor.jpg', 'No Image', 'No Image', 26400, 25500, 900, 15, 'Top', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(30, 0, 4, 11, 5, 18, 'Dell D1918H 18.5 Inch LED Monitor (VGA, HDMI)', 'Model: Dell D1918H\r\nResponse Time: 5ms\r\nResolution: 1366 x 768\r\nFlicker-free screen and Comfort View', 10585, 'public/allImages/productimage/3TxDt_Dell D1918H 18.5 Inch LED Monitor (VGA, HDMI).jpg', 'public/allImages/productimage/OGNEb_Dell D1918H 18.5 Inch LED Monitor (VGA, HDMI).jpg', 'public/allImages/productimage/TJHVi_Dell D1918H 18.5 Inch LED Monitor (VGA, HDMI).jpg', 'No Image', 7380, 7200, 180, 15, 'Top', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(31, 0, 4, 52, 13, 18, 'ASUS VT168H 15.6 LED HD Touchscreen Monitor', 'Model: VT168H\r\n15.6” HD (1366x768) 10 Point Touch Capacity\r\nBlue Light Filter & Flicker Free\r\n-5 ° ~30 ° Tilt Angle\r\nWindows 10 Co', 14559, 'public/allImages/productimage/ElAzv_14559.jpg', 'public/allImages/productimage/MHkc2_ASUS VT168H 15.6 LED HD Touchscreen Monitor.jpg', 'public/allImages/productimage/FEJFc_ASUS VT168H 15.6 LED HD Touchscreen Monitor.jpg', 'No Image', 17520, 16200, 1300, 10, 'Popular', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(32, 0, 3, 133, 119, 18, 'Razer Mamba HyperFlux + Firefly HyperFlux', 'Model: Razer Mamba HyperFlux + Firefly HyperFlux\r\n1000 Hz Ultrapolling\r\n16,000 DPI 5G optical sensor\r\nDual hard and cloth mat surface\r\nlightweight wireless gaming mouse', 8318, 'public/allImages/productimage/LzChS_8318.jpg', 'public/allImages/productimage/3EdhX_Razer Mamba HyperFlux + Firefly HyperFlux.jpg', 'public/allImages/productimage/di7wU_Razer Mamba HyperFlux + Firefly HyperFlux.jpg', 'No Image', 19200, 15000, 4000, 22, 'Top', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'rifat@gmail.com', NULL, 5),
(33, 0, 4, 52, 13, 18, 'ASUS VT229H 21.5  Full HD 5ms Low Blue Light Flicker Free Touch Monitor', 'Model: ASUS VT229H\r\nResolution: Full FD (1920x1080)\r\nResponse Time: 5ms\r\nViewing Angle: 178°(H)/178°(V)\r\nBrightness: 250 cd/㎡', 9387, 'public/allImages/productimage/9yTBJ_9387.jpg', 'No Image', 'No Image', 'No Image', 26580, 24800, 2000, 15, 'Popular', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(34, 0, 4, 52, 156, 18, 'ViewSonic TD1655 16 Portable Multi-Touch IPS FHD Monitor', 'Model: TD1655\r\n16”FHD (1920 x 1080) IPS Multi-Touch Display\r\n800:1 Static Contrast Ratio\r\nUSB Type-C, Mini-HDMI Inputs\r\nOptimize for Portable Gaming', 16265, 'public/allImages/productimage/4vCxe_16265.jpg', 'public/allImages/productimage/frqMj_ViewSonic TD1655 16 Portable Multi-Touch IPS FHD Monitor.jpg', 'No Image', 'No Image', 26500, 26000, 500, 10, 'Popular', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(35, 0, 4, 52, 42, 18, 'DELL P2418HT 24\' Full HD 60Hz Touch Monitor', 'Model: DELL P2418HT\r\n1920 x 1080 Full HD Resolution @ 60Hz\r\n6ms (GTG) Response Time\r\nHDMI, VGA, DisplayPort Video Inputs\r\nHeight, Swivel, Tilt Adjustable', 14951, 'public/allImages/productimage/ab9dU_14951.jpg', 'public/allImages/productimage/lkK09_DELL P2418HT 24\' Full HD 60Hz Touch Monitor.jpg', 'No Image', 'No Image', 29300, 27100, 2200, 15, 'Popular', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(36, 0, 10, 52, 70, 18, 'HP E24T G4 23.8 FHD Touch Monitor', 'Model: E24T G4\r\n23.8\"FHD (1920 x 1080) IPS Touch Display\r\nResponse times: 5ms GtG\r\nInterface:HDMI, VGA, USB, DisplayPort\r\nLow blue light mode; Anti-glare', 15513, 'public/allImages/productimage/1d9jl_15513.jpg', 'public/allImages/productimage/3N5lP_HP E24T G4 23.8 FHD Touch Monitor.jpg', 'public/allImages/productimage/6rF6J_HP E24T G4 23.8 FHD Touch Monitor.jpg', 'No Image', 32000, 30000, 2000, 15, 'Top', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(37, 0, 4, 55, 3, 18, 'Acer ET221Qbi 21.5 W-LED HD Monitor', 'Model: Acer ET221Qbi\r\n21.5\" FHD (1920 x 1080)Display\r\nRefresh rate: 60Hz\r\nResponse Time: 4 ms\r\nColour Supported: 16.7 Million', 11851, 'public/allImages/productimage/KoTrU_11851.jpg', 'public/allImages/productimage/FgQyR_Acer ET221Qbi 21.5 W-LED HD Monitor.jpg', 'No Image', 'No Image', 9300, 8800, 500, 15, 'Popular', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(38, 0, 4, 55, 3, 18, 'Acer ET221Qbi 21.5 W-LED HD Monitor', 'Model: Acer ET221Qbi21.5\" FHD (1920 x 1080)DisplayRefresh rate: 60HzResponse Time: 4 msColour Supported: 16.7 Million', 11851, 'No Image', 'No Image', 'No Image', 'No Image', 9300, 8800, 500, 15, 'Top', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(39, 0, 4, 55, 3, 18, 'ACER K202HQL 19.5 Inch HD LED Monitor', 'Model: ACER K202HQL\r\nBrightness: 200 cd/m²\r\nResponse Time: 5 ms\r\nRefresh Rate: 60Hz\r\n19.5\" HD(1366x768) WXGA Display', 13046, 'public/allImages/productimage/mzZcm_13046.jpg', 'public/allImages/productimage/BtAzi_ACER K202HQL 19.5 Inch HD LED Monitor.jpg', 'public/allImages/productimage/6uYp0_ACER K202HQL 19.5 Inch HD LED Monitor.jpg', 'No Image', 5300, 5000, 300, 20, 'Popular', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(40, 0, 4, 55, 3, 18, 'Acer V196HQL 18.5 HD LED Monitor', 'Model: Acer V196HQL\r\n(SXGA)1366 x 768@60 Hz\r\nAspect Ratio 16:9\r\nResponse Time 5 ms\r\nColour Supported 16.7 Million', 15001, 'No Image', 'public/allImages/productimage/No72O_Acer V196HQL 18.5 HD LED Monitor.jpg', 'public/allImages/productimage/Ou44i_Acer V196HQL 18.5 HD LED Monitor.jpg', 'No Image', 6350, 5900, 450, 20, 'Popular', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(41, 0, 3, 18, 8, 18, 'Antec F12 120mm RGB Case Fan (Single Pack)', 'Model: F12\r\nFan Speed (RPM): 1000\r\nAir Pressure (mmH2O): 0.65\r\nNoise Level (dBA): 21.5\r\nAirflow (CFM): 30.5', 16135, 'public/allImages/productimage/O4fm7_16135.jpg', 'No Image', 'No Image', 'No Image', 800, 555, 5, 20, 'Popular', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(42, 0, 3, 18, 8, 18, 'Antec Prizm 120 ARGB Cooling Fan', 'Model: Antec Prizm 120 ARGB\r\nHydraulic Bearing\r\nShock-Absorbing Pads\r\nAddressable RGB LED Lighting\r\n18 Independent RGB LED Beads', 10599, 'public/allImages/productimage/phEX2_10599.jpg', 'public/allImages/productimage/gKVad_Antec Prizm 120 ARGB Cooling Fan.jpg', 'public/allImages/productimage/RHK14_Antec Prizm 120 ARGB Cooling Fan.jpg', 'No Image', 1050, 950, 100, 15, 'Popular', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(43, 0, 3, 18, 57, 18, 'Gamdias AEOLUS M2 1201 120mm RGB Casing Cooling Fan', 'Model: Gamdias AEOLUS M2 1201\r\nAddressable RGB Motherboard Sync\r\nTrio RGB Rings Lighting Effect\r\nHydraulic Bearing\r\n30 Lighting Effects', 11496, 'public/allImages/productimage/kGIC1_11496.jpg', 'No Image', 'No Image', 'No Image', 1100, 900, 200, 15, 'Top', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(44, 0, 3, 18, 102, 18, 'NZXT Aer P140 140MM Static Pressure PWM Casing Fan', 'Model: NZXT Aer P140\r\nSleeved Cables and Vibration Dampeners\r\nWhisper-Soft 21 dBA\r\nFluid Dynamic Bearing\r\nWinglet Designed Fan Blades', 15290, 'public/allImages/productimage/MicA9_15290.jpg', 'public/allImages/productimage/TFS8h_NZXT Aer P140 140MM Static Pressure PWM Casing Fan.jpg', 'No Image', 'No Image', 2100, 1600, 500, 20, 'Popular', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(45, 0, 3, 18, 57, 18, 'Gamdias AEOLUS M2-1204R Casing Cooling Fan', 'Model: Gamdias AEOLUS M2-1204R\r\nFan Speed: 500 - 1500 RPM±10%\r\nFan dimensions (4-fan pack)\r\nRated Voltage: 12 V (Fan) / 5V(LED)\r\nRGB Motherboard Sync', 10182, 'public/allImages/productimage/t6YXL_10182.jpg', 'No Image', 'No Image', 'No Image', 3700, 2700, 1000, 30, 'Popular', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(46, 0, 3, 18, 84, 18, 'Lian Li Bora Digital 120mm RGB Cooling Fan (Grey)', 'Model: Lian Li Bora Digital\r\nFan Speed: 900~1800 RPM\r\nMax. Air Flow: 57.97 CFM\r\nAcoustical Noise: 19.4 ~ 29 dBA\r\nDimension: 120mm x 120mm x 27mm', 11139, 'public/allImages/productimage/VOkpT_11139.jpg', 'public/allImages/productimage/f60Zv_Lian Li Bora Digital 120mm RGB Cooling Fan (Grey).jpg', 'public/allImages/productimage/j3UXg_Lian Li Bora Digital 120mm RGB Cooling Fan (Grey).jpg', 'public/allImages/productimage/CPdLy_Lian Li Bora Digital 120mm RGB Cooling Fan (Grey).jpg', 4500, 4000, 500, 20, 'Popular', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(47, 0, 3, 18, 8, 18, 'Antec Prizm 120 ARGB 3+2+C Cooling Fan', 'Model: AntecPrizm 120 ARGB 3+2+C\r\nHydraulic Bearing\r\nShock-Absorbing Pads\r\nAddressable RGB LED Lighting\r\n18 Independent RGB LED Beads', 12264, 'public/allImages/productimage/N1FzY_12264.jpg', 'public/allImages/productimage/sAcpX_Antec Prizm 120 ARGB 3+2+C Cooling Fan.jpg', 'No Image', 'No Image', 4700, 4000, 700, 15, 'Popular', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(48, 0, 3, 18, 33, 18, 'Corsair LL120 Dual Light Loop RGB LED Casing Fan (3 Pack Combo)', 'Model: Corsair LL120\r\nCREATED FOR QUIET\r\nTWO RGB LIGHT LOOPS\r\nCOMPLETE PWM CONTROL\r\nCONTROL, CUSTOMIZE AND SYNC', 12811, 'public/allImages/productimage/Q8Xh0_12811.jpg', 'No Image', 'No Image', 'No Image', 8360, 7600, 760, 20, 'Popular', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(49, 0, 3, 18, 33, 18, 'Corsair QL120 RGB 120mm PWM Casing Fan (3 Pack)', 'Model: Corsair QL120 RGB 120mm\r\nMetallic Accents\r\nLow-Noise Fan Blade\r\nPowerful, Compact Control\r\nAnti-Vibration Rubber Dampers', 15866, 'public/allImages/productimage/kGHoJ_15866.jpg', 'public/allImages/productimage/Bg3GN_Corsair QL120 RGB 120mm PWM Casing Fan (3 Pack).jpg', 'public/allImages/productimage/riafA_Corsair QL120 RGB 120mm PWM Casing Fan (3 Pack).jpg', 'public/allImages/productimage/AXnAK_Corsair QL120 RGB 120mm PWM Casing Fan (3 Pack).jpg', 9700, 9000, 700, 15, 'Popular', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(50, 0, 3, 18, 57, 18, 'Gamdias AEOLUS M2 1203 Lite 120mm RGB PC Case & Radiator Fan (3 Fans Pack)', 'Model: AEOLUS M2 1203 Lite\r\nUp to 30 adjustable built-in chromatic lighting effects\r\nAddressable RGB LED\r\nMotherboard Sync functionality\r\nSilent Operation & Hyper-Efficient', 14665, 'public/allImages/productimage/YrREt_14665.jpg', 'No Image', 'No Image', 'No Image', 2300, 1800, 500, 15, 'Popular', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(51, 0, 3, 18, 33, 18, 'Corsair LL120 RGB 120mm Dual Light Loop White', 'Model: LL120\r\nFan speed: 360 RPM to 2,200 RPM\r\nDual RGB Lighting Loop\r\nStriking White Housing\r\nComplete PWM Control', 15145, 'public/allImages/productimage/SbRoI_15145.jpg', 'No Image', 'No Image', 'No Image', 8300, 7800, 500, 15, 'Top', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(52, 0, 3, 18, 33, 18, 'Corsair LL120 Dual Light Loop RGB LED Casing Fan (Single)', 'Model: Corsair LL120\r\nCREATED FOR QUIET\r\nTWO RGB LIGHT LOOPS\r\nCOMPLETE PWM CONTROL\r\nCONTROL, CUSTOMIZE AND SYNC', 14445, 'public/allImages/productimage/UaXQq_14445.jpg', 'No Image', 'No Image', 'No Image', 3400, 3100, 300, 20, 'Popular', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(53, 0, 3, 19, 8, 18, 'Antec Atom 350W 350 Watt Power Supply', 'Model: Antec Atom 350W\r\n350W Continuous Power\r\n230VAC 5A 47-63Hz\r\n2 Year Warranty', 10460, 'public/allImages/productimage/vY1ai_10460.jpg', 'No Image', 'No Image', 'No Image', 2250, 2000, 250, 15, 'Popular', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(54, 0, 3, 19, 8, 18, 'Antec Atom V450 Non-Modular IN SMPS Gaming Power Supply', 'Model: V450\r\nGuaranteed 450W continuous power\r\nFrequency Range 47-63Hz\r\nVoltage: 100VAC – 240VAC\r\n120mm silent fan', 16095, 'public/allImages/productimage/yKpVr_16095.jpg', 'No Image', 'No Image', 'No Image', 2600, 2000, 600, 20, 'Popular', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(55, 0, 3, 19, 8, 18, 'Antec Atom 550W 550 Watt Power Supply', 'Model: Antec Atom 550W\r\n550W Continuous Power\r\n230VAC 5A 47-63Hz\r\n2 Year Warranty', 10458, 'public/allImages/productimage/H12fJ_10458.jpg', 'public/allImages/productimage/o4W2y_Antec Atom 550W 550 Watt Power Supply.jpg', 'No Image', 'No Image', 2800, 2200, 600, 30, 'Popular', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(56, 0, 3, 19, 142, 18, 'Thermaltake W0422RE Litepower 350W Non Modular Power Supply', 'Model: Thermaltake W0422RE Litepower 350W\r\nMassive and Dedicated +12V Output\r\nUltra Quiet Fan\r\nCables with High Flexibility\r\nHigh-Quality Components', 12984, 'public/allImages/productimage/VaFNN_12984.jpg', 'public/allImages/productimage/XPahd_Thermaltake W0422RE Litepower 350W Non Modular Power Supply.jpg', 'public/allImages/productimage/ZO0I4_Thermaltake W0422RE Litepower 350W Non Modular Power Supply.jpg', 'No Image', 2980, 2800, 180, 15, 'Popular', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(57, 0, 3, 19, 32, 18, 'Cooler Master ELITE 400 V4 230V ATX Power Supply', 'Model: Cooler Master ELITE 400 V4 230V\r\nActive PFC + Forward Topology Design\r\nHigh Temperature Resistance\r\nDurable, Reliable, And Safe\r\nPeak Power Tolerance', 15685, 'public/allImages/productimage/DkpiJ_15685.jpg', 'public/allImages/productimage/ZqWM4_Cooler Master ELITE 400 V4 230V ATX Power Supply.jpg', 'public/allImages/productimage/1FAHe_Cooler Master ELITE 400 V4 230V ATX Power Supply.jpg', 'No Image', 3420, 3300, 120, 25, 'Popular', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(58, 0, 3, 19, 33, 18, 'Corsair CV450 450Watt 80 Plus Bronze Certified Power Supply', 'Model: Corsair CV450\r\n80 PLUS Bronze certified\r\n88% Ultra-Efficient, Compact design\r\nContinuous, Reliable Output\r\nLow-noise Operation, Stealth Mode', 12806, 'public/allImages/productimage/snZjK_12806.jpg', 'public/allImages/productimage/74K1s_Corsair CV450 450Watt 80 Plus Bronze Certified Power Supply.jpg', 'public/allImages/productimage/OPvW1_Corsair CV450 450Watt 80 Plus Bronze Certified Power Supply.jpg', 'No Image', 3740, 3500, 240, 15, 'Popular', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(59, 0, 3, 19, 57, 18, 'Gamdias Kratos E1-500 500 Watt RGB Power Supply', 'Model: Gamdias KRATOS E1-500\r\n80 PLUS certified up to 80% Efficiency\r\nDeliver upto 80% efficiency at 230V\r\nBuilt in RGB Lighting Effects\r\nSupport Intel C6/C7 power state', 9245, 'public/allImages/productimage/cB4Qx_9245.png', 'No Image', 'No Image', 'No Image', 3900, 3100, 800, 15, 'Popular', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(60, 0, 3, 19, 8, 18, 'Antec VP550 Plus 550W Non Modular Power Supply', 'Model: Antec VP550 Plus\r\nGuaranteed 550W Continuous Power\r\n80 PLUS certified\r\n120mm Silent Fan\r\nCircuitShield', 12671, 'public/allImages/productimage/aKl86_12671.jpg', 'public/allImages/productimage/1x6QZ_Antec VP550 Plus 550W Non Modular Power Supply.jpg', 'public/allImages/productimage/Rv7Os_Antec VP550 Plus 550W Non Modular Power Supply.jpg', 'No Image', 4200, 3800, 400, 20, 'Popular', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(61, 0, 3, 19, 8, 18, 'Antec VP550 Plus 550W Non Modular Power Supply', 'Model: Antec VP550 Plus\r\nGuaranteed 550W Continuous Power\r\n80 PLUS certified\r\n120mm Silent Fan\r\nCircuitShield', 12671, 'public/allImages/productimage/zMGzf_12671.jpg', 'public/allImages/productimage/yKigt_Antec VP550 Plus 550W Non Modular Power Supply.jpg', 'public/allImages/productimage/Gfhfr_Antec VP550 Plus 550W Non Modular Power Supply.jpg', 'No Image', 4200, 3500, 700, 15, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(62, 0, 3, 19, 60, 18, 'Gigabyte P550B 550W 80 Plus Bronze Certified Power Supply', 'Model: Gigabyte P550B\r\nOVP/OPP/SCP/UVP/OCP/OTP protection\r\n80 PLUS Bronze certified\r\nReliable flat cable\r\nSingle +12V rail', 14388, 'public/allImages/productimage/l2wUY_14388.jpg', 'public/allImages/productimage/fZeFu_Gigabyte P550B 550W 80 Plus Bronze Certified Power Supply.jpg', 'public/allImages/productimage/zaYQW_Gigabyte P550B 550W 80 Plus Bronze Certified Power Supply.jpg', 'No Image', 4560, 4200, 360, 15, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(63, 0, 3, 19, 32, 18, 'Cooler Master MWE 450W V2 Non-Modular 80 Plus Bronze Power Supply', 'Model: Cooler Master MWE 450W V2\r\nPeak Power Tolerance\r\nHigh Temperature Resistance\r\nDC-to-DC + LLC Circuit Design\r\n80 PLUS Bronze 230V EU Certified', 15734, 'public/allImages/productimage/ZCz88_15734.jpg', 'public/allImages/productimage/tC5K4_Cooler Master MWE 450W V2 Non-Modular 80 Plus Bronze Power Supply.jpg', 'public/allImages/productimage/xqbHu_Cooler Master MWE 450W V2 Non-Modular 80 Plus Bronze Power Supply.jpg', 'No Image', 4230, 4200, 30, 20, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(64, 0, 3, 19, 33, 18, 'Corsair RM650 650Watt 80 Plus Gold Certified Power Fully Modular Supply', 'Model: Corsair RM650\r\n80 PLUS Gold certified\r\nContinuous, Reliable Output\r\n80 Plus Gold-Certified Efficiency\r\nLow-noise Operation, Stealth Mode', 12809, 'public/allImages/productimage/CMtYX_12809.jpg', 'public/allImages/productimage/GWQli_Corsair RM650 650Watt 80 Plus Gold Certified Power Fully Modular Supply.jpg', 'public/allImages/productimage/KUSQC_Corsair RM650 650Watt 80 Plus Gold Certified Power Fully Modular Supply.jpg', 'No Image', 10310, 9300, 1010, 15, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(65, 0, 3, 19, 33, 18, 'Corsair RM650X 80 Plus Gold Fully Modular ATX 650 Watts Power Supply', 'Model: Corsair RM650X\r\nTuned for Low-Noise Operation\r\nFully Modular Cables\r\nTen-Year Warranty\r\nCompact Size', 14136, 'public/allImages/productimage/bsENo_14136.jpg', 'public/allImages/productimage/FZeOe_Corsair RM650X 80 Plus Gold Fully Modular ATX 650 Watts Power Supply.jpg', 'public/allImages/productimage/NCgDU_Corsair RM650X 80 Plus Gold Fully Modular ATX 650 Watts Power Supply.jpg', 'No Image', 10500, 9300, 1200, 20, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(66, 0, 3, 19, 32, 18, 'Cooler Master MWE 750W Fully Modular 80 PLUS Gold Certified Power Supply', 'Model: MWE 750W Fully Modular 80 PLUS Gold Certified\r\n80 Plus Gold Certified, Fully Modular Cabling\r\nReliable & Stable Voltage outputs\r\n120MM LDB Fan,Advanced Circuitry\r\nFan Size: 120mm', 12298, 'public/allImages/productimage/hZNl8_12298.jpg', 'public/allImages/productimage/zH2v6_Cooler Master MWE 750W Fully Modular 80 PLUS Gold Certified Power Supply.jpg', 'public/allImages/productimage/jmYou_Cooler Master MWE 750W Fully Modular 80 PLUS Gold Certified Power Supply.jpg', 'public/allImages/productimage/z5Psz_Cooler Master MWE 750W Fully Modular 80 PLUS Gold Certified Power Supply.jpg', 10090, 9500, 560, 20, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(67, 0, 3, 19, 32, 18, 'Cooler Master MWE Gold 850 V2 Full Modular 850W 80 Plus Gold Power Supply', 'Model: MWE Gold 850 V2 Full Modular 850W 80 Plus Gold\r\n80 Plus Gold Efficiency, 2 EPS Connectors\r\n120mm HDB Fan\r\nHigh Temperature Resilience\r\nFull Modular Cabling', 14937, 'public/allImages/productimage/UdRQA_14937.jpg', 'No Image', 'No Image', 'No Image', 14890, 13000, 1890, 20, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(68, 0, 3, 19, 33, 18, 'Corsair RM650X 80 Plus Gold Fully Modular ATX 650 Watts Power Supply', 'Model: Corsair RM650X\r\nTuned for Low-Noise Operation\r\nFully Modular Cables\r\nTen-Year Warranty\r\nCompact Size', 14136, 'public/allImages/productimage/s9Exa_14136.jpg', 'public/allImages/productimage/cjmV4_Corsair RM650X 80 Plus Gold Fully Modular ATX 650 Watts Power Supply.jpg', 'public/allImages/productimage/hVzoM_Corsair RM650X 80 Plus Gold Fully Modular ATX 650 Watts Power Supply.jpg', 'No Image', 10500, 9300, 1200, 20, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(69, 0, 3, 19, 60, 18, 'Gigabyte AORUS P850W 850W 80+ Gold Certified Power Supply', 'Model: Gigabyte AORUS P850W\r\nOCP/OTP/OVP/OPP/UVP/SCP protection\r\nFully Modular Design\r\n80 Plus Gold certified\r\n100% Japanese Capacitors', 14390, 'public/allImages/productimage/VylaO_14390.jpg', 'public/allImages/productimage/ZFjAZ_Gigabyte AORUS P850W 850W 80+ Gold Certified Power Supply.jpg', 'public/allImages/productimage/UEzi7_Gigabyte AORUS P850W 850W 80+ Gold Certified Power Supply.jpg', 'No Image', 14300, 13000, 1300, 20, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(70, 0, 3, 19, 32, 18, 'Cooler Master MWE Gold 850 V2 Full Modular 850W 80 Plus Gold Power Supply', 'Model: MWE Gold 850 V2 Full Modular 850W 80 Plus Gold\r\n80 Plus Gold Efficiency, 2 EPS Connectors\r\n120mm HDB Fan\r\nHigh Temperature Resilience\r\nFull Modular Cabling', 14937, 'public/allImages/productimage/K7NRS_14937.jpg', 'No Image', 'No Image', 'No Image', 14890, 13000, 1890, 15, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(71, 0, 3, 19, 33, 18, 'Thermaltake Toughpower GF1 ARGB 850W 80 Plus Gold Fully Modular Power Supply', 'Model: Thermaltake Toughpower GF1 850W\r\nZero Cable Platform\r\n＜30mV Low Ripple Noise\r\nIlluminate with Twisting Blade\r\nExtremely Strict Voltage Regulation', 15306, 'public/allImages/productimage/vHSSs_15306.jpg', 'public/allImages/productimage/KdHtv_Thermaltake Toughpower GF1 ARGB 850W 80 Plus Gold Fully Modular Power Supply.jpg', 'No Image', 'No Image', 15300, 14000, 1300, 15, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(72, 0, 3, 23, 60, 18, 'GIGABYTE GA-F2A68HM-DS2 Ultra Durable 4 Plus AMD FM2 Socket Motherboard', 'Model: GIGABYTE GA-F2A68HM-DS2\r\nSocket FM2+ supports AMD FM2+/FM2 A-series APU\r\nGIGABYTE UEFI DualBIOS\r\nAll solid capacitors design\r\nNative USB 3.0 and SATA3 ports', 14690, 'public/allImages/productimage/1f9x3_14690.jpg', 'public/allImages/productimage/2GiWP_GIGABYTE GA-F2A68HM-DS2 Ultra Durable 4 Plus AMD FM2 Socket Motherboard.jpg', 'public/allImages/productimage/xoLHG_GIGABYTE GA-F2A68HM-DS2 Ultra Durable 4 Plus AMD FM2 Socket Motherboard.jpg', 'No Image', 4770, 4500, 270, 20, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(73, 0, 3, 23, 12, 18, 'Asrock H81M-VG4 R3.0 Super Alloy ATX Motherboard', 'Model: Asrock H81M-VG4 R3.0\r\nSupports 4th Generation Intel Processor\r\nChipsets: Intel® H81\r\nSupports Dual Channel DDR3/DDR3L\r\nMax capacity 16GB', 8853, 'public/allImages/productimage/A6kHW_8853.jpg', 'public/allImages/productimage/yng7w_Asrock H81M-VG4 R3.0 Super Alloy ATX Motherboard.png', 'public/allImages/productimage/kbMw8_Asrock H81M-VG4 R3.0 Super Alloy ATX Motherboard.jpg', 'No Image', 5400, 5000, 400, 15, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(74, 0, 3, 23, 60, 18, 'Gigabyte GA-H81M-DS2 Micro ATX Motherboard', 'Model: GA-H81M-DS2\r\nCPU: 4th Generation Intel Processors\r\nChipset: Intel H81 Express\r\n2 x 1.5V DDR3\r\n3 x PCI Express slot', 8761, 'public/allImages/productimage/K6FoE_8761.jpg', 'public/allImages/productimage/GIZnx_Gigabyte GA-H81M-DS2 Micro ATX Motherboard.jpg', 'No Image', 'No Image', 5970, 5600, 370, 15, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(75, 0, 3, 23, 95, 18, 'MSI A320M-A Pro Max AMD Motherboard', 'Model: MSI A320M-A Pro Max\r\nSupports 1st, 2nd and 3rd Gen AMD Ryzen/ with Radeon Vega Graphics\r\nAudio: studio grade sound quality\r\nCore Boost: support more cores\r\nTurbo M.2: Running at PCI-E Gen3 x4', 10969, 'public/allImages/productimage/F5RAr_10969.jpg', 'public/allImages/productimage/jHDza_MSI A320M-A Pro Max AMD Motherboard.jpg', 'public/allImages/productimage/8AItR_MSI A320M-A Pro Max AMD Motherboard.jpg', 'No Image', 6080, 5700, 380, 20, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(76, 0, 3, 23, 95, 18, 'MSI A320M-A Pro AMD Micro-ATX Motherboard', 'Model: MSI A320M-A Pro\r\nSupports 1st, 2nd and 3rd Gen AMD Ryzen/ with Radeon Vega Graphics\r\nSupports up to 3200 (OC) MHz DDR4 RAM\r\nCore Boost: support more cores\r\nDDR4 Boost, Audio Boost', 14032, 'public/allImages/productimage/01OBZ_14032.jpg', 'public/allImages/productimage/E7a7Y_MSI A320M-A Pro AMD Micro-ATX Motherboard.jpg', 'public/allImages/productimage/VlOVz_MSI A320M-A Pro AMD Micro-ATX Motherboard.jpg', 'public/allImages/productimage/VyLpv_MSI A320M-A Pro AMD Micro-ATX Motherboard.jpg', 6080, 5700, 380, 15, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(77, 0, 3, 23, 95, 18, 'MSI H410M PRO-E Intel 10th Gen Micro-ATX Motherboard', 'Model: MSI H410M PRO-E\r\nSupports 10th Gen Intel Core and Pentium Gold/ Celeron Processors\r\nPCI-E Steel Armor\r\n2x DDR4 Memory Slots\r\nIntel LAN, Audio Boost, DDR4 Boost', 15677, 'public/allImages/productimage/Ckl3k_15677.jpg', 'No Image', 'No Image', 'No Image', 8140, 7600, 540, 15, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(78, 0, 3, 23, 13, 18, 'Asus Prime A520M-K AM4 Micro-ATX AMD Motherboard Asus Prime A520M-K AM4 Micro-ATX AMD Motherboard Asus Prime A520M-K AM4 Micro-ATX AMD Motherboard Asus Prime A520M-K AM4 Micro-ATX AMD Motherboard', 'Model: Asus Prime A520M-K\r\nAMD AM4 Socket for Ryzen 5000 Series/ 4000 G-Series/ 3000 Series Desktop Processors\r\n5X Protection III\r\nUltrafast connectivity\r\nComprehensive cooling', 14970, 'public/allImages/productimage/VayqV_14970.jpg', 'public/allImages/productimage/WBvDV_Asus Prime A520M-K AM4 Micro-ATX AMD Motherboard Asus Prime A520M-K AM4 Micro-ATX AMD Motherboard Asus Prime A520M-K AM4 Micro-ATX AMD Motherboard Asus Prime A520M-K AM4 Micro-ATX AMD Motherboard.jpg', 'public/allImages/productimage/uqlLe_Asus Prime A520M-K AM4 Micro-ATX AMD Motherboard Asus Prime A520M-K AM4 Micro-ATX AMD Motherboard Asus Prime A520M-K AM4 Micro-ATX AMD Motherboard Asus Prime A520M-K AM4 Micro-ATX AMD Motherboard.jpg', 'No Image', 8250, 7700, 550, 20, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(79, 0, 3, 23, 60, 18, 'Gigabyte B365M Gaming HD 9th Gen Motherboard', 'Model: Gigabyte B365M Gaming\r\nSupports 9th and 8th Gen Processor\r\nDual Channel Non-ECC Unbuffered\r\nRAM Slot-2 x DDR4 DIMM\r\nUltra-Fast M.2 with PCIe Gen3 X4', 10647, 'public/allImages/productimage/rshH2_10647.jpg', 'public/allImages/productimage/YHKzS_Gigabyte B365M Gaming HD 9th Gen Motherboard.jpg', 'No Image', 'No Image', 8570, 8000, 570, 20, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(80, 0, 3, 23, 12, 18, 'ASRock H470M-HDV 10th Gen Intel M-ATX Motherboard', 'Model: H470M-HDV\r\nSupports 10th Gen Intel Core Processors\r\nSupports DDR4 2933MHz\r\n1 PCIe 3.0 x16, 1 PCIe 3.0 x1\r\n3 Graphics Outputs', 16597, 'public/allImages/productimage/0PUKm_16597.jpg', 'public/allImages/productimage/82yHY_ASRock H470M-HDV 10th Gen Intel M-ATX Motherboard.jpg', 'public/allImages/productimage/6GbYh_ASRock H470M-HDV 10th Gen Intel M-ATX Motherboard.jpg', 'No Image', 8000, 7500, 500, 20, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(81, 0, 3, 23, 13, 18, 'Asus Prime A520M-A Micro ATX AM4 Motherboard Asus Prime A520M-A Micro ATX AM4 Motherboard Asus Prime A520M-A Micro ATX AM4 Motherboard Asus Prime A520M-A Micro ATX AM4 Motherboard', 'Model: Asus Prime A520M-A\r\nAMD Ryzen 5000/4000G Series & AMD Ryzen 3rd Generation Processors\r\nUltrafast connectivity\r\nUltrafast connectivity\r\nComprehensive cooling', 14201, 'public/allImages/productimage/9Ka0Q_14201.jpg', 'public/allImages/productimage/LlyLG_Asus Prime A520M-A Micro ATX AM4 Motherboard Asus Prime A520M-A Micro ATX AM4 Motherboard Asus Prime A520M-A Micro ATX AM4 Motherboard Asus Prime A520M-A Micro ATX AM4 Motherboard.jpg', 'public/allImages/productimage/XOPnX_Asus Prime A520M-A Micro ATX AM4 Motherboard Asus Prime A520M-A Micro ATX AM4 Motherboard Asus Prime A520M-A Micro ATX AM4 Motherboard Asus Prime A520M-A Micro ATX AM4 Motherboard.jpg', 'No Image', 8680, 8300, 380, 15, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(82, 0, 3, 23, 13, 18, 'Asus TUF Gaming B550M-Plus Micro ATX AM4 Motherboard', 'Model: Asus TUF Gaming B550M-Plus\r\nAMD Ryzen 5000/4000G Series & AMD Ryzen 3rd Generation Processors\r\nMade for online gaming\r\nComprehensive cooling\r\nEnhanced power solution', 13966, 'public/allImages/productimage/06500_13966.jpg', 'public/allImages/productimage/H8Qd9_Asus TUF Gaming B550M-Plus Micro ATX AM4 Motherboard.jpg', 'public/allImages/productimage/HhdAv_Asus TUF Gaming B550M-Plus Micro ATX AM4 Motherboard.jpg', 'No Image', 17360, 16400, 960, 20, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(83, 0, 3, 23, 13, 18, 'Asus TUF Gaming H470-Pro Wi-Fi 10th Gen ATX Motherboard', 'Model: Asus TUF Gaming H470-Pro Wi-Fi\r\nBuild in Intel Socket 1200 for 10th Gen Intel Core, Pentium Gold and Celeron Processors\r\nNext-gen connectivity\r\nMade for online gaming\r\nEnhanced power solution', 15721, 'public/allImages/productimage/udEzq_15721.jpg', 'public/allImages/productimage/wBz2r_Asus TUF Gaming H470-Pro Wi-Fi 10th Gen ATX Motherboard.jpg', 'public/allImages/productimage/HxKu3_Asus TUF Gaming H470-Pro Wi-Fi 10th Gen ATX Motherboard.jpg', 'No Image', 18000, 16800, 2000, 20, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(84, 0, 3, 23, 13, 18, 'Asus TUF Gaming H470-Pro Wi-Fi 10th Gen ATX Motherboard', 'Model: Asus TUF Gaming H470-Pro Wi-Fi\r\nBuild in Intel Socket 1200 for 10th Gen Intel Core, Pentium Gold and Celeron Processors\r\nNext-gen connectivity\r\nMade for online gaming\r\nEnhanced power solution', 15721, 'public/allImages/productimage/5pVYw_15721.jpg', 'public/allImages/productimage/dMmBX_Asus TUF Gaming H470-Pro Wi-Fi 10th Gen ATX Motherboard.jpg', 'No Image', 'No Image', 18000, 16800, 1200, 200, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(85, 0, 3, 23, 60, 18, 'Gigabyte B550M DS3H AC Ultra Durable Micro ATX AMD Motherboard', 'Model: Gigabyte B550M DS3H AC UD\r\nAMD Ryzen 5000/4000G Series & AMD Ryzen 3rd Generation Processors\r\nDual Ultra-Fast NVMe\r\nRGB FUSION 2.0 Supports\r\nHigh-Quality Audio Capacitors', 15184, 'public/allImages/productimage/4DDGS_15184.jpg', 'No Image', 'No Image', 'No Image', 11390, 10600, 790, 20, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(86, 0, 3, 23, 95, 18, 'MSI B560M PRO-VDH WIFI Intel 10th and 11th Gen Micro ATX Motherboard', 'Model: B560M PRO-VDH WIFI\r\nSupports 10th and 11th Gen, Pentium Gold and Celeron processors\r\nSocket: LGA 1200, Form Factor: Micro ATX\r\nSupports DDR4, up to 5066(OC) MHz\r\n2.5G LAN, Lightning Fast Experience', 16144, 'public/allImages/productimage/R3YoJ_16144.jpg', 'public/allImages/productimage/NWdTA_MSI B560M PRO-VDH WIFI Intel 10th and 11th Gen Micro ATX Motherboard.jpg', 'public/allImages/productimage/edaxi_MSI B560M PRO-VDH WIFI Intel 10th and 11th Gen Micro ATX Motherboard.jpg', 'No Image', 14300, 13500, 800, 15, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(87, 0, 3, 23, 95, 18, 'MSI MAG B460M Mortar Wi-Fi Intel 10th Gen Micro-ATX Motherboard', 'Model: MSI MAG B460M Mortar Wi-Fi\r\nIntel LGA 1200 socket: Ready for 10th Gen Intel Core processors\r\nIntel Wi-Fi 6 AX Solution\r\nEnhanced Power Design\r\nPremium Thermal Solution', 14436, 'public/allImages/productimage/ii7T2_14436.jpg', 'public/allImages/productimage/ljbyU_MSI MAG B460M Mortar Wi-Fi Intel 10th Gen Micro-ATX Motherboard.jpg', 'public/allImages/productimage/dOxry_MSI MAG B460M Mortar Wi-Fi Intel 10th Gen Micro-ATX Motherboard.jpg', 'No Image', 14650, 13500, 1150, 20, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(88, 0, 3, 23, 13, 18, 'Asus TUF Gaming B460M-Plus Wi-Fi Intel 10th Gen Micro-ATX Motherboard', 'Model: Asus TUF Gaming B460M-Plus Wi-FI\r\nIntel LGA 1200 socket\r\nAura Sync RGB Lighting\r\nMade for Online Gaming\r\nEnhanced power solution', 13827, 'public/allImages/productimage/2k3Di_13827.jpg', 'public/allImages/productimage/rg3pC_Asus TUF Gaming B460M-Plus Wi-Fi Intel 10th Gen Micro-ATX Motherboard.jpg', 'public/allImages/productimage/eoAlN_Asus TUF Gaming B460M-Plus Wi-Fi Intel 10th Gen Micro-ATX Motherboard.jpg', 'No Image', 15180, 13800, 1380, 25, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(89, 0, 3, 23, 60, 18, 'Gigabyte B560M AORUS ELITE Intel 10th and 11th Gen Micro ATX Motherboard', 'Model: B560M AORUS ELITE\r\nSupports 11th and 10th Gen Intel Core Processors\r\nDual Ultra-Fast NVMe PCIe 4.0/3.0 x4 M.2\r\nDual-Channel DDR4, 4 DIMMs\r\nAddressable LED & RGB LED Strips', 16488, 'public/allImages/productimage/qWuE7_16488.jpg', 'public/allImages/productimage/7KoaH_Gigabyte B560M AORUS ELITE Intel 10th and 11th Gen Micro ATX Motherboard.jpg', 'public/allImages/productimage/TQUu0_Gigabyte B560M AORUS ELITE Intel 10th and 11th Gen Micro ATX Motherboard.jpg', 'No Image', 14500, 14000, 500, 30, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(90, 0, 3, 23, 12, 18, 'Asrock B450M Pro4-F AMD & Team Delta RGB 8GB 3200MHz RAM Eid Bundle Offer 2', 'Model: Asrock B450M Pro4-F AMD & Team Delta\r\nMotherboard: AMD AM4 Socket, Max. Memory 64GB\r\nMotherboard: Supports DDR4 3200+ (OC)\r\nRAM: 8GB DDR4 3200MHz\r\nRAM: Tested Latency CL16-18-18-38', 16920, 'public/allImages/productimage/B9WTj_16920.jpg', 'No Image', 'No Image', 'No Image', 14000, 13500, 500, 25, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(91, 0, 3, 23, 95, 18, 'MSI B550-A Pro AM4 AMD ATX Motherboard', 'Model: MSI B550-A Pro\r\nAMD Ryzen 5000/4000G Series & AMD Ryzen 3rd Generation Processors\r\nSupports DDR4 4400+ (OC)\r\nFast & Future-Ready Storage\r\nPCB with 2OZ Thickened Copper', 13940, 'public/allImages/productimage/h4sOS_13940.jpg', 'public/allImages/productimage/BcMfT_MSI B550-A Pro AM4 AMD ATX Motherboard.jpg', 'public/allImages/productimage/qlbn3_MSI B550-A Pro AM4 AMD ATX Motherboard.jpg', 'No Image', 15840, 14300, 1540, 30, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(92, 0, 3, 23, 95, 18, 'MSI Z490-A PRO 10th Gen Intel ATX Motherboard', 'Model: MSI Z490-A PRO\r\nSupports 10th Gen Intel Core / Pentium Celeron processors for LGA 1200 socket\r\n2.5G LAN, Turbo M.2, Audio Boost\r\nSupports DDR4 Memory, up to 5000(OC) MHz\r\nPremium Thermal Solution, Ready 4 the Future', 14439, 'public/allImages/productimage/HOOrM_14439.jpg', 'public/allImages/productimage/Ocz1d_MSI Z490-A PRO 10th Gen Intel ATX Motherboard.jpg', 'public/allImages/productimage/fse4j_MSI Z490-A PRO 10th Gen Intel ATX Motherboard.jpg', 'No Image', 16500, 15900, 600, 20, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(93, 0, 3, 23, 13, 18, 'ASUS ROG MAXIMUS XII FORMULA Z490 Intel 10th Gen Wi-Fi ATX Motherboard', 'Model: ASUS ROG MAXIMUS XII FORMULA Z490\r\nLGA 1200 socket for 10th-gen Intel Core desktop processors\r\nRobust power delivery\r\nCooling & Performance\r\nIntel Wi-Fi 6, 10 Gb Ethernet', 13977, 'public/allImages/productimage/hyydF_13977.jpg', 'public/allImages/productimage/X9dbS_ASUS ROG MAXIMUS XII FORMULA Z490 Intel 10th Gen Wi-Fi ATX Motherboard.jpg', 'public/allImages/productimage/FfvH9_ASUS ROG MAXIMUS XII FORMULA Z490 Intel 10th Gen Wi-Fi ATX Motherboard.jpg', 'No Image', 53710, 51500, 2210, 20, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5);
INSERT INTO `products` (`products_id`, `product_types_id`, `category_id`, `sub_categories_id`, `brands_id`, `country_id`, `name`, `details`, `product_code`, `image_one`, `image_two`, `image_three`, `image_four`, `price`, `discount_price`, `discount`, `quantity`, `sort_order`, `products_status`, `create_info`, `update_info`, `create_by`, `update_by`, `shop_id`) VALUES
(94, 0, 3, 23, 13, 18, 'Asus ROG Strix TRX40-XE Gaming AMD Motherboard', 'Model: Asus ROG Strix TRX40-XE\r\nFor the latest 3rd Gen AMD Ryzen Threadripper series processors\r\nComprehensive cooling\r\nBest gaming connectivity\r\nHigh fidelity audio with SupremeFX S1220', 15049, 'public/allImages/productimage/pfuWh_15049.jpg', 'public/allImages/productimage/Mqe4P_Asus ROG Strix TRX40-XE Gaming AMD Motherboard.jpg', 'public/allImages/productimage/GLDch_Asus ROG Strix TRX40-XE Gaming AMD Motherboard.jpg', 'No Image', 59130, 54800, 4330, 30, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(95, 0, 3, 23, 60, 18, 'Gigabyte X399 AORUS XTREME DDR4 AMD TR4 Socket ATX Motherboard', 'Model: Gigabyte X399 AORUS XTREME AMD\r\nSupports AMD 2nd and 1st Generation Ryzen Threadripper Processors\r\nChipset: AMD X399\r\nMemory: 8 x DDR4, Max 128 GB\r\n5 x PCI Express slots', 10955, 'public/allImages/productimage/38Rdf_10955.jpg', 'public/allImages/productimage/D3uVW_Gigabyte X399 AORUS XTREME DDR4 AMD TR4 Socket ATX Motherboard.jpg', 'public/allImages/productimage/676rC_Gigabyte X399 AORUS XTREME DDR4 AMD TR4 Socket ATX Motherboard.jpg', 'No Image', 41770, 38800, 2970, 20, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(96, 0, 3, 23, 60, 18, 'Gigabyte TRX40 AORUS PRO WIFI ATX sTRX4 Motherboard', 'Model: Gigabyte TRX40 AORUS PRO\r\nSupports 3rd Gen AMD Ryzen Threadripper Processors\r\nQuad Channel ECC/ Non-ECC Unbuffered DDR4, 8 DIMMs\r\nAdvanced Thermal Design with Fins-Array Heatsink\r\n3 Ultra-Fast NVMe PCIe 4.0 x4 M.2 with Thermal Guards', 12124, 'public/allImages/productimage/USajn_12124.jpg', 'public/allImages/productimage/Ie2TF_Gigabyte TRX40 AORUS PRO WIFI ATX sTRX4 Motherboard.jpg', 'public/allImages/productimage/tz1rB_Gigabyte TRX40 AORUS PRO WIFI ATX sTRX4 Motherboard.jpg', 'public/allImages/productimage/n3dRZ_Gigabyte TRX40 AORUS PRO WIFI ATX sTRX4 Motherboard.jpg', 44490, 41200, 3290, 30, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(97, 0, 3, 22, 57, 18, 'Gamdias CHIONE E2-120 Lite RGB Liquid CPU Cooler', 'Model: Gamdias CHIONE E2 120 Lite\r\nCopper Base Plate\r\nImpeccable Durability\r\nAnti-explosion Teflon Tube\r\nAs an all-in-one liquid cooler', 12469, 'public/allImages/productimage/jIKMl_12469.jpg', 'public/allImages/productimage/dH9BG_Gamdias CHIONE E2-120 Lite RGB Liquid CPU Cooler.jpg', 'No Image', 'No Image', 4600, 4000, 600, 20, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(98, 0, 3, 22, 32, 18, 'Cooler Master Hyper T20 CPU Cooler (i3 and i5 Only)', 'Model: Hyper T20\r\nTwo direct contact heat pipes\r\nLarge fin for better cooling\r\nStrengthened performance\r\nRapid Heat Dissipation', 12429, 'public/allImages/productimage/rTLdy_12429.jpg', 'public/allImages/productimage/erhYN_Cooler Master Hyper T20 CPU Cooler (i3 and i5 Only).jpg', 'public/allImages/productimage/mheRH_Cooler Master Hyper T20 CPU Cooler (i3 and i5 Only).png', 'No Image', 1250, 1200, 50, 20, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(99, 0, 3, 22, 142, 18, 'Thermaltake UX100 ARGB Lighting Air CPU Cooler', 'Model: Thermaltake UX100\r\nEasy to Install\r\nSync with Motherboard\r\nReliable Hydraulic Bearing\r\nHigh Volume Airflow Design', 15319, 'public/allImages/productimage/9V4hZ_15319.jpg', 'public/allImages/productimage/EUbsD_Thermaltake UX100 ARGB Lighting Air CPU Cooler.png', 'public/allImages/productimage/MRjg1_Thermaltake UX100 ARGB Lighting Air CPU Cooler.jpg', 'public/allImages/productimage/3Ztn7_Thermaltake UX100 ARGB Lighting Air CPU Cooler.jpg', 1570, 1500, 70, 20, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(100, 0, 3, 22, 32, 18, 'Cooler Master T200 Air CPU Cooler (i3 and i5 Only)', 'Model: Cooler Master T200\r\nHeatpipe direct contact\r\nQuick installation of fan\r\nLarge fin for better cooling\r\nStrengthened performance', 13006, 'public/allImages/productimage/IPJJ4_13006.jpg', 'public/allImages/productimage/ie2J4_Cooler Master T200 Air CPU Cooler (i3 and i5 Only).png', 'public/allImages/productimage/xQ3ns_Cooler Master T200 Air CPU Cooler (i3 and i5 Only).jpg', 'public/allImages/productimage/YryVy_Cooler Master T200 Air CPU Cooler (i3 and i5 Only).jpg', 1650, 1600, 50, 30, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(101, 0, 3, 22, 8, 18, 'Antec A40 Pro CPU Cooler', 'Model: Antec A40 Pro\r\nInnovative Cartoon Style\r\nBigger Aluminum Base\r\n92mm LED PWM Fan\r\nEasy-installation', 3148, 'public/allImages/productimage/iMgOd_3148.jpg', 'public/allImages/productimage/q2AcR_Antec A40 Pro CPU Cooler.jpg', 'public/allImages/productimage/r9Nuh_Antec A40 Pro CPU Cooler.jpg', 'public/allImages/productimage/a2lCw_Antec A40 Pro CPU Cooler.png', 2150, 2100, 50, 30, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(102, 0, 3, 22, 32, 18, 'Cooler Master Hyper H410R Red LED Air CPU Cooler', 'Model: Cooler Master Hyper H410R\r\nEasy Installation\r\n4X Direct Contact Heatpipes\r\nPerformance in Compact Size\r\nPerfecting the Heatsink Design', 12518, 'public/allImages/productimage/AtlGf_12518.jpg', 'public/allImages/productimage/3gTdR_Cooler Master Hyper H410R Red LED Air CPU Cooler.jpg', 'public/allImages/productimage/fdVvg_Cooler Master Hyper H410R Red LED Air CPU Cooler.png', 'No Image', 2500, 2200, 300, 20, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(103, 0, 3, 22, 142, 18, 'Thermaltake UX200 ARGB Lighting Air CPU Cooler', 'Model: Thermaltake UX200\r\nEasy to Install\r\nReliable Hydraulic Bearing\r\nHigh Volume Airflow Design\r\nSync with Motherboard RGB', 15320, 'public/allImages/productimage/BuUYB_15320.jpg', 'public/allImages/productimage/c68LU_Thermaltake UX200 ARGB Lighting Air CPU Cooler.png', 'public/allImages/productimage/JJaEr_Thermaltake UX200 ARGB Lighting Air CPU Cooler.jpg', 'public/allImages/productimage/Qd01Q_Thermaltake UX200 ARGB Lighting Air CPU Cooler.jpg', 3150, 2800, 350, 20, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(104, 0, 3, 22, 33, 18, 'Corsair Hydro Series H45 Liquid CPU Cooler', 'Model: Corsair Hydro Series H45\r\nFan Speed: 2300 RPM\r\nFan Airflow: 94 CFM\r\nNoise Level: 31 dBA\r\nFan Static Pressure: 3.65 mm-H2O', 12137, 'public/allImages/productimage/fbcm4_12137.jpg', 'public/allImages/productimage/C75HI_Corsair Hydro Series H45 Liquid CPU Cooler.jpg', 'public/allImages/productimage/gllOn_Corsair Hydro Series H45 Liquid CPU Cooler.jpg', 'public/allImages/productimage/tZcXf_Corsair Hydro Series H45 Liquid CPU Cooler.jpg', 4700, 4500, 200, 30, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(105, 0, 3, 22, 33, 18, 'Corsair A500 High Performance Dual Fan CPU Cooler', 'Model: Corsair A500\r\nFan Speed: 2400 RPM\r\nFan Airflow: 75 CFM\r\nNoise Level: 36 dBA\r\nFan Static Pressure: 4.2 mm-H2O', 12988, 'public/allImages/productimage/TuiMV_12988.jpg', 'public/allImages/productimage/DhIHC_Corsair A500 High Performance Dual Fan CPU Cooler.png', 'public/allImages/productimage/tfqVG_Corsair A500 High Performance Dual Fan CPU Cooler.jpg', 'public/allImages/productimage/Qr2jm_Corsair A500 High Performance Dual Fan CPU Cooler.jpg', 9550, 8800, 750, 20, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(106, 0, 3, 22, 32, 18, 'Cooler MASTERAIR G200P Air CPU Cooler (i3 and i5 Only)', 'Model: Cooler MASTERAIR G200P\r\nPrecise Combination of Air Flow and Heatsink\r\nTwo C-Shaped Heat Pipe Design\r\n92mm PWM Fan with RGB Lighting\r\nDesigned for Small Form Factor Cases', 13442, 'public/allImages/productimage/AZl6L_13442.jpg', 'public/allImages/productimage/S7OFn_Cooler MASTERAIR G200P Air CPU Cooler (i3 and i5 Only).jpg', 'public/allImages/productimage/HT5MC_Cooler MASTERAIR G200P Air CPU Cooler (i3 and i5 Only).jpg', 'No Image', 3300, 2900, 400, 15, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(107, 0, 3, 22, 60, 18, 'Gigabyte Aorus ATC800 RGB 120mm CPU Cooler', 'Model: Aorus ATC800 RGB\r\n6 x Ø6mm copper direct pipe, efficiently dissipates 250W CPU heat\r\n2 x 12cm 2 ball bearing RGB fan\r\nSupports RGB FUSION 2.0 synchronization with other AORUS devices\r\nCPU Temp and RPM indicator, easy to monitor CPU status', 14953, 'public/allImages/productimage/G1w5D_14953.jpg', 'public/allImages/productimage/EUzBx_Gigabyte Aorus ATC800 RGB 120mm CPU Cooler.jpg', 'public/allImages/productimage/XKhbE_Gigabyte Aorus ATC800 RGB 120mm CPU Cooler.jpg', 'No Image', 9000, 8400, 600, 30, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(108, 0, 3, 22, 32, 18, 'Cooler Master ML240R RGB CPU Liquid Cooler', 'Model: Cooler Master ML240R\r\nLow-Profile Dual Chamber\r\nPump\r\nStylish Radiator\r\nDouble Tubing', 10931, 'public/allImages/productimage/QA1tu_10931.jpg', 'public/allImages/productimage/OoVpM_Cooler Master ML240R RGB CPU Liquid Cooler.jpg', 'No Image', 'No Image', 10000, 9600, 400, 15, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(109, 0, 3, 22, 95, 18, 'MSI MAG CORELIQUID 240R AIO RGB Liquid CPU Cooler', 'Model: MSI MAG CORELIQUID 240R\r\nRotatable Blockhead\r\nRadiator Pump Design\r\nHigh Thermal Dissipation\r\nPump Motor Resonance Elimination', 15228, 'public/allImages/productimage/Ela6W_15228.jpg', 'public/allImages/productimage/522oS_MSI MAG CORELIQUID 240R AIO RGB Liquid CPU Cooler.jpg', 'public/allImages/productimage/jrBb4_MSI MAG CORELIQUID 240R AIO RGB Liquid CPU Cooler.jpg', 'public/allImages/productimage/ifVmC_MSI MAG CORELIQUID 240R AIO RGB Liquid CPU Cooler.jpg', 11720, 10499, 1221, 15, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(110, 0, 3, 22, 13, 18, 'ASUS TUF Gaming LC 240 RGB All-in-One Liquid CPU Cooler ASUS TUF Gaming LC 240 RGB All-in-One Liquid CPU Cooler', 'Model: TUF Gaming LC 240 RGB\r\n2 x Fan Slots (120mm)\r\nSpeed: 800 - 2000 RPM\r\nAURA Sync Support\r\nSupports Intel and AMD CPU', 17142, 'public/allImages/productimage/oeamR_17142.jpg', 'public/allImages/productimage/Qg60f_ASUS TUF Gaming LC 240 RGB All-in-One Liquid CPU Cooler ASUS TUF Gaming LC 240 RGB All-in-One Liquid CPU Cooler.jpg', 'No Image', 'No Image', 12700, 11500, 1200, 20, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(111, 0, 3, 22, 102, 18, 'NZXT Kraken X73 RGB 360mm All-in-One Liquid CPU Cooler', 'Model: Kraken X73 RGB\r\nAll-new 7th Gen Asetek pump\r\n3 x Aer RGB 2 120 Fans\r\nFan Speed: 500 - 1,500 + 300 RPM\r\nCompatible with Intel and AMD', 17153, 'public/allImages/productimage/vHcqY_17153.jpg', 'No Image', 'No Image', 'No Image', 16500, 16000, 500, 20, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(112, 0, 3, 22, 33, 18, 'Corsair Hydro Series H115i 280 Pro RGB Liquid CPU Cooler', 'Model: Corsair Hydro Series H115i 280 Pro\r\nFan Speed: 1200 RPM\r\nFan Airflow: 55.4 CFM\r\nNoise Level: 20.4 dBA\r\nFan Static Pressure: 1.27 mm-H2O', 13050, 'public/allImages/productimage/4F5yB_13050.jpg', 'public/allImages/productimage/pMg34_Corsair Hydro Series H115i 280 Pro RGB Liquid CPU Cooler.jpg', 'public/allImages/productimage/N4usk_Corsair Hydro Series H115i 280 Pro RGB Liquid CPU Cooler.jpg', 'No Image', 15200, 12000, 3200, 25, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(113, 0, 3, 22, 32, 18, 'Cooler Master Hyper 212 LED Turbo Air CPU Cooler (White)', 'Model: Cooler Master Hyper 212 LED Turbo\r\nSleek Finishing\r\nPrecise Air Flow\r\nDual XtraFlo PWM Fans\r\nDirect Contact Technology', 15232, 'public/allImages/productimage/EZucY_15232.jpg', 'public/allImages/productimage/SyE8U_Cooler Master Hyper 212 LED Turbo Air CPU Cooler (White).jpg', 'public/allImages/productimage/2bioT_Cooler Master Hyper 212 LED Turbo Air CPU Cooler (White).jpg', 'No Image', 4070, 3800, 2070, 20, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(114, 0, 3, 22, 84, 18, 'Lian Li Galahad 360mm Closed-Loop AIO Liquid CPU Cooler (White)', 'Model: Lian Li Galahad 360mm CPU Cooler\r\nRemovable Magnetic Aluminium Cap\r\nHigh Static Pressure Fans\r\nTriple-Chamber Structure\r\nAluminium Shields on Both Sides', 14324, 'public/allImages/productimage/CaZHM_14324.jpg', 'public/allImages/productimage/ecSPc_Lian Li Galahad 360mm Closed-Loop AIO Liquid CPU Cooler (White).jpg', 'No Image', 'No Image', 12700, 12000, 700, 15, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(115, 0, 3, 22, 95, 18, 'MSI MAG CORELIQUID 360R AIO RGB Liquid CPU Cooler', 'Model: MSI MAG CORELIQUID 360R\r\nRotatable Blockhead\r\nRadiator Pump Design\r\nHigh Thermal Dissipation\r\nPump Motor Resonance Elimination', 15227, 'public/allImages/productimage/lPuOB_15227.jpg', 'public/allImages/productimage/BrUUg_MSI MAG CORELIQUID 360R AIO RGB Liquid CPU Cooler.jpg', 'public/allImages/productimage/B3S3R_MSI MAG CORELIQUID 360R AIO RGB Liquid CPU Cooler.jpg', 'No Image', 14400, 12999, 1400, 15, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(116, 0, 3, 28, 133, 18, 'Silicon Power 4GB DDR4 2400 Bus Ram', 'Model: Silicon Power 4GB DDR4 2400 Bus Ram\r\nCapacity: 4GB\r\nType: DDR4\r\nBus speed: 2400MHz\r\nNumber of pin: 288-Pin', 6481, 'public/allImages/productimage/XsrpX_6481.jpg', 'No Image', 'No Image', 'No Image', 2500, 2400, 1500, 15, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(117, 0, 3, 28, 110, 18, 'Patriot 4GB DDR3 1600 Bus Desktop Ram', 'Model: Patriot 4GB DDR3 1600 Bus\r\nFrequency: 1600MHz\r\nOperating voltage:1.5V\r\nType: 240 pin\r\nWarranty Product life time', 7021, 'public/allImages/productimage/bflGI_7021.jpg', 'No Image', 'No Image', 'No Image', 2200, 2100, 100, 15, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(118, 0, 3, 28, 139, 177, 'TEAM Elite U-Dimm 4GB 1600MHz DDR3 RAM', 'MPN: TED34G1600C1101\r\nModel: TEAM Elite U-Dimm\r\nAdherence to JEDEC and compliance to RoHS\r\nCAS Latency: CL11-11-11-28\r\nDataTransfer:12,800MB/s\r\nCapacity: 4GB 1600MHz', 11877, 'public/allImages/productimage/CJGiC_11877.jpg', 'No Image', 'No Image', 'No Image', 2100, 2000, 100, 20, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(119, 0, NULL, NULL, NULL, 18, 'TwinMOS 4GB DDR3 1600MHz', 'Model: 4GB DDR3\r\nFrequency: 1600 MHz\r\nOperating voltage: 1.5V\r\nType: Pin 240\r\nProduct life time Warranty', 417, 'public/allImages/productimage/XhEWw_417.jpg', 'No Image', 'No Image', 'No Image', 2310, 2200, 110, 30, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(120, 0, 3, 28, 110, 18, 'Patriot 4GB DDR3 1333MHz Desktop RAM', 'MPN: PSD34G133381\r\nModel: Patriot 4GB 1333MHz\r\nType: DDR3\r\nCapacity: 4 GB\r\nTimings: CL9 9-9\r\nRAM Speed: 1333MHz', 14814, 'public/allImages/productimage/jX4zQ_14814.jpg', 'No Image', 'No Image', 'No Image', 2300, 2200, 100, 15, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(121, 0, 3, 28, 110, 18, 'PATRIOT DDR-4 4GB-2400MHz Desktop RAM', 'Model: PATRIOT DDR-4 4GB\r\nFrequency: 2400 MHz\r\nOperating voltage: 1.2V\r\nDimensions: 1.37 x 12.24 x 17.78cm\r\nLatency: 15-15-15-35', 6505, 'public/allImages/productimage/QKsDH_6505.jpg', 'No Image', 'No Image', 'No Image', 2500, 2300, 200, 15, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(122, 0, 3, 28, 139, 18, 'TEAM ELITE U-Dimm 4GB 2400MHz DDR4 RAM', 'MPN: TED44G2400C1601\r\nModel: TEAM ELITE U-Dimm 4GB\r\nNew-generation product of DRAM module\r\n1.2 V memory module\r\nLifetime warranty', 10658, 'public/allImages/productimage/WIm8R_10658.jpg', 'No Image', 'No Image', 'No Image', 2300, 2100, 200, 30, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(123, 0, 3, 28, 146, 18, 'Transcend 4GB DDR4 2666Mhz Desktop RAM', 'MPN: JM2666HLD-4G\r\nModel: Transcend\r\n4GB DDR4 2666MHz U-DIMM\r\nCAS Latency: CL19\r\nNumber of Pin: 288 Pin\r\nVoltage: 1.2V', 14280, 'No Image', 'No Image', 'No Image', 'No Image', 2450, 2300, 150, 25, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(124, 0, 3, 28, 4, 18, 'Adata 4 GB DDR4 2666 BUS Desktop Ram', 'Model: 4GB DDR4 2666\r\nFrequency: 2666MHz\r\nOperating voltage: 1.2V\r\nLatency: CL 19-19-19\r\nInterface 288-pin', 9834, 'public/allImages/productimage/AhyJI_9834.jpg', 'No Image', 'No Image', 'No Image', 2500, 2400, 100, 30, 'Populer', 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'abirhossaintushar.789@gmail.com', NULL, 5),
(125, 0, 3, 28, 4, 18, 'Adata XPG GAMMIX D10 8GB DDR4 2666 MHz Desktop RAM', 'Model: Adata XPG GAMMIX D10\r\nUnique heatsink design\r\nExcellent cooling and stability\r\nOperating voltage: 1.2V\r\nlifetime Warranty Limited', 10663, 'public/allImages/productimage/PfKnA_10663.jpg', 'No Image', 'No Image', 'No Image', 3900, 3700, 200, 14, 'Top', 'A', '2021-06-12 01:48:52', '2021-06-12 01:48:52', 'abirhossaintushar.789@gmail.com', NULL, 5),
(126, 0, 3, 28, 139, 18, 'TEAM Elite U-Dimm 8GB 1600MHz DDR3 RAM', 'MPN: TED38G1600C1101\r\nModel: TEAM Elite U-Dimm\r\nAdherence to JEDEC and compliance to RoHS\r\nCAS Latency: CL11-11-11-28\r\nDataTransfer:12,800MB/s\r\nCapacity: 8GB 1600MHz', 11880, 'public/allImages/productimage/FMHcf_11880.jpg', 'No Image', 'No Image', 'No Image', 3800, 3700, 100, 20, 'Top', 'A', '2021-06-12 01:50:08', '2021-06-12 01:50:08', 'abirhossaintushar.789@gmail.com', NULL, 5),
(127, 0, 3, 28, 146, 18, 'Transcend 4GB DDR4 2400 Mhz Desktop Ram', 'Model: JM2400HLH\r\nCapacity 4 GB\r\nFrequency 2400 Mhz\r\nVoltage 1.2V\r\nPin 288 pin', 7951, 'public/allImages/productimage/PZequ_7951.jpg', 'No Image', 'No Image', 'No Image', 3950, 3850, 100, 20, 'Top', 'A', '2021-06-12 01:51:38', '2021-06-12 01:51:38', 'abirhossaintushar.789@gmail.com', NULL, 5),
(128, 0, 3, 28, 139, 18, 'Team Elite Plus 8GB DDR4 2400MHz Ram', 'MPN: TPD48G2400HC1601\r\nModel: Team Elite Plus\r\nCapacity 8GB\r\n1.2 V memory module\r\nCAS Latency CL15-15-15-36\r\nLifetime warranty', 10626, 'public/allImages/productimage/7V7Mr_10626.png', 'No Image', 'No Image', 'No Image', 4300, 4200, 100, 20, 'Top', 'A', '2021-06-12 01:54:50', '2021-06-12 01:54:50', 'abirhossaintushar.789@gmail.com', NULL, 5),
(129, 0, 3, 28, 110, 18, 'Patriot Viper Steel 8GB DDR4 3200MHz Gaming RGB Desktop RAM', 'Key Features\r\nMPN: PVR48G320C6\r\nModel: Patriot Viper Steel 8GB RGB\r\nHeat Sink\r\nType -DDR4\r\nCapacity -8GB\r\nMemory Speed -3200MHz', 14817, 'public/allImages/productimage/AKSKp_14817.png', 'No Image', 'No Image', 'No Image', 4700, 4400, 300, 15, 'Top', 'A', '2021-06-12 01:56:39', '2021-06-12 01:56:39', 'abirhossaintushar.789@gmail.com', NULL, 5),
(130, 0, 3, 28, 139, 18, 'Team Vulcan Z 8GB DDR4 2666 MHz Gaming Ram', 'MPN: TLZGD48G2666HC18H01\r\nModel: Team Vulcan Z\r\nCapacity 8GB\r\nSupports Intel & AMD motherboards\r\nSelected high-quality IC\r\nSupports XM P2.0', 10574, 'public/allImages/productimage/E3EdY_10574.png', 'No Image', 'No Image', 'No Image', 4500, 4200, 300, 15, 'Top', 'A', '2021-06-12 01:58:38', '2021-06-12 01:58:38', 'abirhossaintushar.789@gmail.com', NULL, 5),
(131, 0, 3, 28, 142, 18, 'Thermaltake Toughram Z-ONE RGB 8GB DDR4 3200MHz Desktop RAM', 'Model: Thermaltake Toughram Z-ONE RGB 8GB\r\nReal-time temperature, frequency and performance monitoring\r\n16.8M addressable RGB\r\n10-layer PCB construction\r\n5V Motherboard RGB sync ready', 14748, 'public/allImages/productimage/6pzCv_14748.png', 'public/allImages/productimage/tmK35_Thermaltake Toughram Z-ONE RGB 8GB DDR4 3200MHz Desktop RAM.jpg', 'No Image', 'No Image', 4800, 4500, 300, 15, 'Top', 'A', '2021-06-12 02:00:21', '2021-06-12 02:00:21', 'abirhossaintushar.789@gmail.com', NULL, 5),
(132, 0, 3, 28, 4, 18, 'ADATA XPG GAMMIX D30 8GB DDR4 2666MHz RAM', 'Model: ADATA XPG GAMMIX D30 8GB\r\nEdgy Wing-Shaped Design\r\nThe Performance to Win\r\nOverclocking with Intel XMP 2.0\r\nTop-Quality Chips for Enhanced Durability', 13822, 'public/allImages/productimage/uaMKT_13822.png', 'public/allImages/productimage/ekdZI_ADATA XPG GAMMIX D30 8GB DDR4 2666MHz RAM.jpg', 'No Image', 'No Image', 5100, 4700, 400, 15, 'Top', 'A', '2021-06-12 02:03:58', '2021-06-12 02:03:58', 'abirhossaintushar.789@gmail.com', NULL, 5),
(133, 0, 3, 28, 70, 18, 'HP 8GB (1x8GB) DDR3-1866 ECC RAM', 'Model: HP 8GB (1x8GB) DDR3\r\nCapacity- 8GB (1x8GB)\r\nFrequency- 1866 MHz\r\nType- DDR3\r\nEasy toggling between several open applications', 819, 'public/allImages/productimage/jRKTX_819.jpg', 'No Image', 'No Image', 'No Image', 13755, 13100, 655, 20, 'Top', 'A', '2021-06-12 02:05:59', '2021-06-12 02:05:59', 'abirhossaintushar.789@gmail.com', NULL, 5),
(134, 0, 3, 28, 152, 18, 'TwinMos 8GB 2666MHz DDR4 Desktop RAM', 'Model: TwinMos 8GB 2666MHz\r\nCapacity: 8GB\r\nSpeed: 2666MHz\r\nChannel Type: Single\r\nOS Compatibility: Windows 10', 15282, 'public/allImages/productimage/qWdT0_15282.jpg', 'No Image', 'No Image', 'No Image', 4600, 4400, 200, 15, 'Top', 'A', '2021-06-12 02:07:25', '2021-06-12 02:07:25', 'abirhossaintushar.789@gmail.com', NULL, 5),
(135, 0, 3, 28, 56, 18, 'G.SKILL Trident Z Royal RGB 8GB DDR4 4600MHz Desktop RAM', 'MPN: F4-4600C18D-16GTRS\r\nModel: Trident Z Royal\r\nRadiant Crystalline Light Bar\r\nTested Latency: 18-22-22-42\r\n8GB DDR4 4600MHz Non-ECC\r\nIntel XMP 2.0 Ready', 16913, 'public/allImages/productimage/8yKTD_16913.jpg', 'No Image', 'No Image', 'No Image', 18000, 17200, 800, 15, 'Top', 'A', '2021-06-12 02:09:39', '2021-06-12 02:09:39', 'abirhossaintushar.789@gmail.com', NULL, 5),
(136, 0, 3, 28, 33, 18, 'Corsair Dominator Platinum RGB 16GB 4000MHz DDR4 RAM (Black)', 'MPN: CMT32GX4M2K4000C19\r\nModel: Corsair 16GB Dominator Platinum RGB\r\n16GB 4000MHz DDR4 DRAM\r\nTested Voltage: 1.35V\r\nPackage Memory Format: DIMM\r\nHeat Spreader: Anodized Aluminum', 16633, 'public/allImages/productimage/wZMHM_16633.jpg', 'public/allImages/productimage/bFUeN_Corsair Dominator Platinum RGB 16GB 4000MHz DDR4 RAM (Black).jpg', 'public/allImages/productimage/sFhYc_Corsair Dominator Platinum RGB 16GB 4000MHz DDR4 RAM (Black).jpg', 'No Image', 25190, 23999, 1191, 15, 'Top', 'A', '2021-06-12 02:11:24', '2021-06-12 02:11:24', 'abirhossaintushar.789@gmail.com', NULL, 5),
(137, 0, 3, 29, 149, 18, 'TRM 4GB DDR-4 2400MHz Laptop RAM', 'Model: TRM 4GB DDR4\r\nType: DDR4\r\nCapacity: 4 GB\r\nFrequency: 2400MHz', 13194, 'public/allImages/productimage/tgmwG_13194.jpg', 'No Image', 'No Image', 'No Image', 2550, 2200, 350, 15, 'Top', 'A', '2021-06-12 02:13:33', '2021-06-12 02:13:33', 'abirhossaintushar.789@gmail.com', NULL, 5),
(138, 0, 3, 29, 110, 18, 'Patriot 4GB DDR4 2400 Mhz Laptop Ram', 'MPN: PSD44G240081S\r\nModel: Patriot 4GB DDR4 2400 Mhz Laptop Ram\r\nCapacity 4GB\r\nType DDR4\r\nSpeed 2400 Mhz', 9752, 'public/allImages/productimage/SV9Bo_9752.jpg', 'No Image', 'No Image', 'No Image', 2600, 2400, 200, 15, 'Top', 'A', '2021-06-12 02:18:01', '2021-06-12 02:18:01', 'abirhossaintushar.789@gmail.com', NULL, 5),
(139, 0, 3, 29, 146, 18, 'Transcend 4GB DDR4 2666MHz Bus SO-DIMM Laptop RAM', 'Model: Transcend 4GB\r\nCapacity- 4GB\r\nCAS Latency: CL19\r\nSpeed: PC4-21300 (2666 MHz)\r\nDIMM Type: 260-Pin SO-DIMM', 12396, 'public/allImages/productimage/xcju6_12396.jpg', 'public/allImages/productimage/hV3zn_Transcend 4GB DDR4 2666MHz Bus SO-DIMM Laptop RAM.jpg', 'No Image', 'No Image', 2500, 2400, 100, 15, 'Top', 'A', '2021-06-12 02:19:57', '2021-06-12 02:19:57', 'abirhossaintushar.789@gmail.com', NULL, 5),
(140, 0, 3, 29, 4, 18, 'Adata 4GB DDR4 2666MHz Laptop RAM', 'Model: Adata 4GB DDR4 2666MHz\r\nCapacity: 4GB\r\nSpeed: 2666MHz\r\nRoHS compliant\r\nCAS Latency: CL 19-19-19', 12623, 'public/allImages/productimage/Ftikg_12623.jpg', 'No Image', 'No Image', 'No Image', 2500, 2400, 100, 20, 'Top', 'A', '2021-06-12 02:22:02', '2021-06-12 02:22:02', 'abirhossaintushar.789@gmail.com', NULL, 5),
(141, 0, 3, 29, 110, 18, 'PATRIOT 4GB DDR4 2666MHZ SO-DIMM Laptop Ram', 'MPN: PSD44G266681S\r\nModel: PATRIOT 4G 2666MHZ\r\nCapacity 4GB\r\nType DDR4\r\nSpeed 2666 Mhz', 13233, 'public/allImages/productimage/p2KHr_13233.jpg', 'No Image', 'No Image', 'No Image', 2600, 2500, 100, 20, 'Top', 'A', '2021-06-12 02:23:31', '2021-06-12 02:23:31', 'abirhossaintushar.789@gmail.com', NULL, 5),
(142, 0, 3, 29, 133, 18, 'Silicon Power 4GB DDR4 2666MHz Laptop RAM', 'MPN: SP004GBSFU266C02\r\nModel: DDR4 2666MHz\r\n100% tested for stability, durability, and reliability\r\nVoltage: 1.2 V, CAS Latency: CL19\r\n2666MHz Clock Speed\r\nExtra Fast and Ultra Efficient', 15845, 'public/allImages/productimage/HXd69_15845.jpg', 'public/allImages/productimage/6OMZJ_Silicon Power 4GB DDR4 2666MHz Laptop RAM.jpg', 'No Image', 'No Image', 2600, 2500, 100, 14, 'Top', 'A', '2021-06-12 02:25:43', '2021-06-12 02:25:43', 'abirhossaintushar.789@gmail.com', NULL, 5),
(143, 0, 3, 29, 56, 18, 'G.Skill RipJaws 4GB 2666MHz Laptop RAM G.Skill RipJaws 4GB 2666MHz Laptop RAM', 'Model: G.Skill RipJaws-V 4GB\r\n4GB Capacity\r\nUnbuffered, Non-ECC\r\n2666 MHz Clock Speed\r\nTested Latency 18-18-18-43', 15487, 'public/allImages/productimage/SIlPC_15487.jpg', 'public/allImages/productimage/jgDtk_G.Skill RipJaws 4GB 2666MHz Laptop RAM G.Skill RipJaws 4GB 2666MHz Laptop RAM.jpg', 'No Image', 'No Image', 3100, 2800, 300, 15, 'Top', 'A', '2021-06-12 02:29:17', '2021-06-12 02:29:17', 'abirhossaintushar.789@gmail.com', NULL, 5),
(144, 0, 3, 29, 133, 18, 'Silicon Power DDR3L 1600 BUS 8GB Laptop RAM', 'MPN: SP008GLSTU160N02\r\nModel: Silicon Power DDR3L\r\nCapacity: 8GB\r\nType: DDR3L, CAS latency: CL11\r\nBus speed: 1600BUS\r\nNumber of pin: 240-Pin', 13341, 'public/allImages/productimage/2lXMB_13341.jpg', 'No Image', 'No Image', 'No Image', 3600, 3400, 200, 15, 'Top', 'A', '2021-06-12 02:31:17', '2021-06-12 02:31:17', 'abirhossaintushar.789@gmail.com', NULL, 5),
(145, 0, 3, 29, 149, 18, 'TRM 8GB DDR-4 2400MHz Laptop RAM', 'Model: TRM 8GB DDR4\r\nType: DDR4\r\nCapacity: 8GB\r\nFrequency: 2400MHz', 3195, 'public/allImages/productimage/nMlOv_3195.jpg', 'No Image', 'No Image', 'No Image', 3800, 3600, 200, 20, 'Top', 'A', '2021-06-12 02:33:39', '2021-06-12 02:33:39', 'abirhossaintushar.789@gmail.com', NULL, 5),
(146, 0, 3, 29, 36, 18, 'Crucial 16GB Single DDR4 2666MHz Laptop RAM', 'MPN: CT16G4SFD8266\r\nModel: Crucial 16GB Single\r\nMake everything on your computer faster\r\nEasy to install\r\nMultitask with ease\r\nMaximize the value of your system', 15399, 'public/allImages/productimage/PRaVA_15399.jpg', 'No Image', 'No Image', 'No Image', 9200, 8800, 400, 15, 'Top', 'A', '2021-06-12 02:35:21', '2021-06-12 02:35:21', 'abirhossaintushar.789@gmail.com', NULL, 5),
(147, 0, 3, 29, 81, 18, 'Lexar 8GB DDR4 3200MHz SODIMM Laptop RAM', 'MPN: LD4AS008G-R3200GSST\r\nModel: DDR4 3200MHz SODIMM\r\nHigh-speed performance\r\nCAS Latency: CL22\r\nInterface: 260 Pin\r\nMultitask with ease', 14912, 'public/allImages/productimage/JztRO_14912.jpg', 'No Image', 'No Image', 'No Image', 3800, 3500, 300, 15, 'Top', 'A', '2021-06-12 02:37:11', '2021-06-12 02:37:11', 'abirhossaintushar.789@gmail.com', NULL, 5),
(148, 0, 3, 29, 70, 18, 'HP S1 4GB 2666MHz DDR4 SODIMM Laptop RAM', 'MPN: 7EH97AA#UUF\r\nModel: HP S1\r\nMemory Storage Capacity: 4GB\r\nRam Memory Technology: SO-DIMM\r\nMemory Clock Speed: 2666MHz\r\nLatency: CL19', 14264, 'public/allImages/productimage/GwGpz_14264.jpg', 'No Image', 'No Image', 'No Image', 2900, 2400, 500, 15, 'Top', 'A', '2021-06-12 02:39:18', '2021-06-12 02:39:18', 'abirhossaintushar.789@gmail.com', NULL, 5),
(149, 0, 3, 29, 4, 18, 'ADATA XPG Flame 8GB DDR4 2666MHz Laptop RAM', 'Model: ADATA XPG Flame 8GB\r\nExcellent Cooling and Stability\r\nconsume less power\r\nHigh Durability\r\nMore Accessible Overclocking', 10809, 'public/allImages/productimage/lO55T_10809.jpg', 'public/allImages/productimage/kxury_ADATA XPG Flame 8GB DDR4 2666MHz Laptop RAM.jpg', 'public/allImages/productimage/nupGx_ADATA XPG Flame 8GB DDR4 2666MHz Laptop RAM.jpg', 'No Image', 4340, 4100, 240, 16, 'Top', 'A', '2021-06-12 02:41:21', '2021-06-12 02:41:21', 'abirhossaintushar.789@gmail.com', NULL, 5),
(150, 0, 11, 132, 118, 18, 'Rapoo X9310 Wireless Ultra Slim Aluminum Alloy Keyboard Mouse Combo Rapoo X9310 Wireless Ultra Slim Aluminum Alloy Keyboard Mouse Combo', 'Model: X9310\r\n1000 DPI high-definition tracking engine\r\nChiclet keys and scissor key structure\r\n4.9 mm ultra-slim design\r\n12 months battery life', 11019, 'public/allImages/productimage/GahKu_11019.jpg', 'public/allImages/productimage/ovS7r_Rapoo X9310 Wireless Ultra Slim Aluminum Alloy Keyboard Mouse Combo Rapoo X9310 Wireless Ultra Slim Aluminum Alloy Keyboard Mouse Combo.jpg', 'No Image', 'No Image', 3850, 3475, 375, 20, 'Top', 'A', '2021-06-12 02:49:30', '2021-06-12 02:49:30', 'abirhossaintushar.789@gmail.com', NULL, 5),
(151, 0, 3, 132, 52, 18, 'Fantech K3M Multimedia Mini USB Keyboard Black', 'Model: Fantech K3M\r\nConnection: USB2.0\r\nSensitive response keys\r\nFeatures: Mini Keyboard\r\nWater leakage keyboard design', 13389, 'public/allImages/productimage/nG0VJ_13389.jpg', 'No Image', 'No Image', 'No Image', 600, 550, 50, 15, 'Populer', 'A', '2021-06-18 10:19:31', '2021-06-18 10:19:31', 'abirhossaintushar.789@gmail.com', NULL, 5),
(152, 0, 3, 132, 52, 18, 'Fantech FTK-801 USB Numeric Keypad', 'Model: Fantech FTK-801\r\nWith 23 keys ( inclued 4 office hotkeys: Home, tab, email, calculator )\r\nConnection: USB2.0\r\nPower Supply: USB Port\r\nFeatures: Mini,Novelty,Slim', 13379, 'public/allImages/productimage/bGw6w_13379.jpg', 'public/allImages/productimage/HNpFF_Fantech FTK-801 USB Numeric Keypad.jpg', 'public/allImages/productimage/UlhVQ_Fantech FTK-801 USB Numeric Keypad.jpg', 'No Image', 385, 350, 35, 15, 'Top', 'A', '2021-06-18 10:21:55', '2021-06-18 10:21:55', 'abirhossaintushar.789@gmail.com', NULL, 5),
(153, 0, 3, 132, 66, 18, 'Havit KB378 USB Exquisite Keyboard with Bangla', 'Model: Havit KB378\r\nUSB Exquisite type Keyboard\r\nNumber of Keys: 104\r\n8 million times keys life\r\nCable Length: 1.4 m', 10923, 'public/allImages/productimage/9f5Yy_10923.jpg', 'No Image', 'No Image', 'No Image', 450, 400, 50, 20, 'Top', 'A', '2021-06-18 10:23:14', '2021-06-18 10:23:14', 'abirhossaintushar.789@gmail.com', NULL, 5),
(154, 0, 3, 132, 91, 18, 'Micropack K203 Basic USB Keyboard', 'Model: Micropack K203\r\nType: USB 2.0\r\nNumber of Keys: 103\r\nKey Type: Low Cap', 9670, 'public/allImages/productimage/uAzZm_9670.jpg', 'No Image', 'No Image', 'No Image', 470, 425, 45, 20, 'Top', 'A', '2021-06-18 10:24:48', '2021-06-18 10:24:48', 'abirhossaintushar.789@gmail.com', NULL, 5),
(155, 0, 2, 19, 17, 18, 'Test', 'asda a', 222, 'public/allImages/productimage/gCatQ_222.jpg', 'No Image', 'No Image', 'No Image', 22, 33, 22, 1, 'Populer', 'A', '2021-08-21 11:29:51', '2021-08-21 11:29:51', NULL, NULL, 4),
(157, 0, 21, 206, 14546, 18, 'Razer Iskur Gaming Chair', 'Chair Cover: PVC Leather\r\nBase: 5-star metal powder coated\r\nFrame: Metal & Plywood.4D Adjustable Armrests', 0, 'public/allImages/productimage/gR2pn_RZ38.jpg', 'public/allImages/productimage/JJXS7_Razer Iskur Gaming Chair.jpg', 'No Image', 'No Image', 62000, 61500, 500, 10, 'Populer', 'A', '2021-08-21 13:25:59', '2021-08-21 13:25:59', NULL, NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `product_types`
--

CREATE TABLE `product_types` (
  `product_types_id` int(10) UNSIGNED NOT NULL,
  `product_types_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_types_status` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_info` datetime NOT NULL DEFAULT current_timestamp(),
  `update_info` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_types`
--

INSERT INTO `product_types` (`product_types_id`, `product_types_name`, `product_types_status`, `create_info`, `update_info`) VALUES
(2, 'Laptop', 'A', '2021-01-11 14:38:08', '2021-01-11 14:38:08');

-- --------------------------------------------------------

--
-- Table structure for table `sheet1`
--

CREATE TABLE `sheet1` (
  `categories_id` int(2) NOT NULL,
  `categories_name` varchar(16) DEFAULT NULL,
  `categories_status` varchar(1) DEFAULT NULL,
  `create_info` varchar(13) DEFAULT NULL,
  `update_info` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sheet1`
--

INSERT INTO `sheet1` (`categories_id`, `categories_name`, `categories_status`, `create_info`, `update_info`) VALUES
(1, 'Desktop', 'A', '5/18/21 12:48', '5/18/21 1:00'),
(2, 'Laptop', 'A', '5/19/21 12:48', '5/19/21 1:00'),
(3, 'Component', 'A', '5/20/21 12:48', '5/20/21 1:00'),
(4, 'Monitor', 'A', '5/21/21 12:48', '5/21/21 1:00'),
(5, 'UPS', 'A', '5/22/21 12:48', '5/22/21 1:00'),
(6, 'Tablet', 'A', '5/23/21 12:48', '5/23/21 1:00'),
(7, 'Office Equipment', 'A', '5/24/21 12:48', '5/24/21 1:00'),
(8, 'Camera', 'A', '5/25/21 12:48', '5/25/21 1:00'),
(9, 'Security', 'A', '5/26/21 12:48', '5/26/21 1:00'),
(10, 'Networking', 'A', '5/27/21 12:48', '5/27/21 1:00'),
(11, 'Accessories', 'A', '5/28/21 12:48', '5/28/21 1:00'),
(12, 'Software', 'A', '5/29/21 12:48', '5/29/21 1:00'),
(13, 'Server & Storage', 'A', '5/30/21 12:48', '5/30/21 1:00'),
(14, 'TV', 'A', '5/31/21 12:48', '5/31/21 1:00'),
(15, 'AC', 'A', '6/1/21 12:48', '6/1/21 1:00'),
(16, 'Gadget', 'A', '6/2/21 12:48', '6/2/21 1:00'),
(17, 'Gaming', 'A', '6/3/21 12:48', '6/3/21 1:00');

-- --------------------------------------------------------

--
-- Table structure for table `shiping_info`
--

CREATE TABLE `shiping_info` (
  `shiping_id` int(10) NOT NULL,
  `oder_id` int(10) NOT NULL,
  `delivery_id` int(10) NOT NULL,
  `shiping_status` varchar(2) NOT NULL,
  `create_info` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shiping_info`
--

INSERT INTO `shiping_info` (`shiping_id`, `oder_id`, `delivery_id`, `shiping_status`, `create_info`) VALUES
(1, 1, 2, 'A', '');

-- --------------------------------------------------------

--
-- Table structure for table `shop_user`
--

CREATE TABLE `shop_user` (
  `shop_user_id` int(10) UNSIGNED NOT NULL,
  `user_type_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_user_status` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_info` datetime NOT NULL DEFAULT current_timestamp(),
  `update_info` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_user`
--

INSERT INTO `shop_user` (`shop_user_id`, `user_type_id`, `name`, `username`, `image`, `phone`, `email`, `shop_name`, `shop_address`, `password`, `remember_token`, `shop_user_status`, `create_info`, `update_info`) VALUES
(2, 26, 'Mahabub Alam', '0147852369', 'allImages/shopimage/wJFZU_0147852369.jpg', '0147852369', 'mahabub@gmail.com', 'Mahabub Zanaral Store', 'Mirpur,Dhaka', 'e10adc3949ba59abbe56e057f20f883e', '67ba8804d9f2f4dd', 'B', '2021-08-21 09:48:52', '2021-08-21 09:48:52'),
(3, 29, 'Test', '5555', 'allImages/shopimage/RKiJg_5555.jpg', '5555', 'test@gmail.com', 'Test Shop', 'Mirpur', '4739c5c11d833bb199c16ff95a92b267', '294bd965ace7a8f7', 'B', '2021-08-21 09:53:31', '2021-08-21 09:53:31'),
(4, 29, 'Mr. Dhali Abir', '01955375749', 'allImages/shopimage/xUuYE_01955375749.jpg', '01955375749', 'dhaliabir@gmail.com', 'DA Shop', 'Mirpur,Dhaka', 'd41d8cd98f00b204e9800998ecf8427e', '64dfb389276fb750', 'A', '2021-08-21 10:29:22', '2021-08-21 10:29:22'),
(5, 29, 'SOC Bazar', '01684924439', '', '01684924439', 'socbazar@gmail.com', 'SOC BAZAR', 'Kollanpur,Mirpur,Dhaka', 'd41d8cd98f00b204e9800998ecf8427e', NULL, 'A', '2021-08-21 12:24:19', '2021-08-21 12:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `slider_image`
--

CREATE TABLE `slider_image` (
  `slider_id` int(11) NOT NULL,
  `slider_name` varchar(100) NOT NULL,
  `slider_image` varchar(500) NOT NULL,
  `create_info` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_image`
--

INSERT INTO `slider_image` (`slider_id`, `slider_name`, `slider_image`, `create_info`) VALUES
(1, 'Slider One', 'https://71bazaar.com/wp-content/uploads/2019/03/girl-hair-female-pattern-model-spring-625342-pxhere.jpg', '2021-01-29 00:00:00'),
(2, 'Slider Two', 'https://71bazaar.com/wp-content/uploads/2019/03/mannequin-3616355.jpg', '2021-01-29 00:00:00'),
(3, 'Image 3', 'https://71bazaar.com/wp-content/uploads/2019/03/StockSnap_G2V8G1H1AQ.jpg', '2021-01-29 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `sub_categories_id` int(11) NOT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `sub_categories_name` varchar(64) DEFAULT NULL,
  `sub_categories_status` varchar(64) DEFAULT NULL,
  `create_info` varchar(64) DEFAULT NULL,
  `update_info` varchar(64) DEFAULT NULL,
  `shop_id` int(50) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`sub_categories_id`, `categories_id`, `sub_categories_name`, `sub_categories_status`, `create_info`, `update_info`, `shop_id`) VALUES
(1, 1, 'Special PC', 'A', '2021/01/01', '2021/01/01', 0),
(2, 1, 'Star PC', 'A', '2021/01/02', '2021/01/02', 0),
(4, 1, 'Brand PC', 'A', '2021/01/04', '2021/01/04', 0),
(5, 1, 'All in one PC', 'A', '2021/01/05', '2021/01/05', 0),
(6, 1, 'Portable Mini PC', 'A', '2021/01/06', '2021/01/06', 0),
(7, 1, 'Apple Mac Mini', 'A', '2021/01/07', '2021/01/07', 0),
(8, 1, 'Apple iMac', 'A', '2021/01/08', '2021/01/08', 0),
(9, 1, 'Show All Desktop', 'A', '2021/01/09', '2021/01/09', 0),
(10, 2, 'All Laptop', 'A', '2021/01/10', '2021/01/10', 0),
(11, 2, 'Gaming Laptop', 'A', '2021/01/11', '2021/01/11', 0),
(12, 2, 'Premium Ultrabook', 'A', '2021/01/12', '2021/01/12', 0),
(13, 2, 'Laptop Bag', 'A', '2021/01/13', '2021/01/13', 0),
(14, 2, 'Laptop Accessories', 'A', '2021/01/14', '2021/01/14', 0),
(15, 2, 'External Graphics Enclosure', 'A', '2021/01/15', '2021/01/15', 0),
(16, 2, 'Show All Laptop', 'A', '2021/01/16', '2021/01/16', 0),
(17, 3, 'Casing', 'A', '2021/01/17', '2021/01/17', 0),
(18, 3, 'Casing Cooler', 'A', '2021/01/18', '2021/01/18', 0),
(19, 3, 'Power Supply', 'A', '2021/01/19', '2021/01/19', 0),
(20, 3, 'Water / Liquid Cooling', 'A', '2021/01/20', '2021/01/20', 0),
(21, 3, 'Processor', 'A', '2021/01/21', '2021/01/21', 0),
(22, 3, 'CPU Cooler', 'A', '2021/01/22', '2021/01/22', 0),
(23, 3, 'Motherboard', 'A', '2021/01/23', '2021/01/23', 0),
(24, 3, 'Graphics Card', 'A', '2021/01/24', '2021/01/24', 0),
(25, 3, 'Portable Hard Disk Drive', 'A', '2021/01/25', '2021/01/25', 0),
(26, 3, 'Hard Disk Drive', 'A', '2021/01/26', '2021/01/26', 0),
(27, 3, 'SSD', 'A', '2021/01/27', '2021/01/27', 0),
(28, 3, 'RAM (Desktop)', 'A', '2021/01/28', '2021/01/28', 0),
(29, 3, 'RAM (Laptop)', 'A', '2021/01/29', '2021/01/29', 0),
(30, 3, 'Portable SSD', 'A', '2021/01/30', '2021/01/30', 0),
(31, 3, 'RAM Cooler', 'A', '2021/01/31', '2021/01/31', 0),
(32, 3, 'Sound Card', 'A', '2021/02/01', '2021/02/01', 0),
(33, 3, 'Optical Disk Drive', 'A', '2021/02/02', '2021/02/02', 0),
(34, 3, 'Stabilizer', 'A', '2021/02/03', '2021/02/03', 0),
(35, 3, 'Vertical Graphics Card Holder', 'A', '2021/02/04', '2021/02/04', 0),
(36, 3, 'Show All Component', 'A', '2021/02/05', '2021/02/05', 0),
(37, 4, 'Benq', 'A', '2021/02/06', '2021/02/06', 0),
(38, 4, 'Asus', 'A', '2021/02/07', '2021/02/07', 0),
(39, 4, 'LG', 'A', '2021/02/08', '2021/02/08', 0),
(40, 4, 'HP', 'A', '2021/02/09', '2021/02/09', 0),
(41, 4, 'Dell', 'A', '2021/02/10', '2021/02/10', 0),
(42, 4, 'GIGABYTE', 'A', '2021/02/11', '2021/02/11', 0),
(43, 4, 'Samsung', 'A', '2021/02/12', '2021/02/12', 0),
(44, 4, 'MSI', 'A', '2021/02/13', '2021/02/13', 0),
(45, 4, 'XIAOMI', 'A', '2021/02/14', '2021/02/14', 0),
(46, 4, 'PHILIPS', 'A', '2021/02/15', '2021/02/15', 0),
(47, 4, 'Viewsonic', 'A', '2021/02/16', '2021/02/16', 0),
(48, 4, 'Walton', 'A', '2021/02/17', '2021/02/17', 0),
(49, 4, 'Acer', 'A', '2021/02/18', '2021/02/18', 0),
(50, 4, 'Hikvision', 'A', '2021/02/19', '2021/02/19', 0),
(51, 4, 'Curved Monitor', 'A', '2021/02/20', '2021/02/20', 0),
(52, 4, 'Touch Monitor', 'A', '2021/02/21', '2021/02/21', 0),
(53, 4, '4K Monitor', 'A', '2021/02/22', '2021/02/22', 0),
(54, 4, 'Gaming Monitor', 'A', '2021/02/23', '2021/02/23', 0),
(55, 4, 'Monitor Arm', 'A', '2021/02/24', '2021/02/24', 0),
(56, 4, 'Show All Monitor', 'A', '2021/02/25', '2021/02/25', 0),
(57, 5, 'Online UPS', 'A', '2021/02/26', '2021/02/26', 0),
(58, 5, 'Offline UPS', 'A', '2021/02/27', '2021/02/27', 0),
(59, 5, 'UPS Battery', 'A', '2021/02/28', '2021/02/28', 0),
(60, 5, 'Show All UPS', 'A', '2021/03/01', '2021/03/01', 0),
(61, 6, 'Apple', 'A', '2021/03/02', '2021/03/02', 0),
(62, 6, 'Microsoft', 'A', '2021/03/03', '2021/03/03', 0),
(63, 6, 'Lenovo', 'A', '2021/03/04', '2021/03/04', 0),
(64, 6, 'HUAWEI', 'A', '2021/03/05', '2021/03/05', 0),
(65, 6, 'Chuwi', 'A', '2021/03/06', '2021/03/06', 0),
(66, 6, 'Wacom', 'A', '2021/03/07', '2021/03/07', 0),
(67, 6, 'XP-PEN', 'A', '2021/03/08', '2021/03/08', 0),
(68, 6, 'Huion', 'A', '2021/03/09', '2021/03/09', 0),
(69, 6, 'Amazon', 'A', '2021/03/10', '2021/03/10', 0),
(70, 6, 'TwinMOS', 'A', '2021/03/11', '2021/03/11', 0),
(71, 6, 'Genius', 'A', '2021/03/12', '2021/03/12', 0),
(72, 6, 'VEIKK', 'A', '2021/03/13', '2021/03/13', 0),
(73, 6, 'Stylus', 'A', '2021/03/14', '2021/03/14', 0),
(74, 6, 'Show All Tablet', 'A', '2021/03/15', '2021/03/15', 0),
(75, 7, 'Printer', 'A', '2021/03/16', '2021/03/16', 0),
(76, 7, 'Toner', 'A', '2021/03/17', '2021/03/17', 0),
(77, 7, 'Projector', 'A', '2021/03/18', '2021/03/18', 0),
(78, 7, 'Photocopier', 'A', '2021/03/19', '2021/03/19', 0),
(79, 7, 'Cartridge', 'A', '2021/03/20', '2021/03/20', 0),
(80, 7, 'POS Printer', 'A', '2021/03/21', '2021/03/21', 0),
(81, 7, 'Ink Bottle', 'A', '2021/03/22', '2021/03/22', 0),
(82, 7, 'Scanner', 'A', '2021/03/23', '2021/03/23', 0),
(83, 7, 'Fax', 'A', '2021/03/24', '2021/03/24', 0),
(84, 7, 'PA SYSTEM', 'A', '2021/03/25', '2021/03/25', 0),
(85, 7, 'Conference Systems', 'A', '2021/03/26', '2021/03/26', 0),
(86, 7, 'Money Counting Machine', 'A', '2021/03/27', '2021/03/27', 0),
(87, 7, 'Paper Shredder', 'A', '2021/03/28', '2021/03/28', 0),
(88, 7, 'IP Phone & PABX System', 'A', '2021/03/29', '2021/03/29', 0),
(89, 7, 'Telephone Set', 'A', '2021/03/30', '2021/03/30', 0),
(90, 7, 'Barcode Scanner', 'A', '2021/03/31', '2021/03/31', 0),
(91, 7, 'Interactive Board', 'A', '2021/04/01', '2021/04/01', 0),
(92, 7, 'IPS', 'A', '2021/04/02', '2021/04/02', 0),
(93, 7, 'Binding Machine', 'A', '2021/04/03', '2021/04/03', 0),
(94, 7, 'Laminating', 'A', '2021/04/04', '2021/04/04', 0),
(95, 7, 'Cash Drawer', 'A', '2021/04/05', '2021/04/05', 0),
(96, 7, 'Signage', 'A', '2021/04/06', '2021/04/06', 0),
(97, 7, 'Show All Office Equipment', 'A', '2021/04/07', '2021/04/07', 0),
(98, 8, 'Action Camera', 'A', '2021/04/08', '2021/04/08', 0),
(99, 8, 'DSLR', 'A', '2021/04/09', '2021/04/09', 0),
(100, 8, 'Handycam', 'A', '2021/04/10', '2021/04/10', 0),
(101, 8, 'Camera Lenses', 'A', '2021/04/11', '2021/04/11', 0),
(102, 8, 'Digital Camera', 'A', '2021/04/12', '2021/04/12', 0),
(103, 8, 'Video Camera', 'A', '2021/04/13', '2021/04/13', 0),
(104, 8, 'Camera Flash', 'A', '2021/04/14', '2021/04/14', 0),
(105, 8, 'Camera Tripod', 'A', '2021/04/15', '2021/04/15', 0),
(106, 8, 'Camera Accessories', 'A', '2021/04/16', '2021/04/16', 0),
(107, 8, 'Show All Camera', 'A', '2021/04/17', '2021/04/17', 0),
(108, 9, 'Access Control', 'A', '2021/04/18', '2021/04/18', 0),
(109, 9, 'CC Camera', 'A', '2021/04/19', '2021/04/19', 0),
(110, 9, 'IP Camera', 'A', '2021/04/20', '2021/04/20', 0),
(111, 9, 'Door Lock', 'A', '2021/04/21', '2021/04/21', 0),
(112, 9, 'PTZ Camera', 'A', '2021/04/22', '2021/04/22', 0),
(113, 9, 'Dahua CC Camera Package', 'A', '2021/04/23', '2021/04/23', 0),
(114, 9, 'Dahua IP Camera Package', 'A', '2021/04/24', '2021/04/24', 0),
(115, 9, 'HIKVISION CC Camera Package', 'A', '2021/04/25', '2021/04/25', 0),
(116, 9, 'DVR', 'A', '2021/04/26', '2021/04/26', 0),
(117, 9, 'NVR', 'A', '2021/04/27', '2021/04/27', 0),
(118, 9, 'XVR', 'A', '2021/04/28', '2021/04/28', 0),
(119, 9, 'CC Camera Accessories', 'A', '2021/04/29', '2021/04/29', 0),
(120, 9, 'Home Security Door Bell', 'A', '2021/04/30', '2021/04/30', 0),
(121, 9, 'Digital Safe', 'A', '2021/05/01', '2021/05/01', 0),
(122, 9, 'Show All Security', 'A', '2021/05/02', '2021/05/02', 0),
(123, 10, 'Router', 'A', '2021/05/03', '2021/05/03', 0),
(124, 10, 'LAN Card', 'A', '2021/05/04', '2021/05/04', 0),
(125, 10, 'Access Point/Network Extender', 'A', '2021/05/05', '2021/05/05', 0),
(126, 10, 'Network Switch', 'A', '2021/05/06', '2021/05/06', 0),
(127, 10, 'Networking Accessories', 'A', '2021/05/07', '2021/05/07', 0),
(128, 10, 'Networking Tools', 'A', '2021/05/08', '2021/05/08', 0),
(129, 10, 'KVM SWITCH', 'A', '2021/05/09', '2021/05/09', 0),
(130, 10, 'Modem', 'A', '2021/05/10', '2021/05/10', 0),
(131, 10, 'Show All Networking', 'A', '2021/05/11', '2021/05/11', 0),
(132, 11, 'Keyboard', 'A', '2021/05/12', '2021/05/12', 0),
(133, 11, 'Mouse', 'A', '2021/05/13', '2021/05/13', 0),
(134, 11, 'Mouse Pad', 'A', '2021/05/14', '2021/05/14', 0),
(135, 11, 'Headphone', 'A', '2021/05/15', '2021/05/15', 0),
(136, 11, 'Speaker & Home Theater', 'A', '2021/05/16', '2021/05/16', 0),
(137, 11, 'Bluetooth Speakers', 'A', '2021/05/17', '2021/05/17', 0),
(138, 11, 'Ear Phone', 'A', '2021/05/18', '2021/05/18', 0),
(139, 11, 'Webcam', 'A', '2021/05/19', '2021/05/19', 0),
(140, 11, 'Microphone', 'A', '2021/05/20', '2021/05/20', 0),
(141, 11, 'Capture Card', 'A', '2021/05/21', '2021/05/21', 0),
(142, 11, 'Pen Drive', 'A', '2021/05/22', '2021/05/22', 0),
(143, 11, 'Memory Card', 'A', '2021/05/23', '2021/05/23', 0),
(144, 11, 'Power Bank', 'A', '2021/05/24', '2021/05/24', 0),
(145, 11, 'Presenter', 'A', '2021/05/25', '2021/05/25', 0),
(146, 11, 'TV Card', 'A', '2021/05/26', '2021/05/26', 0),
(147, 11, 'Converter & Cable', 'A', '2021/05/27', '2021/05/27', 0),
(148, 11, 'HDD-SSD Enclosure', 'A', '2021/05/28', '2021/05/28', 0),
(149, 11, 'Power Strip', 'A', '2021/05/29', '2021/05/29', 0),
(150, 11, 'Thermal Paste', 'A', '2021/05/30', '2021/05/30', 0),
(151, 11, 'Digital Voice Recorder', 'A', '2021/05/31', '2021/05/31', 0),
(152, 11, 'Bluetooth Receiver', 'A', '2021/06/01', '2021/06/01', 0),
(153, 11, 'PC Lighting & LED Strips', 'A', '2021/06/02', '2021/06/02', 0),
(154, 11, 'Show All Accessories', 'A', '2021/06/03', '2021/06/03', 0),
(155, 12, 'Microsoft', 'A', '2021/06/04', '2021/06/04', 0),
(156, 12, 'Antivirus', 'A', '2021/06/05', '2021/06/05', 0),
(157, 12, 'Adobe', 'A', '2021/06/06', '2021/06/06', 0),
(158, 12, 'Nuance', 'A', '2021/06/07', '2021/06/07', 0),
(159, 12, 'vmware', 'A', '2021/06/08', '2021/06/08', 0),
(160, 12, 'AutoDesk', 'A', '2021/06/09', '2021/06/09', 0),
(161, 12, 'REDHAT', 'A', '2021/06/10', '2021/06/10', 0),
(162, 12, 'Show All Software', 'A', '2021/06/11', '2021/06/11', 0),
(163, 13, 'Workstation', 'A', '2021/06/12', '2021/06/12', 0),
(164, 13, 'Server', 'A', '2021/06/13', '2021/06/13', 0),
(165, 13, 'Storage', 'A', '2021/06/14', '2021/06/14', 0),
(166, 13, 'Accessories', 'A', '2021/06/15', '2021/06/15', 0),
(167, 13, 'SIP Server', 'A', '2021/06/16', '2021/06/16', 0),
(168, 13, 'Show All Server & Storage', 'A', '2021/06/17', '2021/06/17', 0),
(169, 14, 'Starex', 'A', '2021/06/18', '2021/06/18', 0),
(170, 14, 'Xiaomi MI', 'A', '2021/06/19', '2021/06/19', 0),
(171, 14, 'Sony', 'A', '2021/06/20', '2021/06/20', 0),
(172, 14, 'Samsung', 'A', '2021/06/21', '2021/06/21', 0),
(173, 14, 'LG', 'A', '2021/06/22', '2021/06/22', 0),
(174, 14, 'Sky View', 'A', '2021/06/23', '2021/06/23', 0),
(175, 14, 'Wall Mount', 'A', '2021/06/24', '2021/06/24', 0),
(176, 14, 'Show All TV', 'A', '2021/06/25', '2021/06/25', 0),
(177, 15, 'GENERAL', 'A', '2021/06/26', '2021/06/26', 0),
(178, 15, 'Midea', 'A', '2021/06/27', '2021/06/27', 0),
(179, 15, 'Gree', 'A', '2021/06/28', '2021/06/28', 0),
(180, 15, 'Show All AC', 'A', '2021/06/29', '2021/06/29', 0),
(181, 16, 'Smart Watch', 'A', '2021/06/30', '2021/06/30', 0),
(182, 16, 'Smart Band', 'A', '2021/07/01', '2021/07/01', 0),
(183, 16, 'TV Box', 'A', '2021/07/02', '2021/07/02', 0),
(184, 16, 'Gimbal', 'A', '2021/07/03', '2021/07/03', 0),
(185, 16, 'Drones', 'A', '2021/07/04', '2021/07/04', 0),
(186, 16, 'Studio Equipment', 'A', '2021/07/05', '2021/07/05', 0),
(187, 16, 'Daily Lifestyle', 'A', '2021/07/06', '2021/07/06', 0),
(188, 16, 'Calculator', 'A', '2021/07/07', '2021/07/07', 0),
(189, 16, 'Blower', 'A', '2021/07/08', '2021/07/08', 0),
(190, 16, 'Mobile Phone Accessories', 'A', '2021/07/09', '2021/07/09', 0),
(191, 16, 'Stream Deck', 'A', '2021/07/10', '2021/07/10', 0),
(192, 16, 'Show All Gadget', 'A', '2021/07/11', '2021/07/11', 0),
(193, 17, 'Gaming Chair', 'A', '2021/07/12', '2021/07/12', 0),
(194, 17, 'Keyboard', 'A', '2021/07/13', '2021/07/13', 0),
(195, 17, 'Mouse', 'A', '2021/07/14', '2021/07/14', 0),
(196, 17, 'Headphone', 'A', '2021/07/15', '2021/07/15', 0),
(197, 17, 'Mouse Pad', 'A', '2021/07/16', '2021/07/16', 0),
(198, 17, 'Gamepad', 'A', '2021/07/17', '2021/07/17', 0),
(199, 17, 'Gaming Console', 'A', '2021/07/18', '2021/07/18', 0),
(200, 17, 'Gaming Desk', 'A', '2021/07/19', '2021/07/19', 0),
(201, 17, 'Games', 'A', '2021/07/20', '2021/07/20', 0),
(202, 17, 'Show All Gaming', 'A', '2021/07/21', '2021/07/21', 0),
(203, 3, 'adad', 'A', NULL, NULL, 0),
(204, 18, 'Test Sub', 'N', NULL, NULL, 0),
(205, 20, 'My Sub Categories', 'A', NULL, NULL, 4),
(206, 21, 'Gaming Chair', 'A', NULL, NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `user_type_id` int(10) UNSIGNED NOT NULL,
  `user_type_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type_status` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_info` datetime NOT NULL DEFAULT current_timestamp(),
  `update_info` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`user_type_id`, `user_type_name`, `user_type_status`, `create_info`, `update_info`) VALUES
(26, 'Admin', 'A', '2021-01-29 12:07:36', '2021-01-29 12:07:36'),
(27, 'Super Admin', 'A', '2021-01-29 12:08:47', '2021-01-29 12:08:47'),
(28, 'Customer', 'A', '2021-01-29 12:27:17', '2021-01-29 12:27:17'),
(29, 'Shop Admin', 'A', '2021-02-21 15:11:11', '2021-02-21 15:11:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admins_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brands_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `markets`
--
ALTER TABLE `markets`
  ADD PRIMARY KEY (`markets_id`);

--
-- Indexes for table `oder_info`
--
ALTER TABLE `oder_info`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`);

--
-- Indexes for table `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`product_types_id`);

--
-- Indexes for table `sheet1`
--
ALTER TABLE `sheet1`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `shiping_info`
--
ALTER TABLE `shiping_info`
  ADD PRIMARY KEY (`shiping_id`);

--
-- Indexes for table `shop_user`
--
ALTER TABLE `shop_user`
  ADD PRIMARY KEY (`shop_user_id`);

--
-- Indexes for table `slider_image`
--
ALTER TABLE `slider_image`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`sub_categories_id`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`user_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admins_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brands_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14547;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `markets`
--
ALTER TABLE `markets`
  MODIFY `markets_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `oder_info`
--
ALTER TABLE `oder_info`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `product_types`
--
ALTER TABLE `product_types`
  MODIFY `product_types_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sheet1`
--
ALTER TABLE `sheet1`
  MODIFY `categories_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `shiping_info`
--
ALTER TABLE `shiping_info`
  MODIFY `shiping_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shop_user`
--
ALTER TABLE `shop_user`
  MODIFY `shop_user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slider_image`
--
ALTER TABLE `slider_image`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `sub_categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `user_type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
