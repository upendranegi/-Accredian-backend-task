-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2024 at 01:48 PM
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
-- Database: `myproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `createdAt` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id`, `Name`, `Email`, `phone`, `course`, `createdAt`) VALUES
(1, 'John Doe', 'john@example.com', 'Jane Smith', 'Node.js Basics', '2024-07-06'),
(2, 'upendra', 'upned@gmail.com', '1234567890', 'jjddc', '2024-07-07'),
(3, 'upendra', 'upned@gmail.com', '1234567890', 'jjddc', '2024-07-07'),
(4, 'scbhd', 'abvs@gmail.com', '123456789', 'sn  cd', '2024-07-07'),
(5, 'scbhd', 'abvs@gmail.com', '123456789', 'sn  cd', '2024-07-07'),
(6, 'scbhd', 'abvs@gmail.com', '123456789', 'sn  cd', '2024-07-07'),
(7, 'scbhd', 'abvs@gmail.com', '123456789', 'sn  cd', '2024-07-07'),
(8, 'hvsvs', 'ab@gmail.com', '1234567890', 'sjhsvd', '2024-07-07'),
(9, 'Nitin', 'Nitin@gmail.com', '1234567990', 'sahsbd', '2024-07-07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
