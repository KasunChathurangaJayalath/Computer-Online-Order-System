-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2022 at 02:17 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `white_com_computers`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`user_id`, `username`, `password`, `name`, `email`) VALUES
(1, 'admin', 'adminsandun123', 'admin', 'kasunchathu511@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'SAMSUNG'),
(3, 'APPLE'),
(4, 'ACER'),
(5, 'ASUS'),
(6, 'MSI'),
(7, 'DELL'),
(8, 'LENOVO'),
(9, 'BENQ'),
(10, 'VIEWSONIC '),
(11, 'AMD'),
(12, 'INTEL'),
(13, 'ASROCK'),
(14, 'BIOSTAR '),
(15, 'GIGABYTE'),
(16, 'ZOTAC'),
(17, 'EVGA '),
(18, 'ADATA'),
(19, 'ADDLINK'),
(20, 'KINGSTON'),
(21, 'CORSAIR'),
(22, 'TEAM'),
(23, 'COOLER MASTER '),
(24, 'TOSHIBA'),
(25, 'NZXT'),
(26, 'FANTECH'),
(27, 'GAMEKM'),
(28, 'HYPERX'),
(29, 'LOGITEC'),
(30, 'SONICGEAR'),
(31, 'APPLE');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(38, 10, '::1', 27, 1),
(39, 9, '::1', 27, 1),
(60, 30, '::1', 29, 1),
(61, 36, '::1', 29, 1),
(62, 46, '::1', 29, 1),
(63, 57, '::1', 29, 1),
(64, 64, '::1', 29, 1),
(65, 72, '::1', 29, 1),
(66, 79, '::1', 29, 1),
(67, 86, '::1', 29, 1),
(68, 93, '::1', 29, 1),
(71, 115, '::1', 29, 1),
(88, 63, '127.0.0.1', -1, 1),
(89, 96, '127.0.0.1', -1, 1),
(90, 64, '127.0.0.1', -1, 1),
(112, 1, '::1', 26, 1),
(117, 7, '::1', 26, 1),
(118, 10, '::1', 26, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'LAPTOPS'),
(2, 'PC BUILDS'),
(3, 'MONITORS'),
(4, 'PROCESSORS'),
(5, 'MOTHERBOARDS'),
(6, 'GRAPHICS CARDS'),
(7, 'MEMORY (RAM)'),
(8, 'POWER SUPPLY & UPS'),
(9, 'STORAGE DRIVE'),
(10, 'COOLING & FANS'),
(11, 'PC CASE'),
(12, 'ACCESSORIES'),
(13, 'APPLE');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(10) NOT NULL,
  `cus_id` int(10) NOT NULL,
  `cus_email` varchar(255) NOT NULL,
  `posting_date` datetime NOT NULL,
  `feedback` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL,
  `order_date` varchar(100) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`, `order_date`) VALUES
(1, 24, 1, 1, '07M47684BS5725041', 'Completed', '2021-12-02 11:52:36'),
(2, 24, 3, 2, '07M47684BS5725041', 'Completed', '2021-12-02 11:52:36'),
(3, 24, 3, 1, '07M47684BS5725041', 'Completed', '2021-12-02 11:52:36'),
(4, 24, 1, 1, '07M47684BS5725041', 'Completed', '2021-12-02 11:52:36'),
(5, 24, 3, 2, '07M47684BS5725041', 'Completed', '2021-12-02 11:52:36'),
(6, 24, 4, 1, '07M47684BS5725041', 'Completed', '2021-12-02 11:52:36'),
(7, 26, 17, 1, '07M47684BS5725041', 'Completed', '2021-12-02 11:52:36'),
(8, 26, 6, 2, '07M47684BS5725041', 'Completed', '2021-12-02 11:52:36'),
(9, 26, 5, 1, '07M47684BS5725041', 'Completed', '2021-12-02 11:52:36'),
(10, 25, 3, 1, '07M47684BS5725041', 'Completed', '2021-12-02 11:52:36'),
(11, 25, 1, 1, '07M47684BS5725041', 'Completed', '2021-12-02 11:52:36'),
(12, 25, 10, 2, '07M47684BS5725041', 'Completed', '2021-12-02 11:52:36'),
(13, 26, 3, 1, '07M47684BS5725041', 'Completed', '2021-12-02 11:52:36'),
(14, 26, 1, 3, '07M47684BS5725041', 'Completed', '2021-12-02 11:52:36'),
(15, 29, 4, 2, '07M47684BS5725041', 'Completed', '2021-12-02 11:52:36'),
(16, 29, 1, 1, '07M47684BS5725041', 'Completed', '2021-12-02 11:52:36'),
(17, 26, 1, 1, '07M47684BS5725041', 'Completed', '2021-12-02 16:21:30'),
(18, 26, 4, 1, '07M47684BS5725041', 'Completed', '2021-12-02 16:21:30'),
(19, 26, 98, 2, '07M47684BS5725041', 'Completed', '2021-12-02 16:21:30'),
(20, 24, 1, 1, '07M47684BS5725041', 'Completed', '2021-12-03 02:56:22'),
(21, 24, 4, 1, '07M47684BS5725041', 'Completed', '2021-12-03 02:56:22'),
(22, 24, 3, 2, '07M47684BS5725041', 'Completed', '2021-12-03 02:56:22'),
(23, 25, 113, 2, '07M47684BS5725041', 'Completed', '2021-12-04 02:35:01'),
(24, 25, 31, 1, '07M47684BS5725041', 'Completed', '2021-12-04 02:35:01'),
(25, 25, 72, 3, '07M47684BS5725041', 'Completed', '2021-12-04 02:35:01'),
(26, 26, 109, 1, '07M47684BS5725041', 'Completed', '2021-12-04 10:27:52'),
(27, 26, 111, 1, '07M47684BS5725041', 'Completed', '2021-12-04 10:27:52'),
(28, 26, 99, 2, '07M47684BS5725041', 'Completed', '2021-12-04 10:27:52'),
(29, 26, 72, 1, '07M47684BS5725041', 'Completed', '2021-12-04 11:44:23'),
(30, 26, 87, 1, '07M47684BS5725041', 'Completed', '2021-12-04 11:44:23'),
(31, 26, 58, 2, '07M47684BS5725041', 'Completed', '2021-12-04 11:44:23'),
(32, 24, 1, 1, '07M47684BS5725041', 'Completed', '2021-12-04 23:06:23'),
(33, 24, 3, 1, '07M47684BS5725041', 'Completed', '2021-12-04 23:06:23'),
(34, 34, 1, 1, '07M47684BS5725041', 'Completed', '2021-12-06 12:01:47'),
(35, 34, 106, 1, '07M47684BS5725041', 'Completed', '2021-12-06 12:01:47'),
(36, 34, 107, 2, '07M47684BS5725041', 'Completed', '2021-12-06 12:01:47');

-- --------------------------------------------------------

--
-- Table structure for table `orders_info`
--

CREATE TABLE `orders_info` (
  `order_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` int(10) NOT NULL,
  `cardname` varchar(255) NOT NULL,
  `cardnumber` varchar(20) NOT NULL,
  `expdate` varchar(255) NOT NULL,
  `prod_count` int(15) DEFAULT NULL,
  `total_amt` int(15) DEFAULT NULL,
  `cvv` int(5) NOT NULL,
  `order_date` varchar(100) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_info`
--

INSERT INTO `orders_info` (`order_id`, `user_id`, `f_name`, `email`, `address`, `city`, `state`, `zip`, `cardname`, `cardnumber`, `expdate`, `prod_count`, `total_amt`, `cvv`, `order_date`) VALUES
(1, 24, 'Harsha Mithum', 'harshamithum@gmail.com', 'PasyalaNo /27/ D Radawadunna Pasyala', 'Pasyala', 'Karnataka', 560074, 'NSB', '1234432112234', '12/23', 2, 534999, 123, '2021-12-02 12:06:31'),
(2, 24, 'Harsha Mithum', 'harshamithum@gmail.com', 'PasyalaNo /27/ D Radawadunna Pasyala', 'Pasyala', 'Karnataka', 560074, 'NSB', '123457676', '12/23', 1, 209000, 243, '2021-12-02 12:06:31'),
(3, 24, 'Harsha Mithum', 'harshamithum@gmail.com', 'PasyalaNo /27/ D Radawadunna Pasyala', 'Pasyala', 'Karnataka', 560074, 'NSB', '2335455545454', '12/23', 3, 879999, 245, '2021-12-02 12:06:31'),
(4, 26, 'Shasini Pabasara', 'shasinibatti@gmail.com', 'PasyalaNo /27/ D Radawadunna Pasyala', 'Pasyala', 'Karnataka', 560074, 'NSB', '123567789898', '12/23', 3, 1034000, 345, '2021-12-02 12:06:31'),
(5, 25, 'Avisha Deshan', 'avishkadeshan@gmail.com', 'Nittambuwa', 'nittambuwa', 'Gampaha', 123454, 'HNB', '1345823409456', '03/23', 3, 585999, 123, '2021-12-02 12:06:31'),
(6, 26, 'Shasini Pabasara', 'shasinibatti@gmail.com', 'Kapugoda', 'Kapugoda', 'Gampaha', 123454, 'HNB', '16839725', '12/23', 2, 559997, 123, '2021-12-02 12:06:31'),
(7, 29, 'Shalani Nimsara', 'shalani@gmail.com', 'PasyalaNo /27/ D Radawadunna Pasyala', 'Pasyala', 'kapugoda', 560074, 'NSB', '123443232112234', '12/23', 2, 806999, 123, '2021-12-02 12:06:31'),
(8, 26, 'Shasini Pabasara', 'shasinibatti@gmail.com', 'PasyalaNo /27/ D Radawadunna Pasyala', 'Pasyala', 'Karnataka', 560074, 'NSB', '123456788765', '12/23', 3, 478999, 123, '2021-12-02 16:21:29'),
(9, 24, 'Harsha Mithum', 'harshamithum@gmail.com', 'No /27/ D Radawadunna Pasyala', 'Pasyala', 'Karnataka', 560074, 'NSB', '123456876455', '12/23', 3, 879999, 234, '2021-12-03 02:56:21'),
(10, 25, 'Avisha Deshan', 'avishkadeshan@gmail.com', 'PasyalaNo /27/ D Radawadunna Pasyala', 'Pasyala', 'Karnataka', 560074, 'NSB', '133468888768', '12/23', 3, 187000, 243, '2021-12-04 02:35:01'),
(11, 26, 'Shasini Pabasara', 'shasinibatti@gmail.com', 'PasyalaNo /27/ D Radawadunna Pasyala', 'Pasyala', 'Karnataka', 560074, 'NSB', '3435 665777 7', '12/23', 3, 113500, 345, '2021-12-04 10:27:51'),
(12, 26, 'Shasini Pabasara', 'shasinibatti@gmail.com', 'PasyalaNo /27/ D Radawadunna Pasyala', 'Pasyala', 'Karnataka', 560074, 'NSB', '23434353566', '11/12', 3, 85500, 234, '2021-12-04 11:44:22'),
(13, 24, 'Harsha Mithum', 'harshamithum@gmail.com', 'PasyalaNo /27/ D Radawadunna Pasyala', 'Pasyala', 'kapugoda', 560074, 'NSB', '4543 6566 6645 6556', '08/23', 2, 325999, 356, '2021-12-04 23:06:22'),
(14, 34, 'rgttyyty tyuyyyy', 'hawabawwa@gmail.com', 'PasyalaNo /27/ D Radawadunna Pasyala', 'Pasyala', 'Karnataka', 560074, 'NSB', '3245556657', '12/23', 3, 153999, 234, '2021-12-06 12:01:47');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_pro_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(15) DEFAULT NULL,
  `amt` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_pro_id`, `order_id`, `product_id`, `qty`, `amt`) VALUES
(1, 1, 1, 1, 116999),
(2, 1, 3, 2, 418000),
(3, 2, 3, 1, 209000),
(4, 3, 1, 1, 116999),
(5, 3, 3, 2, 418000),
(6, 3, 4, 1, 345000),
(7, 4, 17, 1, 132000),
(8, 4, 6, 2, 710000),
(9, 4, 5, 1, 192000),
(10, 5, 3, 1, 209000),
(11, 5, 1, 1, 116999),
(12, 5, 10, 2, 260000),
(13, 6, 3, 1, 209000),
(14, 6, 1, 3, 350997),
(15, 7, 4, 2, 690000),
(16, 7, 1, 1, 116999),
(17, 8, 1, 1, 116999),
(18, 8, 4, 1, 345000),
(19, 8, 98, 2, 17000),
(20, 9, 1, 1, 116999),
(21, 9, 4, 1, 345000),
(22, 9, 3, 2, 418000),
(23, 10, 113, 2, 8000),
(24, 10, 31, 1, 158000),
(25, 10, 72, 3, 21000),
(26, 11, 109, 1, 3000),
(27, 11, 111, 1, 4500),
(28, 11, 99, 2, 106000),
(29, 12, 72, 1, 7000),
(30, 12, 87, 1, 28500),
(31, 12, 58, 2, 50000),
(32, 13, 1, 1, 116999),
(33, 13, 3, 1, 209000),
(34, 14, 1, 1, 116999),
(35, 14, 106, 1, 6000),
(36, 14, 107, 2, 31000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_image2` text NOT NULL,
  `product_image3` text NOT NULL,
  `product_image4` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_qty` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_image2`, `product_image3`, `product_image4`, `product_keywords`, `product_qty`) VALUES
(1, 1, 4, 'ACER ASPIRE 5 A515 I3 11TH GEN ', 116999, 'Intel® Core™ i3-1115G4 (2.1GHz) 11th Gen 6MB L3\r\n 4GB DDR4-3200 SDRAM (1 x 4GB) Supports Up to 16GB\r\n Intel UHD 1960MB\r\n 1TB 5400RPM HDD Drive + SSD NVME M.2 Slot\r\n15.6\"Full HD IPS Display 1920x1080\r\n Dolby Digital Sounds\r\n Combo Audio Jack,Type C,USB 3.0,HDMI,Micro sd Reader\r\n Bluetooth 5.0, Fast Ethernet,Webcam,Duel Band Wireless\r\n Genuine Windows 10 Licence 64 Bit Licence\r\n 2 Year Comprehensive Warranty + 2 Year Service', '1638230583_ACER ASPIRE 5 A515 I3 11TH GEN 1.jpg', '1638230583_ACER ASPIRE 5 A515 I3 11TH GEN 2.jpg', '1638230583_ACER ASPIRE 5 A515 I3 11TH GEN 3.jpg', '1638230583_ACER ASPIRE 5 A515 I3 11TH GEN 4.jpg', 'LAPTOP', 15),
(3, 1, 4, 'ACER NITRO 5 2021 I5 11TH GEN LAPTOP ', 209000, 'ACER NITRO 5 2021 GAMING i5-11th GEN GTX 1650\r\nIntel Core i5-11300H PROCESSOR\r\n8GB DDR4 3200MHZ\r\n1TB (SATA) + 256GB NVME SSD\r\n15.6\" FHD (1920x1080), 144hz IPS Panel\r\nNVIDIA® GeForce GTX 1650, 4GB GDDR6\r\n4-zone RGB keyboard\r\n2.2 kg, 55WHrs\r\nFREE Predator Gaming Backpack', '1638237676_ACER NITRO 5 2021 I5 11TH GEN LAPTOP 2.jpg', '1638237676_ACER NITRO 5 2021 I5 11TH GEN LAPTOP 3.jpeg', '1638237676_ACER NITRO 5 2021 I5 11TH GEN LAPTOP 1.png', '1638237676_ACER NITRO 5 2021 I5 11TH GEN LAPTOP 4.jpg', 'LAPTOP', 5),
(4, 1, 4, 'ACER PREDATOR HELIOS 300 I7  ', 345000, 'Acer Predator Helios 300 Gaming Laptop, Intel Core i7-9750H, GeForce GTX 1660 Ti, 15.6\" Full HD 144Hz Display, 3ms Response Time, 16GB DDR4, 512GB PCIe NVMe SSD, RGB Backlit Keyboard, PH315-52-710B', '1638237895_ACER PREDATOR HELIOS 300 I7  1.jpeg', '1638237895_ACER PREDATOR HELIOS 300 I7  3.jpg', '1638237895_ACER PREDATOR HELIOS 300 I7  2.jpg', '1638237895_ACER PREDATOR HELIOS 300 I7  4.jpg', 'LAPTOP', 6),
(5, 1, 4, 'ACER SWIFT 3 AMD RYZEN 5 5500U ', 192000, 'ACER SWIFT 3 (SF314 |14 FHD IPS PANEL | AMD RYZEN 5 5500U| 8GB RAM| 512GB NVMESSD |BACKLIT KB| FINGERPRINT| WINDOWS 10 HOME| 2 YEARS WARRANTY | SILVER COLOUR )', '1638238059_ACER SWIFT 3 AMD RYZEN 5 5500U 1.png', '1638238059_ACER SWIFT 3 AMD RYZEN 5 5500U 4.png', '1638238059_ACER SWIFT 3 AMD RYZEN 5 5500U 2.jpg', '1638238059_ACER SWIFT 3 AMD RYZEN 5 5500U 3.jpg', 'LAPTOP', 10),
(6, 1, 5, 'ROG STRIX G15 RYZEN 7 GAMING LAPTOPLAPTOPS ', 355000, 'ROG STRIX G15 RYZEN 7 + RTX 3050 4GB G513QC\r\nAMD Ryzen™ 7 5800H (8 Core 16 Treads, up to 4.4 GHz)\r\nDDR4 3200MHz 16GB\r\n512GB M.2 NVME SSD\r\n15.6\" 300Hz 100% SRGB 1080P\r\nNVIDIA® GeForce RTX 3050 4GB GDDR6\r\nAsus 4zone RGB Keyboard\r\n2.1 kg, 56WHrs\r\nFREE ROG Back pack, ROG Impact Gaming Mouse\r\n2 Years warranty\r\nGeniune Windows 10 Home 64Bit Pre-installed', '1638238663_ROG STRIX G15 RYZEN 7 GAMING LAPTOPLAPTOPS 1.png', '1638238663_ROG STRIX G15 RYZEN 7 GAMING LAPTOPLAPTOPS 3.png', '1638238663_ROG STRIX G15 RYZEN 7 GAMING LAPTOPLAPTOPS 2.jpg', '1638238663_ROG STRIX G15 RYZEN 7 GAMING LAPTOPLAPTOPS 4.jpg', 'LAPTOP', 10),
(7, 1, 5, 'ROG STRIX G15 RYZEN 9 GAMING LAPTOPLAPTOPS ', 780000, 'ROG Zephyrus SCAR 15 RYZEN 9 + RTX 3080\r\nAMD Ryzen™ 9 5900HX (8 Core 16 Treads, up to 4.6 GHz)\r\nDDR4 3200MHz 32GB\r\n1TB M.2 NVME SSD\r\n15.6\" 300Hz 100% SRGB 1080P\r\nNVIDIA® GeForce RTX 3080 16GB GDDR6\r\nOptical Mech Keyboard Per-Key RGB\r\n2.5 kg, 90WHrs\r\nFREE ROG Back pack, ROG Impact Gaming Mouse\r\n2 Years warranty\r\nGeniune Windows 10 Home 64Bit Pre-installed\r\nFREE 1080P@60FPS external camera\r\n', '1638238954_ROG STRIX G15 RYZEN 9 GAMING LAPTOPLAPTOPS 2.png', '1638238954_ROG STRIX G15 RYZEN 9 GAMING LAPTOPLAPTOPS 4.png', '1638238954_ROG STRIX G15 RYZEN 9 GAMING LAPTOPLAPTOPS 1.jpg', '1638238954_ROG STRIX G15 RYZEN 9 GAMING LAPTOPLAPTOPS 3.jpg', 'LAPTOP', 5),
(8, 1, 5, 'ASUS ZENBOOK PRO DDUO UX582 I9 10TH GEN + RTX 3070LAPTOPS ', 820000, 'Asus Zenbook Pro Duo UX582 i9 3070\r\nIntel® Core™ i9-10980HK (16M Cache, up to 5.3 GHz, 8 cores)\r\n32GB DDR4 3200Mhz\r\n1TB M.2 NVME SSD\r\n15.6\" 4K OLED Touchscreen, Pantone Validated\r\nNVIDIA® GeForce RTX 3070 8GB GDDR6\r\nAsus 4K ScreenPad Plus, Backlit Keyboard\r\n2.3 kg, 92 WHrs\r\nAsus Sleeve, Palm rest, Stylus\r\n2 Years warranty\r\nGeniune Windows 10 Home 64Bit Pre-installed', '1638239142_ASUS ZENBOOK PRO DDUO UX582 I9 10TH GEN + RTX 3070LAPTOPS 1.png', '1638239142_ASUS ZENBOOK PRO DDUO UX582 I9 10TH GEN + RTX 3070LAPTOPS 2.jpg', '1638239142_ASUS ZENBOOK PRO DDUO UX582 I9 10TH GEN + RTX 3070LAPTOPS 3.jpg', '1638239142_ASUS ZENBOOK PRO DDUO UX582 I9 10TH GEN + RTX 3070LAPTOPS 4.png', 'LAPTOP', 3),
(9, 1, 5, 'ASUS VIVOBOOK 15 OLED K513EA I3 11TH GEN LAPTOP ', 157000, 'Asus VIVOBOOK 15 OLED K513EA i3\r\nIntel®? Core™? i3-1115G4 Processor 3.0 GHz (6M Cache, up to 4.1 GHz)\r\n4GB DDR4 3200MHZ\r\n512GB NVME SSD\r\n15.6\" 1920x1080 OLED DCI-P3: 100%-Color gamut PANTONE Validated\r\nIntel®? UHD Graphics\r\n1.8kg, 42WHrs\r\nFREE ASUS BACKPACK + Asus Mouse\r\nGeniune Windows 10 Home ', '1638239302_ASUS VIVOBOOK 15 OLED K513EA I3 11TH GEN LAPTOP 1.png', '1638239302_ASUS VIVOBOOK 15 OLED K513EA I3 11TH GEN LAPTOP 2.png', '1638239302_ASUS VIVOBOOK 15 OLED K513EA I3 11TH GEN LAPTOP 3.jpg', '1638239302_ASUS VIVOBOOK 15 OLED K513EA I3 11TH GEN LAPTOP 4.png', 'LAPTOP', 10),
(10, 1, 5, 'ASUS VIVOBOOK F512J I3 10GEN ', 130000, 'Brand	ASUS\r\nOperating System	Windows 10 Home\r\nCPU Manufacturer	Intel\r\nScreen Size	15.6 Inches \r\n( TUCH SCREEN )\r\nComputer Memory Size	4 GB\r\nAbout this item\r\n15.6 Inch FHD (1920 x 1080), 60Hz Anti-Glare Touchscreen 45% NTSC with wide 178° viewing angles\r\n128GB PCIe NVMe M.2 SSD storage,\r\n4GB RAM LPDDR4X\r\n1.2GHz Intel Core i3-1005G1 (Up to 3.4 GHz),\r\nIntel Iris Plus Graphics\r\nWindows 10 Home S,\r\n7 Hour Battery Life,\r\n( Fingerprint Reader )\r\nBacklit Keyboard with Number Pad,\r\nMemory Card Reader,\r\nWebcam,\r\nWi-Fi 5,\r\nBluetooth 5.0,\r\nPorts and Slots: 1 x USB-C; 1 x USB-A Gen 3; 2 x USB-A Gen 2; 1 x HDM', '1638239468_ASUS VIVOBOOK F512J I3 10GEN 1.jpg', '1638239468_ASUS VIVOBOOK F512J I3 10GEN 2.jpg', '1638239468_ASUS VIVOBOOK F512J I3 10GEN 3.jpg', '1638239468_ASUS VIVOBOOK F512J I3 10GEN 4.jpg', 'LAPTOP', 8),
(11, 1, 5, 'ASUS TUF GAMING F15 I5 11TH GEN GAMING LAPTOP ', 429000, 'ASUS TUF Dash F15 i7 11th GEN + 3060\r\nIntel® Core™ i7-11370H (12M Cache, up to 4.80Hz)\r\n16GB DDR4 3200MHZ\r\n512GB M.2 NVME SSD\r\n15.6\" 1080P 144Hz Anti-Glare IPS-level 45% NTSC\r\nNVIDIA® GeForce RTX 3060 6GB GDDR6\r\nAsus Backlit Chiclet Keyboard\r\n2.0 kg , 76WHrs\r\nFREE TUF Gaming Backpack\r\n2 Years warranty\r\nGeniune Windows 11 Home 64Bit Pre-installed\r\nFREE TUF GAMING M5 V2 Mouse', '1638239668_ASUS TUF GAMING F15 I5 11TH GEN GAMING LAPTOP 2.jpg', '1638239668_ASUS TUF GAMING F15 I5 11TH GEN GAMING LAPTOP 3.png', '1638239668_ASUS TUF GAMING F15 I5 11TH GEN GAMING LAPTOP 1.jpg', '1638239668_ASUS TUF GAMING F15 I5 11TH GEN GAMING LAPTOP 5.jpg', 'LAPTOP', 10),
(12, 1, 5, 'ASUS EXPERTBOOK L1 L1500 RYZEN 3 ', 129000, 'Asus ExpertBook L1 L1500 RYZEN 3\r\nAMD Ryzen™ 3 3250U (4MB Cache , upto 3.5Ghz)\r\n4GB DDR4 2400MHZ\r\n256GB NVME M.2 SSD\r\n15.6\" LED Backlit,220nits,NTSC: 45%,Screen-to-body ratio 90 ?\r\nAMD Radeon™ Graphics\r\nNON Backlit Chiclet keyboard\r\n1.73 kg, 42 WHr\r\nAsus Back pack\r\n2 Years warranty\r\nDOS', '1638239902_ASUS EXPERTBOOK L1 L1500 RYZEN 3 1.gif', '1638239902_ASUS EXPERTBOOK L1 L1500 RYZEN 3 2.jpg', '1638239902_ASUS EXPERTBOOK L1 L1500 RYZEN 3 3.png', '1638239902_ASUS EXPERTBOOK L1 L1500 RYZEN 3 4.jpg', 'LAPTOP', 10),
(13, 1, 6, 'MSI GP76 LEOPARD 11UH I7 RTX 3080Laptops ', 749000, 'MSI GP76 Leopard 11UH i7 RTX 3080\r\nIntel® Core™ i7-11800H (24M Cache, up to 4.60Ghz)\r\n16GB DDR4 3200Mhz\r\n1TB M.2 NVME SSD\r\n17.3\" QHD 2560x1440 165Hz 100% DCI-P3\r\nNVIDIA® GeForce RTX 3080 8GB GDDR6\r\nSteel Series per-Key RGB with Anti-Ghost key\r\n2.9 kg, 65WHrs\r\nFREE MSI Stealth Trooper Backpack\r\n2 Years warranty\r\nGeniune Windows 10 Home 64Bit Pre-installed\r\nFREE MSI M99 GAMING Mouse\r\nFREE MSI H991 GAMING Headset\r\n', '1638240176_MSI GP76 LEOPARD 11UH I7 RTX 3080Laptops 1.png', '1638240176_MSI GP76 LEOPARD 11UH I7 RTX 3080Laptops 2.png', '1638240176_MSI GP76 LEOPARD 11UH I7 RTX 3080Laptops 3.png', '1638240176_MSI GP76 LEOPARD 11UH I7 RTX 3080Laptops 4.jpg', 'LAPTOP', 5),
(14, 1, 6, 'MSI GF63 THIN 10SCSR I5 10TH GEN WITH GTX 1650TI', 229000, 'MSI GF63 Thin 10SCSR i5 10th GEN with GTX 1650Ti\r\nIntel® Core™ i5-10500H (12M Cache, up to 4.50 GHz )\r\n8GB DDR4 3200MHZ\r\n1TB Sata Hard Drive\r\n15.6\" FHD, IPS-Level Thin Bezel\r\nNVIDIA® GeForce® GTX 1650Ti 4GB GDDR6\r\nRED Backlit keyboard\r\n1.9 kg , 51WHrs\r\nMSI Air Gaming Backpack\r\n2 Years warranty\r\nGeniune Windows 10 Home 64Bit Pre-installed', '1638240371_msi gf63 1.png', '1638240371_msi gf63 2.png', '1638240371_msi gf63 3.jpg', '1638240371_msi gf63 4.jpg', 'LAPTOP', 10),
(15, 1, 6, 'MSI BRAVO 15 B55DD RYZEN 7Laptops ', 749000, 'MSI BRAVO 15 B55DD RYZEN 7\r\nAMD Ryzen™ 7 5800H (8 Core 16 Treads, up to 4.4 GHz)\r\n16GB DDR4 3200MHZ\r\n512GB NVMe PCIe Gen3x4 SSD\r\n15.6\" (1920*1080), IPS-Level Thin Bezel, 144Hz\r\nAMD Radeon™ RX 5500M with 4GB GDDR6\r\nRED Backlight Keyboard\r\n1.9 kg, 52WHrs\r\nMSI AIR Back pack\r\n2 Years warranty\r\nGeniune Windows 10 64Bit Pre-installed', '1638257150_MSI BRAVO 15 B55DD RYZEN 7Laptops 1.png', '1638257150_MSI BRAVO 15 B55DD RYZEN 7Laptops 2.png', '1638257150_MSI BRAVO 15 B55DD RYZEN 7Laptops 3.jpg', '1638257150_MSI BRAVO 15 B55DD RYZEN 7Laptops 4.png', 'LAPTOP', 10),
(16, 1, 6, 'MSI GF63 THIN 10SCSR LAPTOP, I7-10750H / GTX 1650 TI ', 263000, 'Product Specifications \r\nMSI GF63 Thin 10SCSR\r\nComet lake i7-10750H\r\n8GB DDR4 3200 MHz\r\n1TB (SATA) 5400rpm\r\nGeForce GTX1650TI , GDDR6 4GB\r\n15.6” FHD IPS LEVEL THIN BEZEL DISPLAY\r\nIntel Wi-Fi 6 AX201(2*2 ax) + BT5.1\r\n3 cell , 51Whr\r\nWindows 10 home\r\nAir Gaming Backpack', '1638257461_msi (2) 3.png', '1638257461_msi (2) 1.png', '1638257461_msi (2) 2.png', '1638257461_msi (2) 4.png', 'LAPTOP', 10),
(17, 1, 6, 'MSI MODERN 14 B10MW I3 10TH GEN Laptops ', 132000, 'MSI Modern 14 B10MW i3 10th GEN\r\nIntel® Core™ i3-10110U (4M Cache, up to 4.10 GHz)\r\n8GB DDR4 2666MHZ\r\n256GB NVME M.2 SSD\r\n14” 1080P NanoEdge display IPS LEVEL\r\nIntel® UHD Graphics\r\nBacklight Keyboard (Single-Color, White)\r\n1.3kg, 52WHrs\r\nMSI BRIEF BAG FREE\r\n2 Years warranty\r\nDOS', '1638257684_MSI MODERN 14 B10MW I3 10TH GENLaptops 1.jpg', '1638257684_MSI MODERN 14 B10MW I3 10TH GENLaptops 2.jpg', '1638257684_MSI MODERN 14 B10MW I3 10TH GENLaptops 3.jpg', '1638257684_MSI MODERN 14 B10MW I3 10TH GENLaptops 4.jpg', 'LAPTOP', 10),
(18, 1, 6, 'MSI MODERN 15 A11MU CORE I7 11TH GEN Laptops ', 228500, 'MSI Modern 15 A11M Core i7 11th Gen\r\nIntel® Core™ i7-1165G7 Processor (12M Cache, up to 4.70)\r\n8GB DDR4 3200MHZ\r\n512GB NVME M.2 SSD\r\n15.6” 1080P NanoEdge 45% NTSC\r\nIntel IRIX XE graphics\r\nBacklit Keyboard\r\n1.6kg, 52WHrs\r\nMSI SLEEVE\r\n2 Years warranty\r\nGeniune Windows 10 Home 64Bit Pre-installed', '1638257867_MSI MODERN 15 A11MU CORE I7 11TH GENLaptops 1.jpg', '1638257867_MSI MODERN 15 A11MU CORE I7 11TH GENLaptops 2.jpg', '1638257867_MSI MODERN 15 A11MU CORE I7 11TH GENLaptops 4.jpg', '1638257867_MSI MODERN 15 A11MU CORE I7 11TH GENLaptops 2.jpg', 'LAPTOP', 10),
(20, 1, 7, 'HP 15S-DU3023TU 15.6? FHD Core I3 11th Gen Laptop', 118000, 'Intel® Core™ i3-1115G4 (6M Cache, up to 4.1 GHz)\r\n4GB DDR4 2666MHZ Memory\r\n1TB 5400 RPM 2.5 SATA HDD\r\n15.6? FHD LED  250 nits\r\n1.75 kg, 41 WHr\r\nGenuine Windows 10 Home 64Bit Pre-installed\r\nFREE Microsoft office', '1638258756_HP 15S CORE I3 11TH GENLaptops 1.jpg', '1638258756_HP 15S CORE I3 11TH GENLaptops 2.jpg', '1638258756_HP 15S CORE I3 11TH GENLaptops 3.png', '1638258756_HP 15S CORE I3 11TH GENLaptops 4.jpg', 'LAPTOP', 10),
(21, 1, 7, 'HP 15S CORE CELERON WINDOWS 10 + MICROSOFT OFFICE Laptops ', 87500, 'HP 15S Core CELERON Windows 10 + Microsoft Office\r\nIntel® Celeron® Processor N4020 (4M Cache, up to 2.80 GHz)\r\n4GB DDR4 2666MHZ\r\n1TB 5400 RPM 2.5 SATA\r\n15.6\" 1366 x 768 NTSC: 45%\r\nIntel HD Graphics\r\nChiclet keyboard\r\n1.75 kg, 41 WHr\r\n1 Year warranty\r\nGeniune Windows 10 Home 64Bit Pre-installed\r\nFREE Microsoft office', '1638258978_HP 15S CORE CELERON WINDOWS 10 + MICROSOFT OFFICELaptops 4.jpeg', '1638258978_HP 15S CORE CELERON WINDOWS 10 + MICROSOFT OFFICELaptops 3.jpg', '1638258978_HP 15S CORE CELERON WINDOWS 10 + MICROSOFT OFFICELaptops 2.jpg', '1638258978_HP 15S CORE CELERON WINDOWS 10 + MICROSOFT OFFICELaptops 1.jpg', 'LAPTOP', 10),
(22, 1, 7, 'HP 15S RYZEN 3 5300U WINDOWS 10 + MICROSOFT OFFICE Laptops ', 145000, 'AMD Ryzen™ 3 5300U (up to 3.8 GHz max boost clock, 4 MB L3 cache, 4 cores, 8 threads)\r\n8 GB DDR4-3200 MHz RAM (2 x 4 GB)\r\n512 GB PCIe® NVMe™ M.2 SSD\r\nAMD Radeon™ Graphics\r\nGenuine Windows 10 Home\r\nFREE Carrying Case\r\nFREE USB Optical Mouse', '1638259145_HP 15S RYZEN 3 5300U WINDOWS 10 + MICROSOFT OFFICELaptops 2.jpg', '1638259145_HP 15S RYZEN 3 5300U WINDOWS 10 + MICROSOFT OFFICELaptops 3.jpg', '1638259145_HP 15S RYZEN 3 5300U WINDOWS 10 + MICROSOFT OFFICELaptops 1.png', '1638259145_HP 15S RYZEN 3 5300U WINDOWS 10 + MICROSOFT OFFICELaptops 4.jpg', 'LAPTOP', 10),
(23, 1, 7, 'DELL INSPIRON 5502 I7 11TH GEN 4', 215000, 'Intel Core i7 – 1165G7 11th Gen Processor\r\n– 512GB M.2 PCIe NVMe SSD\r\n– 8GB DDR4 Ram\r\n– 2GB NVIDIA GeForce MX330 GDDR5\r\n– 15.6? FHD Anti-glare Display\r\n– Windows 10 Home', '1638259313_DELL INSPIRON 5502 I7 11TH GEN 4.jpg', '1638259313_DELL INSPIRON 5502 I7 11TH GEN 3.jpg', '1638259313_DELL INSPIRON 5502 I7 11TH GEN 2.jpg', '1638259313_DELL INSPIRON 5502 I7 11TH GEN 1.jpg', 'LAPTOP', 10),
(24, 1, 7, 'DELL INSPIRON 5415 RYZEN 5 ', 169000, 'DELL Inspiron 15 541 Ryzen 5\r\nAMD Ryzen™ 5 5500U (6 Core, 12 Threads- Up to 4.0GHz)\r\n8GB DDR4 3200MHZ\r\n256GB NVMe PCIe Gen3x4 SSD\r\n14-inch FHD (1920 x 1080)\r\nAMD® Radeon™ Graphics\r\nFingerprint Sensor\r\n1.42kg, 54WHrs\r\nDell Back pack\r\n2 Years warranty\r\nGeniune Windows 10 Home 64Bit Pre-installed,Office Home and Student 2019', '1638259432_DELL INSPIRON 5415 RYZEN 5 4.jpg', '1638259432_DELL INSPIRON 5415 RYZEN 5 3.jpg', '1638259432_DELL INSPIRON 5415 RYZEN 5 2.jpg', '1638259432_DELL INSPIRON 5415 RYZEN 5 1.jpg', 'LAPTOP', 10),
(25, 1, 7, 'DELL INSPIRON 5410 I5 11TH GEN Laptops ', 195000, 'DELL Inspiron 5410 i5 11th GEN\r\nIntel® Core™ i5-1135G7 Processor (8M Cache, up to 4.20)\r\n8GB DDR4 3200MHZ\r\n256GB NVME M.2 SSD\r\n14.0-inch FHD (1920 x 1080) Anti-glare LED Backlit\r\nINTEL IRIS XE GRAPHICS\r\nBacklit Keyboard, Finger Print Reader\r\n1.49Kg, 54WHrs\r\nFREE Dell BACKPACK\r\n2 Years warranty\r\nGeniune Windows 10 Home 64Bit Pre-installed,Office Home and Student 2019\r\n', '1638259630_DELL INSPIRON 5410 I5 11TH GENLaptops 2.jpg', '1638259630_DELL INSPIRON 5410 I5 11TH GENLaptops 1.jpg', '1638259630_DELL INSPIRON 5410 I5 11TH GENLaptops 4.jpg', '1638259630_DELL INSPIRON 5410 I5 11TH GENLaptops 3.png', 'LAPTOP', 10),
(27, 1, 7, 'DELL INSPIRON 3501 I7 11TH GEN ', 220000, '– Intel Core i7-1165G7 Processor\r\n– 8GB DDR4 Ram\r\n– 512GB M.2 PCIe NVMe SSD\r\n– 15.6? FHD Anti-glare\r\n– NVIDIA GeForce MX330 2GB GDDR5\r\n– Windows 10 Home', '1638259992_DELL INSPIRON 3501 I7 11TH GEN 3.jpg', '1638259992_DELL INSPIRON 3501 I7 11TH GEN 4.jpg', '1638259992_DELL INSPIRON 3501 I7 11TH GEN 1.jpg', '1638259992_DELL INSPIRON 3501 I7 11TH GEN 2.jpg', 'LAPTOP', 10),
(28, 1, 7, 'DELL INSPIRON 3501 I5 11TH GEN ', 162000, '– Intel Core i5 11th Gen Processor\r\n– 4GB RAM\r\n– 1TB SATA Hard Drive\r\n– 2GB Nvidia GeForce MX330 GDDR5\r\n– 15.6 FHD Anti-glare Display\r\n– Windows 10 Home', '1638260095_DELL INSPIRON 3501 I5 11TH GEN 2.jpg', '1638260095_DELL INSPIRON 3501 I5 11TH GEN 1.jpg', '1638260095_DELL INSPIRON 3501 I5 11TH GEN 3.jpg', '1638260095_DELL INSPIRON 3501 I5 11TH GEN 4.jpg', 'LAPTOP', 10),
(29, 1, 8, 'Lenovo ThinkPad X13 (13”, Intel) 10th Gen i5 laptop', 337000, 'Lenovo ThinkPad X13 (13”, Intel) 10th Gen i5 laptop, Display 13.3”, 16GB Memory, SSD 512GB, Windows 10 Pro 64, 3 Years ', '1638260499_lenovo 1.jpg', '1638260500_lenovo thinkpad x13 3.jpg', '1638260500_lenovo thinkpad x13  4.jpg', '1638260500_lenovo 2.png', 'LAPTOP', 5),
(30, 2, 4, 'ACER VES2740G G6400|4GB|1TB|ENDLESS OS(3y) with monitor', 85000, 'Acer Veriton VES2740G Business Desktop PC with Pentium G6400 Processor\r\nIntel Pentium G6400 Processor (4M Cache, 4.00 GHz)\r\n4GB DDR4 RAM\r\n1TB  HDD\r\nIntegrated Graphic\r\n18.5? Monitor', '1638261252_ACER VES2740G with monitor 1.png', '1638261252_ACER VES2740G with monitor 2.jpg', '1638261252_ACER VES2740G with monitor 3.png', '1638261252_ACER VES2740G with monitor 4.jpg', 'Pc', 10),
(31, 2, 7, 'DELL i5 VOSTRO 3888 DESKTOP 10GN|1TB|8GB|DOS (3y) WITH MONITOR', 158000, 'Desktop-Dell Vostro3888 i5/8G/1TB/DOS With Monitor\r\nDell Vostro DT 3888 – i5\r\n10th Gen Intel Core i5 10400 Processor\r\n8GB DDR4 Ram\r\n1TB HDD\r\nDell 18.5? Monitor\r\nDos', '1638310843_DELL i5 VOSTRO 3888 DESKTOP 10GN 2.jpg', '1638310843_DELL i5 VOSTRO 3888 DESKTOP 10GN 4.jpg', '1638310843_DELL i5 VOSTRO 3888 DESKTOP 10GN 1.jpg', '1638310843_DELL i5 VOSTRO 3888 DESKTOP 10GN 3.jpg', 'Pc', 19),
(33, 2, 8, 'LENOVO IDEACENTRE 3 DESKTOP I5 |10GN|1TB|4GB|DOS(3y) WITH MONITOR', 139000, '10th Generation Intel® Core™ i5-10400 Processor (2.90 GHz, up to 4.30 GHz with Turbo Boost, 6 Cores, 12 Threads, 12 MB Cache)\r\n4 GB DDR4 2666MHz\r\n1 TB 7200 RPM HDD\r\nDVD-RW\r\n260W Power Supply\r\nIntegrated Intel® UHD Graphics 630\r\nUSB – US English KeyBoard\r\nUSB Mouse\r\n802.11AC (2 x 2) & Bluetooth® 5.0\r\nLED MONITOR – LENOVO D19-10 18.5”', '1638312099_LENOVO IDEACENTRE 3 DESKTOP I5 10GN 4.jpg', '1638312099_LENOVO IDEACENTRE 3 DESKTOP I5 10GEN 1.jpg', '1638312099_LENOVO IDEACENTRE 3 DESKTOP I5 10GN 2.jpg', '1638312099_LENOVO IDEACENTRE 3 DESKTOP I5 10GN 3.jfif', 'Pc', 10),
(34, 2, 1, 'HP PRODESK 400 G7 10GN i7|8GB|1TB|DOS(3y) without monitor', 160000, 'HP ProDesk 400 G7 Microtower PC i7 10th Gen\r\nProcessor Manufacturer:	Intel\r\nProcessor Type:	Core i7\r\nProcessor Generation:	10th Gen\r\nProcessor Model:	i7-10700\r\nProcessor Core:	8 core\r\nProcessor Speed:	2.90 GHz\r\nMaximum Turbo Speed:	4.80 GHz\r\nvPro Technology:	Yes\r\n\r\nTotal Hard Drive Capacity:	1TB SATA\r\nSolid State Drive Interface:	PCI Express NVMe\r\nSSD Form Factor:	M.2\r\nOptical Drive Type:	DVD-Writer\r\nOptical Media Supported:	DVD±R/±RW', '1638312898_HP PRODESK 400 G7 10GN i7 8GB 1TB DOS(3y) without monitor 1.png', '1638312898_HP PRODESK 400 G7 10GN i7 8GB 1TB DOS(3y) without monitor 4.jpg', '1638312898_HP PRODESK 400 G7 10GN i7 8GB 1TB DOS(3y) without monitor 2.jpg', '1638312898_HP PRODESK 400 G7 10GN i7 8GB 1TB DOS(3y) without monitor 3.jpg', 'Pc', 10),
(35, 3, 5, 'ROG STRIX XG49VQ SUPER ULTRA-WIDE HDR GAMING MONITOR', 325000, '49-inch 32:9 (3840 x 1080) super ultra-wide HDR gaming monitor HDR with 144Hz refresh rate for super-smooth gaming visuals\r\nHigh Dynamic Range (HDR) technology with DCI-P3 90% professional color gamut delivers contrast and color performance that meets DisplayHDR™ 400 certification\r\nRadeon™ FreeSync 2 HDR technology provides buttery-smooth gameplay, low latency, and better brightness and contrast\r\nShadow Boost enhances image details in dark areas, brightening scenes without over-exposing bright areas\r\nMultiple HDR modes allows users to adjust settings based on usage such as gaming, content creation or video display', '1638313994_ROG STRIX XG49VQ SUPER ULTRA-WIDE HDR GAMING MONITOR 4.png', '1638313994_ROG STRIX XG49VQ SUPER ULTRA-WIDE HDR GAMING MONITOR 2.jpg', '1638313994_ROG STRIX XG49VQ SUPER ULTRA-WIDE HDR GAMING MONITOR 1.png', '1638313994_ROG STRIX XG49VQ SUPER ULTRA-WIDE HDR GAMING MONITOR 3.jpg', 'Monitor', 5),
(36, 3, 5, 'TUF GAMING VG27AQL1A 27 INCH 175HZ SRGB GAMING MONITOR', 108000, '03 YEARS WARRANTY\r\n\r\nDisplay\r\nPanel Size (inch) : 27\r\nAspect Ratio : 16:9\r\nDisplay Viewing Area (H x V) : 596.74 x 335.66 mm\r\nDisplay Surface : Non-Glare\r\nBacklight Type : LED\r\nPanel Type : IPS\r\nViewing Angle (CR?10, H/V) : 178°/ 178°\r\nPixel Pitch : 0.233mm\r\nResolution : 2560x1440\r\nColor Space (sRGB) : 130%\r\nColor Space (DCI-P3) : 96%\r\nBrightness (HDR, Peak) : 400 cd/?\r\nBrightness (Typ.) : 400cd/?\r\nContrast Ratio (Typ.) : 1000:1\r\nASUS Smart Contrast Ratio (ASCR) : 100000000:1\r\nDisplay Colors : 1073.7M (10 bit)\r\nResponse Time : 1ms MPRT\r\nRefresh Rate (Max) : 170Hz\r\nHDR (High Dynamic Range) Support : HDR10\r\nFlicker-free : Yes\r\nVideo Feature\r\n', '1638314527_TUF GAMING VG27AQL1A 27 INCH 175HZ SRGB GAMING MONITOR 1.jpg', '1638314527_TUF GAMING VG27AQL1A 27 INCH 175HZ SRGB GAMING MONITOR 2.jpg', '1638314527_TUF GAMING VG27AQL1A 27 INCH 175HZ SRGB GAMING MONITOR 3.jpg', '1638314527_TUF GAMING VG27AQL1A 27 INCH 175HZ SRGB GAMING MONITOR 4.jpg', 'Monitor', 10),
(37, 3, 5, 'ASUS PROART PA24AC PROFESSIONAL MONITOR', 99000, ' 03 YEARS WARRANTY\r\n\r\nDisplay\r\nPanel Size (inch) : 24.1\r\nAspect Ratio : 16:10\r\nDisplay Viewing Area (H x V) : 518.4 x 324 mm\r\nDisplay Surface : Non-Glare\r\nBacklight Type : LED\r\nPanel Type : IPS\r\nViewing Angle (CR?10, H/V) : 178°/ 178°\r\nPixel Pitch : 0.270mm\r\nResolution : 1920x1200\r\nColor Space (sRGB) : 100%\r\nBrightness (HDR, Peak) : 400 cd/?\r\nBrightness (Typ.) : 350cd/?\r\nContrast Ratio (HDR, Max) : 8,000:1\r\nContrast Ratio (Typ.) : 1000:1\r\nASUS Smart Contrast Ratio (ASCR) : 100000000:1\r\nDisplay Colors : 16.7M\r\nResponse Time : 5ms(GTG)\r\nRefresh Rate (Max) : 60Hz\r\nHDR (High Dynamic Range) Support : HDR10\r\nFlicker-free : Yes\r\nLCD ZBD Warranty : Yes(3 yr)', '1638314874_ASUS PROART PA24AC PROFESSIONAL MONITOR 1.png', '1638314874_ASUS PROART PA24AC PROFESSIONAL MONITOR 2.png', '1638314874_ASUS PROART PA24AC PROFESSIONAL MONITOR 3.jpg', '1638314874_ASUS PROART PA24AC PROFESSIONAL MONITOR 4.jpg', 'Monitor', 10),
(38, 3, 5, 'ASUS VP228HE 1080P 1MS GAMING MONITOR', 35000, '3 Years Warranty\r\n\r\n21.5” Full HD monitor with 1ms (GTG) quick response time to eliminate ghosting and tracers for more fluid video playback\r\nASUS-exclusive GamePlus provides Crosshair and Timer function for better gaming experience\r\nThe TÜV Rheinland-certified ASUS Flicker-Free and Low Blue Light technologies\r\nRobust connectivity including HDMI and D-sub ports. Plus 1.5-Watt stereo speakers\r\n', '1638315187_ASUS VP228HE 1080P 1MS GAMING MONITOR 3.jpg', '1638315188_ASUS VP228HE 1080P 1MS GAMING MONITOR 2.jpg', '1638315188_ASUS VP228HE 1080P 1MS GAMING MONITOR 1.jpg', '1638315188_ASUS VP228HE 1080P 1MS GAMING MONITOR4.jfif', 'Monitor', 10),
(39, 3, 5, 'ASUS VG279Q 27INCH FULL HD IPS G-SYNC COMPATIBLE GAMING MONITOR', 84000, '03 YEARS WARRANTY\r\n\r\nDisplay\r\nPanel Size (inch) : 27\r\nAspect Ratio : 16:9\r\nDisplay Viewing Area (H x V) : 597.6 x 336.15 mm\r\nPanel Backlight : LED\r\nBacklight Type : LED\r\nPanel Type : IPS\r\nTrue Resolution : 1920x1080\r\nDisplay Viewing Area (HxV) : 597.6 x 336.15 mm\r\nViewing Angle (CR?10, H/V) : 178°/ 178°\r\nDisplay Surface : Non-Glare\r\nPixel Pitch : 0.311mm\r\nResolution : 1920x1080\r\nBrightness (Typ.) : 400cd/?\r\nContrast Ratio : 1000:1\r\nBrightness (Typ.) : 350cd/?\r\nViewing Angle (CR?10) : 178°/ 178°\r\nContrast Ratio (Typ.) : 1000:1\r\nResponse Time : 4ms(GTG)\r\nASUS Smart Contrast Ratio (ASCR) : 100000000:1\r\nDisplay Colors : 16.7M\r\nResponse Time : 1ms MPRT\r\nFlicker free : Yes\r\nRefresh Rate (max) : 144Hz\r\nFlicker-free : Yes', '1638315378_ASUS VG279Q 27INCH FULL HD IPS G-SYNC COMPATIBLE GAMING MONITOR 2.png', '1638315378_ASUS VG279Q 27INCH FULL HD IPS G-SYNC COMPATIBLE GAMING MONITOR 1.png', '1638315378_ASUS VG279Q 27INCH FULL HD IPS G-SYNC COMPATIBLE GAMING MONITOR 3.png', '1638315378_ASUS VG279Q 27INCH FULL HD IPS G-SYNC COMPATIBLE GAMING MONITOR 4.png', 'Monitor', 10),
(40, 3, 9, 'BENQ GW2780 27 INCH IPS LED MONITOR', 45000, '03 YEARS WARRANTY\r\n\r\nDisplay\r\nScreen Size	27 inch\r\nPanel Type	IPS\r\nBacklight Technology	LED backlight\r\nResolution (max.)	1920x1080\r\nBrightness (typ.)	250nits\r\nViewing Angle (L/R) (CR>=10)	178/178\r\nResponse Times (GtG)	5 ms\r\nRefresh Rate (Hz)	60\r\nColor Gamut	72% NTSC\r\nPicture Mode	Color Weakness ,ECO ,Game ,Low Blue Light ,Movie ,Photo ,Standard ,User\r\nAspect Ratio	16:9\r\nDisplay Colors	16.7 million color\r\nPPI	82\r\nDisplay Screen Coating	Anti-Glare\r\nColor Temperature	Bluish ,Normal ,Reddish ,User Define\r\nGamma	1.8 - 2.6\r\nHDCP	1.4\r\nOSD Language	Arabic,Chinese (simplified),Chinese (traditional),Czech,Deutsch,English,French,Hungarian,Italian,Japanese,Netherlands,Polish,Portuguese,Romanian,Russian,Serbo-Croatian,Spanish,Swedish\r\nAMA	Yes\r\nAudio\r\nBuilt-in Speaker	2Wx2\r\nHeadphone Jack	Yes\r\nAudio Line In	Yes', '1638315793_BENQ GW2780 27 INCH IPS LED MONITOR 1.jfif', '1638315793_BENQ GW2780 27 INCH IPS LED MONITOR 3.png', '1638315793_BENQ GW2780 27 INCH IPS LED MONITOR 2.jpg', '1638315793_BENQ GW2780 27 INCH IPS LED MONITOR 4.png', 'Monitor', 10),
(41, 3, 7, 'DELL S2721HN 27 INCH MONITOR', 48000, ' 03 YEARS WARRANTY\r\n\r\nTech Specs\r\nDevice Type\r\nLED edgelight system\r\nPanel Type\r\nIPS\r\nAspect Ratio\r\n16:9\r\nNative Resolution\r\n1920 x 1080 at 75 Hz\r\nPixel Pitch\r\n0.3114 x 0.3114 mm\r\nBrightness\r\n300 cd/m2 (typical)\r\nContrast Ratio\r\n1000: 1 (Typical)\r\nResponse Time\r\n4 ms gray to gray in Extreme mode\r\nColor Support\r\n16.7 Million colors\r\nInput Connectors\r\n2 x HDMI ports (ver 1.4)\r\n1 x Audio line-out port\r\nDisplay Position Adjustments\r\nTilt (-5° to 21°)\r\nBuilt in cable-management\r\nScreen Coating\r\nAntiglare with 3H hardness\r\nDimensions (WxDxH) - with stand\r\n24.01 inches x 7.35 inches x 17.85 inches\r\nCompliant Standards\r\nENERGY STAR certified monitor\r\nRoHS-compliant\r\nTCO certified displays\r\nBFR/PVC-reduced monitor (excluding external cables)\r\nArsenic-free glass and Mercury-free for the panel only\r\nProduct Description\r\nDell 27 Monitor - S2721HN\r\nDiagonal Size\r\n27 Inches\r\nFeatures\r\nNA\r\nWeight\r\n9.48 lbs ', '1638316600_DELL S2721HN 27 INCH MONITOR 2.png', '1638316600_DELL S2721HN 27 INCH MONITOR 1.png', '1638316600_03 YEARS WARRANTY  4.jpg', '1638316600_DELL S2721HN 27 INCH MONITOR 4.png', 'Monitor', 10),
(42, 3, 1, 'HP 24\" 24MH 1080P IPS ROTATABLE MONITOR', 46500, 'Display type IPS\r\nDISPLAY SPECIFICATIONS\r\nDisplay size (diagonal) 23.8\"\r\nDisplay area (metric) 52.7 x 29.64 cm\r\nAspect ratio 16:9\r\nResolution (native) FHD (1920 x 1080 @ 60 Hz)\r\nResolutions supported 1024 x 768; 1280 x 1024; 1280 x 720; 1280 x 800; 1366 x 768; 1440 x 900; 1600 x 900; 1680 x 1050; 1920 x 1080; 640 x 350; 720 x 400; 800 x 600\r\nPixel pitch 0.274 mm\r\nBrightness 250 cd/m²\r\nContrast ratio 1000:1 static; 10000000:1 dynamic\r\nResponse time 5 ms gray to gray\r\nDisplay scan frequency (horizontal) Up to 83 kHz\r\nDisplay scan frequency (vertical) Up to 75 Hz\r\nOnscreen controls Brightness; Color control; Exit; Image control; Information; Input source; Management; Menu; Power\r\nDisplay features Anti-glare; Language selection; On-screen controls; Plug and Play; User controls; Low blue light mode; Dual speakers (2W per channel)\r\nVESA mount VESA mount compatible\r\nCONNECTIVITY\r\nDisplay Input Type 1 DisplayPort™ 1.2 (with HDCP support); 1 HDMI 1.4 (with HDCP support); 1 VGA\r\nDIMENSIONS AND WEIGHT\r\nDimensions without stand (W x D x H) 53.82 x 4.59 x 32.56 cm\r\nDimensions with stand (W x D x H) 53.82 x 21.16 x 46.43 cm\r\nDisplay height 100 mm\r\nWeight 4.5 kg', '1638316881_2.jpg', '1638316881_1.png', '1638316881_4.jpg', '1638316881_3.png', 'Monitor', 10),
(43, 3, 2, 'SAMSUNG 49\" ODYSSEY CRG9 QLED GAMING MONITOR WITH WITH DUAL QHD SUPER ULTRA-WIDE SCREEN', 390000, 'Screen Size 49\"\r\nLED Backlight Quantum Dot Technology\r\nWidescreen Yes\r\nRecommended Resolution 5120 x 1440\r\nVESA Certified DisplayHDR DisplayHDR 1000\r\nRefresh Rate 120 Hz\r\nViewing Angle 178° (H) / 178° (V)\r\nDisplay Colors 1.07 Billion\r\nBrightness 600 cd/m2 (Typ), 1000cd/m2 (Peak)\r\nContrast Ratio 3,000:1(Typ)\r\nAspect Ratio 32:9\r\nResponse Time 4ms (GTG)\r\nPanel VA\r\nDisplay Type Dual QHD\r\nAdaptive Sync Technology FreeSync (AMD Adaptive Sync)\r\nCurvature Radius 1800R\r\nCurved Surface Screen Curved\r\nConnectivity\r\nInput Video Compatibility Digital\r\nConnectors HDMI, DisplayPort\r\nHDMI 1 x HDMI 2.0\r\nThunderbolt 3 No\r\nDisplayPort 2 x DisplayPort 1.4\r\nUSB 2.0 2\r\nUSB 3.0 2\r\nPower\r\nPower Supply 100 - 240 VAC, 50/60Hz\r\nPower Consumption Power Consumption (Typ): 100W\r\nPower Consumption (DPMS): Less than 0.5W\r\nPower Consumption (Off Mode): Less than 0.3W', '1638317176_samsung1.png', '1638317176_samsung3.jpg', '1638317176_samsung2.jpg', '1638317176_samsung4.jpg', 'Monitor', 10),
(44, 3, 10, 'VIEWSONIC 27\" XG2705 144HZ IPS GAMING MONITOR', 72000, 'Display Size (in.): 27\r\nViewable Area (in.): 27\r\nPanel Type: IPS Technology\r\nResolution: 1920 x 1080\r\nResolution Type: FHD\r\nStatic Contrast Ratio: 1,000:1 (typ)\r\nDynamic Contrast Ratio: 80M:1\r\nLight Source: LED\r\nBrightness: 250 cd/m² (typ)\r\nColours: 16.7M\r\nColour Space Support: 8 bit (6 bit + Hi-FRC)\r\nAspect Ratio: 16:9\r\nResponse Time (Typical GTG): 1ms\r\nViewing Angles: 178º horizontal, 178º vertical\r\nBacklight Life (Hours): 30000 Hrs (Min)\r\nCurvature: Flat\r\nRefresh Rate (Hz): 144\r\nAdaptive Sync: FreeSync\r\nBlue Light Filter: Yes\r\nFlicker-Free: Yes\r\nColour Gamut: NTSC: 72% size (Typ)\r\nsRGB: 104% size (Typ)\r\nPixel Size: 0.311 mm (H) x 0.311 mm (V)\r\nSurface Treatment: Anti-Glare, Hard Coating (3H)', '1638317610_VIEWSONIC 27  XG2705 144HZ IPS GAMING MONITOR 1.jpg', '1638317610_VIEWSONIC 27 XG2705 144HZ IPS GAMING MONITOR 3.jpg', '1638317610_VIEWSONIC 27 XG2705 144HZ IPS GAMING MONITOR 2.jpg', '1638317610_VIEWSONIC 27 XG2705 144HZ IPS GAMING MONITOR 4.jpg', 'Monitor', 10),
(45, 3, 4, 'ACER 24\" KA242Y IPS 1MS FHD AMD FREESYNC 75HZ', 39500, '3 Years Warranty\r\n\r\nBacklight type:LED\r\nScreen diagonal:23.8 \"\r\nScreen diagonal:60 cm\r\nNative resolution (px):1920 x 1080\r\nResponse time:1 ms\r\nBrightness:250 cd / m²\r\nMatrix Type:IPS / PLS\r\nMatrix coating:dull\r\nAspect Ratio:16: 9\r\nStatic contrast (x: 1):1000\r\nDynamic contrast (x: 1):100000000\r\nRefresh Rate:75 Hz\r\nVertical viewing angle:178 °\r\nHorizontal viewing angle:178 °\r\nControl:tilt adjustment (up / down)\r\nVESA standard:100x100\r\nConstruction and additional elements:detachable base\r\nPower consumption:14.9 watts\r\nMaximum power consumption in standby mode:0.25 W\r\nTechnologies:FreeSync', '1638317923_ACER 24 KA242Y IPS 1MS FHD AMD FREESYNC 75HZ  4.png', '1638317923_ACER 24 KA242Y IPS 1MS FHD AMD FREESYNC 75HZ 1.png', '1638317923_ACER 24 KA242Y IPS 1MS FHD AMD FREESYNC 75HZ  3.png', '1638317923_ACER 24 KA242Y IPS 1MS FHD AMD FREESYNC 75HZ  2.jpg', 'Monitor', 10),
(46, 4, 11, 'RYZEN 3 3100', 25000, '03 YEARS WARRANTY\r\n\r\nSpecifications\r\n# of CPU Cores\r\n4\r\n# of Threads\r\n8\r\nBase Clock\r\n3.6GHz\r\nMax Boost Clock \r\nUp to 3.9GHz\r\nTotal L1 Cache\r\n256KB\r\nTotal L2 Cache\r\n2MB\r\nTotal L3 Cache\r\n16MB\r\nUnlocked \r\nYes\r\nCMOS\r\nTSMC 7nm FinFET\r\nPackage\r\nAM4\r\nPCI Express® Version\r\nPCIe 4.0\r\nThermal Solution (PIB)\r\nWraith Stealth\r\nDefault TDP / TDP\r\n65W\r\n\r\n\r\nSystem Memory\r\nSystem Memory Specification\r\nUp to 3200MHz\r\nSystem Memory Type\r\nDDR4\r\n\r\n\r\n03 YEARS WARRANTY\r\n\r\nSpecifications\r\n# of CPU Cores\r\n4\r\n# of Threads\r\n8\r\nBase Clock\r\n3.6GHz\r\nMax Boost Clock \r\nUp to 3.9GHz\r\nTotal L1 Cache\r\n256KB\r\nTotal L2 Cache\r\n2MB\r\nTotal L3 Cache\r\n16MB\r\nUnlocked \r\nYes\r\nCMOS\r\nTSMC 7nm FinFET\r\nPackage\r\nAM4\r\nPCI Express® Version\r\nPCIe 4.0\r\nThermal Solution (PIB)\r\nWraith Stealth\r\nDefault TDP / TDP\r\n65W\r\n\r\n\r\nSystem Memory\r\nSystem Memory Specification\r\nUp to 3200MHz\r\nSystem Memory Type\r\nDDR4\r\n\r\n\r\n\r\n\r\n', '1638319289_RYZEN 3 3100 1.jpg', '1638319289_RYZEN 3 3100 4.png', '1638319289_RYZEN 3 3100 2.jpg', '1638319289_RYZEN 3 3100 3.jpg', 'Processor', 10),
(47, 4, 11, 'RYZEN 5 3400G', 55000, '03 YEARS WARRANTY\r\nProduct Specifications\r\n\r\n# of CPU Cores\r\n4\r\n# of Threads\r\n8\r\n# of GPU Cores\r\n11\r\nBase Clock\r\n3.7GHz\r\nMax Boost Clock \r\nUp to 4.2GHz\r\nTotal L1 Cache\r\n384KB\r\nTotal L2 Cache\r\n2MB\r\nTotal L3 Cache\r\n4MB\r\nUnlocked \r\nYes\r\nCMOS\r\n12nm FinFET\r\nPackage\r\nAM4\r\nPCI Express® Version\r\nPCIe® 3.0 x8\r\nThermal Solution (PIB)\r\nWraith Spire\r\nThermal Solution (MPK)\r\nWraith Spire\r\nDefault TDP / TDP\r\n65W\r\ncTDP\r\n45-65W\r\nMax Temps\r\n95°C\r\n*OS Support\r\nWindows 10 - 64-Bit Edition\r\nRHEL x86 64-Bit\r\nUbuntu x86 64-Bit\r\n*Operating System (OS) support will vary by manufacturer.\r\nSystem Memory\r\nSystem Memory Specification\r\nUp to 2933MHz\r\nSystem Memory Type\r\nDDR4\r\nMemory Channels\r\n2', '1638319591_RYZEN 5 3400G 1.png', '1638319591_RYZEN 5 3400G 2.jpg', '1638319591_RYZEN 5 3400G 3.jpg', '1638319591_RYZEN 5 3400G 4.jpeg', 'Processor', 10),
(49, 4, 11, 'AMD RYZEN™ 7 3700X 8 CORE/16 THREADS', 78000, ' 03 YEARS WARRANTY\r\nProduct Specifications\r\n\r\n\r\n# of CPU Cores\r\n8\r\n# of Threads\r\n16\r\nBase Clock\r\n3.6GHz\r\nMax Boost Clock \r\nUp to 4.4GHz\r\nTotal L1 Cache\r\n512KB\r\nTotal L2 Cache\r\n4MB\r\nTotal L3 Cache\r\n32MB\r\nUnlocked \r\nYes\r\nCMOS\r\nTSMC 7nm FinFET\r\nPackage\r\nAM4\r\nPCI Express® Version\r\nPCIe 4.0 x16\r\nThermal Solution (PIB)\r\nWraith Prism with RGB LED\r\nThermal Solution (MPK)\r\nWraith PRISM\r\nDefault TDP / TDP\r\n65W\r\nMax Temps\r\n95°C\r\nSystem Memory\r\nSystem Memory Specification\r\nUp to 3200MHz\r\nSystem Memory Type\r\nDDR4\r\nMemory Channels\r\n2\r\nFoundation\r\nProduct Family\r\nAMD Ryzen™ Processors\r\nProduct Line\r\nAMD Ryzen™ 7 Desktop Processors\r\nPlatform\r\nBoxed Processor', '1638320607_AMD RYZEN 7 3700X 8 CORE 16 THREADS  4.jpg', '1638320607_AMD RYZEN 7 3700X 8 CORE 16 THREADS 1.jpg', '1638320607_AMD RYZEN 7 3700X 8 CORE 16 THREADS  2.jpg', '1638320607_AMD RYZEN 7 3700X 8 CORE 16 THREADS  4.jpg', 'Processor', 10),
(50, 4, 11, 'AMD RYZEN™ 9 5900X 12 CORE 24 THREADS', 148000, '03 YEARS WARRANTY\r\n\r\nSpecifications\r\n# of CPU Cores\r\n12\r\n# of Threads\r\n24\r\nBase Clock\r\n3.7GHz\r\nMax Boost Clock \r\nUp to 4.8GHz\r\nTotal L2 Cache\r\n6MB\r\nTotal L3 Cache\r\n64MB\r\nUnlocked \r\nYes\r\nCMOS\r\nTSMC 7nm FinFET\r\nPackage\r\nAM4\r\nPCI Express® Version\r\nPCIe 4.0\r\nThermal Solution (PIB)\r\nNot included\r\nDefault TDP / TDP\r\n105W\r\nMax Temps\r\n90°C\r\n*OS Support\r\nWindows 10 - 64-Bit Edition\r\nRHEL x86 64-Bit\r\nUbuntu x86 64-Bit\r\n*Operating System (OS) support will vary by manufacturer.\r\nSystem Memory\r\nSystem Memory Specification\r\nUp to 3200MHz\r\nSystem Memory Type\r\nDDR4\r\nKey Features\r\nSupported Technologies\r\nAMD \"Zen 3\" Core Architecture\r\nAMD StoreMI Technology\r\nAMD Ryzen™ Master Utility\r\nAMD Ryzen™ VR-Ready Premium\r\nFoundation\r\nProduct Family\r\nAMD Ryzen™ Processors\r\nProduct Line\r\nAMD Ryzen™ 9 Desktop Processors\r\nPlatform', '1638320913_AMD RYZEN™ 9 5900X 12 CORE 24 THREADS 3.jpg', '1638320913_AMD RYZEN™ 9 5900X 12 CORE 24 THREADS 2.jpg', '1638320913_AMD RYZEN™ 9 5900X 12 CORE 24 THREADS 4.jpg', '1638320913_AMD RYZEN™ 9 5900X 12 CORE 24 THREADS 1.jpg', 'Processor', 10),
(53, 4, 12, 'INTEL® CORE™ I3 10105F 10TH GEN 4 CORE/8 THREADS', 27000, 'SeriesCore i3 (10th Gen)CORES4 CoresTHREADS8 ThreadsSocketLGA1200SPEED3.7 GHzSPEED (TURBO)4.4 GHzCACHE6 MBMAX MEMORY SUPPORT128 GBINCLUDED CPU COOLERYesUNLOCKEDNoTDP65WWARRANTY*3 Years', '1638323289_INTEL® CORE™ I3 10105F 10TH GEN 4 CORE8 THREADS 1.jpg', '1638323289_INTEL® CORE™ I3 10105F 10TH GEN 4 CORE8 THREADS  2.jpg', '1638323289_INTEL® CORE™ I3 10105F 10TH GEN 4 CORE8 THREADS  3.jpeg', '1638323289_INTEL® CORE™ I3 10105F 10TH GEN 4 CORE8 THREADS 1.jpg', 'Processor', 10),
(54, 4, 12, 'INTEL® CORE™ I5-10400', 51000, 'CPU Specifications\r\n# of Cores6\r\n# of Threads12\r\nProcessor Base Frequency2.90 GHz\r\nMax Turbo Frequency4.30 GHz\r\nCache12 MB Intel® Smart Cache\r\nBus Speed8 GT/s\r\nIntel® Turbo Boost Technology 2.0 Frequency‡4.30 GHz\r\nTDP65 W', '1638323728_INTEL® CORE™ I5-10400 3.jpg', '1638323728_INTEL® CORE™ I5-10400 2.jpg', '1638323728_INTEL® CORE™ I5-10400 1.jpg', '1638323728_INTEL® CORE™ I5-10400 4.jpg', 'Processor', 10),
(55, 4, 12, 'INTEL® CORE™ I7-10700F', 75000, '10th Generation (Comet Lake)\r\n8 Cores & 16 Threads\r\n2.9 GHz Clock Speed\r\n4.8 GHz Maximum Turbo Frequency\r\nLGA 1200 Socket\r\nDual-Channel DDR4-2933 Memory\r\nIntel Optane Memory Support', '1638324149_INTEL® CORE™ I7-10700F 1.png', '1638324149_INTEL® CORE™ I7-10700F 2.png', '1638324149_INTEL® CORE™ I7-10700F 4.png', '1638324149_INTEL® CORE™ I7-10700F 3.jpg', 'Processor', 10),
(56, 4, 12, 'INTEL® CORE™ I9 10900K', 114000, 'CPU Specifications\r\n# of Cores10\r\n# of Threads20\r\nProcessor Base Frequency3.70 GHz\r\nMax Turbo Frequency5.30 GHz\r\nIntel® Thermal Velocity Boost Frequency5.30 GHz\r\nCache20 MB Intel® Smart Cache\r\nBus Speed8 GT/s\r\nIntel® Turbo Boost Max Technology 3.0 Frequency ‡5.20 GHz\r\nIntel® Turbo Boost Technology 2.0 Frequency‡5.10 GHz\r\nTDP125 W\r\nConfigurable TDP-down Frequency3.30 GHz\r\nConfigurable TDP-down95 W', '1638324432_INTEL® CORE™ I9 10900K 4.jpg', '1638324432_INTEL® CORE™ I9 10900K 3.jpg', '1638324432_INTEL® CORE™ I9 10900K 1.jpg', '1638324432_INTEL® CORE™ I9 10900K 2.jpg', 'Processor', 10),
(57, 5, 13, 'ASROCK H470M-HDV', 18000, ' 03 YEARS WARRANTY\r\n\r\nUnique Feature\r\nASRock Super Alloy\r\n- Premium 50A Power Choke\r\n- Sapphire Black PCB\r\n- High Density Glass Fabric PCB\r\nASRock Full Spike Protection (for all USB, Audio, LAN Ports)\r\nASRock Live Update & APP Shop\r\nCPU\r\n- Supports 10th Gen Intel® Core™ Processors (Socket 1200)\r\n- Digi Power design\r\n- 5 Power Phase design\r\n- Supports Intel® Turbo Boost Max 3.0 Technology\r\nChipset\r\n- Intel® H470\r\nMemory\r\n- Dual Channel DDR4 Memory Technology\r\n- 2 x DDR4 DIMM Slots\r\n- Supports DDR4 2933 / 2800 / 2666 / 2400 / 2133 non-ECC, un-buffered memory*\r\n- Supports ECC UDIMM memory modules (operate in non-ECC mode)\r\n- Max. capacity of system memory: 64GB**\r\n- Supports Intel® Extreme Memory Profile (XMP) 2.0\r\n- 15? Gold Contact in DIMM Slots\r\n\r\n*Core™ (i9/i7) support DDR4 up to 2933; Core™ (i5/i3), Pentium® and Celeron® support DDR4 up to 2666.\r\n\r\n**Due to the operating system limitation, the actual memory size may be less than 4GB for the reservation for system usage under Windows® 32-bit OS. For Windows® 64-bit OS with 64-bit CPU, there is no such limitation.\r\nBIOS', '1638325657_ASROCK H470M-HDV 1.jpg', '1638325657_ASROCK H470M-HDV 4.jpg', '1638325657_ASROCK H470M-HDV 2.jpg', '1638325657_ASROCK H470M-HDV 3.jpg', 'Motherboad', 10),
(58, 5, 13, 'B450M ASROCK STEEL LEGEND', 25000, 'BIOS\r\n- 128Mb AMI UEFI Legal BIOS with multilingual GUI support\r\n- Supports \"Plug and Play\"\r\n- ACPI 5.1 compliance wake up events\r\n- Supports jumperfree\r\n- SMBIOS 2.3 support\r\n- DRAM Voltage multi-adjustment\r\nGraphics\r\n- Integrated AMD Radeon™ Vega Series Graphics in Ryzen Series APU*\r\n- DirectX 12, Pixel Shader 5.0\r\n- Shared memory default 2GB. Max Shared memory supports up to 16GB.**\r\n- Dual graphics output: Support HDMI and DisplayPort 1.2 ports by independent display controllers\r\n- Supports HDMI 1.4 with max. resolution up to 4K x 2K (4096x2160) @ 24Hz / (3840x2160) @ 30Hz\r\n- Supports DisplayPort 1.2 with max. resolution up to 4K x 2K (4096x2160) @ 60Hz\r\n- Supports Auto Lip Sync, Deep Color (12bpc), xvYCC and HBR (High Bit Rate Audio) with HDMI 1.4 Port (Compliant HDMI monitor is required)\r\n- Supports HDCP 1.4 with HDMI 1.4 and DisplayPort 1.2 Ports\r\n- Supports 4K Ultra HD (UHD) playback with HDMI 1.4 and DisplayPort 1.2 Ports', '1638325979_B450M ASROCK STEEL LEGEND 1.png', '1638325979_B450M ASROCK STEEL LEGEND 4.jpg', '1638325979_B450M ASROCK STEEL LEGEND 3.jpg', '1638325979_B450M ASROCK STEEL LEGEND 2.jpg', 'Motherboad', 8),
(59, 5, 5, 'ASUS PRIME H410 M.E', 18000, '03 YEARS WARRANTY\r\n\r\nCPU\r\nIntel® Socket 1200 for 10th Gen Intel® Core™, Pentium® Gold and Celeron® Processors *\r\nSupports Intel® 14 nm CPU\r\nSupports Intel® Turbo Boost Technology 2.0 and Intel® Turbo Boost Max Technology 3.0**\r\n* Refer to www.asus.com for CPU support list\r\n**Intel® Turbo Boost Max Technology 3.0 support depends on the CPU types.\r\nChipset\r\nIntel® H410\r\nMemory\r\n2 x DIMM, Max. 64GB, DDR4 2933/2800/2666/2400/2133 MHz Non-ECC, Un-buffered Memory *\r\nDual Channel Memory Architecture\r\nSupports Intel® Extreme Memory Profile (XMP)\r\nOptiMem\r\n* 10th Gen Intel® Core™i9/i7 CPUs support 2933/2800/2666/2400/2133 natively, Refer to www.asus.com for the Memory QVL (Qualified Vendors Lists).  \r\nGraphic\r\nIntegrated Graphics Processor *\r\n1  x D-Sub\r\n1  x HDMI 1.4b\r\n*Graphics specifications may vary between CPU types.\r\nExpansion Slots\r\nIntel® 10th Gen Processors\r\n1 x PCIe 3.0 x16 (x16 mode)\r\nIntel® H410 Chipset\r\n2 x PCIe 3.0 x1', '1638326295_ASUS PRIME H410 M.E 1.jpg', '1638326295_ASUS PRIME H410 M.E 2.png', '1638326295_ASUS PRIME H410 M.E 4.jpg', '1638326295_ASUS PRIME H410 M.E 3.png', 'Motherboad', 10),
(60, 5, 5, 'ASUS ROG STRIX B450-F II GAMING', 38500, '3 Years Warranty\r\n\r\nAM4 socket: Ready for 3rd Gen AMD Ryzen™ processors\r\nRobust power solution: 8+4 discrete MOS with high-quality alloy chokes and durable capacitors\r\nGaming-optimized connectivity: Dual M.2, USB 3.2 Gen 2, plus HDMI® 2.0 and DisplayPort™ 1.2 output support\r\nSmooth networking: M.2 socket with E-key and Intel® Gigabit Ethernet with ASUS LANGuard\r\nIntuitive software: Easy-to-use UEFI BIOS and ASUS AI Networking make it easy to configure gaming builds\r\nDIY-friendly design: Includes pre-mounted I/O shield, BIOS FlashBack™, Q-LEDs and SafeSlot\r\nUnmatched personalization: ASUS-exclusive Aura Sync RGB lighting, including Aura RGB headers and Addressable RGB header\r\nIndustry-leading gaming audio: AI Noise-Canceling Microphone, SupremeFX S1220A codec and Sonic Studio III for immersive sound\r\n\r\nCPU\r\nAMD AM4 Socket for AMD Ryzen™ 5000 Series/ 4000 G-Series/ 3rd/2nd/1st Gen AMD Ryzen™/ 2nd and 1st Gen AMD Ryzen™ with Radeon™ Vega Graphics/ Athlon™ with Radeon™ Vega Graphics Processors Processors\r\n* Refer to www.asus.com for CPU support list\r\nChipset\r\nAMD B450\r\nMemory\r\n4 x DIMM, Max. 128GB, DDR4 4400(O.C)/4000(O.C.)/3866(O.C.)/3600(O.C.)/3466(O.C.)/3200/3000/2800/2666/2400/2133 MHz Un-buffered Memory\r\n3rd/2nd/1st Gen AMD Ryzen™/ 2nd and 1st Gen AMD Ryzen™ with Radeon™ Vega Graphics/ Athlon™ with Radeon™ Vega Graphics Processors\r\nDual Channel Memory Architecture\r\n* Refer to www.asus.com for the Memory QVL (Qualified Vendors Lists).\r\nGraphic\r\n1 x HDMI 2.0b\r\n1 x DisplayPort 1.2\r\n*Graphics specifications may vary between CPU types.\r\nIntegrated Graphics Processor', '1638327277_ASUS ROG STRIX B450-F II GAMING 3.jpg', '1638327277_ASUS ROG STRIX B450-F II GAMING 1.jpg', '1638327277_ASUS ROG STRIX B450-F II GAMING 4.jpg', '1638327277_ASUS ROG STRIX B450-F II GAMING 2.jpg', 'Motherboad', 10),
(61, 5, 14, 'BIOSTAR A320M', 13500, ' 03 YEARS WARRANTY\r\n\r\nChipset	AMD A320\r\nCPU SUPPORT	Supports AMD AM4 Socket for 3rd, 2nd and 1st Gen Ryzen/2nd and 1st Gen Ryzen with Radeon Vega\r\nGraphics/Athlon with Radeon Vega Graphics/7th Gen A-Series/Athlon X4 Processors\r\nMEMORY	Support Dual Channel DDR4 2933/2667/2400/2133/1866 MHz\r\n2 x DDR4 DIMM Memory Slot\r\nMax. Supports up to 32GB Memory\r\nEach DIMM supports non-ECC 8/16 GB DDR4 module\r\n?DDR4 - 2933 only for AMD Ryzen CPU\r\n?DDR4 speed depends on CPU type\r\n?Please refer to www.biostar.com.tw for Memory support list.\r\nINTEGRATED VIDEO	By CPU model\r\nSupports DX12\r\nSupports HDCP\r\nSTORAGE	4 x SATA III Connectors (6Gb/s)\r\nSupport SATA RAID: 0,1,10\r\nLAN	Realtek RTL 8111H\r\n10/ 100/ 1000 Mb/s auto negotiation, Half / Full duplex capability\r\nAUDIO CODEC	Realtek ALC887\r\n7.1 Channels, High Definition Audio\r\nUSB	4 x USB 3.2 Gen1 ports (2 on rear I/Os and 2 via internal headers)\r\n8 x USB 2.0 ports (4 on rear I/Os and 4 via internal headers)\r\nEXPANSION SLOT	2 x PCIe 2.0 x1 Slots\r\n1 x PCIe 3.0 x16 Slot (When using APU, the bandwidth is x8 speed)\r\nREAR I/O	1 x PS/2 Keyboard / Mouse\r\n1 x VGA Port\r\n1 x HDMI Port\r\n1 x LAN port\r\n2 x USB 3.2 Gen1 (5Gb/s) Ports\r\n4 x USB 2.0 Ports\r\n3 x Audio Jack\r\nINTERNAL I/O	4 x SATA III 6Gb/s Connectors\r\n2 x USB 2.0 Headers (each header supports 2 USB 2.0 ports)\r\n1 x USB 3.2 Gen1 (5Gb/s) Header (each header supports 2 USB 3.2 Gen1 ports)\r\n1 x 4-Pin Power Connector\r\n1 x 24-Pin Power Connector\r\n1 x CPU Fan Connector\r\n1 x System Fan Connector\r\n1 x Front Panel Header\r\n1 x Front Audio Header\r\n1 x COM Serial Header\r\n1 x Clear CMOS Header\r\nH/W MONITORING	CPU / System Temperature Monitoring\r\nCPU / System Fan Monitoring', '1638327548_BIOSTAR A320M 3.jpg', '1638327548_BIOSTAR A320M 2.png', '1638327548_BIOSTAR A320M 1.png', '1638327548_BIOSTAR A320M 4.jpg', 'Motherboad', 10),
(62, 5, 15, 'GIGABYTE B450 AORUS PRO WIFI', 35000, '3 Years Warranty\r\n\r\nCPU\r\nAM4 Socket:\r\nSupport for AMD Ryzen™ 2nd Generation/ Ryzen™ with Radeon™ Vega Graphics/ Athlon™ with Radeon™ Vega Graphics/ Ryzen™ 1st Generation Processors\r\n(Please refer \"CPU Support List\" for more information.)\r\nChipset\r\nAMD B450\r\nMemory\r\n4 x DDR4 DIMM sockets supporting up to 64 GB of system memory\r\nDual channel memory architecture\r\nSupport for DDR4 3200(O.C.)/2933/2667/2400/2133 MHz memory modules\r\nSupport for ECC Un-buffered DIMM 1Rx8/2Rx8 memory modules (operate in non-ECC mode)\r\nSupport for non-ECC Un-buffered DIMM 1Rx8/2Rx8/1Rx16 memory modules\r\nSupport for Extreme Memory Profile (XMP) memory modules\r\n(Please refer \"Memory Support List\" for more information.)\r\nOnboard Graphics\r\nIntegrated Graphics Processor:\r\n1 x DVI-D port, supporting a maximum resolution of 1920x1200@60 Hz\r\n* The DVI-D port does not support D-Sub connection by adapter.\r\n1 x HDMI port, supporting a maximum resolution of 4096x2160@60 Hz\r\n* Support for HDMI 2.0 version and HDCP 2.2.\r\n* Actual support may vary by CPU.\r\nMaximum shared memory of 16 GB\r\nAudio\r\nRealtek® ALC1220-VB codec\r\nHigh Definition Audio\r\n2/4/5.1/7.1-channel\r\nSupport for S/PDIF Out\r\nLAN\r\nIntel® GbE LAN chip (10/100/1000 Mbit)\r\nWireless Communication module\r\nWi-Fi 802.11 a/b/g/n/ac, supporting 2.4/5 GHz Dual-Band\r\nBLUETOOTH 4.2', '1638328071_GIGABYTE B450 AORUS PRO WIFI 1.jpg', '1638328071_GIGABYTE B450 AORUS PRO WIFI 3.png', '1638328071_GIGABYTE B450 AORUS PRO WIFI 4.jpg', '1638328071_GIGABYTE B450 AORUS PRO WIFI 2.jpg', 'Motherboad', 10),
(63, 5, 6, 'MSI MPG X570 GAMING EDGE WIFI', 52000, '3 Years Warranty\r\n\r\nPROCESSOR\r\nSupports 2nd and 3rd Gen AMD Ryzen™ / Ryzen™ with Radeon™ Vega Graphics and 2nd Gen AMD Ryzen™ with Radeon™ Graphics Desktop Processors for Socket AM4\r\n\r\nSee supported processors\r\n\r\nCHIPSET\r\nAMD® X570 Chipset\r\n\r\nMEMORY\r\n4x DDR4 memory slots, support up to 128GB\r\ns3rd Gen AMD Ryzen™ Processors support DDR4 1866/ 2133/ 2400/ 2667/ 2800/ 2933/ 3000/ 3066/ 3200 Mhz by JEDEC, and 2667/ 2800 /2933 /3000 /3066 /3200 /3466 /3600/ 3733 /3866 /4000 /4133 /4266 /4400 Mhz by A-XMP OC MODE\r\n2nd Gen AMD Ryzen™ Processors, 1st and 2nd Gen AMD Ryzen™ with Radeon™ Vega Graphics Processors support DDR4 1866/ 2133/ 2400/ 2667/ 2800/ 2933/ 3000/ 3066/ 3200 Mhz by JEDEC, and 2667 /2800 / 2933 /3000 /3066 /3200 /3466 Mhz by A-XMP OC MODE\r\nDual channel memory architecture\r\nSupports non-ECC UDIMM memory\r\nSupports ECC UDIMM memory (non-ECC mode)\r\nSupports un-buffered memory\r\nPlease refer www.msi.com for more information on compatible memory.\r\nSee supported memory\r\n\r\nEXPANSION SLOTS\r\n1x PCIe 4.0/ 3.0 x16 slot (PCI_E1)\r\n3rd Gen AMD Ryzen™ support PCIe 4.0 x16 mode\r\n2nd Gen AMD Ryzen™ support PCIe 3.0 x16 mode\r\nRyzen™ with Radeon™ Vega Graphics and 2nd Gen AMD Ryzen™ with Radeon™ Graphics support PCIe 3.0 x8 mode\r\n1x PCIe 4.0/ 3.0 x16 slot (PCI_E3, supports x4 mode)\r\n3x PCIe 3.0 x1 slots1\r\nPCI_E2 will be unavailable when installing the PCIe card in PCI_E4 slot.The speeds may vary for different devices\r\nONBOARD GRAPHICS\r\n1x HDMI 1.4 port, supports a maximum resolution of 4096x2160 @24Hz1\r\nOnly support when using Ryzen™ with Radeon™ Vega Graphics and 2nd Gen AMD Ryzen™ with Radeon™ Graphics ProcessorsMaximum shared memory of 2048 MB\r\nMULTI-GPU\r\nSupports 2-Way AMD® CrossFire™ Technology\r\nSTORAGE\r\nAMD® X570 Chipset\r\n6x SATA 6Gb/s ports\r\n2x M.2 slots (Key M)\r\nM2_1 slot (from AMD® Processor)\r\n- Supports PCIe 4.0 x4 (3rd Gen AMD Ryzen™)\r\n- Supports PCIe 3.0 x4 (2nd Gen AMD Ryzen™/ Ryzen™ with Radeon™ Vega Graphics and 2nd Gen AMD Ryzen™ with Radeon™ Graphics)\r\n- Supports 2242/ 2260/ 2280/ 22110 storage devices\r\nM2_2 slot (from AMD® X570 Chipset)\r\n- Supports PCIe 3.0 x4 and SATA 6Gb/s\r\n- Supports 2242/ 2260/ 2280 storage devices\r\nRAID\r\nAMD® X570 Chipset\r\nSupports RAID 0, RAID 1 and RAID 10', '1638328396_MSI MPG X570 GAMING EDGE WIFI 1.jpg', '1638328396_MSI MPG X570 GAMING EDGE WIFI 2.jpg', '1638328396_MSI MPG X570 GAMING EDGE WIFI 4.jpg', '1638328396_MSI MPG X570 GAMING EDGE WIFI 3.jpg', 'Motherboad', 10);
INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_image2`, `product_image3`, `product_image4`, `product_keywords`, `product_qty`) VALUES
(64, 6, 5, 'ASUS ROG STRIX RTX 3060 12GB GAMING', 208000, ' 03 YEARS WARRANTY\r\n\r\nGraphic Engine\r\nNVIDIA® GeForce RTX™ 3060\r\nBus Standard\r\nPCI Express 4.0\r\nOpenGL\r\nOpenGL®4.6\r\nVideo Memory\r\n12GB GDDR6\r\nEngine Clock\r\nOC Mode - 1912  MHz (Boost Clock)\r\nGaming Mode - 1882  MHz (Boost Clock)\r\nCUDA Core\r\n3584\r\nMemory Speed\r\n15 Gbps\r\nMemory Interface\r\n192-bit\r\nResolution\r\nDigital Max Resolution 7680 x 4320\r\nInterface\r\nYes x 2 (Native HDMI 2.1)\r\nYes x 3 (Native DisplayPort 1.4a)\r\nHDCP Support Yes (2.3)\r\nMaximum Display Support\r\n4\r\nNVlink/ Crossfire Support\r\nNo\r\nAccessories\r\n1 x ROG Velcro Hook & Loop\r\n1 x Collection card\r\n1 x Speedsetup manual', '1638328699_ASUS ROG STRIX RTX 3060 12GB GAMING 4.jpg', '1638328699_ASUS ROG STRIX RTX 3060 12GB GAMING 1.jpg', '1638328699_ASUS ROG STRIX RTX 3060 12GB GAMING 3.png', '1638328699_ASUS ROG STRIX RTX 3060 12GB GAMING 2.jpg', 'Graphic Card', 5),
(65, 6, 5, 'ASUS PHOENIX GTX 1050TI 4GB ( SYSTEM ONLY )', 58500, ' 03 YEARS WARRANTY\r\nProduct Specifications\r\n\r\nGraphic Engine\r\nNVIDIA® GeForce GTX 1050 Ti\r\nBus Standard\r\nPCI Express 3.0\r\nVideo Memory\r\n4GB GDDR5\r\nEngine Clock\r\nGPU Boost Clock : 1392 MHz\r\nGPU Base Clock : 1290 MHz\r\nCUDA Core\r\n768\r\nMemory Speed\r\n7008 MHz\r\nMemory Interface\r\n128-bit\r\nResolution\r\nDigital Max Resolution 7680 x 4320\r\nInterface\r\nYes x 1 (Native DVI-D)\r\nYes x 1 (Native HDMI2.0b)\r\nYes x 1 (Native DisplatPort 1.4)\r\nYes (2.2)\r\nMaximum Display Support\r\n3\r\nAccessories\r\n1 x Quick Guide\r\nSoftware\r\nASUS GPU Tweak II & Drivers: please download all software from the support site.\r\nDimensions\r\n7.6 \" x 4.4 \" x 1.5 \" Inch\r\n19.2 x 11.1 x3.7 Centimeter\r\n7.6 \" x 4.4 \" x 1.5 \" Inch\r\n19.2 x 11.1 x3.7 Centimeter', '1638329192_ASUS PHOENIX GTX 1050TI 4GB ( SYSTEM ONLY ) 1.png', '1638329192_ASUS PHOENIX GTX 1050TI 4GB ( SYSTEM ONLY ) 3.jfif', '1638329192_ASUS PHOENIX GTX 1050TI 4GB ( SYSTEM ONLY ) 2.png', '1638329192_ASUS PHOENIX GTX 1050TI 4GB ( SYSTEM ONLY ) 4.jpg', 'Graphic Card', 10),
(66, 6, 5, 'ASUS TUF GAMING GTX 1650 4GB OC', 90000, '03 YEARS WARRANTY\r\n\r\nGraphic Engine\r\nNVIDIA® GeForce GTX 1650\r\nBus Standard\r\nPCI Express 3.0\r\nOpenGL\r\nOpenGL®4.6\r\nVideo Memory\r\n4GB GDDR5\r\nEngine Clock\r\nOC Mode - GPU Boost Clock : 1785 MHz , GPU Base Clock : 1515 MHz\r\nGaming Mode (Default) - GPU Boost Clock : 1755 MHz , GPU Base Clock : 1485 MHz\r\nCUDA Core\r\n896\r\nMemory Speed\r\n8002 MHz\r\nMemory Interface\r\n128-bit\r\nResolution\r\nDigital Max Resolution 7680 x 4320\r\nInterface\r\nYes x 1 (Native DVI-D)\r\nYes x 1 (Native HDMI 2.0b)\r\nYes x 1 (Native DisplayPort 1.4)\r\nHDCP Support Yes (2.2)\r\nMaximum Display Support\r\n3\r\nNVlink/ Crossfire Support\r\nNo\r\nAccessories\r\nYes x 1\r\nSoftware\r\nASUS GPU Tweak II & Drivers: please download all software from the support site.\r\nDimensions\r\n7.9 \" x 4.4 \" x 1.8 \" Inch\r\n20 x 11.2 x4.7 Centimeter\r\nRecommended PSU\r\n300W\r\nSlot\r\n2.3 Slot ', '1638329405_ASUS TUF GAMING GTX 1650 4GB OC 1.png', '1638329405_ASUS TUF GAMING GTX 1650 4GB OC 4.jpg', '1638329405_ASUS TUF GAMING GTX 1650 4GB OC 2.png', '1638329405_ASUS TUF GAMING GTX 1650 4GB OC 3.png', 'Graphic Card', 10),
(67, 6, 15, 'GIGABYTE GT710 2GB DDR5', 13500, 'Features\r\nPowered by NVIDIA GeForce GT 710 GPU\r\nIntegrated with 2GB GDDR5 64bit memory interface\r\nCore clock? 954MHz\r\nFeatures Dual-link DVI-I / HDMI\r\nSupport PCI Express 2.0 x8 bus interface\r\nRecommended system power supply requirement: 300W', '1638353064_GIGABYTE GT710 2GB DDR5 1.jpg', '1638353064_GIGABYTE GT710 2GB DDR5 2.png', '1638353064_GIGABYTE GT710 2GB DDR5 4.png', '1638353064_GIGABYTE GT710 2GB DDR5 3.jpg', 'Graphic Card', 10),
(68, 6, 15, 'GIGABYTE GEFORCE RTX 3080 GAMING OC 10G', 340000, '3 Years Warranty\r\n\r\nGraphics Processing\r\nGeForce RTX™ 3080\r\nCore Clock\r\n1?800 MHz (Reference Card: 1710 MHz)\r\nCUDA® Cores\r\n8?704\r\nMemory Clock\r\n1?9000 MHz\r\nMemory Size\r\n1?0 GB\r\nMemory Type\r\nGDDR6X\r\nMemory Bus\r\n3?20 bit\r\nMemory Bandwidth (GB/sec)\r\n7?60 GB/s\r\nCard Bus\r\nPCI-E 4.0 x 16\r\nDigital max resolution\r\n7?680x4320@60Hz\r\nMulti-view\r\n4?\r\nCard size\r\nL=320 W=129 H=55 mm\r\nPCB Form\r\nATX\r\nDirectX\r\n1?2 Ultimate\r\nOpenGL\r\n4?.6\r\nRecommended PSU\r\n7?50W\r\nPower Connectors\r\n8? pin*2\r\nOutput\r\nDisplayPort 1.4a *3\r\nHDMI 2.1 *2\r\nSLI Support\r\nN/A', '1638353351_GIGABYTE GEFORCE RTX 3080 GAMING OC 10G 1.png', '1638353351_GIGABYTE GEFORCE RTX 3080 GAMING OC 10G 2.png', '1638353351_GIGABYTE GEFORCE RTX 3080 GAMING OC 10G 3.jpg', '1638353351_GIGABYTE GEFORCE RTX 3080 GAMING OC 10G 4.jpg', 'Graphic Card', 10),
(69, 6, 6, 'MSI RTX™ 3070 GAMING Z TRIO 8GB LHR', 259000, '3 Years Warranty\r\n\r\nModel Name GeForce RTX™ 3070 GAMING Z TRIO 8G LHR\r\nGraphics Processing Unit NVIDIA®\r\nGeForce RTX™ 3070\r\nInterface PCI Express®\r\nGen 4\r\nCores 5888 Units\r\nCore Clocks Boost: 1845 MHz\r\nMemory Speed 14 Gbps\r\nMemory 8GB GDDR6\r\nMemory Bus 256-bit\r\nOutput\r\nDisplayPort x 3 (v1.4)\r\n/ HDMI x 1 (Supports 4K@120Hz as specified\r\nin HDMI 2.1)\r\nHDCP Support Y\r\nPower consumption 240W\r\nPower connectors 8-pin x2\r\nRecommended PSU 650W\r\nCard Dimension (mm) 323 x 140 x 56mm\r\nWeight (Card / Package) 1458 g / 2286 g\r\nDirectX Version Support 12 API\r\nOpenGL Version Support 4.6\r\nMulti-GPU Technology Y\r\nMaximum Displays 4\r\nVR Ready Y\r\nG-SYNC®\r\ntechnology Y\r\nAdaptive Vertical Sync Y\r\nDigital Maximum Resolution 7680x4320', '1638353911_MSI RTX™ 3070 GAMING Z TRIO 8GB LHR 1.png', '1638353911_MSI RTX™ 3070 GAMING Z TRIO 8GB LHR 2.jpg', '1638353911_MSI RTX™ 3070 GAMING Z TRIO 8GB LHR 4.jpg', '1638353911_MSI RTX™ 3070 GAMING Z TRIO 8GB LHR 3.jpg', 'Graphic Card', 10),
(70, 6, 16, 'ZOTAC RTX 3070 TI 8GB TRINITY OC GAMING', 235000, '03 YEARS WARRANTY\r\n\r\nPRODUCT SPECIFICATION\r\n Specifications\r\nGPUGeForce RTX 3070 Ti\r\nCUDA Core6144\r\nvideo memory8GB GDDR6X\r\nmemory bus256-bit\r\nengine clockBoost: 1800 MHz\r\nmemory clock19 Gbps\r\nPCI Express4.0 16x\r\ndisplay output3 x DisplayPort 1.4a (up to 7680x4320@60Hz)\r\nHDMI 2.1* (up to 7680x4320@60Hz)\r\n*Ultra High Speed HDMI Cable is required to support 8K/60FPS or 4K/120FPS\r\nHDCP support2.3\r\nmulti displayQuad Display\r\nRecommended power supply voltage750W\r\npower consumption310W\r\nPower Input2 x 8-pin\r\nDirectX12 Ultimate\r\nOpenGL4.6\r\ncooling systemIceStorm 2.0\r\nslot size2.5 slot\r\nSLINot Supported\r\nOS supportWindows 10 64-bit (build 2004 or later)\r\ncard length317.6mm x 117.6mm x 58.8mm / 12.5\" x 4.6\" x 2.3\"\r\nSupport Accessories2 x Dual 6-pin to 8-pin cable\r\nManual ', '1638354176_ZOTAC RTX 3070 TI 8GB TRINITY OC GAMING 1.jpg', '1638354176_ZOTAC RTX 3070 TI 8GB TRINITY OC GAMING 2.jpg', '1638354176_ZOTAC RTX 3070 TI 8GB TRINITY OC GAMING 4.jpg', '1638354176_ZOTAC RTX 3070 TI 8GB TRINITY OC GAMING 3.jpg', 'Graphic Card', 10),
(71, 6, 17, 'EVGA RTX 3060TI 8GB FTW3 ULTRA GAMING', 195000, ' 02 YEARS WARRANTY\r\n\r\nPerformance\r\nNVIDIA RTX 3060 Ti\r\n4864 CUDA Cores\r\n1800 MHz Boost Clock\r\n273.6GT/s Texture Fill Rate\r\nMemory\r\n8192 MB, 256 bit GDDR6\r\n14000 MHz (effective)\r\n448 GB/s Memory Bandwidth\r\nCooling\r\niCX3 Cooling\r\nLED Logo: ARGB\r\nInterface\r\nPCIe 4.0\r\nHDMI, DisplayPort, DisplayPort, DisplayPort\r\nDimensions\r\nHeight: 4.38 in - 111.15mm\r\nLength: 11.23 in - 285.37mm\r\nWidth: 2.2 Slots\r\nOperating System Support\r\nWindows 10 64bit\r\nWindows 7 64bit\r\nRequirements\r\nMinimum of a 600 Watt power supply.\r\nTwo available 8-pin or 6+2pin PCIe power dongles\r\nTotal Power Draw : 200 Watts ', '1638354462_EVGA RTX 3060TI 8GB FTW3 ULTRA GAMING 1.jpg', '1638354462_EVGA RTX 3060TI 8GB FTW3 ULTRA GAMING 4.jpg', '1638354462_EVGA RTX 3060TI 8GB FTW3 ULTRA GAMING 2.png', '1638354462_EVGA RTX 3060TI 8GB FTW3 ULTRA GAMING 3.png', 'Graphic Card', 10),
(72, 7, 18, 'ADATA 4GB DDR4 2666MHZ', 7000, '3 years Warranty\r\n\r\nModule Type U-DIMM\r\nForm Factor standard 1.23\" height\r\nMemory Type DDR4\r\nStandard JEDEC\r\nInterface 288-pin\r\nDensity 4GB\r\nSpeed 2666MHz\r\nPower supply VDD and VDDQ = 1.2V±0.06V\r\nDRAM activation power supply VPP= 2.5V (+0.25V / -0.125V)\r\nDRAM spec/VCC DDR4 STD 1.2V\r\nOperating temperature 0°C to 85°C', '1638354979_ADATA 4GB DDR4 2666MHZ 1.jpg', '1638354979_ADATA 4GB DDR4 2666MHZ 2.jpg', '1638354979_ADATA 4GB DDR4 2666MHZ 1.jpg', '1638354979_ADATA 4GB DDR4 2666MHZ 2.jpg', 'RAM', 16),
(73, 7, 18, 'ADATA XPG D60 RGB 8GB 3200MHZ', 12000, '3 Years Warranty\r\n\r\nColor\r\nTungsten Grey\r\n\r\nCapacity\r\n8GB\r\n\r\nDimensions (L x W x H)\r\n133.35 x 45.93 x 8.4mm\r\n\r\nWeight\r\n46\r\n\r\nInterface\r\nDDR4 U-DIMM 3200\r\n\r\nOperating Temperature\r\n0°C to 85°C\r\n\r\nStorage Temperature\r\n-20°C to 65°C\r\n\r\nOperating Voltage\r\n1.2V - 1.4V\r\n', '1638355216_ADATA XPG D60 RGB 8GB 3200MHZ 1.png', '1638355216_ADATA XPG D60 RGB 8GB 3200MHZ 4.jpg', '1638355216_ADATA XPG D60 RGB 8GB 3200MHZ 3.jpg', '1638355216_ADATA XPG D60 RGB 8GB 3200MHZ 2.jpg', 'RAM', 20),
(74, 7, 19, 'ADDLINK SPIDER 4 8GB 3200MHZ DDR4 GAMING MEMORY', 10500, '3 Years Warranty\r\nHigh-Quality IC?The Spider 4 DDR4 build with selected high-quality ICs and undergo a strict production process for complete reliability, stability, and compatibility.\r\n?Premium Heatsink?Exclusively design with a diamond-cut inner black Spider totem on a pure high-quality aluminum heatsink provides a faster heat dissipation and cooler operation.\r\n?Low Profile Design?Spider 4 is designed with a 36mm module height compatible with the most PC and smaller form factor chassis.\r\n?XMP 2.0 Support?Spider 4 Supports Intel XMP 2.0. One-setting and overclocking. Simple setting pre-defined profile in BIOS to enhance the best performance built into PCs.\r\n?Ready for AMD Ryzen?The memory is ready for AMD Ryzen and compatible with both Intel and AMD series platforms.', '1638355567_ADDLINK SPIDER 4 8GB 3200MHZ DDR4 GAMING MEMORY 1.png', '1638355567_ADDLINK SPIDER 4 8GB 3200MHZ DDR4 GAMING MEMORY 2.jpg', '1638355567_ADDLINK SPIDER 4 8GB 3200MHZ DDR4 GAMING MEMORY 1.png', '1638355567_ADDLINK SPIDER 4 8GB 3200MHZ DDR4 GAMING MEMORY 2.jpg', 'RAM', 20),
(75, 7, 2, 'SAMSUNG 8GB DDR4 3200MHZ LAPTOP RAM', 12000, 'Warranty : 2 Years\r\n\r\nMemory Size : 8GB\r\n\r\nSpeed : 3200 MHz', '1638355800_SAMSUNG 8GB DDR4 3200MHZ LAPTOP RAM 1.jpg', '1638355800_SAMSUNG 8GB DDR4 3200MHZ LAPTOP RAM 23.jpg', '1638355800_SAMSUNG 8GB DDR4 3200MHZ LAPTOP RAM 1.jpg', '1638355800_SAMSUNG 8GB DDR4 3200MHZ LAPTOP RAM 23.jpg', 'RAM', 20),
(76, 7, 20, 'KINGSTON FURY RGB BEAST 8GB DDR4 3200MHZ', 12000, '3 Years Warranty\r\n\r\nFURY KF432C16BBA/8 is a 1G x 64-bit (8GB) DDR4-3200 CL16\r\nSDRAM (Synchronous DRAM) 1Rx8, memory module, based on\r\neight 1G x 8-bit FBGA components per module. Each module kit\r\nsupports Intel® Extreme Memory Profiles (Intel® XMP) 2.0. Each\r\nmodule has been tested to run at DDR4-3200 at a low latency timing\r\nof 16-18-18 at 1.35V. The SPDs are programmed to JEDEC\r\nstandard latency DDR4-2400 timing of 17-17-17 at 1.2V. Each\r\n288-pin DIMM uses gold contact fingers. The JEDEC standard\r\n\r\n• Power Supply: VDD = 1.2V Typical\r\n• VDDQ = 1.2V Typical\r\n• VPP = 2.5V Typical\r\n• VDDSPD = 2.2V to 3.6V\r\n• On-Die termination (ODT)\r\n• 16 internal banks; 4 groups of 4 banks each\r\n• Bi-Directional Differential Data Strobe\r\n• 8 bit pre-fetch\r\n• Burst Length (BL) switch on-the-fly BL8 or BC4(Burst Chop)\r\n• Height 1.62” (41.2mm), w/heatsink', '1638356283_KINGSTON FURY RGB BEAST 8GB DDR4 3200MHZ 3.jpg', '1638356283_KINGSTON FURY RGB BEAST 8GB DDR4 3200MHZ 4.jpg', '1638356283_KINGSTON FURY RGB BEAST 8GB DDR4 3200MHZ 1.jpg', '1638356283_KINGSTON FURY RGB BEAST 8GB DDR4 3200MHZ 2.jpg', 'RAM', 20),
(77, 7, 21, 'CORSAIR VENGEANCE® PRO RGB 32GB (2 X16GB) DDR4 3200MHZ', 49000, '3 Years Warranty\r\n\r\nMemory Series VENGEANCE RGB PRO\r\nMemory Type DDR4\r\nMemory Size 32GB Kit (2 x 16GB)\r\nTested Latency 16-20-20-38\r\nTested Voltage 1.35V\r\nTested Speed 3200MHz\r\n\r\nMemory Color BLACK\r\nLED Lighting RGB\r\nSingle Zone / Multi-Zone Lighting Individually Addressable\r\nSPD Latency 15-15-15-36\r\nSPD Speed 2133MHz\r\nSPD Voltage 1.2V\r\nSpeed Rating PC4-25600 (3200MHz)\r\nCompatibility Intel Z390,AMD 400 Series,AMD 500 Series,AMD X570\r\nHeat Spreader Anodized Aluminum\r\nPackage Memory Format DIMM\r\nPerformance Profile XMP 2.0\r\nPackage Memory Pin 288', '1638358282_CORSAIR VENGEANCE® PRO RGB 32GB (2 X16GB) DDR4 3200MHZ 2.png', '1638358282_CORSAIR VENGEANCE® PRO RGB 32GB (2 X16GB) DDR4 3200MHZ 1.jpg', '1638358282_CORSAIR VENGEANCE® PRO RGB 32GB (2 X16GB) DDR4 3200MHZ 4.jpg', '1638358282_CORSAIR VENGEANCE® PRO RGB 32GB (2 X16GB) DDR4 3200MHZ 3.jfif', 'RAM', 20),
(78, 7, 22, 'T-FORCE GAMING NIGHT HAWK RGB 32GB (2 X 16GB) 3600MHZ', 44000, 'Specifications\r\nSeries: NIGHT HAWK\r\nModule Type: 288 Pin Unbuffered DIMM Non ECC\r\nCapacity: 16GBx2\r\nFrequency:3600MHz\r\nData Transfer Bandwidth: 28,800 MB/s\r\n(PC4 28800)\r\nDimensions: 53(H) x 147(L) x 9(W)mm\r\nLatency: CL18-22-22-42\r\nTested Voltage: 1.35V\r\nHeat Spreader: Aluminum heat spreader\r\nDimensions 53(H) x 147(L) x 9(W)mm\r\nHeat Spreader Aluminum heat spreader\r\nWarranty 3 Years', '1638358684_T-FORCE GAMING NIGHT HAWK RGB 32GB (2 X 16GB) 3600MHZ 1.png', '1638358684_T-FORCE GAMING NIGHT HAWK RGB 32GB (2 X 16GB) 3600MHZ 2.jpg', '1638358684_T-FORCE GAMING NIGHT HAWK RGB 32GB (2 X 16GB) 3600MHZ 3.jpg', '1638358684_T-FORCE GAMING NIGHT HAWK RGB 32GB (2 X 16GB) 3600MHZ 4.jpg', 'RAM', 20),
(79, 8, 5, 'ASUS ROG STRIX 750W 80 PLUS GOLD FULLY MODULAR', 31000, '03 YEARS WARRANTY\r\n\r\nIntel Specification\r\nATX12V\r\nATX12V\r\nDimensions\r\n16 x 15 x 8.6 Centimeter\r\n16 x 15 x 8.6 Centimeter\r\nEfficiency\r\n80Plus Gold\r\n80Plus Gold\r\nProtection Features\r\nOPP/OVP/UVP/SCP/OCP/OTP\r\nOPP/OVP/UVP/SCP/OCP/OTP\r\nHazardous Materials\r\nROHS\r\nROHS\r\nAC Input Range\r\n100-240Vac\r\n100-240Vac\r\nRGB Connector\r\nNA\r\nNA\r\nThermal Features\r\nROG Thermal Solution\r\nROG Thermal Solution\r\nFan Size\r\n135mm\r\n135mm\r\nDC Output Voltage\r\n+3.3V +5V +12V -12V +5Vsb\r\n+3.3V +5V +12V -12V +5Vsb\r\nMaximum Load\r\n20A 20A 62A 0.3A 3A\r\n20A 20A 62A 0.3A 3A\r\nTotal Output\r\n750W\r\n750W\r\nConnectors\r\nMB 24/20-pin x 1\r\nCPU 4+4-pin x 2\r\nPCI-E 6+2-pin x 4\r\nSATA x 8\r\nPeripheral x 3\r\nMB 24/20-pin x 1\r\nCPU 4+4-pin x 2\r\nPCI-E 6+2-pin x 4\r\nSATA x 8\r\nPeripheral x 3\r\nPackage Contents\r\nPower Cord x 1\r\nMotherboard Power cable x 1\r\nCPU Cable 1000mm x 2\r\nPCI-E Cable x 2\r\nSATA Cable x 2\r\nPeripheral x 1\r\nJoin the ROG badge x 2\r\nROG logo magnet x 1\r\nROG label x 3', '1638359077_ASUS ROG STRIX 750W 80 PLUS GOLD FULLY MODULAR1.png', '1638359077_ASUS ROG STRIX 750W 80 PLUS GOLD FULLY MODULAR3.png', '1638359077_ASUS ROG STRIX 750W 80 PLUS GOLD FULLY MODULAR4.jpg', '1638359077_ASUS ROG STRIX 750W 80 PLUS GOLD FULLY MODULAR2.jpg', 'PowerSupply', 20),
(80, 8, 5, 'ASUS TUF GAMING 450W BRONZE', 15000, '03 YEARS WARRANTY\r\n\r\nIntel Specification\r\nATX12V\r\nDimensions\r\n15 x 15 x 8.6 Centimeter\r\nEfficiency\r\n80Plus Bronze\r\nProtection Features\r\nOPP/OVP/UVP/SCP/OCP/OTP\r\nHazardous Materials\r\nROHS\r\nAC Input Range\r\n100-240Vac\r\nDC Output Voltage\r\n+3.3V +5V +12V -12V +5Vsb\r\nMaximum Load\r\n20A 20A 37.4A 0.8A 3A\r\nTotal Output\r\n450W\r\nConnectors\r\nMB 24/20-pin x1\r\nCPU 4+4-pin x1\r\nPCI-E 6+2-pin x2\r\nSATA x5\r\nPeriplheral x4\r\nPackage Contents\r\nPower Cord x1\r\nMotherboard Power Cable x1 (600mm)\r\nCPU Cable x1 (800mm)\r\nPCI-E Cable x1 (600mm)\r\nSATA Cable x2 (400+120mm x1, 400+120+120mm x1)\r\nPeriphreal x1 (400+150+150+150mm)\r\nTUF Gaming sticker x1 ', '1638359414_ASUS TUF GAMING 450W BRONZE 1.png', '1638359414_ASUS TUF GAMING 450W BRONZE 3.png', '1638359414_ASUS TUF GAMING 450W BRONZE 2.png', '1638359414_ASUS TUF GAMING 450W BRONZE 4.png', 'PowerSupply', 20),
(81, 8, 5, 'ASUS ROG-STRIX-850G', 36000, '10 YEARS WARRANTY\r\nIntel Specification\r\nATX12V\r\nDimensions\r\n16 x 15 x 8.6 Centimeter\r\nEfficiency\r\n80Plus Gold\r\nProtection Features\r\nOPP/OVP/SCP/OCP/OTP\r\nHazardous Materials\r\nROHS\r\nAC Input Range\r\n100-240Vac\r\n\r\n\r\n\r\n\r\nRGB Connector\r\n\r\nNO\r\n\r\n\r\n\r\nThermal Features\r\n\r\nROG Thermal Solution', '1638360114_ASUS ROG-STRIX-850G 2.jpg', '1638360114_ASUS ROG-STRIX-850G 1.jpg', '1638360114_ASUS ROG-STRIX-850G 3.jpg', '1638360114_ASUS ROG-STRIX-850G 4.png', 'PowerSupply', 20),
(82, 8, 23, 'COOLER MASTER MWE GOLD 650W V2 FULL MODULAR', 22500, ' 02 YEARS WARRANTY\r\n\r\nMODEL\r\nMPE-6501-AFAAG\r\nATX VERSION\r\nATX 12V\r\nPFC\r\nActive PFC\r\nINPUT VOLTAGE\r\n90-264V\r\nINPUT CURRENT\r\n8-4A\r\nINPUT FREQUENCY\r\n47-63Hz\r\nDIMENSIONS (L X W X H)\r\n160 x 150 x 86 mm\r\nFAN SIZE\r\n120mm\r\nFAN BEARING\r\nHDB\r\nFAN SPEED\r\n1500 RPM\r\nNOISE LEVEL @ 20%\r\n0 dBA\r\nNOISE LEVEL @ 50%\r\n17.9 dBA\r\nNOISE LEVEL @ 100%\r\n23.4 dBA\r\nEFFICIENCY\r\n90% @ Typical Load\r\n80 PLUS RATING\r\n80 PLUS Gold\r\nERP 2014 LOT 3\r\nYes\r\nOPERATING TEMPERATURE\r\n0-50°C\r\nPOWER GOOD SIGNAL\r\n100 - 150 ms\r\nHOLD UP TIME\r\n>16ms at 100% Load\r\nMTBF\r\n>100,000 Hours\r\nPROTECTIONS\r\nOVP, OPP, OTP, SCP, OCP, UVP\r\nREGULATORY\r\nTUV, CE, CCC, EAC, RCM, cTUVus, FCC, BSMI\r\nATX 24-PIN CONNECTORS\r\n1\r\nEPS 4+4 PIN CONNECTORS\r\n1\r\nEPS 8 PIN CONNECTOR\r\n1\r\nSATA CONNECTORS\r\n8\r\nPERIPHERAL 4-PIN CONNECTORS\r\n4\r\nPCI-E 6+2 PIN CONNECTORS\r\n4\r\nSERIES\r\nMWE Gold Series\r\n80 PLUS\r\nGold\r\nMODULAR\r\nFull Modular\r\nWATTAGE\r\n500 to 750W ', '1638360856_COOLER MASTER MWE GOLD 650W V2 FULL MODULAR 1.jpg', '1638360856_COOLER MASTER MWE GOLD 650W V2 FULL MODULAR 4.jpg', '1638360856_COOLER MASTER MWE GOLD 650W V2 FULL MODULAR 2.jpg', '1638360856_COOLER MASTER MWE GOLD 650W V2 FULL MODULAR 3.jfif', 'PowerSupply', 20),
(83, 8, 21, 'CORSAIR CV750 750W 80 PLUS BRONZE', 19500, ' 03 YEARS WARRANTY\r\n\r\nWeight 1.9\r\nAdjustable Single/Multi 12V Rail No\r\nATX Connector 1\r\nATX12V Version v2.31\r\nContinuous power W 750 Watts\r\nFan bearing technology Sleeve\r\nFan size mm 120mm\r\nMTBF hours 100,000 hours\r\nMulti-GPU ready No\r\nWarranty 3 Year\r\nPSU Form Factor ATX\r\nZero RPM Mode No\r\n \r\nEPS12V Connector 2\r\nFloppy Connector 1\r\nModular No\r\nPCIe Connector 2\r\nSATA Connector 7 ', '1638361123_CORSAIR CV750 750W 80 PLUS BRONZE 1.jpg', '1638361123_CORSAIR CV750 750W 80 PLUS BRONZE 2.jpg', '1638361123_CORSAIR CV750 750W 80 PLUS BRONZE 4.jpg', '1638361123_CORSAIR CV750 750W 80 PLUS BRONZE 3.jpg', 'PowerSupply', 20),
(84, 8, 21, 'CORSAIR CV450 450W 80 PLUS BRONZE', 9500, ' 03 YEARS WARRANTY \r\n\r\nWeight 1.79\r\nAdjustable Single/Multi 12V Rail No\r\nATX Connector 1\r\nATX12V Version v2.31\r\nContinuous output rated temperature C 30°C\r\nContinuous power W 450 Watts\r\nFan bearing technology Sleeve Bearing\r\nFan size mm 140mm\r\nMTBF hours 100,000 hours\r\nMulti-GPU ready No\r\nWarranty 3 Years\r\n80 PLUS Efficiency Bronze\r\nPSU Form Factor ATX\r\niCUE Compatibility No\r\nZero RPM Mode No\r\n \r\nEPS12V Connector 1\r\nEPS12V Version v2.92\r\nFloppy Connector 1\r\nModular No\r\nPCIe Connector 2\r\nSATA Connector 7\r\nSpecial Technology None\r\nProtections OVP (Over Voltage)\r\nUVP (Under Voltage)\r\nSCP (Short Circuit)\r\nOTP (Over Temp)\r\nOPP (Over Power) ', '1638361391_CORSAIR CV450 450W 80 PLUS BRONZE1.jpg', '1638361391_CORSAIR CV450 450W 80 PLUS BRONZE2.png', '1638361391_CORSAIR CV450 450W 80 PLUS BRONZE3.png', '1638361391_CORSAIR CV450 450W 80 PLUS BRONZE4.png', 'PowerSupply', 20),
(85, 8, 6, 'MSI A650GF 650W GOLD FULLY MODULAR', 24000, '03 YEARS WARRANTY\r\n\r\nPRODUCT NAME  - MPG A650GF\r\nPSU FORM FACTOR - ATX\r\nPOWER WATT - 650W\r\nINPUT VOLTAGE - 100-240Vac\r\nINPUT CURRENT - 115Vac/10.0A max. 230Vac/5.0A max.\r\nINPUT FREQUENCY - 47Hz ~ 63Hz\r\nEFFICIENCY - Up to 90% (80 Plus Gold)\r\nFAN SIZE - 140 mm\r\nDIMENSION - 150mm x160mm x86mm\r\nPFC TYPE - Active PFC\r\nPROTECTION - OCP / OVP / OPP / OTP / SCP / UVP ', '1638361602_MSI A650GF 650W GOLD FULLY MODULAR 1.png', '1638361602_MSI A650GF 650W GOLD FULLY MODULAR 2.jfif', '1638361602_MSI A650GF 650W GOLD FULLY MODULAR 3.jpg', '1638361602_MSI A650GF 650W GOLD FULLY MODULAR 4.png', 'PowerSupply', 20),
(86, 9, 5, 'ASUS ROG STRIX ARION LITE USB 3.2 GEN 2 TYPE-C M.2 NVME SSD ENCLOSURE', 11000, '06 MONTH WARRANTY\r\n\r\nROG Strix Arion Lite\r\n\r\nColor\r\nBlack\r\nInterface\r\nUSB3.2 Gen 2X1\r\nSpeed\r\n10Gbps\r\nCapacity\r\n0TB\r\nOS Compatility\r\nWindows® 7\r\nWindows® 8.1\r\nWindows® 10\r\nMac OS Catalina or later\r\nAndroid devices supported OTG function\r\nSSD Compatility\r\nM.2 PCI Express 2280\r\nM.2 PCI Express 2260\r\nM.2 PCI Express 2242\r\nM.2 PCI Express 2230\r\n*Micron P5 SSD is currently not supported on ROG Strix Arion\r\nAura System Requirement\r\nWindows® 8 / 8.1 64bit\r\nWindows® 10 64bit\r\nDimension\r\n124.5 x 47.7mm x 10.9 mm (L/W/H)\r\nWeight\r\n98g\r\nTemperature\r\nOperating: 0 ?(32 ?)-40 ?(104 ?)\r\nStroage: -20 ?(-4 ?)-60 ?(140 ?)\r\nHumidity\r\nOperating: 15%~80%\r\nStorage: 10%~90%\r\nVoltage\r\n5V\r\nPackage Content\r\nQuick Installation Guide\r\nUSB-C to USB-C cable\r\nPin Ejector', '1638363032_ASUS ROG STRIX ARION LITE USB 3.2 GEN 2 TYPE-C M.2 NVME SSD ENCLOSURE 2.png', '1638363032_ASUS ROG STRIX ARION LITE USB 3.2 GEN 2 TYPE-C M.2 NVME SSD ENCLOSURE 1.jpg', '1638363032_ASUS ROG STRIX ARION LITE USB 3.2 GEN 2 TYPE-C M.2 NVME SSD ENCLOSURE 4.jpg', '1638363032_ASUS ROG STRIX ARION LITE USB 3.2 GEN 2 TYPE-C M.2 NVME SSD ENCLOSURE 3.jpg', 'SSD', 30),
(87, 9, 24, 'TOSHIBA X300 HDWE140UZSVA 4TB 7200 RPM 128MB PERFORMANCE HDD', 28500, '2 Years Warranty\r\n\r\nPerformance\r\nInterface SATA 6.0Gb/s\r\nCapacity 4TB\r\nRPM 7200 RPM\r\nCache 128MB\r\nAverage Latency 4.17ms\r\nFeatures\r\nFeatures High performance designed for the Pro\r\n7,200 RPM speed with 128MB data buffer delivers exceptional performance that gamers and creative professionals demand.\r\n\r\nHigh storage density and capacity\r\nHigh-precision head positioning supported by advanced format technology (physical 4KB sector) and dual stage actuators for impressive high storage density and capacity up to 8TB.', '1638363338_TOSHIBA X300 HDWE140UZSVA 4TB 7200 RPM 128MB PERFORMANCE HDD 3.jpg', '1638363338_TOSHIBA X300 HDWE140UZSVA 4TB 7200 RPM 128MB PERFORMANCE HDD 1.jpg', '1638363338_TOSHIBA X300 HDWE140UZSVA 4TB 7200 RPM 128MB PERFORMANCE HDD 2.jpg', '1638363338_TOSHIBA X300 HDWE140UZSVA 4TB 7200 RPM 128MB PERFORMANCE HDD 4.jpg', 'Hard', 14),
(88, 9, 24, 'TOSHIBA P300 1TB 7200 RPM HARD DRIVE', 9000, '2 Years warranty\r\nBrand\r\nTOSHIBA\r\nSeries\r\nP300\r\nModel\r\nHDWD110XZSTA\r\n\r\nPerformance\r\nInterface\r\nSATA 6.0Gb/s\r\nCapacity\r\n1TB\r\nRPM\r\n7200 RPM\r\nCache\r\n64MB\r\nAverage Latency\r\n4.17ms', '1638363610_TOSHIBA P300 1TB 7200 RPM HARD DRIVE 1.png', '1638363610_TOSHIBA P300 1TB 7200 RPM HARD DRIVE 2.jpg', '1638363610_TOSHIBA P300 1TB 7200 RPM HARD DRIVE 3.jpg', '1638363610_TOSHIBA P300 1TB 7200 RPM HARD DRIVE 4.jpg', 'Hard', 20),
(89, 9, 24, 'TOSHIBA PC L200 1TB LAPTOP HARD DISK', 11000, '2 Years Warranty\r\n\r\nBasic Specifications\r\nInterface\r\nSATA 6.0 Gbit/s)\r\n\r\nAdvanced Format (AF)\r\nYes\r\n\r\nRoHS compatible\r\nYes\r\n\r\nHalogen FreeYes\r\nShock Sensor\r\nYes\r\n\r\nPerformance\r\nRotational speed\r\n5,400 rpm\r\n\r\nBuffer size\r\n128 MB (1 TB Slim, 2 TB), 8 MB (500 GB, 500 GB Slim, 1 TB)\r\n\r\nAverage latency\r\n5.56 ms\r\n\r\nNative Command Queing (NCQ)supported\r\nReliability\r\nMTTF\r\n600,000 hours\r\n\r\nUnrecoverable error rate\r\n1 per 10E14 bits read', '1638363928_TOSHIBA PC L200 1TB LAPTOP HARD DISK 1.png', '1638363928_TOSHIBA PC L200 1TB LAPTOP HARD DISK 2.jpg', '1638363928_TOSHIBA PC L200 1TB LAPTOP HARD DISK 3.jpg', '1638363928_TOSHIBA PC L200 1TB LAPTOP HARD DISK 4.jpg', 'Hard', 20),
(90, 9, 19, 'ADDLINK X70 512GB RGB SSD NVME PCIE GEN3X4 M.2', 22500, '3 Years Warranty\r\n\r\naddgame X70 is addlink’s gaming series SSD. The X70 is covered by a slim and a eye-catching heatsink which reduces the SSD’s temperatures for excellent cooling. With 3D NAND, a DRAM Cache Buffer and LDPC ECC technologies, it maintains extremely high speeds and data integrity during even the most intense gaming, redering, overclocking, and other high demand applications.\r\n\r\nX70 has built-in water flowing lighting with RAINBOW mixed color effect*. The colorful lighting change can be presented at once. Then you are able to enjoy the fun of RAINBOW lighting effect immediately and possess the unique RGB high speed M.2 solid state drive. For ease of use, the X70 is compatible with most motherboards from all the major brands.\r\n\r\nCapacity 512GB\r\nNAND Flash 3D TLC\r\nDRAM Cache DDR3L / DDR4L(High Capacity)\r\nDimensions 80(L)x20(W)x9.1(H) mm, 20g\r\nInterface NVMe GEN3x4 1.3\r\nForm Factor M.2 2280\r\nSeq. Read/Write (MB/s) 512GB: 3400/2000\r\n4K Random Read/Write (IOPS) 512GB: 350K/500K\r\nOperating Temp. 0°C ~ 70°C\r\nStorage Temp. -40°C ~ 85°C\r\nPower Consumption(R/W) 512GB:4.5W/5W\r\nMTBF 1.8 Million Hours\r\nTBW 512GB: 400TBW', '1638364255_ADDLINK X70 512GB RGB SSD NVME PCIE GEN3X4 M.2 1.png', '1638364255_ADDLINK X70 512GB RGB SSD NVME PCIE GEN3X4 M.2 2.png', '1638364255_ADDLINK X70 512GB RGB SSD NVME PCIE GEN3X4 M.2 3.png', '1638364255_ADDLINK X70 512GB RGB SSD NVME PCIE GEN3X4 M.2 4.jpg', 'SSD', 15),
(91, 9, 19, 'ADDLINK X70 512GB RGB SSD NVME PCIE GEN3X4 M.2', 22500, '3 Years Warranty\r\nDetails\r\nForm Factor 2.5\"\r\nCapacity 1TB\r\nMemory Components V-NAND\r\nInterface SATA III\r\nController MKX\r\nCache Samsung 1GB Low Power DDR4 SDRAM\r\nPerformance\r\nMax Sequential Read Up to 560 MBps\r\nMax Sequential Write Up to 530 MBps\r\n4KB Random Read Random (QD1) [IOPS]: 11,000\r\nRandom (QD32) [IOPS]: 98,000\r\n4KB Random Write Random (QD1) [IOPS]: 35,000\r\nRandom (QD32) [IOPS]: 88,000\r\nMTBF 1,500,000 hours\r\nFeatures', '1638364680_ADDLINK X70 512GB RGB SSD NVME PCIE GEN3X4 M.2 1.png', '1638364680_ADDLINK X70 512GB RGB SSD NVME PCIE GEN3X4 M.2 2.png', '1638364680_ADDLINK X70 512GB RGB SSD NVME PCIE GEN3X4 M.2 3.png', '1638364680_ADDLINK X70 512GB RGB SSD NVME PCIE GEN3X4 M.2 4.jpg', 'SSD', 15),
(92, 9, 2, 'SAMSUNG 870 QVO 1TB', 30000, '3 Years Warranty\r\n\r\nDetails\r\nForm Factor 2.5\"\r\nCapacity 1TB\r\nMemory Components V-NAND\r\nInterface SATA III\r\nController MKX\r\nCache Samsung 1GB Low Power DDR4 SDRAM\r\nPerformance\r\nMax Sequential Read Up to 560 MBps\r\nMax Sequential Write Up to 530 MBps\r\n4KB Random Read Random (QD1) [IOPS]: 11,000\r\nRandom (QD32) [IOPS]: 98,000\r\n4KB Random Write Random (QD1) [IOPS]: 35,000\r\nRandom (QD32) [IOPS]: 88,000\r\nMTBF 1,500,000 hours\r\nFeatures', '1638364993_SAMSUNG 870 QVO 1TB 1.png', '1638364993_SAMSUNG 870 QVO 1TB 2.png', '1638364993_SAMSUNG 870 QVO 1TB 1.png', '1638364993_SAMSUNG 870 QVO 1TB 4.jfif', 'Hard', 20),
(93, 10, 5, 'ASUS ROG RYUJIN II 360 LIQUID COOLER', 85000, ' 03 YEARS WARRANTY\r\n\r\nROG RYUJIN II 360\r\n\r\nWater Block\r\nWater block dimention:\r\n78.15 x 87.5 x 81 mm\r\nBlock Material (CPU Plate):\r\nCopper\r\n- Speed:\r\n4,800 RPM +/- 10%\r\n- Air Pressure:\r\n3.23 mmH2O\r\n- Air Flow: \r\n19.41 CFM\r\nPump\r\nPump Solution:\r\n7th gen Asetek pump\r\nMotor Speed:\r\n840 - 2,800 +/- 300  RPM\r\nPower:\r\n12V DC, 0.3A\r\nRadiator\r\nRadiator Dimension: \r\n121 x 394 x 27 mm\r\nRadiator Material: \r\nAluminum \r\nTube: \r\nSleeved Rubber tube\r\nTube Length: \r\n380 mm\r\nFan\r\nFan:\r\nNoctua NF-F12 InductrialPPC 2000 PWM Fan', '1638365647_ASUS ROG RYUJIN II 360 LIQUID COOLER 4.jpg', '1638365647_ASUS ROG RYUJIN II 360 LIQUID COOLER 2.png', '1638365647_ASUS ROG RYUJIN II 360 LIQUID COOLER 1.jpg', '1638365647_ASUS ROG RYUJIN II 360 LIQUID COOLER 3.jpg', 'Cooler', 10),
(95, 10, 5, 'ASUS ROG STRIX LC 120 RGB', 29800, ' 03 YEARS WARRANTY\r\n\r\nWater Block\r\nWater block dimention:\r\n80 x 80 x 45 mm\r\nBlock Material (CPU Plate):\r\nCopper\r\nRadiator\r\nRadiator Dimension: \r\n122 x 150 x 27 mm\r\nRadiator Material: \r\nAluminum \r\nTube: \r\nSleeved Rubber tube\r\nTube Length: \r\n380 mm\r\nFan\r\nFan:\r\nROG Designed ARGB Radiator Fan\r\n- Size: \r\n1 x Fan Slot (120mm)\r\n- Dimension:\r\n120 x 120 x 25 mm\r\n- Speed: \r\n800 - 2500 RPM +/- 10%\r\n- Static Pressure:\r\n5.0 mmH2O\r\n- Air Flow: \r\n80.95 CFM / 137.5 m3h\r\n- Noise: \r\n37.6 dB(A) \r\n- Control Mode: \r\nPWM/ DC\r\nCompatibility\r\nIntel: LGA 1150, 1151, 1152, 1155, 1156, 1200, 1366, 2011, 2011-3, 2066', '1638365962_ASUS ROG STRIX LC 120 RGB 2.jpg', '1638365962_ASUS ROG STRIX LC 120 RGB 1.jpg', '1638365962_ASUS ROG STRIX LC 120 RGB 4.jpg', '1638365962_ASUS ROG STRIX LC 120 RGB 3.jpg', 'Cooler', 20),
(96, 10, 5, 'ASUS ROG STRIX LC 360 RGB', 52000, ' 03 YEARS WARRANTY\r\nProduct Specifications\r\n\r\nWater Block\r\nWater block dimention:\r\n80 x 80 x 45 mm\r\nBlock Material (CPU Plate):\r\nCopper\r\nRadiator\r\nRadiator Dimension: \r\n121 x 394 x 27mm\r\nRadiator Material: \r\nAluminum \r\nTube: \r\nSleeved Rubber tube\r\nTube Length: \r\n380 mm\r\nFan\r\nFan:\r\nROG Designed ARGB Radiator Fan\r\n- Size: \r\n3 x Fan Slots (120mm)\r\n- Dimension:\r\n120 x 120 x 25mm\r\n- Speed: \r\n800 - 2500 RPM +/- 10%\r\n- Static Pressure:\r\n5.0 mmH2O\r\n- Air Flow: \r\n80.95 CFM / 137.5 m3h\r\n- Noise: \r\n37.6 dB(A) \r\n- Control Mode: \r\nPWM/DC\r\nCompatibility\r\nIntel: LGA 1150, 1151, 1152, 1155, 1156, 1200, 1366, 2011, 2011-3, 2066\r\n     AMD: AM4, TR4*\r\nPackage Content\r\n1 x Liquid Cooler (pre-applied thermal compound)\r\n 3 x 120 mm ARGB Radiator Fan  \r\n1 x Accessory Pack of Screws and brackets\r\n1 x Quick Start Guide \r\n1 x USB cable for software control \r\n1 x 1 to 4 ARGB spliter cable \r\nNote\r\nROG STRIX LC Series', '1638366118_ASUS ROG STRIX LC 360 RGB 1.jpg', '1638366118_ASUS ROG STRIX LC 360 RGB 2.png', '1638366118_ASUS ROG STRIX LC 360 RGB 4.jpg', '1638366118_ASUS ROG STRIX LC 360 RGB 3.jpg', 'Cooler', 20),
(97, 10, 23, 'COOLER MASTER MASTERLIQUID ML240L V2 RGB', 20000, ' 03 YEARS WARRANTY\r\nSPECIFICATIONS\r\n\r\nPRODUCT NUMBER\r\nMLW-D24M-A20PC-R1\r\nCPU SOCKET\r\nLGA2066, LGA2011-v3, LGA2011, LGA1200, LGA1151, LGA1150, LGA1155, LGA1156, LGA1366, LGA775, AM4, AM3+, AM3, AM2+, AM2, FM2+, FM2, FM1\r\nRADIATOR MATERIAL\r\nAluminum\r\nDIMENSIONS (L X W X H)\r\n277 x 119.6 x 27mm / 10.9 x 4.7 x 1.1 inch\r\nFAN DIMENSIONS (L X W X H)\r\n120 x 120 x 25 mm / 4.7 x 4.7 x 1 inch\r\nFAN SPEED\r\n650-2000 RPM (PWM) ± 10%\r\nFAN AIRFLOW\r\n66.7 CFM (Max)\r\nFAN AIR PRESSURE\r\n2.34 mmH2O (Max)\r\nFAN MTTF\r\n160,000 Hours\r\nFAN POWER CONNECTOR\r\n4-Pin (PWM)\r\nFAN RATED VOLTAGE\r\n12VDC\r\nPUMP DIMENSIONS\r\n80.3 x 76 x 42.2 mm / 3.2 x 3.0 x 1.7 inch\r\nPUMP MTTF\r\n70,000 Hours', '1638366350_COOLER MASTER MASTERLIQUID ML240L V2 RGB 2.jpg', '1638366350_COOLER MASTER MASTERLIQUID ML240L V2 RGB 1.jpg', '1638366350_COOLER MASTER MASTERLIQUID ML240L V2 RGB 3.jpg', '1638366350_COOLER MASTER MASTERLIQUID ML240L V2 RGB 4.png', 'Cooler', 25),
(98, 10, 23, 'COOLER MASTER HYPER 212 LED', 8500, ' 03 YEARS WARRANTY\r\n\r\nPRODUCT NUMBER\r\nRR-212L-16PR-R1\r\nCPU SOCKET\r\nLGA2066, LGA2011-v3, LGA2011, LGA1366, LGA1200, LGA1156, LGA1155, LGA1151, LGA775, LGA1150, AM4, AM3+, AM3, AM2+, FM2+, FM2, FM1\r\nDIMENSIONS (L X W X H)\r\n120 x 84 x 160 mm\r\nHEAT SINK DIMENSIONS (L X W X H)\r\n116 x 60 x 160 mm\r\nHEAT SINK MATERIAL\r\nAluminum Fins, Copper (Heat Pipes)', '1638366723_COOLER MASTER HYPER 212 LED 2.jpg', '1638366723_COOLER MASTER HYPER 212 LED 3.png', '1638366723_COOLER MASTER HYPER 212 LED 4.jpg', '1638366723_COOLER MASTER HYPER 212 LED 1.jpg', 'Cooler', 23),
(99, 10, 25, 'NZXT KRAKEN X73 RGB', 53000, '3 Years Warranty\r\nThis All-in-One (AIO) liquid cooler is designed for full and mid-tower cases with support for 360mm radiator mounting and includes three 120mm Aer RGB fans.\r\n\r\nThree 120mm Aer RGB 2 fans included\r\nRotatable top accommodates logo re-orientation*\r\nIndividually addressable RGB lighting and infinity mirror design\r\nNZXT RGB Connector for NZXT RGB accessories\r\nUser friendly controls with NZXT CAM\r\nFine nylon mesh sleeves strengthens rubber tubing to protect from leaks', '1638366964_NZXT KRAKEN X73 RGB 2.jpg', '1638366964_NZXT KRAKEN X73 RGB 3.jpg', '1638366964_NZXT KRAKEN X73 RGB 1.jpg', '1638366964_NZXT KRAKEN X73 RGB 4.jpg', 'Cooler', 18),
(100, 10, 25, 'NZXT AER RGB 2 120MM FAN', 5500, ' Integrating seamlessly into the HUE 2 ecosystem, Aer RGB 2 fans deliver optimal airflow and advanced lighting customizations. Connect up to five fans per channel or mix-and-match with any HUE 2 accessory* in any channel and synchronize them using CAM for amazing lighting effects that work in perfect harmony. With fluid dynamic bearings and winglet tips, Aer RGB 2 fans offer enhanced cooling while minimizing noise.\r\n\r\nCAM-powered for seamless software control and nearly infinite customization\r\n\r\nUniquely shaped, custom engineered light guide creates stunning visual effects, with uniform light dispersion\r\n\r\nCompatible with all HUE 2 controllers and accessories.\r\n\r\nDaisy chain and group fans together for additional lighting effects \r\n\r\nPWM fan with optimized cooling and whisper-low 22 dBA\r\n\r\nFluid dynamic bearing engineered to last over six years\r\n\r\n*HUE 2 Accessories are not compatible with the HUE+', '1638367231_NZXT AER RGB 2 120MM FAN 1.jpg', '1638367231_NZXT AER RGB 2 120MM FAN 2.jfif', '1638367231_NZXT AER RGB 2 120MM FAN 3.jpg', '1638367231_NZXT AER RGB 2 120MM FAN 4.jpg', 'Cooler', 30),
(101, 11, 5, 'ASUS ROG STRIX HELIOS GX601', 54000, 'Specifications\r\n\r\nCase Size\r\nMid Tower\r\nMotherboard Support\r\n\r\nEATX (12&quot;x10.9&quot;)\r\nATX\r\nMicro-ATX\r\nMini-ITX\r\nDrive Bays\r\n\r\n4 x 2.5\" Bay\r\n2 x 2.5\"/3.5\" Combo Bay\r\nExpansion Slots\r\n\r\n8\r\n2 (additional vertical)\r\nFront I/O Port\r\n\r\n1 x Headphone\r\n1 x Microphone\r\n4 x USB 3.1 Gen1\r\n1 x USB 3.1 Gen2 Type C\r\nLED Control Button\r\nFan Control Button\r\nReset Button\r\nTempered Glass\r\n\r\nFront Side\r\nLeft Side\r\nRight Side\r\nRadiator Support (Front)\r\n\r\n120 mm\r\n140 mm\r\n240 mm\r\n280 mm\r\n360 mm\r\n420 mm\r\nRadiator Support (Top)', '1638367483_ASUS ROG STRIX HELIOS GX601 2.jpg', '1638367483_ASUS ROG STRIX HELIOS GX601 1.png', '1638367483_ASUS ROG STRIX HELIOS GX601 3.png', '1638367483_ASUS ROG STRIX HELIOS GX601 4.jpg', 'Casing', 10),
(102, 11, 5, 'ASUS TUF GT301 ARGB GAMING CASE', 19500, ' TUF Gaming GT301\r\n\r\nCase Size\r\nMid Tower\r\n\r\nMotherboard Support\r\nATX\r\n\r\nDrive Bays\r\n4 x 2.5\" Bay\r\n2 x 2.5\"/3.5\" Combo Bay\r\n\r\nExpansion Slots\r\n7\r\n\r\nFront I/O Port\r\n1 x Headphone\r\n1 x Microphone\r\n2 x USB 3.1 Gen1\r\n\r\nLED Control Button\r\nReset Button\r\n\r\nTempered Glass\r\nLeft Side\r\n\r\nRadiator Support (Front)\r\n120 mm\r\n140 mm\r\n240 mm\r\n280 mm\r\n360 mm\r\n\r\nRadiator Support (Rear)\r\n120 mm\r\n\r\nCooling Support (Front)\r\n3 x 120 mm\r\n2 x 140 mm\r\n\r\nCooling Support (Top)\r\n2 x 120 mm', '1638368995_ASUS TUF GT301 ARGB GAMING CASE 1.jpg', '1638368995_ASUS TUF GT301 ARGB GAMING CASE 4.jpg', '1638368995_ASUS TUF GT301 ARGB GAMING CASE 3.jpg', '1638368995_ASUS TUF GT301 ARGB GAMING CASE 2.jpg', 'Casing', 25),
(103, 11, 23, 'COOLER MASTER MB520 ARGB', 15800, ' MODEL NUMBER\r\nMCB-B520-KGNN-RGA\r\nSERIES\r\nMasterBox Series\r\nSIZE\r\nMid Tower\r\nAVAILABLE COLOR(S)\r\nBlack\r\nMATERIALS\r\nSteel, Plastic, Tempered Glass\r\nDIMENSIONS (L X W X H)\r\n496 x 217 x 469 mm\r\nWEIGHT\r\n6.59 kg\r\nMOTHERBOARD SUPPORT\r\nMini ITX, Micro ATX, ATX, E-ATX*, SSI CEB*, (*support for up to 12\" x 10.7\", will limit cable management features)\r\nEXPANSION SLOTS\r\n7\r\n5.25\" DRIVE BAYS\r\nN/A\r\n2.5\" / 3.5\" DRIVE BAYS (COMBO)\r\n2 (Max.2)\r\n2.5\" DRIVE BAYS\r\n4 (Max.6)\r\nI/O PANEL\r\n2x USB 3.2 Gen 1 (formerly USB 3.0), 1x 3.5mm Audio Jack, 1x 3.5mm Mic Jack, 1x ARGB Controller, 1x ARGB 2-to-3 splitter\r\nPRE-INSTALLED FANS - FRONT\r\n3x 120mm ARGB Fans\r\nPRE-INSTALLED FANS - REAR\r\n1x 120mm (Black)\r\nFAN SUPPORT - TOP\r\n3x 120mm, 2x 140mm\r\nFAN SUPPORT - FRONT\r\n3x 120mm, 2x 140mm\r\nFAN SUPPORT - REAR\r\n1x 120mm', '1638369335_COOLER MASTER MB520 ARGB 2.jpg', '1638369335_COOLER MASTER MB520 ARGB 1.png', '1638369335_COOLER MASTER MB520 ARGB 3.jpg', '1638369335_COOLER MASTER MB520 ARGB 4.jpg', 'Casing', 20),
(104, 11, 26, 'FANTECH CG72 CASING', 6000, ' FANTECH CG72 CASE ', '1638388394_fantech cg72 casing 1.png', '1638388394_fantech cg72 casing 3.png', '1638388394_fantech cg72 casing 2.jfif', '1638388394_fantech cg72 casing 4.jpeg', 'Casing', 25),
(105, 11, 27, 'GAMEKM CASING', 5000, 'GAMEKM CASING', '1638388924_Gamekm casing 2.jfif', '1638388924_Gamekm casing 1.jpg', '1638388924_Gamekm casing 3.jpg', '1638388924_Gamekm casing 4.jpg', 'Casing', 30),
(106, 11, 26, 'FANTECH CG71 GAMING CASE', 6000, '15 RGB Spectrum Mode\r\nSupports up to 8 RGB fans\r\nExtreme heat transfer and light\r\nCase Cable\r\nTempered Glass\r\n280mm VGA Card Length\r\n1 3.0 USB, 2 2.0 USB Front Port\r\n165 mm CPU Height\r\n2*SSD, 2*HDD Internal Driver Bays\r\nSupports ATX; Mini ITX; Micro ITX motherboards ', '1638389266_FANTECH CG71 GAMING CASE 4.png', '1638389266_FANTECH CG71 GAMING CASE 1.png', '1638389266_FANTECH CG71 GAMING CASE 3.png', '1638389266_FANTECH CG71 GAMING CASE 2.jpg', 'Casing', 29),
(107, 12, 28, 'HYPERX ALLOY CORE RGB GAMING KEYBOARD', 15500, ' 02 YEARS WARRANTY\r\n\r\nSpecifications\r\nKeyboard\r\nType:	Membrane\r\nBacklight:	RGB (5-zone multi-colour customisation)\r\nLight effects:	6 LED modes and 3 brightness levels\r\nConnection type:	USB 2.0\r\nPolling rate:	1000Hz\r\nAnti-ghosting:	Multi-key anti-ghosting\r\nMedia control:	Yes\r\nGame Mode:	Yes\r\nSpill resistance:	tested up to 120ml of liquid\r\nOS compatibility:	Windows® 10, 8.1, 8, 7\r\nCable\r\nType:	Attached, braided\r\nLength:	1.8m\r\nDimensions\r\nWidth:	443.20mm\r\nDepth:	175.31mm\r\nHeight:	35.68mm\r\nWeight (Keyboard and cable):	1121g ', '1638410085_HYPERX ALLOY CORE RGB GAMING KEYBOARD 1.jpg', '1638410085_HYPERX ALLOY CORE RGB GAMING KEYBOARD 3.jpg', '1638410085_HYPERX ALLOY CORE RGB GAMING KEYBOARD 2.jpg', '1638410085_HYPERX ALLOY CORE RGB GAMING KEYBOARD 4.png', 'keyboard', -2),
(108, 12, 26, 'FANTECH MK885 WIRED OPTICAL GAMING KEYBOARD', 7800, '06 MONTH WARRANTY\r\n\r\nProduct details of Fantech MK885 Optimax RGB Optical Switch Wired Keyboard\r\n-Type RGB Optical Mechanical Gaming Keyboard\r\n-Switch Replaceable Dustproof and Waterproof Switch\r\n-Total Keys 104\r\n-Media Keys 12\r\n-Anti-Ghosting Full Keys\r\n-Features Water & Dust Proof\r\n-Backlit Mode RGB 14 Modes\r\n-Keyboard Size 495*145*40mm\r\n-Material Aliminium + ABS\r\n-Cable Length 1.6m plastic cable\r\n-Software Yes\r\n-Supported OS Windows Vista, Win7/8/10, MacOS X 10.5 or later, Linux, Chrome OS ', '1638411523_FANTECH MK885 WIRED OPTICAL GAMING KEYBOARD 2.jfif', '1638411523_FANTECH MK885 WIRED OPTICAL GAMING KEYBOARD 3.jpg', '1638411523_FANTECH MK885 WIRED OPTICAL GAMING KEYBOARD 1.jpg', '1638411523_FANTECH MK885 WIRED OPTICAL GAMING KEYBOARD 4.jpg', 'keyboard', 50),
(109, 12, 26, 'FANTECH K613L FIGHTER II GAMING KEYBOARD', 3000, '06 MONTH WARRANTYFANTECH FIGHTER K613L\r\n\r\nK613L TECHNICAL SPECIFICATION\r\nPRODUCT NAME : Backlit Floating-keys Multimedia Gaming Keyboard\r\nNUMBER OF KEYS : 104 keys\r\nWORKING VOLTAGE: DC 4.2-5.5V\r\nSWITCH : Floating Switch 45g Trigger Pressure\r\nPOLLING RATE : 1000Hz Ultrapolling Rate\r\nKEYSTROKE : 8 Million Keystroke Lifetime\r\nGHOSTING : 25 Keys Anti-ghosting\r\nCABLE : Nylon Copper Cable\r\ncolour:black\r\nMaterial:ABS\r\nCABLE LENGTH : 155cm\r\nSIZE: 433(W) x 130(L) x 40(H)\r\nPackage Contents:\r\n1 * wired keyboard\r\nOperating systems: Windows XP/7/8/10; MAC OS\r\nOne free USB 2.0/3.0 port\r\ninterface RGB keyboard, no need to install any\r\ndriver for your first use.\r\nKeys Function Map\r\nMULTIMEDIA\r\nF1 Media Player\r\nF2 Volume –\r\nF3 Volume +\r\nF4 Mute\r\nF5 Stop\r\nF6 Back Track\r\nF7 Play/Pause\r\nF8 Next\r\nF9 Email\r\nF10 Default Browser\r\nF11 Lock Mode\r\nF12 Calculator\r\nW Revert between Arrow keys – W A S D keys\r\nRGB MODES\r\nSCR RGB Modes and ON/OFF\r\nPU Brightness +\r\nPD Brightness – \r\n', '1638411732_FANTECH K613L FIGHTER II GAMING KEYBOARD 2.jfif', '1638411732_FANTECH K613L FIGHTER II GAMING KEYBOARD 3.jpg', '1638411732_FANTECH K613L FIGHTER II GAMING KEYBOARD 4.jfif', '1638411732_FANTECH K613L FIGHTER II GAMING KEYBOARD 1.png', 'keyboard', 49),
(110, 12, 26, 'FANTECH K511 HUNTER PRO', 1900, ' 06 MONTH WARRANTY\r\n\r\nFANTECH K511 HUNTER KEYBOARD\r\n\r\nFantech K511 HUNTER\r\n\r\nProduct Information:\r\n1. Membrane Gaming Keyboard\r\n2. LED : Rainbow Color Combination\r\n3. Backlit Mode: one mode\r\n4. Media Keys: 12 keys\r\n5. Total keys: 104 keys\r\n6. Anti-ghosting: 19 Keys Anti-Ghosting\r\n7. Size: 458*187*34mm\r\n8. Weight: 645 Gr (825gr with packaging)\r\n9. Cable Length: 1.6m nylon braided cable\r\n10. Supported OS: Windows Vista, Win7/8/10, Mac OS X 10.5 or later, Linux, Chrome OS', '1638411992_FANTECH K511 HUNTER PRO 1.jfif', '1638411992_FANTECH K511 HUNTER PRO 2.png', '1638411992_FANTECH K511 HUNTER PRO 3.png', '1638411992_FANTECH K511 HUNTER PRO 4.jpg', 'keyboard', 50),
(111, 12, 5, 'ASUS TUF GAMING M3 RGB GAMING', 4500, '1 Year Warranty\r\n\r\nConnectivity Technology\r\nWired\r\nTracking\r\nOptical\r\nOS Support\r\nWindows® 10\r\nWindows® 10 64-bit\r\nWindows® 7\r\nDimensions\r\n118.2 x68 x 40 mm\r\nWeight\r\n84 g without cable\r\nColor\r\nGray\r\nResolution\r\n200 dpi - 7000 dpi\r\nInterface available\r\nMouse : USB', '1638412244_ASUS TUF GAMING M3 RGB GAMING 1.jpg', '1638412244_ASUS TUF GAMING M3 RGB GAMING 2.png', '1638412244_ASUS TUF GAMING M3 RGB GAMING 3.png', '1638412244_ASUS TUF GAMING M3 RGB GAMING 4.jpg', 'Mouse', 49),
(112, 12, 29, 'LOGITECH G102 LIGHTSYNC RGB GAMING MOUSE', 5500, '2 Years Warranty\r\n\r\nGet accurate cursor tracking and responsive performance thanks to a gaming-grade sensor. With adjustable sensitivity from 200-8,000 DPI, pick the right level that fits your play preference. Use Logitech G HUB software to program up to 5 presets.2Advanced features require Logitech G HUB software. Download free at LogitechG.com/downloads.\r\n\r\nG102 is designed to work seamlessly in any system, but if you’re looking to fine-tune controls, free-to-download customization software is easy to use and set up. Logitech G HUB software is a complete customization suite that, lets you personalize lighting, sensitivity, and button commands on your G102 mouse.3Advanced features require Logitech G HUB software. Download free at LogitechG.com/downloads.\r\n\r\nPHYSICAL SPECS\r\nHeight: 116.6 mm\r\nWidth: 62.15 mm\r\nDepth: 38.2 mm\r\nWeight: 85 g, (mouse only)\r\nCable Length: 2.1 m\r\nTECHNICAL SPECIFICATIONS\r\nLIGHTSYNC RGB lighting\r\n6 programmable buttons\r\nResolution: 200 – 8,000 DPI\r\nRESPONSIVENESS\r\nUSB data format: 16 bits/axis\r\nUSB report rate: 1000 Hz (1ms)\r\nMicroprocessor: 32-bit ARM\r\nPART NUMBER\r\nBlack : 910-005802\r\nWhite : 910-005803\r\nWARRANTY INFORMATION\r\n2-Year Limited Hardware Warranty', '1638412489_LOGITECH G102 LIGHTSYNC RGB GAMING MOUSE 1.jpg', '1638412489_LOGITECH G102 LIGHTSYNC RGB GAMING MOUSE 3.jpg', '1638412489_LOGITECH G102 LIGHTSYNC RGB GAMING MOUSE 4.jpg', '1638412489_LOGITECH G102 LIGHTSYNC RGB GAMING MOUSE 2.png', 'Mouse', 50),
(113, 12, 6, 'MSI GM11 GAMING MOUSE', 4000, '1 YEAR WARRANTY\r\n\r\nMODEL NAME\r\nSENSOR\r\nSENSOR TYPE\r\nDPI SWITCH\r\nINTERFACE\r\nBUTTON\r\nPOLLING RATE\r\nMAIN KEY SWITCHES\r\nLED LIGHT\r\nOPERATING SYSTEM\r\nCABLE\r\nCOLOR\r\nPRODUCT DIMENSIONS (MM)\r\nWEIGHT (PRODUCT / PACKAGE)\r\nCLUTCH GM11 GAMING MOUSE\r\nPMW-3325 Optical Sensor\r\nOptical\r\n400 / 800 / 1600 / 3200 / 5000\r\nUSB 2.0\r\n6\r\n1000Hz , 125/250/500/1000(Default)Hz\r\nOMRON Switch with 10+ Million Clicks\r\nRGB\r\nWindows 10 / 8.1 / 8 / 7\r\n1.8m with gold-plated connector\r\nBlack\r\n118 x 62 x 37mm\r\n89 g (without cable) / 249 g', '1638412686_MSI GM11 GAMING MOUSE 2.png', '1638412686_MSI GM11 GAMING MOUSE 1.png', '1638412686_MSI GM11 GAMING MOUSE 3.png', '1638412686_MSI GM11 GAMING MOUSE 4.png', 'Mouse', 48),
(114, 12, 26, 'FANTECH MPR800S FIREFLY', 2900, 'Model: MPR800\r\npower connection: Micro USB\r\nmaterial: cloth, rubber, plastic\r\nSize: 780mm x 300mm x 4mm\r\nRGB soft tube 4 kinds of light effect mode\r\n7 Colors Changing\r\nPrecision and fine fabric surface\r\nControl precision, fast movement\r\nExtended version area length 78x width 30 cm\r\nNon-slip rubber bottom clothing table does not slide\r\nFlexible cloth storage convenient\r\nMicro USB power cord connection\r\nOffice, games, etc. \r\n', '1638412997_FANTECH MPR800S FIREFLY 1.png', '1638412997_FANTECH MPR800S FIREFLY 2.png', '1638412997_FANTECH MPR800S FIREFLY 3.png', '1638412997_FANTECH MPR800S FIREFLY 4.jpg', 'Mousepad', 30),
(115, 12, 26, 'FANTECH VIGIL MP902 GAMING MOUSE PAD', 1200, 'FANTECH Vigil MP902 Gaming Mousepad\r\n\r\n\r\nSpeed-Type Surfaces\r\nQuick Response to your mouse movements\r\nBuilt for maximum precision\r\nNon-slip rubber base\r\nSize: 900 x 300 x 3mm ', '1638413217_FANTECH VIGIL MP902 GAMING MOUSE PAD 2.jpg', '1638413217_FANTECH VIGIL MP902 GAMING MOUSE PAD 3.png', '1638413217_FANTECH VIGIL MP902 GAMING MOUSE PAD 1.png', '1638413217_FANTECH VIGIL MP902 GAMING MOUSE PAD 4.jpg', 'Mousepad', 30),
(116, 12, 30, 'SONICGEAR TITAN 5 SUB WOOFER BTMI USB/FM', 6500, ' 06 MONTH WARRANTY\r\n\r\nDESCRIPTION\r\nUSB/FM(remote no warranty)\r\n\r\nBluetooth \r\n7 colours pulsating LED\r\nSD CARD , USB input . AUX input , FM radio\r\nWooden Subwoofer & Satellite / Total system power : 50W', '1638413538_SONICGEAR TITAN 5 SUB WOOFER BTMI USB FM 1.jpg', '1638413538_SONICGEAR TITAN 5 SUB WOOFER BTMI USB FM 3.jpg', '1638413538_SONICGEAR TITAN 5 SUB WOOFER BTMI USB FM 2.png', '1638413538_SONICGEAR TITAN 5 SUB WOOFER BTMI USB FM 4.png', 'Sub', 40),
(117, 12, 30, 'SONICGEAR TITAN 3 BTMI USB SPEAKER', 4000, '06 MONTH WARRANTY\r\n\r\nSUBWOOFER:\r\nDriver size: 3.5”\r\nOutput power (RMS): 6W\r\nImpedance: 4?SATELLITE:\r\nDriver size: 2 x 2.5”\r\nOutput power (RMS): 2 x 3W \r\nImpedance: 8?Total system power: 24W\r\nPure system power (RMS): 12W\r\nFrequency response: 40Hz - 18 KHz ', '1638415984_SONICGEAR TITAN 3 BTMI USB SPEAKER 1.png', '1638415984_SONICGEAR TITAN 3 BTMI USB SPEAKER 2.jpg', '1638415984_SONICGEAR TITAN 3 BTMI USB SPEAKER 3.jpg', '1638415984_SONICGEAR TITAN 3 BTMI USB SPEAKER 4.jfif', 'Sub', 20),
(123, 13, 31, 'APPLE MACBOOK AIR 256GB', 226500, '\r\nGold\r\n\r\nSilver\r\n\r\nSpace Gray\r\n\r\nDisplay\r\nRetina display\r\n\r\n13.3-inch (diagonal) LED-backlit display with IPS technology; 2560-by-1600 native resolution at 227 pixels per inch with support for millions of colors\r\n\r\nSupported scaled resolutions:\r\n\r\n1680 by 1050\r\n1440 by 900\r\n1024 by 640\r\n400 nits brightness\r\n\r\nWide color (P3)', '1638781161_mac 1.jpg', '1638781161_mac2.png', '1638781161_mac3.jfif', '1638781161_mac4.jfif', 'Apple', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `address1` varchar(200) NOT NULL,
  `address2` varchar(200) NOT NULL,
  `mobile` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `address1`, `address2`, `mobile`) VALUES
(24, 'Harsha', 'Mithum', 'harshamithum@gmail.com', '1996', 'pasyala', 'No 27/D,Radawadunna,Pasyala', '0786258767'),
(25, 'Avisha', 'Deshan', 'avishkadeshan@gmail.com', '1999Avishka', 'NNo 17/ E Rukmale,Veyangoda', 'Nittambuwa', '0789709801'),
(26, 'Shasini', 'Pabasara', 'shasinibatti@gmail.com', '2000Batti', 'No 23/D Giridara,Kapugoda', 'Kapugoda', '0756784324'),
(35, 'Dineth', 'Sandeepa', 'dinethpata@gmail.com', 'ac2bbe9821f2eb7c7bc10367949cbd7e', 'ragama No /27/ D Radawadunna Ragama', 'Ragama', '0778702029'),
(36, 'kasun', 'chathu', 'kasun@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'wathupitiwala', 'nittambuwa', '0778702029');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_pro_id`),
  ADD KEY `order_products` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `orders_info`
--
ALTER TABLE `orders_info`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_pro_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
