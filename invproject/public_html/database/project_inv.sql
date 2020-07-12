-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 09, 2019 at 02:07 PM
-- Server version: 5.7.23
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_inv`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `bid` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`bid`, `brand_name`, `status`) VALUES
(1, 'Samsung', '1'),
(13, 'ACER', '1'),
(14, 'Huawei', '1'),
(15, 'Microsoft Corporation', '1'),
(16, 'Adobe', '1'),
(17, 'Apple', '1'),
(18, 'Avira', '1'),
(19, 'Honor', '1'),
(20, 'OPPO', '1');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cid` int(11) NOT NULL,
  `parent_cat` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cid`, `parent_cat`, `category_name`, `status`) VALUES
(1, 0, 'Electronics', '1'),
(2, 0, 'Software', '1'),
(5, 1, 'Mobiles', '1'),
(9, 2, 'Antivirus', '1'),
(10, 0, 'Gadgets', '1'),
(12, 9, 'Norton', '1');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_no` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `order_date` date NOT NULL,
  `sub_total` double NOT NULL,
  `gst` double NOT NULL,
  `discount` double NOT NULL,
  `net_total` double NOT NULL,
  `paid` double NOT NULL,
  `due` double NOT NULL,
  `payment_type` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_no`, `customer_name`, `order_date`, `sub_total`, `gst`, `discount`, `net_total`, `paid`, `due`, `payment_type`) VALUES
(32, 'Arjun', '2018-01-03', 29000, 5220, 55, 34165, 34165, 0, 'Cash'),
(39, 'Kapoor & Son', '2018-01-03', 89500, 16110, 25, 105585, 105585, 0, 'Cash'),
(40, 'Ajay', '2018-01-03', 89000, 16020, 0, 105020, 105020, 0, 'Cash'),
(41, 'Jayanta', '2018-01-03', 89000, 16020, 0, 105020, 105020, 0, 'Cash'),
(42, 'Ajay Kant', '2018-01-03', 65500, 11790, 0, 77290, 77290, 0, 'Cash'),
(44, 'Tyson', '2018-01-03', 275000, 49500, 4950, 319550, 319550, 0, 'Cash'),
(46, 'KAUSHIK RANJAN', '2019-06-21', 29000, 5220, 0, 34220, 30000, 4220, 'Cash'),
(47, 'KAUSHIK RANJAN', '2019-06-21', 20000, 3600, 0, 23600, 20000, 3600, 'Cash'),
(48, 'KAUSHIK RANJAN', '2019-06-21', 20000, 3600, 0, 23600, 23600, 0, 'Cash'),
(49, 'Arvind Sir', '2019-06-21', 116500, 20970, 10, 137460, 100000, 37460, 'Cheque'),
(50, 'ABHISHEK KUMAR', '2019-06-23', 65000, 11700, 5, 76695, 76695, 0, 'Cash'),
(51, 'Arvind Sir', '2019-06-24', 620000, 111600, 5, 731595, 70000, 661595, 'Cash'),
(52, 'mausami', '2019-06-25', 125000, 22500, 5, 147495, 147000, 495, 'Cash'),
(53, 'gopal', '2019-06-25', 5000, 900, 0, 5900, 4000, 1900, 'Cash'),
(54, 'arvind sir', '2019-06-26', 190000, 34200, 5, 224195, 10000, 214195, 'Cash'),
(55, 'amit', '2019-06-28', 500, 90, 0, 590, 590, 0, 'Cash'),
(56, 'chandan kumar dubey', '2019-06-29', 60000, 10800, 0, 70800, 70000, 800, 'Cash'),
(57, 'KAUSHIK RANJAN', '2019-07-09', 41000, 7380, 5000, 43380, 43380, 0, 'Card'),
(58, 'Mausami', '2019-07-09', 37000, 6660, 0, 43660, 43660, 0, 'Cash'),
(59, 'Mausami', '2019-07-09', 65000, 11700, 10000, 66700, 66700, 0, 'Card');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `invoice_no`, `product_name`, `price`, `qty`) VALUES
(6, 32, 'Honor 9i', 29000, 1),
(24, 39, 'Samsung Galaxy S8', 60000, 1),
(25, 39, 'Honor 9i', 29000, 1),
(26, 39, 'Avira Antivirus', 500, 1),
(27, 40, 'Samsung Galaxy S8', 60000, 1),
(28, 40, 'Honor 9i', 29000, 1),
(29, 41, 'Samsung Galaxy S8', 60000, 1),
(30, 41, 'Honor 9i', 29000, 1),
(31, 42, 'Iphone 8', 65000, 1),
(32, 42, 'Avira Antivirus', 500, 1),
(36, 44, 'Honor 9i', 29000, 5),
(37, 44, 'Iphone 8', 65000, 2),
(40, 46, 'Honor 9i', 29000, 1),
(41, 47, 'HONOR PLAY', 20000, 1),
(42, 48, 'HONOR PLAY', 20000, 1),
(43, 49, 'Honor 9i', 29000, 4),
(44, 49, 'Avira Antivirus', 500, 1),
(45, 50, 'Iphone 8', 65000, 1),
(46, 51, 'Samsung Galaxy S8', 60000, 10),
(47, 51, 'HONOR PLAY', 20000, 1),
(48, 52, 'Iphone 8', 65000, 1),
(49, 52, 'Samsung Galaxy S8', 60000, 1),
(50, 53, 'Avira Antivirus', 500, 10),
(51, 54, 'Iphone 8', 65000, 2),
(52, 54, 'Samsung Galaxy S8', 60000, 1),
(53, 55, 'Avira Antivirus', 500, 1),
(54, 56, 'Samsung Galaxy S8', 60000, 1),
(55, 57, 'HONOR 20', 37000, 1),
(56, 57, 'Honor Band 4', 4000, 1),
(57, 58, 'HONOR 20', 37000, 1),
(58, 59, 'Iphone 8', 65000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` double NOT NULL,
  `product_stock` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `p_status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `cid`, `bid`, `product_name`, `product_price`, `product_stock`, `added_date`, `p_status`) VALUES
(15, 5, 1, 'Samsung Galaxy S8', 60000, 971, '2018-01-31', '1'),
(16, 5, 14, 'Honor 9i', 29000, 4980, '2018-01-31', '1'),
(17, 5, 17, 'Iphone 8', 65000, 1187, '2018-01-31', '1'),
(18, 9, 18, 'Avira Antivirus', 500, 2967, '2018-01-31', '1'),
(19, 5, 14, 'HONOR PLAY', 20000, 98, '2019-06-21', '1'),
(20, 10, 14, 'Honor Band 3', 2000, 50, '2019-06-21', '1'),
(21, 10, 14, 'Honor Band 4', 4000, 99, '2019-06-21', '1'),
(22, 5, 19, 'HONOR 20', 37000, 998, '2019-07-09', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `usertype` enum('Admin','Other') NOT NULL,
  `register_date` date NOT NULL,
  `last_login` datetime NOT NULL,
  `notes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `usertype`, `register_date`, `last_login`, `notes`) VALUES
(1, 'Rizwan', 'rizwan@gmail.com', '$2y$08$s11k9wKZWc4v6apSODUdveJufFxbE2Be7rP./uS49et7NrlhteFgK', 'Admin', '2017-12-23', '2018-03-01 04:03:17', ''),
(2, 'Test', 'rizwan1@gmail.com', '$2y$08$8j4aTDZiPZBb3rif4RV/teRFYx2Xv0p9F8CTW3blSafkEhXkMfaV6', 'Admin', '2017-12-23', '2017-12-24 11:12:57', ''),
(3, 'Rizwan', 'rizwankhan.august16@gmail.com', '$2y$08$NmqD7p7Qn7QkEG0/6Sa8v.YhNGo.J2zqfRRGrGRzg1EUlV.9O.M42', 'Admin', '2017-12-24', '2017-12-26 05:12:07', ''),
(4, 'Rizwan', 'rizwankhan@gmail.com', '$2y$08$FsjstZZh5dBNUf.5cZta3e.jZAyfK8pCFaO9AR0jIpQCswNR1bJve', 'Admin', '2017-12-24', '2017-12-25 06:12:18', ''),
(5, 'Imran Khan', 'imran@gmail.com', '$2y$08$KCqI3w9Q1kXFX0W.HDnIYODpMceE6AAbJgygBSQ3au8yZotMyXnCC', 'Admin', '2017-12-25', '2017-12-25 00:00:00', ''),
(6, 'Khan', 'khan@gmail.com', '$2y$08$/4PDGZrGbDPGPEYisj3HBOcaMxRRIBQ1UzHjHKdbzpVMDJJRLry6m', 'Admin', '2017-12-26', '2018-01-15 08:01:14', ''),
(7, 'John Smith', 'john.smith@gmail.com', '$2y$08$cTcxbttxHGTzy0FD3AVjr.m.aNL7p735YRplRiyKZB0kHAOpB9WI2', 'Admin', '2018-02-16', '2018-02-16 05:02:41', ''),
(8, 'Kaushik', 'kaushik.1181@gmail.com', '$2y$08$d8CPQzlV60kTtAusT.Rs3.IBGl262reIUKsnREyAArIlPNO7Nc7Z2', 'Admin', '2019-06-21', '2019-07-09 01:07:50', ''),
(9, 'guest', 'guest@gmail.com', '$2y$08$eQXSQJFQ2MvRIl26iZ./XubPnAcxR3/sk2XcyMlk8GPykZmjlgaTK', 'Other', '2019-06-21', '2019-06-21 01:06:18', ''),
(10, 'mausami', 'mausami@gmail.com', '$2y$08$DML7olUiTl/FCAa817VXx.1JO44izSBy7qlB7/z9sihp92/vI/gWG', 'Admin', '2019-06-21', '2019-06-21 11:06:01', ''),
(11, 'Mausami', 'mausami12@gmail.com', '$2y$08$AuqH/LNFqazQ0Z0JN0Ywy.Mva0CR4uVuhhkBHgEh.i.lgUn6GE.xy', 'Admin', '2019-07-09', '2019-07-09 01:07:21', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `brand_name` (`brand_name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_no`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_no` (`invoice_no`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `product_name` (`product_name`),
  ADD KEY `cid` (`cid`),
  ADD KEY `bid` (`bid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD CONSTRAINT `invoice_details_ibfk_1` FOREIGN KEY (`invoice_no`) REFERENCES `invoice` (`invoice_no`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `categories` (`cid`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`bid`) REFERENCES `brands` (`bid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
