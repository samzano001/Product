-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2022 at 02:37 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exampledb`
--

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `gender` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `style` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `gender`, `style`, `size`, `price`, `address`, `start_date`, `end_date`) VALUES
(1, 'Men', 'RED', 'XL', 400, '12/123', '2022-06-07', '2022-06-07'),
(2, 'Men', 'RED', 'XL', 400, '12/123', '2022-06-11', '2022-06-14'),
(3, 'Men', 'RED', 'XL', 400, '12/123', '2022-06-11', '2022-06-14'),
(4, 'Men', 'RED', 'XL', 400, '12/123', '2022-06-11', '2022-06-14'),
(5, 'Men', 'RED', 'XL', 400, '12/123', '2022-06-11', '2022-06-14'),
(6, 'Men', 'RED', 'XL', 400, '12/123', '2022-06-12', '2022-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `gender` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `style` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `gender`, `style`, `size`, `price`) VALUES
(1, 'Men', 'Plain color/Red', 'XS', 400),
(2, 'Men', 'Plain color/Red', 'S', 400),
(3, 'Men', 'Plain color/Red', 'M', 420),
(4, 'Men', 'Plain color/Red', 'L', 430),
(5, 'Men', 'Plain color/Red', 'XL', 450),
(6, 'Women', 'Plain color/Black', 'XS', 290),
(7, 'Women', 'Plain color/Black', 'S', 290),
(8, 'Women', 'Plain color/Black', 'M', 290),
(9, 'Women', 'Plain color/Black', 'L', 320),
(10, 'Women', 'Plain color/Black', 'XL', 320);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`name`) VALUES
('test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
