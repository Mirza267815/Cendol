-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2021 at 02:52 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myshopdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_carts`
--

CREATE TABLE `tbl_carts` (
  `email` varchar(50) NOT NULL,
  `prid` varchar(10) NOT NULL,
  `qty` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_carts`
--

INSERT INTO `tbl_carts` (`email`, `prid`, `qty`) VALUES
('slumberjer@gmail.com', '50', 3),
('slumberjer@gmail.com', '49', 4),
('slumberjer@gmail.com', '45', 1),
('slumberjer@gmail.com', '46', 2),
('slumberjer@gmail.com', '43', 1),
('null', '63', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `prid` int(11) NOT NULL,
  `prname` varchar(30) NOT NULL,
  `prtype` varchar(30) NOT NULL,
  `prprice` double NOT NULL,
  `prqty` int(11) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `picture` varchar(30) NOT NULL,
  `created_timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`prid`, `prname`, `prtype`, `prprice`, `prqty`, `datecreated`, `picture`, `created_timestamp`) VALUES
(59, 'Cendol Small', 'Cendol Small Size', 2, 2, '2021-06-09 15:38:22', '60c06fee12e6c.png', '2021-06-09 07:38:22'),
(60, 'Cendol Siap', 'Cendol', 3.5, 2, '2021-06-09 15:48:08', '60c0723802d94.png', '2021-06-09 07:48:08'),
(61, 'isi besar', 'Cendol Large Size', 4, 2, '2021-06-09 16:12:56', '60c0780806851.png', '2021-06-09 08:12:56'),
(63, 'Cendol Besar', 'Cendol Large Size', 4, 2, '2021-06-10 11:00:48', '60c18060e993a.png', '2021-06-10 03:00:48'),
(64, 'double cendol', 'Cendol Large Size', 8, 2, '2021-06-10 14:54:26', '60c1b72251d3f.png', '2021-06-10 06:54:26'),
(65, 'cendol pulut', 'Cendol Large Size', 4, 1, '2021-06-10 15:00:54', '60c1b8a6ba256.png', '2021-06-10 07:00:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchased`
--

CREATE TABLE `tbl_purchased` (
  `orderid` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `paid` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_purchased`
--

INSERT INTO `tbl_purchased` (`orderid`, `email`, `paid`, `status`) VALUES
('uomc6n14', 'mirzatarp97@gmail.com', '8', 'paid'),
('jdutxf7r', 'mirzatarp97@gmail.com', '4', 'paid'),
('jdutxf7r', 'mirzatarp97@gmail.com', '4', 'paid'),
('jdutxf7r', 'mirzatarp97@gmail.com', '4', 'paid'),
('jdutxf7r', 'mirzatarp97@gmail.com', '4', 'paid'),
('jdutxf7r', 'mirzatarp97@gmail.com', '4', 'paid'),
('jdutxf7r', 'mirzatarp97@gmail.com', '4', 'paid'),
('w9qtm5nz', 'mirzatarp97@gmail.com', '8', 'paid'),
('tmqfhf4z', 'mirzatarp97@gmail.com', '4', 'paid'),
('s0ythii0', 'mirzatarp97@gmail.com', '16', 'paid'),
('jep00vku', 'mirzatarp97@gmail.com', '8', 'paid'),
('jep00vku', 'mirzatarp97@gmail.com', '8', 'paid'),
('busy71nl', 'mirzatarp97@gmail.com', '4', 'paid'),
('hekely5k', 'mirzatarp97@gmail.com', '8', 'paid'),
('av9pnzue', 'mirzatarp97@gmail.com', '3.5', 'paid'),
('g0vkpqly', 'mirzatarp97@gmail.com', '3.5', 'paid'),
('t00yqioc', 'mirzatarp97@gmail.com', '4', 'paid'),
('dvdpvd8q', 'mirzatarp97@gmail.com', '4', 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `email` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `school` int(150) NOT NULL,
  `password` int(40) NOT NULL,
  `otp` varchar(4) NOT NULL,
  `date_reg` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`email`, `phone`, `name`, `school`, `password`, `otp`, `date_reg`) VALUES
('ali97@gmail.com', '0125147212', 'ali', 0, 7, '1331', '2021-06-08 22:29:00.847693'),
('mirzata@gmail.com', '01111903234', 'mirzasatu', 0, 1496, '5481', '2021-06-10 11:10:35.410252'),
('mirzatarp97@gmail.com', '01111903234', 'Mirza', 0, 7, '9811', '2021-06-08 22:05:52.400483');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`prid`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `prid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
