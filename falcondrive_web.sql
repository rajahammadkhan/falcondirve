-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2023 at 02:29 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `falcondrive_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `by` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `short_description` text NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `meta_description` text NOT NULL,
  `keywords` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `image`, `name`, `by`, `slug`, `date`, `short_description`, `description`, `status`, `meta_description`, `keywords`, `meta_title`, `created_at`, `updated_at`) VALUES
(10, 'OiCMVS3odrtLiNbW9N9YM4rJ6sDV0RQwN55VVu3Z.jpg', 'WHAT IS RENTALCOVER AND HOW DOES IT WORK?', 'Falcon Drive', 'what-is-rentalcover-and-how-does-it-work-', '2023-06-08', 'Still if you found yourself in any confusion then get in touch with 1937 car rentals, they will provide you excellent services and highly maintained cars for your trip.', '<p>But I must explain to you how all this mistaken idea of denouncing \r\npleasure and praising pain was born and I will give you a complete \r\naccount of the system, and expound the actual teachings of the great \r\nexplorer of the truth, the master-builder of human happiness. No one \r\nrejects, dislikes, or avoids pleasure itself, because it is pleasure, \r\nbut because those who do not know how to pursue pleasure rationally \r\nencounter consequences that are extremely painful.\r\n\r\n                                            Nor again is there anyone \r\nwho loves or pursues or desires to obtain pain of itself, because it is \r\npain, but because occasionally circumstances occur in which toil and \r\npain can procure him some great pleasure. To take a trivial example, \r\nwhich of us ever undertakes laborious physical exercise, except to \r\nobtain some advantage from it? But who has any right to find fault with a\r\n man who chooses to enjoy a pleasure that has no annoying \r\nconsequences.On the other hand, we denounce with righteous indignation \r\nand dislike men who are so beguiled and demoralized by the charms of \r\npleasure of the moment, so blinded by desire, that they cannot foresee \r\nthe pain and trouble that are bound to ensue; and equal blame belongs to\r\n those who fail in their duty through weakness of will, which is the \r\nsame as saying through shrinking from toil and pain. These cases are \r\nperfectly simple and easy to distinguish. In a free hour, when our power\r\n of choice is untrammeled and when nothing prevents our being able to do\r\n what we like best, every pleasure is to be welcomed and every pain \r\navoided.</p>', 1, 'WHAT IS RENTALCOVER AND HOW DOES IT WORK?', 'WHAT IS RENTALCOVER AND HOW DOES IT WORK?', 'WHAT IS RENTALCOVER AND HOW DOES IT WORK?', '2022-09-29 02:44:36', '2023-06-19 01:54:47'),
(11, 'S3G3eobvR3Xr0voFePdDWi80pHlqFUI1yc4EEXR0.jpg', 'Important guide on most famous luxury car rental', 'Falcon Drive', 'important-guide-on-most-famous-luxury-car-rental', '2023-06-08', 'We are delighted to provide you with well-maintained vehicles in order to fulfil your long-held dreams. We, 1937 car rentals, stand out for class and sensible taste.', '<p>But I must explain to you how all this mistaken idea of denouncing \r\npleasure and praising pain was born and I will give you a complete \r\naccount of the system, and expound the actual teachings of the great \r\nexplorer of the truth, the master-builder of human happiness. No one \r\nrejects, dislikes, or avoids pleasure itself, because it is pleasure, \r\nbut because those who do not know how to pursue pleasure rationally \r\nencounter consequences that are extremely painful.\r\n\r\n                                            Nor again is there anyone \r\nwho loves or pursues or desires to obtain pain of itself, because it is \r\npain, but because occasionally circumstances occur in which toil and \r\npain can procure him some great pleasure. To take a trivial example, \r\nwhich of us ever undertakes laborious physical exercise, except to \r\nobtain some advantage from it? But who has any right to find fault with a\r\n man who chooses to enjoy a pleasure that has no annoying \r\nconsequences.On the other hand, we denounce with righteous indignation \r\nand dislike men who are so beguiled and demoralized by the charms of \r\npleasure of the moment, so blinded by desire, that they cannot foresee \r\nthe pain and trouble that are bound to ensue; and equal blame belongs to\r\n those who fail in their duty through weakness of will, which is the \r\nsame as saying through shrinking from toil and pain. These cases are \r\nperfectly simple and easy to distinguish. In a free hour, when our power\r\n of choice is untrammeled and when nothing prevents our being able to do\r\n what we like best, every pleasure is to be welcomed and every pain \r\navoided.</p>', 1, 'WHAT IS RENTALCOVER AND HOW DOES IT WORK?', 'WHAT IS RENTALCOVER AND HOW DOES IT WORK?', 'WHAT IS RENTALCOVER AND HOW DOES IT WORK?', '2022-09-29 02:45:17', '2023-06-19 01:54:34'),
(12, 'WYzWCQORBMbRx7WbH9SdjD3KQgbpTCQntacLgEFA.jpg', 'Why you should rent a car?', 'Falcon Drive', 'why-you-should-rent-a-car-', '2023-06-08', 'If you\'ve never rented a car before, this one\'s for you — we\'re going to tell you just what you\'re missing out on! Check out these 4 great advantages of renting…', 'Financial experts support or help you to to find out which way you can raise your funds more. Arkit a trusted name for providing assistants. Initially their main objective was to ensure the service they provide these people are loyal to their industry, experienced and professional.<br><br>Unless you are the one who really cares about this, it is not terribly important. What all matters are how your hybrid mobile application development is going to work in the long run as no one will care about how it was built.', 1, 'WHAT IS RENTALCOVER AND HOW DOES IT WORK?', 'WHAT IS RENTALCOVER AND HOW DOES IT WORK?', 'WHAT IS RENTALCOVER AND HOW DOES IT WORK?', '2022-09-29 02:45:45', '2023-06-19 01:54:29');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `car_name` varchar(255) DEFAULT NULL,
  `no_of_days` int(11) NOT NULL,
  `selected_package` varchar(255) DEFAULT NULL,
  `total_amount` bigint(20) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `vehicle_id`, `start_date`, `end_date`, `start_time`, `end_time`, `car_name`, `no_of_days`, `selected_package`, `total_amount`, `first_name`, `last_name`, `email`, `contact_no`, `created_at`, `updated_at`) VALUES
(55, 71, '2022-09-12', '2022-09-13', '02:19:00', '02:19:00', 'Audi A6', 2, NULL, 1400, 'Huzaifa', 'Khan', NULL, '02123131', '2022-09-12 03:26:21', '2022-09-12 03:26:21'),
(56, 71, '2022-09-12', '2022-09-13', '02:19:00', '02:19:00', 'Audi A6', 2, NULL, 1400, 'Test', 'Test', NULL, '02123131', '2022-09-12 03:26:42', '2022-09-12 03:26:42'),
(57, 71, '2022-09-12', '2022-09-13', '02:19:00', '02:19:00', 'Audi A6', 2, NULL, 1400, 'Test', 'Test', 'test@test.com', '02123131', '2022-09-12 03:27:27', '2022-09-12 03:27:27'),
(58, 71, '2022-09-12', '2022-09-13', '02:19:00', '02:19:00', 'Audi A6', 2, NULL, 1400, 'Test', 'Test', NULL, '02123131', '2022-09-12 03:27:50', '2022-09-12 03:27:50'),
(59, 71, '2022-09-12', '2022-09-13', '02:19:00', '02:19:00', 'Audi A6', 2, NULL, 1400, 'Test', 'Test', 'test@test.com', '02123131', '2022-09-12 03:28:06', '2022-09-12 03:28:06'),
(60, 74, '2022-09-13', '2022-09-15', '01:59:00', '01:59:00', 'Audi A6', 3, NULL, 765, 'Huzaifa', 'Khan', 'test@test.com', '02123131', '2022-09-13 03:09:19', '2022-09-13 03:09:19'),
(61, 115, '20/06/2023', '22/06/2023', '12:45', '12:55', NULL, 3, NULL, 1650, 'Huzaifa', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 02:28:59', '2023-06-20 02:28:59'),
(62, 115, '20/06/2023', '22/06/2023', '12:45', '12:55', NULL, 3, NULL, 1650, 'Huzaifa', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 02:29:51', '2023-06-20 02:29:51'),
(63, 115, '20/06/2023', '22/06/2023', '12:45', '12:55', NULL, 3, NULL, 1650, 'Huzaifa', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 02:30:23', '2023-06-20 02:30:23'),
(64, 115, '20/06/2023', '22/06/2023', '12:45', '12:55', NULL, 3, NULL, 1650, 'Huzaifa', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 02:30:32', '2023-06-20 02:30:32'),
(65, 115, '20/06/2023', '22/06/2023', '12:45', '12:55', NULL, 3, NULL, 1650, 'Huzaifa', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 02:30:36', '2023-06-20 02:30:36'),
(66, 115, '20/06/2023', '22/06/2023', '12:45', '12:55', NULL, 3, NULL, 1650, 'Huzaifa', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 02:46:01', '2023-06-20 02:46:01'),
(67, 115, '20/06/2023', '22/06/2023', '12:45', '12:55', NULL, 3, NULL, 1650, 'Huzaifa', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 02:46:27', '2023-06-20 02:46:27'),
(68, 92, '20/06/2023', '21/06/2023', '13:00', '13:10', 'Mazda 6 2023', 2, NULL, 340, 'Huzaifa', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 02:47:15', '2023-06-20 02:47:15'),
(69, 92, '20/06/2023', '21/06/2023', '13:00', '13:10', 'Mazda 6 2023', 2, NULL, 340, 'Huzaifa', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 02:52:33', '2023-06-20 02:52:33'),
(70, 92, '20/06/2023', '21/06/2023', '13:00', '13:10', 'Mazda 6 2023', 2, NULL, 340, 'Huzaifa', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 02:53:07', '2023-06-20 02:53:07'),
(71, 92, '20/06/2023', '21/06/2023', '13:00', '13:10', 'Mazda 6 2023', 2, NULL, 340, 'Huzaifa', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 02:53:38', '2023-06-20 02:53:38'),
(72, 92, '20/06/2023', '21/06/2023', '13:00', '13:10', 'Mazda 6 2023', 2, NULL, 340, 'Huzaifa', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 02:54:04', '2023-06-20 02:54:04'),
(73, 92, '20/06/2023', '22/06/2023', '13:10', '13:20', 'Mazda 6 2023', 3, NULL, 510, 'Bubby', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 02:54:23', '2023-06-20 02:54:23'),
(74, 92, '20/06/2023', '22/06/2023', '13:10', '13:20', 'Mazda 6 2023', 3, NULL, 510, 'Bubby', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 02:56:13', '2023-06-20 02:56:13'),
(75, 92, '20/06/2023', '22/06/2023', '13:10', '13:20', 'Mazda 6 2023', 3, NULL, 510, 'Bubby', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 02:58:44', '2023-06-20 02:58:44'),
(76, 92, '20/06/2023', '22/06/2023', '13:10', '13:20', 'Mazda 6 2023', 3, NULL, 510, 'Bubby', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 03:08:21', '2023-06-20 03:08:21'),
(77, 97, '20/06/2023', '22/06/2023', '13:25', '13:30', 'Hyundai Accent 2022', 3, NULL, 360, 'Huzaifa', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 03:12:58', '2023-06-20 03:12:58'),
(78, 97, '20/06/2023', '22/06/2023', '13:30', '13:45', 'Hyundai Accent 2022', 3, NULL, 360, 'Huzaifa', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 03:23:15', '2023-06-20 03:23:15'),
(79, 97, '20/06/2023', '22/06/2023', '13:30', '13:45', 'Hyundai Accent 2022', 3, NULL, 360, 'Huzaifa', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 03:33:33', '2023-06-20 03:33:33'),
(80, 97, '20/06/2023', '22/06/2023', '13:30', '13:45', 'Hyundai Accent 2022', 3, NULL, 360, 'Huzaifa', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 03:35:41', '2023-06-20 03:35:41'),
(81, 97, '20/06/2023', '22/06/2023', '13:30', '13:45', 'Hyundai Accent 2022', 3, NULL, 360, 'Huzaifa', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 03:39:42', '2023-06-20 03:39:42'),
(82, 97, '20/06/2023', '22/06/2023', '13:30', '13:45', 'Hyundai Accent 2022', 3, NULL, 360, 'Huzaifa', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 03:41:08', '2023-06-20 03:41:08'),
(83, 97, '20/06/2023', '22/06/2023', '13:30', '13:45', 'Hyundai Accent 2022', 3, NULL, 360, 'Huzaifa', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 03:41:47', '2023-06-20 03:41:47'),
(84, 97, '20/06/2023', '22/06/2023', '13:30', '13:45', 'Hyundai Accent 2022', 3, NULL, 360, 'Huzaifa', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 03:42:11', '2023-06-20 03:42:11'),
(85, 97, '20/06/2023', '22/06/2023', '13:30', '13:45', 'Hyundai Accent 2022', 3, NULL, 360, 'Huzaifa', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 03:42:37', '2023-06-20 03:42:37'),
(86, 92, '20/06/2023', '21/06/2023', '15:55', '16:00', 'Mazda 6 2023', 2, NULL, 340, 'Huzaifa', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 06:29:03', '2023-06-20 06:29:03'),
(87, 92, '20/06/2023', '21/06/2023', '15:55', '16:00', 'Mazda 6 2023', 2, NULL, 340, 'Huzaifa', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 06:39:51', '2023-06-20 06:39:51'),
(88, 92, '20/06/2023', '21/06/2023', '15:55', '16:00', 'Mazda 6 2023', 2, NULL, 340, 'Huzaifa', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 06:56:10', '2023-06-20 06:56:10'),
(89, 102, '20/06/2023', '22/06/2023', '17:50', '18:15', 'KIA K5 2023', 3, NULL, 510, 'Huzaifa', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 07:53:02', '2023-06-20 07:53:02'),
(90, 102, '20/06/2023', '30/06/2023', '18:15', '18:20', 'KIA K5 2023', 11, 'daily', 1870, 'Huzaifa', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-20 07:55:48', '2023-06-20 07:55:48'),
(91, 96, '21/06/2023', '23/06/2023', '11:15', '11:35', 'Chevrolet Spark 2023', 3, NULL, 300, 'Huzaifa', NULL, 'mrhuzaifa29@gmail.com', '03444854553', '2023-06-21 01:11:27', '2023-06-21 01:11:27'),
(92, 95, '21/06/2023', '01/07/2023', '11:30', '13:00', 'Chevrolet Malibu 2023', 11, 'daily', 1870, 'Huzaifa', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-21 01:15:36', '2023-06-21 01:15:36'),
(93, 95, '21/06/2023', '01/07/2023', '11:30', '13:00', 'Chevrolet Malibu 2023', 11, 'daily', 1870, 'Huzaifa', NULL, 'mrhuzaifa29@gmail.com', '063', '2023-06-21 01:23:24', '2023-06-21 01:23:24');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `meta_title` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `color_logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `logo`, `name`, `slug`, `status`, `meta_title`, `keywords`, `meta_description`, `created_at`, `updated_at`, `color_logo`) VALUES
(48, 'jqqznNhEkI7BLb05ClDfNDdJmfG29HIO0WnMhiN5.png', 'Mazda', 'mazda', 1, 'Mazda', 'Mazda', 'Mazda', '2023-06-19 01:27:48', '2023-06-19 07:49:37', '0Y9HeP5UprdEeD59av9P43TPXwKKAemHilantjpV.png'),
(49, '0GDTmSZLZwwlQoK5Lxdr0AX66omklIXsdo1Bc1As.png', 'Chevrolet', 'chevrolet', 1, 'Chevrolet', 'Chevrolet', 'Chevrolet', '2023-06-19 01:35:05', '2023-06-20 02:08:27', 'O3eOFI5IvUvVoqv7z9GekBWCSdpxxS2GVNbybbCH.png'),
(50, 'vGFeqS1oxDJjy4qI93PeauFQqsY39gGgQ94f9jxO.png', 'Hyundai', 'hyundai', 1, 'Hyundai', 'Hyundai', 'Hyundai', '2023-06-19 01:35:35', '2023-06-20 02:08:55', 'oBn0LM9ksu0iVMcUzPE6TkpbsE6xHyTrRYL0MYcP.png'),
(51, 'UokFnGbmaObqCbsUSM7B5Wh3nIDsXQb1v32nmj6j.png', 'Kia', 'kia', 1, 'Kia', 'Kia', 'Kia', '2023-06-19 01:35:54', '2023-06-20 02:09:01', 'kh8i4tLy4vct1eBohL0oWZdWR7BDDiHsMPWd9cR0.png'),
(52, 'h1CYgf7AO9cA5xTqdSt9bH4tBODZCbE7Li0YjA9x.png', 'Mercedes', 'mercedes', 1, 'Mercedes', 'Mercedes', 'Mercedes', '2023-06-19 01:36:15', '2023-06-20 02:09:09', 'oVy3nvnwIw8XQqC5MFtxg9DcxvAnSpPUQv70NFyh.png'),
(53, 'YHDIXB5Mvz1S0MYJAspc4b2UZT7ZKcod6PbETwPz.png', 'Nissan', 'nissan', 1, 'Nissan', 'Nissan', 'Nissan', '2023-06-19 01:36:35', '2023-06-20 02:09:17', 'JBZ27ckp52yW3TOOE1dRCkjyzQg53lmybPWsy7J8.png'),
(54, 'Jof6KQIVwxJyIdpxJwxdhGrSQwsQYOah8J4T1O5c.png', 'Peugeot', 'peugeot', 1, 'Peugeot', 'Peugeot', 'Peugeot', '2023-06-19 01:36:53', '2023-06-20 02:09:26', 'o28FpBKMsB2804f3viiXudQQA1O1fwN0MmTC1wR1.png'),
(55, 'OM0z1uUrLuIamt91Z5M3qmfiJ5vnsqLRO68qXq9o.png', 'Rolls Royce', 'rolls-royce', 1, 'Rolls Royce', 'Rolls Royce', 'Rolls Royce', '2023-06-19 01:37:13', '2023-06-20 02:09:34', 'nsxeWKrm7AGPsjxfjqIEMSiThMGd6UX6e4EYjY8v.png'),
(56, 'QA8i9yQebqcHMExqV4noayF3SDrDcL0CRlUKXhvG.png', 'Infiniti', 'infiniti', 1, 'Infiniti', 'Infiniti', 'Infiniti', '2023-06-19 01:37:36', '2023-06-20 02:09:42', '9ggHa5HMCTYAdFliqtaNVTSuzQe1ootz9QuFX2BF.png');

-- --------------------------------------------------------

--
-- Table structure for table `brands_home`
--

CREATE TABLE `brands_home` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE `cms` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  `image_one` varchar(255) DEFAULT NULL,
  `image_two` varchar(255) DEFAULT NULL,
  `image_three` varchar(255) DEFAULT NULL,
  `heading_one` text DEFAULT NULL,
  `heading_two` text DEFAULT NULL,
  `description_one` longtext DEFAULT NULL,
  `description_two` longtext DEFAULT NULL,
  `link_one` text DEFAULT NULL,
  `link_two` text DEFAULT NULL,
  `link_three` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `type` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE `contact_form` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`id`, `fname`, `lname`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(15, 'Huzaifa', 'Khan', 'mrhuzaifa29@gmail.com', '+923444854553', 'sadasdasd', '2023-06-08 03:50:25', '2023-06-08 03:50:25'),
(16, 'Steve', 'Json', 'steve@gmail.com', '03444', 'asddasads', '2023-06-09 05:13:24', '2023-06-09 05:13:24');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `route` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `meta_title`, `keywords`, `meta_description`, `route`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'home', 'Home | Falcon Drive', 'Home', 'Home | Falcon Drive', 'home', 1, '2022-04-07 05:27:16', '2022-09-10 07:37:19'),
(2, 'About Us', 'about-us', 'About Us | Falcon Drive', 'About Us', 'About Us | Falcon Drive', 'about-us', 1, '2022-04-07 05:36:53', '2022-09-10 07:37:28'),
(3, 'Our Services', 'our-services', 'Our Services | Falcon Drive', 'Our Services', 'Our Services | Falcon Drive', 'service', 1, '2022-04-07 05:49:25', '2022-09-10 07:37:38'),
(4, 'Blog', 'blog', 'Blog | Falcon Drive', 'Blog', 'Blog | Falcon Drive', 'blog', 1, '2022-04-07 05:49:25', '2022-09-10 07:37:47'),
(5, 'Contact Us', 'contact', 'Contact Us | Falcon Drive', 'Contact Us', 'Contact Us | Falcon Drive', 'contact', 1, '2022-04-07 05:50:29', '2022-09-10 07:37:56'),
(6, 'All Vehicles', 'all-vehicles', 'All Vehicles | Falcon Drive', 'All Vehicles', 'All Vehicles | Falcon Drive', 'all_vehicles', 1, '2022-04-12 10:32:19', '2022-09-10 07:38:05'),
(7, 'Faqs', 'faqs', 'Faqs | Falcon Drive', 'Faqs | Falcon Drive', 'Faqs | Falcon Drive', 'faqs', 1, '2022-09-29 11:01:06', '2022-09-29 11:01:06'),
(8, 'Terms And Condition', 'termsandcondition', 'Terms And Condition | Falcon Drive', 'Terms And Condition | Falcon Drive', 'Terms And Condition | Falcon Drive', 'termsandcondition', 1, '2022-09-29 11:01:06', '2022-09-29 11:01:06');

-- --------------------------------------------------------

--
-- Table structure for table `our_services`
--

CREATE TABLE `our_services` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'Falcon Drive', '2021-10-26 05:41:38', '2021-10-26 05:41:38'),
(2, 'site_logo_header', '1v5R21jXzpNjPjf6g5ORxRBsP5p5rdi4kyO5FQVI.png', '2021-10-26 05:42:17', '2023-06-08 02:33:07'),
(3, 'site_email', 'info@falcondrive.ae', '2021-10-26 09:25:48', '2023-06-07 01:23:47'),
(4, 'contact_no', '+971 54 323 7049', '2021-10-26 09:27:05', '2023-06-07 01:23:48'),
(5, 'address', 'City Walk, Building 21 A - Unit 4 58 A Rd - Al Wasl - Dubai', '2021-10-26 09:54:18', '2023-06-21 03:34:25'),
(6, 'timings', 'Saturday to Thursday / 9:00 AM to 6:00 PM', '2021-10-26 09:54:18', '2021-11-16 17:54:28'),
(7, 'social_twitter', '#', '2021-10-26 09:54:18', '2022-04-12 00:50:08'),
(8, 'social_facebook', 'Facebook', '2021-10-26 09:54:18', '2023-06-07 01:23:48'),
(9, 'social_linkedin', '#', '2021-10-26 09:54:18', '2022-04-12 00:50:08'),
(10, 'social_pinterest', '#', '2021-10-26 09:54:18', '2022-04-12 00:50:08'),
(11, 'footer_about', 'Welcome to Falcon Drive Car Rental, the leading automobile rental service provider in the UAE. With a significant focus on customer service and a diverse fleet of high-quality automobiles.', '2021-10-26 09:54:18', '2023-06-20 03:57:34'),
(12, 'google_location', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3610.078890533555!2d55.2650551!3d25.2005619!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e5f43f4f364c235%3A0xc345ab5e5ae9ff5a!2sFalcon%20Drive%20Car%20Rental!5e0!3m2!1sen!2sae!4v1687336520728!5m2!1sen!2sae', '2021-10-26 10:29:05', '2023-06-21 03:35:38'),
(13, 'header_image', 'EeZf7wLxKLVtx8hc8b3mlR9n72F7jmrNbpHf7WqQ.svg', '2021-10-27 09:24:03', '2022-04-07 00:39:50'),
(14, 'social_instagram', 'Instagram', '2021-10-26 09:54:18', '2023-06-07 01:23:48'),
(15, 'site_logo_footer', 'T6FZJdWd0kjsznmiFouXFYPZX0Tbb1eGSOvcJRBG.png', '2021-10-26 05:42:17', '2023-06-08 02:33:07'),
(16, 'whatsapp_display', '+971 54 323 7049', '2022-08-12 05:59:59', '2023-06-07 01:23:48'),
(17, 'whatsapp_link', '+971543237049', '2022-08-12 05:59:59', '2023-06-07 01:23:48'),
(18, 'social_youtube', 'Youtube', '2022-11-14 06:50:10', '2022-11-14 01:53:18'),
(19, 'social_tiktok', 'Tiktok', '2022-11-14 06:52:23', '2022-11-14 01:53:14');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `w_price` int(11) DEFAULT NULL,
  `m_price` int(11) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `model_year` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `car_type_Economy` varchar(255) DEFAULT NULL,
  `car_type_SUV` varchar(255) DEFAULT NULL,
  `car_type_Hatchback` varchar(255) DEFAULT NULL,
  `car_type_Luxury` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `brand_id`, `featured_image`, `name`, `price`, `w_price`, `m_price`, `slug`, `description`, `is_featured`, `status`, `created_at`, `updated_at`, `model_year`, `location`, `car_type_Economy`, `car_type_SUV`, `car_type_Hatchback`, `car_type_Luxury`) VALUES
(91, 48, 'myHYkXnVgoVuGqvtFDasSCctJOdb1h5euwNZeVLf.png', 'MAZDA 3 2023', 130, 700, 2550, 'mazda-3-2023', '<p>Experience Unparalleled Comfort, Style, and Reliability with the 2023 Mazda 3. A car that sets new standards in the compact car segment. With its exceptional blend of comfort, style, and reliability, the Mazda 3 is the perfect choice for those seeking an unforgettable driving experience.<br><br>We offer the Mazda 3 at highly affordable rates at Falcon Drive rent a Car. Starting at just 130 AED per day, 700 AED per week, or 2550 AED per month, allowing you to enjoy its remarkable features and performance without breaking the bank.<br><br>We have made the renting process for the Mazda 3 quick, easy, and convenient. You have the option to book your Mazda 3 online through our user-friendly platform. Saving you time and effort. Alternatively, you can visit our onsite location and our friendly staff will assist you in selecting and securing your rental. We understand that flexibility is key, and we provide both online and onsite options to suit your preferences and schedule.<br><br>When you rent the 2023 Mazda 3 from Falcon Drive, you can rest assured that you are getting a reliable and well-maintained vehicle. Our fleet is regularly inspected and serviced to ensure optimal performance and safety. We take pride in offering top-quality cars that meet our customers\' high standards.<br><br>Step inside the Mazda 3, and you will discover a cabin that combines comfort, style, and advanced technology. The Mazda 3 is powered by a responsive and efficient SKYACTIV-G engine, delivering impressive performance without compromising on fuel economy. Whether you choose the 2.0-liter or the more powerful 2.5-liter engine, you can expect a smooth and dynamic driving experience. Sink into the plush seats that provide excellent support on long journeys. The elegant interior features premium materials and a sleek, driver-centric design. Stay connected and entertained with the intuitive infotainment system that includes a touchscreen display, Bluetooth connectivity, and smartphone integration.<br><br>Safety is a top priority in the Mazda 3, and it comes equipped with a range of advanced safety features. From blind-spot monitoring to lane-keep assist. the Mazda 3 keeps you and your passengers protected on the road.<br><br>Experience the joy of driving the 2023 Mazda 3 with Falcon Drive rent a Car UAE. With our competitive rates, easy renting procedures. Online and onsite options, and a commitment to reliability and style, we are your trusted partner for an unforgettable car rental experience. Contact us today to reserve your Mazda 3 and embark on a journey of comfort, style, and unmatched performance.!<br></p>', 1, 1, '2023-06-19 02:16:35', '2023-06-23 02:00:40', '2023', 'UAE', 'Economy', NULL, NULL, NULL),
(92, 48, '63owu71RyZeHi0OSpCILIRONZkzd0eQ3ugbQFiBf.png', 'Mazda 6 2023', 170, 1200, 3700, 'mazda-6-2023', '<p>Experience the perfect fusion of elegance, performance, and cutting-edge technology with the 2023 Mazda 6. As one of the most refined sedans in its class, the Mazda 6 delivers a driving experience that surpasses expectations. At Falcon Drive rent a Car UAE, you can enjoy the sophistication of the Mazda 6 at highly competitive rates, starting at just 170 AED per day, 1200 AED per week, or 3700 AED per month.<br><br>The external appearance of the Mazda 6 springs confidence and style. Its sleek and aerodynamic appearance is highlighted by curved lines and a prominent grille, while optional LED headlights and taillights offer a touch of refinement. Step inside and you\'ll be surrounded by luxury. The inside is expertly designed, with quality materials, comfortable seating, and refined finishing. Every aspect has been developed with the comfort of both the driver and the passengers in mind. Performance lies at the heart of the Mazda 6. Equipped with a SKYACTIV-G engine, this sedan offers a thrilling ride. Choose between the standard 2.5-liter engine, which delivers 187 horsepower. And the available turbocharged 2.5-liter engine, producing an impressive 250 horsepower. The Mazda 6\'s responsive acceleration and seamless power delivery make each drive exhilarating. Its precise handling and advanced suspension system ensure a smooth and confident ride, while G-Vectoring Control enhances stability and control.<br><br>Inside the Mazda 6, advanced technology surrounds you. The Mazda Connect infotainment system, accessible through the intuitive touchscreen display, offers seamless integration with your smartphone, allowing you to access your favorite apps and media on the go. Stay connected and entertained throughout your journey. Additionally, the Mazda 6 features a comprehensive suite of safety features, including blind-spot monitoring, lane-keep assist, adaptive cruise control, and automatic emergency braking, ensuring a safe and secure driving experience.<br><br>We are committed to providing an exceptional car rental experience at Falcon Drive rent a Car. With our affordable rates and flexible rental options, you can enjoy the elegance and performance of the Mazda 6 without compromise. Immerse yourself in luxury and experience the joy of driving with the 2023 Mazda 6. Reserve your Mazda 6 today and embark on a journey of sophistication and refinement.!<br></p>', 1, 1, '2023-06-19 05:50:56', '2023-06-23 02:00:55', '2023', 'UAE', 'Economy', NULL, NULL, NULL),
(93, 48, 'GPNMwyDLWhCUUOu5mCRIDaS3SLQkdSixLX1IfQq9.png', 'MAZDA CX3 2023', 110, 735, 2300, 'mazda-cx3-2023', '<p>The Ultimate Rental Car for Your UAE Adventures. Get ready to elevate your driving experience with the all-new 2023 Mazda CX-3. As a versatile and stylish subcompact SUV. the Mazda CX-3 is the perfect choice for those seeking comfort, agility, and reliability. We offer the Mazda CX-3 at highly competitive rates at Falcon Drive rent a Car. Starting at just 110 AED per day, 735 AED per week, or 2300 AED per month, making it the best option for your rental car needs in the UAE.<br><br>The Mazda CX-3 boasts a captivating design that effortlessly combines sleek lines with muscular proportions. Its bold grille, striking LED headlights, and sculpted body give it a commanding presence on the road. Step inside the cabin, and you will be greeted by a refined and well-crafted interior. The ergonomic seating, premium materials, and cruise controls create an inviting and comfortable space for both the driver and passengers.<br><br>Equipped with a SKYACTIV-G engine, the Mazda CX-3 offers a thrilling performance with excellent fuel efficiency. The 2.0-liter engine delivers an impressive balance of power and efficiency. ensuring a dynamic driving experience on both city streets and highways. The Mazda CX-3\'s agile handling and responsive steering provide exceptional maneuverability, making it ideal for navigating the busy streets of the UAE.<br><br>The Mazda CX-3 comes packed with advanced technology and safety features, providing peace of mind during your rental period. Stay connected with the Mazda Connect infotainment system, which includes a user-friendly touchscreen display, Bluetooth connectivity, and smartphone integration.<br><br>With its compact size and nimble performance, the Mazda CX-3 is the ideal rental car for exploring the UAE. Whether you are planning a city tour or an adventurous road trip, the Mazda CX-3 offers the perfect balance of versatility and efficiency. Its spacious interior provides ample room for passengers and cargo, ensuring a comfortable and convenient journey.<br><br>Falcon Drive rent a Car understands the importance of reliable and affordable rental cars. The Mazda CX-3\'s competitive rates, starting at just 110 AED per day, 735 AED per week, or 2300 AED per month, make it an unbeatable option for your rental needs. Experience the exceptional quality and performance of the 2023 Mazda CX-3 and make the most out of your UAE adventure.<br><br>Reserve your Mazda CX-3 today and embark on a memorable journey with Falcon Drive rent a Car. Discover why the Mazda CX-3 is the ultimate rental car choice, providing you with comfort, style, and reliability during your travels in the UAE.!<br></p>', 1, 1, '2023-06-19 05:54:21', '2023-06-23 02:01:01', '2023', 'UAE', NULL, 'SUV', NULL, NULL),
(94, 48, 'WPpirzR1fovNYlPV5TsWsOnsrxwm7QOresthDtg4.png', 'Mazda CX5 2023', 180, 1200, 4000, 'mazda-cx5-2023', '<p>Introducing the 2023 Mazda CX-5 the Ultimate Rental Car for Your UAE Trip. You can Experience the perfect blend of style, performance, and versatility with the 2023 Mazda CX-5. As a top-tier compact SUV, the Mazda CX-5 offers an exceptional driving experience that is ideal for exploring the UAE. At Falcon Drive rent a Car, we provide the Mazda CX-5 at highly competitive rates, starting at just 180 AED per day, 1200 AED per week, or 4000 AED per month. making it the best choice for your rental car needs during your UAE trip.<br><br>The Mazda CX-5 combines sleek design elements with a spacious and comfortable interior. Its bold and athletic exterior showcases a distinctive grille, LED headlights, and sharp character lines, giving it a sophisticated and modern look. Step inside the cabin, and you will discover a thoughtfully designed interior with premium materials and ample seating space. The Mazda CX-5 provides a comfortable and refined environment for both driver and passengers, ensuring a pleasurable journey.<br><br>Equipped with a range of advanced features, the Mazda CX-5 delivers an exceptional performance on the road. The SKYACTIV-G engine offers both power and efficiency, allowing you to enjoy a responsive and fuel-efficient driving experience. With its precise handling and smooth suspension, the Mazda CX-5 provides a balanced and enjoyable ride, making it perfect for long trips or navigating through city streets.<br><br>The Mazda CX-5 boasts advanced technology and safety features to enhance your driving experience. Safety features such as blind-spot monitoring, lane-keep assist, adaptive cruise control, and automatic emergency braking provide peace of mind and ensure your safety during your UAE adventure.<br><br>When it comes to renting a car for your UAE trip, the Mazda CX-5 is the best choice. Its spacious interior provides ample room for both passengers and luggage, making it ideal for exploring the country\'s diverse landscapes. The Mazda CX-5\'s versatility allows you to comfortably accommodate family or friends while enjoying the convenience of ample storage space for all your travel essentials.<br><br>Falcon Drive rent a Car prioritizes reliability and affordability. Renting a dreamy Mazda CX-5 for your UAE trip is a cost-effective and convenient option.<br><br>Experience the unparalleled quality and performance of the rental car during your UAE adventure. Reserve your Mazda CX-5 today with Falcon Drive rent a Car and embark on a memorable journey, enjoying the perfect combination of style, comfort, and versatility that this exceptional rental car offers.!<br></p>', 1, 1, '2023-06-19 05:57:32', '2023-06-23 02:01:15', '2023', 'UAE', NULL, 'SUV', NULL, NULL),
(95, 49, 'GCI9bEz1dXyXPqGfkIAjJqToh6gfaPKdH3oZmF8j.png', 'Chevrolet Malibu 2023', 170, 1000, 3550, 'chevrolet-malibu-2023', '<p>The Chevrolet Malibu 2023 is a stylish and sophisticated midsize sedan that is perfect for both Dubai adventures and business trips. With its blend of comfort, performance, and advanced features, the Malibu offers a rewarding driving experience in the bustling city of Dubai.<br><br>The exterior design of the Chevrolet Malibu 2023 is sleek and modern, exuding a sense of elegance and refinement. Its aerodynamic shape not only enhances its visual appeal but also contributes to improved fuel efficiency. The spacious and luxurious interior of the Malibu provides a comfortable environment for both the driver and passengers, ensuring a pleasant journey.<br><br>Under the hood, the Chevrolet Malibu 2023 offers a choice of engines, including a turbocharged 1.5-liter four-cylinder engine and a more powerful turbocharged 2.0-liter four-cylinder engine. These engines deliver ample power and smooth acceleration, making merging and overtaking on Dubai\'s highways effortless. The Malibu\'s responsive handling and precise steering contribute to its engaging driving dynamics.<br><br>The Malibu 2023 comes equipped with a range of advanced features that enhance both safety and convenience. It includes a user-friendly infotainment system with a touchscreen display, Bluetooth connectivity, and smartphone integration for seamless entertainment and navigation. Additionally, the Malibu offers features such as forward collision warning, lane departure warning, blind-spot monitoring, and rear cross-traffic alert, ensuring a safe and confident driving experience.<br><br>For Dubai adventures or business trips, the Chevrolet Malibu 2023 offers excellent value for money. With rental prices starting at 170 AED per day, 1000 AED per week, and 3550 AED per month, it presents an affordable option for both short and long-term rentals. The Malibu\'s fuel-efficient engine options also help keep the overall travel costs in check, making it an economical choice.<br><br>Moreover, the Malibu\'s spacious cabin provides ample legroom and headroom for both front and rear passengers, ensuring a comfortable journey for all. Its generous trunk space can accommodate luggage and other belongings, making it suitable for business travelers who need to carry equipment or samples.<br><br>Conclusively, the Chevrolet Malibu 2023 is an excellent choice for Dubai adventures or business trips. With its stylish design, comfortable interior, advanced features, and affordable rental prices. it offers a combination of luxury and value for money. Whether it\'s exploring the vibrant city of Dubai or attending business meetings, the Chevrolet Malibu 2023 is a reliable and versatile sedan that will enhance any travel experience.!<br></p>', 1, 1, '2023-06-19 06:01:30', '2023-06-23 02:01:28', '2023', 'UAE', 'Economy', NULL, NULL, NULL),
(96, 49, 'q7gZq7BkzSwQbfXLrGMVYYKADTyk12T0babPDnQj.png', 'Chevrolet Spark 2023', 100, 600, 1700, 'chevrolet-spark-2023', '<p>The Chevrolet Spark 2023 is a compact and stylish car that offers great value for money for UAE trips. With its affordable rental rates of 100 AED per day, 600 AED per week, and 1700 AED per month, the Spark provides an excellent option for travelers on a budget.<br><br>Despite its compact size, the Chevrolet Spark is packed with amenities and capabilities. Its tiny shape makes it simple to move around packed city streets and find parking places, which is especially useful in congested UAE cities like Dubai and Abu Dhabi. The car\'s quick steering and nimble handling offer a smooth and comfortable driving experience. Whether you\'re navigating traffic or driving down the highway.<br><br>The interior of the Spark is surprisingly roomy and comfortable. Despite its small size on the outside. The interior space is maximized, with plenty of headroom and legroom for both the driver and passengers. Even on extended journeys, the well-designed chairs give adequate support and comfort. The interior materials are of decent quality, with a modern and attractive dashboard layout that adds to the overall appeal of the car. the Chevrolet Spark 2023 is equipped with a fuel-efficient 1.4-liter engine that delivers a respectable amount of power. It offers smooth acceleration and responsive handling, ensuring a fun and engaging driving experience.<br><br>In terms of technology and convenience features, the Chevrolet Spark delivers more than you would expect from a car in its price range. It comes equipped with a user-friendly infotainment system that includes a touchscreen display, Bluetooth connectivity, and smartphone integration for hands-free calling and audio streaming. Additionally, the Spark offers features like a rearview camera for easy parking, USB ports for device charging, and a decent audio system that ensures an enjoyable driving experience.<br><br>One of the standout features of the Chevrolet Spark is its fuel efficiency. With rising fuel costs, this is a significant advantage for those planning long trips or extensive exploration of the UAE. The Spark\'s small and efficient engine delivers impressive fuel economy, helping you save money on fuel expenses during your travels.<br><br>Overall, the Chevrolet Spark 2023 is a practical and affordable choice for UAE trips. Its compact size, comfortable interior, and fuel efficiency make it an excellent option for navigating crowded city streets, exploring the country\'s scenic routes, and enjoying the UAE\'s vibrant culture and attractions. With its attractive rental rates, the Spark provides outstanding value for money, allowing travelers to make the most of their UAE adventures without breaking the bank.!<br></p>', 1, 1, '2023-06-19 06:05:47', '2023-06-23 02:01:33', '2023', 'UAE', NULL, NULL, 'Hatchback', NULL),
(97, 50, 'dwWI2bOZpphYG0KED1k2wf2qZJKoeDg5uyqWD6PM.png', 'Hyundai Accent 2022', 120, 805, 2100, 'hyundai-accent-2022', '<p>The Hyundai Accent 2022, available at Falcon Drive Rent a Car, is a compact car that offers reliability, comfort, and affordability. With its sleek design, fuel efficiency, and competitive rental prices, the Accent is a great choice for individuals or families looking for a practical and budget-friendly car rental option.<br><br>The Hyundai Accent 2022 features a modern and stylish exterior design with clean lines and a distinctive front grille. Its compact size makes it ideal for moving through city streets and finding parking spaces with ease. Despite its small footprint, the Accent surprises with a surprisingly spacious interior that can comfortably accommodate up to five passengers.<br><br>Under the hood, the Hyundai Accent 2022 is equipped with a fuel-efficient 1.6-liter engine that delivers a good balance of power and efficiency. It offers smooth acceleration and responsive handling, making it suitable for both city driving and longer journeys. The Accent\'s suspension system ensures a comfortable ride, absorbing bumps and road imperfections to provide a smooth and enjoyable driving experience.<br><br>Inside the cabin, the Hyundai Accent 2022 offers a comfortable and well-designed interior. The seats are supportive and provide ample legroom for passengers, ensuring a pleasant journey. The dashboard layout is user-friendly. featuring a touchscreen infotainment system with Bluetooth connectivity and smartphone integration for seamless entertainment and navigation.<br><br>One of the key advantages of renting the Hyundai Accent 2022 from Falcon Drive Rent a Car is its affordable pricing. With rates starting at just 120 AED per day, 805 AED per week, and 2100 AED per month, it offers excellent value for money. These competitive rental prices make it an attractive option for both short-term rentals and longer stays in Dubai.<br><br>Furthermore, the Hyundai Accent 2022 is known for its fuel efficiency, contributing to cost savings during your rental period. With its efficient engine, you can explore Dubai and its surrounding areas without worrying about excessive fuel consumption.<br><br>This car provides an excellent option for both city adventures and longer trips. Whether you are exploring Dubai\'s attractions or cruising along the highways, the Hyundai Accent 2022 is a dependable and economical choice that won\'t disappoint.!<br></p>', 1, 1, '2023-06-19 06:14:42', '2023-06-23 02:02:09', '2022', 'UAE', 'Economy', NULL, NULL, NULL),
(98, 50, 'aXs1dSgke4qn7LW2YvSlOQUL5DClzmtdM6JyDatL.png', 'Hyundai Accent 2023', 125, 830, 2500, 'hyundai-accent-2023', '<p>The Hyundai Accent 2023 is a compact car that offers great value for money and is a perfect choice for Dubai adventures or business trips. With its reliable performance, comfortable interior, and affordable rental prices, the Accent is an ideal companion for exploring the dynamic city of Dubai.<br><br>The Hyundai Accent 2023 features a sleek and modern design, with clean lines and a stylish front grille. Its compact size allows for easy maneuverability in busy city streets and tight parking spaces. Despite its smaller exterior dimensions, the Accent surprises with a spacious interior that can comfortably accommodate both driver and passengers.<br><br>Under the hood, the Hyundai Accent 2023 is equipped with a fuel-efficient 1.6-liter engine that delivers a good balance of power and fuel economy. The engine provides smooth acceleration and responsive handling, making it suitable for navigating Dubai\'s highways and bustling streets. The Accent\'s suspension system ensures a comfortable ride, absorbing road imperfections and reducing vibrations.<br><br>Inside the cabin, the Hyundai Accent 2023 offers a well-designed and comfortable interior. The seats are supportive and provide ample legroom for passengers, ensuring a pleasant journey. The dashboard layout is intuitive and user-friendly, featuring a touchscreen infotainment system with Bluetooth connectivity and smartphone integration for entertainment and navigation needs.<br><br>When it comes to affordability, the Hyundai Accent 2023 is a standout choice. With rental prices starting at just 125 AED per day, 830 AED per week, and 2500 AED per month, it provides excellent value for money. These affordable rates make it an attractive option for both short-term adventures and longer business trips, helping to keep travel expenses in check.<br><br>Furthermore, the Hyundai Accent\'s compact size makes it easy to navigate Dubai\'s crowded streets and find parking spaces, saving time and hassle. Its fuel-efficient engine contributes to cost savings by delivering impressive fuel economy, allowing travelers to explore Dubai and its surroundings without worrying about excessive fuel consumption.<br><br>In conclusion, the Hyundai Accent 2023 is a reliable and affordable choice for Dubai adventures or business trips. With its sleek design, comfortable interior, fuel efficiency, and affordable rental prices, it ticks all the boxes for those seeking a practical and budget-friendly option. Whether it\'s exploring Dubai\'s attractions or attending business meetings, the Hyundai Accent 2023 is a versatile and dependable car that ensures a hassle-free and enjoyable travel experience.!<br></p>', 1, 1, '2023-06-19 06:23:21', '2023-06-23 02:02:11', '2023', 'UAE', 'Economy', NULL, NULL, NULL),
(99, 56, 'McwmIeHCgtFh6qNzi4UETsszuUsGVFGH7gFLMmeD.png', 'Infiniti Q50 2023', 300, 1900, 6000, 'infiniti-q50-2023', '<p>Introducing the Infiniti Q50 2023. This luxury sedan offers a perfect balance of performance, elegance, and advanced technology. Making it an excellent choice for those seeking a refined and exhilarating driving experience in Dubai.<br><br>The Infiniti Q50 2023 showcases a sophisticated and dynamic design that commands attention on the road. With its bold lines, sculpted body, and signature Infiniti grille, the Q50 exudes a sense of confidence and style. Its aerodynamic shape not only enhances its visual appeal but also contributes to improved fuel efficiency and handling.<br><br>Under the hood, the Infiniti Q50 2023 offers a range of powerful engine options, delivering exhilarating performance and responsive acceleration. Whether you opt for the fuel-efficient turbocharged four-cylinder engine or the robust V6 engine, you can expect a thrilling driving experience with excellent power delivery and precise handling. The Q50\'s advanced suspension system and responsive steering provide a comfortable and engaging ride, ensuring confidence on both city streets and highways.<br><br>Inside the cabin, the Infiniti Q50 2023 offers a luxurious and technologically advanced interior. The premium materials, meticulous craftsmanship, and attention to detail create a refined and inviting atmosphere. The driver-oriented cockpit features intuitive controls and a comprehensive infotainment system, allowing for seamless connectivity and entertainment options.<br><br>Renting the Infiniti Q50 2023 from Falcon Drive Rent a Car offers an opportunity to experience luxury and performance at competitive rental prices. With rates starting at AED 300 per day, AED 1900 per week, and AED 6000 per month, it provides an excellent value for a premium sedan.<br><br>Furthermore, the Infiniti Q50 2023 is equipped with advanced safety features, including multiple airbags, stability control, and driver-assistance systems, ensuring the highest level of safety for you and your passengers.<br><br>It provides an exceptional driving experience for those seeking luxury and refinement in Dubai. Whether you are attending a business meeting or embarking on a leisurely drive, the Infiniti Q50 2023 is sure to impress with its timeless style, comfortable interior, and engaging performance.!<br></p>', 1, 1, '2023-06-19 06:27:09', '2023-06-23 02:08:35', '2023', 'UAE', 'Economy', NULL, NULL, NULL),
(100, 56, '1Aecg4FmQidSKtqSLqkw3mOrzZtN0USt2M4QAUa1.png', 'Infiniti QX55 2023', 350, 2000, 6850, 'infiniti-qx55-2023', '<p>Experience the perfect balance of elegance, performance, and versatility with the 2023 Infiniti QX55. As a luxurious and stylish compact SUV, the Infiniti QX55 offers a unique combination of sportiness and refinement. At Falcon Drive Car Rental UAE, we provide the Infiniti QX55 at competitive rates, starting at just AED 350 per day, AED 2000 per week, or AED 6850 per month, allowing you to enjoy its remarkable features without breaking the bank.<br><br>The Infiniti QX55 stands out with its sleek and dynamic design. Its bold lines, sculpted body, and striking grille create a captivating presence on the road. Step inside the meticulously crafted interior, and you will be greeted by premium materials, modern design elements, and advanced technology. The Infiniti QX55 offers a comfortable and luxurious cabin that is both stylish and functional.<br><br>Under the hood, the Infiniti QX55 delivers impressive performance. Powered by a turbocharged engine, it offers exhilarating acceleration and responsive power delivery. Its precise handling and agile mobility make it a joy to drive. if you are navigating city streets or cruising on the highway. The Infiniti QX55 seamlessly combines performance with fuel efficiency, ensuring a dynamic yet economical driving experience.<br><br>Inside the Infiniti QX55, you will find a host of advanced features and amenities. The infotainment system offers seamless connectivity, allowing you to access your favorite apps, navigation, and entertainment with ease. The Infiniti QX55 also prioritizes safety, with a suite of advanced safety features including forward collision warning, lane departure warning, blind-spot monitoring, and reviewer camera, providing peace of mind during your travels.<br><br>Renting the Infiniti QX55 for your UAE adventure is the perfect choice for those who appreciate style and versatility. Its compact size makes it ideal for navigating through crowded city streets, while its spacious cargo area allows you to bring along all your essentials for your journey. Whether you are exploring the city or embarking on an outdoor adventure, the Infiniti QX55 is a reliable and luxurious companion.<br><br>At Falcon Drive Car Rental UAE, we strive to provide a seamless and enjoyable rental experience. With our competitive rates starting at AED 350 per day, AED 2000 per week, or AED 6850 per month, you can indulge in the luxury and performance of the 2023 Infiniti QX55 without compromising your budget.<br><br>Reserve the 2023 Infiniti QX55 for your UAE trip today and embark on a journey of style, performance, and comfort. Contact Falcon Drive Car Rental UAE to experience the sophistication and versatility of this remarkable compact SUV.!<br></p>', 1, 1, '2023-06-19 06:31:09', '2023-06-23 02:02:15', '2023', 'UAE', 'Economy', NULL, NULL, NULL),
(101, 56, 'nUwY2oUHjIfFK1edPCi8hl2nNXx23R39UEsxieNp.png', 'Infiniti QX60 2023', 500, 3150, 9500, 'infiniti-qx60-2023', '<p>As a premium midsize SUV, the Infiniti QX60 offers an exceptional blend of sophistication, comfort, and advanced technology. At Falcon Drive Car Rental UAE, we provide the Infiniti QX60 at competitive rates, starting at AED 500 per day, AED 3150 per week, or AED 9500 per month, allowing you to indulge in its remarkable features without compromising your budget.<br><br>The Infiniti QX60 boasts a striking design that effortlessly combines elegance with modernity. Its bold lines, distinctive grille, and signature LED headlights create a commanding presence on the road. Step inside the spacious and meticulously crafted interior, and you will be greeted by premium materials, exquisite attention to detail, and a host of advanced features. The Infiniti QX60 provides a refined and comfortable environment for both driver and passengers, ensuring an enjoyable and luxurious journey.<br><br>Equipped with a powerful V6 engine, the Infiniti QX60 delivers impressive performance and a smooth, responsive driving experience. Its advanced suspension system and precise steering provide exceptional handling and agility, making every drive a pleasure. Whether you are cruising on the highway or navigating city streets, the Infiniti QX60 offers a comfortable and refined ride, ensuring you arrive at your destination in style and comfort.<br><br>Inside the Infiniti QX60, advanced technology and premium amenities await. The infotainment system features a user-friendly touchscreen display, allowing you to effortlessly control navigation, entertainment, and vehicle settings. The Infiniti QX60 also prioritizes safety, offering a comprehensive suite of advanced safety features such as blind-spot monitoring, lane-keep assist, adaptive cruise control, and forward collision warning, providing peace of mind throughout your journey.<br><br>Renting the Infiniti QX60 for your UAE trip is the perfect choice for those who seek luxury, comfort, and versatility. Its spacious interior can accommodate both passengers and cargo, making it an ideal vehicle for family vacations or group excursions. Experience the thrill of driving a premium SUV while enjoying the convenience and practicality that the Infiniti QX60 offers.<br><br>At Falcon Drive Car Rental UAE, we strive to provide a seamless and reliable rental experience. With our competitive rates starting at AED 500 per day, AED 3150 per week, or AED 9500 per month, you can indulge in the luxury and performance of the 2023 Infiniti QX60 without exceeding your budget.<br><br>Elevate your driving experience and reserve the 2023 Infiniti QX60 for your UAE trip today. Contact Falcon Drive Car Rental UAE to embark on a journey of luxury, sophistication, and unrivaled comfort.!<br></p>', 1, 1, '2023-06-19 06:33:56', '2023-06-23 02:08:32', '2023', 'UAE', NULL, 'SUV', NULL, NULL),
(102, 51, '5Sl54VLxPHLY2qE8jm65QLTIkLTncJlsKYSdM3bK.png', 'KIA K5 2023', 170, 1225, 3800, 'kia-k5-2023', '<p>Introducing the KIA K5 2023, available for rent at Falcon Drive Rent a Car. This midsize sedan combines sleek design, advanced features, and competitive rental prices, making it an excellent choice for those seeking a stylish and comfortable driving experience in Dubai.<br><br>The K5 2023 boasts a modern and eye-catching exterior design that exudes elegance and sophistication. Its streamlined profile and striking front grille give it a distinctive presence on the road. The spacious interior of the K5 offers a comfortable and luxurious environment for both the driver and passengers, making it ideal for long journeys or business trips.<br><br>Under the hood, the KIA K5 2023 offers a range of engine options to suit different preferences. From a fuel-efficient 1.6-liter turbocharged engine to a more powerful 2.5-liter turbocharged engine, the K5 delivers impressive performance and responsive handling. Whether you are cruising on highways or navigating through city streets, the K5 offers a smooth and enjoyable driving experience.<br><br>Inside the cabin, the KIA K5 2023 showcases a well-designed and feature-rich interior. The seats are plush and supportive, ensuring optimal comfort for all occupants.<br><br>Renting the KIA K5 2023 from Falcon Drive Rent a Car comes with competitive rental prices. With rates starting at just 170 AED per day, 1225 AED per week, and 3800 AED per month, it provides great value for money. These affordable prices make the K5 an attractive option for individuals or families looking for a stylish and reliable rental car in Dubai.<br><br>Additionally, the KIA K5 2023 offers advanced safety features, including lane-keeping assist, forward collision avoidance, and blind-spot collision avoidance. These features enhance the safety of your journey, providing peace of mind during your time on the road.<br><br>In conclusion, the KIA K5 2023, available at Falcon Drive Rent a Car, is a stylish and comfortable midsize sedan that combines advanced features and affordability. With its striking design, powerful engine options, and competitive rental prices. it presents an excellent choice for individuals or families seeking a premium rental car experience in Dubai. Whether it\'s a leisurely drive or a business trip, the KIA K5 2023 will elevate your journey with its performance, comfort, and style.!<br></p>', 1, 1, '2023-06-19 06:38:24', '2023-06-23 02:08:32', '2023', 'UAE', NULL, NULL, 'Hatchback', NULL),
(103, 51, 'nhlsJUwAShWGqU2BcchJe9mKQANiamcXtwCASQ9B.png', 'KIA Picanto 2023', 100, 660, 2400, 'kia-picanto-2023', '<p>Introducing the KIA Picanto 2023, this compact and agile car offers a perfect combination of style, efficiency, and affordability, making it an ideal choice for individuals or small groups looking for a reliable and budget-friendly rental car in Dubai.<br><br>The KIA Picanto 2023 boasts a sleek and modern exterior design, featuring dynamic lines and a bold front grille that gives it a distinctive presence on the road. Its compact size makes it easy to maneuver through congested city streets and find parking spaces with ease, while still providing a surprisingly spacious interior for both passengers and cargo.<br><br>Under the hood, the KIA Picanto 2023 is equipped with an efficient and responsive engine, ensuring a balance between performance and fuel economy. The engine delivers smooth acceleration and nimble handling, making it well-suited for urban driving and short trips. The Picanto\'s suspension system provides a comfortable ride, absorbing bumps and road imperfections to enhance overall driving comfort.<br><br>Inside the cabin, the KIA Picanto 2023 offers a comfortable and well-designed interior. Despite its compact size, the Picanto maximizes space with clever storage solutions and comfortable seating for both the driver and passengers.<br><br>Renting the KIA Picanto 2023 from Falcon Drive Rent a Car comes with competitive rental prices. With rates starting at just 100 AED per day, 660 AED per week, and 2400 AED per month, it provides exceptional value for money. These affordable prices make the Picanto an attractive option for individuals or small groups who want a reliable and cost-effective rental car in Dubai.<br><br>Furthermore, the KIA Picanto 2023 is known for its fuel efficiency, helping you save on fuel costs during your rental period. Its efficient engine ensures that you can explore Dubai and its surroundings without worrying about excessive fuel consumption.<br><br>The KIA Picanto available at Falcon Drive Rent a Car, is a stylish, efficient, and budget-friendly choice for individuals or small groups in need of a compact rental car. Whether you are exploring Dubai\'s attractions or running daily errands, the KIA Picanto 2023 is a reliable and economical choice that will enhance your travel experience.!<br></p>', 1, 1, '2023-06-19 06:42:42', '2023-06-23 02:08:31', '2023', 'UAE', NULL, NULL, 'Hatchback', NULL),
(104, 51, '1yvTglXKGKQBQJ1L3YwLE55u70UhXFOsxVLvuvtM.png', 'KIA RIO 2023', 185, 1225, 4000, 'kia-rio-2023', '<p>Introducing the KIA Rio 2023, available for rent at Falcon Drive Rent a Car. This compact car combines style, efficiency, and affordability, making it an excellent choice for individuals or small families seeking a reliable and budget-friendly rental vehicle for their Dubai trips.<br><br>The KIA Rio 2023 features a sleek and modern exterior design that captures attention with its clean lines and bold front grille. Despite its compact size, the Rio offers a surprising amount of interior space, providing ample room for both passengers and cargo. Its versatile design makes it easy to maneuver through city streets and find parking spaces with ease.<br><br>Under the hood, the KIA Rio 2023 is equipped with an efficient 1.6-liter engine, delivering a balance of power and fuel economy. The engine provides smooth acceleration and responsive handling, making it well-suited for urban driving and longer journeys alike. The Rio\'s suspension system ensures a comfortable ride, absorbing road imperfections to provide a smooth and enjoyable driving experience.<br><br>Inside the cabin, the KIA Rio 2023 offers a comfortable and well-designed interior. The seats are supportive and offer ample legroom for both the driver and passengers, ensuring a pleasant journey. The dashboard features a user-friendly layout with modern infotainment technology, including a touchscreen display, Bluetooth connectivity, and smartphone integration for entertainment and navigation needs.<br><br>Renting the KIA Rio 2023 from Falcon Drive Rent a Car comes with competitive rental prices. With rates starting at just 185 AED per day, 1225 AED per week, and 4000 AED per month, it provides excellent value for money. These affordable prices make the Rio an attractive option for budget-conscious travelers looking for a reliable and fuel-efficient rental car in Dubai.<br><br>Furthermore, the KIA Rio 2023 is known for its fuel efficiency, contributing to cost savings during your rental period. Its efficient engine ensures that you can explore Dubai and its surroundings without worrying about excessive fuel consumption.<br><br>In conclusion, the KIA Rio 2023, available at Falcon Drive Rent a Car, is a stylish, efficient, and budget-friendly choice for individuals or small families in need of a compact car rental. With its modern design, comfortable interior, competitive rental prices starting at 185 AED per day, it provides an excellent option for both city trips and longer journeys. Whether you\'re exploring Dubai\'s attractions or running errands around town, the KIA Rio 2023 is a reliable and economical choice that will enhance your travel experience.!<br></p>', 1, 1, '2023-06-19 06:46:58', '2023-06-23 02:08:31', '2023', 'UAE', 'Economy', NULL, NULL, NULL),
(105, 51, 'v7iTkn4u4QVcMdUwWZA8m6twEhKSgUQB6GzlBWy1.png', 'KIA Sportage 2023', 185, 1225, 3900, 'kia-sportage-2023', '<p>Introducing the KIA Sportage 2023, available for rent at Falcon Drive Rent a Car. This compact SUV combines bold design, versatility, and competitive rental prices, making it an excellent choice for those seeking a spacious and capable vehicle for their Dubai adventures.<br><br>The KIA Sportage 2023 features a striking and contemporary exterior design that stands out on the road. Its athletic stance, sculpted lines, and signature tiger-nose grille give it a dynamic and confident presence. The Sportage offers ample space inside, making it perfect for families, groups, or individuals with a need for extra cargo capacity.<br><br>The KIA Sportage 2023 offers a range of engine options to suit different driving preferences under the hood. From efficient yet powerful turbocharged engines to hybrid variants, the Sportage delivers a blend of performance and fuel efficiency. Whether you\'re cruising on highways or venturing off the beaten path, the Sportage provides a smooth and responsive driving experience.<br><br>Inside the cabin, the KIA Sportage 2023 offers a spacious and comfortable environment. The seats are supportive and offer plenty of legroom, ensuring a relaxed journey for all occupants. The dashboard features a modern design with intuitive controls, including a touchscreen infotainment system with smartphone integration and advanced safety features for added convenience and peace of mind.<br><br>Renting the KIA Sportage 2023 from Falcon Drive Rent a Car comes with competitive rental prices. With rates starting at just 185 AED per day, 1225 AED per week, and 3900 AED per month, it provides great value for money. These affordable prices make the Sportage an attractive option for individuals or families looking for a capable and spacious rental SUV in Dubai.<br><br>Additionally, the KIA Sportage 2023 offers advanced safety features such as forward collision warning, lane departure warning, and blind-spot monitoring. These features enhance the safety of your journey, providing reassurance and confidence while on the road.<br><br>In conclusion, the KIA Sportage 2023, available at Falcon Drive Rent a Car, is a stylish and versatile compact SUV that combines design, capability, and affordability. With its bold exterior, spacious interior, and competitive rental prices starting at 185 AED per day, it presents an excellent choice for those seeking a reliable and comfortable rental vehicle for their Dubai adventures. Whether it is exploring the city or embarking on outdoor excursions, the KIA Sportage 2023 will elevate your travel experience with its versatility, performance, and modern features.!<br></p>', 1, 1, '2023-06-19 06:50:20', '2023-06-23 02:08:30', '2023', 'UAE', NULL, 'SUV', NULL, NULL),
(106, 52, 'qJcF3RdibQOeRZKISf5tEIVOamaKdriJ7iDyIy5m.png', 'Mercedes AMG G63 2020', 2000, 11900, 45000, 'mercedes-amg-g63-2020', '<p>This luxury SUV combines power, prestige, and exceptional performance, making it a top choice for those seeking a high-end and exhilarating driving experience in Dubai.<br><br>The Mercedes AMG G63 2020 is an iconic vehicle known for its robust and distinctive design. Its muscular body, bold lines, and iconic front grille make it instantly recognizable on the road. The G63 offers a spacious and luxurious interior, combining premium materials and state-of-the-art technology to create a truly lavish driving environment.<br><br>Under the hood, the Mercedes AMG G63 2020 is powered by a handcrafted 4.0-liter V8 biturbo engine, delivering jaw-dropping performance. With its impressive horsepower and torque, the G63 can accelerate from 0 to 60 mph in just a few seconds, providing an exhilarating driving experience. Its advanced suspension system ensures precise handling and a smooth ride, whether you\'re cruising on the highway or venturing off-road.<br><br>Inside the cabin, the Mercedes AMG G63 2020 offers a wealth of luxury and comfort. The seats are plush and supportive, providing ultimate comfort for both the driver and passengers. The dashboard features a widescreen infotainment system with navigation, smartphone integration, and advanced safety features for a seamless and secure driving experience.<br><br>Renting the Mercedes AMG G63 2020 from Falcon Drive Rent a Car comes with competitive rental prices. With rates starting at AED 2,000 per day, AED 11,900 per week, and AED 45,000 per month, it offers an opportunity to experience the pinnacle of luxury and performance at a premium level.<br><br>The Mercedes AMG G63 2020 is a vehicle that exudes opulence and power, making it an ideal choice for special occasions, business trips, or those who simply desire the best in automotive luxury. Its commanding presence and exceptional performance make it a statement on the roads of Dubai.<br><br>In conclusion, the Mercedes AMG G63 2020, available at Falcon Drive Rent a Car, is a luxury SUV that combines power, prestige, and unmatched performance. With its iconic design, luxurious interior, and competitive rental prices starting at AED 2,000 per day, it provides an extraordinary driving experience for those seeking the epitome of automotive excellence. Whether you\'re exploring the city or embarking on a memorable journey, the Mercedes AMG G63 2020 will elevate your Dubai experience with its unrivaled luxury and exhilarating performance.!<br></p>', 1, 1, '2023-06-19 06:55:41', '2023-06-23 02:04:59', '2020', 'UAE', NULL, 'SUV', NULL, 'Luxury'),
(107, 53, 'NmQ3LgrOoUOSVbA9vBE3Plm5ehc45AEdm54PWN20.png', 'Nissan Kicks 2022', 130, 790, 2520, 'nissan-kicks-2022', '<p>This compact crossover combines style, versatility, and affordability, making it an excellent choice for those seeking a reliable and practical rental car in Dubai. The Nissan Kicks 2022 features a sleek and modern design that stands out on the road. Its bold lines, distinctive V-motion grille, and floating roof give it a sporty and contemporary appearance. The Kicks offers a spacious interior, providing ample room for both passengers and cargo. Its compact size makes it easy to maneuver through city streets and find parking spaces with ease.<br><br>Under the hood, the Nissan Kicks 2022 is equipped with an efficient engine that delivers a good balance of performance and fuel economy. The engine provides smooth acceleration and responsive handling, making it suitable for both urban driving and longer journeys. The Kicks\' suspension system offers a comfortable ride, absorbing bumps and road imperfections to ensure a pleasant driving experience.<br><br>Inside the cabin, the Nissan Kicks 2022 offers a comfortable and well-designed interior. The seats are supportive and offer plenty of legroom, ensuring a comfortable journey for all occupants.<br><br>Renting the Nissan Kicks 2022 from Falcon Drive Rent a Car comes with competitive rental prices. With rates starting at AED 130 per day, AED 790 per week, and AED 2520 per month. It provides great value for money. These affordable prices make the Kicks an attractive option for individuals or small groups in need of a reliable and versatile rental car in Dubai.<br><br>Additionally, the Nissan Kicks 2022 offers a range of safety features, including advanced driver assistance systems such as forward collision warning, blind-spot monitoring, and rearview cameras. These features enhance the safety of your journey, providing peace of mind while on the road.<br><br>In conclusion, the Nissan Kicks 2022, available at Falcon Drive Rent a Car, is a stylish, versatile, and affordable choice for individuals or small groups in need of a compact crossover rental. Whether you are traveling with family or friends, the Nissan Kicks 2022 offers a reliable and comfortable driving experience that will enhance your Dubai adventure.!<br></p>', 1, 1, '2023-06-19 07:00:55', '2023-06-23 02:05:45', '2022', 'UAE', NULL, 'SUV', NULL, NULL),
(108, 53, 'oiz168AA0z99SSVHdkAZ7DDabZP4xy7Deol1l34s.png', 'Nissan Maxima 2020', 155, 1030, 3500, 'nissan-maxima-2020', '<p>Introducing the Nissan Maxima 2020. This exceptional sedan offers a unique combination of style, performance, and luxury, making it a standout choice for those seeking a sophisticated and exhilarating driving experience in Dubai.<br><br>What sets this car apart is its captivating design. With its bold lines, aggressive stance, and striking V-motion grille, the Maxima exudes confidence and elegance on the road. Its sleek profile and aerodynamic shape not only enhance its visual appeal but also contribute to improved fuel efficiency and handling.<br><br>Under the hood, the Nissan Maxima 2020 is powered by a potent V6 engine, delivering exhilarating performance and responsive acceleration. The engine provides ample power for both city driving and highway cruising, ensuring an engaging and spirited driving experience. The Maxima’s advanced suspension system and precise steering offer excellent handling and control, making every twist and turn on the road a pleasure.<br><br>Inside the cabin, offers a luxurious and refined interior. The attention to detail is evident in the high-quality materials, exquisite craftsmanship, and comfortable seating. The driver-oriented cockpit provides easy access to controls and features, while the spacious cabin accommodates both driver and passengers with ease. Advance technology, including a premium audio system and advanced driver-assistance systems, further enhance the driving experience.<br><br>Renting the Nissan Maxima 2020 from Falcon Drive Rent a Car offers an opportunity to experience luxury and performance at competitive rental prices. With rates starting at AED 155 per day, AED 1030 per week, and AED 3500 per month, it provides an exceptional value for a premium sedan.<br><br>Furthermore, the Nissan Maxima 2020 boasts advanced safety features, including multiple airbags, stability control, and intelligent safety systems, ensuring peace of mind and the highest level of protection for you and your passengers.<br><br>In conclusion, the Nissan Maxima 2020, available at Falcon Drive Rent a Car, offers a unique blend of style, performance, and luxury. With its captivating design, exhilarating performance, and competitive rental prices starting at AED 155 per day, it provides an exceptional driving experience for those seeking sophistication and excitement in Dubai. Whether you are attending a business meeting or embarking on a scenic drive, the Nissan Maxima 2020 is sure to impress with its distinctive character and refined features.!<br></p>', 1, 1, '2023-06-19 07:04:17', '2023-06-23 02:05:55', '2020', 'UAE', 'Economy', NULL, NULL, NULL);
INSERT INTO `vehicles` (`id`, `brand_id`, `featured_image`, `name`, `price`, `w_price`, `m_price`, `slug`, `description`, `is_featured`, `status`, `created_at`, `updated_at`, `model_year`, `location`, `car_type_Economy`, `car_type_SUV`, `car_type_Hatchback`, `car_type_Luxury`) VALUES
(109, 51, 'RJatme4wILlNXAplV3DXMgcUN6SAM9UUprQsvyS0.png', 'Kia Pegas 2023', 100, 690, 2000, 'kia-pegas-2023', '<p>Falcon Drive Rent a Car proudly presents the KIA PEGAS 2023, a compact car that combines style, comfort, and affordability. With its modern design, spacious interior, and competitive rental prices, the PEGAS is an excellent choice for individuals or families looking for a reliable and budget-friendly car rental option.\\</p><p><br>The KIA PEGAS 2023 boasts a sleek and aerodynamic exterior design that catches the eye with its bold lines and dynamic curves. Its compact size makes it ideal for navigating through city streets and maneuvering in tight parking spaces. Despite its small footprint, the PEGAS surprises with its spacious and comfortable interior, providing ample legroom and headroom for both the driver and passengers.</p><p><br>The KIA PEGAS 2023 is equipped with a fuel-efficient 1.4-liter engine, delivering a balance of power and efficiency. Suspension system ensures a comfortable ride, absorbing road imperfections to provide a smooth and enjoyable driving experience.</p><p><br>Inside the cabin, the KIA PEGAS 2023 offers a well-designed and comfortable environment. The seats are supportive and provide excellent comfort for extended trips. The dashboard features a user-friendly layout with a touchscreen infotainment system, offering Bluetooth connectivity and smartphone integration for seamless entertainment and navigation.</p><p><br>One of the standout features of the KIA PEGAS 2023 at Falcon Drive Rent a Car is its competitive rental pricing. With rates starting at just 100 AED per day, 690 AED per week, and 2000 AED per month, it provides exceptional value for money. These affordable rental prices make the PEGAS an attractive option for individuals or families on a budget, allowing them to enjoy their Dubai experience without breaking the bank.</p><p><br>Furthermore, the KIA PEGAS 2023 is known for its fuel efficiency. helping renters save on fuel costs during their rental period. With its efficient engine, you can explore Dubai and its surroundings with confidence, knowing that you are maximizing your fuel economy.</p><p><br>In conclusion, the KIA PEGAS 2023, available at Falcon Drive Rent a Car, is a stylish, comfortable, and affordable choice for individuals or families seeking a compact car rental. With its modern design, spacious interior, competitive rental prices. This is an excellent option for both city adventures and longer trips.<br></p>', 1, 1, '2023-06-19 07:10:00', '2023-06-23 02:06:06', '2023', 'UAE', NULL, NULL, 'Hatchback', NULL),
(110, 53, 'mVZO84bfxQ8lFpj67zx1Kv4v47DAIt6PoEuZIQjW.png', 'Nissan Sunny 2023', 90, 550, 1750, 'nissan-sunny-2023', '<p>Introducing the Nissan Sunny 2023, available for rent at Falcon Drive Rent a Car. This compact sedan offers practicality, fuel efficiency, and affordability, making it an excellent choice for those seeking a reliable and budget-friendly rental car in Dubai.<br><br>The Nissan Sunny 2023 features a clean and streamlined exterior design that is both modern and timeless. Its compact size makes it easy to navigate through city streets and find parking spaces, while still providing ample space inside for both passengers and luggage. The Sunny offers a comfortable and functional interior, making it suitable for both daily commuting and longer trips.<br><br>Under the hood, the Nissan Sunny 2023 is equipped with an efficient engine, delivering a balance of performance and fuel economy. The engine provides smooth acceleration and responsive handling, ensuring a comfortable and enjoyable driving experience. The Sunny\'s suspension system absorbs road imperfections, offering a smooth and stable ride for all occupants.<br><br>Inside the cabin, the Nissan Sunny 2023 offers a practical and well-designed interior. The seats are comfortable and provide adequate support, allowing for a pleasant journey.<br><br>Renting the Nissan Sunny 2023 from Falcon Drive Rent a Car comes with competitive rental prices. With rates starting at just AED 90 per day, AED 550 per week, and AED 1750 per month, it provides excellent value for money. These affordable prices make the Sunny an attractive option for budget-conscious travelers or individuals in need of a reliable and economical rental car in Dubai.<br><br>Additionally, the Nissan Sunny 2023 is known for its fuel efficiency, allowing you to save on fuel costs during your rental period. Its efficient engine ensures that you can explore Dubai and its surroundings without worrying about excessive fuel consumption.<br><br>It provides an excellent option for daily commuting or short trips. Whether you are exploring Dubai\'s attractions or running errands around town. The Nissan Sunny 2023 is a reliable and economical choice that will enhance your travel experience.!<br></p>', 1, 1, '2023-06-19 07:17:00', '2023-06-23 02:08:34', '2023', 'UAE', 'Economy', NULL, NULL, NULL),
(111, 54, 'oCgGpfphhX7u3Ex6fvC0hXPxDcobWKB7NTOwije7.png', 'Peugeot 3008 Active Turbo 2023', 180, 1150, 3900, 'peugeot-3008-active-turbo-2023', '<p>Peugeot 3008 Active Turbo 2023 is a remarkable crossover SUV offers a unique combination of style, versatility, and advanced technology, making it a standout choice for those seeking a dynamic and enjoyable driving experience in Dubai.<br><br>What sets the Peugeot 3008 Active Turbo 2023 apart is its distinctive and modern design. With its sleek lines, bold grille, and LED lighting signature, the 3008 exudes a sense of sophistication and elegance. Its expressive and dynamic profile not only turns heads on the road but also contributes to improved aerodynamics and fuel efficiency.<br><br>The Peugeot 3008 Active Turbo 2023 boasts a turbocharged engine, delivering impressive power and responsiveness Under the hood. The engine provides a balance of performance and fuel efficiency, ensuring an enjoyable driving experience with excellent acceleration and smooth power delivery. The 3008\'s advanced suspension system and precise steering offer a comfortable and engaging ride, whether you\'re navigating city streets or exploring open highways.<br><br>Inside the cabin, the Peugeot 3008 Active Turbo 2023 offers a luxurious and high-tech environment. The spacious interior is crafted with premium materials and attention to detail, providing a refined and comfortable space for both driver and passengers. The driver-centric cockpit features a digital instrument cluster and a central touchscreen infotainment system, offering intuitive controls and seamless connectivity options.<br><br>To experience the innovative features and performance at competitive rental prices reach out to us. With rates starting at AED 180 per day, AED 1150 per week, and AED 3900 per month, it provides excellent value for a crossover SUV of this caliber.<br><br>Furthermore, the Peugeot 3008 Active Turbo 2023 is equipped with advanced safety features, including multiple airbags, stability control, and driver-assistance systems, ensuring the highest level of safety for you and your passengers.<br><br>The Peugeot 3008 Active Turbo 2023, available at Falcon Drive Rent a Car, offers a unique combination of style, versatility, and advanced technology. With its distinctive design, turbocharged performance, and competitive rental prices starting at AED 180 per day. it provides an exceptional driving experience for those seeking a crossover SUV that stands out from the crowd.!<br></p>', 1, 1, '2023-06-19 07:19:52', '2023-06-23 02:08:26', '2023', 'UAE', NULL, 'SUV', NULL, NULL),
(112, 55, 'uLrV61BLL491iVshGQRw8PjlkNuq5u6VJKN0G143.png', 'Rolls Royce Cullinan 2022', 4000, 26600, 115000, 'rolls-royce-cullinan-2022', '<p>Rolls Royce is a name of class and elegance. This exceptional luxury SUV offers unparalleled comfort, opulence, and prestige. making it a standout choice for those seeking the epitome of luxury and grandeur in Dubai.<br><br>The Rolls-Royce Cullinan 2022 is the premium brand of automotive craftsmanship. Its iconic design, characterized by the prominent Spirit of Ecstasy hood ornament and elegant lines, commands attention, and exudes timeless beauty. The handcrafted details, luxurious finishes, and attention to detail showcase the unrivaled quality and artistry that Rolls-Royce is renowned for.<br><br>Rolls-Royce Cullinan 2022 is powered by a potent V12 engine, delivering immense power and a smooth, refined driving experience. The engine effortlessly propels this luxury SUV, ensuring effortless acceleration and a serene ride. The advanced suspension system and adaptive air dampers provide a cloud-like ride. cocooning passengers in ultimate comfort and isolating them from any road imperfections.<br><br>Step inside the cabin, and you will be greeted by an oasis of luxury. The opulent interior of the Cullinan is a testament to craftsmanship and attention to detail. The hand-stitched leather, exquisite wood veneers, and meticulously crafted metal accents create an ambiance of indulgence and exclusivity. The rear passenger compartment, known as the \"Serenity Seat,\" offers the ultimate level of comfort, ensuring a first-class experience for all occupants.<br><br>Renting the Rolls-Royce Cullinan 2022 from Falcon Drive Rent a Car allows you to experience the epitome of luxury and prestige at competitive rental prices. With rates starting at AED 4000 per day, AED 26,600 per week, and AED 115,000 per month, it provides an exceptional opportunity to indulge in the world of Rolls-Royce and experience unparalleled luxury.<br><br>Furthermore, the Rolls-Royce Cullinan 2022 is equipped with advanced safety features, ensuring the utmost protection for you and your passengers. From cutting-edge driver-assistance systems to multiple airbags and advanced braking technologies, Rolls-Royce prioritizes safety without compromising on luxury and performance.<br><br>The Rolls-Royce Cullinan 2022, available at Falcon Drive Rent a Car, represents the art of luxury, opulence, and prestige. If you are attending a special event, making a grand entrance, or simply indulging in the finest automotive craftsmanship. the Rolls-Royce Cullinan 2022 is the epitome of automotive excellence.!<br></p>', 1, 1, '2023-06-19 07:22:54', '2023-06-23 02:08:27', '2022', 'UAE', NULL, 'SUV', NULL, 'Luxury'),
(113, 53, 'ybzIRxerJEMI2oGKDRj9TpN0D0l8cqeNwOBuAct2.png', 'Nissan Micra 2020', 75, 500, 1500, 'nissan-micra-2020', '<p>Introducing Falcon Drive Rent a Car\'s Nissan Micra 2020, a compact and reliable rental car that offers a convenient and budget-friendly transportation solution in Dubai.</p><p><br>The Nissan Micra 2020 is designed with practicality and efficiency in mind. Its compact size makes it easy to navigate through city streets, maneuver tight parking spaces, and navigate busy traffic with ease. Despite its small exterior dimensions, the Micra offers a surprisingly spacious interior, providing ample room for both passengers and luggage.</p><p><br>Under the hood, the Nissan Micra 2020 is powered by an efficient and responsive engine, delivering a balance of performance and fuel economy. The engine ensures smooth acceleration and nimble handling, making it ideal for urban driving and short trips around Dubai. The Micra\'s suspension system provides a comfortable ride, absorbing bumps and road imperfections to enhance overall driving comfort.</p><p><br>Inside the cabin, the Nissan Micra 2020 offers a well-designed and practical interior. The seats are comfortable and supportive, ensuring a pleasant journey for both the driver and passengers. The dashboard features user-friendly controls and a modern infotainment system, including Bluetooth connectivity for hands-free calling and audio streaming.</p><p><br>Renting the Nissan Micra 2020 from Falcon Drive Rent a Car comes with competitive rental prices. With rates starting at just AED 75 per day, AED 500 per week, and AED 1500 per month, it provides excellent value for money. These affordable prices make the Micra an attractive option for budget-conscious individuals or small groups in need of a reliable and cost-effective rental car in Dubai.</p><p><br>Additionally, the Nissan Micra 2020 is known for its fuel efficiency, helping you save on fuel costs during your rental period. Its efficient engine ensures that you can explore Dubai and its surroundings without worrying about excessive fuel consumption.</p><p><br>In conclusion, the Nissan Micra 2020, available at Falcon Drive Rent a Car, is a compact and practical rental car that offers a convenient and affordable transportation solution in Dubai. Whether you\'re a solo traveler or a small group, the Nissan Micra 2020 will meet your transportation needs with its reliability, fuel efficiency, and affordability.<br></p>', 1, 1, '2023-06-19 07:27:02', '2023-06-23 02:08:27', '2020', 'UAE', NULL, NULL, 'Hatchback', NULL),
(114, 53, 'SOxeJFDAPQD2IrzOXNqW6434ndDuFlsI4nKb5WJh.png', 'Nissan Petrol Platinum 2021', 470, 3100, 10000, 'nissan-petrol-platinum-2021', '<p>Introducing the Nissan Patrol Platinum 2021 Basic Option, available for rent at Falcon Drive Rent a Car. This powerful and luxurious SUV offers a unique blend of comfort, capability, and sophistication, making it a standout choice for those seeking an extraordinary driving experience in Dubai.</p><p><br>What sets the Nissan Patrol Platinum 2021 Basic Option apart is its exceptional off-road capabilities. This SUV is built to conquer challenging terrains, thanks to its robust construction, advanced 4x4 system, and high ground clearance. Whether you\'re exploring Dubai\'s desert dunes or embarking on an adventurous off-road journey, the Patrol Platinum is ready to tackle any obstacle with confidence.</p><p><br>In addition to its off-road prowess, the Nissan Patrol Platinum 2021 Basic Option offers a lavish and refined interior. The spacious cabin is adorned with premium materials and luxurious finishes, creating a sophisticated and comfortable ambiance. The seats are plush and supportive, ensuring a pleasant ride for all occupants. Advanced technology features, including a premium sound system and a comprehensive infotainment system, enhance the driving experience with entertainment and connectivity options.</p><p><br>Under the hood, the Nissan Patrol Platinum 2021 Basic Option is equipped with a powerful V8 engine, delivering impressive performance and towing capability. The engine generates ample horsepower and torque, providing smooth acceleration and confident overtaking on highways. With its robust powertrain, the Patrol Platinum is a reliable companion for both city driving and long-distance road trips.</p><p><br>Renting the Nissan Patrol Platinum 2021 Basic Option from Falcon Drive Rent a Car offers an extraordinary experience at competitive rental prices. With rates starting at AED 470 per day, AED 3100 per week, and AED 10,000 per month, it provides an opportunity to indulge in the luxury and capabilities of this exceptional SUV. The Nissan Patrol Platinum 2021 Basic Option, available at Falcon Drive Rent a Car, stands out with its remarkable off-road capabilities and luxurious features. With its powerful performance, refined interior, and competitive rental prices starting at AED 470 per day, it offers a truly unique driving experience for those seeking adventure and luxury in Dubai. Either you are conquering off-road trails or cruising through the city, the Nissan Patrol Platinum 2021 Basic Option is a standout choice that combines capability and comfort in one remarkable package.<br></p>', 1, 1, '2023-06-19 07:31:10', '2023-06-23 02:08:28', '2021', 'UAE', NULL, 'SUV', NULL, 'Luxury'),
(115, 53, 'mFfeAArkSjsAssmYlAG696GgBarJjiPiDCdiKC6l.png', 'Nissan patrol V8 LE Platinum 2022', 550, 3500, 12000, 'nissan-patrol-v8-le-platinum-2022', '<p>Introducing the Nissan Patrol V8 LE Platinum 2022 Full Option, available for rent at Falcon Drive Rent a Car. This luxury SUV embodies power, sophistication, and cutting-edge technology, making it an exceptional choice for those seeking a premium and commanding driving experience in Dubai.</p><p><br>The Nissan Patrol V8 LE Platinum 2022 Full Option showcases a bold and muscular exterior design that exudes strength and presence on the road. Its commanding stance, signature grille, and sleek LED headlights make a striking impression. The Patrol offers a spacious and opulent interior, combining premium materials and advanced features for ultimate comfort and luxury.</p><p><br>Under the hood, the Nissan Patrol V8 LE Platinum 2022 Full Option is powered by a robust 5.6-liter V8 engine, delivering formidable performance. With its impressive horsepower and torque, the Patrol effortlessly tackles both city roads and off-road terrain. Its advanced suspension system ensures a smooth and comfortable ride, regardless of the driving conditions.</p><p><br>Inside the cabin, the Nissan Patrol V8 LE Platinum 2022 Full Option offers a lavish and technologically advanced environment. The seats are upholstered in luxurious leather, providing ultimate comfort and support. The dashboard features a comprehensive infotainment system with a touchscreen display, navigation, Bluetooth connectivity, and advanced safety features for a secure and connected driving experience.</p><p><br>Renting the Nissan Patrol V8 LE Platinum 2022 Full Option from Falcon Drive Rent a Car comes with competitive rental prices. With rates starting at AED 550 per day, AED 3500 per week, and AED 12,000 per month, it offers an opportunity to experience the pinnacle of luxury and performance in Dubai.</p><p><br>The Nissan Patrol V8 LE Platinum 2022 Full Option, available at Falcon Drive Rent a Car, is a luxurious and powerful SUV that combines opulence, advanced technology, and exceptional performance. With its commanding presence, sumptuous interior, and competitive rental prices starting at AED 550 per day, it provides an extraordinary driving experience for those seeking the utmost in luxury and prestige. If you are embarking on a grand adventure or attending a special event, the Nissan Patrol V8 LE Platinum 2022 Full Option will elevate your Dubai experience with its unparalleled comfort, style, and performance.<br></p>', 1, 1, '2023-06-19 07:34:33', '2023-06-23 02:08:28', '2022', 'UAE', NULL, 'SUV', NULL, 'Luxury');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_features`
--

CREATE TABLE `vehicle_features` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle_features`
--

INSERT INTO `vehicle_features` (`id`, `vehicle_id`, `name`, `value`, `is_featured`, `created_at`, `updated_at`) VALUES
(1754, 91, 'Engine', '2.0L 4', 1, '2023-06-19 02:16:35', '2023-06-19 07:34:36'),
(1755, 91, 'Seats', '5', 1, '2023-06-19 02:16:35', '2023-06-19 07:34:36'),
(1756, 91, 'Doors', '4', 1, '2023-06-19 02:16:35', '2023-06-19 07:34:36'),
(1757, 91, 'Luggage', '3', 0, '2023-06-19 02:16:35', '2023-06-19 02:16:35'),
(1758, 91, 'Pickup-Drop Off', 'Yes', 0, '2023-06-19 02:16:35', '2023-06-19 02:16:35'),
(1759, 91, 'Cruise Control', 'Yes', 0, '2023-06-19 02:16:36', '2023-06-19 02:16:36'),
(1760, 91, 'Bluetooth', 'Yes', 0, '2023-06-19 02:16:36', '2023-06-19 02:16:36'),
(1761, 91, 'Automatic', 'Yes', 0, '2023-06-19 02:16:36', '2023-06-19 02:16:36'),
(1762, 91, 'Parking Sensor', 'Yes', 0, '2023-06-19 02:16:36', '2023-06-19 02:16:36'),
(1763, 91, 'Navigation', 'Yes', 0, '2023-06-19 02:16:36', '2023-06-19 02:16:36'),
(1764, 91, 'Full Insurance', 'Yes', 0, '2023-06-19 02:16:36', '2023-06-19 02:16:36'),
(1765, 91, 'Security Type', 'Card Only', 0, '2023-06-19 02:16:36', '2023-06-19 02:16:36'),
(1766, 91, 'Payment Type', 'Credit Card & Cash', 0, '2023-06-19 02:16:36', '2023-06-19 02:16:36'),
(1767, 91, 'Free Cancellation', 'Yes', 0, '2023-06-19 02:16:36', '2023-06-19 02:16:36'),
(1768, 91, '24/7 Customer Service', 'Yes', 0, '2023-06-19 02:16:36', '2023-06-19 02:16:36'),
(1769, 91, 'Mileage Daily', 'KM 250', 0, '2023-06-19 02:16:36', '2023-06-19 02:16:36'),
(1770, 91, 'Price', '130', 0, '2023-06-19 02:16:36', '2023-06-19 02:16:36'),
(1771, 91, 'Deposit', '1000', 1, '2023-06-19 02:16:37', '2023-06-19 07:34:36'),
(1772, 92, 'Engine', '2.5L 4', 1, '2023-06-19 05:50:56', '2023-06-19 07:34:36'),
(1773, 92, 'Seats', '5', 1, '2023-06-19 05:50:56', '2023-06-19 07:34:36'),
(1774, 92, 'Doors', '4', 1, '2023-06-19 05:50:56', '2023-06-19 07:34:36'),
(1775, 92, 'Luggage', '3', 0, '2023-06-19 05:50:56', '2023-06-19 05:50:56'),
(1776, 92, 'Pickup-Drop Off', 'Yes', 0, '2023-06-19 05:50:56', '2023-06-19 05:50:56'),
(1777, 92, 'Cruise Control', 'Yes', 0, '2023-06-19 05:50:56', '2023-06-19 05:50:56'),
(1778, 92, 'Bluetooth', 'Yes', 0, '2023-06-19 05:50:57', '2023-06-19 05:50:57'),
(1779, 92, 'Automatic', 'Yes', 0, '2023-06-19 05:50:57', '2023-06-19 05:50:57'),
(1780, 92, 'Parking Sensor', 'Yes', 0, '2023-06-19 05:50:57', '2023-06-19 05:50:57'),
(1781, 92, 'Navigation', 'Yes', 0, '2023-06-19 05:50:57', '2023-06-19 05:50:57'),
(1782, 92, 'Full Insurance', 'Yes', 0, '2023-06-19 05:50:57', '2023-06-19 05:50:57'),
(1783, 92, 'Security Type', 'Card Only', 0, '2023-06-19 05:50:57', '2023-06-19 05:50:57'),
(1784, 92, 'Payment Type', 'Credit Card & Cash', 0, '2023-06-19 05:50:57', '2023-06-19 05:50:57'),
(1785, 92, 'Free Cancellation', 'Yes', 0, '2023-06-19 05:50:57', '2023-06-19 05:50:57'),
(1786, 92, '24/7 Customer Service', 'Yes', 0, '2023-06-19 05:50:57', '2023-06-19 05:50:57'),
(1787, 92, 'Mileage Daily', 'KM 250', 0, '2023-06-19 05:50:57', '2023-06-19 05:50:57'),
(1788, 92, 'Price', '170', 0, '2023-06-19 05:50:58', '2023-06-19 05:50:58'),
(1789, 92, 'Deposit', '1000', 1, '2023-06-19 05:50:58', '2023-06-19 07:34:36'),
(1790, 93, 'Engine', '2.0L 4', 1, '2023-06-19 05:54:22', '2023-06-19 07:34:36'),
(1791, 93, 'Seats', '5', 1, '2023-06-19 05:54:22', '2023-06-19 07:34:36'),
(1792, 93, 'Doors', '4', 1, '2023-06-19 05:54:22', '2023-06-19 07:34:36'),
(1793, 93, 'Luggage', '2', 0, '2023-06-19 05:54:23', '2023-06-19 05:54:23'),
(1794, 93, 'Pickup-Drop Off', 'Yes', 0, '2023-06-19 05:54:23', '2023-06-19 05:54:23'),
(1795, 93, 'Cruise Control', 'Yes', 0, '2023-06-19 05:54:23', '2023-06-19 05:54:23'),
(1796, 93, 'Bluetooth', 'Yes', 0, '2023-06-19 05:54:23', '2023-06-19 05:54:23'),
(1797, 93, 'Automatic', 'Yes', 0, '2023-06-19 05:54:23', '2023-06-19 05:54:23'),
(1798, 93, 'Parking Sensor', 'Yes', 0, '2023-06-19 05:54:23', '2023-06-19 05:54:23'),
(1799, 93, 'Navigation', 'Yes', 0, '2023-06-19 05:54:23', '2023-06-19 05:54:23'),
(1800, 93, 'Full Insurance', 'Yes', 0, '2023-06-19 05:54:23', '2023-06-19 05:54:23'),
(1801, 93, 'Security Type', 'Card Only', 0, '2023-06-19 05:54:23', '2023-06-19 05:54:23'),
(1802, 93, 'Payment Type', 'Credit Card & Cash', 0, '2023-06-19 05:54:24', '2023-06-19 05:54:24'),
(1803, 93, 'Free Cancellation', 'Yes', 0, '2023-06-19 05:54:24', '2023-06-19 05:54:24'),
(1804, 93, '24/7 Customer Service', 'Yes', 0, '2023-06-19 05:54:24', '2023-06-19 05:54:24'),
(1805, 93, 'Mileage Daily', 'KM 250', 0, '2023-06-19 05:54:24', '2023-06-19 05:54:24'),
(1806, 93, 'Price', '110', 0, '2023-06-19 05:54:24', '2023-06-19 05:54:24'),
(1807, 93, 'Deposit', '1000', 1, '2023-06-19 05:54:24', '2023-06-19 07:34:36'),
(1808, 94, 'Engine', '2.5L 4', 1, '2023-06-19 05:57:32', '2023-06-19 07:34:36'),
(1809, 94, 'Seats', '5', 1, '2023-06-19 05:57:33', '2023-06-19 07:34:36'),
(1810, 94, 'Doors', '4', 1, '2023-06-19 05:57:33', '2023-06-19 07:34:36'),
(1811, 94, 'Luggage', '3', 0, '2023-06-19 05:57:33', '2023-06-19 05:57:33'),
(1812, 94, 'Pickup-Drop Off', 'Yes', 0, '2023-06-19 05:57:33', '2023-06-19 05:57:33'),
(1813, 94, 'Cruise Control', 'Yes', 0, '2023-06-19 05:57:33', '2023-06-19 05:57:33'),
(1814, 94, 'Bluetooth', 'Yes', 0, '2023-06-19 05:57:33', '2023-06-19 05:57:33'),
(1815, 94, 'Automatic', 'Yes', 0, '2023-06-19 05:57:33', '2023-06-19 05:57:33'),
(1816, 94, 'Parking Sensor', 'Yes', 0, '2023-06-19 05:57:33', '2023-06-19 05:57:33'),
(1817, 94, 'Navigation', 'Yes', 0, '2023-06-19 05:57:33', '2023-06-19 05:57:33'),
(1818, 94, 'Full Insurance', 'Yes', 0, '2023-06-19 05:57:33', '2023-06-19 05:57:33'),
(1819, 94, 'Security Type', 'Card Only', 0, '2023-06-19 05:57:33', '2023-06-19 05:57:33'),
(1820, 94, 'Payment Type', 'Credit Card & Cash', 0, '2023-06-19 05:57:33', '2023-06-19 05:57:33'),
(1821, 94, 'Free Cancellation', 'Yes', 0, '2023-06-19 05:57:33', '2023-06-19 05:57:33'),
(1822, 94, '24/7 Customer Service', 'Yes', 0, '2023-06-19 05:57:33', '2023-06-19 05:57:33'),
(1823, 94, 'Mileage Daily', 'KM 250', 0, '2023-06-19 05:57:34', '2023-06-19 05:57:34'),
(1824, 94, 'Price', '180', 0, '2023-06-19 05:57:34', '2023-06-19 05:57:34'),
(1825, 94, 'Deposit', '1000', 1, '2023-06-19 05:57:34', '2023-06-19 07:34:36'),
(1826, 95, 'Engine', '1.5 V4', 1, '2023-06-19 06:01:30', '2023-06-19 07:34:36'),
(1827, 95, 'Seats', '5', 1, '2023-06-19 06:01:30', '2023-06-19 07:34:36'),
(1828, 95, 'Doors', '4', 1, '2023-06-19 06:01:30', '2023-06-19 07:34:36'),
(1829, 95, 'Luggage', '3', 0, '2023-06-19 06:01:30', '2023-06-19 06:01:30'),
(1830, 95, 'Pickup-Drop Off', 'Yes', 0, '2023-06-19 06:01:30', '2023-06-19 06:01:30'),
(1831, 95, 'Cruise Control', 'Yes', 0, '2023-06-19 06:01:30', '2023-06-19 06:01:30'),
(1832, 95, 'Bluetooth', 'Yes', 0, '2023-06-19 06:01:30', '2023-06-19 06:01:30'),
(1833, 95, 'Automatic', 'Yes', 0, '2023-06-19 06:01:30', '2023-06-19 06:01:30'),
(1834, 95, 'Parking Sensor', 'Yes', 0, '2023-06-19 06:01:31', '2023-06-19 06:01:31'),
(1835, 95, 'Navigation', 'Yes', 0, '2023-06-19 06:01:31', '2023-06-19 06:01:31'),
(1836, 95, 'Full Insurance', 'Yes', 0, '2023-06-19 06:01:31', '2023-06-19 06:01:31'),
(1837, 95, 'Security Type', 'Card Only', 0, '2023-06-19 06:01:31', '2023-06-19 06:01:31'),
(1838, 95, 'Payment Type', 'Credit Card & Cash', 0, '2023-06-19 06:01:31', '2023-06-19 06:01:31'),
(1839, 95, 'Free Cancellation', 'Yes', 0, '2023-06-19 06:01:31', '2023-06-19 06:01:31'),
(1840, 95, '24/7 Customer Service', 'Yes', 0, '2023-06-19 06:01:31', '2023-06-19 06:01:31'),
(1841, 95, 'Mileage Daily', 'KM 250', 0, '2023-06-19 06:01:31', '2023-06-19 06:01:31'),
(1842, 95, 'Price', '170', 0, '2023-06-19 06:01:31', '2023-06-19 06:01:31'),
(1843, 95, 'Deposit', '1000', 1, '2023-06-19 06:01:32', '2023-06-19 07:34:36'),
(1844, 96, 'Engine', '1.4 L', 1, '2023-06-19 06:05:47', '2023-06-19 07:34:36'),
(1845, 96, 'Seats', '5', 1, '2023-06-19 06:05:47', '2023-06-19 07:34:36'),
(1846, 96, 'Doors', '4', 1, '2023-06-19 06:05:47', '2023-06-19 07:34:36'),
(1847, 96, 'Luggage', '2', 0, '2023-06-19 06:05:47', '2023-06-19 06:05:47'),
(1848, 96, 'Pickup-Drop Off', 'Yes', 0, '2023-06-19 06:05:47', '2023-06-19 06:05:47'),
(1849, 96, 'Cruise Control', 'Yes', 0, '2023-06-19 06:05:47', '2023-06-19 06:05:47'),
(1850, 96, 'Bluetooth', 'Yes', 0, '2023-06-19 06:05:48', '2023-06-19 06:05:48'),
(1851, 96, 'Automatic', 'Yes', 0, '2023-06-19 06:05:48', '2023-06-19 06:05:48'),
(1852, 96, 'Parking Sensor', 'Yes', 0, '2023-06-19 06:05:48', '2023-06-19 06:05:48'),
(1853, 96, 'Navigation', 'Yes', 0, '2023-06-19 06:05:48', '2023-06-19 06:05:48'),
(1854, 96, 'Full Insurance', 'Yes', 0, '2023-06-19 06:05:48', '2023-06-19 06:05:48'),
(1855, 96, 'Security Type', 'Card Only', 0, '2023-06-19 06:05:48', '2023-06-19 06:05:48'),
(1856, 96, 'Payment Type', 'Credit Card & Cash', 0, '2023-06-19 06:05:48', '2023-06-19 06:05:48'),
(1857, 96, 'Free Cancellation', 'Yes', 0, '2023-06-19 06:05:48', '2023-06-19 06:05:48'),
(1858, 96, '24/7 Customer Service', 'Yes', 0, '2023-06-19 06:05:48', '2023-06-19 06:05:48'),
(1859, 96, 'Mileage Daily', 'KM 250', 0, '2023-06-19 06:05:48', '2023-06-19 06:05:48'),
(1860, 96, 'Price', '100', 0, '2023-06-19 06:05:48', '2023-06-19 06:05:48'),
(1861, 96, 'Deposit', '1000', 1, '2023-06-19 06:05:48', '2023-06-19 07:34:36'),
(1862, 97, 'Engine', '1.6 L', 1, '2023-06-19 06:14:42', '2023-06-19 07:34:36'),
(1863, 97, 'Seats', '5', 1, '2023-06-19 06:14:42', '2023-06-19 07:34:36'),
(1864, 97, 'Doors', '4', 1, '2023-06-19 06:14:43', '2023-06-19 07:34:36'),
(1865, 97, 'Luggage', '3', 0, '2023-06-19 06:14:43', '2023-06-19 06:14:43'),
(1866, 97, 'Pickup-Drop Off', 'Yes', 0, '2023-06-19 06:14:43', '2023-06-19 06:14:43'),
(1867, 97, 'Cruise Control', 'Yes', 0, '2023-06-19 06:14:43', '2023-06-19 06:14:43'),
(1868, 97, 'Bluetooth', 'Yes', 0, '2023-06-19 06:14:43', '2023-06-19 06:14:43'),
(1869, 97, 'Automatic', 'Yes', 0, '2023-06-19 06:14:43', '2023-06-19 06:14:43'),
(1870, 97, 'Parking Sensor', 'Yes', 0, '2023-06-19 06:14:44', '2023-06-19 06:14:44'),
(1871, 97, 'Navigation', 'Yes', 0, '2023-06-19 06:14:44', '2023-06-19 06:14:44'),
(1872, 97, 'Full Insurance', 'Yes', 0, '2023-06-19 06:14:44', '2023-06-19 06:14:44'),
(1873, 97, 'Security Type', 'Card Only', 0, '2023-06-19 06:14:44', '2023-06-19 06:14:44'),
(1874, 97, 'Payment Type', 'Credit Card & Cash', 0, '2023-06-19 06:14:44', '2023-06-19 06:14:44'),
(1875, 97, 'Free Cancellation', 'Yes', 0, '2023-06-19 06:14:44', '2023-06-19 06:14:44'),
(1876, 97, '24/7 Customer Service', 'Yes', 0, '2023-06-19 06:14:45', '2023-06-19 06:14:45'),
(1877, 97, 'Mileage Daily', 'KM 250', 0, '2023-06-19 06:14:45', '2023-06-19 06:14:45'),
(1878, 97, 'Price', '120', 0, '2023-06-19 06:14:45', '2023-06-19 06:14:45'),
(1879, 97, 'Deposit', '1000', 1, '2023-06-19 06:14:45', '2023-06-19 07:34:36'),
(1880, 98, 'Engine', '1.6 L', 1, '2023-06-19 06:23:22', '2023-06-19 07:34:36'),
(1881, 98, 'Seats', '5', 1, '2023-06-19 06:23:22', '2023-06-19 07:34:36'),
(1882, 98, 'Doors', '4', 1, '2023-06-19 06:23:22', '2023-06-19 07:34:36'),
(1883, 98, 'Luggage', '3', 0, '2023-06-19 06:23:22', '2023-06-19 06:23:22'),
(1884, 98, 'Pickup-Drop Off', 'Yes', 0, '2023-06-19 06:23:23', '2023-06-19 06:23:23'),
(1885, 98, 'Cruise Control', 'Yes', 0, '2023-06-19 06:23:23', '2023-06-19 06:23:23'),
(1886, 98, 'Bluetooth', 'Yes', 0, '2023-06-19 06:23:23', '2023-06-19 06:23:23'),
(1887, 98, 'Automatic', 'Yes', 0, '2023-06-19 06:23:23', '2023-06-19 06:23:23'),
(1888, 98, 'Parking Sensor', 'Yes', 0, '2023-06-19 06:23:23', '2023-06-19 06:23:23'),
(1889, 98, 'Navigation', 'Yes', 0, '2023-06-19 06:23:23', '2023-06-19 06:23:23'),
(1890, 98, 'Full Insurance', 'Yes', 0, '2023-06-19 06:23:23', '2023-06-19 06:23:23'),
(1891, 98, 'Security Type', 'Card Only', 0, '2023-06-19 06:23:23', '2023-06-19 06:23:23'),
(1892, 98, 'Payment Type', 'Credit Card & Cash', 0, '2023-06-19 06:23:24', '2023-06-19 06:23:24'),
(1893, 98, 'Free Cancellation', 'Yes', 0, '2023-06-19 06:23:24', '2023-06-19 06:23:24'),
(1894, 98, '24/7 Customer Service', 'Yes', 0, '2023-06-19 06:23:24', '2023-06-19 06:23:24'),
(1895, 98, 'Mileage Daily', 'KM 250', 0, '2023-06-19 06:23:24', '2023-06-19 06:23:24'),
(1896, 98, 'Price', '125', 0, '2023-06-19 06:23:24', '2023-06-19 06:23:24'),
(1897, 98, 'Deposit', '1000', 1, '2023-06-19 06:23:24', '2023-06-19 07:34:36'),
(1898, 99, 'Engine', 'V6', 1, '2023-06-19 06:27:09', '2023-06-19 07:34:36'),
(1899, 99, 'Seats', '5', 1, '2023-06-19 06:27:09', '2023-06-19 07:34:36'),
(1900, 99, 'Doors', '4', 1, '2023-06-19 06:27:09', '2023-06-19 07:34:36'),
(1901, 99, 'Luggage', '3', 0, '2023-06-19 06:27:09', '2023-06-19 06:27:09'),
(1902, 99, 'Pickup-Drop Off', 'Yes', 0, '2023-06-19 06:27:09', '2023-06-19 06:27:09'),
(1903, 99, 'Cruise Control', 'Yes', 0, '2023-06-19 06:27:09', '2023-06-19 06:27:09'),
(1904, 99, 'Bluetooth', 'Yes', 0, '2023-06-19 06:27:09', '2023-06-19 06:27:09'),
(1905, 99, 'Automatic', 'Yes', 0, '2023-06-19 06:27:09', '2023-06-19 06:27:09'),
(1906, 99, 'Parking Sensor', 'Yes', 0, '2023-06-19 06:27:10', '2023-06-19 06:27:10'),
(1907, 99, 'Navigation', 'Yes', 0, '2023-06-19 06:27:10', '2023-06-19 06:27:10'),
(1908, 99, 'Full Insurance', 'Yes', 0, '2023-06-19 06:27:10', '2023-06-19 06:27:10'),
(1909, 99, 'Security Type', 'Card Only', 0, '2023-06-19 06:27:10', '2023-06-19 06:27:10'),
(1910, 99, 'Payment Type', 'Credit Card & Cash', 0, '2023-06-19 06:27:10', '2023-06-19 06:27:10'),
(1911, 99, 'Free Cancellation', 'Yes', 0, '2023-06-19 06:27:10', '2023-06-19 06:27:10'),
(1912, 99, '24/7 Customer Service', 'Yes', 0, '2023-06-19 06:27:10', '2023-06-19 06:27:10'),
(1913, 99, 'Mileage Daily', 'KM 250', 0, '2023-06-19 06:27:10', '2023-06-19 06:27:10'),
(1914, 99, 'Price', '300', 0, '2023-06-19 06:27:10', '2023-06-19 06:27:10'),
(1915, 99, 'Deposit', '1000', 1, '2023-06-19 06:27:11', '2023-06-19 07:34:36'),
(1918, 100, 'Engine', 'V4', 1, '2023-06-19 06:31:09', '2023-06-19 07:34:36'),
(1919, 100, 'Seats', '5', 1, '2023-06-19 06:31:09', '2023-06-19 07:34:36'),
(1920, 100, 'Doors', '4', 1, '2023-06-19 06:31:09', '2023-06-19 07:34:36'),
(1921, 100, 'Luggage', '3', 0, '2023-06-19 06:31:09', '2023-06-19 06:31:09'),
(1922, 100, 'Pickup-Drop Off', 'Yes', 0, '2023-06-19 06:31:09', '2023-06-19 06:31:09'),
(1923, 100, 'Cruise Control', 'Yes', 0, '2023-06-19 06:31:09', '2023-06-19 06:31:09'),
(1924, 100, 'Bluetooth', 'Yes', 0, '2023-06-19 06:31:09', '2023-06-19 06:31:09'),
(1925, 100, 'Automatic', 'Yes', 0, '2023-06-19 06:31:09', '2023-06-19 06:31:09'),
(1926, 100, 'Parking Sensor', 'Yes', 0, '2023-06-19 06:31:09', '2023-06-19 06:31:09'),
(1927, 100, 'Navigation', 'Yes', 0, '2023-06-19 06:31:09', '2023-06-19 06:31:09'),
(1928, 100, 'Full Insurance', 'Yes', 0, '2023-06-19 06:31:09', '2023-06-19 06:31:09'),
(1929, 100, 'Security Type', 'Card Only', 0, '2023-06-19 06:31:09', '2023-06-19 06:31:09'),
(1930, 100, 'Payment Type', 'Credit Card & Cash', 0, '2023-06-19 06:31:09', '2023-06-19 06:31:09'),
(1931, 100, 'Free Cancellation', 'Yes', 0, '2023-06-19 06:31:09', '2023-06-19 06:31:09'),
(1932, 100, '24/7 Customer Service', 'Yes', 0, '2023-06-19 06:31:09', '2023-06-19 06:31:09'),
(1933, 100, 'Mileage Daily', 'KM 250', 0, '2023-06-19 06:31:09', '2023-06-19 06:31:09'),
(1934, 100, 'Price', '350', 0, '2023-06-19 06:31:09', '2023-06-19 06:31:09'),
(1935, 100, 'Deposit', '1000', 1, '2023-06-19 06:31:09', '2023-06-19 07:34:36'),
(1936, 101, 'Engine', 'V6', 1, '2023-06-19 06:33:57', '2023-06-19 07:34:36'),
(1937, 101, 'Seats', '6', 1, '2023-06-19 06:33:57', '2023-06-19 07:34:36'),
(1938, 101, 'Doors', '5', 1, '2023-06-19 06:33:57', '2023-06-19 07:34:36'),
(1939, 101, 'Luggage', '3', 0, '2023-06-19 06:33:57', '2023-06-19 06:33:57'),
(1940, 101, 'Pickup-Drop Off', 'Yes', 0, '2023-06-19 06:33:57', '2023-06-19 06:33:57'),
(1941, 101, 'Cruise Control', 'Yes', 0, '2023-06-19 06:33:57', '2023-06-19 06:33:57'),
(1942, 101, 'Bluetooth', 'Yes', 0, '2023-06-19 06:33:57', '2023-06-19 06:33:57'),
(1943, 101, 'Automatic', 'Yes', 0, '2023-06-19 06:33:57', '2023-06-19 06:33:57'),
(1944, 101, 'Parking Sensor', 'Yes', 0, '2023-06-19 06:33:57', '2023-06-19 06:33:57'),
(1945, 101, 'Navigation', 'Yes', 0, '2023-06-19 06:33:57', '2023-06-19 06:33:57'),
(1946, 101, 'Full Insurance', 'Yes', 0, '2023-06-19 06:33:57', '2023-06-19 06:33:57'),
(1947, 101, 'Security Type', 'Card Only', 0, '2023-06-19 06:33:57', '2023-06-19 06:33:57'),
(1948, 101, 'Payment Type', 'Credit Card & Cash', 0, '2023-06-19 06:33:57', '2023-06-19 06:33:57'),
(1949, 101, 'Free Cancellation', 'Yes', 0, '2023-06-19 06:33:57', '2023-06-19 06:33:57'),
(1950, 101, '24/7 Customer Service', 'Yes', 0, '2023-06-19 06:33:57', '2023-06-19 06:33:57'),
(1951, 101, 'Mileage Daily', 'KM 250', 0, '2023-06-19 06:33:57', '2023-06-19 06:33:57'),
(1952, 101, 'Price', '500', 0, '2023-06-19 06:33:57', '2023-06-19 06:33:57'),
(1953, 101, 'Deposit', '1000', 1, '2023-06-19 06:33:57', '2023-06-19 07:34:36'),
(1954, 102, 'Engine', 'V4', 1, '2023-06-19 06:38:24', '2023-06-19 07:34:36'),
(1955, 102, 'Seats', '5', 1, '2023-06-19 06:38:25', '2023-06-19 07:34:36'),
(1956, 102, 'Doors', '4', 1, '2023-06-19 06:38:25', '2023-06-19 07:34:36'),
(1957, 102, 'Luggage', '3', 0, '2023-06-19 06:38:25', '2023-06-19 06:38:25'),
(1958, 102, 'Pickup-Drop Off', 'Yes', 0, '2023-06-19 06:38:25', '2023-06-19 06:38:25'),
(1959, 102, 'Cruise Control', 'Yes', 0, '2023-06-19 06:38:25', '2023-06-19 06:38:25'),
(1960, 102, 'Bluetooth', 'Yes', 0, '2023-06-19 06:38:25', '2023-06-19 06:38:25'),
(1961, 102, 'Automatic', 'Yes', 0, '2023-06-19 06:38:25', '2023-06-19 06:38:25'),
(1962, 102, 'Parking Sensor', 'Yes', 0, '2023-06-19 06:38:25', '2023-06-19 06:38:25'),
(1963, 102, 'Navigation', 'Yes', 0, '2023-06-19 06:38:25', '2023-06-19 06:38:25'),
(1964, 102, 'Full Insurance', 'Yes', 0, '2023-06-19 06:38:25', '2023-06-19 06:38:25'),
(1965, 102, 'Security Type', 'Card Only', 0, '2023-06-19 06:38:25', '2023-06-19 06:38:25'),
(1966, 102, 'Payment Type', 'Credit Card & Cash', 0, '2023-06-19 06:38:26', '2023-06-19 06:38:26'),
(1967, 102, 'Free Cancellation', 'Yes', 0, '2023-06-19 06:38:26', '2023-06-19 06:38:26'),
(1968, 102, '24/7 Customer Service', 'Yes', 0, '2023-06-19 06:38:26', '2023-06-19 06:38:26'),
(1969, 102, 'Mileage Daily', 'KM 250', 0, '2023-06-19 06:38:26', '2023-06-19 06:38:26'),
(1970, 102, 'Price', '170', 0, '2023-06-19 06:38:26', '2023-06-19 06:38:26'),
(1971, 102, 'Deposit', '1000', 1, '2023-06-19 06:38:26', '2023-06-19 07:34:36'),
(1972, 103, 'Engine', '1.2L 4', 1, '2023-06-19 06:42:43', '2023-06-19 07:34:36'),
(1973, 103, 'Seats', '5', 1, '2023-06-19 06:42:43', '2023-06-19 07:34:36'),
(1974, 103, 'Doors', '4', 1, '2023-06-19 06:42:43', '2023-06-19 07:34:36'),
(1975, 103, 'Luggage', '1', 0, '2023-06-19 06:42:43', '2023-06-19 06:42:43'),
(1976, 103, 'Pickup-Drop Off', 'Yes', 0, '2023-06-19 06:42:43', '2023-06-19 06:42:43'),
(1977, 103, 'Cruise Control', 'Yes', 0, '2023-06-19 06:42:43', '2023-06-19 06:42:43'),
(1978, 103, 'Bluetooth', 'Yes', 0, '2023-06-19 06:42:43', '2023-06-19 06:42:43'),
(1979, 103, 'Automatic', 'Yes', 0, '2023-06-19 06:42:43', '2023-06-19 06:42:43'),
(1980, 103, 'Parking Sensor', 'Yes', 0, '2023-06-19 06:42:43', '2023-06-19 06:42:43'),
(1981, 103, 'Navigation', 'Yes', 0, '2023-06-19 06:42:43', '2023-06-19 06:42:43'),
(1982, 103, 'Full Insurance', 'Yes', 0, '2023-06-19 06:42:43', '2023-06-19 06:42:43'),
(1983, 103, 'Security Type', 'Card Only', 0, '2023-06-19 06:42:43', '2023-06-19 06:42:43'),
(1984, 103, 'Payment Type', 'Credit Card & Cash', 0, '2023-06-19 06:42:43', '2023-06-19 06:42:43'),
(1985, 103, 'Free Cancellation', 'Yes', 0, '2023-06-19 06:42:43', '2023-06-19 06:42:43'),
(1986, 103, '24/7 Customer Service', 'Yes', 0, '2023-06-19 06:42:43', '2023-06-19 06:42:43'),
(1987, 103, 'Mileage Daily', 'KM 250', 0, '2023-06-19 06:42:43', '2023-06-19 06:42:43'),
(1988, 103, 'Price', '100', 0, '2023-06-19 06:42:43', '2023-06-19 06:42:43'),
(1989, 103, 'Deposit', '1000', 1, '2023-06-19 06:42:43', '2023-06-19 07:34:36'),
(1990, 104, 'Engine', '1.6L 4', 1, '2023-06-19 06:46:58', '2023-06-19 07:34:36'),
(1991, 104, 'Seats', '5', 1, '2023-06-19 06:46:58', '2023-06-19 07:34:36'),
(1992, 104, 'Doors', '4', 1, '2023-06-19 06:46:58', '2023-06-19 07:34:36'),
(1993, 104, 'Luggage', '1', 0, '2023-06-19 06:46:58', '2023-06-19 06:46:58'),
(1994, 104, 'Pickup-Drop Off', 'Yes', 0, '2023-06-19 06:46:59', '2023-06-19 06:46:59'),
(1995, 104, 'Cruise Control', 'Yes', 0, '2023-06-19 06:46:59', '2023-06-19 06:46:59'),
(1996, 104, 'Bluetooth', 'Yes', 0, '2023-06-19 06:46:59', '2023-06-19 06:46:59'),
(1997, 104, 'Automatic', 'Yes', 0, '2023-06-19 06:46:59', '2023-06-19 06:46:59'),
(1998, 104, 'Parking Sensor', 'Yes', 0, '2023-06-19 06:46:59', '2023-06-19 06:46:59'),
(1999, 104, 'Navigation', 'Yes', 0, '2023-06-19 06:46:59', '2023-06-19 06:46:59'),
(2000, 104, 'Full Insurance', 'Yes', 0, '2023-06-19 06:46:59', '2023-06-19 06:46:59'),
(2001, 104, 'Security Type', 'Card Only', 0, '2023-06-19 06:46:59', '2023-06-19 06:46:59'),
(2002, 104, 'Payment Type', 'Credit Card & Cash', 0, '2023-06-19 06:46:59', '2023-06-19 06:46:59'),
(2003, 104, 'Free Cancellation', 'Yes', 0, '2023-06-19 06:46:59', '2023-06-19 06:46:59'),
(2004, 104, '24/7 Customer Service', 'Yes', 0, '2023-06-19 06:46:59', '2023-06-19 06:46:59'),
(2005, 104, 'Mileage Daily', 'KM 250', 0, '2023-06-19 06:46:59', '2023-06-19 06:46:59'),
(2006, 104, 'Price', '185', 0, '2023-06-19 06:46:59', '2023-06-19 06:46:59'),
(2007, 104, 'Deposit', '1000', 1, '2023-06-19 06:46:59', '2023-06-19 07:34:36'),
(2009, 105, 'Engine', '2.5L 4', 1, '2023-06-19 06:50:20', '2023-06-19 07:34:36'),
(2010, 105, 'Seats', '5', 1, '2023-06-19 06:50:21', '2023-06-19 07:34:36'),
(2011, 105, 'Doors', '5', 1, '2023-06-19 06:50:21', '2023-06-19 07:34:36'),
(2012, 105, 'Luggage', '3', 0, '2023-06-19 06:50:21', '2023-06-19 06:50:21'),
(2013, 105, 'Pickup-Drop Off', 'Yes', 0, '2023-06-19 06:50:21', '2023-06-19 06:50:21'),
(2014, 105, 'Cruise Control', 'Yes', 0, '2023-06-19 06:50:21', '2023-06-19 06:50:21'),
(2015, 105, 'Bluetooth', 'Yes', 0, '2023-06-19 06:50:21', '2023-06-19 06:50:21'),
(2016, 105, 'Automatic', 'Yes', 0, '2023-06-19 06:50:21', '2023-06-19 06:50:21'),
(2017, 105, 'Parking Sensor', 'Yes', 0, '2023-06-19 06:50:21', '2023-06-19 06:50:21'),
(2018, 105, 'Navigation', 'Yes', 0, '2023-06-19 06:50:21', '2023-06-19 06:50:21'),
(2019, 105, 'Full Insurance', 'Yes', 0, '2023-06-19 06:50:21', '2023-06-19 06:50:21'),
(2020, 105, 'Security Type', 'Card Only', 0, '2023-06-19 06:50:21', '2023-06-19 06:50:21'),
(2021, 105, 'Payment Type', 'Credit Card & Cash', 0, '2023-06-19 06:50:21', '2023-06-19 06:50:21'),
(2022, 105, 'Free Cancellation', 'Yes', 0, '2023-06-19 06:50:21', '2023-06-19 06:50:21'),
(2023, 105, '24/7 Customer Service', 'Yes', 0, '2023-06-19 06:50:22', '2023-06-19 06:50:22'),
(2024, 105, 'Mileage Daily', 'KM 250', 0, '2023-06-19 06:50:22', '2023-06-19 06:50:22'),
(2025, 105, 'Price', '185', 0, '2023-06-19 06:50:22', '2023-06-19 06:50:22'),
(2026, 105, 'Deposit', '1000', 1, '2023-06-19 06:50:22', '2023-06-19 07:34:36'),
(2027, 106, 'Engine', 'V8', 1, '2023-06-19 06:55:41', '2023-06-19 07:34:36'),
(2028, 106, 'Seats', '5', 1, '2023-06-19 06:55:41', '2023-06-19 07:34:36'),
(2029, 106, 'Doors', '4', 1, '2023-06-19 06:55:41', '2023-06-19 07:34:36'),
(2030, 106, 'Luggage', '3', 0, '2023-06-19 06:55:41', '2023-06-19 06:55:41'),
(2031, 106, 'Pickup-Drop Off', 'Yes', 0, '2023-06-19 06:55:41', '2023-06-19 06:55:41'),
(2032, 106, 'Cruise Control', 'Yes', 0, '2023-06-19 06:55:41', '2023-06-19 06:55:41'),
(2033, 106, 'Bluetooth', 'Yes', 0, '2023-06-19 06:55:41', '2023-06-19 06:55:41'),
(2034, 106, 'Automatic', 'Yes', 0, '2023-06-19 06:55:41', '2023-06-19 06:55:41'),
(2035, 106, 'Parking Sensor', 'Yes', 0, '2023-06-19 06:55:41', '2023-06-19 06:55:41'),
(2036, 106, 'Navigation', 'Yes', 0, '2023-06-19 06:55:41', '2023-06-19 06:55:41'),
(2037, 106, 'Full Insurance', 'Yes', 0, '2023-06-19 06:55:41', '2023-06-19 06:55:41'),
(2038, 106, 'Security Type', 'Card Only', 0, '2023-06-19 06:55:41', '2023-06-19 06:55:41'),
(2039, 106, 'Payment Type', 'Credit Card & Cash', 0, '2023-06-19 06:55:41', '2023-06-19 06:55:41'),
(2040, 106, 'Free Cancellation', 'Yes', 0, '2023-06-19 06:55:42', '2023-06-19 06:55:42'),
(2041, 106, '24/7 Customer Service', 'Yes', 0, '2023-06-19 06:55:42', '2023-06-19 06:55:42'),
(2042, 106, 'Mileage Daily', 'KM 250', 0, '2023-06-19 06:55:42', '2023-06-19 06:55:42'),
(2043, 106, 'Price', '2000', 0, '2023-06-19 06:55:42', '2023-06-19 06:55:42'),
(2044, 106, 'Deposit', '5000', 1, '2023-06-19 06:55:42', '2023-06-19 07:34:36'),
(2045, 107, 'Engine', '1.6L 4', 1, '2023-06-19 07:00:55', '2023-06-19 07:34:36'),
(2046, 107, 'Seats', '5', 1, '2023-06-19 07:00:55', '2023-06-19 07:34:36'),
(2047, 107, 'Doors', '4', 1, '2023-06-19 07:00:55', '2023-06-19 07:34:36'),
(2048, 107, 'Luggage', '2', 0, '2023-06-19 07:00:55', '2023-06-19 07:00:55'),
(2049, 107, 'Pickup-Drop Off', 'Yes', 0, '2023-06-19 07:00:55', '2023-06-19 07:00:55'),
(2050, 107, 'Cruise Control', 'Yes', 0, '2023-06-19 07:00:55', '2023-06-19 07:00:55'),
(2051, 107, 'Bluetooth', 'Yes', 0, '2023-06-19 07:00:55', '2023-06-19 07:00:55'),
(2052, 107, 'Automatic', 'Yes', 0, '2023-06-19 07:00:55', '2023-06-19 07:00:55'),
(2053, 107, 'Parking Sensor', 'Yes', 0, '2023-06-19 07:00:55', '2023-06-19 07:00:55'),
(2054, 107, 'Navigation', 'Yes', 0, '2023-06-19 07:00:56', '2023-06-19 07:00:56'),
(2055, 107, 'Full Insurance', 'Yes', 0, '2023-06-19 07:00:56', '2023-06-19 07:00:56'),
(2056, 107, 'Security Type', 'Card Only', 0, '2023-06-19 07:00:56', '2023-06-19 07:00:56'),
(2057, 107, 'Payment Type', 'Credit Card & Cash', 0, '2023-06-19 07:00:56', '2023-06-19 07:00:56'),
(2058, 107, 'Free Cancellation', 'Yes', 0, '2023-06-19 07:00:56', '2023-06-19 07:00:56'),
(2059, 107, '24/7 Customer Service', 'Yes', 0, '2023-06-19 07:00:56', '2023-06-19 07:00:56'),
(2060, 107, 'Mileage Daily', 'KM 250', 0, '2023-06-19 07:00:56', '2023-06-19 07:00:56'),
(2061, 107, 'Price', '130', 0, '2023-06-19 07:00:56', '2023-06-19 07:00:56'),
(2062, 107, 'Deposit', '1000', 1, '2023-06-19 07:00:56', '2023-06-19 07:34:36'),
(2063, 108, 'Engine', '3.5L', 1, '2023-06-19 07:04:17', '2023-06-19 07:34:36'),
(2064, 108, 'Seats', '5', 1, '2023-06-19 07:04:17', '2023-06-19 07:34:36'),
(2065, 108, 'Doors', '4', 1, '2023-06-19 07:04:17', '2023-06-19 07:34:36'),
(2066, 108, 'Luggage', '3', 0, '2023-06-19 07:04:17', '2023-06-19 07:04:17'),
(2067, 108, 'Pickup-Drop Off', 'Yes', 0, '2023-06-19 07:04:18', '2023-06-19 07:04:18'),
(2068, 108, 'Cruise Control', 'Yes', 0, '2023-06-19 07:04:18', '2023-06-19 07:04:18'),
(2069, 108, 'Bluetooth', 'Yes', 0, '2023-06-19 07:04:18', '2023-06-19 07:04:18'),
(2070, 108, 'Automatic', 'Yes', 0, '2023-06-19 07:04:18', '2023-06-19 07:04:18'),
(2071, 108, 'Parking Sensor', 'Yes', 0, '2023-06-19 07:04:18', '2023-06-19 07:04:18'),
(2072, 108, 'Navigation', 'Yes', 0, '2023-06-19 07:04:18', '2023-06-19 07:04:18'),
(2073, 108, 'Full Insurance', 'Yes', 0, '2023-06-19 07:04:18', '2023-06-19 07:04:18'),
(2074, 108, 'Security Type', 'Card Only', 0, '2023-06-19 07:04:18', '2023-06-19 07:04:18'),
(2075, 108, 'Payment Type', 'Credit Card & Cash', 0, '2023-06-19 07:04:18', '2023-06-19 07:04:18'),
(2076, 108, 'Free Cancellation', 'Yes', 0, '2023-06-19 07:04:18', '2023-06-19 07:04:18'),
(2077, 108, '24/7 Customer Service', 'Yes', 0, '2023-06-19 07:04:18', '2023-06-19 07:04:18'),
(2078, 108, 'Mileage Daily', 'KM 250', 0, '2023-06-19 07:04:19', '2023-06-19 07:04:19'),
(2079, 108, 'Price', '155', 0, '2023-06-19 07:04:19', '2023-06-19 07:04:19'),
(2080, 108, 'Deposit', '1000', 1, '2023-06-19 07:04:19', '2023-06-19 07:34:36'),
(2081, 109, 'Engine', '1.4', 1, '2023-06-19 07:10:00', '2023-06-19 07:34:36'),
(2082, 109, 'Seats', '5', 1, '2023-06-19 07:10:00', '2023-06-19 07:34:36'),
(2083, 109, 'Doors', '4', 1, '2023-06-19 07:10:00', '2023-06-19 07:34:36'),
(2084, 109, 'Luggage', '3', 0, '2023-06-19 07:10:00', '2023-06-19 07:10:00'),
(2085, 109, 'Pickup-Drop Off', 'Yes', 0, '2023-06-19 07:10:00', '2023-06-19 07:10:00'),
(2086, 109, 'Cruise Control', 'Yes', 0, '2023-06-19 07:10:00', '2023-06-19 07:10:00'),
(2087, 109, 'Bluetooth', 'Yes', 0, '2023-06-19 07:10:01', '2023-06-19 07:10:01'),
(2088, 109, 'Automatic', 'Yes', 0, '2023-06-19 07:10:01', '2023-06-19 07:10:01'),
(2089, 109, 'Parking Sensor', 'Yes', 0, '2023-06-19 07:10:01', '2023-06-19 07:10:01'),
(2090, 109, 'Navigation', 'Yes', 0, '2023-06-19 07:10:01', '2023-06-19 07:10:01'),
(2091, 109, 'Full Insurance', 'Yes', 0, '2023-06-19 07:10:01', '2023-06-19 07:10:01'),
(2092, 109, 'Security Type', 'Card Only', 0, '2023-06-19 07:10:01', '2023-06-19 07:10:01'),
(2093, 109, 'Payment Type', 'Credit Card & Cash', 0, '2023-06-19 07:10:01', '2023-06-19 07:10:01'),
(2094, 109, 'Free Cancellation', 'Yes', 0, '2023-06-19 07:10:01', '2023-06-19 07:10:01'),
(2095, 109, '24/7 Customer Service', 'Yes', 0, '2023-06-19 07:10:01', '2023-06-19 07:10:01'),
(2096, 109, 'Mileage Daily', 'KM 250', 0, '2023-06-19 07:10:01', '2023-06-19 07:10:01'),
(2097, 109, 'Price', '100', 0, '2023-06-19 07:10:01', '2023-06-19 07:10:01'),
(2098, 109, 'Deposit', '1000', 1, '2023-06-19 07:10:01', '2023-06-19 07:34:36'),
(2099, 110, 'Engine', '1.6L', 1, '2023-06-19 07:17:00', '2023-06-19 07:34:36'),
(2100, 110, 'Seats', '5', 1, '2023-06-19 07:17:00', '2023-06-19 07:34:36'),
(2101, 110, 'Doors', '4', 1, '2023-06-19 07:17:01', '2023-06-19 07:34:36'),
(2102, 110, 'Luggage', '3', 0, '2023-06-19 07:17:01', '2023-06-19 07:17:01'),
(2103, 110, 'Pickup-Drop Off', 'Yes', 0, '2023-06-19 07:17:01', '2023-06-19 07:17:01'),
(2104, 110, 'Cruise Control', 'Yes', 0, '2023-06-19 07:17:01', '2023-06-19 07:17:01'),
(2105, 110, 'Bluetooth', 'Yes', 0, '2023-06-19 07:17:01', '2023-06-19 07:17:01'),
(2106, 110, 'Automatic', 'Yes', 0, '2023-06-19 07:17:01', '2023-06-19 07:17:01'),
(2107, 110, 'Parking Sensor', 'Yes', 0, '2023-06-19 07:17:01', '2023-06-19 07:17:01'),
(2108, 110, 'Navigation', 'Yes', 0, '2023-06-19 07:17:01', '2023-06-19 07:17:01'),
(2109, 110, 'Full Insurance', 'Yes', 0, '2023-06-19 07:17:01', '2023-06-19 07:17:01'),
(2110, 110, 'Security Type', 'Card Only', 0, '2023-06-19 07:17:01', '2023-06-19 07:17:01'),
(2111, 110, 'Payment Type', 'Credit Card & Cash', 0, '2023-06-19 07:17:01', '2023-06-19 07:17:01'),
(2112, 110, 'Free Cancellation', 'Yes', 0, '2023-06-19 07:17:01', '2023-06-19 07:17:01'),
(2113, 110, '24/7 Customer Service', 'Yes', 0, '2023-06-19 07:17:01', '2023-06-19 07:17:01'),
(2114, 110, 'Mileage Daily', 'KM 250', 0, '2023-06-19 07:17:01', '2023-06-19 07:17:01'),
(2115, 110, 'Price', '90', 0, '2023-06-19 07:17:01', '2023-06-19 07:17:01'),
(2116, 110, 'Deposit', '1000', 1, '2023-06-19 07:17:01', '2023-06-19 07:34:36'),
(2117, 111, 'Engine', '1.6 THP', 1, '2023-06-19 07:19:52', '2023-06-19 07:34:36'),
(2118, 111, 'Seats', '5', 1, '2023-06-19 07:19:52', '2023-06-19 07:34:36'),
(2119, 111, 'Doors', '4', 1, '2023-06-19 07:19:52', '2023-06-19 07:34:36'),
(2120, 111, 'Luggage', '3', 0, '2023-06-19 07:19:52', '2023-06-19 07:19:52'),
(2121, 111, 'Pickup-Drop Off', 'Yes', 0, '2023-06-19 07:19:52', '2023-06-19 07:19:52'),
(2122, 111, 'Cruise Control', 'Yes', 0, '2023-06-19 07:19:53', '2023-06-19 07:19:53'),
(2123, 111, 'Bluetooth', 'Yes', 0, '2023-06-19 07:19:53', '2023-06-19 07:19:53'),
(2124, 111, 'Automatic', 'Yes', 0, '2023-06-19 07:19:53', '2023-06-19 07:19:53'),
(2125, 111, 'Parking Sensor', 'Yes', 0, '2023-06-19 07:19:53', '2023-06-19 07:19:53'),
(2126, 111, 'Navigation', 'Yes', 0, '2023-06-19 07:19:53', '2023-06-19 07:19:53'),
(2127, 111, 'Full Insurance', 'Yes', 0, '2023-06-19 07:19:53', '2023-06-19 07:19:53'),
(2128, 111, 'Security Type', 'Card Only', 0, '2023-06-19 07:19:53', '2023-06-19 07:19:53'),
(2129, 111, 'Payment Type', 'Credit Card & Cash', 0, '2023-06-19 07:19:53', '2023-06-19 07:19:53'),
(2130, 111, 'Free Cancellation', 'Yes', 0, '2023-06-19 07:19:53', '2023-06-19 07:19:53'),
(2131, 111, '24/7 Customer Service', 'Yes', 0, '2023-06-19 07:19:53', '2023-06-19 07:19:53'),
(2132, 111, 'Mileage Daily', 'KM 250', 0, '2023-06-19 07:19:53', '2023-06-19 07:19:53'),
(2133, 111, 'Price', '180', 0, '2023-06-19 07:19:53', '2023-06-19 07:19:53'),
(2134, 111, 'Deposit', '1000', 1, '2023-06-19 07:19:53', '2023-06-19 07:34:36'),
(2135, 112, 'Engine', 'V12', 1, '2023-06-19 07:22:54', '2023-06-19 07:34:36'),
(2136, 112, 'Seats', '5', 1, '2023-06-19 07:22:54', '2023-06-19 07:34:36'),
(2137, 112, 'Doors', '4', 1, '2023-06-19 07:22:54', '2023-06-19 07:34:36'),
(2138, 112, 'Luggage', '3', 0, '2023-06-19 07:22:54', '2023-06-19 07:22:54'),
(2139, 112, 'Pickup-Drop Off', 'Yes', 0, '2023-06-19 07:22:54', '2023-06-19 07:22:54'),
(2140, 112, 'Cruise Control', 'Yes', 0, '2023-06-19 07:22:55', '2023-06-19 07:22:55'),
(2141, 112, 'Bluetooth', 'Yes', 0, '2023-06-19 07:22:55', '2023-06-19 07:22:55'),
(2142, 112, 'Automatic', 'Yes', 0, '2023-06-19 07:22:55', '2023-06-19 07:22:55'),
(2143, 112, 'Parking Sensor', 'Yes', 0, '2023-06-19 07:22:55', '2023-06-19 07:22:55'),
(2144, 112, 'Navigation', 'Yes', 0, '2023-06-19 07:22:55', '2023-06-19 07:22:55'),
(2145, 112, 'Full Insurance', 'Yes', 0, '2023-06-19 07:22:55', '2023-06-19 07:22:55'),
(2146, 112, 'Security Type', 'Card Only', 0, '2023-06-19 07:22:55', '2023-06-19 07:22:55'),
(2147, 112, 'Payment Type', 'Credit Card & Cash', 0, '2023-06-19 07:22:55', '2023-06-19 07:22:55'),
(2148, 112, 'Free Cancellation', 'Yes', 0, '2023-06-19 07:22:55', '2023-06-19 07:22:55'),
(2149, 112, '24/7 Customer Service', 'Yes', 0, '2023-06-19 07:22:55', '2023-06-19 07:22:55'),
(2150, 112, 'Mileage Daily', 'KM 250', 0, '2023-06-19 07:22:55', '2023-06-19 07:22:55'),
(2151, 112, 'Price', '4000', 0, '2023-06-19 07:22:55', '2023-06-19 07:22:55'),
(2152, 112, 'Deposit', '5000', 1, '2023-06-19 07:22:56', '2023-06-19 07:34:36'),
(2153, 113, 'Engine', '1.5L', 1, '2023-06-19 07:27:02', '2023-06-19 07:34:36'),
(2154, 113, 'Seats', '5', 1, '2023-06-19 07:27:02', '2023-06-19 07:34:36'),
(2155, 113, 'Doors', '4', 1, '2023-06-19 07:27:02', '2023-06-19 07:34:36'),
(2156, 113, 'Luggage', '2', 0, '2023-06-19 07:27:02', '2023-06-19 07:27:02'),
(2157, 113, 'Pickup-Drop Off', 'Yes', 0, '2023-06-19 07:27:02', '2023-06-19 07:27:02'),
(2158, 113, 'Cruise Control', 'Yes', 0, '2023-06-19 07:27:02', '2023-06-19 07:27:02'),
(2159, 113, 'Bluetooth', 'Yes', 0, '2023-06-19 07:27:02', '2023-06-19 07:27:02'),
(2160, 113, 'Automatic', 'Yes', 0, '2023-06-19 07:27:02', '2023-06-19 07:27:02'),
(2161, 113, 'Parking Sensor', 'Yes', 0, '2023-06-19 07:27:02', '2023-06-19 07:27:02'),
(2162, 113, 'Navigation', 'Yes', 0, '2023-06-19 07:27:02', '2023-06-19 07:27:02'),
(2163, 113, 'Full Insurance', 'Yes', 0, '2023-06-19 07:27:02', '2023-06-19 07:27:02'),
(2164, 113, 'Security Type', 'Card Only', 0, '2023-06-19 07:27:02', '2023-06-19 07:27:02'),
(2165, 113, 'Payment Type', 'Credit Card & Cash', 0, '2023-06-19 07:27:02', '2023-06-19 07:27:02'),
(2166, 113, 'Free Cancellation', 'Yes', 0, '2023-06-19 07:27:02', '2023-06-19 07:27:02'),
(2167, 113, '24/7 Customer Service', 'Yes', 0, '2023-06-19 07:27:03', '2023-06-19 07:27:03'),
(2168, 113, 'Mileage Daily', 'KM 250', 0, '2023-06-19 07:27:03', '2023-06-19 07:27:03'),
(2169, 113, 'Price', '75', 0, '2023-06-19 07:27:03', '2023-06-19 07:27:03'),
(2170, 113, 'Deposit', '1000', 1, '2023-06-19 07:27:03', '2023-06-19 07:34:36'),
(2171, 114, 'Engine', 'V8', 1, '2023-06-19 07:31:10', '2023-06-19 07:34:36'),
(2172, 114, 'Seats', '7', 1, '2023-06-19 07:31:10', '2023-06-19 07:34:36'),
(2173, 114, 'Doors', '5', 1, '2023-06-19 07:31:10', '2023-06-19 07:34:36'),
(2174, 114, 'Luggage', '3', 0, '2023-06-19 07:31:10', '2023-06-19 07:31:10'),
(2175, 114, 'Pickup-Drop Off', 'Yes', 0, '2023-06-19 07:31:11', '2023-06-19 07:31:11'),
(2176, 114, 'Cruise Control', 'Yes', 0, '2023-06-19 07:31:11', '2023-06-19 07:31:11'),
(2177, 114, 'Bluetooth', 'Yes', 0, '2023-06-19 07:31:11', '2023-06-19 07:31:11'),
(2178, 114, 'Automatic', 'Yes', 0, '2023-06-19 07:31:11', '2023-06-19 07:31:11'),
(2179, 114, 'Parking Sensor', 'Yes', 0, '2023-06-19 07:31:11', '2023-06-19 07:31:11'),
(2180, 114, 'Navigation', 'Yes', 0, '2023-06-19 07:31:11', '2023-06-19 07:31:11'),
(2181, 114, 'Full Insurance', 'Yes', 0, '2023-06-19 07:31:11', '2023-06-19 07:31:11'),
(2182, 114, 'Security Type', 'Card Only', 0, '2023-06-19 07:31:11', '2023-06-19 07:31:11'),
(2183, 114, 'Payment Type', 'Credit Card & Cash', 0, '2023-06-19 07:31:11', '2023-06-19 07:31:11'),
(2184, 114, 'Free Cancellation', 'Yes', 0, '2023-06-19 07:31:11', '2023-06-19 07:31:11'),
(2185, 114, '24/7 Customer Service', 'Yes', 0, '2023-06-19 07:31:11', '2023-06-19 07:31:11'),
(2186, 114, 'Mileage Daily', 'KM 250', 0, '2023-06-19 07:31:11', '2023-06-19 07:31:11'),
(2187, 114, 'Price', '470', 0, '2023-06-19 07:31:11', '2023-06-19 07:31:11'),
(2188, 114, 'Deposit', '1000', 1, '2023-06-19 07:31:11', '2023-06-19 07:34:36'),
(2189, 115, 'Engine', 'V8', 1, '2023-06-19 07:34:33', '2023-06-19 07:34:36'),
(2190, 115, 'Seats', '7', 1, '2023-06-19 07:34:33', '2023-06-19 07:34:36'),
(2191, 115, 'Doors', '5', 1, '2023-06-19 07:34:33', '2023-06-19 07:34:36'),
(2192, 115, 'Luggage', '3', 0, '2023-06-19 07:34:33', '2023-06-19 07:34:33'),
(2193, 115, 'Pickup-Drop Off', 'Yes', 0, '2023-06-19 07:34:33', '2023-06-19 07:34:33'),
(2194, 115, 'Cruise Control', 'Yes', 0, '2023-06-19 07:34:33', '2023-06-19 07:34:33'),
(2195, 115, 'Bluetooth', 'Yes', 0, '2023-06-19 07:34:34', '2023-06-19 07:34:34'),
(2196, 115, 'Automatic', 'Yes', 0, '2023-06-19 07:34:34', '2023-06-19 07:34:34'),
(2197, 115, 'Parking Sensor', 'Yes', 0, '2023-06-19 07:34:34', '2023-06-19 07:34:34'),
(2198, 115, 'Navigation', 'Yes', 0, '2023-06-19 07:34:35', '2023-06-19 07:34:35'),
(2199, 115, 'Full Insurance', 'Yes', 0, '2023-06-19 07:34:35', '2023-06-19 07:34:35'),
(2200, 115, 'Security Type', 'Card Only', 0, '2023-06-19 07:34:35', '2023-06-19 07:34:35'),
(2201, 115, 'Payment Type', 'Credit Card & Cash', 0, '2023-06-19 07:34:35', '2023-06-19 07:34:35'),
(2202, 115, 'Free Cancellation', 'Yes', 0, '2023-06-19 07:34:35', '2023-06-19 07:34:35'),
(2203, 115, '24/7 Customer Service', 'Yes', 0, '2023-06-19 07:34:35', '2023-06-19 07:34:35'),
(2204, 115, 'Mileage Daily', 'KM 250', 0, '2023-06-19 07:34:35', '2023-06-19 07:34:35'),
(2205, 115, 'Price', '550', 0, '2023-06-19 07:34:35', '2023-06-19 07:34:35'),
(2206, 115, 'Deposit', '1000', 1, '2023-06-19 07:34:35', '2023-06-19 07:34:36');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_gallery_images`
--

CREATE TABLE `vehicle_gallery_images` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle_gallery_images`
--

INSERT INTO `vehicle_gallery_images` (`id`, `vehicle_id`, `image`, `created_at`, `updated_at`) VALUES
(362, 91, 'FiKcWXxCJxQN8E4lUIC1OxS11w6qVmapaej9oIQW.jpg', '2023-06-19 02:16:37', '2023-06-19 02:16:37'),
(363, 91, 'BGIEPQHEQ4wSC0MHUThKZdsOX4O9vhxbYV6xwMoy.jpg', '2023-06-19 02:16:37', '2023-06-19 02:16:37'),
(364, 91, '7uLO5A4S05kCJEAJkn6RWmDEohCxmLM8QXckbkZa.jpg', '2023-06-19 02:16:37', '2023-06-19 02:16:37'),
(365, 91, 'mngzR8MkkvrDqLOibaOZbjef7lQvJEbk87P9XVbR.jpg', '2023-06-19 02:16:37', '2023-06-19 02:16:37'),
(366, 91, 'zdRJomx7kmOIXCw2pBwbwrhIjhLSunZkStOADYvl.jpg', '2023-06-19 02:16:37', '2023-06-19 02:16:37'),
(367, 91, 'yVq6lgSEVl3m2oPQe8ufTEybHXxFqg78vlpiXrnZ.jpg', '2023-06-19 02:16:37', '2023-06-19 02:16:37'),
(368, 91, 'Bidzmy6vd1cegBvVsfpK7xpt4N2kt9Yi6DdEnT5o.jpg', '2023-06-19 02:16:37', '2023-06-19 02:16:37'),
(369, 92, 'vo8z52HHJgORIQtH5fE8hloyitCGehDGdQXNq8Qy.jpg', '2023-06-19 05:50:58', '2023-06-19 05:50:58'),
(370, 92, 'AnKzDJq7rqSuvak9N4iJez6ztyJehzGh0F0qDOPz.jpg', '2023-06-19 05:50:58', '2023-06-19 05:50:58'),
(371, 92, 'k47Dn45H4JHX5H0b5PR0Memny0p6n7QA6tFQNSfT.jpg', '2023-06-19 05:50:58', '2023-06-19 05:50:58'),
(372, 92, '4zt7MnUOJo5AUl6wPuDq9mgMfKTE0pCmnXtjiAdL.jpg', '2023-06-19 05:50:58', '2023-06-19 05:50:58'),
(373, 92, 'Ch2Wn4vKBOEQrkVJBOfY7MmQ8OJrGGzISmEglntZ.jpg', '2023-06-19 05:50:58', '2023-06-19 05:50:58'),
(374, 92, 'thV62zVOvPHo1hkAUmUZkOqDeznsFWZMCVWSNzWt.jpg', '2023-06-19 05:50:58', '2023-06-19 05:50:58'),
(375, 93, 'GTimgZT8OXkRo4GelFI5bYg6gbVwVqoSgjuuGGe6.jpg', '2023-06-19 05:54:25', '2023-06-19 05:54:25'),
(376, 93, 'IQ16ktoZu4HuKwKVc3x1XIu9LYAEiGqOgckGi6nK.jpg', '2023-06-19 05:54:25', '2023-06-19 05:54:25'),
(377, 93, '3XDwXWHATThzl03enjAgaa1RYdNsIJVEMfIcRVaI.jpg', '2023-06-19 05:54:25', '2023-06-19 05:54:25'),
(378, 93, 'D40yS0SQK31QWw1VOiVLJgUJZVuWWYkaTgyXdrHn.jpg', '2023-06-19 05:54:25', '2023-06-19 05:54:25'),
(379, 93, 'cXGXL6xzVD8oCCGLMAomfoafIRvA0WT4AvuI0azS.jpg', '2023-06-19 05:54:25', '2023-06-19 05:54:25'),
(380, 93, 'wBOvw1WlD3ybGpFPU2ODW0mM9aYnRUiz4Rdd06Pf.jpg', '2023-06-19 05:54:26', '2023-06-19 05:54:26'),
(381, 94, '6RNw9Y0347oVQrgS6tXTOWnxfH8qjrigkOk3rG7n.jpg', '2023-06-19 05:57:34', '2023-06-19 05:57:34'),
(382, 94, 'qAVpfkuSyWdRn7fCrdCzOhxyqoaSMGKfHnsYG1uz.jpg', '2023-06-19 05:57:34', '2023-06-19 05:57:34'),
(383, 94, 'tkVMSX6Xk80ZrtLEmrk7AMX8s5ItjGKyjbdOTPkZ.jpg', '2023-06-19 05:57:34', '2023-06-19 05:57:34'),
(384, 94, 'RgFUjcjh2kHtO5HDGDrsLXdxujzE2DkhjVDUmglm.jpg', '2023-06-19 05:57:34', '2023-06-19 05:57:34'),
(385, 94, '828qpjagVYl6XQccDF1Ke9pQfCrWWKR4Yeg5DJ2s.jpg', '2023-06-19 05:57:34', '2023-06-19 05:57:34'),
(386, 94, 'OWx24qaneUGKXoqvGdXeWlAraI6FH0F4MYikGa7f.jpg', '2023-06-19 05:57:34', '2023-06-19 05:57:34'),
(387, 94, '6vy9c3G47GVzVJtEScBbarWinutJlFxpvt19kEIG.jpg', '2023-06-19 05:57:34', '2023-06-19 05:57:34'),
(388, 95, 'WUbcapYvXv52WmQbCk19vSiuxFLLCzUo8ejk2zHF.jpg', '2023-06-19 06:01:32', '2023-06-19 06:01:32'),
(389, 95, '2Ca9RhTCrNWjvdPdjwulMAIO3FBPR75e2eD1Dz9O.jpg', '2023-06-19 06:01:32', '2023-06-19 06:01:32'),
(390, 95, 'p6JFZi6Lp5e8Bb26OEPFfVSe25zfBdDHPJtJjsQp.jpg', '2023-06-19 06:01:32', '2023-06-19 06:01:32'),
(391, 95, 'm0xHO6Q6JXqy9FAY8tkQol6er8Dlw4bvjnzwZ9d0.jpg', '2023-06-19 06:01:32', '2023-06-19 06:01:32'),
(392, 95, 'z4bAwzWgtn8sUlbUGLl52eIFyMeEpc57zvXXSO8X.jpg', '2023-06-19 06:01:32', '2023-06-19 06:01:32'),
(393, 95, '9QtLFtjqIbEaF2n5Hiax6fRd3P4GmBU8cUN83MGL.jpg', '2023-06-19 06:01:32', '2023-06-19 06:01:32'),
(394, 95, 'kp72z3Lg9qKVkksKmU73tG0e5SylehmY9qjjbT0y.jpg', '2023-06-19 06:01:32', '2023-06-19 06:01:32'),
(395, 96, 'UOOtCkL5dsFNrXAXz2VjNTily8tEzhQXKufQ4FWv.jpg', '2023-06-19 06:05:48', '2023-06-19 06:05:48'),
(396, 96, 'mVWEyhQ0Vok29Mvenrwt2UMRyV5GIlmfoIskSjbu.jpg', '2023-06-19 06:05:48', '2023-06-19 06:05:48'),
(397, 96, 'YLfU7xDlzXHbhC8r9RUAKLvC9LyvH2kFK7wzInE6.jpg', '2023-06-19 06:05:48', '2023-06-19 06:05:48'),
(398, 96, 'XG7nV5QWvE42xANmbKSRfylHgIQmPMki4rbaZSrG.jpg', '2023-06-19 06:05:49', '2023-06-19 06:05:49'),
(399, 97, 'AfJYvV5yANpZAsevGHi1CScTmQtb2gfpgB6sSDZq.jpg', '2023-06-19 06:14:45', '2023-06-19 06:14:45'),
(400, 97, 'g8V1WAvbtbwShFbPJb5GS4JVt461OinjfKsIxQ1y.jpg', '2023-06-19 06:14:45', '2023-06-19 06:14:45'),
(401, 97, 'upztPCsjazSvrDkxrHoRZdo7bcdTR2GJj9mK4QW0.jpg', '2023-06-19 06:14:45', '2023-06-19 06:14:45'),
(402, 97, 'j1zzyhErso3lfmcV9OnAu9dej3Lbwn8HdQ3m0woh.jpg', '2023-06-19 06:14:46', '2023-06-19 06:14:46'),
(403, 97, 'U2KWiPn5VgpzU9TaS9x3RFSeIvKk9RPk2yG38owI.jpg', '2023-06-19 06:14:46', '2023-06-19 06:14:46'),
(404, 98, '3J740KV7E5ns3AH9hdSnqsj2eItY5Y1lC5bWN2nC.jpg', '2023-06-19 06:23:24', '2023-06-19 06:23:24'),
(405, 98, 'SI8xVHNgSfvCBDXFmKagRPKGdKoyG7dpwIXJLGxi.jpg', '2023-06-19 06:23:24', '2023-06-19 06:23:24'),
(406, 98, '5EuElY6o8KCVcsG7iIOdocQc0jUvIKgAdupw2d5M.jpg', '2023-06-19 06:23:25', '2023-06-19 06:23:25'),
(407, 98, 'dmQaDUK55tKOqSGhOhGq838g75UreQHxO3uQqF1N.jpg', '2023-06-19 06:23:25', '2023-06-19 06:23:25'),
(408, 98, '1mNGZt78f0Nl83UEcYKyxLVIEqMqkmLczyUHAaJK.jpg', '2023-06-19 06:23:25', '2023-06-19 06:23:25'),
(409, 98, '5hoREAQLXKrCRS7pVRw9kUaVZOv40IMpQBV5YzgK.jpg', '2023-06-19 06:23:25', '2023-06-19 06:23:25'),
(410, 99, 'utW5XEabY0XKJxCSkX8Pti8xILSPPMRlJlQyuUto.jpg', '2023-06-19 06:27:11', '2023-06-19 06:27:11'),
(411, 99, 'sZjMkreEra96CQM1oK8iefISUQa6sTeQoaMMOFtm.jpg', '2023-06-19 06:27:11', '2023-06-19 06:27:11'),
(412, 99, 'dbi3aX9EuTWdLN1lQGEnXtJ8jZyA4aHTPB5GIXVE.jpg', '2023-06-19 06:27:11', '2023-06-19 06:27:11'),
(413, 99, 'tGFERqCAsyB9m5csjuFgqYxPSv1t8tOlvhWwoZYd.jpg', '2023-06-19 06:27:11', '2023-06-19 06:27:11'),
(414, 100, 'yQZeTA5MagT7pVrl7tZZyCbTPUAJ3RPEYvE5eVIC.jpg', '2023-06-19 06:31:09', '2023-06-19 06:31:09'),
(415, 100, 'zV9Y2MhAUuQ5pF06Aj0Tk9eOZUVK1sc0qVPBxAJU.jpg', '2023-06-19 06:31:09', '2023-06-19 06:31:09'),
(416, 100, '1IwkbUHSVWkzPl7QdSa669oVNQ1n4XVVAuUblKrR.jpg', '2023-06-19 06:31:10', '2023-06-19 06:31:10'),
(417, 100, 'V8yo1RozKUAsqQoYB4TWHX06cyutBitXxGd8iXdl.jpg', '2023-06-19 06:31:10', '2023-06-19 06:31:10'),
(418, 100, 'YmqJhj4ph7dV43JvaPEuUGHvDhg8y0E3DZkvKUXI.jpg', '2023-06-19 06:31:10', '2023-06-19 06:31:10'),
(419, 100, '1vj7eGefOWGLchQbLW1ZbWUysj26Y4M9tVpjf2yI.jpg', '2023-06-19 06:31:10', '2023-06-19 06:31:10'),
(420, 100, 'DIk73dB0UiDRUMMXHawQoVgJHcIHrLg6q9ItBdQK.jpg', '2023-06-19 06:31:10', '2023-06-19 06:31:10'),
(421, 101, '6IxoUJSwAezN1b8KPA2bEBf97TJvppy1f6Cw1tdI.jpg', '2023-06-19 06:33:57', '2023-06-19 06:33:57'),
(422, 101, '04IVFzdtwIrybsmVITv8foH9xkWA88qpEgpLfZ3a.jpg', '2023-06-19 06:33:57', '2023-06-19 06:33:57'),
(423, 101, 'aD628HAg19JOq1rPP47mfu3YxilTH1xVHpwyb5yr.jpg', '2023-06-19 06:33:57', '2023-06-19 06:33:57'),
(424, 101, 'TXQVrgKylaJW3TtzTbG6wtPIWMoOmwwCJ4qYMf30.jpg', '2023-06-19 06:33:57', '2023-06-19 06:33:57'),
(425, 101, 'RGJhdRC65sIYPEys2m2ti20tamO1534A1HO3OYPL.jpg', '2023-06-19 06:33:57', '2023-06-19 06:33:57'),
(426, 102, 'HbmwJBibm2O5H8NBifJW7mgGpJ9nrUUQ0IRoIYNt.jpg', '2023-06-19 06:38:26', '2023-06-19 06:38:26'),
(427, 102, 'pNEKoDcqokVqZG2h8qPP8FxGY4x42mk0izNmnnHG.jpg', '2023-06-19 06:38:26', '2023-06-19 06:38:26'),
(428, 102, 'xofZoXRdh5bXS16urnkTwfzFUyIa66fo6pwsI4QO.jpg', '2023-06-19 06:38:26', '2023-06-19 06:38:26'),
(429, 102, 'VvZSJU4XtqQ8MoAa9tVDbheHPFlwuzlPi80RmVAd.jpg', '2023-06-19 06:38:26', '2023-06-19 06:38:26'),
(430, 102, 'zDp4ZKxMJbx08XvV15isw0BiFYs0TbsxxTyj3dRQ.jpg', '2023-06-19 06:38:26', '2023-06-19 06:38:26'),
(431, 102, '3TdUa5gYZxmR11tcCKbldKIK5wDuZuhEFydbMtyG.jpg', '2023-06-19 06:38:26', '2023-06-19 06:38:26'),
(432, 102, 'wRvGQ6DM2STQBJPgWDjxZoVPD8z1FFayArGMpjx9.jpg', '2023-06-19 06:38:26', '2023-06-19 06:38:26'),
(433, 102, 'SgB7bFMJekcUgYRtekvIyOgLWqaoqMtN2CnkaYiU.jpg', '2023-06-19 06:38:26', '2023-06-19 06:38:26'),
(434, 103, 'HosmoJBXX0Zhb7HXZZN2cqNiFHBqoWdzcPMiQYW0.jpg', '2023-06-19 06:42:43', '2023-06-19 06:42:43'),
(435, 103, 'JxcwI7Hx71VLFtlDAbyptoWcSlHaqbgMDAvJRt6s.jpg', '2023-06-19 06:42:43', '2023-06-19 06:42:43'),
(436, 103, 'dBzixTlS11I0zYFnYsqs7SJFTkYmeZXJI79PvIbo.jpg', '2023-06-19 06:42:44', '2023-06-19 06:42:44'),
(437, 103, 'TNEgZ8NdPSLlsMH9jUpa6WkbybQKL2RK2VclwEe1.jpg', '2023-06-19 06:42:44', '2023-06-19 06:42:44'),
(438, 103, 'jBCG90HViQiamkkrdqx2l3U0UkZNPjHoBSev3LAa.jpg', '2023-06-19 06:42:44', '2023-06-19 06:42:44'),
(439, 103, 'BnMs2s7GlnGJhT8i52xO9Xmcv7QhlcblxredXUvk.jpg', '2023-06-19 06:42:44', '2023-06-19 06:42:44'),
(440, 104, 'GWxd14ezk5Oiyot1Mh6MCbjKXNkroeah6FUdPRdQ.jpg', '2023-06-19 06:46:59', '2023-06-19 06:46:59'),
(441, 104, 'YyB2W8U3LAYXlgwin7S9Ol1CVaW9m6Vh2TPLFvwC.jpg', '2023-06-19 06:47:00', '2023-06-19 06:47:00'),
(442, 104, 'RlB6T43hccE5qV16IOHZTSdMyGYJhwmQ8lyphbfg.jpg', '2023-06-19 06:47:00', '2023-06-19 06:47:00'),
(443, 104, 'jmodGnUM9bc4LJC74v80vatFyi0FjbHm8aEEk49j.jpg', '2023-06-19 06:47:00', '2023-06-19 06:47:00'),
(444, 104, 'Wz0zYm0nowvLTmaEUDUj5CVdeQHEjCv4jaJ2Bitw.jpg', '2023-06-19 06:47:00', '2023-06-19 06:47:00'),
(445, 104, '3mf8ESCURPpZRmnfVar3Fo17XXQQmK8HKmv0JxfO.jpg', '2023-06-19 06:47:00', '2023-06-19 06:47:00'),
(446, 105, 't7VgVYc614tp03gUjEGDsPFop5EpoC7eY9anwDWS.jpg', '2023-06-19 06:50:22', '2023-06-19 06:50:22'),
(447, 105, 'bwri1vZeHZG1vVvq2sKF5LCFOnGomow09mYxExas.jpg', '2023-06-19 06:50:22', '2023-06-19 06:50:22'),
(448, 105, 'syy9AzqVgmpqTAXQfRz2KnFbxjFEsIf1gSiafyOl.jpg', '2023-06-19 06:50:22', '2023-06-19 06:50:22'),
(449, 105, 'XuazsjV49zMzsNvvUnUnrcFzqjW1FaJ4XaUSFsD4.jpg', '2023-06-19 06:50:22', '2023-06-19 06:50:22'),
(450, 105, '3foeQkG8p7h8MoJ4qmuLhKC1JhnT7uULfv7yXDJv.jpg', '2023-06-19 06:50:22', '2023-06-19 06:50:22'),
(451, 105, 'ox24bvN66iIL47ws7Ihnq0nYKYQXQbn6VDdSEFjk.jpg', '2023-06-19 06:50:22', '2023-06-19 06:50:22'),
(452, 106, 'wqQLhWam4G2EQzApNk7RH1nRu2PB4y0Nn4CARwyE.jpg', '2023-06-19 06:55:42', '2023-06-19 06:55:42'),
(453, 106, 'Cp74gzrpCJtdN1q8ts40nbCBjnkKmS779R9VBA80.jpg', '2023-06-19 06:55:43', '2023-06-19 06:55:43'),
(454, 106, 'fNoprvVLynHGN7CyDNsyFy7a6aZ689rmCh6orzDN.jpg', '2023-06-19 06:55:43', '2023-06-19 06:55:43'),
(455, 106, 'yAX7VJN8yjAAtzHl05GAsm8QfDr4LfBVQwwAKTmt.jpg', '2023-06-19 06:55:43', '2023-06-19 06:55:43'),
(456, 107, 'ovx3bkbUJVbwWGdojp7b5mRJUT16O3GfFyJKPSqt.jpg', '2023-06-19 07:00:56', '2023-06-19 07:00:56'),
(457, 107, 'FSmyU5uKaQ3CcCCPlVXd2sAeAqwrdw4OveV4wfCE.jpg', '2023-06-19 07:00:56', '2023-06-19 07:00:56'),
(458, 107, 'KNGWxrngQVRvbeLNWqbbwX2agA8pVJrAbg3ixz4u.jpg', '2023-06-19 07:00:56', '2023-06-19 07:00:56'),
(459, 107, 'AOBkEh3MfolgkFinpYjzhX5czFkFDfwaYNEct2Uc.jpg', '2023-06-19 07:00:56', '2023-06-19 07:00:56'),
(460, 108, 'VWoXc9C3BI9gGIxSIpOf70DDzNoIh1AcLLvBXoJW.jpg', '2023-06-19 07:04:19', '2023-06-19 07:04:19'),
(461, 108, 'jj8wtFizSkvnzJ1VbfpfTL4kek45XkDUH2MJzLIA.jpg', '2023-06-19 07:04:19', '2023-06-19 07:04:19'),
(462, 108, 'rC6A6KvaBxoQNfvPHM01oBaYbJOvrHGB24oacsTZ.jpg', '2023-06-19 07:04:19', '2023-06-19 07:04:19'),
(463, 108, 'ppMbKyxLw0ACxU4grimtB15temiRzkzEcNYl2LXv.jpg', '2023-06-19 07:04:19', '2023-06-19 07:04:19'),
(464, 108, 'TeBl098OWdHj467DWIzTWugyIV5wMxu7laArrZYB.jpg', '2023-06-19 07:04:19', '2023-06-19 07:04:19'),
(465, 109, 'u2nUhXhOkaawOzYPuDzlG7awYXeZjkaTULI6F0V9.jpg', '2023-06-19 07:10:01', '2023-06-19 07:10:01'),
(466, 109, 'A3lSblbMRvREGi40Sv4jFs8c1iwkhxemiKmOJ29B.jpg', '2023-06-19 07:10:01', '2023-06-19 07:10:01'),
(467, 109, 'IZBOsSSZJLVoUlublRGDolY8vX4Ndt6DhZyfxfBH.jpg', '2023-06-19 07:10:01', '2023-06-19 07:10:01'),
(468, 109, 'o3JLGtTaqaxSaFjaBCaLAwepguRwt0vrt1T5eKub.jpg', '2023-06-19 07:10:02', '2023-06-19 07:10:02'),
(469, 109, 'gcG52J283pAqITdZS0fk1ABMyOlCOzpQXydlztom.jpg', '2023-06-19 07:10:02', '2023-06-19 07:10:02'),
(470, 109, 'RSWTAI1G9zMtpTtkNFQVYo3uSU5g9sIEVZ1fmK9o.jpg', '2023-06-19 07:10:02', '2023-06-19 07:10:02'),
(471, 109, 'Lt9FNWmNpHR5J8e4g9ml3zXDR8ovCYdAsnknHmxI.jpg', '2023-06-19 07:10:02', '2023-06-19 07:10:02'),
(472, 110, 'JRvCeQlhBgBWNsXiqeSuWxsvyjgJSdxcFcbI6QhH.jpg', '2023-06-19 07:17:01', '2023-06-19 07:17:01'),
(473, 110, 'GE550PUV28j5cZO6ISBPsKZEiwXAj2vfLLADt6Av.jpg', '2023-06-19 07:17:01', '2023-06-19 07:17:01'),
(474, 110, 'xFTZh5It9FJatgruK9KkvEST1sI0CttwC7zzakLo.jpg', '2023-06-19 07:17:01', '2023-06-19 07:17:01'),
(475, 110, 'omYYUt7dZv2xw7PvCMxRR6Pys9IdDd0wtXqQAVOt.jpg', '2023-06-19 07:17:01', '2023-06-19 07:17:01'),
(476, 111, 'lePK00hdha34rfDqZhdDAr3lbL543H8cvet6OeUr.jpg', '2023-06-19 07:19:54', '2023-06-19 07:19:54'),
(477, 111, 'gdh6qhut1Ad9SdTm8Xw66HA4baXS6jtZLsqINPZ1.jpg', '2023-06-19 07:19:54', '2023-06-19 07:19:54'),
(478, 111, 'e4xF6GQObPAqDulBPIGcqb19hThBQ7cXvFoyl2hd.jpg', '2023-06-19 07:19:54', '2023-06-19 07:19:54'),
(479, 111, '8oWY77PCHbj2zVicnSexpdJlLHRmYDTRjYRkp3kW.jpg', '2023-06-19 07:19:54', '2023-06-19 07:19:54'),
(480, 112, 'FPBIHanaDLi8LjKwlIW0iWuVcT8Dxuuztac8Bx2v.jpg', '2023-06-19 07:22:56', '2023-06-19 07:22:56'),
(481, 112, 'WdUDoX101Wc35ZrAwDaZ5ooc70ozXkiBFrNN0vcT.jpg', '2023-06-19 07:22:56', '2023-06-19 07:22:56'),
(482, 112, 'wOULPVoEoy4gONm7PGhYWnAAJV66ax8P64yIrDTB.jpg', '2023-06-19 07:22:56', '2023-06-19 07:22:56'),
(483, 112, '0ue1BJbrnV6xsdduH4bHNm3yRlv1kHIrNg47V4GD.jpg', '2023-06-19 07:22:56', '2023-06-19 07:22:56'),
(484, 112, '4TunYPBz0ahBP4UVc0o7tCcP3i4i5QQlZsPGkMoy.jpg', '2023-06-19 07:22:56', '2023-06-19 07:22:56'),
(485, 112, 'DMghVYciRDMdgjrIZDjMGh1xwhtfmTikJ2I3mD2M.jpg', '2023-06-19 07:22:56', '2023-06-19 07:22:56'),
(486, 113, '0pgYliAEZaKuVXk8blhNdgrdoYFY2f0Mq4UlX0XD.jpg', '2023-06-19 07:27:03', '2023-06-19 07:27:03'),
(487, 113, 'DGUSyrUcU5pAKppvl4ocomHq5WsM0xXUEE0PuVFO.jpg', '2023-06-19 07:27:03', '2023-06-19 07:27:03'),
(488, 113, 'hzkRwgURmNrVC6bwB6uRSiiwd2CGJFp3kpkHv1Yf.jpg', '2023-06-19 07:27:03', '2023-06-19 07:27:03'),
(489, 114, 'QNUWeKihJka7sYhRvyZLQ6pjTGnIBMJwRXnTQuhw.jpg', '2023-06-19 07:31:11', '2023-06-19 07:31:11'),
(490, 114, 'm6GyquM3AblyUKUHTpRU36NPqHEKiKat01ex6YQS.jpg', '2023-06-19 07:31:11', '2023-06-19 07:31:11'),
(491, 114, 'BOaHSoXaSNzg9EUtJAn0J1ocWcAauFFa7oBN343e.jpg', '2023-06-19 07:31:11', '2023-06-19 07:31:11'),
(492, 115, 'R9aFx2Txu1Gsjo8f78vF3gUwof0RNdysT3QYF2E4.jpg', '2023-06-19 07:34:35', '2023-06-19 07:34:35'),
(493, 115, 'xLS48dDqsrU0VsUCdcr6Kpp4UcBFZ50obTAY64YX.jpg', '2023-06-19 07:34:35', '2023-06-19 07:34:35'),
(494, 115, 'uv5RBDLSitDOX7SmmXFZaWiQNePaWZDd3m13PNRF.jpg', '2023-06-19 07:34:35', '2023-06-19 07:34:35'),
(495, 115, 'D2J2kvrRk7xL2Pus8NchDluuE0FX5nxtSt6KbgbW.jpg', '2023-06-19 07:34:35', '2023-06-19 07:34:35'),
(496, 115, 'R0vgFIhIPlmToYNJPPftlpIVNadWsnQy6M3fsK2J.jpg', '2023-06-19 07:34:35', '2023-06-19 07:34:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands_home`
--
ALTER TABLE `brands_home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_services`
--
ALTER TABLE `our_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_features`
--
ALTER TABLE `vehicle_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_gallery_images`
--
ALTER TABLE `vehicle_gallery_images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `brands_home`
--
ALTER TABLE `brands_home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `our_services`
--
ALTER TABLE `our_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `vehicle_features`
--
ALTER TABLE `vehicle_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2207;

--
-- AUTO_INCREMENT for table `vehicle_gallery_images`
--
ALTER TABLE `vehicle_gallery_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=497;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
