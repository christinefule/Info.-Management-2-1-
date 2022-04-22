-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2022 at 04:06 AM
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
-- Database: `gatepass_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `Plate_number` varchar(40) NOT NULL,
  `Owner_name` varchar(40) NOT NULL,
  `Owner_no` varchar(40) NOT NULL,
  `Driver_name` varchar(40) NOT NULL,
  `Driver_no` varchar(40) NOT NULL,
  `Car_model` varchar(40) NOT NULL,
  `Car_brand` varchar(40) NOT NULL,
  `Car_color` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `Plate_number`, `Owner_name`, `Owner_no`, `Driver_name`, `Driver_no`, `Car_model`, `Car_brand`, `Car_color`) VALUES
(1, '21312', '123123', '', '', '', ' 123123', '123123', ' 12313'),
(2, 'BGC 213', 'John Carlo', '091992411', 'Elmer Marquez', '099545324', 'Ford Fiesta', 'FORD', ' Pink'),
(3, 'NAE 4662', 'Moises Alvarez', '092143111318', 'Moises Alvarez', '092143111318', 'Avanza', 'Toyota', ' Gray Metallic'),
(4, 'DAJ 4784', 'Nikos Deguit', '09605768168', 'Nikos Deguit', '09605768168', 'Hilux', 'Toyota', ' Freedom White');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `Firstname` varchar(40) NOT NULL,
  `Lastname` varchar(40) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Street_name_no` varchar(40) NOT NULL,
  `Occupation` varchar(40) NOT NULL,
  `Phone_number` int(40) NOT NULL,
  `Family_member` int(40) NOT NULL,
  `No_car` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `Firstname`, `Lastname`, `Email`, `Street_name_no`, `Occupation`, `Phone_number`, `Family_member`, `No_car`) VALUES
(1, 'John carlo', 'Barrera', ' Barrera@yahoo.com', '1234144fdsdf', ' 1234567', 9183412, 0, 0),
(2, 'John Brent ', 'David', ' johnbrent725@gmail.com', 'rizal', ' 12345', 2147483647, 2, 0),
(3, 'kier', 'meera', ' meera@yahoo.com', 'B26 L2', ' student', 2147483647, 5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `user_name`, `password`, `date`) VALUES
(1, 3153206463363, 'Guard1', '12345', '2022-02-22 09:28:05');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `Address` varchar(40) NOT NULL,
  `Time_in` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `Time_out` datetime DEFAULT NULL,
  `purpose` varchar(100) NOT NULL,
  `License` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `name`, `Address`, `Time_in`, `Time_out`, `purpose`, `License`) VALUES
(1, 'jc barrera', 'calamba', '2022-03-07 11:10:55', '2022-03-06 10:28:00', ' basketboll', 'drivers'),
(2, 'Christine Fule', 'food', '2022-03-07 11:10:55', '2022-03-07 10:14:00', 'food', 'Voters'),
(4, 'John Brent David', 'B26 L2', '2022-03-07 11:26:00', NULL, ' kain lng', 'voters'),
(5, 'Moises Alvarez', 'Calamba', '2022-03-14 09:30:00', NULL, ' basketball', 'drivers'),
(6, 'Nikos Deguit', 'Canlubang', '2022-02-14 15:35:00', NULL, ' Family Gathering', 'drivers');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `date` (`date`),
  ADD KEY `user_name` (`user_name`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
