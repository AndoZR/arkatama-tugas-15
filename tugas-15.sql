-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 21, 2023 at 12:12 PM
-- Server version: 8.0.30
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas-15`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'makanan baru'),
(2, 'makanan baru 2');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `category_id` int DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `category_id`, `price`, `quantity`, `description`, `created_at`, `updated_at`) VALUES
(3, '', NULL, 0.00, NULL, NULL, '2023-10-20 12:39:55', '2023-10-21 11:06:26'),
(5, 'iwak peyek', 2, 5000.00, 5, 'ini makanan', '2023-10-20 12:40:29', '2023-10-20 12:40:29'),
(7, 'iwak peyek123', 2, 5000.00, 5, 'ini makanan', '2023-10-21 11:03:48', '2023-10-21 11:03:48'),
(8, 'iwak peyek1232', 2, 5000.00, 5, 'ini makanan', '2023-10-21 11:04:19', '2023-10-21 11:04:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `avatar` varchar(255) DEFAULT 'default.jpg',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_admin` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `is_confirmed` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `is_deleted` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `avatar`, `created_at`, `updated_at`, `is_admin`, `is_confirmed`, `is_deleted`) VALUES
(1, 'newUser1', 'user1@example.com', '$2y$10$P6Aa4r6MF.WRSpjtS35wBu8F2gfZ/fL2h/EheKdiBENGbJMVLVTJS', 'default.jpg', '2023-10-19 14:49:41', NULL, 0, 0, 0),
(2, 'ando', 'ando@gmail.com', '$2y$10$OUZI.lkZ.bk1bGNW0H5KrOKfa.MOl9M43TvlUXKOBjn4MAuXm7bqm', 'default.jpg', '2023-10-20 09:09:54', NULL, 0, 0, 0),
(3, 'andobaru1', 'andobaru1@gmail.com', '$2y$10$rMl5OQRRhkHA93FAmqDU3.psDz2eb23mICPS0t9/k.HxO7s3NNTDm', 'default.jpg', '2023-10-20 13:39:35', NULL, 0, 0, 0),
(4, 'andobaru2', 'andobaru2@gmail.com', '$2y$10$BJLtTigeWcTL4kRugkIC7ufBnPRoJWRlzau1l.JJNQNIp6KW04aoq', 'default.jpg', '2023-10-21 07:27:02', NULL, 0, 0, 0),
(5, 'andobaru3', 'andobaru3@gmail.com', '$2y$10$noLvWTEbruZXC7rWLyZ.9urPsOzSp9c./1a2wfSyLVJFL5.u2Y1eq', 'default.jpg', '2023-10-21 07:28:57', NULL, 0, 0, 0),
(6, 'andobaru3ss', 'andobassru3@gmail.com', '$2y$10$.jBl5ScZY5bxsXzjrbH8SeJ3ctwIcRUZy/gPrgUC76QYri9jtkiBy', 'default.jpg', '2023-10-21 11:11:28', NULL, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
