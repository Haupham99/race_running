-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 07, 2020 lúc 04:59 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `race_running`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `user_name`, `password`) VALUES
(1, 'Hau', 'haupham', '123456'),
(2, 'Hiep', 'hiep', '123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `content` varchar(500) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `feedback`
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
-- Cấu trúc bảng cho bảng `member`
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
-- Đang đổ dữ liệu cho bảng `member`
--

INSERT INTO `member` (`member_id`, `username`, `password`, `name`, `age`, `gender`, `email`) VALUES
(1, 'hauphambk', '123456', 'Phạm Văn Hậu', 21, 1, 'haupham99a@gmail.com'),
(2, 'hiepbk', '123456', 'Đồng Văn Hiệp', 21, 1, 'hiep@gmail.com'),
(3, 'hiepdv173104', '123456', 'Đồng Văn Hiệp', 21, 1, 'hiep@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `member_race`
--

CREATE TABLE `member_race` (
  `member_race_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `race_id` int(11) NOT NULL,
  `run_time` time(6) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `member_race`
--

INSERT INTO `member_race` (`member_race_id`, `member_id`, `race_id`, `run_time`, `rank`) VALUES
(1, 1, 1, '00:00:01.000000', 1),
(2, 2, 2, '00:00:02.000000', 1),
(3, 1, 1, '00:00:00.000000', 2),
(4, 1, 1, '00:00:00.000000', 2),
(5, 1, 1, '00:00:00.000000', 2),
(6, 1, 1, '00:00:00.000000', 2),
(7, 1, 6, '00:00:00.000000', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `race`
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
-- Đang đổ dữ liệu cho bảng `race`
--

INSERT INTO `race` (`race_id`, `name`, `time`, `prize`, `track_id`, `winner`) VALUES
(1, 'Cuộc thi 1', '2020-05-25 14:01:48', '1 triệu', 1, 'Phạm Văn Hậu'),
(2, 'Cuộc thi 2', '2020-05-27 14:01:48', '2 triệu', 2, 'Nguyễn Văn A'),
(3, 'Cuộc thi 3', '2020-05-30 13:15:50', '1 triệu', 2, 'Nguyễn Văn B'),
(4, 'Cuộc đua 4', '2020-05-29 13:15:50', '2 triệu', 1, 'Phạm Văn C'),
(5, 'Cuộc thi 5', '2020-06-17 20:43:00', '2 triệu', 2, NULL),
(6, 'Cuộc thi 6', '2020-06-26 22:15:00', '2 triệu', 2, NULL),
(8, 'Cuoc thi 7', '2020-06-15 08:10:00', '1 trieu', 1, NULL),
(9, 'Cuoc thi 8', '2020-06-28 20:46:00', '1 trieu', 1, 'Hậu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `track`
--

CREATE TABLE `track` (
  `track_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `long` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `track`
--

INSERT INTO `track` (`track_id`, `name`, `location`, `long`) VALUES
(1, 'đường đua A', 'Hà Nội', 15000),
(2, 'đường đua B', 'Hồ Chí Minh', 15000);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Chỉ mục cho bảng `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Chỉ mục cho bảng `member_race`
--
ALTER TABLE `member_race`
  ADD PRIMARY KEY (`member_race_id`),
  ADD KEY `race_id` (`race_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Chỉ mục cho bảng `race`
--
ALTER TABLE `race`
  ADD PRIMARY KEY (`race_id`),
  ADD KEY `track_id` (`track_id`);

--
-- Chỉ mục cho bảng `track`
--
ALTER TABLE `track`
  ADD PRIMARY KEY (`track_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `member_race`
--
ALTER TABLE `member_race`
  MODIFY `member_race_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `race`
--
ALTER TABLE `race`
  MODIFY `race_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `track`
--
ALTER TABLE `track`
  MODIFY `track_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `member_race`
--
ALTER TABLE `member_race`
  ADD CONSTRAINT `member_race_ibfk_1` FOREIGN KEY (`race_id`) REFERENCES `race` (`race_id`),
  ADD CONSTRAINT `member_race_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`);

--
-- Các ràng buộc cho bảng `race`
--
ALTER TABLE `race`
  ADD CONSTRAINT `race_ibfk_1` FOREIGN KEY (`track_id`) REFERENCES `track` (`track_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
