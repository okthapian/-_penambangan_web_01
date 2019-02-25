-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2019 at 07:19 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_monotaro`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name_produk` text NOT NULL,
  `price` int(11) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name_produk`, `price`, `stok`) VALUES
(39, 'Oxypas Hospital Shoes Henny                                    ', 499000, 14),
(40, 'BATA Bickz Performance 804-6603                                    ', 1190000, 9),
(41, 'FACOM Cutter Pliers Leverage                                    ', 359000, 3),
(42, 'BATA Charleston 804-8224                                    ', 339000, 9),
(43, 'BATA Bickz Titan 804-3704                                    ', 769000, 9),
(44, 'CHEETAH Safety Shoes Rebound 7106H                                    ', 379000, 9),
(45, 'CHEETAH Safety Shoes Comfy Series 5106HA                                    ', 689000, 9),
(46, 'BATA Acapulco                                    ', 319000, 9),
(47, 'CHEETAH Safety Shoes Rebound 7001H                                    ', 339000, 9),
(48, 'KENT Safety Shoes Borneo                                    ', 359000, 14),
(49, 'Dr. OSHA Safety Shoes California Sporty 3129                                    ', 439000, 10),
(50, 'CHEETAH Safety Shoes Comfy Series 5101CB                                    ', 599000, 9),
(51, 'OTTER Safety Shoes (Boots) Premium Watertite OWT 805 KW Brown                                    ', 999000, 11),
(52, 'BATA Bickz 705                                    ', 579000, 9),
(53, 'CHEETAH Safety Shoes Revolution PU 3180H                                    ', 339000, 9),
(54, 'CHEETAH Safety Shoes Revolution PU 3002H                                    ', 299000, 9),
(55, 'KRISBOW Safety Shoes Vulcan Black                                    ', 1490000, 7),
(56, 'Red Wing Safety Shoes 4431                                    ', 2690000, 0),
(57, 'Oxypas Hospital Shoes Emily                                    ', 399000, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
