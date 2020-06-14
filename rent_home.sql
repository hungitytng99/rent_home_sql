-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 14, 2020 lúc 10:12 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `rent_home`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `address`
--

CREATE TABLE `address` (
  `id_addr` int(11) NOT NULL,
  `province` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `commune` varchar(50) NOT NULL,
  `street` varchar(50) NOT NULL,
  `no_home` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail`
--

CREATE TABLE `detail` (
  `id_home` int(11) NOT NULL,
  `refrigator` int(11) NOT NULL DEFAULT 0,
  `washingmachine` int(11) NOT NULL DEFAULT 0,
  `air_conditional` int(11) NOT NULL DEFAULT 0,
  `tv` int(11) NOT NULL DEFAULT 0,
  `heater` int(11) NOT NULL DEFAULT 0,
  `bedroom` int(11) NOT NULL DEFAULT 0,
  `bathroom` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `home`
--

CREATE TABLE `home` (
  `id_home` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `id_addr` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `fee` decimal(10,0) NOT NULL,
  `id_host` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `renter_vote`
--

CREATE TABLE `renter_vote` (
  `id_vote` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `visited_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(30) NOT NULL,
  `id_addr` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `permission` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vote`
--

CREATE TABLE `vote` (
  `id_vote` int(11) NOT NULL,
  `review` varchar(250) DEFAULT NULL,
  `voted_date` date NOT NULL,
  `id_home` int(11) NOT NULL,
  `star` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id_addr`);

--
-- Chỉ mục cho bảng `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id_home`);

--
-- Chỉ mục cho bảng `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id_home`),
  ADD KEY `id_host` (`id_host`),
  ADD KEY `id_addr` (`id_addr`);

--
-- Chỉ mục cho bảng `renter_vote`
--
ALTER TABLE `renter_vote`
  ADD PRIMARY KEY (`id_vote`),
  ADD KEY `id_renter` (`id_user`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `account` (`username`),
  ADD UNIQUE KEY `account_2` (`username`),
  ADD KEY `id_host` (`id_user`),
  ADD KEY `id_addr` (`id_addr`);

--
-- Chỉ mục cho bảng `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`id_vote`),
  ADD KEY `id_home` (`id_home`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `address`
--
ALTER TABLE `address`
  MODIFY `id_addr` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `detail`
--
ALTER TABLE `detail`
  MODIFY `id_home` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `home`
--
ALTER TABLE `home`
  MODIFY `id_home` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vote`
--
ALTER TABLE `vote`
  MODIFY `id_vote` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `home`
--
ALTER TABLE `home`
  ADD CONSTRAINT `home_ibfk_1` FOREIGN KEY (`id_host`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `home_ibfk_2` FOREIGN KEY (`id_home`) REFERENCES `detail` (`id_home`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `home_ibfk_3` FOREIGN KEY (`id_addr`) REFERENCES `address` (`id_addr`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `renter_vote`
--
ALTER TABLE `renter_vote`
  ADD CONSTRAINT `renter_vote_ibfk_1` FOREIGN KEY (`id_vote`) REFERENCES `vote` (`id_vote`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `renter_vote_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `renter` (`id_renter`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_addr`) REFERENCES `address` (`id_addr`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `renter_vote` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `vote`
--
ALTER TABLE `vote`
  ADD CONSTRAINT `vote_ibfk_1` FOREIGN KEY (`id_home`) REFERENCES `home` (`id_home`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
