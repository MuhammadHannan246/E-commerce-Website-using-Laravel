-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 14, 2023 at 01:43 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'easha@gmail.com', '$2y$10$5XM8lOO2o6ZmE3KsPjKMgedowIzPTlLyRnLfAR2wCnc6mkhLYV4Ji', '2021-01-15 21:27:18', '2021-01-16 16:36:21');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL,
  `is_home` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `status`, `is_home`, `created_at`, `updated_at`) VALUES
(1, 'Nike', '1613553930.jpg', 1, 1, '2021-02-17 03:55:30', '2021-02-17 03:55:30'),
(2, 'Adidas', '1613553941.jpg', 1, 1, '2021-02-17 03:55:41', '2021-02-17 03:55:41'),
(3, 'Peter England', '1613554893.jpg', 1, 1, '2021-02-17 04:11:33', '2021-02-17 04:11:33'),
(4, 'Peter England Black Bags', '1671460402.jpg', 1, 1, '2022-12-19 09:28:41', '2022-12-19 09:33:22'),
(5, 'New_Brand', '1671460436.jpg', 1, 1, '2022-12-19 09:33:56', '2022-12-19 09:34:00'),
(6, 'My_Brand', '1671460471.jpg', 1, 1, '2022-12-19 09:34:31', '2022-12-19 09:34:31'),
(7, 'Boy\'s Thrum K Running Shoes', '1671460513.jpg', 1, 1, '2022-12-19 09:35:13', '2022-12-19 09:35:13');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `user_type` enum('Reg','Not-Reg') NOT NULL,
  `qty` int NOT NULL,
  `product_id` int NOT NULL,
  `product_attr_id` int NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `user_type`, `qty`, `product_id`, `product_attr_id`, `added_on`) VALUES
(7, 14, 'Reg', 1, 3, 4, '2021-04-23 08:37:41'),
(15, 8, 'Reg', 1, 2, 3, '2021-04-28 02:12:14'),
(23, 193296341, 'Not-Reg', 1, 4, 5, '2022-12-22 03:44:16'),
(43, 16, 'Reg', 1, 13, 20, '2023-01-06 12:51:03'),
(44, 939959112, 'Not-Reg', 1, 10, 17, '2023-01-11 06:49:12');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_category_id` int NOT NULL,
  `category_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_home` int NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `parent_category_id`, `category_image`, `is_home`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Man', 'man', 0, '1613552454.jpg', 1, 1, '2021-02-17 03:30:54', '2021-02-22 03:04:06'),
(2, 'Woman', 'woman', 0, '1671536569.jpg', 1, 1, '2021-02-17 03:31:24', '2022-12-20 06:42:49'),
(3, 'Kids', 'kids', 0, '1613552512.jpg', 1, 1, '2021-02-17 03:31:52', '2023-01-05 09:27:54'),
(4, 'Bag', 'bag', 2, '1613553407.jpg', 1, 1, '2021-02-17 03:46:07', '2023-01-12 03:58:21'),
(5, 'Shoes', 'shoes', 3, '1671536617.jpg', 0, 1, '2021-02-17 04:24:40', '2023-01-05 09:51:49');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint UNSIGNED NOT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Black', 1, '2021-01-25 21:12:11', '2021-01-28 05:15:28'),
(2, 'Red', 1, '2021-01-25 21:12:22', '2021-01-28 04:02:42'),
(3, 'White', 1, '2021-02-17 04:01:35', '2021-02-17 04:01:35'),
(4, 'Cream', 1, '2021-02-24 00:57:35', '2021-02-24 00:57:35'),
(5, 'Green', 1, '2021-02-24 00:57:45', '2021-02-24 00:57:45'),
(6, 'Purple', 1, '2021-02-24 00:57:57', '2021-02-24 00:57:57'),
(7, 'Blue', 1, '2021-02-24 01:00:15', '2021-02-24 01:00:15'),
(8, 'Yellow', 1, '2021-02-24 01:06:42', '2021-02-24 01:06:42'),
(9, 'Pink', 1, '2022-12-20 09:54:54', '2022-12-20 09:54:54');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('Value','Per') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_order_amt` int NOT NULL,
  `is_one_time` int NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `title`, `code`, `value`, `type`, `min_order_amt`, `is_one_time`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Jan Coupon', 'Jan2021', '140', 'Value', 1000, 0, 0, '2021-01-20 04:43:32', '2023-01-12 04:01:24'),
(4, 'New Coupon', 'New', '15', 'Per', 1000, 0, 1, '2021-02-05 02:32:37', '2021-02-05 02:32:48');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gstin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL,
  `is_verify` int NOT NULL,
  `is_forgot_password` int NOT NULL,
  `rand_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `mobile`, `password`, `address`, `city`, `state`, `zip`, `company`, `gstin`, `status`, `is_verify`, `is_forgot_password`, `rand_id`, `created_at`, `updated_at`) VALUES
(16, 'Easha Asif', 'easha@gmail.com', '1111111111', 'eyJpdiI6IkVzZFh3L1pmZEoybjZhQnlHdE9QOGc9PSIsInZhbHVlIjoiaHp5cDFKVkg3YVBJRTcyaXVWRmFjUT09IiwibWFjIjoiYmM4MWMxNzdhMWFmM2U2N2RlN2UxMWQ1YWQ5MjhiMDVhNTg1NDIyMGZmMDY5NjAwMWQ2ODgzMmZlNzk2MjAyOSIsInRhZyI6IiJ9', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '', '2022-12-18 21:25:55', '2022-12-18 21:25:55'),
(18, 'Muhammad Hannan', 'hannan@gmail.com', '1234567234', 'eyJpdiI6InloSTJNRkZMSGVIbTNvQU5lcU1UY3c9PSIsInZhbHVlIjoiWnM5TTJPL1IzM25BWnpiZ1czNmpFQT09IiwibWFjIjoiYTFmMDg4ZDU5OTAxYWU4Njc4MGU4ZTgwMTdjNDk3MmVmN2M2Zjg5NGI4NDQ3OWQ1YTdjMzI1OGRlZmNmYjJjYyIsInRhZyI6IiJ9', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '', '2023-01-06 02:44:37', '2023-01-06 02:44:37'),
(19, 'Anousha Asif', 'anousha@gmail.com', '1234567234', 'eyJpdiI6IjhDSUJmM0ZpRFM1ci9LSVhEQmlYcWc9PSIsInZhbHVlIjoiNkpVeDFYRU1LSlN3SWJlSEtsaGlBZz09IiwibWFjIjoiNzEwYTExODlmNzMzNmZjNWM0ODZlZGUzZTAzOWY4OTE4N2FmYTY1MmEzYWVkM2RhOGRmY2YwNWZjMGY1MTA5ZiIsInRhZyI6IiJ9', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '', '2023-01-06 02:56:27', '2023-01-06 02:56:27'),
(20, 'Taha Qaiser', 'taha@gmail.com', '1111111111', 'eyJpdiI6IisvT0RsQ3RjclhWS3N0SGtVaXNFMXc9PSIsInZhbHVlIjoibnFpNVRWUVF4L0JNVjM3cmsxTVMrQT09IiwibWFjIjoiYzY1OTQ0YWI3NzQyN2U5NmI3ZWI4ODA1Y2JmYTdmZWVlMGE5MGNhYzM4NjU3YTg4Yjc0ZDE4ZWExZWM2ZWY2NyIsInRhZyI6IiJ9', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '', '2023-01-12 04:00:06', '2023-01-12 04:00:06');

-- --------------------------------------------------------

--
-- Table structure for table `home_banners`
--

CREATE TABLE `home_banners` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_txt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_banners`
--

INSERT INTO `home_banners` (`id`, `image`, `btn_txt`, `btn_link`, `status`, `created_at`, `updated_at`) VALUES
(1, '1671206228.jpg', 'SHOP NOW', 'http://google.com', 1, '2021-02-17 14:54:32', '2022-12-16 10:57:08'),
(2, '1671206261.jpg', 'SHOW NOW', NULL, 1, '2021-02-17 14:57:51', '2022-12-16 10:57:41'),
(3, '1671206244.jpg', 'SHOW NOW', NULL, 1, '2022-12-16 10:57:24', '2022-12-16 10:57:24'),
(4, '1671206269.jpg', 'SHOW NOW', NULL, 1, '2022-12-16 10:57:34', '2022-12-16 10:57:49'),
(5, '1671548021.jpg', 'SHOW NOW', NULL, 1, '2022-12-20 09:53:41', '2022-12-20 09:53:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_01_15_211334_create_admins_table', 1),
(4, '2021_01_15_215552_create_categories_table', 2),
(5, '2021_01_20_095632_create_coupons_table', 3),
(10, '2021_01_21_115714_create_ajaxes_table', 4),
(12, '2021_01_26_021550_create_sizes_table', 5),
(13, '2021_01_26_023140_create_colors_table', 6),
(14, '2021_01_28_104722_create_products_table', 7),
(15, '2021_02_03_114909_create_brands_table', 8),
(16, '2021_02_05_082218_create_taxes_table', 9),
(17, '2021_02_08_081113_create_customers_table', 10),
(18, '2021_02_17_200040_create_home_banners_table', 11),
(19, '2019_12_14_000001_create_personal_access_tokens_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `customers_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pincode` varchar(25) NOT NULL,
  `coupon_code` varchar(50) DEFAULT NULL,
  `coupon_value` int DEFAULT NULL,
  `order_status` int NOT NULL,
  `payment_type` enum('COD','Gateway') NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `payment_id` varchar(50) DEFAULT NULL,
  `txn_id` varchar(100) DEFAULT NULL,
  `total_amt` int NOT NULL,
  `track_details` text,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customers_id`, `name`, `email`, `mobile`, `address`, `city`, `state`, `pincode`, `coupon_code`, `coupon_value`, `order_status`, `payment_type`, `payment_status`, `payment_id`, `txn_id`, `total_amt`, `track_details`, `added_on`) VALUES
(6, 16, 'Easha Asif', 'easha@gmail.com', '1111111111', 'Gulshan', 'karachi', 'sindh', '75300', 'New', 1265, 1, 'COD', 'Pending', NULL, NULL, 8432, NULL, '2022-12-20 11:19:48'),
(7, 16, 'Easha Asif', 'easha@gmail.com', '1111111111', 'Gulshan', 'Karachi', 'Sindh', '75300', 'New', 4199, 1, 'COD', 'Pending', NULL, NULL, 27993, NULL, '2022-12-23 01:59:31'),
(8, 18, 'Muhammad Hannan', 'hannan@gmail.com', '1234567234', 'Clifton', 'Karachi', 'Sindh', '75300', 'Jan2021', 140, 1, 'COD', 'Pending', NULL, NULL, 2847, NULL, '2023-01-06 07:45:52'),
(9, 20, 'Taha Qaiser', 'taha@gmail.com', '1111111111', 'gulshan', 'karachi', 'sindh', '73500', 'New', 405, 1, 'COD', 'Pending', NULL, NULL, 2697, NULL, '2023-01-12 09:02:05');

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

CREATE TABLE `orders_details` (
  `id` int NOT NULL,
  `orders_id` int NOT NULL,
  `product_id` int NOT NULL,
  `products_attr_id` int NOT NULL,
  `price` int NOT NULL,
  `qty` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders_details`
--

INSERT INTO `orders_details` (`id`, `orders_id`, `product_id`, `products_attr_id`, `price`, `qty`) VALUES
(1, 1, 1, 1, 10, 2),
(2, 1, 3, 4, 2411, 1),
(7, 4, 2, 3, 1199, 1),
(8, 4, 4, 5, 899, 2),
(9, 6, 3, 4, 2411, 3),
(10, 6, 2, 3, 1199, 1),
(11, 7, 4, 5, 899, 3),
(12, 7, 3, 4, 2411, 9),
(13, 7, 2, 3, 1199, 1),
(14, 7, 2, 3, 1199, 2),
(15, 8, 2, 3, 1199, 1),
(16, 8, 1, 1, 749, 1),
(17, 8, 10, 17, 899, 1),
(18, 9, 1, 1, 749, 2),
(19, 9, 2, 3, 1199, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_status`
--

CREATE TABLE `orders_status` (
  `id` int NOT NULL,
  `orders_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders_status`
--

INSERT INTO `orders_status` (`id`, `orders_status`) VALUES
(1, 'Placed'),
(2, 'On The Way'),
(3, 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `keywords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `technical_specification` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `uses` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `warranty` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lead_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` int DEFAULT NULL,
  `is_promo` int NOT NULL,
  `is_featured` int NOT NULL,
  `is_discounted` int NOT NULL,
  `is_tranding` int NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `image`, `slug`, `brand`, `model`, `short_desc`, `desc`, `keywords`, `technical_specification`, `uses`, `warranty`, `lead_time`, `tax_id`, `is_promo`, `is_featured`, `is_discounted`, `is_tranding`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Polo T Shirt', '4997922202.png', 'polo-t-shirt', '1', 'Polo T Shirt - Nike', '<p>100% Original Products</p>\r\n\r\n<p>Free Delivery on order above Rs.&nbsp;799</p>\r\n\r\n<p>Pay on delivery might be available</p>\r\n\r\n<p>Easy 30 days returns and exchanges</p>\r\n\r\n<p>Try &amp; Buy might be available</p>', NULL, 'Polo T Shirt, Polo T Shirt - Nike', NULL, 'T Shirt For Man', 'Easy 30 days returns and exchanges', 'Same day delivery', 1, 0, 1, 1, 1, 1, '2021-02-17 04:00:59', '2023-01-05 08:50:16'),
(2, 1, 'Peter England Blue Shirt', '1613555081.png', 'peter-england-blue-shirt', '3', 'Peter England Blue Shirt', '<p>Make an impression in this blue check shirt, tailored in Super Slim Fit from Peter England Jeans by Peter England.</p>', '<p>Brand : Peter England<br />\nSubbrand : Peter England Jeans<br />\nFit : Super Slim Fit<br />\nPattern : Check<br />\nOccasion : Casual<br />\nColor : Blue<br />\nMaterial : 100% Cotton<br />\nSleeves : Full Sleeves<br />\nCuffs : Regular Cuff<br />\nCollar : Regular Collar<br />\nProduct Type : Shirt<br />\nBrand Fit : Super Slim Fit</p>', 'Brand : Peter England\nSubbrand : Peter England Jeans\nFit : Super Slim Fit\nPattern : Check\nOccasion : Casual\nColor : Blue\nMaterial : 100% Cotton\nSleeves : Full Sleeves\nCuffs : Regular Cuff\nCollar : Regular Collar\nProduct Type : Shirt\nBrand Fit : Super Slim Fit', NULL, 'N/A', 'N/A', 'Delivery in 3 days', 1, 0, 1, 0, 1, 1, '2021-02-17 04:14:41', '2021-02-17 04:14:41'),
(3, 2, 'Black Printed Sweatshirt', '1613555334.jpg', 'women-black-printed-as-sweatshirt', '1', 'Women Black Printed AS W NK ICNCLSH MIDLAYER Sweatshirt', '<p>100% Original Products</p>\n\n<p>Free Delivery on order above Rs.&nbsp;799</p>\n\n<p>Pay on delivery might be available</p>\n\n<p>Easy 15 days returns and exchanges</p>\n\n<p>Try &amp; Buy might be available</p>', '<p>Black printed sweatshirt<br />\nhas a mock collar<br />\nlong sleeves<br />\nhalf zipper closure<br />\nstraight hem</p>', 'N/A', NULL, 'N/A', '6 months against manufacturing defects (not valid on products with more than 20% discount)', NULL, 1, 0, 0, 0, 1, 1, '2021-02-17 04:18:54', '2022-12-20 07:29:18'),
(4, 3, 'Boy\'s Thrum K Running Shoes', '1613555948.jpg', 'boys-thrum-running-shoes', '2', 'Adidas Boy\'s Thrum K Running Shoes', '<p>Closure: Lace-Up<br />\r\nShoe Width: Regular<br />\r\nOuter Material: Synthetic<br />\r\nClosure Type: Lace-Up<br />\r\nToe Style: Round Toe<br />\r\nWarranty Type: Manufacturer &amp; Seller<br />\r\nWarranty Description: 90 days</p>', '<p><strong>Package Dimensions</strong> : 26.8 x 18.4 x 10.8 cm; 470 Grams<br />\n<strong>Date First Available</strong> : 18 December 2019<br />\n<strong>Manufacturer </strong>: ADIDAS<br />\n<strong>ASIN </strong>: B082WTQMLF<br />\n<strong>Item model number :</strong> CM6326<br />\n<strong>Department </strong>: Boys<br />\n<strong>Manufacturer </strong>: ADIDAS<br />\n<strong>Item Weight</strong> : 470 g<br />\n<strong>Package Dimensions : 26.8 x 18.4 x 10.8 cm; 470 Grams<br />\nDate First Available : 18 December 2019<br />\nManufacturer : ADIDAS<br />\nASIN : B082WTQMLF<br />\nItem model number : CM6326<br />\nDepartment : Boys<br />\nManufacturer : ADIDAS<br />\nItem Weight : 470 g<br />\nGeneric Name : Running Shoes</strong> : Running Shoes</p>', 'N/A', '<p>N/A</p>', 'N/A', '90 days', NULL, 1, 0, 1, 0, 0, 1, '2021-02-17 04:29:08', '2021-02-23 02:18:33'),
(10, 1, 'Mens Shirts', '1672927876.jpg', 'shirts', '6', 'New Model', '<p>100% Original Products</p>\r\n\r\n<p>Free Delivery on order above Rs.&nbsp;799</p>\r\n\r\n<p>Pay on delivery might be available</p>\r\n\r\n<p>Easy 30 days returns and exchanges</p>\r\n\r\n<p>Try &amp; Buy might be available</p>', NULL, 'Polo T Shirt, Polo T Shirt - Nike', NULL, 'T Shirt For Man', 'Easy 30 days returns and exchanges', 'Same day delivery', 1, 0, 1, 1, 1, 1, '2023-01-05 08:40:39', '2023-01-05 09:11:16'),
(12, 2, 'Short Shirt', '1673008314.jpg', 'T-Shirt', '5', 'new', '<p>&lt;p&gt;100% Original Products&lt;/p&gt;</p>\r\n\r\n<p>&lt;p&gt;Free Delivery on order above Rs.&amp;nbsp;799&lt;/p&gt;</p>\r\n\r\n<p>&lt;p&gt;Pay on delivery might be available&lt;/p&gt;</p>\r\n\r\n<p>&lt;p&gt;Easy 15 days returns and exchanges&lt;/p&gt;</p>\r\n\r\n<p>&lt;p&gt;Try &amp;amp; Buy might be available&lt;/p&gt;</p>', '<p>&lt;p&gt;&lt;strong&gt;Package Dimensions&lt;/strong&gt; : 26.8 x 18.4 x 10.8 cm; 470 Grams&lt;br /&gt;<br />\r\n&lt;strong&gt;Date First Available&lt;/strong&gt; : 18 December 2019&lt;br /&gt;<br />\r\n&lt;strong&gt;Manufacturer &lt;/strong&gt;: ADIDAS&lt;br /&gt;<br />\r\n&lt;strong&gt;ASIN &lt;/strong&gt;: B082WTQMLF&lt;br /&gt;<br />\r\n&lt;strong&gt;Item model number :&lt;/strong&gt; CM6326&lt;br /&gt;<br />\r\n&lt;strong&gt;Department &lt;/strong&gt;: Boys&lt;br /&gt;<br />\r\n&lt;strong&gt;Manufacturer &lt;/strong&gt;: ADIDAS&lt;br /&gt;<br />\r\n&lt;strong&gt;Item Weight&lt;/strong&gt; : 470 g&lt;br /&gt;<br />\r\n&lt;strong&gt;Package Dimensions : 26.8 x 18.4 x 10.8 cm; 470 Grams&lt;br /&gt;<br />\r\nDate First Available : 18 December 2019&lt;br /&gt;<br />\r\nManufacturer : ADIDAS&lt;br /&gt;<br />\r\nASIN : B082WTQMLF&lt;br /&gt;<br />\r\nItem model number : CM6326&lt;br /&gt;<br />\r\nDepartment : Boys&lt;br /&gt;<br />\r\nManufacturer : ADIDAS&lt;br /&gt;<br />\r\nItem Weight : 470 g&lt;br /&gt;<br />\r\nGeneric Name : Running Shoes&lt;/strong&gt; : Running Shoes&lt;/p&gt;</p>', 'N/A', '<p>&lt;p&gt;N/A&lt;/p&gt;</p>', 'T Shirt For Women', '6 months against manufacturing defects (not valid on products with more than 20% discount)', 'Same day delivery', 1, 1, 0, 1, 1, 1, '2023-01-06 07:31:54', '2023-01-06 07:31:54'),
(13, 2, 'New Women Shirts', '1673009439.jpg', 'new-shirts', '3', 'new', '<p>&lt;p&gt;Make an impression in this blue check shirt, tailored in Super Slim Fit from Peter England Jeans by Peter England.&lt;/p&gt;</p>', '<p>&lt;p&gt;Black printed sweatshirt&lt;br /&gt;<br />\r\nhas a mock collar&lt;br /&gt;<br />\r\nlong sleeves&lt;br /&gt;<br />\r\nhalf zipper closure&lt;br /&gt;<br />\r\nstraight hem&lt;/p&gt;</p>', 'Polo T Shirt, Polo T Shirt - Nike', NULL, 'T Shirt For Women', 'Easy 30 days returns and exchanges', 'Same day delivery', 1, 1, 0, 1, 1, 1, '2023-01-06 07:50:39', '2023-01-06 07:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `products_attr`
--

CREATE TABLE `products_attr` (
  `id` int NOT NULL,
  `products_id` int NOT NULL,
  `sku` varchar(255) NOT NULL,
  `attr_image` varchar(255) DEFAULT NULL,
  `mrp` int NOT NULL,
  `price` int NOT NULL,
  `qty` int NOT NULL,
  `size_id` int NOT NULL,
  `color_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products_attr`
--

INSERT INTO `products_attr` (`id`, `products_id`, `sku`, `attr_image`, `mrp`, `price`, `qty`, `size_id`, `color_id`) VALUES
(1, 1, '111', '705130315.jpg', 999, 749, 5, 2, 1),
(2, 1, '112', '509937030.jpg', 999, 749, 3, 1, 7),
(3, 2, '124', '499793402.png', 1499, 1199, 3, 1, 1),
(4, 3, '116', '608075258.jpg', 3495, 2411, 10, 0, 1),
(5, 4, '121', '115102277.jpg', 1071, 899, 4, 0, 0),
(6, 1, '113', '216831743.jpg', 999, 749, 23, 3, 8),
(7, 1, '114', '436707592.jpg', 999, 749, 31, 2, 5),
(8, 5, '435', '814950713.jpg', 525, 677, 22, 4, 4),
(9, 6, '783', '164127015.jpg', 465, 300, 23, 2, 1),
(10, 6, '784', '695433430.jpg', 466, 300, 12, 2, 5),
(11, 6, '786', '494589470.jpg', 354, 300, 13, 3, 2),
(12, 6, '876', '398670790.jpg', 875, 300, 34, 2, 7),
(13, 7, '244', '961141910.jpg', 1300, 1200, 324, 4, 8),
(14, 9, '980', '365153414.jpg', 900, 840, 24, 3, 1),
(15, 9, '980', '267018983.jpg', 900, 840, 24, 2, 5),
(16, 9, '980', '502754335.jpg', 900, 840, 24, 2, 2),
(17, 10, '890', '200828992.jpg', 999, 670, 893, 2, 2),
(18, 10, '394', '418351913.jpg', 999, 540, 827, 4, 5),
(19, 12, '384', '847969844.jpg', 1200, 1199, 244, 2, 2),
(20, 13, '897', '912690503.jpg', 1500, 1499, 822, 3, 2),
(21, 13, '873', '510975096.jpg', 1800, 1200, 762, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int NOT NULL,
  `products_id` int NOT NULL,
  `images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `products_id`, `images`) VALUES
(1, 1, '334424773.jpg'),
(5, 1, '546654238.jpg'),
(7, 5, '151233191.jpg'),
(8, 6, '803309606.jpg'),
(9, 7, '291858397.jpg'),
(10, 9, '735947227.jpg'),
(11, 9, '725939277.jpg'),
(13, 10, '461079409.png'),
(15, 12, '720174693.jpg'),
(16, 13, '619046056.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

CREATE TABLE `product_review` (
  `id` int NOT NULL,
  `customer_id` int NOT NULL,
  `products_id` int NOT NULL,
  `rating` varchar(20) NOT NULL,
  `review` text NOT NULL,
  `status` int NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_review`
--

INSERT INTO `product_review` (`id`, `customer_id`, `products_id`, `rating`, `review`, `status`, `added_on`) VALUES
(1, 16, 2, 'Good', 'I like this product', 0, '2022-12-19 03:07:03'),
(2, 16, 1, 'Good', 'The product is good', 1, '2022-12-19 03:08:13'),
(3, 16, 2, 'Very Good', 'Very Good Product', 1, '2022-12-23 03:12:59'),
(4, 17, 2, 'Very Good', 'I like this product. It\'s very good.', 1, '2022-12-30 09:14:32'),
(5, 20, 10, 'Good', 'Good', 0, '2023-01-12 09:03:32');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint UNSIGNED NOT NULL,
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size`, `status`, `created_at`, `updated_at`) VALUES
(1, 'XXL', 1, '2021-01-25 20:56:46', '2021-01-28 05:15:24'),
(2, 'XL', 1, '2021-02-24 00:58:04', '2021-02-24 00:58:04'),
(3, 'L', 1, '2021-02-24 00:58:08', '2021-02-24 00:58:08'),
(4, 'M', 1, '2021-02-24 00:58:13', '2021-02-24 00:58:13');

-- --------------------------------------------------------

--
-- Table structure for table `taxs`
--

CREATE TABLE `taxs` (
  `id` bigint UNSIGNED NOT NULL,
  `tax_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxs`
--

INSERT INTO `taxs` (`id`, `tax_desc`, `tax_value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'GST 12%', '12', 1, '2021-02-05 03:05:43', '2021-02-05 03:05:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_banners`
--
ALTER TABLE `home_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_status`
--
ALTER TABLE `orders_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_attr`
--
ALTER TABLE `products_attr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxs`
--
ALTER TABLE `taxs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `home_banners`
--
ALTER TABLE `home_banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders_status`
--
ALTER TABLE `orders_status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products_attr`
--
ALTER TABLE `products_attr`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product_review`
--
ALTER TABLE `product_review`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `taxs`
--
ALTER TABLE `taxs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
