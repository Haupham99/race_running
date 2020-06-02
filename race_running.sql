-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2020 at 01:15 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `race_running`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `user_name`, `password`) VALUES
(1, 'Hau', 'haupham', '123456'),
(2, 'Hiep', 'hiep', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `content` varchar(500) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `content`, `email`, `name`) VALUES
(1, 'Đường đua quá dài, thời điểm diễn ra quá nắng', 'anhhau40033@gmail.com', NULL),
(2, 'Cuộc thi rất hấp dẫn', 'hiep@gmail.com', NULL),
(3, 'Cuộc thi diễn ra trong lúc thời tiết quá nóng', 'dongvanhiep92@gmail.com', 'Đồng Văn Hiệp'),
(4, 'Cuộc thi diễn ra trong lúc thời tiết quá nóng', 'dongvanhiep92@gmail.com', 'Đồng Văn Hiệp'),
(5, 'Cuộc thi diễn ra trong lúc thời tiết quá nóng', 'hiep@gmail.com', 'Hiep'),
(6, 'Cuộc thi diễn ra trong lúc thời tiết quá nóng', 'dongvanhiep92@gmail.com', 'Đồng Văn Hiệp'),
(7, 'Cuộc thi diễn ra trong lúc thời tiết quá nóng', 'dongvanhiep92@gmail.com', 'Đồng Văn Hiệp'),
(8, NULL, NULL, NULL),
(9, NULL, NULL, NULL),
(10, NULL, NULL, NULL),
(11, 'Cuộc thi diễn ra trong lúc thời tiết quá nóng', 'dongvanhiep92@gmail.com', 'Đồng Văn Hiệp');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `username`, `password`, `name`, `age`, `gender`, `email`) VALUES
(1, 'hauphambk', '123456', 'Phạm Văn Hậu', 21, 1, 'haupham99a@gmail.com'),
(2, 'hiepbk', '123456', 'Đồng Văn Hiệp', 21, 1, 'hiep@gmail.com'),
(3, 'hiepdv173104', '123456', 'Đồng Văn Hiệp', 21, 1, 'hiep@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `member_race`
--

CREATE TABLE `member_race` (
  `member_race_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `race_id` int(11) NOT NULL,
  `run_time` varchar(50) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member_race`
--

INSERT INTO `member_race` (`member_race_id`, `member_id`, `race_id`, `run_time`, `rank`) VALUES
(1, 1, 1, '1 tiếng 30p', 1),
(2, 2, 2, '2 tiếng', 1),
(3, 1, 1, '0', 2),
(4, 1, 1, '0', 2),
(5, 1, 1, '0', 2),
(6, 1, 1, '0', 2);

-- --------------------------------------------------------

--
-- Table structure for table `race`
--

CREATE TABLE `race` (
  `race_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `prize` varchar(10) DEFAULT NULL,
  `track_id` int(11) NOT NULL,
  `winner` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `race`
--

INSERT INTO `race` (`race_id`, `name`, `time`, `prize`, `track_id`, `winner`) VALUES
(1, 'Cuộc thi 1', '2020-05-25 14:01:48', '1 triệu', 1, NULL),
(2, 'Cuộc thi 2', '2020-05-27 14:01:48', '2 triệu', 2, NULL),
(3, 'Cuộc thi 3', '2020-05-30 13:15:50', '1 triệu', 2, NULL),
(4, 'Cuộc đua 4', '2020-05-29 13:15:50', '2 triệu', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE `track` (
  `track_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `long` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `track`
--

INSERT INTO `track` (`track_id`, `name`, `location`, `long`) VALUES
(1, 'đường đua A', 'Hà Nội', 10000),
(2, 'đường đua B', 'Hồ Chí Minh', 15000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `member_race`
--
ALTER TABLE `member_race`
  ADD PRIMARY KEY (`member_race_id`),
  ADD KEY `race_id` (`race_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `race`
--
ALTER TABLE `race`
  ADD PRIMARY KEY (`race_id`),
  ADD KEY `track_id` (`track_id`);

--
-- Indexes for table `track`
--
ALTER TABLE `track`
  ADD PRIMARY KEY (`track_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `member_race`
--
ALTER TABLE `member_race`
  MODIFY `member_race_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `race`
--
ALTER TABLE `race`
  MODIFY `race_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `track`
--
ALTER TABLE `track`
  MODIFY `track_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `member_race`
--
ALTER TABLE `member_race`
  ADD CONSTRAINT `member_race_ibfk_1` FOREIGN KEY (`race_id`) REFERENCES `race` (`race_id`),
  ADD CONSTRAINT `member_race_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`);

--
-- Constraints for table `race`
--
ALTER TABLE `race`
  ADD CONSTRAINT `race_ibfk_1` FOREIGN KEY (`track_id`) REFERENCES `track` (`track_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
