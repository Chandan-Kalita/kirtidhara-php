-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2022 at 07:43 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kritidhara`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
('1', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `total_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `total_stock`) VALUES
(14, 'Atta', 110),
(15, 'Mayda', 10),
(16, 'Tel', 90);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`tran_id`, `chalan_no`, `product_name`, `tran_type`, `qty`, `unit`, `date`) VALUES
(67, 'first', 'Atta', 'stock_in', 40, 'Pkt', '2022-02-17'),
(68, 'first', 'Mayda', 'stock_in', 100, 'Pkt', '2022-02-17'),
(69, 'first', 'Tel', 'stock_in', 80, 'Litr', '2022-02-17'),
(70, 'second', 'Atta', 'dispatch', 10, 'Pkt', '2022-02-17'),
(71, 'second', 'Mayda', 'dispatch', 20, 'Pkt', '2022-02-17'),
(72, 'second', 'Tel', 'dispatch', 50, 'Litr', '2022-02-17'),
(73, 'thired', 'Atta', 'stock_in', 70, 'Pkt', '2022-02-17'),
(74, 'thired', 'Mayda', 'stock_in', 20, 'Pkt', '2022-02-17'),
(75, 'thired', 'Tel', 'stock_in', 30, 'Litr', '2022-02-17'),
(76, 'thired', 'Tel', 'stock_in', 40, 'Litr', '2022-02-17'),
(77, 'fouth', 'Atta', 'stock_in', 10, 'Pkt', '2022-02-17'),
(78, 'fouth', 'Mayda', 'dispatch', 90, 'Pkt', '2022-02-17'),
(79, 'fouth', 'Tel', 'cancel', 10, 'Pkt', '2022-02-17'),
(80, 'fouth', 'Tel', 'damage', 10, 'Pkt', '2022-02-17'),
(81, 'fifth', 'Tel', 'damage', 10, 'Litr', '2022-02-17');

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `id` int(11) NOT NULL,
  `unit_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`id`, `unit_name`) VALUES
(5, 'Pkt'),
(6, 'Litr');

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
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `tran_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
