-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2024 at 03:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

-- TESTTTT

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gigdbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_code` varchar(10) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `customer_phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_code`, `first_name`, `last_name`, `customer_phone`) VALUES
('C001', 'Zikri', 'Yusop', '013-654 6741'),
('C002', 'Jamal', 'Salleh', '011-987 6543'),
('C003', 'Zainal', 'Yassin', '014-567 8901'),
('C004', 'Farid', 'Kamil', '013-234 5678'),
('C005', 'Johny', 'Pekan', '017-876 5432'),
('C006', 'Ramlan', 'Foat', '016-789 0123'),
('C007', 'Fakhrul', 'Karim', '019-321 0987'),
('C008', 'Kasim', 'Setun', '015-432 1098'),
('C009', 'Tony', 'Najhan', '018-765 4321'),
('C010', 'Sufian', 'Syafiq', '010-123 4567');

-- --------------------------------------------------------

--
-- Table structure for table `gig`
--

CREATE TABLE `gig` (
  `gig_code` varchar(10) NOT NULL,
  `gig_name` varchar(255) DEFAULT NULL,
  `gig_date` date DEFAULT NULL,
  `gig_time` time DEFAULT NULL,
  `gig_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gig`
--

INSERT INTO `gig` (`gig_code`, `gig_name`, `gig_date`, `gig_time`, `gig_price`) VALUES
('GAN1001', 'All Night', '2023-05-15', '19:00:00', 20.00),
('GIA1007', 'Indie Acoustic', '2023-06-10', '19:00:00', 10.00),
('GML1005', 'Malam Akustik', '2023-07-20', '19:00:00', 40.00),
('GMM1008', 'Metal Madness', '2023-08-05', '22:00:00', 20.00),
('GPM1010', 'Punk Madness', '2023-09-12', '20:00:00', 15.00),
('GPN1002', 'Punk Night', '2023-05-20', '20:30:00', 25.00),
('GRH1004', 'Rock the Hall', '2023-07-10', '21:00:00', 35.00),
('GRH1006', 'Rock Fusion', '2023-09-02', '18:00:00', 50.00),
('GRV1009', 'Reggae Vibes', '2023-01-05', '21:00:00', 35.00),
('GSM1003', 'Santai Maa', '2023-10-18', '18:40:00', 30.00);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_code` varchar(10) NOT NULL,
  `ticket_code` varchar(10) DEFAULT NULL,
  `total_payment` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_code`, `ticket_code`, `total_payment`) VALUES
('P001', 'TCK001', 110.00),
('P002', 'TCK002', 135.00),
('P003', 'TCK003', 135.00),
('P004', 'TCK004', 225.00),
('P005', 'TCK005', 340.00),
('P006', 'TCK006', 120.00),
('P007', 'TCK007', 75.00),
('P008', 'TCK008', 205.00),
('P009', 'TCK009', 100.00),
('P010', 'TCK010', 120.00),
('P011', 'TCK011', 230.00),
('P012', 'TCK012', 65.00),
('P013', 'TCK013', 140.00),
('P014', 'TCK014', 180.00),
('P015', 'TCK015', 120.00),
('P016', 'TCK001', 90.00),
('P017', 'TCK002', 135.00),
('P018', 'TCK003', 195.00),
('P019', 'TCK004', 120.00),
('P020', 'TCK005', 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_code` varchar(10) NOT NULL,
  `customer_code` varchar(10) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_code`, `customer_code`, `price`) VALUES
('TCK001', 'C001', 10.00),
('TCK002', 'C002', 10.00),
('TCK003', 'C003', 15.00),
('TCK004', 'C004', 15.00),
('TCK005', 'C005', 20.00),
('TCK006', 'C006', 20.00),
('TCK007', 'C007', 25.00),
('TCK008', 'C008', 25.00),
('TCK009', 'C009', 30.00),
('TCK010', 'C010', 30.00),
('TCK011', 'C001', 35.00),
('TCK012', 'C002', 35.00),
('TCK013', 'C003', 40.00),
('TCK014', 'C004', 40.00),
('TCK015', 'C005', 45.00);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_order`
--

CREATE TABLE `ticket_order` (
  `order_code` varchar(10) NOT NULL,
  `gig_code` varchar(10) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `ticket_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket_order`
--

INSERT INTO `ticket_order` (`order_code`, `gig_code`, `quantity`, `ticket_code`) VALUES
('ORD0001', 'GAN1001', 5, 'TCK001'),
('ORD0002', 'GPN1002', 5, 'TCK002'),
('ORD0003', 'GSM1003', 4, 'TCK003'),
('ORD0004', 'GRH1004', 6, 'TCK004'),
('ORD0005', 'GML1005', 8, 'TCK005'),
('ORD0006', 'GRH1006', 2, 'TCK006'),
('ORD0007', 'GIA1007', 5, 'TCK007'),
('ORD0008', 'GMM1008', 9, 'TCK008'),
('ORD0009', 'GRV1009', 2, 'TCK009'),
('ORD0010', 'GPM1010', 6, 'TCK010'),
('ORD0011', 'GRH1006', 4, 'TCK011'),
('ORD0012', 'GIA1007', 3, 'TCK012'),
('ORD0013', 'GMM1008', 5, 'TCK013'),
('ORD0014', 'GRV1009', 4, 'TCK014'),
('ORD0015', 'GPM1010', 5, 'TCK015'),
('ORD0016', 'GML1005', 4, 'TCK001'),
('ORD0017', 'GRH1004', 5, 'TCK002'),
('ORD0018', 'GRH1006', 6, 'TCK003'),
('ORD0019', 'GPN1002', 3, 'TCK004'),
('ORD0020', 'GAN1001', 2, 'TCK005');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_code`);

--
-- Indexes for table `gig`
--
ALTER TABLE `gig`
  ADD PRIMARY KEY (`gig_code`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_code`),
  ADD KEY `ticket_code` (`ticket_code`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_code`),
  ADD KEY `customer_code` (`customer_code`);

--
-- Indexes for table `ticket_order`
--
ALTER TABLE `ticket_order`
  ADD PRIMARY KEY (`order_code`),
  ADD KEY `gig_code` (`gig_code`),
  ADD KEY `ticket_code` (`ticket_code`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`ticket_code`) REFERENCES `ticket` (`ticket_code`);

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`customer_code`) REFERENCES `customer` (`customer_code`);

--
-- Constraints for table `ticket_order`
--
ALTER TABLE `ticket_order`
  ADD CONSTRAINT `ticket_order_ibfk_1` FOREIGN KEY (`gig_code`) REFERENCES `gig` (`gig_code`),
  ADD CONSTRAINT `ticket_order_ibfk_2` FOREIGN KEY (`ticket_code`) REFERENCES `ticket` (`ticket_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
