-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Oct 13, 2021 at 09:27 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `promom`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

DROP TABLE IF EXISTS `activity_logs`;
CREATE TABLE IF NOT EXISTS `activity_logs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `activity` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `users_id` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `activity`, `created_at`, `updated_at`, `users_id`) VALUES
(1, 'ID of 1 page update.', '2021-07-29 13:03:24', '2021-07-29 13:03:24', 1),
(2, 'ID of 1 brand added.', '2021-07-29 13:38:16', '2021-07-29 13:38:16', 1),
(3, 'Id of 23 product status updated.', '2021-07-29 13:41:35', '2021-07-29 13:41:35', 1),
(4, 'Id of 23 product status updated.', '2021-07-29 13:41:39', '2021-07-29 13:41:39', 1),
(5, 'ID of 1 page update.', '2021-07-29 14:03:03', '2021-07-29 14:03:03', 1),
(6, 'Id of 23 product status updated.', '2021-07-29 14:06:50', '2021-07-29 14:06:50', 1),
(7, 'ID of 23 product update.', '2021-07-29 14:07:15', '2021-07-29 14:07:15', 1),
(8, 'Id of 23 product status updated.', '2021-07-29 14:08:16', '2021-07-29 14:08:16', 1),
(9, 'ID of 23 product update.', '2021-07-29 14:19:11', '2021-07-29 14:19:11', 1),
(10, 'ID of 1 address added.', '2021-08-03 15:48:03', '2021-08-03 15:48:03', 1),
(11, 'ID of 2 address added.', '2021-08-03 15:51:25', '2021-08-03 15:51:25', 3),
(12, 'ID of 1 shipping added.', '2021-08-03 15:54:11', '2021-08-03 15:54:11', 1),
(13, 'ID of 1 tax added.', '2021-08-03 17:24:18', '2021-08-03 17:24:18', 1),
(14, 'ID of 2 address updated.', '2021-08-03 17:25:21', '2021-08-03 17:25:21', 3),
(15, 'ID of 1 shipping updated.', '2021-08-03 17:27:07', '2021-08-03 17:27:07', 1),
(16, 'ID of 1 brand update.', '2021-08-03 18:00:06', '2021-08-03 18:00:06', 1),
(17, 'ID of 14 product update.', '2021-08-03 18:07:32', '2021-08-03 18:07:32', 1),
(18, 'ID of 43 product added.', '2021-08-03 18:38:33', '2021-08-03 18:38:33', 1),
(19, 'ID of 43 product update.', '2021-08-03 18:47:27', '2021-08-03 18:47:27', 1),
(20, 'ID of 43 product update.', '2021-08-03 18:47:53', '2021-08-03 18:47:53', 1),
(21, 'ID of 14 product update.', '2021-08-03 18:48:30', '2021-08-03 18:48:30', 1),
(22, 'ID of 14 product image added.', '2021-08-04 16:16:47', '2021-08-04 16:16:47', 1),
(23, 'ID of 14 product image deleted.', '2021-08-04 16:25:51', '2021-08-04 16:25:51', 1),
(24, 'ID of 9 product update.', '2021-08-04 16:53:52', '2021-08-04 16:53:52', 1),
(25, 'ID of 9 product update.', '2021-08-04 16:55:38', '2021-08-04 16:55:38', 1),
(26, 'ID of 9 product update.', '2021-08-04 16:56:13', '2021-08-04 16:56:13', 1),
(27, 'ID of 1 tax update.', '2021-08-05 12:13:58', '2021-08-05 12:13:58', 1),
(28, 'ID of 3 tax update.', '2021-08-05 19:12:48', '2021-08-05 19:12:48', 1),
(29, 'ID of 3 tax update.', '2021-08-05 19:16:53', '2021-08-05 19:16:53', 1),
(30, 'ID of 4 tax update.', '2021-08-07 11:33:26', '2021-08-07 11:33:26', 1),
(31, 'ID of 5 tax update.', '2021-08-07 13:14:28', '2021-08-07 13:14:28', 1),
(32, 'ID of 1 tax update.', '2021-08-07 13:14:45', '2021-08-07 13:14:45', 1),
(33, 'ID of 2 tax update.', '2021-08-07 13:15:07', '2021-08-07 13:15:07', 1),
(34, 'ID of 3 user update password.', '2021-08-10 17:00:34', '2021-08-10 17:00:34', 1),
(38, 'ID of 1 coupon added.', '2021-08-11 16:41:34', '2021-08-11 16:41:34', 1),
(39, 'ID of 1 coupon update.', '2021-08-11 16:43:40', '2021-08-11 16:43:40', 1),
(40, 'ID of 1 coupon update.', '2021-08-11 16:51:24', '2021-08-11 16:51:24', 1),
(41, 'ID of 1 coupon update.', '2021-09-04 12:01:18', '2021-09-04 12:01:18', 1),
(42, 'ID of 1 coupon deleted.', '2021-09-04 13:48:56', '2021-09-04 13:48:56', 1),
(43, 'ID of 2 address updated.', '2021-09-05 01:03:28', '2021-09-05 01:03:28', 3),
(44, 'ID of 2 coupon added.', '2021-09-07 19:09:16', '2021-09-07 19:09:16', 1),
(45, 'ID of 1 shipping updated.', '2021-09-09 15:53:25', '2021-09-09 15:53:25', 1),
(46, 'ID of 1 shipping updated.', '2021-09-09 16:06:00', '2021-09-09 16:06:00', 1),
(47, 'ID of 6 address added.', '2021-10-06 14:19:05', '2021-10-06 14:19:05', 3);

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
CREATE TABLE IF NOT EXISTS `addresses` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `users_id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED DEFAULT NULL,
  `address_line_1` varchar(255) DEFAULT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `phone1` varchar(12) DEFAULT NULL,
  `phone2` varchar(12) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `pin_code` varchar(45) DEFAULT NULL,
  `primary` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `countries__id` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_addresses_users1_idx` (`users_id`),
  KEY `fk_addresses_countries1_idx` (`countries__id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `users_id`, `type`, `address_line_1`, `address_line_2`, `phone1`, `phone2`, `city`, `state`, `country`, `pin_code`, `primary`, `created_at`, `updated_at`, `status`, `countries__id`) VALUES
(1, 1, 2, '202 , Dhan Trident', '202 , Dhan Trident', NULL, NULL, 'indore', 'Madhya Pradesh', 'IN', '452012', 1, '2021-08-03 15:48:02', '2021-08-03 15:48:02', 1, 99),
(2, 3, 2, '202', 'Dhan Trident', '9827530980', '9827530980', 'indore', 'Madhya Pradesh', 'IN', '752012', 1, '2021-08-03 15:51:25', '2021-09-05 01:03:28', 1, 99),
(6, 3, 3, 'demo demo demo demo 2', 'demo demo demo demo 2', '7000960256', '9827530980', 'dewas', 'Madhya Pradesh', 'IN', '455001', 0, '2021-10-06 14:19:05', '2021-10-06 14:19:05', 1, 99);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `logo` varchar(150) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`_id`, `name`, `created_at`, `updated_at`, `description`, `logo`, `status`) VALUES
(1, 'Sniffsnpurrs', '2021-07-29 13:38:15', '2021-08-03 18:00:06', 'sniffsnpurrs', 'sniffsnpurrs-logo-w_610936c8a966b.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `parent_id` smallint(5) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`, `parent_id`) VALUES
(1, 'Dog', 1, '1900-01-20 05:39:25', '1900-01-20 05:39:25', NULL),
(2, 'Cat', 1, '1900-01-20 05:39:25', '1900-01-20 05:39:25', NULL),
(3, 'Small Pets', 1, '1900-01-20 05:39:25', '1900-01-20 05:39:25', NULL),
(4, 'Personalized', 1, '1900-01-20 05:39:25', '1900-01-20 05:39:25', NULL),
(5, 'Dog Food ', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 1),
(6, 'Treats, Biscuits, Chews ', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 1),
(7, 'Toys ', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 1),
(8, 'Grooming ', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 1),
(9, 'Collar, Leashes, Harness ', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 1),
(10, 'Fashion (Clothes) ', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 1),
(11, 'Diner, Bowl, Food Mats ', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 1),
(12, 'Dog Accessories ', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 1),
(13, 'Kennels and Carriers ', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 1),
(14, 'Supplements ', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 1),
(15, 'Hygiene Care', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 1),
(16, 'Specials', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 5),
(17, 'Dry Dog Food', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 5),
(18, 'Wet Dog Food', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 5),
(19, 'Puppy Food', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 5),
(20, 'Treats', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 6),
(21, 'Biscuits', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 6),
(22, 'Chews', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 7),
(23, 'Chew Toys', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 7),
(24, 'Plush Toys', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 7),
(25, 'Squeaker Toys', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 7),
(26, 'Rope Toys', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 7),
(27, 'Interactive Toys', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 7),
(28, 'Fetch and Tug Toys', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 8),
(29, 'Shampoos and Conditioner', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 8),
(30, 'Tick and Flea', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 8),
(31, 'Brushes and Combs', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 8),
(32, 'Towels and Wipes', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 8),
(33, 'Stain and Odour Control', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 8),
(34, 'Paw Care', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 9),
(35, 'Collar', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 9),
(36, 'Leashes', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 9),
(37, 'Harness', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 10),
(38, 'Sweater', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 10),
(39, 'Jackets', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 10),
(40, 'T-shirts and Shirts', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 10),
(41, 'Raincoat', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 10),
(42, 'Special Occasion Wear', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 11),
(43, 'Dog Bowls', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 11),
(44, 'Anti-Slip Food Mats', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 11),
(45, 'Bedding and Mats Beds', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 11),
(46, 'Mats', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 11),
(47, 'Blanket and Pillows', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 12),
(48, 'Personalized Name Tags', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 12),
(49, 'Shoes and Socks', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 12),
(50, 'Bow Ties', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 12),
(51, 'Bandanas', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 12),
(52, 'Party Accessories', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 13),
(53, 'Travel Gear', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 13),
(54, 'Kennels', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 13),
(55, 'Carriers', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 14),
(56, 'Multi-Vitamins', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 14),
(57, 'Herbal Supplements', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 15),
(58, 'Medicines and Supplements', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 15),
(59, 'Oral Care', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 15),
(60, 'Skin and Coat', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 15),
(61, 'Scooper and Waste Disposal', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 15),
(62, 'Diaper and Training', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 15),
(63, 'Tick and Flea', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 15),
(64, 'Pet Sanitizers', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 16),
(65, 'Gifts For Your Pets', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 16),
(66, 'Birthday Specials', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 16),
(67, 'Cat Food', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 2),
(68, 'Litter and Accessories', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 2),
(69, 'Cat Treats ', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 2),
(70, 'Cat Toys', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 2),
(71, 'Cat Furniture and Scratches', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 2),
(72, 'Cat Collars', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 2),
(73, 'Cat Grooming', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 2),
(74, 'Cat Bow Ties', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 2),
(75, 'Cat Bowls', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 2),
(76, 'Cat Beds and Craters', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 2),
(77, 'Pet Sanitizer', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 2),
(78, 'Cat Dry Food', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 67),
(79, 'Cat Wet Food', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 67),
(80, 'Shampoos and Conditioner', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 73),
(81, 'Tick and Flea', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 73),
(82, 'Brushes and Combs', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 73),
(83, 'Towels and Wipes', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 73),
(84, 'Stain and Odour Control', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 73),
(85, 'Paw Care', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 73),
(86, 'Food', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 3),
(87, 'Grooming', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 3),
(88, 'Toys', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 3),
(89, 'Accessories', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 3),
(90, 'Mats', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 4),
(91, 'Name Tags', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 4),
(92, 'Beds', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 4),
(93, 'Bow Ties', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 4),
(94, 'Bandanas', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 4),
(95, 'Diner', 1, '1900-01-20 11:09:25', '1900-01-20 11:09:25', 4);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `iso_code` char(2) NOT NULL,
  `name_capitalized` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `iso3_code` char(3) DEFAULT NULL,
  `iso_num_code` smallint(6) DEFAULT NULL,
  `phone_code` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`_id`, `iso_code`, `name_capitalized`, `name`, `iso3_code`, `iso_num_code`, `phone_code`) VALUES
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
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 243),
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
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 7),
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
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263),
(240, 'RS', 'SERBIA', 'Serbia', 'SRB', 688, 381),
(241, 'AP', 'ASIA PACIFIC REGION', 'Asia / Pacific Region', '0', 0, 0),
(242, 'ME', 'MONTENEGRO', 'Montenegro', 'MNE', 499, 382),
(243, 'AX', 'ALAND ISLANDS', 'Aland Islands', 'ALA', 248, 358),
(244, 'BQ', 'BONAIRE, SINT EUSTATIUS AND SABA', 'Bonaire, Sint Eustatius and Saba', 'BES', 535, 599),
(245, 'CW', 'CURACAO', 'Curacao', 'CUW', 531, 599),
(246, 'GG', 'GUERNSEY', 'Guernsey', 'GGY', 831, 44),
(247, 'IM', 'ISLE OF MAN', 'Isle of Man', 'IMN', 833, 44),
(248, 'JE', 'JERSEY', 'Jersey', 'JEY', 832, 44),
(249, 'XK', 'KOSOVO', 'Kosovo', '---', 0, 381),
(250, 'BL', 'SAINT BARTHELEMY', 'Saint Barthelemy', 'BLM', 652, 590),
(251, 'MF', 'SAINT MARTIN', 'Saint Martin', 'MAF', 663, 590),
(252, 'SX', 'SINT MAARTEN', 'Sint Maarten', 'SXM', 534, 1),
(253, 'SS', 'SOUTH SUDAN', 'South Sudan', 'SSD', 728, 211),
(999, '__', 'AOC - ALL OTHER COUNTRIES', 'AOC - All Other Countries', 'AOC', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(80) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `discount` double UNSIGNED DEFAULT NULL,
  `discount_type` tinyint(3) UNSIGNED DEFAULT NULL,
  `max_discount` double DEFAULT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `minimum_order_amount` double DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `uses_per_user` smallint(6) DEFAULT NULL,
  `products_scope` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`_id`, `title`, `description`, `code`, `start`, `end`, `discount`, `discount_type`, `max_discount`, `status`, `minimum_order_amount`, `created_at`, `updated_at`, `uses_per_user`, `products_scope`) VALUES
(2, 'product Discount 10 per', NULL, NULL, '2021-09-07 19:07:55', '2021-09-30 19:07:55', 10, 2, 1000, 1, NULL, '2021-09-07 19:09:16', '2021-09-07 19:09:16', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `coupon_products`
--

DROP TABLE IF EXISTS `coupon_products`;
CREATE TABLE IF NOT EXISTS `coupon_products` (
  `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `coupons__id` int(10) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`_id`),
  KEY `fk_coupon_products_coupons1_idx` (`coupons__id`),
  KEY `fk_coupon_products_products1_idx` (`products_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coupon_products`
--

INSERT INTO `coupon_products` (`_id`, `created_at`, `coupons__id`, `products_id`) VALUES
(6, '2021-09-07 19:09:16', 2, 1),
(7, '2021-09-07 19:09:16', 2, 2),
(8, '2021-09-07 19:09:16', 2, 3),
(9, '2021-09-07 19:09:16', 2, 4),
(10, '2021-09-07 19:09:16', 2, 5),
(11, '2021-09-07 19:09:16', 2, 6),
(12, '2021-09-07 19:09:16', 2, 7),
(13, '2021-09-07 19:09:16', 2, 8),
(14, '2021-09-07 19:09:16', 2, 9),
(15, '2021-09-07 19:09:16', 2, 10),
(16, '2021-09-07 19:09:16', 2, 11);

-- --------------------------------------------------------

--
-- Table structure for table `ordered_products`
--

DROP TABLE IF EXISTS `ordered_products`;
CREATE TABLE IF NOT EXISTS `ordered_products` (
  `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `products_id` int(10) UNSIGNED DEFAULT NULL,
  `orders__id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double DEFAULT NULL,
  `igst` decimal(10,0) NOT NULL DEFAULT 0,
  `cgst` decimal(10,0) NOT NULL DEFAULT 0,
  `sgst` decimal(10,0) NOT NULL DEFAULT 0,
  `tax_type` tinyint(3) NOT NULL DEFAULT 1 COMMENT '1-> inclusive, 2->exclusive ',
  `status` tinyint(4) DEFAULT NULL,
  `quantity` smallint(6) DEFAULT NULL,
  `custom_product_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `fk_ordered_producs_products1_idx` (`products_id`),
  KEY `fk_ordered_producs_orders1_idx` (`orders__id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ordered_products`
--

INSERT INTO `ordered_products` (`_id`, `created_at`, `updated_at`, `products_id`, `orders__id`, `name`, `price`, `igst`, `cgst`, `sgst`, `tax_type`, `status`, `quantity`, `custom_product_id`) VALUES
(1, '2021-08-03 15:55:29', '2021-08-03 15:55:29', 1, 1, 'Hand-Made Dog &  Bone Anti  Slip  Door Mat', 575, '0', '0', '0', 1, 1, 1, '1'),
(2, '2021-08-03 15:58:34', '2021-08-03 15:58:34', 3, 2, 'Hand-Made Cat Shadow Welcome Anti Slip Door Mat', 575, '0', '0', '0', 1, 1, 2, '3'),
(3, '2021-08-03 16:01:02', '2021-08-03 16:01:02', 4, 3, 'Hand-Made Inverted Cat Welcome Door Mat', 575, '0', '0', '0', 1, 1, 1, '4'),
(4, '2021-08-03 16:02:06', '2021-08-03 16:02:06', 10, 4, 'Hand-Made Owl Shape Anti Slip Door Mat', 625, '0', '0', '0', 1, 1, 1, '10'),
(5, '2021-08-03 16:02:57', '2021-08-03 16:02:57', 24, 5, 'Captain Zack-IRradicate Tick Repellent Biphasic Leave-in conditioner', 800, '0', '0', '0', 1, 1, 1, '13'),
(6, '2021-08-03 16:04:27', '2021-08-03 16:04:27', 32, 6, 'Captain Zack - Paw\'sitively Smooth', 350, '0', '0', '0', 1, 1, 1, '32'),
(7, '2021-08-03 17:28:38', '2021-08-03 17:28:38', 7, 7, 'Hand-Made Foot and Paw Print Door Mat', 575, '0', '0', '0', 1, 1, 1, '7'),
(8, '2021-08-03 18:49:37', '2021-08-03 18:49:37', 14, 8, 'Bairo Chicken and Egg Adult Dog Foot,16 Kg', 2350, '0', '0', '0', 1, 1, 1, '12'),
(9, '2021-08-04 13:30:23', '2021-08-04 13:30:23', 4, 9, 'Hand-Made Inverted Cat Welcome Door Mat', 575, '0', '0', '0', 1, 1, 2, '4'),
(10, '2021-08-04 13:30:23', '2021-08-04 13:30:23', 24, 9, 'Captain Zack-IRradicate Tick Repellent Biphasic Leave-in conditioner', 800, '0', '0', '0', 1, 1, 1, '13'),
(11, '2021-08-04 13:30:23', '2021-08-04 13:30:23', 32, 9, 'Captain Zack - Paw\'sitively Smooth', 350, '0', '0', '0', 1, 1, 2, '32'),
(16, '2021-08-12 15:30:18', '2021-08-12 15:30:18', 34, 11, 'Captain Zack - Scent\'sationally Yours - Jasmin', 450, '0', '0', '0', 1, 1, 1, '34'),
(17, '2021-08-12 15:30:18', '2021-08-12 15:30:18', 3, 11, 'Hand-Made Cat Shadow Welcome Anti Slip Door Mat', 575, '0', '0', '0', 1, 1, 1, '3'),
(18, '2021-08-12 15:30:18', '2021-08-12 15:30:18', 27, 11, 'Captain Zack - IRradicate Tick Repellent Shampoo', 950, '0', '0', '0', 1, 1, 1, '27'),
(19, '2021-08-12 15:30:18', '2021-08-12 15:30:18', 29, 11, 'Captain Zack - TazSoothe Itch Relief Biphasic Oil', 1250, '0', '0', '0', 1, 1, 1, '29'),
(20, '2021-08-12 18:02:52', '2021-08-12 18:02:52', 13, 12, 'Billi Real Tuna Fish Kitten Food, 500g', 145, '18', '9', '9', 1, 1, 1, '15'),
(21, '2021-08-12 18:02:52', '2021-08-12 18:02:52', 16, 12, 'Billi Real Ocean Fish Dry Adult Cat Food,3Kg', 799, '18', '9', '9', 1, 1, 1, '17'),
(22, '2021-08-12 18:02:52', '2021-08-12 18:02:52', 34, 12, 'Captain Zack - Scent\'sationally Yours - Jasmin', 450, '18', '9', '9', 1, 1, 1, '34'),
(23, '2021-08-12 18:02:52', '2021-08-12 18:02:52', 40, 12, 'Captain Zack - Shea Pleasure Sniffing You', 360, '18', '9', '9', 1, 1, 1, '40'),
(92, '2021-09-09 17:23:35', '2021-09-09 17:23:35', 15, 35, 'Bairo Fish and Rice Adult Dog Foot, 1Kg', 310, '18', '9', '9', 1, 1, 1, '16'),
(93, '2021-09-09 17:23:35', '2021-09-09 17:23:35', 21, 35, 'Bairo Puppy Chicken and Milk, 5Kg', 993, '18', '9', '9', 1, 1, 1, '22'),
(94, '2021-09-09 17:23:35', '2021-09-09 17:23:35', 22, 35, 'Bairo Meat and Rice Adult Dog Food', 3400, '18', '9', '9', 1, 1, 1, '23'),
(95, '2021-09-09 17:23:35', '2021-09-09 17:23:35', 24, 35, 'Captain Zack-IRradicate Tick Repellent Biphasic Leave-in conditioner', 800, '18', '9', '9', 1, 1, 1, '13'),
(96, '2021-09-09 18:27:34', '2021-09-09 18:27:34', 13, 36, 'Billi Real Tuna Fish Kitten Food, 500g', 145, '18', '9', '9', 1, 1, 2, '15'),
(97, '2021-09-09 18:27:34', '2021-09-09 18:27:34', 41, 36, 'Captain Zack - Wassup Pup?', 390, '18', '9', '9', 1, 1, 1, '41'),
(98, '2021-09-09 18:27:34', '2021-09-09 18:27:34', 20, 36, 'Bairo Puppy Dog Food 3Kg Economy pack', 700, '18', '9', '9', 1, 1, 2, '21'),
(99, '2021-09-09 18:27:34', '2021-09-09 18:27:34', 19, 36, 'Bairo Defender Mother and Puppy starter Dog Food 3Kg', 900, '18', '9', '9', 1, 1, 1, '20'),
(100, '2021-09-09 19:36:20', '2021-09-09 19:36:20', 1, 37, 'Hand-Made Dog &  Bone Anti  Slip  Door Mat', 575, '18', '9', '9', 1, 1, 1, '1'),
(101, '2021-10-06 14:24:03', '2021-10-06 14:24:03', 15, 38, 'Bairo Fish and Rice Adult Dog Foot, 1Kg', 310, '18', '9', '9', 1, 1, 1, '16'),
(102, '2021-10-06 14:24:03', '2021-10-06 14:24:03', 20, 38, 'Bairo Puppy Dog Food 3Kg Economy pack', 700, '18', '9', '9', 1, 1, 1, '21'),
(103, '2021-10-06 14:24:03', '2021-10-06 14:24:03', 24, 38, 'Captain Zack-IRradicate Tick Repellent Biphasic Leave-in conditioner', 800, '18', '9', '9', 1, 1, 1, '13'),
(104, '2021-10-06 14:24:03', '2021-10-06 14:24:03', 25, 38, 'Captain Zack - IRradicate Tick Repellent Powder', 400, '18', '9', '9', 1, 1, 1, '25');

-- --------------------------------------------------------

--
-- Table structure for table `ordered_product_options`
--

DROP TABLE IF EXISTS `ordered_product_options`;
CREATE TABLE IF NOT EXISTS `ordered_product_options` (
  `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `ordered_products__id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value_name` varchar(255) DEFAULT NULL,
  `addon_price` double DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `fk_ordered_product_options_ordered_products1_idx` (`ordered_products__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_uid` varchar(16) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `type` tinyint(3) UNSIGNED DEFAULT NULL,
  `payment_method` tinyint(3) UNSIGNED DEFAULT NULL,
  `payment_status` tinyint(3) UNSIGNED DEFAULT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `addresses_id` int(10) UNSIGNED NOT NULL,
  `addresses_id1` int(10) UNSIGNED NOT NULL,
  `currency_code` varchar(5) DEFAULT NULL,
  `name` varchar(80) DEFAULT NULL,
  `coupons__id` int(10) UNSIGNED DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `shipping_amount` double DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `business_email` varchar(150) DEFAULT NULL,
  `__data` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `fk_orders_users1_idx` (`users_id`),
  KEY `fk_orders_addresses1_idx` (`addresses_id`),
  KEY `fk_orders_addresses2_idx` (`addresses_id1`),
  KEY `fk_orders_coupons1_idx` (`coupons__id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`_id`, `order_uid`, `created_at`, `updated_at`, `status`, `type`, `payment_method`, `payment_status`, `users_id`, `addresses_id`, `addresses_id1`, `currency_code`, `name`, `coupons__id`, `discount_amount`, `shipping_amount`, `total_amount`, `business_email`, `__data`) VALUES
(1, '6109199959746', '2021-08-03 15:55:29', '2021-08-03 15:55:29', 1, 1, 4, 1, 3, 2, 2, 'INR', 'Aman parsai', NULL, NULL, 0, 575, 'vishal@keensolution.in', '{\"shipping_method_id\":1,\"shippingsData\":[{\"_id\":1,\"country\":\"IN\",\"type\":3,\"charges\":null,\"free_after_amount\":null,\"amount_cap\":null,\"status\":1,\"notes\":\"\",\"created_at\":\"2021-08-03 15:54:11\",\"updated_at\":\"2021-08-03 15:54:11\",\"countries__id\":99,\"__data\":null,\"shipping_types__id\":1,\"shipping_method_title\":\"all\",\"base_shipping_method_title\":\"all\"}]}'),
(2, '61091a51f228c', '2021-08-03 15:58:34', '2021-08-03 15:58:34', 1, 1, 4, 1, 3, 2, 2, 'INR', 'Aman parsai', NULL, NULL, 0, 1150, 'vishal@keensolution.in', '{\"shipping_method_id\":1,\"shippingsData\":[{\"_id\":1,\"country\":\"IN\",\"type\":3,\"charges\":null,\"free_after_amount\":null,\"amount_cap\":null,\"status\":1,\"notes\":\"\",\"created_at\":\"2021-08-03 15:54:11\",\"updated_at\":\"2021-08-03 15:54:11\",\"countries__id\":99,\"__data\":null,\"shipping_types__id\":1,\"shipping_method_title\":\"all\",\"base_shipping_method_title\":\"all\"}]}'),
(3, '61091ae61f016', '2021-08-03 16:01:02', '2021-08-03 16:01:02', 1, 1, 4, 1, 3, 2, 2, 'INR', 'Aman parsai', NULL, NULL, 0, 575, 'vishal@keensolution.in', '{\"shipping_method_id\":1,\"shippingsData\":[{\"_id\":1,\"country\":\"IN\",\"type\":3,\"charges\":null,\"free_after_amount\":null,\"amount_cap\":null,\"status\":1,\"notes\":\"\",\"created_at\":\"2021-08-03 15:54:11\",\"updated_at\":\"2021-08-03 15:54:11\",\"countries__id\":99,\"__data\":null,\"shipping_types__id\":1,\"shipping_method_title\":\"all\",\"base_shipping_method_title\":\"all\"}]}'),
(4, '61091b2659f24', '2021-08-03 16:02:06', '2021-08-03 16:44:19', 1, 1, 4, 2, 3, 2, 2, 'INR', 'Aman parsai', NULL, NULL, 0, 625, 'vishal@keensolution.in', '{\"shipping_method_id\":1,\"shippingsData\":[{\"_id\":1,\"country\":\"IN\",\"type\":3,\"charges\":null,\"free_after_amount\":null,\"amount_cap\":null,\"status\":1,\"notes\":\"\",\"created_at\":\"2021-08-03 15:54:11\",\"updated_at\":\"2021-08-03 15:54:11\",\"countries__id\":99,\"__data\":null,\"shipping_types__id\":1,\"shipping_method_title\":\"all\",\"base_shipping_method_title\":\"all\"}]}'),
(5, '61091b58f26f2', '2021-08-03 16:02:57', '2021-08-03 16:02:57', 1, 1, 4, 1, 3, 2, 2, 'INR', 'Aman parsai', NULL, NULL, 0, 800, 'vishal@keensolution.in', '{\"shipping_method_id\":1,\"shippingsData\":[{\"_id\":1,\"country\":\"IN\",\"type\":3,\"charges\":null,\"free_after_amount\":null,\"amount_cap\":null,\"status\":1,\"notes\":\"\",\"created_at\":\"2021-08-03 15:54:11\",\"updated_at\":\"2021-08-03 15:54:11\",\"countries__id\":99,\"__data\":null,\"shipping_types__id\":1,\"shipping_method_title\":\"all\",\"base_shipping_method_title\":\"all\"}]}'),
(6, '61091bb3461c6', '2021-08-03 16:04:27', '2021-08-04 12:46:28', 7, 1, 4, 2, 3, 2, 2, 'INR', 'Aman parsai', NULL, NULL, 0, 350, 'vishal@keensolution.in', '{\"shipping_method_id\":1,\"shippingsData\":[{\"_id\":1,\"country\":\"IN\",\"type\":3,\"charges\":null,\"free_after_amount\":null,\"amount_cap\":null,\"status\":1,\"notes\":\"\",\"created_at\":\"2021-08-03 15:54:11\",\"updated_at\":\"2021-08-03 15:54:11\",\"countries__id\":99,\"__data\":null,\"shipping_types__id\":1,\"shipping_method_title\":\"all\",\"base_shipping_method_title\":\"all\"}]}'),
(7, '61092f6ea6408', '2021-08-03 17:28:38', '2021-08-21 11:38:52', 12, 1, 4, 2, 3, 2, 2, 'INR', 'Aman parsai', NULL, NULL, 25, 703.5, 'vishal@keensolution.in', '{\"shipping_method_id\":1,\"shippingsData\":[{\"_id\":1,\"country\":\"IN\",\"type\":1,\"charges\":25,\"free_after_amount\":100000,\"amount_cap\":null,\"status\":1,\"notes\":\"\",\"created_at\":\"2021-08-03 15:54:11\",\"updated_at\":\"2021-08-03 17:27:06\",\"countries__id\":99,\"__data\":null,\"shipping_types__id\":1,\"shipping_method_title\":\"all\",\"base_shipping_method_title\":\"all\"}]}'),
(8, '6109426900889', '2021-08-03 18:49:37', '2021-08-21 11:36:57', 12, 1, 4, 2, 3, 2, 2, 'INR', 'Aman parsai', NULL, NULL, 25, 2798, 'vishal@keensolution.in', '{\"shipping_method_id\":1,\"shippingsData\":[{\"_id\":1,\"country\":\"IN\",\"type\":1,\"charges\":25,\"free_after_amount\":100000,\"amount_cap\":null,\"status\":1,\"notes\":\"\",\"created_at\":\"2021-08-03 15:54:11\",\"updated_at\":\"2021-08-03 17:27:06\",\"countries__id\":99,\"__data\":null,\"shipping_types__id\":1,\"shipping_method_title\":\"all\",\"base_shipping_method_title\":\"all\"}]}'),
(9, '610a4916d90a5', '2021-08-04 13:30:23', '2021-08-21 11:33:16', 12, 1, 4, 2, 3, 2, 2, 'INR', 'Aman parsai', NULL, NULL, 25, 3152, 'vishal@keensolution.in', '{\"shipping_method_id\":1,\"shippingsData\":[{\"_id\":1,\"country\":\"IN\",\"type\":1,\"charges\":25,\"free_after_amount\":100000,\"amount_cap\":null,\"status\":1,\"notes\":\"\",\"created_at\":\"2021-08-03 15:54:11\",\"updated_at\":\"2021-08-03 17:27:06\",\"countries__id\":99,\"__data\":null,\"shipping_types__id\":1,\"shipping_method_title\":\"all\",\"base_shipping_method_title\":\"all\"}]}'),
(11, '6114f131893e6', '2021-08-12 15:30:18', '2021-08-12 15:30:18', 1, 1, 4, 1, 3, 2, 2, 'INR', 'Aman parsai', NULL, NULL, 25, 3250, 'vishal@keensolution.in', '{\"shipping_method_id\":1,\"shippingsData\":[{\"_id\":1,\"country\":\"IN\",\"type\":1,\"charges\":25,\"free_after_amount\":100000,\"amount_cap\":null,\"status\":1,\"notes\":\"\",\"created_at\":\"2021-08-03 15:54:11\",\"updated_at\":\"2021-08-03 17:27:06\",\"countries__id\":99,\"__data\":null,\"shipping_types__id\":1,\"shipping_method_title\":\"all\",\"base_shipping_method_title\":\"all\"}]}'),
(12, '611514f38205c', '2021-08-12 18:02:52', '2021-08-18 17:24:05', 12, 1, 4, 2, 3, 2, 2, 'INR', 'Aman parsai', NULL, NULL, 25, 1779, 'vishal@keensolution.in', '{\"shipping_method_id\":1,\"shippingsData\":[{\"_id\":1,\"country\":\"IN\",\"type\":1,\"charges\":25,\"free_after_amount\":100000,\"amount_cap\":null,\"status\":1,\"notes\":\"\",\"created_at\":\"2021-08-03 15:54:11\",\"updated_at\":\"2021-08-03 17:27:06\",\"countries__id\":99,\"__data\":null,\"shipping_types__id\":1,\"shipping_method_title\":\"all\",\"base_shipping_method_title\":\"all\"}]}'),
(35, '6139f5bd165a3', '2021-09-09 17:23:35', '2021-09-09 17:23:35', 1, 1, 4, 1, 3, 2, 2, 'INR', 'Aman parsai', NULL, NULL, 124.4, 5627.4, 'vishal@keensolution.in', '{\"shipping_method_id\":1,\"shippingsData\":[{\"_id\":1,\"country\":\"IN\",\"type\":1,\"charges\":25,\"free_after_amount\":0,\"amount_cap\":null,\"status\":1,\"notes\":\"\",\"created_at\":\"2021-08-03 15:54:11\",\"updated_at\":\"2021-09-09 16:06:00\",\"countries__id\":99,\"__data\":null,\"shipping_types__id\":1,\"shipping_method_title\":\"Pre-Paid\",\"base_shipping_method_title\":\"Pre-Paid\"}]}'),
(36, '613a04bbd840c', '2021-09-09 18:27:34', '2021-09-09 18:27:34', 1, 1, 4, 1, 3, 2, 2, 'INR', 'Aman parsai', NULL, NULL, 124.4, 3104.4, 'vishal@keensolution.in', '{\"shipping_method_id\":1,\"shippingsData\":[{\"_id\":1,\"country\":\"IN\",\"type\":1,\"charges\":25,\"free_after_amount\":0,\"amount_cap\":null,\"status\":1,\"notes\":\"\",\"created_at\":\"2021-08-03 15:54:11\",\"updated_at\":\"2021-09-09 16:06:00\",\"countries__id\":99,\"__data\":null,\"shipping_types__id\":1,\"shipping_method_title\":\"Pre-Paid\",\"base_shipping_method_title\":\"Pre-Paid\"}]}'),
(37, '613a14d94857a', '2021-09-09 19:36:20', '2021-09-09 19:36:20', 1, 1, 4, 1, 3, 2, 2, 'INR', 'Aman parsai', NULL, NULL, 124.4, 641.9, 'vishal@keensolution.in', '{\"product_discount\":{\"1\":{\"isDiscountExist\":true,\"rawDiscount\":57.5,\"discount\":\"\\u20b957.50 INR\",\"productPrice\":517.5,\"formattedProductPrice\":\"\\u20b9517.50 INR\",\"discountDetails\":[{\"id\":2,\"title\":\"product Discount 10 per\",\"discount\":\"10%\",\"description\":null,\"formattedDiscountAmt\":\"10%\",\"formattedMaxAmount\":\"\\u20b91,000.00\",\"isAmountCapping\":false,\"formattedSingleDiscount\":\"\\u20b957.50\"}]}},\"shipping_method_id\":1,\"shippingsData\":[{\"_id\":1,\"country\":\"IN\",\"type\":1,\"charges\":25,\"free_after_amount\":0,\"amount_cap\":null,\"status\":1,\"notes\":\"\",\"created_at\":\"2021-08-03 15:54:11\",\"updated_at\":\"2021-09-09 16:06:00\",\"countries__id\":99,\"__data\":null,\"shipping_types__id\":1,\"shipping_method_title\":\"Pre-Paid\",\"base_shipping_method_title\":\"Pre-Paid\"}]}'),
(38, '615d6428e2467', '2021-10-06 14:24:02', '2021-10-06 14:24:02', 1, 1, 4, 1, 3, 6, 6, 'INR', 'Aman parsai', NULL, NULL, 108.7, 2318.7, 'vishal@keensolution.in', '{\"shipping_method_id\":1,\"shippingsData\":[{\"_id\":1,\"country\":\"IN\",\"type\":1,\"charges\":25,\"free_after_amount\":0,\"amount_cap\":null,\"status\":1,\"notes\":\"\",\"created_at\":\"2021-08-03 15:54:11\",\"updated_at\":\"2021-09-09 16:06:00\",\"countries__id\":99,\"__data\":null,\"shipping_types__id\":1,\"shipping_method_title\":\"Pre-Paid\",\"base_shipping_method_title\":\"Pre-Paid\"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `order_logs`
--

DROP TABLE IF EXISTS `order_logs`;
CREATE TABLE IF NOT EXISTS `order_logs` (
  `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `orders__id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `users_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `fk_order_logs_orders1_idx` (`orders__id`),
  KEY `fk_order_logs_users1_idx` (`users_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_logs`
--

INSERT INTO `order_logs` (`_id`, `created_at`, `updated_at`, `orders__id`, `description`, `users_id`, `ip_address`) VALUES
(1, '2021-08-03 15:55:29', '2021-08-03 15:55:29', 1, '{\"createdAt\":\"On Tuesday 3rd August 2021  3:55pm by Aman parsai\",\"message\":\"New Order Submitted\"}', 3, '::1'),
(2, '2021-08-03 15:58:34', '2021-08-03 15:58:34', 2, '{\"createdAt\":\"On Tuesday 3rd August 2021  3:58pm by Aman parsai\",\"message\":\"New Order Submitted\"}', 3, '::1'),
(3, '2021-08-03 16:01:02', '2021-08-03 16:01:02', 3, '{\"createdAt\":\"On Tuesday 3rd August 2021  4:01pm by Aman parsai\",\"message\":\"New Order Submitted\"}', 3, '::1'),
(4, '2021-08-03 16:02:06', '2021-08-03 16:02:06', 4, '{\"createdAt\":\"On Tuesday 3rd August 2021  4:02pm by Aman parsai\",\"message\":\"New Order Submitted\"}', 3, '::1'),
(5, '2021-08-03 16:02:57', '2021-08-03 16:02:57', 5, '{\"createdAt\":\"On Tuesday 3rd August 2021  4:02pm by Aman parsai\",\"message\":\"New Order Submitted\"}', 3, '::1'),
(6, '2021-08-03 16:04:27', '2021-08-03 16:04:27', 6, '{\"createdAt\":\"On Tuesday 3rd August 2021  4:04pm by Aman parsai\",\"message\":\"New Order Submitted\"}', 3, '::1'),
(7, '2021-08-03 16:44:19', '2021-08-03 16:44:19', 4, '{\"createdAt\":\"On Tuesday 3rd August 2021  4:44pm by Store Administrator\",\"message\":\"Payment for Order 4 has been recorded.\"}', 1, '::1'),
(8, '2021-08-03 17:28:38', '2021-08-03 17:28:38', 7, '{\"createdAt\":\"On Tuesday 3rd August 2021  5:28pm by Aman parsai\",\"message\":\"New Order Submitted\"}', 3, '::1'),
(9, '2021-08-03 17:30:47', '2021-08-03 17:30:47', 7, '{\"createdAt\":\"On Tuesday 3rd August 2021  5:30pm by Store Administrator\",\"message\":\"Payment for Order 7 has been recorded.\"}', 1, '::1'),
(10, '2021-08-03 18:49:37', '2021-08-03 18:49:37', 8, '{\"createdAt\":\"On Tuesday 3rd August 2021  6:49pm by Aman parsai\",\"message\":\"New Order Submitted\"}', 3, '::1'),
(11, '2021-08-03 18:50:34', '2021-08-03 18:50:34', 8, '{\"createdAt\":\"On Tuesday 3rd August 2021  6:50pm by Store Administrator\",\"message\":\"Payment for Order 8 has been recorded.\"}', 1, '::1'),
(12, '2021-08-04 12:43:36', '2021-08-04 12:43:36', 6, '{\"createdAt\":\"On Wednesday 4th August 2021  12:43pm by Store Administrator\",\"message\":\"Payment for Order 6 has been recorded.\"}', 1, '::1'),
(13, '2021-08-04 12:46:30', '2021-08-04 12:46:30', 6, '{\"createdAt\":\"On Wednesday 4th August 2021  12:46pm by Store Administrator\",\"message\":\"Order status updated from New to Confirmed\"}', 1, '::1'),
(14, '2021-08-04 13:30:23', '2021-08-04 13:30:23', 9, '{\"createdAt\":\"On Wednesday 4th August 2021  1:30pm by Aman parsai\",\"message\":\"New Order Submitted\"}', 3, '::1'),
(15, '2021-08-04 13:31:10', '2021-08-04 13:31:10', 9, '{\"createdAt\":\"On Wednesday 4th August 2021  1:31pm by Store Administrator\",\"message\":\"Payment for Order 9 has been recorded.\"}', 1, '::1'),
(17, '2021-08-12 15:30:18', '2021-08-12 15:30:18', 11, '{\"createdAt\":\"On Thursday 12th August 2021  3:30pm by Aman parsai\",\"message\":\"New Order Submitted\"}', 3, '::1'),
(18, '2021-08-12 18:02:52', '2021-08-12 18:02:52', 12, '{\"createdAt\":\"On Thursday 12th August 2021  6:02pm by Aman parsai\",\"message\":\"New Order Submitted\"}', 3, '::1'),
(19, '2021-08-12 20:01:51', '2021-08-12 20:01:51', 12, '{\"createdAt\":\"On Thursday 12th August 2021  8:01pm by Store Administrator\",\"message\":\"Payment for Order 12 has been recorded.\"}', 1, '::1'),
(20, '2021-08-18 15:21:56', '2021-08-18 15:21:56', 12, '{\"createdAt\":\"On Wednesday 18th August 2021  3:21pm by Store Administrator\",\"message\":\"Order status updated from New to Processing\"}', 1, '::1'),
(21, '2021-08-18 15:22:57', '2021-08-18 15:22:57', 12, '{\"createdAt\":\"On Wednesday 18th August 2021  3:22pm by Store Administrator\",\"message\":\"Order status updated from Processing to On Hold\"}', 1, '::1'),
(22, '2021-08-18 15:23:33', '2021-08-18 15:23:33', 12, '{\"createdAt\":\"On Wednesday 18th August 2021  3:23pm by Store Administrator\",\"message\":\"Order status updated from On Hold to Processing\"}', 1, '::1'),
(23, '2021-08-18 15:56:35', '2021-08-18 15:56:35', 12, '{\"createdAt\":\"On Wednesday 18th August 2021  3:56pm by Store Administrator\",\"message\":\"Order status updated from Shipped to On Hold\"}', 1, '::1'),
(24, '2021-08-18 15:58:04', '2021-08-18 15:58:04', 12, '{\"createdAt\":\"On Wednesday 18th August 2021  3:58pm by Store Administrator\",\"message\":\"Order status updated from Shipped to On Hold\"}', 1, '::1'),
(25, '2021-08-18 16:02:19', '2021-08-18 16:02:19', 12, '{\"createdAt\":\"On Wednesday 18th August 2021  4:02pm by Store Administrator\",\"message\":\"Order status updated from Shipped to On Hold\"}', 1, '::1'),
(26, '2021-08-18 16:18:39', '2021-08-18 16:18:39', 12, '{\"createdAt\":\"On Wednesday 18th August 2021  4:18pm by Store Administrator\",\"message\":\"Order status updated from Shipped to On Hold\"}', 1, '::1'),
(27, '2021-08-18 16:22:16', '2021-08-18 16:22:16', 12, '{\"createdAt\":\"On Wednesday 18th August 2021  4:22pm by Store Administrator\",\"message\":\"Order status updated from Shipped to On Hold\"}', 1, '::1'),
(28, '2021-08-18 16:51:54', '2021-08-18 16:51:54', 12, '{\"createdAt\":\"On Wednesday 18th August 2021  4:51pm by Store Administrator\",\"message\":\"Order status updated from Shipped to On Hold\"}', 1, '::1'),
(29, '2021-08-18 16:59:54', '2021-08-18 16:59:54', 12, '{\"createdAt\":\"On Wednesday 18th August 2021  4:59pm by Store Administrator\",\"message\":\"Order status updated from Shipped to On Hold\"}', 1, '::1'),
(30, '2021-08-18 17:23:44', '2021-08-18 17:23:44', 12, '{\"createdAt\":\"On Wednesday 18th August 2021  5:23pm by Store Administrator\",\"message\":\"Order status updated from Shipped to On Hold\"}', 1, '::1'),
(49, '2021-09-09 17:23:35', '2021-09-09 17:23:35', 35, '{\"createdAt\":\"On Thursday 9th September 2021  5:23pm by Aman parsai\",\"message\":\"New Order Submitted\"}', 3, '::1'),
(50, '2021-09-09 18:27:34', '2021-09-09 18:27:34', 36, '{\"createdAt\":\"On Thursday 9th September 2021  6:27pm by Aman parsai\",\"message\":\"New Order Submitted\"}', 3, '::1'),
(51, '2021-09-09 19:36:20', '2021-09-09 19:36:20', 37, '{\"createdAt\":\"On Thursday 9th September 2021  7:36pm by Aman parsai\",\"message\":\"New Order Submitted\"}', 3, '::1'),
(52, '2021-10-06 14:24:03', '2021-10-06 14:24:03', 38, '{\"createdAt\":\"On Wednesday 6th October 2021  2:24pm by Aman parsai\",\"message\":\"New Order Submitted\"}', 3, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `order_payments`
--

DROP TABLE IF EXISTS `order_payments`;
CREATE TABLE IF NOT EXISTS `order_payments` (
  `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `txn` varchar(45) DEFAULT NULL,
  `type` tinyint(3) UNSIGNED DEFAULT NULL,
  `payment_method` tinyint(3) UNSIGNED DEFAULT NULL,
  `currency_code` varchar(5) DEFAULT NULL,
  `gross_amount` double DEFAULT NULL,
  `fee` double DEFAULT NULL,
  `orders__id` int(10) UNSIGNED NOT NULL,
  `raw_data` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`_id`),
  KEY `fk_order_payments_orders1_idx` (`orders__id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_payments`
--

INSERT INTO `order_payments` (`_id`, `txn`, `type`, `payment_method`, `currency_code`, `gross_amount`, `fee`, `orders__id`, `raw_data`, `created_at`, `updated_at`) VALUES
(1, '123456789', 1, 4, 'INR', 625, 10, 4, '{\"comment\":\"good product\"}', '2021-08-03 16:44:19', '2021-08-03 16:44:19'),
(2, '78978987898', 1, 4, 'INR', 703.5, NULL, 7, '{\"comment\":\"good product1\"}', '2021-08-03 17:30:47', '2021-08-03 17:30:47'),
(3, '15238525', 1, 4, 'INR', 2798, NULL, 8, '{\"comment\":\"updated\"}', '2021-08-03 18:50:34', '2021-08-03 18:50:34'),
(4, '66846416848', 1, 4, 'INR', 350, NULL, 6, '{\"comment\":\"confirm\"}', '2021-08-04 12:43:36', '2021-08-04 12:43:36'),
(5, '789789789', 1, 4, 'INR', 3152, NULL, 9, '{\"comment\":\"confirm\"}', '2021-08-04 13:31:10', '2021-08-04 13:31:10'),
(6, '123221', 1, 4, 'INR', 1779, NULL, 12, '{\"comment\":\"NAAAAAAA\"}', '2021-08-12 20:01:51', '2021-08-12 20:01:51');

-- --------------------------------------------------------

--
-- Table structure for table `order_taxes`
--

DROP TABLE IF EXISTS `order_taxes`;
CREATE TABLE IF NOT EXISTS `order_taxes` (
  `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tax__id` int(10) UNSIGNED DEFAULT NULL,
  `orders__id` int(10) UNSIGNED NOT NULL,
  `amount` double DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`_id`),
  KEY `fk_order_taxes_tax1_idx` (`tax__id`),
  KEY `fk_order_taxes_orders1_idx` (`orders__id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_taxes`
--

INSERT INTO `order_taxes` (`_id`, `tax__id`, `orders__id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 103.5, '2021-08-03 17:28:38', '2021-08-03 17:28:38'),
(2, 1, 8, 423, '2021-08-03 18:49:37', '2021-08-03 18:49:37'),
(3, 1, 9, 477, '2021-08-04 13:30:23', '2021-08-04 13:30:23'),
(9, 1, 11, 0, '2021-08-12 15:30:18', '2021-08-12 15:30:18'),
(10, 2, 11, 0, '2021-08-12 15:30:18', '2021-08-12 15:30:18'),
(11, 3, 11, 0, '2021-08-12 15:30:18', '2021-08-12 15:30:18'),
(12, 4, 11, 0, '2021-08-12 15:30:18', '2021-08-12 15:30:18'),
(13, 5, 11, 0, '2021-08-12 15:30:18', '2021-08-12 15:30:18'),
(14, 1, 12, 0, '2021-08-12 18:02:52', '2021-08-12 18:02:52'),
(15, 2, 12, 0, '2021-08-12 18:02:52', '2021-08-12 18:02:52'),
(16, 3, 12, 0, '2021-08-12 18:02:52', '2021-08-12 18:02:52'),
(17, 4, 12, 0, '2021-08-12 18:02:52', '2021-08-12 18:02:52'),
(18, 5, 12, 0, '2021-08-12 18:02:52', '2021-08-12 18:02:52'),
(109, 1, 35, 0, '2021-09-09 17:23:35', '2021-09-09 17:23:35'),
(110, 2, 35, 0, '2021-09-09 17:23:35', '2021-09-09 17:23:35'),
(111, 3, 35, 0, '2021-09-09 17:23:35', '2021-09-09 17:23:35'),
(112, 4, 35, 0, '2021-09-09 17:23:35', '2021-09-09 17:23:35'),
(113, 5, 35, 0, '2021-09-09 17:23:35', '2021-09-09 17:23:35'),
(114, 1, 36, 0, '2021-09-09 18:27:34', '2021-09-09 18:27:34'),
(115, 2, 36, 0, '2021-09-09 18:27:34', '2021-09-09 18:27:34'),
(116, 3, 36, 0, '2021-09-09 18:27:34', '2021-09-09 18:27:34'),
(117, 4, 36, 0, '2021-09-09 18:27:34', '2021-09-09 18:27:34'),
(118, 5, 36, 0, '2021-09-09 18:27:34', '2021-09-09 18:27:34'),
(119, 1, 37, 0, '2021-09-09 19:36:20', '2021-09-09 19:36:20'),
(120, 2, 37, 0, '2021-09-09 19:36:20', '2021-09-09 19:36:20'),
(121, 3, 37, 0, '2021-09-09 19:36:20', '2021-09-09 19:36:20'),
(122, 4, 37, 0, '2021-09-09 19:36:20', '2021-09-09 19:36:20'),
(123, 5, 37, 0, '2021-09-09 19:36:20', '2021-09-09 19:36:20'),
(124, 1, 38, 0, '2021-10-06 14:24:03', '2021-10-06 14:24:03'),
(125, 2, 38, 0, '2021-10-06 14:24:03', '2021-10-06 14:24:03'),
(126, 3, 38, 0, '2021-10-06 14:24:03', '2021-10-06 14:24:03'),
(127, 4, 38, 0, '2021-10-06 14:24:03', '2021-10-06 14:24:03'),
(128, 5, 38, 0, '2021-10-06 14:24:03', '2021-10-06 14:24:03');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sku` varchar(100) DEFAULT NULL,
  `hsn` varchar(11) DEFAULT NULL,
  `tax__id` int(11) DEFAULT 0,
  `tax_type` tinyint(3) NOT NULL DEFAULT 1 COMMENT '1-> inclusive, 2->exclusive ',
  `thumbnail` varchar(255) NOT NULL,
  `product_id` varchar(45) NOT NULL,
  `description` text NOT NULL,
  `price` double NOT NULL,
  `old_price` double DEFAULT NULL,
  `weight` double(5,2) NOT NULL DEFAULT 0.50,
  `status` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `out_of_stock` tinyint(4) DEFAULT NULL,
  `brands__id` int(10) UNSIGNED DEFAULT NULL,
  `youtube_video` varchar(255) DEFAULT NULL,
  `specification_presets__id` int(10) UNSIGNED DEFAULT NULL,
  `__data` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_products_brands1_idx` (`brands__id`),
  KEY `fk_products_specification_presets1_idx` (`specification_presets__id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `hsn`, `tax__id`, `tax_type`, `thumbnail`, `product_id`, `description`, `price`, `old_price`, `weight`, `status`, `created_at`, `updated_at`, `featured`, `out_of_stock`, `brands__id`, `youtube_video`, `specification_presets__id`, `__data`) VALUES
(1, 'Hand-Made Dog &  Bone Anti  Slip  Door Mat', '0818211259872', '1602', 4, 1, '1_60ffbff659ec6.png', '1', '<p>This fun and quirky doormat is made from natural coconut fibre. These mats are 100% organic. Coconut fibre is perfect to take off dirt, mud and moisture from the shoes, thereby keeping away the daily mess that can enter your home. Printed with highest quality dyes, these mats are the perfect addition to a fun loving and happy home. The best way to ensure the longevity of the doormat is to simply clean the mat by shaking, sweeping and vacuuming. Do not rub into the mat and do not wash.</p>\r\n', 575, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 08:44:26', 1, 0, 1, 'no', NULL, NULL),
(2, 'Hand-Made Dog Welcome Anti Slip Door Mat', '0818211259616', '1602', 4, 1, '2_610121fbe7303.png', '2', '<p>This fun and quirky doormat is made from natural coconut fibre. These mats are 100% organic. Coconut fibre is perfect to take off dirt, mud and moisture from the shoes, thereby keeping away the daily mess that can enter your home. Printed with highest quality dyes, these mats are the perfect addition to a fun loving and happy home. The best way to ensure the longevity of the doormat is to simply clean the mat by shaking, sweeping and vacuuming. Do not rub into the mat and do not wash.</p>\n', 575, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 09:32:39', 1, 0, 1, 'no', NULL, NULL),
(3, 'Hand-Made Cat Shadow Welcome Anti Slip Door Mat', '0818211259467', '1602', 4, 1, '3_6101254c18be8.png', '3', '<p>This fun and quirky doormat is made from natural coconut fibre. These mats are 100% organic. Coconut fibre is perfect to take off dirt, mud and moisture from the shoes, thereby keeping away the daily mess that can enter your home. Printed with highest quality dyes, these mats are the perfect addition to a fun loving and happy home. The best way to ensure the longevity of the doormat is to simply clean the mat by shaking, sweeping and vacuuming. Do not rub into the mat and do not wash.</p>\n', 575, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 09:44:47', 1, 0, 1, 'no', NULL, NULL),
(4, 'Hand-Made Inverted Cat Welcome Door Mat', '0818211259488', '1602', 4, 1, '4_610127bc516d6.png', '4', '<p>This fun and quirky doormat is made from natural coconut fibre. These mats are 100% organic. Coconut fibre is perfect to take off dirt, mud and moisture from the shoes, thereby keeping away the daily mess that can enter your home. Printed with highest quality dyes, these mats are the perfect addition to a fun loving and happy home. The best way to ensure the longevity of the doormat is to simply clean the mat by shaking, sweeping and vacuuming. Do not rub into the mat and do not wash.</p>\n', 575, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 09:47:47', 1, 0, 1, 'no', NULL, NULL),
(5, 'Hand-Made Paws Printed Anti Slip Door Mat', '0818211259403', '1602', 4, 1, '5_610128877bd68.png', '5', '<p>This fun and quirky doormat is made from natural coconut fibre. These mats are 100% organic. Coconut fibre is perfect to take off dirt, mud and moisture from the shoes,thereby keeping away the daily mess that can enter your home. Printed with highest quality dyes, these mats are the perfect addition to a fun loving and happy home. The best way to ensure the longevity of the doormat is to simply clean the mat by shaking, sweeping and vacuuming. Do not rub into the mat and do not wash.</p>\n', 575, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 09:51:06', 1, 0, 1, 'no', NULL, NULL),
(6, 'Hand-Made Dog and Cat Anti Slip Door Mat', '0818211259735', '1602', 4, 1, '6_61012db066522.png', '6', '<p>This fun and quirky doormat is made from natural coconut fibre. These mats are 100% organic. Coconut fibre is perfect to take off dirt, mud and moisture from the shoes,thereby keeping away the daily mess that can enter your home. Printed with highest quality dyes, these mats are the perfect addition to a fun loving and happy home. The best way to ensure the longevity of the doormat is to simply clean the mat by shaking, sweeping and vacuuming. Do not rub into the mat and do not wash.</p>\n', 575, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 10:14:01', 1, 0, 1, 'no', NULL, NULL),
(7, 'Hand-Made Foot and Paw Print Door Mat', '0818211259555', '1602', 4, 1, '7_61012bd29b86a.jpg', '7', '<p>This fun and quirky doormat is made from natural coconut fibre. These mats are 100% organic. Coconut fibre is perfect to take off dirt, mud and moisture from the shoes,thereby keeping away the daily mess that can enter your home. Printed with highest quality dyes, these mats are the perfect addition to a fun loving and happy home. The best way to ensure the longevity of the doormat is to simply clean the mat by shaking, sweeping and vacuuming. Do not rub into the mat and do not wash.</p>\n', 575, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 10:05:11', 1, 0, 1, 'no', NULL, NULL),
(8, 'Hand-Made Elephant Shape Anti Slip Door Mat', '0818211259573', '1602', 4, 1, '8_61012e87ac8ad.jpg', '8', '<p>This fun and quirky doormat is made from natural coconut fibre. These mats are 100% organic. Coconut fibre is perfect to take off dirt, mud and moisture from the shoes,thereby keeping away the daily mess that can enter your home. Printed with highest quality dyes, these mats are the perfect addition to a fun loving and happy home. The best way to ensure the longevity of the doormat is to simply clean the mat by shaking, sweeping and vacuuming. Do not rub into the mat and do not wash.</p>\n', 625, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 10:16:48', 1, 0, 1, 'no', NULL, NULL),
(9, 'Hand-Made Cat Shape Door Mat', '0818211259198', '1602', 4, 1, '9_61012f54ae263.jpg', '9', '<p>This fun and quirky doormat is made from natural coconut fibre. These mats are 100% organic. Coconut fibre is perfect to take off dirt, mud and moisture from the shoes,thereby keeping away the daily mess that can enter your home. Printed with highest quality dyes, these mats are the perfect addition to a fun loving and happy home. The best way to ensure the longevity of the doormat is to simply clean the mat by shaking, sweeping and vacuuming. Do not rub into the mat and do not wash.</p>', 625, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-08-04 16:56:13', 1, 0, 1, 'no', NULL, '[]'),
(10, 'Hand-Made Owl Shape Anti Slip Door Mat', '0818211259271', '1602', 4, 1, '10_610130b77b33f.jpg', '10', '<p>This fun and quirky doormat is made from natural coconut fibre. These mats are 100% organic. Coconut fibre is perfect to take off dirt, mud and moisture from the shoes,thereby keeping away the daily mess that can enter your home. Printed with highest quality dyes, these mats are the perfect addition to a fun loving and happy home. The best way to ensure the longevity of the doormat is to simply clean the mat by shaking, sweeping and vacuuming. Do not rub into the mat and do not wash.</p>\n', 625, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 10:26:07', 1, 0, 1, 'no', NULL, NULL),
(11, 'Hand-Crafted Butterfly Shape Anti-Slip Floor mat', '0818211259764', '1602', 4, 1, '11_6101317675944.jpg', '11', '<p>This fun and quirky doormat is made from natural coconut fibre. These mats are 100% organic. Coconut fibre is perfect to take off dirt, mud and moisture from the shoes, thereby keeping away the daily mess that can enter your home. Printed with highest quality dyes, these mats are the perfect addition to a fun loving and happy home. The best way to ensure the longevity of the doormat is to simply clean the mat by shaking, sweeping and vacuuming. Do not rub into the mat and do not wash.</p>\n', 625, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 10:30:56', 1, 0, 1, 'no', NULL, NULL),
(12, 'Bill Real Chicken Adult Cat Food, 500g', '0818211259803', '1602', 4, 1, '12_6101382e29675.jpg', '14', '<p><strong>Billi Real Chicken Adult Cat Food</strong></p>\n\n<p>A well-rounded everyday diet of meats, fish, grains and other nutritious bits the growing adult needs to develop at the right pace. Get your adult&rsquo;s growing tummy off to the right start.</p>\n\n<p>Billi Adult Cat&nbsp;food is a nutritionally balanced and complete cat&nbsp;food. It is highly digestible and adult&rsquo;s love its great taste. It is formulated to meet and surpass the nutritional levels established by &lsquo;US National Research Council (NRC)&rsquo; and &lsquo;Association of American Feeds Control Officials (AAFCO).</p>\n\n<p><strong>Ingredients:</strong></p>\n\n<p>Rice bran, Fish meal, Chicken meal, Chicken fat, Rice bran oil, Fish oil, Brewer&rsquo;s yeast, Fish digest,&nbsp;Iodized salt, Minerals, Vitamins, Taurine, Antioxidants and food colouring.</p>\n\n<p><strong>Guaranteed Analysis:</strong></p>\n\n<p>Crude Protein&nbsp;&ndash; 30.0%, Crude Fat&nbsp;&ndash; 11.0%, Crude Fiber&nbsp;&ndash; 3.5%,&nbsp;Moisture&nbsp;&ndash; 10.0%, Taurine&nbsp;&ndash; 0.125%</p>\n\n<p><strong>Storage :</strong></p>\n\n<p>Keep in a cool and dry place and away from pet and insects.</p>\n', 135, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 11:00:09', 1, 0, 1, 'no', NULL, NULL),
(13, 'Billi Real Tuna Fish Kitten Food, 500g', '0818211259745', '1602', 4, 1, '13_6101397ddf79c.jpg', '15', '<p><strong>Billi Real Tuna Fish Kitten Food</strong></p>\n\n<p>A well-rounded everyday diet of meats, fish, grains and other nutritious bits the growing Kitten needs to develop at the right pace.&nbsp;</p>\n\n<p>Billi Adult Kitten food is a nutritionally balanced and complete cat&nbsp;food. It is highly digestible.&nbsp;It is formulated to meet and surpass the nutritional levels established by &lsquo;US National Research Council (NRC)&rsquo; and &lsquo;Association of American Feeds Control Officials (AAFCO).</p>\n\n<p><strong>Ingredients:</strong></p>\n\n<p>Tuna,&nbsp;&nbsp;Rice bran oil, Fish oil, Brewer&rsquo;s yeast, Fish digest, Tuna protein, Iodized salt, Minerals, Vitamins, Taurine, Antioxidants and food colouring.</p>\n\n<p><strong>Guaranteed Analysis:</strong></p>\n\n<p>Crude Protein&nbsp;&ndash; 30.0%, Crude Fat&nbsp;&ndash; 11.0%, Crude Fiber&nbsp;&ndash; 3.5%,&nbsp;Moisture&nbsp;&ndash; 10.0%, Taurine&nbsp;&ndash; 0.125%</p>\n\n<p><strong>Storage :</strong></p>\n\n<p>Keep in a cool and dry place and away from pet and insects.</p>\n', 145, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 11:04:29', 1, 0, 1, 'no', NULL, NULL),
(14, 'Bairo Chicken and Egg Adult Dog Foot,16 Kg', '0818211259705', '1602', 4, 1, '14_610132f0afd20.jpeg', '12', '<p><strong>Billi Real Chicken Adult Cat Food</strong></p>\n\n<p>A well-rounded everyday diet of meats, fish, grains and other nutritious bits the growing adult needs to develop at the right pace. Get your adult&rsquo;s growing tummy off to the right start.</p>\n\n<p>Billi Adult Cat&nbsp;food is a nutritionally balanced and complete cat&nbsp;food. It is highly digestible and adult&rsquo;s love its great taste. It is formulated to meet and surpass the nutritional levels established by &lsquo;US National Research Council (NRC)&rsquo; and &lsquo;Association of American Feeds Control Officials (AAFCO).</p>\n\n<p><strong>Ingredients:</strong></p>\n\n<p>Rice bran, Fish meal, Chicken meal, Chicken fat, Rice bran oil, Fish oil, Brewer&rsquo;s yeast, Fish digest,&nbsp;Iodized salt, Minerals, Vitamins, Taurine, Antioxidants and food colouring.</p>\n\n<p><strong>Guaranteed Analysis:</strong></p>\n\n<p>Crude Protein&nbsp;&ndash; 30.0%, Crude Fat&nbsp;&ndash; 11.0%, Crude Fiber&nbsp;&ndash; 3.5%,&nbsp;Moisture&nbsp;&ndash; 10.0%, Taurine&nbsp;&ndash; 0.125%</p>\n\n<p><strong>Storage :</strong></p>\n\n<p>Keep in a cool and dry place and away from pet and insects.</p>', 2350, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-08-04 16:25:51', 1, 0, 1, 'no', NULL, '[]'),
(15, 'Bairo Fish and Rice Adult Dog Foot, 1Kg', '0818211259288', '1602', 4, 1, '15_61013b4544ead.jpeg', '16', '<p><strong>Billi Real Tuna Fish Kitten Food</strong></p>\n\n<p>A well-rounded everyday diet of meats, fish, grains and other nutritious bits the growing Kitten needs to develop at the right pace.&nbsp;</p>\n\n<p>Billi Adult Kitten food is a nutritionally balanced and complete cat&nbsp;food. It is highly digestible.&nbsp;It is formulated to meet and surpass the nutritional levels established by &lsquo;US National Research Council (NRC)&rsquo; and &lsquo;Association of American Feeds Control Officials (AAFCO).</p>\n\n<p><strong>Ingredients:</strong></p>\n\n<p>Tuna,&nbsp;&nbsp;Rice bran oil, Fish oil, Brewer&rsquo;s yeast, Fish digest, Tuna protein, Iodized salt, Minerals, Vitamins, Taurine, Antioxidants and food colouring.</p>\n\n<p><strong>Guaranteed Analysis:</strong></p>\n\n<p>Crude Protein&nbsp;&ndash; 30.0%, Crude Fat&nbsp;&ndash; 11.0%, Crude Fiber&nbsp;&ndash; 3.5%,&nbsp;Moisture&nbsp;&ndash; 10.0%, Taurine&nbsp;&ndash; 0.125%</p>\n\n<p><strong>Storage :</strong></p>\n\n<p>Keep in a cool and dry place and away from pet and insects.</p>\n', 310, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 11:11:45', 1, 0, 1, 'no', NULL, NULL),
(16, 'Billi Real Ocean Fish Dry Adult Cat Food,3Kg', '0818211259327', '1602', 4, 1, '16_61013c7b02f0f.jpg', '17', '<h1>About this item</h1>\n\n<ul>\n	<li>This food formulated for adult cats over the age of one year.</li>\n	<li>Keep a clean bowl of fresh water available at all times.</li>\n	<li>Be sure to give your adult cat plenty of love, plenty of exercise and see your veteran regularly to help ensure total well-being.</li>\n</ul>\n', 799, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 11:16:28', 1, 0, 1, 'no', NULL, NULL),
(17, 'Billi Real Tuna Adult Cat Food , 3Kg', '0818211259770', '1602', 4, 1, '17_61013dd822319.jpeg', '18', '<p>&nbsp; &nbsp; &nbsp; &nbsp;About the Product</p>\n\n<ul>\n	<li>This food formulated for adult cats over the age of one year.</li>\n	<li>Keep a clean bowl of fresh water available at all times.</li>\n	<li>Be sure to give your adult cat plenty of love, plenty of exercise and see your veteran regularly to help ensure total well-being.</li>\n</ul>\n', 675, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 11:22:18', 1, 0, 1, 'no', NULL, NULL),
(18, 'Bairo Defender Puppy Breed Formula 1.5Kg', '0818211259871', '1602', 4, 1, '18_61013ed8ca8a0.jpg', '19', '<p>good&nbsp;</p>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp;About the Product</p>\n\n<ul>\n	<li>This food formulated for adult cats over the age of one year.</li>\n	<li>Keep a clean bowl of fresh water available at all times.</li>\n	<li>Be sure to give your adult cat plenty of love, plenty of exercise and see your veteran regularly to help ensure total well-being.</li>\n</ul>\n', 450, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 11:26:41', 1, 0, 1, 'no', NULL, NULL),
(19, 'Bairo Defender Mother and Puppy starter Dog Food 3Kg ', '0818211259465', '1602', 4, 1, '19_61013f9387a38.jpg', '20', '<p>good</p>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp;About the Product</p>\n\n<ul>\n	<li>This food formulated for adult cats over the age of one year.</li>\n	<li>Keep a clean bowl of fresh water available at all times.</li>\n	<li>Be sure to give your adult cat plenty of love, plenty of exercise and see your veteran regularly to help ensure total well-being.</li>\n</ul>\n', 900, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 11:29:43', 1, 0, 1, 'no', NULL, NULL),
(20, 'Bairo Puppy Dog Food 3Kg Economy pack', '0818211259617', '1602', 4, 1, '20_61013ff220a49.jpg', '21', '<ul>\n	<li>HEALTHY SKIN &amp; COAT : Contains essentail omega 6 &amp; 3 fatty acids and minerals combined in an optimal ratio that supports and promotes a heathy skin &amp; coat condition for your dog as well as good metabolism and eyesight.</li>\n	<li>HEALTHY MUSCLES MAINTENANCE : High quality meat and egg proteins are combined to provide a balance of protein for your adult dog, which contains the essential amino acids to support muscle maintenance and repair</li>\n	<li>HEALTHY DIGESTION : Highly digestible carbohydrates as well as soluble and insoluble fibers so that more nutrition goes to work inside your dog and maintain a healthy digestive system.</li>\n	<li>STRONG BONES &amp; TEETH : The correct mix of vitamins and minerals assists your adult dog in developing and maintaining strong bones &amp; teeth</li>\n	<li>STRONG IMMUNE SYSTEM : Vitamins, minerals and antioxidants supports a healthy immune system with the addition of vitamins A, D, K and selenium to protect your adult dog from infections, and help it cope in times of stress</li>\n</ul>\n', 700, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 11:31:21', 1, 0, 1, 'no', NULL, NULL),
(21, 'Bairo Puppy Chicken and Milk, 5Kg', '0818211259948', '1602', 4, 1, '21_6101404e7e3fc.jpg', '22', '<p>good</p>\n\n<ul>\n	<li>HEALTHY SKIN &amp; COAT : Contains essentail omega 6 &amp; 3 fatty acids and minerals combined in an optimal ratio that supports and promotes a heathy skin &amp; coat condition for your dog as well as good metabolism and eyesight.</li>\n	<li>HEALTHY MUSCLES MAINTENANCE : High quality meat and egg proteins are combined to provide a balance of protein for your adult dog, which contains the essential amino acids to support muscle maintenance and repair</li>\n	<li>HEALTHY DIGESTION : Highly digestible carbohydrates as well as soluble and insoluble fibers so that more nutrition goes to work inside your dog and maintain a healthy digestive system.</li>\n	<li>STRONG BONES &amp; TEETH : The correct mix of vitamins and minerals assists your adult dog in developing and maintaining strong bones &amp; teeth</li>\n	<li>STRONG IMMUNE SYSTEM : Vitamins, minerals and antioxidants supports a healthy immune system with the addition of vitamins A, D, K and selenium to protect your adult dog from infections, and help it cope in times of stress</li>\n</ul>\n', 993, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 11:41:32', 1, 0, 1, 'no', NULL, NULL),
(22, 'Bairo Meat and Rice Adult Dog Food', '0818211259889', '1602', 4, 1, '22_610140dc5420a.jpg', '23', '<p>Bairo Puppy Meat and Rice is a Scientifically formulated to meet the specfic requirements of Puppies.Bairo Puppy meal has right combination of animal based protein (including premium chicken meal),plus the right combination of cereals ,chicken fat ,lactose reduced milk,vegetable oils ,vegetable fibres and added Vitamins and minerals.Growing Puppies need extra energy (Protein and Fat) Bairo Puppy Formula has been developed to suit the nutritional requirements of a growing puppy.It provides Healthy Skin and Coat,Strong and healthy musclesHealthy digestion ,Strong Bones and teeth and strong immune system.Combination of Vitamin C and E to help promote your puppies&#39;s health .Composition - Protein - 26%,Fats-13.5% ,Moisture(Max)-10%,Fibre (Max)-4%</p>\n', 3400, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 11:35:31', 1, 0, 1, 'no', NULL, NULL),
(23, 'Bairo chicken and Egg Adult Dog Foot.', '0818211259601', '1602', 4, 1, '23_610141529baf8.jpg', '24', '<p>BAIRO Adult formula has been specially developed to suit the nutritional needs of an Adult Dog.</p>\n\n<ol>\n	<li><strong>Healthy Skin &amp; Coat</strong>: Contains essential Omega 3 &amp; 6 Fatty Acids and Minerals combined in an optimal ratio that supports and promotes healthy skin and coat condition for your dog as well as a good metabolism and eye sight</li>\n	<li><strong>Healthy Muscles Maintenance</strong>: High quality meat and egg proteins are combined to provide a balance of proteins for your Adult dog, which contains the essential amino acids to support muscle maintenance and repair</li>\n	<li><strong>Healthy Digestion</strong>: Highly digestible carbohydrates as well as soluble and insoluble Fibers, so that more nutrition goes to work inside your dog and maintain a healthy digestive system.</li>\n	<li><strong>Strong Bones &amp; Teeth</strong>: the correct mix of Vitamins &amp; Minerals assist your Adult dog in developing and maintaining strong bones and teeth.</li>\n	<li><strong>Strong Immune System</strong>: Vitamins, Minerals and Anti-oxidants supports a healthy immune system with the addition of Vitamins, A, D, K and Selenium to protect your Adult dog from infections and help it cope in times of stress.</li>\n</ol>\n\n<p><strong>Ingredients:</strong></p>\n\n<p>Cereals and Cereal by-products, Chicken and Chicken by-products, Milk powder, Vegetable proteins and Vegetable by-products, Animal fat, Vegetables oils, Iodized salt, Essential Vitamins &amp; Minerals, Flavours and approved Anti-oxidants. No Beef or Pork.</p>\n\n<p><strong>Storage :</strong></p>\n\n<p>Keep in a cool and dry place and away from pet and insects.</p>', 105, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-29 14:19:11', 1, 0, 1, 'no', NULL, '[]'),
(24, 'Captain Zack-IRradicate Tick Repellent Biphasic Leave-in conditioner', '0818211259341', '1602', 4, 1, '24_610134b22ec06.jpg', '13', '<p>IRradicate Biphasic Leave-In Conditioner with IR3535 prevents ticks from attaching onto the dog&rsquo;s body and provides intense nourishment for the skin and coat as prevention is always better than cure.</p>\n\n<p><br />\nIndication &amp; Use: For use as routine prophylaxis of tick infestation on dogs with a HIGH SAFETY INDEX. A clinical assessment by a veterinarian is essential for the appropriate indication of this remedy.</p>\n\n<p><strong>Safe for puppies six weeks and above.</strong></p>\n', 800, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 10:43:20', 1, 0, 1, 'no', NULL, NULL),
(25, 'Captain Zack - IRradicate Tick Repellent Powder', '0818211259899', '1602', 4, 1, '25_6101432a2f1c0.jpg', '25', '<p>IRradicate Powder is uniquely created for dual use of repelling ticks from the dog&rsquo;s body and the bedding of dog, as prevention is always better than cure.</p>\n\n<p><br />\nIndication &amp; Use: For use as routine prophylaxis of tick infestation on dogs with a HIGH SAFETY INDEX. A clinical assessment by a veterinarian is essential for the appropriate indication of this remedy.</p>\n\n<p><strong>Safe for puppies six week and above.</strong></p>\n', 400, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 11:44:56', 1, 0, 1, 'no', NULL, NULL),
(26, 'Captain Zack - IRradicate Tick Repellent Oil Spray', '0818211259474', '1602', 4, 1, '26_6101441cc9d84.jpg', '26', '<p>IRradicate Oil Spray is a flagship innovation, masterfully created for daily use to give round-the-clock IR3535R tick repellent protection. This daily routine is quick, enabling you to strengthen the bond with your dog, as prevention is always better than cure.</p>\n\n<p><br />\nIndication &amp; Use: For use as routine prophylaxisof tick infestation on dogs with a HIGH SAFETY INDEX. A clinical assessment by a veterinarian isessential for the appropriate indication of this remedy.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Safe for puppies six weeks and above.</strong></p>\n', 950, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 11:49:02', 1, 0, 1, 'no', NULL, NULL),
(27, 'Captain Zack - IRradicate Tick Repellent Shampoo ', '0818211259673', '1602', 4, 1, '27_610144dd71bee.jpg', '27', '<p>IRradicate Shampoo with IR3535 prevents ticks from attaching onto the dog&rsquo;s body and cleanses the skin, as prevention is always better than cure.</p>\n\n<p><br />\nIndication &amp; Use: For use as routine prophylaxis of tick infestation on dogs with a HIGH SAFETY INDEX. A clinical assessment by a veterinarian is essential for the appropriate indication of this remedy.</p>\n\n<p><strong>Safe for puppies six weeks and above.</strong></p>\n', 950, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 11:52:30', 1, 0, 1, 'no', NULL, NULL),
(28, 'Captain Zack - TazSoothe Itch Relief Leave-In Conditioner', '0818211259942', '1602', 4, 1, '28_610145746dfbf.jpg', '28', '<p>TazSoothe Leave-In Conditioner innovatively provides extended control of itching in dogs and<br />\nsoothe inflamed skin.<br />\nTazSoothe is an evidence based Topical Anti-Inflammatory for Dogs. It effectively relieves itching<br />\nand soothes skin inflammation.</p>\n\n<p><br />\nIndications &amp; Use: Dermatological conditions in<br />\ndogs causes inflammation and pruritis. Safe for<br />\nlong term use in Atopic Dermatitis. A clinical<br />\ndiagnosis made by the veterinarian is essential<br />\nfor the appropriate indication of this remedy.</p>\n\n<p><br />\n<strong>Safe for puppies six week and above.</strong></p>\n', 950, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 11:54:43', 1, 0, 1, 'no', NULL, NULL),
(29, 'Captain Zack - TazSoothe Itch Relief Biphasic Oil', '0818211259693', '1602', 4, 1, '29_610146504c7e4.jpg', '29', '<p>TazSoothe Itch Relief Biphasic Oil penetrates the<br />\ndeep dermis to control itching in dogs and nourishes the skin and coat.<br />\nTazSoothe is an evidence based Topical Anti-Inflammatory for Dogs. It effectively relieves itching<br />\nand soothes skin inflammation.</p>\n\n<p><br />\nIndications &amp; Use: Dermatological conditions in<br />\ndogs causes inflammation and pruritis. Safe for<br />\nlong term use in Atopic Dermatitis. A clinical<br />\ndiagnosis made by the veterinarian is essential<br />\nfor the appropriate indication of this remedy.</p>\n\n<p><br />\n<strong>Safe for puppies six week and above.</strong></p>\n', 1250, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 11:58:23', 1, 0, 1, 'no', NULL, NULL),
(30, 'Captain Zack - TazSoothe Itch Relief Spray', '0818211259640', '1602', 4, 1, '30_610146e24d8e6.jpg', '30', '<p>TazSoothe Spray provides round-the-clock control of itching with its daily use formula.<br />\nTazSoothe is an evidence based Topical Anti-Inflammatory for Dogs. It effectively relieves itching<br />\nand soothes skin inflammation.</p>\n\n<p><br />\nIndications &amp; Use: Dermatological conditions in<br />\ndogs causes inflammation and pruritis. Safe for<br />\nlong term use in Atopic Dermatitis. A clinical<br />\ndiagnosis made by the veterinarian is essential<br />\nfor the appropriate indication of this remedy.</p>\n\n<p><br />\n<strong>Safe for puppies six week and above.</strong></p>\n', 850, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 12:00:53', 1, 0, 1, 'no', NULL, NULL),
(31, 'Captain Zack - TazSoothe Itch Relief Shampoo', '0818211259120', '1602', 4, 1, '31_6101476b0206f.jpg', '31', '<p>TazSoothe Shampoo soothes inflamed skin and<br />\nis masterfully formulated to control itching in<br />\ndogs with cleansing of surface allergens.<br />\nTazSoothe is an evidence based Topical<br />\nAnti-Inflammatory for dogs. It effectively relieves<br />\nitching and soothes skin inflammation.</p>\n\n<p><br />\nIndications &amp; Use: Dermatological conditions in<br />\ndogs causes inflammation and pruritis. Safe for<br />\nlong term use in Atopic Dermatitis. A clinical<br />\ndiagnosis made by the veterinarian is essential<br />\nfor the appropriate indication of this remedy.</p>\n\n<p><br />\n<strong>Safe for puppies six weeks and above.</strong></p>\n', 1200, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 12:03:05', 1, 0, 1, 'no', NULL, NULL),
(32, 'Captain Zack - Paw\'sitively Smooth', '0818211259683', '1602', 4, 1, '32_610148364820c.jpg', '32', '<p>Paw&rsquo;sitively Smooth is a worry-free solution to<br />\nprotect your lovely pooch&rsquo;s paws and elbows<br />\nfrom cracking and chapping. Enriched with<br />\nLemongrass Oil, it keeps ticks &amp; fleas at bay.<br />\nNaturally moisturize, nourish, protect, and<br />\nsoothe your pet&rsquo;s sensitive paw pads and elbows<br />\nwith our natural healing butter. Made using<br />\n100% natural Shea Butter, Mango Butter and<br />\nAlmond Oil, it is an ideal option to ensure the<br />\nperfect health of the paw pads and elbows of<br />\nyour furry friend. Recommended for daily use.</p>\n\n<p><strong>Safe for all dog breeds.</strong></p>\n', 350, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 12:06:28', 1, 0, 1, 'no', NULL, NULL),
(33, 'Captain Zack - My Coat Can Gloat', '0818211259529', '1602', 4, 1, '33_610148db5535e.jpg', '33', '<p>My Coat can Gloat is formulated with Shea<br />\nButter, Jojoba Oil and Cucumber Seed Oil to<br />\nsoothe and hydrate dry skin. It also keeps the<br />\ncoat healthier in between baths. For best results,<br />\napply directly to coat after bathing and drying.<br />\nRecommended for bi-weekly use.<br />\nMy Coat Can Gloat<br />\n<br />\n<strong>Safe For All Dogs &amp; Cats</strong></p>\n', 390, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 12:09:19', 1, 0, 1, 'no', NULL, NULL),
(34, 'Captain Zack - Scent\'sationally Yours - Jasmin', '0818211259215', '1602', 4, 1, '34_6101496d01086.jpg', '34', '<p>Scent&rsquo;sationally Yours Cologne Spray will make<br />\nyour pets smell as great as they look. Infused<br />\nwith Jasmine Essential Oil, it is nourishing and<br />\ninstantly helps control pet odour. Better yet, it is<br />\nreally gentle and alcohol-free to prevent skin<br />\nirritation. Simply spray it on and your dog is ready<br />\nto be super social!</p>\n\n<p><strong>Safe For All Dogs, Cats &amp; Puppies</strong></p>\n', 450, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 12:11:52', 1, 0, 1, 'no', NULL, NULL),
(35, 'Captain Zack - Scent\'sationally Yours  - Apple and Green Tea', '0818211259919', '1602', 4, 1, '35_61014a171d54e.jpg', '35', '<p>Scent&rsquo;sationally Yours Cologne Spray will make<br />\nyour pets smell as great as they look. Infused<br />\nwith Apple and Green Tea extracts, it is nourishing and instantly helps control pet odour. Better<br />\nyet, it is really gentle and alcohol-free to prevent<br />\nskin irritation. Simply spray it on and your dog is<br />\nready to be super social!</p>\n\n<p><br />\n<strong>Safe For Puppies Over Six Weeks Old</strong></p>\n', 450, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 12:14:36', 1, 0, 1, NULL, NULL, NULL),
(36, 'Captain Zack - Bling On The Shine', '0818211259950', '1602', 4, 1, '36_61014a985ecf5.jpg', '36', '<p>Bling on the Shine is made with some of nature&rsquo;s finest ingredients for your peace of mind and a happy pet. This waterless shampoo offers a stress and mess-free way to keep your pet clean and smelling fresh between baths.<br />\nIt&rsquo;s natural no rinse formula is blended with Lavender and Chamomile to soothe and moisturize your pet&rsquo;s skin. Tap into nature&rsquo;s power with this gentle spray cleanser made with its nourishing qualities and natural extracts to give fur a super shine. Safe for every day use.</p>\n\n<p><strong>Safe for puppies over six weeks and above.</strong></p>\n', 99, 100, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 12:31:04', 1, 0, 1, NULL, NULL, NULL),
(37, 'Captain Zack - Tick\'et to Fleadom', '0818211259992', '1602', 4, 1, '37_61014b1d8182c.jpg', '37', '<p>Tick&rsquo;et to Fleadom is made with some of nature&rsquo;s<br />\nfinest ingredients such as Lemongrass and<br />\nCitronella essential oil for your peace of mind<br />\nand a happy pet. This waterless shampoo offers a<br />\nstress and mess-free way to keep your dog clean,<br />\nrepel ticks and maintain healthy skin.<br />\nTap into nature&rsquo;s power with this gentle spray<br />\ncleanser made with its nourshing qualities and<br />\nnatural extracts. Safe for every day use.</p>\n\n<p>Safe for puppies over six weeks and above.</p>\n', 99, NULL, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 12:18:54', NULL, 0, 1, NULL, NULL, NULL),
(38, 'Captain Zack - Zoey - Shiny & Mew', '0818211259111', '1602', 4, 1, '38_61014b891baf2.jpg', '38', '<p>Shiny &amp; Mew is a SULPHATE FREE cat &amp; kitten<br />\nshampoo specially formulated for sensitive,<br />\ndelicate or dry skin.<br />\nThe calming and healing effects of Lavender<br />\nalong with Lemongrass natural deodorizing<br />\nproperties make this shampoo usable for our<br />\npurry friends.</p>\n\n<p>Safe for all cats and kittens!</p>\n', 550, NULL, 0.50, 1, '2021-07-22 18:46:57', '2021-07-29 09:30:31', 1, 0, 1, NULL, NULL, NULL),
(39, 'Captain Zack - Barking Up the Tea Tree', '0818211259580', '1602', 4, 1, '39_61014bfe85b43.jpg', '39', '<p>Barking Up the Tea Tree is an anti-microbial/anti-fungal moisturizing shampoo.<br />\nNatural actives of Tea Tree oil helps soothe the coat and skin, reduces skin irritation and inflammation, while repelling parasites and other insects off your furry friend. Recommended for weekly use.</p>\n\n<p><strong>Safe for all dog breeds!</strong></p>\n', 360, NULL, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 12:22:29', NULL, 0, 1, NULL, NULL, NULL),
(40, 'Captain Zack - Shea Pleasure Sniffing You', '0818211259568', '1602', 4, 1, '40_61014c87bf1c4.jpg', '40', '<p>Shea Pleasure Sniffing You conditioning<br />\nshampoo is carefully packed with natural<br />\nbotanical actives of Shea Butter, Jojoba Oil<br />\nand Oatmeal which prevents irritation of itchy<br />\nskin, dry skin and adds vital moisturization to<br />\nthe pet&rsquo;s coat. Best for pets with a normal to<br />\nlong coat. Recommended for weekly use.</p>\n', 360, NULL, 0.50, 1, '2021-07-22 18:46:57', '2021-07-29 09:31:12', 1, 0, 1, NULL, NULL, NULL),
(41, 'Captain Zack - Wassup Pup?', '0818211259995', '1602', 4, 1, '41_61014d0b86475.jpg', '41', '<p>Wassup Pup? is a SULPHATE FREE puppy shampoo especially formulated for sensitive, delicate or dry skin. The calming and healing effects of Lavender<br />\nalong with Lemongrass&rsquo;s natural deodorizing effects makes this shampoo usable for sensitive pups and kittens. Recommended for weekly use.<br />\nWassup Pup?<br />\nLavender!<br />\nLemongra!<br />\n<strong>Safe For Kittens, Pups &amp; Sensitive Dog</strong></p>\n', 390, NULL, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 12:53:31', 1, 0, 1, NULL, NULL, NULL),
(42, 'Captain Zack - Excuse Me, Fleas !', '0818211259792', '1602', 4, 1, '42_61014d61449f3.jpg', '42', '<p>Excuse Me, Fleas! is an anti-microbial shampoo with essential oils and plant based ingredients that eliminate ticks and fleas. Natural essential oils of Citronella and Lemongrass are potent repellents of ticks and fleas, while actives of Aloe Vera and Vitamin E guard against skin infection, itchiness and improve the overall condition of their skin. Recommended for weekly use. Excuse Me, Fleas!</p>\n\n<p><br />\n<strong>Safe For All Breeds Of Dogs</strong></p>\n', 360, NULL, 0.50, 1, '2021-07-22 18:46:57', '2021-07-28 12:28:30', NULL, 0, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE IF NOT EXISTS `product_categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `categories_id` smallint(5) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_catgeories_categories1_idx` (`categories_id`),
  KEY `fk_product_catgeories_products1_idx` (`products_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `categories_id`, `products_id`, `created_at`, `updated_at`) VALUES
(72, 0, 18, '2021-07-28 09:19:25', '2021-07-28 09:19:25'),
(79, 1, 47, '2021-07-28 09:19:25', '2021-07-28 09:19:25'),
(80, 3, 47, '2021-07-28 09:19:25', '2021-07-28 09:19:25'),
(81, 5, 47, '2021-07-28 09:19:25', '2021-07-28 09:19:25'),
(82, 6, 47, '2021-07-28 09:19:25', '2021-07-28 09:19:25'),
(83, 4, 1, '2021-07-28 09:19:25', '2021-07-28 09:19:25'),
(84, 3, 1, '2021-07-28 09:21:12', '2021-07-28 09:21:12'),
(85, 3, 2, '2021-07-28 09:32:39', '2021-07-28 09:32:39'),
(86, 4, 2, '2021-07-28 09:32:39', '2021-07-28 09:32:39'),
(87, 3, 3, '2021-07-28 09:44:47', '2021-07-28 09:44:47'),
(88, 4, 3, '2021-07-28 09:44:47', '2021-07-28 09:44:47'),
(89, 3, 4, '2021-07-28 09:47:47', '2021-07-28 09:47:47'),
(90, 4, 4, '2021-07-28 09:47:47', '2021-07-28 09:47:47'),
(91, 3, 5, '2021-07-28 09:49:54', '2021-07-28 09:49:54'),
(92, 4, 5, '2021-07-28 09:49:54', '2021-07-28 09:49:54'),
(93, 3, 7, '2021-07-28 09:56:50', '2021-07-28 09:56:50'),
(94, 4, 7, '2021-07-28 09:56:50', '2021-07-28 09:56:50'),
(95, 3, 6, '2021-07-28 10:14:01', '2021-07-28 10:14:01'),
(96, 4, 6, '2021-07-28 10:14:01', '2021-07-28 10:14:01'),
(97, 3, 8, '2021-07-28 10:16:48', '2021-07-28 10:16:48'),
(98, 4, 8, '2021-07-28 10:16:48', '2021-07-28 10:16:48'),
(99, 3, 9, '2021-07-28 10:21:24', '2021-07-28 10:21:24'),
(100, 4, 9, '2021-07-28 10:21:24', '2021-07-28 10:21:24'),
(101, 3, 10, '2021-07-28 10:26:07', '2021-07-28 10:26:07'),
(102, 4, 10, '2021-07-28 10:26:07', '2021-07-28 10:26:07'),
(103, 3, 11, '2021-07-28 10:29:43', '2021-07-28 10:29:43'),
(104, 4, 11, '2021-07-28 10:29:43', '2021-07-28 10:29:43'),
(105, 4, 14, '2021-07-28 10:36:27', '2021-07-28 10:36:27'),
(106, 29, 24, '2021-07-28 10:43:20', '2021-07-28 10:43:20'),
(107, 2, 12, '2021-07-28 11:00:09', '2021-07-28 11:00:09'),
(108, 2, 13, '2021-07-28 11:04:30', '2021-07-28 11:04:30'),
(109, 1, 15, '2021-07-28 11:11:45', '2021-07-28 11:11:45'),
(110, 2, 16, '2021-07-28 11:16:28', '2021-07-28 11:16:28'),
(111, 2, 17, '2021-07-28 11:22:18', '2021-07-28 11:22:18'),
(112, 1, 19, '2021-07-28 11:29:43', '2021-07-28 11:29:43'),
(113, 1, 20, '2021-07-28 11:31:21', '2021-07-28 11:31:21'),
(114, 1, 21, '2021-07-28 11:32:56', '2021-07-28 11:32:56'),
(115, 1, 22, '2021-07-28 11:35:31', '2021-07-28 11:35:31'),
(116, 1, 23, '2021-07-28 11:37:08', '2021-07-28 11:37:08'),
(117, 1, 25, '2021-07-28 11:44:56', '2021-07-28 11:44:56'),
(118, 8, 25, '2021-07-28 11:44:56', '2021-07-28 11:44:56'),
(119, 30, 25, '2021-07-28 11:44:56', '2021-07-28 11:44:56'),
(120, 15, 25, '2021-07-28 11:44:56', '2021-07-28 11:44:56'),
(121, 1, 26, '2021-07-28 11:49:02', '2021-07-28 11:49:02'),
(122, 8, 26, '2021-07-28 11:49:02', '2021-07-28 11:49:02'),
(123, 30, 26, '2021-07-28 11:49:02', '2021-07-28 11:49:02'),
(124, 15, 26, '2021-07-28 11:49:02', '2021-07-28 11:49:02'),
(125, 1, 27, '2021-07-28 11:52:30', '2021-07-28 11:52:30'),
(126, 8, 27, '2021-07-28 11:52:30', '2021-07-28 11:52:30'),
(127, 29, 27, '2021-07-28 11:52:30', '2021-07-28 11:52:30'),
(128, 30, 27, '2021-07-28 11:52:30', '2021-07-28 11:52:30'),
(129, 15, 27, '2021-07-28 11:52:30', '2021-07-28 11:52:30'),
(130, 1, 28, '2021-07-28 11:54:43', '2021-07-28 11:54:43'),
(131, 8, 28, '2021-07-28 11:54:43', '2021-07-28 11:54:43'),
(132, 29, 28, '2021-07-28 11:54:43', '2021-07-28 11:54:43'),
(133, 30, 28, '2021-07-28 11:54:43', '2021-07-28 11:54:43'),
(134, 15, 28, '2021-07-28 11:54:43', '2021-07-28 11:54:43'),
(135, 1, 29, '2021-07-28 11:58:23', '2021-07-28 11:58:23'),
(136, 8, 29, '2021-07-28 11:58:23', '2021-07-28 11:58:23'),
(137, 30, 29, '2021-07-28 11:58:23', '2021-07-28 11:58:23'),
(138, 15, 29, '2021-07-28 11:58:23', '2021-07-28 11:58:23'),
(139, 1, 30, '2021-07-28 12:00:53', '2021-07-28 12:00:53'),
(140, 8, 30, '2021-07-28 12:00:53', '2021-07-28 12:00:53'),
(141, 30, 30, '2021-07-28 12:00:53', '2021-07-28 12:00:53'),
(142, 15, 30, '2021-07-28 12:00:53', '2021-07-28 12:00:53'),
(143, 1, 31, '2021-07-28 12:03:05', '2021-07-28 12:03:05'),
(144, 8, 31, '2021-07-28 12:03:05', '2021-07-28 12:03:05'),
(145, 30, 31, '2021-07-28 12:03:05', '2021-07-28 12:03:05'),
(146, 15, 31, '2021-07-28 12:03:05', '2021-07-28 12:03:05'),
(147, 1, 32, '2021-07-28 12:06:28', '2021-07-28 12:06:28'),
(148, 8, 32, '2021-07-28 12:06:28', '2021-07-28 12:06:28'),
(149, 29, 32, '2021-07-28 12:06:28', '2021-07-28 12:06:28'),
(150, 34, 32, '2021-07-28 12:06:28', '2021-07-28 12:06:28'),
(151, 73, 32, '2021-07-28 12:06:28', '2021-07-28 12:06:28'),
(152, 1, 33, '2021-07-28 12:09:19', '2021-07-28 12:09:19'),
(153, 8, 33, '2021-07-28 12:09:19', '2021-07-28 12:09:19'),
(154, 29, 33, '2021-07-28 12:09:19', '2021-07-28 12:09:19'),
(155, 34, 33, '2021-07-28 12:09:19', '2021-07-28 12:09:19'),
(156, 1, 34, '2021-07-28 12:11:52', '2021-07-28 12:11:52'),
(157, 8, 34, '2021-07-28 12:11:52', '2021-07-28 12:11:52'),
(158, 29, 34, '2021-07-28 12:11:52', '2021-07-28 12:11:52'),
(159, 33, 34, '2021-07-28 12:11:52', '2021-07-28 12:11:52'),
(160, 73, 34, '2021-07-28 12:11:52', '2021-07-28 12:11:52'),
(161, 84, 34, '2021-07-28 12:11:52', '2021-07-28 12:11:52'),
(162, 1, 35, '2021-07-28 12:14:36', '2021-07-28 12:14:36'),
(163, 8, 35, '2021-07-28 12:14:36', '2021-07-28 12:14:36'),
(164, 29, 35, '2021-07-28 12:14:36', '2021-07-28 12:14:36'),
(165, 33, 35, '2021-07-28 12:14:36', '2021-07-28 12:14:36'),
(166, 73, 35, '2021-07-28 12:14:36', '2021-07-28 12:14:36'),
(167, 84, 35, '2021-07-28 12:14:36', '2021-07-28 12:14:36'),
(168, 1, 36, '2021-07-28 12:16:35', '2021-07-28 12:16:35'),
(169, 8, 36, '2021-07-28 12:16:35', '2021-07-28 12:16:35'),
(170, 29, 36, '2021-07-28 12:16:35', '2021-07-28 12:16:35'),
(171, 34, 36, '2021-07-28 12:16:35', '2021-07-28 12:16:35'),
(172, 73, 36, '2021-07-28 12:16:35', '2021-07-28 12:16:35'),
(173, 80, 36, '2021-07-28 12:16:35', '2021-07-28 12:16:35'),
(174, 1, 37, '2021-07-28 12:18:54', '2021-07-28 12:18:54'),
(175, 8, 37, '2021-07-28 12:18:54', '2021-07-28 12:18:54'),
(176, 30, 37, '2021-07-28 12:18:54', '2021-07-28 12:18:54'),
(177, 15, 37, '2021-07-28 12:18:54', '2021-07-28 12:18:54'),
(178, 73, 38, '2021-07-28 12:20:57', '2021-07-28 12:20:57'),
(179, 80, 38, '2021-07-28 12:20:57', '2021-07-28 12:20:57'),
(180, 1, 39, '2021-07-28 12:22:29', '2021-07-28 12:22:29'),
(181, 8, 39, '2021-07-28 12:22:29', '2021-07-28 12:22:29'),
(182, 29, 39, '2021-07-28 12:22:29', '2021-07-28 12:22:29'),
(183, 1, 40, '2021-07-28 12:24:52', '2021-07-28 12:24:52'),
(184, 8, 40, '2021-07-28 12:24:52', '2021-07-28 12:24:52'),
(185, 29, 40, '2021-07-28 12:24:52', '2021-07-28 12:24:52'),
(186, 15, 40, '2021-07-28 12:24:52', '2021-07-28 12:24:52'),
(187, 73, 40, '2021-07-28 12:24:52', '2021-07-28 12:24:52'),
(188, 1, 41, '2021-07-28 12:27:05', '2021-07-28 12:27:05'),
(189, 8, 41, '2021-07-28 12:27:05', '2021-07-28 12:27:05'),
(190, 29, 41, '2021-07-28 12:27:05', '2021-07-28 12:27:05'),
(191, 15, 41, '2021-07-28 12:27:05', '2021-07-28 12:27:05'),
(192, 2, 41, '2021-07-28 12:27:05', '2021-07-28 12:27:05'),
(193, 1, 42, '2021-07-28 12:28:30', '2021-07-28 12:28:30'),
(194, 8, 42, '2021-07-28 12:28:30', '2021-07-28 12:28:30'),
(195, 29, 42, '2021-07-28 12:28:30', '2021-07-28 12:28:30'),
(196, 30, 42, '2021-07-28 12:28:30', '2021-07-28 12:28:30'),
(197, 15, 42, '2021-07-28 12:28:30', '2021-07-28 12:28:30'),
(198, 2, 42, '2021-07-28 12:28:30', '2021-07-28 12:28:30'),
(199, 1, 43, '2021-08-03 18:38:33', '2021-08-03 18:38:33');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
CREATE TABLE IF NOT EXISTS `product_images` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `list_order` tinyint(3) UNSIGNED DEFAULT NULL,
  `product_option_values_id` mediumint(8) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_images_products1_idx` (`products_id`),
  KEY `fk_product_images_product_option_values1_idx` (`product_option_values_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_notifications`
--

DROP TABLE IF EXISTS `product_notifications`;
CREATE TABLE IF NOT EXISTS `product_notifications` (
  `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `users_id` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `fk_product_notifications_products1_idx` (`products_id`),
  KEY `fk_product_notifications_users1_idx` (`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_option_labels`
--

DROP TABLE IF EXISTS `product_option_labels`;
CREATE TABLE IF NOT EXISTS `product_option_labels` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_option_labels_products1_idx` (`products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_option_values`
--

DROP TABLE IF EXISTS `product_option_values`;
CREATE TABLE IF NOT EXISTS `product_option_values` (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `addon_price` double DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `product_option_labels_id` smallint(5) UNSIGNED NOT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_option_values_product_option_labels1_idx` (`product_option_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_questions`
--

DROP TABLE IF EXISTS `product_questions`;
CREATE TABLE IF NOT EXISTS `product_questions` (
  `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED DEFAULT NULL,
  `question` varchar(255) NOT NULL,
  `answer` text DEFAULT NULL,
  `users_id` int(10) UNSIGNED DEFAULT NULL,
  `type` tinyint(3) UNSIGNED DEFAULT NULL,
  `product_questions__id` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `fk_faqs_products1_idx` (`products_id`),
  KEY `fk_faqs_users1_idx` (`users_id`),
  KEY `fk_product_questions_product_questions1_idx` (`product_questions__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_ratings`
--

DROP TABLE IF EXISTS `product_ratings`;
CREATE TABLE IF NOT EXISTS `product_ratings` (
  `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `rating` tinyint(3) UNSIGNED DEFAULT NULL,
  `review` text DEFAULT NULL,
  `users_id` int(10) UNSIGNED DEFAULT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`_id`),
  KEY `fk_product_ratings_users1_idx` (`users_id`),
  KEY `fk_product_ratings_products1_idx` (`products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_specifications`
--

DROP TABLE IF EXISTS `product_specifications`;
CREATE TABLE IF NOT EXISTS `product_specifications` (
  `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `specifications__id` int(10) UNSIGNED DEFAULT NULL,
  `specification_values__id` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `fk_product_specifications_products1_idx` (`products_id`),
  KEY `fk_product_specifications_specifications1_idx` (`specifications__id`),
  KEY `fk_product_specifications_specification_values1_idx` (`specification_values__id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `related_products`
--

DROP TABLE IF EXISTS `related_products`;
CREATE TABLE IF NOT EXISTS `related_products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `related_product_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_related_products_products1_idx` (`products_id`),
  KEY `fk_related_products_products2_idx` (`related_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `value` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'home_slider', '{\"sliderData\":{\"Slider1_6102b502729fa\":{\"slides\":[{\"caption_1\":\"\\\"Animals are born who they are, accept it, and that is that. They live with greater peace than people do.\\\"\",\"caption_1_color\":\"e1eaf0\",\"caption_2\":null,\"caption_2_color\":\"ffffff\",\"caption_3\":null,\"bg_color\":\"3f3f40\",\"image\":\"pexels-sam-lion-6001789_611121e459e91.jpg\",\"orderIndex\":0,\"thumbnailURL\":\"http:\\/\\/soflytic.co\\/media-storage\\/slider\\/slider-Slider1_6102b502729fa\\/pexels-sam-lion-6001789_611121e459e91.jpg\",\"newImageExist\":null,\"oldImageName\":null},{\"caption_1\":null,\"caption_1_color\":\"ffffff\",\"caption_2\":null,\"caption_2_color\":\"ffffff\",\"caption_3\":null,\"bg_color\":\"282828\",\"image\":\"banner-pic-group_6110de33a82fa.png\",\"orderIndex\":1,\"thumbnailURL\":\"http:\\/\\/soflytic.co\\/media-storage\\/slider\\/slider-Slider1_6102b502729fa\\/banner-pic-group_6110de33a82fa.png\",\"newImageExist\":null,\"oldImageName\":null},{\"caption_1\":null,\"caption_1_color\":\"ffffff\",\"caption_2\":null,\"caption_2_color\":\"ffffff\",\"caption_3\":null,\"bg_color\":\"282828\",\"image\":\"pexels-anjie-qiu-5105475-1_6111222e37fb4.jpg\",\"orderIndex\":2,\"thumbnailURL\":\"http:\\/\\/soflytic.co\\/media-storage\\/users\\/user-1\\/temp\\/pexels-anjie-qiu-5105475-1_6111222e37fb4.jpg\",\"newImageExist\":true,\"oldImageName\":null}],\"title\":\"Slider1\",\"auto_play\":true,\"autoPlayTimeout\":6000}}}', '2021-07-29 14:02:42', '2021-08-09 18:10:18'),
(2, 'home_page', '5', '2021-07-29 14:04:14', '2021-07-29 14:04:14'),
(3, 'landing_page', '{\"landingPageData\":[{\"title\":\"Slider1\",\"orderIndex\":0,\"identity\":\"Slider\",\"isEnable\":true},{\"pageContent\":\"<div class=\\\"row\\\">\\n<div class=\\\"col-sm-4 box1 text-center\\\">\\n<div class=\\\"box-col\\\"><a href=\\\"http:\\/\\/sniffsnpurrs.in\\/english1\\/cats\\/sink.html\\\"><img src=\\\"http:\\/\\/sniffsnpurrs.in\\/pub\\/media\\/wysiwyg\\/img1_home3_1.jpg\\\" alt=\\\"\\\"><\\/a><\\/div>\\n<\\/div>\\n<div class=\\\"col-sm-4 box2 text-center\\\">\\n<div class=\\\"box-col\\\"><a href=\\\"http:\\/\\/sniffsnpurrs.in\\/english1\\/cats\\/living-chairs.html\\\"><img src=\\\"http:\\/\\/sniffsnpurrs.in\\/pub\\/media\\/wysiwyg\\/img2_home3_1.jpg\\\" alt=\\\"\\\"><\\/a><\\/div>\\n<\\/div>\\n<div class=\\\"col-sm-4 box4 text-center\\\">\\n<div class=\\\"box-col\\\"><a href=\\\"http:\\/\\/sniffsnpurrs.in\\/english1\\/dogs.html\\\"><img src=\\\"http:\\/\\/sniffsnpurrs.in\\/pub\\/media\\/wysiwyg\\/img3_home3_1.jpg\\\" alt=\\\"\\\"><\\/a><\\/div>\\n<\\/div>\\n<\\/div>\",\"orderIndex\":1,\"identity\":\"PageContent\",\"isEnable\":true},{\"productCount\":10,\"orderIndex\":2,\"identity\":\"latestProduct\",\"isEnable\":true},{\"title\":\"3BoxBanner\",\"banner_1_section_1_image_thumb\":\"\",\"banner_1_section_1_image\":\"photo-1541781774459-bb2af2f05b55_6103f2fd67ae5.jpg\",\"banner_1_section_1_heading_1\":null,\"banner_1_section_1_heading_1_color\":null,\"banner_1_section_1_heading_2\":\"BEST SELLER\",\"banner_1_section_1_heading_2_color\":\"07151f\",\"banner_1_section_1_description\":null,\"banner_1_section_1_background_color\":\"e1ebf2\",\"banner_1_section_2_image_thumb\":\"\",\"banner_1_section_2_image\":\"images_6103f52b3cb70.jpg\",\"baner_1_section_2_heading_1\":null,\"baner_1_section_2_heading_1_color\":null,\"baner_1_section_2_heading_2\":null,\"baner_1_section_2_heading_2_color\":\"2b3033\",\"baner_1_section_2_description\":null,\"baner_1_section_2_background_color\":\"f5f8fa\",\"banner_1_section_3_image_thumb\":\"\",\"banner_1_section_3_image\":\"istockphoto-1131841641-612x612_6103f4740124a.jpg\",\"baner_1_section_3_heading_1\":null,\"baner_1_section_3_heading_1_color\":null,\"baner_1_section_3_heading_2\":\"TRENDING ITEMS\",\"baner_1_section_3_heading_2_color\":\"202224\",\"baner_1_section_3_description\":null,\"baner_1_section_3_background_color\":\"ffffff\",\"orderIndex\":3,\"identity\":\"bannerContent1\",\"isEnable\":true},{\"featuredProductCount\":10,\"orderIndex\":4,\"identity\":\"featuredProduct\",\"isEnable\":true},{\"popularProductCount\":10,\"orderIndex\":5,\"identity\":\"popularProduct\",\"isEnable\":true},{\"title\":\"2BoxBanner\",\"banner_2_section_1_image_thumb\":\"\",\"banner_2_section_1_image\":null,\"banner_2_section_1_heading_1\":null,\"banner_2_section_1_heading_1_color\":null,\"banner_2_section_1_heading_2\":null,\"banner_2_section_1_heading_2_color\":null,\"banner_2_section_1_description\":null,\"banner_2_section_1_background_color\":null,\"banner_2_section_2_image_thumb\":\"\",\"banner_2_section_2_image\":null,\"baner_2_section_2_heading_1\":null,\"baner_2_section_2_heading_1_color\":null,\"baner_2_section_2_heading_2\":null,\"baner_2_section_2_heading_2_color\":null,\"baner_2_section_2_description\":null,\"baner_2_section_2_background_color\":null,\"orderIndex\":6,\"identity\":\"bannerContent2\",\"isEnable\":false},{\"title\":\"productTabSection\",\"tab_section_title\":null,\"tab_1_title\":null,\"tab_1_products\":[],\"tab_2_title\":null,\"tab_2_products\":[],\"tab_3_title\":null,\"tab_3_products\":[],\"tab_4_title\":null,\"tab_4_products\":[],\"orderIndex\":7,\"identity\":\"productTabContent\",\"isEnable\":false},{\"title\":\"3Boxheader\",\"banner_3_section_1_image_thumb\":null,\"banner_3_section_1_image\":null,\"banner_3_section_1_heading_1\":null,\"banner_3_section_1_description\":null,\"banner_3_section_2_image_thumb\":null,\"banner_3_section_2_image\":null,\"baner_3_section_2_heading_1\":null,\"baner_3_section_2_description\":null,\"banner_3_section_3_image_thumb\":null,\"banner_3_section_3_image\":null,\"baner_3_section_3_heading_1\":null,\"baner_3_section_3_description\":null,\"orderIndex\":8,\"identity\":\"bannerContent3\",\"isEnable\":false},{\"Deal_of_the_day_ProductCount\":10,\"orderIndex\":9,\"identity\":\"Deal_of_the_day_Product\",\"isEnable\":true}],\"home_page\":\"5\"}', '2021-07-29 14:04:15', '2021-09-07 19:19:54'),
(4, 'store_name', 'Sniffs & Purrs', '2021-07-29 14:11:25', '2021-07-29 14:11:25'),
(5, 'logo_background_color', 'f5f5f5', '2021-07-29 14:11:25', '2021-07-29 14:11:25'),
(6, 'timezone', 'Asia/Kolkata', '2021-07-29 14:11:25', '2021-07-29 14:11:25'),
(7, 'business_email', 'vishal@keensolution.in', '2021-07-29 14:11:25', '2021-07-29 14:11:25'),
(8, 'show_language_menu', '1', '2021-07-29 14:11:25', '2021-07-29 14:11:25'),
(9, 'default_language', 'en_US', '2021-07-29 14:11:25', '2021-07-29 14:11:25'),
(10, 'logo_image', 'logo.png', '2021-07-29 14:13:49', '2021-07-29 14:13:49'),
(11, 'favicon_image', 'favicon.ico', '2021-07-29 14:16:26', '2021-07-29 14:16:26'),
(12, 'invoice_image', 'invoice_logo.png', '2021-07-29 14:16:26', '2021-07-29 14:16:26'),
(13, 'addtional_page_end_content', '', '2021-07-29 14:25:01', '2021-07-29 14:25:01'),
(14, 'global_notification', '', '2021-07-29 14:25:01', '2021-07-29 14:25:01'),
(15, 'categories_menu_placement', '2', '2021-07-29 14:25:01', '2021-07-29 14:25:01'),
(16, 'brand_menu_placement', '4', '2021-07-29 14:25:01', '2021-07-29 14:25:01'),
(17, 'credit_info', '1', '2021-07-29 14:25:01', '2021-07-29 14:25:01'),
(18, 'currency_symbol', '&#8377;', '2021-07-29 14:26:31', '2021-07-29 14:26:31'),
(19, 'currency', 'INR', '2021-07-29 14:26:31', '2021-07-29 14:26:31'),
(20, 'currency_value', 'INR', '2021-07-29 14:26:31', '2021-07-29 14:26:31'),
(21, 'currency_format', '{__currencySymbol__}{__amount__} {__currencyCode__}', '2021-07-29 14:26:31', '2021-07-29 14:26:31'),
(22, 'round_zero_decimal_currency', '1', '2021-07-29 14:26:31', '2021-07-29 14:26:31'),
(23, 'display_multi_currency', '0', '2021-07-29 14:26:31', '2021-07-29 14:26:31'),
(24, 'auto_refresh_in', '2', '2021-07-29 14:26:31', '2021-07-29 14:26:31'),
(25, 'enable_guest_order', '0', '2021-07-29 20:35:56', '2021-07-29 20:35:56'),
(26, 'apply_tax_after_before_discount', '2', '2021-07-29 20:35:56', '2021-07-29 20:35:56'),
(27, 'calculate_tax_as_per_shipping_billing', '1', '2021-07-29 20:35:56', '2021-07-29 20:35:56'),
(28, 'allow_customer_order_cancellation', '0', '2021-07-29 20:35:56', '2021-07-29 20:35:56'),
(29, 'select_payment_option', '[11,4]', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(30, 'payment_other_text', 'Add here other payment related information', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(31, 'payment_check_text', 'Add here check related information.', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(32, 'payment_bank_text', 'Add here bank related information', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(33, 'payment_cod_text', 'Add here cod related information.', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(34, 'payment_other', '0', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(35, 'use_paypal', '0', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(36, 'paypal_email', '', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(37, 'paypal_sandbox_email', '', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(38, 'use_stripe', '0', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(39, 'stripe_live_secret_key', '', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(40, 'stripe_live_publishable_key', '', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(41, 'stripe_testing_secret_key', '', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(42, 'stripe_testing_publishable_key', '', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(43, 'use_razorpay', '1', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(44, 'razorpay_live_key', '', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(45, 'razorpay_live_secret_key', '', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(46, 'razorpay_testing_key', 'rzp_test_anWg1U5Brab2wm', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(47, 'razorpay_testing_secret_key', 'F9eWDpcb99JDlggTCW3YfoFL', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(48, 'use_iyzipay', '0', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(49, 'iyzipay_live_key', '', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(50, 'iyzipay_live_secret_key', '', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(51, 'iyzipay_testing_key', '', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(52, 'iyzipay_testing_secret_key', '', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(53, 'use_paytm', '0', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(54, 'paytm_live_merchant_key', '', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(55, 'paytm_live_merchant_mid_key', '', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(56, 'paytm_testing_merchant_key', '', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(57, 'paytm_testing_merchant_mid_key', '', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(58, 'use_instamojo', '0', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(59, 'instamojo_live_api_key', '', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(60, 'instamojo_live_auth_token_key', '', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(61, 'instamojo_testing_api_key', '', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(62, 'instamojo_testing_auth_token_key', '', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(63, 'use_payStack', '0', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(64, 'payStack_testing_secret_key', '', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(65, 'payStack_testing_public_key', '', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(66, 'payStack_live_secret_key', '', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(67, 'payStack_live_public_key', '', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(68, 'payment_check', '0', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(69, 'payment_bank', '0', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(70, 'payment_cod', '0', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(71, 'use_iyzico', '0', '2021-08-03 15:49:25', '2021-08-03 15:49:25'),
(72, 'contact_address', '202,Dhan Trident , Pune', '2021-08-04 13:25:48', '2021-08-04 13:25:48'),
(73, 'contact_email', 'amanparsai41@gmail.com', '2021-08-04 13:25:48', '2021-08-04 13:25:48'),
(74, 'store_address', '2 Swarvilas, Lane no 7, Prabhat Road\r\nErandwane \r\n', '2021-08-14 14:10:13', '2021-08-14 14:10:13'),
(75, 'store_city', 'Pune ', '2021-08-14 14:10:13', '2021-08-14 14:10:13'),
(76, 'store_state', 'Maharashtra', '2021-08-14 14:10:13', '2021-08-14 14:10:13'),
(77, 'store_pincode', '411004', '2021-08-14 14:10:13', '2021-08-14 14:10:13'),
(78, 'store_country', 'India', '2021-08-14 14:10:13', '2021-08-14 14:10:13'),
(79, 'store_GSTIN', '411004', '2021-08-14 14:10:13', '2021-08-14 14:10:13'),
(80, 'store_Rules', 'TEST', '2021-08-14 14:10:13', '2021-08-14 14:10:13');

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

DROP TABLE IF EXISTS `shipping`;
CREATE TABLE IF NOT EXISTS `shipping` (
  `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `country` varchar(10) DEFAULT NULL,
  `type` tinyint(3) UNSIGNED DEFAULT NULL,
  `charges` double DEFAULT NULL,
  `free_after_amount` double DEFAULT NULL,
  `amount_cap` double DEFAULT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `countries__id` int(10) UNSIGNED DEFAULT NULL,
  `__data` varchar(45) DEFAULT NULL,
  `shipping_types__id` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `fk_shipping_countries1_idx` (`countries__id`),
  KEY `fk_shipping_shipping_types1_idx` (`shipping_types__id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`_id`, `country`, `type`, `charges`, `free_after_amount`, `amount_cap`, `status`, `notes`, `created_at`, `updated_at`, `countries__id`, `__data`, `shipping_types__id`) VALUES
(1, 'IN', 1, 25, 0, NULL, 1, '', '2021-08-03 15:54:11', '2021-09-09 16:06:00', 99, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_types`
--

DROP TABLE IF EXISTS `shipping_types`;
CREATE TABLE IF NOT EXISTS `shipping_types` (
  `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shipping_types`
--

INSERT INTO `shipping_types` (`_id`, `created_at`, `updated_at`, `status`, `title`) VALUES
(1, '2021-08-03 15:53:46', '2021-08-03 15:53:46', 1, 'Pre-Paid');

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

DROP TABLE IF EXISTS `tax`;
CREATE TABLE IF NOT EXISTS `tax` (
  `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `label` varchar(45) DEFAULT NULL,
  `country` varchar(10) DEFAULT NULL,
  `igst` double DEFAULT NULL,
  `sgst` double DEFAULT NULL,
  `cgst` double DEFAULT NULL,
  `type` tinyint(3) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `countries__id` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`_id`),
  KEY `fk_tax_countries1_idx` (`countries__id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tax`
--

INSERT INTO `tax` (`_id`, `label`, `country`, `igst`, `sgst`, `cgst`, `type`, `status`, `notes`, `created_at`, `updated_at`, `countries__id`) VALUES
(1, 'GST 3', 'IN', 3, 1.5, 1.5, 2, 1, NULL, '2021-08-03 17:24:18', '2021-08-07 13:14:45', 99),
(2, 'GST 5', 'IN', 5, 2.5, 2.5, 2, 1, NULL, '2021-08-03 17:24:18', '2021-08-07 13:15:07', 99),
(3, 'GST 12', 'IN', 12, 6, 6, 2, 1, NULL, '2021-08-05 12:25:02', '2021-08-05 19:16:53', 99),
(4, 'GST 18', 'IN', 18, 9, 9, 2, 1, NULL, '2021-08-05 12:26:54', '2021-08-07 11:33:26', 99),
(5, 'GST 28', 'IN', 28, 14, 14, 2, 1, NULL, '2021-08-05 12:27:31', '2021-08-07 13:14:28', 99);

-- --------------------------------------------------------

--
-- Table structure for table `unit_master`
--

DROP TABLE IF EXISTS `unit_master`;
CREATE TABLE IF NOT EXISTS `unit_master` (
  `unit_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `code_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `in_gram` int(11) NOT NULL,
  PRIMARY KEY (`unit_id`),
  KEY `unit_id` (`unit_id`),
  KEY `in_gram` (`in_gram`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `unit_master`
--

INSERT INTO `unit_master` (`unit_id`, `name`, `code_name`, `in_gram`) VALUES
(1, 'Gram', 'Gm.', 1),
(2, 'Kilo Gram', 'Kg.', 1000),
(3, 'Ton', 'T.', 1000000),
(4, 'Nos.', 'Nos.', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

DROP TABLE IF EXISTS `user_master`;
CREATE TABLE IF NOT EXISTS `user_master` (
  `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '2',
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `email_verify` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `mobile` varchar(100) COLLATE utf8_bin NOT NULL,
  `is_active` tinyint(3) UNSIGNED DEFAULT 1 COMMENT '1=active',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_id` (`user_id`),
  KEY `is_active` (`is_active`),
  KEY `created_by` (`created_by`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`user_id`, `role`, `name`, `email`, `password`, `email_verify`, `mobile`, `is_active`, `created_by`, `created_at`, `updated_at`, `updated_by`) VALUES
(1, '1', 'admin', 'admin@gmail.com', '3e7bf1383bcdd338f3d837f3dc948f80', NULL, '8827667265', 1, 1, NULL, '2021-09-15 02:15:28', NULL),
(2, '2', 'user', 'user@gmail.com', 'a18cd028b52741c748c0129b201ae159', NULL, '8827667265', 1, 1, NULL, '2021-09-18 10:19:29', NULL),
(3, '1', 'Amit Kumar', 'amitkumar@sagemetals.com', '7ece99e593ff5dd200e2b9233d9ba654', NULL, '9717155330', 1, 1, '2021-09-23 11:30:18', '2021-09-23 11:30:18', NULL),
(5, '1', 'Sanjeet Kumar', 'sanjeet@sagemetals.co.in', '9707c166631be1f8513955067cea4141', NULL, '9717155330', 1, 1, '2021-09-23 11:30:18', '2021-09-23 11:30:18', 1),
(6, '1', 'Ishwar Singh', 'ishwar@sagemetals.co.in', 'b5920afaa39e377b454938c215c34689', NULL, '9717155330', 0, 1, '2021-09-23 11:30:18', '2021-09-29 09:55:34', 1),
(8, '2', 'Amrendra', 'amrendra@sagemetals.co.in', '0a10bb482956e2ee9618aef093baa4c6', NULL, '9711075835', 0, NULL, '2021-09-24 16:57:07', '2021-09-29 08:49:04', NULL),
(9, '2', 'Anuj Singh', 'anuj@sagemetals.co.in', '7852cd3dd6375f6cb70d33b7d3f8d13e', NULL, '8800364990', 1, NULL, '2021-09-25 12:11:40', '2021-09-25 12:11:40', NULL),
(10, '2', 'Deepak Sain', 'deepak.sain@sagemetals.co.in', 'd41d8cd98f00b204e9800998ecf8427e', NULL, '9602867331', 1, NULL, '2021-09-25 17:02:41', '2021-09-28 16:26:57', NULL),
(11, '2', 'Vikash Yadav', 'mshop.nmr@sagemetals.co.in', 'd41d8cd98f00b204e9800998ecf8427e', NULL, '9785909048', 1, NULL, '2021-09-25 17:05:10', '2021-09-28 16:27:35', NULL),
(12, '2', 'Inderjeet Yadav', 'inderjeet@sagemetals.co.in', '480fbcce9450e3e0c195f707ce50c203', NULL, '8949479523', 1, NULL, '2021-09-25 17:08:04', '2021-09-27 16:51:57', NULL),
(13, '2', 'Shankar Mishra', 'shankar@sagemetals.co.in', 'bbd727f3cced3d4a2c580e869f95cf3d', NULL, '9636481414', 1, NULL, '2021-09-25 17:09:30', '2021-09-25 17:09:30', NULL),
(14, '2', 'PANKAJ KUMAR VARUN', 'pankaj@sagemetals.co.in', '149e200961ea52955bd55cb49a127935', NULL, '9650018408', 1, NULL, '2021-09-25 20:20:16', '2021-09-27 10:27:39', NULL),
(15, '2', 'Satish Kumar', 'satishkumar@sagemtals.co.in', 'f32ce51098c94434e778d122c020e94e', NULL, '9891622451', 1, NULL, '2021-09-27 10:40:15', '2021-09-27 14:48:34', NULL),
(16, '2', 'Sanjay Kumar', 'sanjay.kumar@sagemetals.co.in', '7ebb98ef1dc31d99495d69976fbfadf7', NULL, '9990510666', 1, NULL, '2021-09-28 09:50:42', '2021-09-28 09:50:42', NULL),
(17, '2', 'Lavelesh Kumar', 'lavelesh.kumar@sagemetals.co.in', '7ebb98ef1dc31d99495d69976fbfadf7', NULL, '9971371183', 1, NULL, '2021-09-28 09:52:09', '2021-09-28 09:52:09', NULL),
(18, '2', 'Shailesh', 'mcshopb7@sagemetals.co.in', '5c4edaabc4fee44d97603f6b4f9eb764', NULL, '7503001608', 1, NULL, '2021-09-28 09:54:52', '2021-09-28 09:54:52', NULL),
(19, '2', 'Mithilesh', 'qcsbdb7@sagemetals.co.in', 'feac9525f268630a25783427dc1f0cd9', NULL, '8115741520', 1, NULL, '2021-09-28 09:57:53', '2021-09-28 09:57:53', NULL),
(20, '2', 'Sandeep (DET)', 'sandeep@gmail.com', '7ece99e593ff5dd200e2b9233d9ba654', NULL, '8800364990', 1, NULL, '2021-09-28 10:02:30', '2021-09-28 10:02:30', NULL),
(21, '2', 'Manmohan', 'dcsbdb7@sagemetals.co.in', 'e1b2353c6966d7c1fe4d0a77a08b06c6', NULL, '9650535860', 1, NULL, '2021-09-28 10:04:29', '2021-09-28 10:04:29', NULL),
(22, '2', 'Mahesh Bagaria', 'mahesh.bagaria@sagemetals.co.in', 'e1b2353c6966d7c1fe4d0a77a08b06c6', NULL, '9871883515', 1, NULL, '2021-09-28 10:06:44', '2021-09-28 10:06:44', NULL),
(23, '2', 'Shiv Pujan', 'shivpujan@gmail.com', '420bde6fbf9771d17e220f45b9cbf5fd', NULL, '9717155330', 1, NULL, '2021-09-28 11:24:41', '2021-09-28 11:24:41', NULL),
(24, '1', 'Dhananjay Singh', 'dhananjay@sagemetals.com', 'cfd9ff90a2733cdce4d25abaf4905249', NULL, '9871883515', 1, NULL, '2021-09-28 10:06:44', '2021-09-28 10:06:44', NULL),
(25, '2', 'Madhu Gowda', 'madhu.gowda@sagemetals.com', 'ceafc40fe4c09fb1a9af9793c529bece', NULL, '9978588796', 1, NULL, '2021-09-28 14:07:44', '2021-09-28 14:07:44', NULL),
(26, '2', 'Neeraj Jain', 'neerajjain@sagemetals.co.in', 'ceafc40fe4c09fb1a9af9793c529bece', NULL, '9560393131', 1, NULL, '2021-09-28 14:31:34', '2021-09-28 14:31:34', NULL),
(27, '2', 'Vipin', 'vipin@gmail.com', 'a616d299bc47f36e60f75a61f2434af8', NULL, '9717155330', 1, NULL, '2021-09-28 15:30:45', '2021-09-28 15:30:45', NULL),
(28, '2', 'Ashutosh', 'ashutosh@gmail.com', 'b22841d1b389ae88023e2292c3f4810c', NULL, '9899749682', 1, NULL, '2021-09-28 17:20:46', '2021-09-28 17:20:46', NULL),
(29, '2', 'Akash', 'akash@gmail.com', 'b22841d1b389ae88023e2292c3f4810c', NULL, '8800364990', 1, NULL, '2021-09-28 17:21:32', '2021-09-28 17:21:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`_id`),
  KEY `fk_wishlist_products1_idx` (`products_id`),
  KEY `fk_wishlist_users1_idx` (`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
