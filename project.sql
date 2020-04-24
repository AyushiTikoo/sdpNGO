-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2020 at 07:50 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Table structure for table `customerinfo`
--

CREATE TABLE `customerinfo` (
  `id` int(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `cName` varchar(200) NOT NULL,
  `cMobile` varchar(200) NOT NULL,
  `cPassword` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customerinfo`
--

INSERT INTO `customerinfo` (`id`, `email`, `cName`, `cMobile`, `cPassword`) VALUES
(12, 'rahul@gmail.com', 'rahul', '2147483647', '$2b$10$ujfjt/NnC5vOjl8vnmwdXeZXRCHd/FCxeV0o36NjLYId.EvCX/xZa'),
(13, 'anaya@gmail.com', 'anaya', '2147483647', '$2b$10$9mB6nU6OcRsbiko/Dv9h9uMEwmtuJHYNcZlCioaTM16clO7GaTcjq'),
(14, 'ayu@gmail.com', 'ayu', '2147483647', '$2b$10$67TnqYpQE5SWv1SgcFjOye0dWbnyuAzffFy3feLgS9usZvvEpwp9.'),
(15, 'ashwini@gmail.com', 'asgwini', '1234567890', '$2b$10$n4oSndRiKEOHkF5yydTC/OM5HmI./9cr6O5cKInaeBy72JtNP/g8G'),
(18, 'shruti@gmail.com', 'shruti', '1234567890', '$2b$10$lYJikUKQzuicV4TDKocOCuidCCIR4olWnUqqlWFp4bXJvk4KekIne'),
(19, 'drishti@gmail.com', 'drishti', '1234567890', '$2b$10$s2DvCsbeC1ZYmqShvaqleeYI6IDI4pVzNR7Z/3aii/BpG/17TaH6G'),
(20, 'Kriti@gmail.com', 'Kriti', '1234567890', '$2b$10$GsnhzCA2Ne4fUb68RhpMf.Q1Ra6p8bdoERPAQ7oGJiUkuLfstkFru'),
(21, 'raj@gmail.com', 'raj', '1234567890', '$2b$10$AR9u2YqJ43OmJg9hnTGP2.r2yHKrToVBmZ4okHKpmy5sj02Bo32n6'),
(22, 'piyushi@gmail.com', 'Piyushi', '1234567656', '$2b$10$Bzd1v42vCufyH1l2NyerY.oojqqKQDUO/p8KfuKqloRvTgFDYj/iO'),
(23, 'ssss@gmail.com', 'sahil', '9824094560', '$2b$10$ZfJhMEmPAkxmJCoZ7m7Cte2ulCLYR2HhCoRTGVD9yvqVz.DBkj.Gm'),
(24, 'anju@gmail.com', 'anju', '8826826455', '$2b$10$iw6BSoEuzpYA9W5vEM8.Yu6yQmmuUI8qmiYuT5sDvd6wz4yTb6yxa'),
(25, 'suhani@gmail.com', 'suhani', '8746563547', '$2b$10$xCwctZlQk4AEXlMxIyp4DupsAc0gPS5T6KWskD/WYaE0gKxxfC.WS'),
(30, 'aradhaya@gmail.com', 'Aradhaya', '9878474637', '$2b$10$CwQJeUWcjOph44divMk3B.Q3i6H5hybv4fYamzmnbE4PvVXPcZmue'),
(31, 'tanya@gmail.com', 'Tanya', '8763767325', '$2b$10$BUXhcgmfl1/q6qWyTsderehgwGG1nsWZTHA4qmgprwBO3HxdL.rle');

-- --------------------------------------------------------

--
-- Table structure for table `donar`
--

CREATE TABLE `donar` (
  `id` int(200) NOT NULL,
  `cName` varchar(200) NOT NULL,
  `cEmail` varchar(200) NOT NULL,
  `cMobile` varchar(10) NOT NULL,
  `cAddress` varchar(200) NOT NULL,
  `cCity` varchar(200) NOT NULL,
  `cState` varchar(200) NOT NULL,
  `cZip` int(6) NOT NULL,
  `donationType` varchar(200) NOT NULL,
  `cAmount` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donar`
--

INSERT INTO `donar` (`id`, `cName`, `cEmail`, `cMobile`, `cAddress`, `cCity`, `cState`, `cZip`, `donationType`, `cAmount`) VALUES
(1, 'Ayu', 'ayu@gmail.com', '2147483647', 'Delhi', 'Delhi', 'Delhi', 123, 'Health', 23456677),
(2, 'Ayushi Tikoo', 'ayu@gmail.com', '2147483647', 'New Delhi', 'Delhi', 'Delhi', 123476, 'Health', 1000000000),
(3, 'Piyushi Tikoo', 'piyushi@gmail.com', '2147483647', 'Delhi', 'Delhi', 'New Delhi', 123554, 'Health', 2147483647),
(4, 'sahil ', 'ssss@gmail.com', '2147483647', 'rajkot', 'raJKOT', 'gujarat', 360001, 'Environment', 20000),
(5, 'sahil', 'ssss@gmail.com', '9824094560', 'rajkot', 'raJKOT', 'gujarat', 360001, 'Education', 9876),
(6, 'Anjali Shah', 'anjali@gmail.com', '7268764725', 'Noida', 'Ashok Nagar', 'Harayana', 233232, 'Livelihood', 10000),
(7, 'Anjali Shah', 'anjali@gmail.com', '7268764725', 'Noida', 'Ashok Nagar', 'Harayana', 233232, 'Livelihood', 10000),
(8, 'sapna aggarwal', 'sapna.aggarwal@gmail.com', '7765849823', 'delhi', 'delji', 'haryana', 456754, 'undefined', 12346),
(9, 'sapna aggarwal', 'sapna@gmail.com', '7765849888', 'delhi', 'delji', 'haryana', 456754, 'undefined', 12346),
(10, 'sapna aggarwal', 'sana@gmail.com', '7765849834', 'delhi', 'delhi', 'haryanaaaa', 456754, 'undefined', 12346),
(11, 'Anaya', 'anaya@gmail.com', '2893748647', 'new Delhi', 'Dekhi', 'Delhi', 765467, 'Environment', 10000),
(12, 'Arjun', 'arjun@gmail.com', '7665654543', 'Gurgoan', 'Ana Nagar', 'Harayana', 897287, 'Livelihood', 10000),
(13, 'Yogita Tikoo', 'yogita@gmail.com', '8675654545', 'New Delhi', 'Uttam Nagar', 'New Delhi', 565644, 'Health', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(200) NOT NULL,
  `eName` varchar(200) NOT NULL,
  `eLocation` varchar(200) NOT NULL,
  `eTime` time(6) NOT NULL,
  `eDate` date NOT NULL,
  `eDescription` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `eName`, `eLocation`, `eTime`, `eDate`, `eDescription`) VALUES
(4, 'Children Rights', 'New Delhi', '15:04:00.000000', '2020-09-12', 'Fight for children'),
(6, 'Women protection', 'New Delhi', '13:03:00.000000', '2020-05-29', 'Come and join us'),
(7, 'Human rights', 'Lajpatnagar', '09:06:00.000000', '2020-03-25', 'Protect humans'),
(8, 'Envt protection', 'New Delhi', '00:05:00.000000', '2020-05-08', 'come and join to protect envt'),
(9, 'Blood Donation', 'New Delhi', '12:04:00.000000', '2020-02-12', 'Participate '),
(10, 'Women Empowerment', 'Noida ', '00:30:00.000000', '2020-09-22', 'Empower Women');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `comments` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `email`, `category`, `comments`) VALUES
(11, 'ayu@gmail.com', 'Education', 'very good'),
(12, 'ayu@gmail.com', 'Livelihood', 'Helpfull to people'),
(13, 'ayushi@gmail.com', 'Livelihood', 'very nice '),
(14, 'sam@gmail.com', 'Environment', 'service are very good');

-- --------------------------------------------------------

--
-- Table structure for table `pickupinfo`
--

CREATE TABLE `pickupinfo` (
  `id` int(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sName` varchar(100) NOT NULL,
  `sMobile` varchar(10) NOT NULL,
  `sAddress` varchar(300) NOT NULL,
  `sCity` varchar(100) NOT NULL,
  `sState` varchar(100) NOT NULL,
  `sDate` date NOT NULL,
  `donationtype` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pickupinfo`
--

INSERT INTO `pickupinfo` (`id`, `email`, `sName`, `sMobile`, `sAddress`, `sCity`, `sState`, `sDate`, `donationtype`) VALUES
(52, 'ayu@gmail.com', 'Ayu', '9283748234', 'Delhi', 'Delhi', 'Delhi', '2020-03-12', 'Food'),
(53, 'ayu@gmail.com', 'Ayushi Tikoo', '8826826455', 'New Delhi', 'Delhi', 'Delhi', '2020-12-12', 'Books'),
(54, 'ayush@gmail.com', 'ayush', '8826826455', 'new Delhi', 'Uttam nagar', 'Delhi', '2020-03-12', 'Cloths'),
(55, 'anaya@gmail.com', 'Anjali Shah', '7268764725', 'Noida', 'Ashok Nagar', 'Harayana', '2020-06-12', 'Cloths'),
(56, 'samiksha@gmail.com', 'Samiksha', '9283472834', 'Dwarka', 'Dwarka', 'New Delhi', '2020-06-12', 'Cloths');

-- --------------------------------------------------------

--
-- Table structure for table `volunteer`
--

CREATE TABLE `volunteer` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `eName` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `volunteer`
--

INSERT INTO `volunteer` (`id`, `name`, `mobile`, `email`, `eName`) VALUES
(1, 'Aman ', '8826826455', 'aman@gmail.com', 'Women Protection'),
(2, 'Ayushi', '9893782723', 'ayu@gmail.com', 'Women protection'),
(3, 'Piyushi', '8762387637', 'anima@gmail.com', 'Women protection'),
(6, 'Anaya', '2893748647', 'anaya@gmail.com', 'Women protection'),
(14, 'Ayu', '9283748234', 'ayu@gmail.com', 'envt protection'),
(15, 'Yogita', '8347893477', 'yogita@gmail.com', 'Human rights'),
(16, 'Bhavesh', '9873227367', 'bhavesh@gmail.com', 'Children Rights');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customerinfo`
--
ALTER TABLE `customerinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donar`
--
ALTER TABLE `donar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickupinfo`
--
ALTER TABLE `pickupinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `volunteer`
--
ALTER TABLE `volunteer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customerinfo`
--
ALTER TABLE `customerinfo`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `donar`
--
ALTER TABLE `donar`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pickupinfo`
--
ALTER TABLE `pickupinfo`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `volunteer`
--
ALTER TABLE `volunteer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
