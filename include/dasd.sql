-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2023 at 08:02 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `aid` int(11) NOT NULL,
  `afname` varchar(100) NOT NULL,
  `alname` varchar(100) NOT NULL,
  `phone` char(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cnic` char(13) NOT NULL,
  `dob` date NOT NULL,
  `username` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`aid`, `afname`, `alname`, `phone`, `email`, `cnic`, `dob`, `username`, `gender`, `password`) VALUES
(5, 'laraib', 'akhtar', '03150100830', 'laraibakhtar40@gmail.com', '3530231218003', '2023-05-03', 'admin1', 'M', 'admin123'),
(14, 'laraib', 'akhtar', '16050920011', 'laraibakhtr40@gmail.com', '1234567890000', '2023-05-02', 'laraib', 'M', '12345678'),
(18, 'abdullah', 'naeem', '1160509201', 'abdullahnaeem@gmail.com', '3333333333333', '2023-05-10', 'abdullah', 'M', '12345678'),
(20, 'Qasim', 'Naveed', '03246491212', 'qasimnaveed@gmail.com', '3530230218003', '2000-02-16', 'Qasimzaps7', 'M', '987654321');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `aid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `cqty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order-details`
--

CREATE TABLE `order-details` (
  `oid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order-details`
--

INSERT INTO `order-details` (`oid`, `pid`, `qty`) VALUES
(17, 35, 5),
(18, 31, 1),
(19, 37, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `oid` int(11) NOT NULL,
  `dateod` date NOT NULL,
  `datedel` date DEFAULT NULL,
  `aid` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(100) NOT NULL,
  `account` char(16) DEFAULT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`oid`, `dateod`, `datedel`, `aid`, `address`, `city`, `country`, `account`, `total`) VALUES
(17, '2023-05-15', '2023-05-15', 14, 'Faisal town b block', 'Lahore', 'Pakistan', NULL, 375),
(18, '2023-05-15', '2023-05-15', 20, 'Johar Town Block A', 'Lahore', 'Pakistan', NULL, 130),
(19, '2023-05-15', '2023-05-15', 18, 'House32A,Model Town ', 'Lahore', 'Pakistan', '3120246834724793', 380);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `qtyavail` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `brand` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `pname`, `category`, `description`, `price`, `qtyavail`, `img`, `brand`) VALUES
(1, 'Ốp điện thoại Colorful cute things', 'PKDT', 'Ốp điện thoại Colorful cute things', 250, 10, 'p1.jpeg', 'VN'),
(2, 'ỐP LƯNG IPHONE NHIỀU MÀU IN HÌNH CUTE', 'PKDT', 'ỐP LƯNG IPHONE NHIỀU MÀU IN HÌNH CUTE', 370, 15, 'p2.jpeg', 'VN'),
(3, 'Ốp Lưng Điện Thoại Cặp Đôi CO-74 | Tất cả dòng điện thoại', 'PKDT', 'Ốp Lưng Điện Thoại Cặp Đôi CO-74 | Tất cả dòng điện thoại', 130, 19, 'p3.jpeg', 'VN'),
(4, 'HNSHIP.VN - Ốp Lưng Nơ Trong Suốt - PIGGY', 'PKDT', 'HNSHIP.VN - Ốp Lưng Nơ Trong Suốt - PIGGY', 230, 12, 'p4.jpeg', 'VN'),
(5, 'Ốp điện thoại trong suốt basic lưng cắt ngăn đa năng', 'PKDT', 'Ốp điện thoại trong suốt basic lưng cắt ngăn đa năng', 350, 7, 'p6.jpeg', 'VN'),
(6, 'Tai nghe Bluetooth AirPods Pro Gen 2 MagSafe Charge (USB-C) Apple MTJV3', 'Tai nghe', 'Tai nghe Bluetooth AirPods Pro Gen 2 MagSafe Charge (USB-C) Apple MTJV3', 160, 5, 'p6.jpeg', 'Apple'),
(7, 'Tai nghe Bluetooth thể thao SoundPEATS GoFree', 'Tai nghe', 'Tai nghe Bluetooth thể thao SoundPEATS GoFree', 75, 3, 'p7.jpeg', 'SoundPEATS'),
(8, 'Tai nghe bluetooth Sony WH-CH720N', 'Tai nghe', 'Tai nghe bluetooth Sony WH-CH720N', 550, 12, 'p8.jpeg', 'Sony'),
(9, 'Tai Nghe Bluetooth SoundCore R50i - A3949', 'Tai nghe', 'Tai Nghe Bluetooth SoundCore R50i - A3949', 380, 3, 'p9.jpeg', 'Anker'),
(10, 'Tai nghe bluetooth JBL Vibe 200tws / JBL Wave 200tws True Wireless', 'Tai nghe', 'Tai nghe bluetooth JBL Vibe 200tws / JBL Wave 200tws True Wireless', 270, 6, 'p10.jpeg', 'Samsung'),
(11, 'Sạc dự phòng kèm 4 dây cắm - Digital D109-D-1 10000mAh', 'Sạc dự phòng', 'Sạc dự phòng kèm 4 dây cắm - Digital D109-D-1 10000mAh', 470, 15, 'p11.jpeg', 'Pisen'),
(12, 'Pin sạc dự phòng Polymer 10000mAh 12W AVA+ DS609A', 'Sạc dự phòng', 'Pin sạc dự phòng Polymer 10000mAh 12W AVA+ DS609A', 140, 5, 'p12.jpeg', 'AVA+'),
(13, 'Pin Sạc Dự Phòng Mini Baseus Compact Fast Charging Power Bank Type-C Edition 5000mAh 20W', 'Sạc dự phòng', 'Pin Sạc Dự Phòng Mini Baseus Compact Fast Charging Power Bank Type-C Edition 5000mAh 20W', 160, 8, 'p13.jpeg', 'Baseus'),
(14, 'Sạc dự phòng Yoobao H5 50000mAh PD 20W', 'Sạc dự phòng', 'Sạc dự phòng Yoobao H5 50000mAh PD 20W', 140, 8, 'p14.jpeg', 'Yoobao'),
(15, 'Sạc dự phòng JSAUX 65W 20000mAh', 'Sạc dự phòng', 'Sạc dự phòng JSAUX 65W 20000mAh', 370, 4, 'p15.jpeg', 'JSAUX');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `oid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `rtext` varchar(1000) DEFAULT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`oid`, `pid`, `rtext`, `rating`) VALUES
(17, 35, ' a very good product nice and fast...', 4),
(18, 31, ' Very impressive. easy to use and properly weigh balanced!', 3),
(19, 37, ' Very easy to insert and use into PC. All the slots working correctly. Would recommend.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `aid` int(11) NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`aid`, `pid`) VALUES
(18, 35),
(18, 36);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`aid`),
  ADD UNIQUE KEY `cnic` (`cnic`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`aid`,`pid`),
  ADD KEY `cartfk2` (`pid`);

--
-- Indexes for table `order-details`
--
ALTER TABLE `order-details`
  ADD PRIMARY KEY (`oid`,`pid`),
  ADD KEY `orderdtfk2` (`pid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`oid`),
  ADD KEY `ordersfk` (`aid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`oid`,`pid`),
  ADD KEY `reviewsfk2` (`pid`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`aid`,`pid`),
  ADD KEY `wishlistfk2` (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cartfk1` FOREIGN KEY (`aid`) REFERENCES `accounts` (`aid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cartfk2` FOREIGN KEY (`pid`) REFERENCES `products` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order-details`
--
ALTER TABLE `order-details`
  ADD CONSTRAINT `orderdtfk1` FOREIGN KEY (`oid`) REFERENCES `orders` (`oid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderdtfk2` FOREIGN KEY (`pid`) REFERENCES `products` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `ordersfk` FOREIGN KEY (`aid`) REFERENCES `accounts` (`aid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviewsfk1` FOREIGN KEY (`oid`) REFERENCES `orders` (`oid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviewsfk2` FOREIGN KEY (`pid`) REFERENCES `products` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlistfk1` FOREIGN KEY (`aid`) REFERENCES `accounts` (`aid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wishlistfk2` FOREIGN KEY (`pid`) REFERENCES `products` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
