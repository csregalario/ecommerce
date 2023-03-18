-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2023 at 04:03 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_qty` int(11) NOT NULL,
  `date_ordered` date NOT NULL DEFAULT current_timestamp(),
  `order_status` char(1) NOT NULL DEFAULT 'P' COMMENT 'P = Pending / D = Delivered\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_price` decimal(10,2) NOT NULL,
  `item_status` char(1) NOT NULL DEFAULT 'A' COMMENT 'A = Active/ I = Inactive',
  `date_added` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`item_id`, `item_name`, `item_price`, `item_status`, `date_added`) VALUES
(9, 'hotdog', '25.00', 'A', '2023-03-12'),
(10, 'coffee', '60.00', 'A', '2023-03-12'),
(11, 'milktea', '100.00', 'A', '2023-03-15'),
(12, 'corndog', '60.00', 'A', '2023-03-16'),
(20, 'cake', '170.00', 'A', '2023-03-16'),
(21, 'cheese burger', '50.00', 'A', '2023-03-17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `user_status` varchar(1) NOT NULL DEFAULT 'A' COMMENT 'A = active / I = inactive',
  `contact_number` varchar(12) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `fullname`, `user_status`, `contact_number`, `address`) VALUES
(1, 'bird', '1234', 'dare me', 'A', '09999999987', 'legaspi, albay'),
(2, 'test2', '123333', 'test A', 'I', '0', ''),
(3, 'admin', 'aaaa', 'aaaa', 'I', '0', ''),
(4, 'admin', 'admin', 'administrator', 'A', '09934236654', 'guinobatan, albay'),
(5, 'melvs', '12345', 'melvinp', 'A', '09934236654', 'guinobatan, albay'),
(6, 'bear', 'asdf', 'asddfaa', 'I', '09867978573', 'albay'),
(7, 'user1', 'asdf', 'asdf', 'I', '09934236654', 'asdf'),
(8, 'polar', 'bearasd', 'bear bear', 'I', '09934236654', 'guinobatan, albay'),
(9, 'polar bear', 'user1', 'user1', 'A', '09934236654', 'daraga, albay');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
