-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 13, 2022 at 12:39 PM
-- Server version: 8.0.21
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lumen_jwt_auth`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2022_01_13_094357_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `created_at`, `updated_at`, `name`, `email`, `password`) VALUES
(1, '2022-01-13 09:47:32', '2022-01-13 09:47:32', 'Kianna Ritchie', 'johnston.margarette@example.org', '$2y$10$2OLvtW8AExYwuXARBGgbger4r/.toHTxyVcrfUptyjLV9acS7bgy2'),
(2, '2022-01-13 09:47:32', '2022-01-13 09:47:32', 'Fae O\'Conner Jr.', 'orion96@example.com', '$2y$10$GAwDKXRl5tjAF5a4IxP79OtVa8QI4byWVVa4ZXjIjVsmO1EfFR8TW'),
(3, '2022-01-13 09:47:33', '2022-01-13 09:47:33', 'Dr. Estelle Collier', 'funk.anya@example.com', '$2y$10$/i45OeNqR0lzxBnxGvkIze00smXuCWUJNnjSqhxxB3mViQESTWUy2'),
(4, '2022-01-13 09:47:33', '2022-01-13 09:47:33', 'Dr. Marvin Feest Sr.', 'jordan49@example.org', '$2y$10$k0.h6OC7INYzZTl9cS1KOej0Fw4.JJq6p8vv9gN6YiMbCFZ//Wzse'),
(5, '2022-01-13 09:47:33', '2022-01-13 09:47:33', 'Greg Stokes', 'kweber@example.org', '$2y$10$wak8Io5zIoTvOP30F.7ydOIxsDw7JQwJs.KotgIQJmG/vhW1BQbUO'),
(6, '2022-01-13 11:11:02', '2022-01-13 11:11:02', 'Bashar', 'bashar@email.com', '$2y$10$/rLz2vv2CxlY1uJKtjAYlu2ISO4.iRUrJ9S29DZUJlOtUUP/3GVSa');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
