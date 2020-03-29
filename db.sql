-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 29, 2020 at 09:27 PM
-- Server version: 5.7.23
-- PHP Version: 7.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `biometricattendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `finger_templates`
--

CREATE TABLE `finger_templates` (
  `id` int(11) NOT NULL,
  `device_name` varchar(100) DEFAULT NULL,
  `template` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `finger_templates`
--

INSERT INTO `finger_templates` (`id`, `device_name`, `template`, `user_id`) VALUES
(32, NULL, '3,1,95,20,0,0,240,0,192,0,192,0,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,2,0,2,0,6,128,6,128,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,141,197,62,112,144,38,94,37,149,132,222,81,162,172,158,63,168,194,126,51,178,68,94,33,179,5,126,94,52,22,158,33,189,197,158,87,191,21,222,26,66,133,182,89,135,38,191,53,136,195,31,72,148,43,255,85,26,234,191,30,159,197,63,20,165,27,255,41,42,92,31,|77,174,128,127,68,191,192,223,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,|3,1,87,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,2,0,2,0,2,128,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,97,139,164,126,86,140,163,254,114,21,101,94,66,149,229,30,94,25,101,158,15,33,68,254,21,40,195,158,71,46,105,190,55,55,44,158,31,184,218,190,75,185,170,190,90,186,211,254,29,194,195,126,102,195,169,158,51,134,13,23,32,134,95,31,110,11,36,95,21,147,5,95,|11,153,158,95,32,29,65,159,55,36,169,191,70,167,168,127,116,167,208,191,19,50,3,255,10,181,219,151,46,63,65,255,115,51,38,180,62,136,161,221,108,176,231,61,79,5,99,79,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,', 0),
(33, 'abcd1212', '3,1,94,18,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,2,0,2,0,2,0,2,0,2,0,2,0,2,0,6,0,6,0,6,128,14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,47,140,84,254,101,17,229,254,22,148,28,30,13,22,29,94,64,150,102,126,29,160,153,62,43,41,150,30,37,45,86,30,97,54,209,94,107,135,206,127,15,16,133,159,48,159,213,159,47,64,20,127,90,192,145,31,70,158,16,244,52,175,234,60,66,32,104,21,57,50,20,221,|0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,|3,1,94,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,2,0,2,0,6,0,6,0,6,0,14,0,14,0,30,0,62,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,52,134,150,254,42,137,29,158,100,145,17,126,58,148,24,254,96,149,230,254,71,30,21,222,19,159,91,158,63,162,21,254,65,181,213,30,14,182,218,30,94,10,230,159,19,13,29,223,78,19,85,159,58,62,149,95,77,165,234,156,82,168,21,61,0,0,0,0,0,0,0,0,|0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `serialnumber` double NOT NULL,
  `gender` varchar(10) NOT NULL,
  `fingerprint_id` int(11) NOT NULL,
  `fingerprint_select` tinyint(1) NOT NULL DEFAULT '0',
  `user_date` date NOT NULL,
  `del_fingerid` tinyint(1) NOT NULL DEFAULT '0',
  `add_fingerid` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `serialnumber`, `gender`, `fingerprint_id`, `fingerprint_select`, `user_date`, `del_fingerid`, `add_fingerid`) VALUES
(35, 'Ahmed', 1, 'Male', 5, 0, '2020-03-11', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_logs`
--

CREATE TABLE `users_logs` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `serialnumber` double NOT NULL,
  `fingerprint_id` int(5) NOT NULL,
  `checkindate` date NOT NULL,
  `timein` time NOT NULL,
  `timeout` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `finger_templates`
--
ALTER TABLE `finger_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_logs`
--
ALTER TABLE `users_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `finger_templates`
--
ALTER TABLE `finger_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users_logs`
--
ALTER TABLE `users_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;
