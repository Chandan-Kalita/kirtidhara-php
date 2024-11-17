-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 15, 2024 at 02:48 PM
-- Server version: 10.11.9-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u574893702_kirtidhara_in2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `role`) VALUES
('', 'godown2user', 'root', 0),
('1', 'godown2admin', 'root', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `total_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `total_stock`) VALUES
(6, 'Chana Dal', 157),
(7, 'Kabli Chana', 60),
(8, 'Muri', 42),
(9, 'Maida', 79),
(12, 'milk', 264);

-- --------------------------------------------------------

--
-- Table structure for table `product_transaction`
--

CREATE TABLE `product_transaction` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `opening_stock` int(11) NOT NULL,
  `stock_in` int(11) NOT NULL,
  `dispatch` int(11) NOT NULL,
  `cancel` int(11) NOT NULL,
  `damage` int(11) NOT NULL,
  `closing` int(11) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_transaction`
--

INSERT INTO `product_transaction` (`id`, `product_name`, `opening_stock`, `stock_in`, `dispatch`, `cancel`, `damage`, `closing`, `date`) VALUES
(6, 'Chana Dal', 0, 40, 0, 0, 5, 40, '2022-02-19'),
(7, 'Kabli Chana', 0, 53, 0, 0, 3, 53, '2022-02-19'),
(8, 'Muri', 0, 28, 7, 0, 0, 21, '2022-02-19'),
(9, 'Maida', 0, 84, 0, 0, 4, 80, '2022-02-19'),
(11, 'milk', 0, 365, 55, 19, 65, 264, '2022-02-19'),
(12, 'Chana Dal', 0, 5, 0, 0, 5, 35, '2022-02-20'),
(13, 'Kabli Chana', 0, 20, 0, 0, 5, 65, '2022-02-20'),
(14, 'Chana Dal', 35, 90, 0, 32, 0, 157, '2022-03-01'),
(15, 'Kabli Chana', 65, 12, 22, 5, 0, 60, '2022-03-01'),
(16, 'Muri', 21, 32, 11, 0, 0, 42, '2022-03-01'),
(17, 'Maida', 80, 55, 56, 0, 0, 79, '2022-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `tran_id` int(11) NOT NULL,
  `chalan_no` varchar(255) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `tran_type` varchar(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`tran_id`, `chalan_no`, `product_name`, `tran_type`, `qty`, `unit`, `date`) VALUES
(59, 'sd3434', 'Dal', 'stock_in', 665, 'Pkt', '2022-02-19'),
(60, '112', 'product 1', 'dispatch', 30, 'Pkt', '2022-02-19'),
(61, 'sd3434', 'product 2', 'cancel', 50, 'Pkt', '2022-02-19'),
(62, '112', 'product 1', 'stock_in', 50, 'Pkt', '2022-02-19'),
(63, 'sd3434', 'prouct 3', 'stock_in', 60, 'Pkt', '2022-02-19'),
(64, '112', 'product 1', 'cancel', 3, 'Pkt', '2022-02-19'),
(65, 'sd3434', 'Dal', 'stock_in', 80, 'Pkt', '2022-02-19'),
(66, 'sd3434', 'product 2', 'damage', 5, 'Pkt', '2022-02-19'),
(67, '112', 'product 1', 'damage', 2, 'Pkt', '2022-02-19'),
(68, 'sd3434', 'product 2', 'cancel', 50, 'Pkt', '2022-02-19'),
(70, '561', 'Chana Dal', 'stock_in', 40, 'Pkt', '2022-02-19'),
(71, '561', 'Kabli Chana', 'stock_in', 52, 'Pkt', '2022-02-19'),
(72, '561', 'Muri', 'stock_in', 23, 'Pkt', '2022-02-19'),
(73, '561', 'Maida', 'stock_in', 84, 'Pkt', '2022-02-19'),
(76, '55', 'Muri', 'dispatch', 2, 'Pkt', '2022-02-19'),
(77, '55', 'Muri', 'dispatch', 5, 'Pkt', '2022-02-19'),
(78, '45', 'Kabli Chana', 'stock_in', 1, 'Pkt', '2022-02-19'),
(79, '45', 'Muri', 'stock_in', 5, 'Pkt', '2022-02-19'),
(87, '76', 'milk', 'stock_in', 365, 'Litr', '2022-02-19'),
(88, '76', 'milk', 'damage', 65, 'Litr', '2022-02-19'),
(89, '76', 'milk', 'dispatch', 55, 'Litr', '2022-02-19'),
(90, '76', 'milk', 'cancel', 19, 'Litr', '2022-02-19'),
(91, 'damage', 'Chana Dal', 'damage', 5, 'Pkt', '2022-02-20'),
(92, 'second', 'Chana Dal', 'stock_in', 5, 'Pkt', '2022-02-20'),
(93, '187', 'Kabli Chana', 'stock_in', 20, 'Pkt', '2022-02-20'),
(94, '187', 'Kabli Chana', 'damage', 5, 'Pkt', '2022-02-20'),
(95, 'kjj', 'Chana Dal', 'stock_in', 90, 'Pkt', '2022-03-01'),
(96, 'kjj', 'Kabli Chana', 'stock_in', 12, 'Pkt', '2022-03-01'),
(97, 'kjj', 'Muri', 'stock_in', 32, 'Pkt', '2022-03-01'),
(98, 'kjj', 'Maida', 'stock_in', 55, 'Pkt', '2022-03-01'),
(99, 'kjj', 'Maida', 'dispatch', 12, 'Pkt', '2022-03-01'),
(100, 'kjj', 'Kabli Chana', 'dispatch', 22, 'Pkt', '2022-03-01'),
(101, 'kjj', 'Muri', 'dispatch', 11, 'Pkt', '2022-03-01'),
(102, 'kjj', 'Maida', 'dispatch', 44, 'Pkt', '2022-03-01'),
(103, 'kjj', 'Chana Dal', 'cancel', 32, 'Pkt', '2022-03-01'),
(104, 'kjj', 'Kabli Chana', 'cancel', 5, 'Pkt', '2022-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `id` int(11) NOT NULL,
  `unit_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id`, `unit_name`) VALUES
(5, 'Pkt'),
(6, 'Litr'),
(7, 'KG'),
(8, 'abc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_transaction`
--
ALTER TABLE `product_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`tran_id`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_transaction`
--
ALTER TABLE `product_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `tran_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
