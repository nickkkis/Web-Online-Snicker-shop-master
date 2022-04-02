-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2022 at 10:54 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sneaker`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_user` (IN `user_id` INT(11))  BEGIN 
            DELETE FROM users WHERE user_id = user_id;
        END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `register` (IN `id` INT(11), IN `log` VARCHAR(50), IN `pass` VARCHAR(50), IN `name` VARCHAR(50), IN `gen` VARCHAR(50), IN `birth` DATE, IN `addr` VARCHAR(50), IN `phone` VARCHAR(50), IN `quest` VARCHAR(50), IN `ans` VARCHAR(50), IN `rank_id` INT(11), IN `img` VARCHAR(50))  BEGIN 
            INSERT INTO users(user_id, Login, Password, Name, Gender, Birthday, Address, Phone, Question, Answer, Rank_id, Image) 
            VALUES (id, log, pass, name, gen, birth, addr, phone, quest, ans, rank_id, img);
        END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_users` (IN `id` INT(11), IN `log` VARCHAR(50), IN `pass` VARCHAR(50), IN `name` VARCHAR(50), IN `gen` VARCHAR(50), IN `bday` DATE, IN `addr` VARCHAR(50), IN `phone` VARCHAR(50), IN `quest` VARCHAR(50), IN `ans` VARCHAR(50))  BEGIN 
        UPDATE users SET `Login`= log,`Password`= pass, `Name`=name,`Gender`=gen,`Birthday`=bday,`Address`=addr,`Phone`=phone,`Question`=quest,`Answer`=ans WHERE id = id AND Login = log; 
        END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `basket`
--

CREATE TABLE `basket` (
  `basket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `basket`
--

INSERT INTO `basket` (`basket_id`, `user_id`, `product_id`, `size`, `number`) VALUES
(1, 1, 1, 43, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `status` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `number`, `date`, `time`, `status`, `comment`) VALUES
(1, 1, 1, 1, '2022-02-04', '13:25:08', 'In Process', 'dssdsd'),
(2, 1, 2, 1, '2022-02-04', '13:58:51', 'In Process', 'dsdsds'),
(5, 1, 3, 1, '2022-02-05', '19:35:37', 'In Process', 'dsdsd');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Category` varchar(30) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Price` int(11) NOT NULL,
  `Code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `Name`, `Image`, `Category`, `Gender`, `Price`, `Code`) VALUES
(1, 'Air Force 1 Low', 'air_f_1_l_s_m.png', 'Air Force', 'Men', 500, 'air_f_1_l_s_m'),
(2, 'Air Force 1 High', 'air_f_1_h_m.png', 'Air Force', 'Men', 500, 'air_f_1_h_m'),
(3, 'Air Force 1 Low', 'air_f_1_l_m.png', 'Air Force', 'Men', 500, 'air_f_1_l_m'),
(4, 'Air Force 1 Low', 'air_f_1_l_w.png', 'Air Force', 'Women', 500, 'air_f_1_l_w'),
(5, 'Air Force 1 LV8 1', 'air_f_1_lv8_1_k.png', 'Air Force', 'Kids', 500, 'air_f_1_lv8_1_k'),
(6, 'Air Force 1 LV8', 'air_f_1_lv8_k.png', 'Air Force', 'Kids', 500, 'air_f_1_lv8_k'),
(7, 'Air Jordan 1 High', 'air_j_1_h_m.png', 'Air Jordan', 'Men', 500, 'air_j_1_h_m'),
(8, 'Air Jordan 1 High', 'air_j_1_h_o_m.png', 'Air Jordan', 'Men', 500, 'air_j_1_h_o_m'),
(9, 'Air Jordan 1 Low', 'air_j_1_l_w.png', 'Air Jordan', 'Women', 500, 'air_j_1_l_w'),
(10, 'Air Jordan 1 Middle', 'air_j_1_m_m.png', 'Air Jordan', 'Men', 500, 'air_j_1_m_m'),
(11, 'Air Jordan 1 Middle', 'air_j_1_m_w.png', 'Air  Jordan', 'Women', 500, 'air_j_1_m_w'),
(12, 'Air Max 90', 'air_m_90_k.png', 'Air Max', 'Kids', 500, 'air_m_90_k'),
(13, 'Air Max 90', 'air_m_90_m.png', 'Air Max', 'Men', 500, 'air_m_90_m'),
(14, 'Air Max 90', 'air_m_90_m_m.png', 'Air Max', 'Men', 500, 'air_m_90_m_m'),
(15, 'Air Max 90 Red', 'air_m_90_r_m.png', 'Air Max', 'Men', 500, 'air_m_90_r_m'),
(16, 'Air Max 270', 'air_m_270_g_w.png', 'Air Max', 'Women', 500, 'air_m_270_g_m'),
(17, 'Air Max 2090', 'air_m_2090_m.png', 'Air Max', 'Men', 500, 'air_m_2090_m'),
(18, 'Air Max 2090', 'air_m_2090_ps_w.png', 'Air Max', 'Women', 500, 'air_m_2090_ps_w');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `rank_id` int(11) NOT NULL,
  `rank` text NOT NULL,
  `discount` int(11) NOT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`rank_id`, `rank`, `discount`, `cost`) VALUES
(1, 'Youngling', -5, 0),
(2, 'Padawan', -10, 2000),
(3, 'Sneaker Knight ', -15, 5000),
(4, 'Sneaker Master', -20, 10000),
(5, 'Grand Master', -50, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role`) VALUES
(1, 'user'),
(2, 'moderator'),
(3, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `Login` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Gender` varchar(30) NOT NULL,
  `Birthday` date NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Question` varchar(50) NOT NULL,
  `Answer` varchar(50) NOT NULL,
  `Rank_id` int(11) NOT NULL,
  `End_of_discount` date NOT NULL,
  `Role-id` int(11) NOT NULL,
  `Image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `Login`, `Password`, `Name`, `Gender`, `Birthday`, `Address`, `Phone`, `Question`, `Answer`, `Rank_id`, `End_of_discount`, `Role-id`, `Image`) VALUES
(-1, 'admin@admin.com', 'admin', 'Admin', 'Other', '0000-00-00', 'Everywhere ', '+7-000-000-00-00', 'Who are you?', 'Admin', 5, '0000-00-00', 3, 'avatar_2.jpg'),
(0, 'moderator@moder.com', 'moder', 'Moder', 'Other', '0000-00-00', 'Somewhere ', '+7-000-000-00-00', 'University', 'Other', 5, '0000-00-00', 2, 'avatar_2.jpg'),
(1, 'fara@mail.ru', 'fara', 'Lux Gero', 'Male', '2022-01-15', 'sdsds', '+7-123-456-78-91', 'Favorite country', 'dsdsds', 1, '2022-02-05', 1, 'avatar_2.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`basket_id`),
  ADD KEY `basket-product` (`product_id`),
  ADD KEY `basket-user` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order-basket-user` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`rank_id`),
  ADD KEY `rank` (`rank`(768)),
  ADD KEY `rank_2` (`rank`(768));

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `id` (`user_id`),
  ADD UNIQUE KEY `id_2` (`user_id`),
  ADD KEY `user-role` (`Role-id`),
  ADD KEY `user-rank` (`Rank_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basket`
--
ALTER TABLE `basket`
  MODIFY `basket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `rank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `basket`
--
ALTER TABLE `basket`
  ADD CONSTRAINT `basket-product` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `basket-user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `order-basket-user` FOREIGN KEY (`user_id`) REFERENCES `basket` (`user_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `user-rank` FOREIGN KEY (`Rank_id`) REFERENCES `rank` (`rank_id`),
  ADD CONSTRAINT `user-role` FOREIGN KEY (`Role-id`) REFERENCES `role` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
