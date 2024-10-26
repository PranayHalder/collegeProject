-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 26, 2024 at 08:57 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `picsum`
--

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `info` int(20) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `name`, `info`, `created`) VALUES
(1, 'picsum_5666552824.jpg', 1, '2022-11-27 13:10:49'),
(2, 'picsum_3273807540.jpg', 1, '2022-11-27 13:10:49'),
(3, 'picsum_4346879548.jpg', 1, '2022-11-27 13:10:49'),
(4, 'picsum_4645273316.jpg', 1, '2022-11-27 13:10:49'),
(5, 'picsum_9335077549.jpg', 1, '2022-11-27 13:10:49'),
(6, 'picsum_9888267272.jpg', 1, '2022-11-27 13:10:49'),
(7, 'picsum_1325678238.jpg', 1, '2022-11-27 13:10:49'),
(8, 'picsum_2197111984.jpg', 1, '2022-11-27 13:10:49'),
(9, 'picsum_8329366292.jpg', 1, '2022-11-27 13:10:49'),
(10, 'picsum_8924994874.jpg', 1, '2022-11-27 13:10:49'),
(11, 'picsum_2172760886.jpg', 1, '2022-11-27 13:10:49'),
(12, 'picsum_8089798310.jpg', 1, '2022-11-27 13:10:49'),
(13, 'picsum_9500416548.jpg', 2, '2022-11-27 13:15:39'),
(14, 'picsum_6443278943.jpg', 2, '2022-11-27 13:15:39'),
(15, 'picsum_6375601453.jpg', 2, '2022-11-27 13:15:39'),
(16, 'picsum_452429258.jpg', 2, '2022-11-27 13:15:39'),
(17, 'picsum_5547990172.jpg', 2, '2022-11-27 13:15:39'),
(18, 'picsum_1219862728.jpg', 2, '2022-11-27 13:15:39'),
(19, 'picsum_3376334941.jpg', 2, '2022-11-27 13:15:39'),
(20, 'picsum_6936102475.jpg', 2, '2022-11-27 13:15:39'),
(21, 'picsum_900183529.jpg', 2, '2022-11-27 13:15:39'),
(22, 'picsum_985662775.jpg', 2, '2022-11-27 13:15:39'),
(23, 'picsum_9136199339.jpg', 3, '2022-11-27 13:17:32'),
(24, 'picsum_4455626478.jpg', 3, '2022-11-27 13:17:32'),
(25, 'picsum_2525473423.jpg', 3, '2022-11-27 13:17:32'),
(26, 'picsum_5309907167.jpg', 3, '2022-11-27 13:17:32'),
(27, 'picsum_2789987584.jpg', 3, '2022-11-27 13:17:32'),
(28, 'picsum_3621826086.jpg', 3, '2022-11-27 13:17:32'),
(29, 'picsum_5237985988.jpg', 3, '2022-11-27 13:17:32'),
(30, 'picsum_6583753897.jpg', 3, '2022-11-27 13:17:32'),
(31, 'picsum_1676373134.jpg', 3, '2022-11-27 13:17:32'),
(32, 'picsum_5009598823.jpg', 3, '2022-11-27 13:17:32'),
(33, 'picsum_4170342008.jpg', 4, '2022-11-27 13:19:10'),
(34, 'picsum_8314130754.jpg', 4, '2022-11-27 13:19:10'),
(35, 'picsum_3785975788.jpg', 4, '2022-11-27 13:19:10'),
(36, 'picsum_2314617758.jpg', 4, '2022-11-27 13:19:10'),
(37, 'picsum_7031455891.jpg', 4, '2022-11-27 13:19:10'),
(38, 'picsum_4845883965.jpg', 4, '2022-11-27 13:19:10'),
(39, 'picsum_408264332.jpg', 4, '2022-11-27 13:19:10'),
(40, 'picsum_6448687039.jpg', 4, '2022-11-27 13:19:10'),
(41, 'picsum_3341197936.jpg', 4, '2022-11-27 13:19:10'),
(42, 'picsum_3339191413.jpg', 4, '2022-11-27 13:19:10'),
(43, 'picsum_2554597685.jpg', 5, '2022-11-27 13:20:34'),
(44, 'picsum_8517624009.jpg', 5, '2022-11-27 13:20:34'),
(45, 'picsum_7460473596.jpg', 5, '2022-11-27 13:20:34'),
(46, 'picsum_6467952272.jpg', 5, '2022-11-27 13:20:34'),
(47, 'picsum_2619573930.jpg', 5, '2022-11-27 13:20:34'),
(48, 'picsum_6326968953.jpg', 5, '2022-11-27 13:20:34'),
(49, 'picsum_5705201285.jpg', 5, '2022-11-27 13:20:34'),
(50, 'picsum_5183090431.jpg', 5, '2022-11-27 13:20:34'),
(51, 'picsum_3197959805.jpg', 5, '2022-11-27 13:20:34'),
(52, 'picsum_8986946812.jpg', 5, '2022-11-27 13:20:34'),
(53, 'picsum_8532984146.jpg', 5, '2022-11-27 13:20:34'),
(54, 'picsum_4734645779.jpg', 5, '2022-11-27 13:20:34'),
(55, 'picsum_8795986320.webp', 9, '2024-08-28 10:56:10');

-- --------------------------------------------------------

--
-- Table structure for table `image_download`
--

CREATE TABLE `image_download` (
  `id` int(20) NOT NULL,
  `imageid` int(20) NOT NULL,
  `userid` int(20) NOT NULL,
  `downloaded` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image_info`
--

CREATE TABLE `image_info` (
  `id` int(20) NOT NULL,
  `userid` int(20) NOT NULL,
  `tag` varchar(300) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `lat` varchar(250) DEFAULT NULL,
  `lon` varchar(250) DEFAULT NULL,
  `description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `image_info`
--

INSERT INTO `image_info` (`id`, `userid`, `tag`, `location`, `city`, `country`, `lat`, `lon`, `description`) VALUES
(1, 1, 'nature, environment, trees', NULL, NULL, NULL, NULL, NULL, 'Nature Photos'),
(2, 2, 'animals', NULL, NULL, NULL, NULL, NULL, 'Animal Images'),
(3, 3, 'sky, sun, cloud, nightsky', NULL, NULL, NULL, NULL, NULL, 'Images of sky '),
(4, 4, 'city, skyscrapper, buildings, street', NULL, NULL, NULL, NULL, NULL, 'City Images'),
(5, 5, 'art, abstract, aesthetic, color', NULL, NULL, NULL, NULL, NULL, 'Art Images'),
(6, 6, 'aa', 'sasdasd', 'Barrackpore', 'India', '22.758214', '87.758214', 'dd'),
(7, 6, 'aa', 'sasdasd', 'Barrackpore', 'India', '22.758214', '87.758214', 'dd'),
(8, 6, 'dd', 'Berhampore, Murshidabad District, West Bengal, 742101, India', 'Berhampore', 'India', '24.0926361', '88.2594928', 'dd'),
(9, 6, 'hh', 'Berhampore, Murshidabad District, West Bengal, 742101, India', 'Berhampore', 'India', '24.0703541', '88.2655299', 'hh');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `id` int(20) NOT NULL,
  `userid` int(20) NOT NULL,
  `plan` enum('basic','popular','enterprise') NOT NULL,
  `subscribed` date NOT NULL,
  `expired` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`id`, `userid`, `plan`, `subscribed`, `expired`) VALUES
(1, 1, 'enterprise', '2022-11-27', '2023-11-27'),
(2, 2, 'basic', '2022-11-27', '2023-11-27'),
(3, 3, 'basic', '2022-11-27', '2023-11-27'),
(4, 4, 'basic', '2022-11-27', '2023-11-27'),
(5, 5, 'basic', '2022-11-27', '2023-11-27'),
(6, 6, 'basic', '2022-11-28', '2023-11-28'),
(7, 7, 'basic', '2024-08-04', '2025-08-04');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `id` int(15) NOT NULL,
  `image` varchar(500) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(250) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`id`, `image`, `name`, `email`, `password`, `created`) VALUES
 (1, 'https://lh3.googleusercontent.com/a/ALm5wu3Qz2xzeNuHmhBLSPq9HxHs1hk9v59Jl4Ec1ziTZA=s96-c', 'Pranay Halder', 'halderpranay242@gmail.com', '$2y$10$nbS8/W4S/mLeA5.tEYi5uOuBNJCpz1TKXHIQADxgoRDGPWPJfl9xm', '2022-11-28 09:44:50');
--
-- Indexes for dumped tables
--

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `description` (`info`);

--
-- Indexes for table `image_download`
--
ALTER TABLE `image_download`
  ADD PRIMARY KEY (`id`),
  ADD KEY `imageid` (`imageid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `image_info`
--
ALTER TABLE `image_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `image_download`
--
ALTER TABLE `image_download`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `image_info`
--
ALTER TABLE `image_info`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `userdetails`
--
ALTER TABLE `userdetails`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`info`) REFERENCES `image_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `image_download`
--
ALTER TABLE `image_download`
  ADD CONSTRAINT `image_download_ibfk_1` FOREIGN KEY (`imageid`) REFERENCES `image` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `image_download_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `userdetails` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `image_info`
--
ALTER TABLE `image_info`
  ADD CONSTRAINT `image_info_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `userdetails` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subscription`
--
ALTER TABLE `subscription`
  ADD CONSTRAINT `subscription_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `userdetails` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
