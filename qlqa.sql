-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 14, 2023 lúc 02:57 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlqa`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id` bigint(20) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `typeA` bit(1) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `password`, `typeA`, `username`) VALUES
(1, '{bcrypt}$2a$10$ISsu6I4OEwDPK3dm.L89Iet1IIp/sAENkK1fVhXUHwoyKiOzC5TLe', b'1', 'propro'),
(2, '{bcrypt}$2a$10$mcIJoUhuXfteBMaSaSGXmuJ0Wdcwrl4CXgZaILK8fJtAGVugKObZa', b'1', 'propro2'),
(3, '{bcrypt}$2a$10$sXJ5q0T4QSlkQ49UrO.9Gu7cARQE5fQMibJnAp4Vq2VINx1OyYPxG', b'0', 'propro3'),
(4, '{bcrypt}$2a$10$9SwBP2uXL3HMtnH8c/vOZOnkY9QwEOKd6rCuOBgvZ/8FMmTH2g3NO', b'0', 'propro4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dinnertable`
--

CREATE TABLE `dinnertable` (
  `id` bigint(20) NOT NULL,
  `stt` bit(1) NOT NULL,
  `id_order` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dinnertable`
--

INSERT INTO `dinnertable` (`id`, `stt`, `id_order`) VALUES
(1, b'0', 0),
(2, b'0', 0),
(3, b'0', 0),
(4, b'0', 0),
(5, b'0', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dish`
--

CREATE TABLE `dish` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dish`
--

INSERT INTO `dish` (`id`, `name`, `price`, `quantity`) VALUES
(2, 'Bún riêu', 30000, 15),
(5, 'Mì tàu', 40000, 6),
(6, 'Bánh mì', 20000, 15),
(7, 'Cơm tấm', 40000, 63),
(8, 'Hủ tiếu gõ', 15000, 17),
(9, 'Gỏi vịt', 30000, 11),
(10, 'Bún bò', 40000, 18),
(11, 'Bò lúc lắc', 50000, 280),
(12, 'Teopoki', 55000, 73),
(13, 'Bánh tráng trộn', 15000, 90);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dishorder`
--

CREATE TABLE `dishorder` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dishorder`
--

INSERT INTO `dishorder` (`id`, `name`, `note`, `price`, `quantity`) VALUES
(12, 'Bún bò', '', 40000, 1),
(13, 'Bún riêu', '', 30000, 1),
(14, 'Mì tàu', 'Khong gia', 35000, 1),
(15, 'Bánh mì', '', 20000, 1),
(16, 'Mì tàu', '', 35000, 1),
(17, 'Bún bò', 'Tai nam', 40000, 1),
(18, 'Hủ tiếu gõ', '', 15000, 1),
(19, 'Gỏi vịt', 'goi du du', 60000, 2),
(20, 'Bánh mì', '', 20000, 1),
(21, 'Bún bò', '', 40000, 1),
(22, 'Bò lúc lắc', '', 50000, 1),
(23, 'Mì tàu', 'Khong hanh', 105000, 3),
(24, 'Bánh mì', 'Heo quay', 20000, 1),
(25, 'Hủ tiếu gõ', 'Cho them xuong', 15000, 1),
(26, 'Gỏi vịt', '', 30000, 1),
(27, 'Bò lúc lắc', '', 50000, 1),
(29, 'Bún riêu', '', 60000, 2),
(30, 'Gỏi vịt', '', 30000, 1),
(31, 'Mì tàu', '', 35000, 1),
(32, 'Bún bò', '', 80000, 2),
(33, 'Bún bò', '', 80000, 2),
(34, 'Bún riêu', '', 60000, 2),
(35, 'Cơm tấm', '', 40000, 1),
(36, 'Teopoki', '', 55000, 1),
(37, 'Mì tàu', '', 35000, 1),
(38, 'Bún bò', '', 120000, 3),
(39, 'Bò lúc lắc', '', 50000, 1),
(40, 'Bún riêu', '', 60000, 2),
(41, 'Hủ tiếu gõ', '', 15000, 1),
(42, 'Gỏi vịt', '', 30000, 1),
(43, 'Cơm tấm', '', 80000, 2),
(44, 'Bún bò', '', 40000, 1),
(45, 'Bánh mì', '', 20000, 1),
(46, 'Bánh tráng trộn', '', 15000, 1),
(47, 'Bò lúc lắc', '', 50000, 1),
(48, 'Cơm tấm', '', 40000, 1),
(49, 'Bò lúc lắc', '', 50000, 1),
(50, 'Bánh tráng trộn', '', 15000, 1),
(51, 'Gỏi vịt', '', 30000, 1),
(52, 'Bún bò', '', 40000, 1),
(53, 'Bánh mì', '', 20000, 1),
(54, 'Bún riêu', '', 30000, 1),
(55, 'Bún bò', '', 80000, 2),
(56, 'Bò lúc lắc', '', 50000, 1),
(57, 'Hủ tiếu gõ', '', 15000, 1),
(58, 'Teopoki', '', 55000, 1),
(59, 'Mì tàu', '', 35000, 1),
(60, 'Bún riêu', '', 30000, 1),
(61, 'Bò lúc lắc', '', 50000, 1),
(62, 'Bún bò', '', 40000, 1),
(63, 'Cơm tấm', '', 40000, 1),
(64, 'Gỏi vịt', '', 30000, 1),
(65, 'Hủ tiếu gõ', '', 15000, 1),
(66, 'Bún bò', '', 120000, 3),
(67, 'Teopoki', '', 110000, 2),
(68, 'Cơm tấm', '', 120000, 3),
(69, 'Bún riêu', '', 60000, 2),
(70, 'Gỏi vịt', '', 60000, 2),
(71, 'Mì tàu', '', 70000, 2),
(72, 'Bò lúc lắc', '', 100000, 2),
(73, 'Gỏi vịt', '', 30000, 1),
(74, 'Bún riêu', '', 30000, 1),
(75, 'Cơm tấm', '', 40000, 1),
(76, 'Teopoki', '', 55000, 1),
(77, 'Gỏi vịt', '', 30000, 1),
(78, 'Teopoki', '', 110000, 2),
(79, 'Cơm tấm', '', 40000, 1),
(80, 'Bò lúc lắc', '', 50000, 1),
(81, 'Teopoki', '', 55000, 1),
(82, 'Bánh tráng trộn', '', 15000, 1),
(83, 'Cơm tấm', '', 40000, 1),
(84, 'Cơm tấm', '', 80000, 2),
(85, 'Bún riêu', '', 60000, 2),
(86, 'Mì tàu', '', 35000, 1),
(87, 'Bún bò', '', 40000, 1),
(88, 'Hủ tiếu gõ', '', 30000, 2),
(89, 'Bún bò', '', 40000, 1),
(90, 'Bún riêu', '', 30000, 1),
(91, 'Bò lúc lắc', '', 50000, 1),
(92, 'Gỏi vịt', '', 30000, 1),
(93, 'Cơm tấm', '', 80000, 2),
(94, 'Mì tàu', '', 35000, 1),
(95, 'Teopoki', '', 55000, 1),
(96, 'Hủ tiếu gõ', '', 15000, 1),
(97, 'Mì tàu', '', 70000, 2),
(98, 'Teopoki', '', 110000, 2),
(99, 'Bánh tráng trộn', '', 30000, 2),
(100, 'Bánh tráng trộn', '', 15000, 1),
(101, 'Cơm tấm', '', 40000, 1),
(102, 'Mì tàu', '', 35000, 1),
(103, 'Cơm tấm', '', 40000, 1),
(104, 'Teopoki', '', 55000, 1),
(105, 'Bò lúc lắc', '', 50000, 1),
(106, 'Cơm tấm', '', 40000, 1),
(107, 'Bún riêu', '', 30000, 1),
(108, 'Gỏi vịt', '', 30000, 1),
(109, 'Bún bò', '', 40000, 1),
(110, 'Mì tàu', '', 35000, 1),
(111, 'Hủ tiếu gõ', '', 30000, 2),
(112, 'Cơm tấm', '', 40000, 1),
(113, 'Teopoki', '', 55000, 1),
(114, 'Teopoki', '', 110000, 2),
(115, 'Mì tàu', '', 35000, 1),
(116, 'Mì tàu', '', 35000, 1),
(117, 'Teopoki', '', 110000, 2),
(118, 'Hủ tiếu gõ', '', 15000, 1),
(119, 'Bún bò', '', 40000, 1),
(120, 'Cơm tấm', '', 40000, 1),
(121, 'Trà sữa', '', 25000, 1),
(122, 'Bò lúc lắc', '', 50000, 1),
(123, 'Bún riêu', '', 30000, 1),
(124, 'Gỏi vịt', '', 30000, 1),
(125, 'Bún riêu', '1 ko huyet', 60000, 2),
(126, 'Bánh tráng trộn', 'them trung cut them 10k', 30000, 2),
(127, 'Trà sữa', 'ttd', 50000, 2),
(128, 'Mì tàu', '', 40000, 1),
(129, 'Mì tàu', '', 40000, 1),
(130, 'Bún riêu', '', 30000, 1),
(131, 'Cơm tấm', '', 40000, 1),
(132, 'Bún riêu', '', 30000, 1),
(133, 'Bún riêu', '', 30000, 1),
(134, 'Cơm tấm', '', 40000, 1),
(135, 'Teopoki', '', 55000, 1),
(136, 'Hủ tiếu gõ', '', 45000, 3),
(137, 'Teopoki', '', 110000, 2),
(138, 'Cơm tấm', '', 40000, 1),
(139, 'Gỏi vịt', '', 60000, 2),
(140, 'Gỏi vịt', '', 90000, 3),
(141, 'Teopoki', '', 55000, 1),
(142, 'Mì tàu', '', 40000, 1),
(143, 'Cơm tấm', '', 40000, 1),
(144, 'Bún bò', '', 80000, 2),
(145, 'Bò lúc lắc', '', 50000, 1),
(146, 'Mì tàu', '', 40000, 1),
(147, 'Hủ tiếu gõ', '', 30000, 2),
(148, 'Cơm tấm', '', 120000, 3),
(149, 'Cơm tấm', '', 40000, 1),
(150, 'Teopoki', '', 55000, 1),
(151, 'Bò lúc lắc', '', 50000, 1),
(152, 'Mì tàu', '', 40000, 1),
(153, 'Hủ tiếu gõ', '', 15000, 1),
(154, 'Bún riêu', '', 30000, 1),
(155, 'Bún bò', '', 40000, 1),
(156, 'Bò lúc lắc', '', 50000, 1),
(157, 'Bánh tráng trộn', '', 15000, 1),
(158, 'Bún bò', '', 40000, 1),
(160, 'Bánh tráng trộn', '', 15000, 1),
(161, 'Teopoki', '', 55000, 1),
(162, 'Mì tàu', '', 40000, 1),
(163, 'Gỏi vịt', '', 30000, 1),
(164, 'Hủ tiếu gõ', '', 15000, 1),
(165, 'Hủ tiếu gõ', '', 15000, 1),
(166, 'Teopoki', '', 55000, 1),
(167, 'Hủ tiếu gõ', '', 15000, 1),
(168, 'Bò lúc lắc', '', 50000, 1),
(169, 'Bún riêu', '', 30000, 1),
(170, 'Bún bò', '', 40000, 1),
(171, 'Bò lúc lắc', '', 50000, 1),
(172, 'Cơm tấm', '', 40000, 1),
(173, 'Cơm tấm', '', 80000, 2),
(174, 'Cơm tấm', '', 40000, 1),
(175, 'Bún bò', '', 40000, 1),
(176, 'Cơm tấm', '', 40000, 1),
(177, 'Bò lúc lắc', '', 50000, 1),
(178, 'Cơm tấm', '', 40000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `guest`
--

CREATE TABLE `guest` (
  `idGuest` int(11) NOT NULL,
  `nameGuest` varchar(30) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderr`
--

CREATE TABLE `orderr` (
  `id` bigint(20) NOT NULL,
  `date_create` datetime(6) DEFAULT NULL,
  `state` bit(1) NOT NULL,
  `total_price` double DEFAULT NULL,
  `dinner_table` bigint(20) DEFAULT NULL,
  `staff` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orderr`
--

INSERT INTO `orderr` (`id`, `date_create`, `state`, `total_price`, `dinner_table`, `staff`) VALUES
(19, '2023-10-11 23:53:48.000000', b'0', 125000, 1, 1),
(20, '2023-10-11 23:54:50.000000', b'0', 225000, 1, 1),
(21, '2023-10-11 23:55:00.000000', b'1', 130000, 3, 1),
(22, '2023-10-11 23:55:21.000000', b'1', 295000, 5, 1),
(23, '2023-10-11 23:57:48.000000', b'1', 655000, 4, 1),
(24, '2023-10-12 01:25:57.000000', b'0', 100000, 1, 1),
(25, '2023-10-12 01:26:12.000000', b'1', 55000, 5, 1),
(26, '2023-10-12 01:27:04.000000', b'0', 30000, 1, 1),
(27, '2023-10-12 01:27:15.000000', b'0', 110000, 1, 1),
(28, '2023-10-12 01:27:22.000000', b'1', 40000, 2, 1),
(29, '2023-10-12 01:27:45.000000', b'0', 50000, 1, 1),
(30, '2023-10-12 01:28:00.000000', b'0', 55000, 1, 1),
(31, '2023-10-12 01:28:06.000000', b'0', 15000, 1, 1),
(32, '2023-10-12 01:28:14.000000', b'1', 40000, 2, 1),
(33, '2023-10-12 01:28:51.000000', b'0', 245000, 1, 1),
(34, '2023-10-12 01:29:04.000000', b'0', 120000, 3, 1),
(35, '2023-10-12 01:29:11.000000', b'1', 30000, 5, 1),
(36, '2023-10-12 01:29:18.000000', b'1', 80000, 4, 1),
(37, '2023-10-12 01:29:26.000000', b'0', 90000, 2, 1),
(38, '2023-10-12 01:29:40.000000', b'0', 195000, 1, 1),
(39, '2023-10-12 01:30:05.000000', b'0', 30000, 1, 1),
(40, '2023-10-12 01:30:40.000000', b'0', 15000, 1, 1),
(41, '2023-10-12 01:31:16.000000', b'0', 40000, 1, 1),
(42, '2023-10-12 01:43:21.000000', b'0', 130000, 1, 1),
(43, '2023-10-12 01:44:47.000000', b'0', 190000, 3, 1),
(44, '2023-10-12 02:16:08.000000', b'1', 160000, 1, 1),
(45, '2023-10-12 02:16:56.000000', b'0', 145000, 2, 1),
(46, '2023-10-12 02:53:49.000000', b'1', 160000, 2, 1),
(47, '2023-10-12 02:55:40.000000', b'1', 215000, 3, 1),
(48, '2023-10-12 05:03:14.000000', b'1', 140000, 1, 2),
(49, '2023-10-12 05:04:12.000000', b'0', 40000, 5, 2),
(50, '2023-10-12 05:04:34.000000', b'1', 40000, 5, 2),
(51, '2023-10-12 05:05:07.000000', b'1', 30000, 1, 1),
(52, '2023-10-12 09:53:27.000000', b'0', 70000, 1, 1),
(53, '2023-10-12 09:53:38.000000', b'1', 125000, 1, 1),
(54, '2023-10-14 15:30:46.000000', b'1', 255000, 5, 1),
(55, '2023-10-14 15:31:43.000000', b'1', 90000, 1, 1),
(56, NULL, b'1', 55000, 1, 1),
(57, '2023-10-18 13:36:59.000000', b'1', 40000, 4, 1),
(58, '2023-10-18 13:42:56.000000', b'0', 40000, 5, 1),
(59, '2023-10-18 16:27:35.000000', b'1', 130000, 3, 1),
(60, '2023-10-18 12:58:41.000000', b'1', 70000, 2, 1),
(61, '2023-10-19 06:30:31.000000', b'1', 120000, 5, 1),
(62, '2023-10-23 18:08:34.000000', b'1', 95000, 4, 1),
(63, '2023-10-27 15:48:12.000000', b'1', 50000, 1, 1),
(64, '2023-11-07 13:45:26.000000', b'1', 55000, 1, 1),
(65, '2023-11-07 14:34:21.000000', b'1', 30000, 1, 1),
(66, '2023-11-07 14:47:35.000000', b'0', 40000, 4, 1),
(67, '2023-11-07 20:41:56.000000', b'1', 105000, 4, 2),
(69, '2023-11-08 23:05:17.000000', b'0', 15000, 2, 1),
(70, '2023-11-08 23:07:18.000000', b'1', 55000, 1, 1),
(71, '2023-11-08 23:09:21.000000', b'1', 40000, 4, 1),
(72, '2023-11-08 23:13:53.000000', b'1', 30000, 5, 1),
(73, '2023-11-09 12:46:24.000000', b'0', 15000, 1, 1),
(74, '2023-11-09 14:34:50.000000', b'1', 70000, 1, 1),
(75, '2023-11-09 14:52:58.000000', b'1', 15000, 1, 1),
(76, '2023-11-09 14:53:32.000000', b'0', 50000, 2, 1),
(77, '2023-11-09 14:54:56.000000', b'1', 30000, 3, 1),
(78, '2023-11-09 14:55:14.000000', b'1', 90000, 2, 1),
(79, '2023-11-09 14:55:23.000000', b'1', 40000, 4, 1),
(80, '2023-11-09 15:00:07.000000', b'1', 80000, 3, 1),
(81, '2023-11-09 15:00:59.000000', b'1', 40000, 2, 1),
(82, '2023-11-09 15:01:50.000000', b'1', 40000, 4, 1),
(83, '2023-11-09 15:02:16.000000', b'1', 40000, 5, 1),
(84, '2023-11-09 15:03:53.000000', b'1', 50000, 3, 1),
(85, '2023-11-13 12:03:04.000000', b'1', 40000, 5, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_dish`
--

CREATE TABLE `order_dish` (
  `id_order` bigint(20) NOT NULL,
  `id_dish_order` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_dish`
--

INSERT INTO `order_dish` (`id_order`, `id_dish_order`) VALUES
(7, 16),
(7, 17),
(7, 18),
(8, 19),
(8, 20),
(8, 21),
(8, 22),
(9, 23),
(9, 24),
(9, 25),
(9, 26),
(12, 27),
(14, 29),
(15, 30),
(16, 31),
(16, 32),
(17, 33),
(17, 34),
(17, 35),
(18, 36),
(18, 37),
(18, 38),
(18, 39),
(18, 40),
(18, 41),
(18, 42),
(18, 43),
(19, 44),
(19, 45),
(19, 46),
(19, 47),
(20, 48),
(20, 49),
(20, 50),
(20, 51),
(20, 52),
(20, 53),
(20, 54),
(21, 55),
(21, 56),
(22, 57),
(22, 58),
(22, 59),
(22, 60),
(22, 61),
(22, 62),
(22, 63),
(22, 64),
(23, 65),
(23, 66),
(23, 67),
(23, 68),
(23, 69),
(23, 70),
(23, 71),
(23, 72),
(24, 73),
(24, 74),
(24, 75),
(25, 76),
(26, 77),
(27, 78),
(28, 79),
(29, 80),
(30, 81),
(31, 82),
(32, 83),
(33, 84),
(33, 85),
(33, 86),
(33, 87),
(33, 88),
(34, 89),
(34, 90),
(34, 91),
(35, 92),
(36, 93),
(37, 94),
(37, 95),
(38, 96),
(38, 97),
(38, 98),
(39, 99),
(40, 100),
(41, 101),
(42, 102),
(42, 103),
(42, 104),
(43, 105),
(43, 106),
(43, 107),
(43, 108),
(43, 109),
(44, 110),
(44, 111),
(44, 112),
(44, 113),
(45, 114),
(45, 115),
(46, 116),
(46, 117),
(46, 118),
(47, 119),
(47, 120),
(47, 121),
(47, 122),
(47, 123),
(47, 124),
(48, 125),
(48, 126),
(48, 127),
(49, 128),
(50, 129),
(51, 130),
(52, 131),
(52, 132),
(53, 133),
(53, 134),
(53, 135),
(54, 136),
(54, 137),
(54, 138),
(54, 139),
(55, 140),
(56, 141),
(57, 142),
(58, 143),
(59, 144),
(59, 145),
(60, 146),
(60, 147),
(61, 148),
(62, 149),
(62, 150),
(63, 151),
(64, 152),
(64, 153),
(65, 154),
(66, 155),
(67, 156),
(67, 157),
(67, 158),
(69, 160),
(70, 161),
(71, 162),
(72, 163),
(73, 164),
(74, 165),
(74, 166),
(75, 167),
(76, 168),
(77, 169),
(78, 170),
(78, 171),
(79, 172),
(80, 173),
(81, 174),
(82, 175),
(83, 176),
(84, 177),
(85, 178);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payroll`
--

CREATE TABLE `payroll` (
  `id` bigint(20) NOT NULL,
  `date_payroll` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `payroll`
--

INSERT INTO `payroll` (`id`, `date_payroll`) VALUES
(1, '2023-11-08 13:35:20.000000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payrollstaff`
--

CREATE TABLE `payrollstaff` (
  `id` bigint(20) NOT NULL,
  `salary` double NOT NULL,
  `payroll_id` bigint(20) DEFAULT NULL,
  `staff_idStaff` bigint(20) DEFAULT NULL,
  `count_workday` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `payrollstaff`
--

INSERT INTO `payrollstaff` (`id`, `salary`, `payroll_id`, `staff_idStaff`, `count_workday`) VALUES
(1, 150000, 1, 1, 1),
(2, 200000, 1, 2, 1),
(3, 50000, 1, 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'MANAGER'),
(2, 'STAFF');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_account`
--

CREATE TABLE `role_account` (
  `role_id` bigint(20) NOT NULL,
  `account_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `staff`
--

CREATE TABLE `staff` (
  `idStaff` bigint(20) NOT NULL,
  `name_staff` varchar(255) DEFAULT NULL,
  `oday_salary` double DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `id_account` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `staff`
--

INSERT INTO `staff` (`idStaff`, `name_staff`, `oday_salary`, `position`, `id_account`) VALUES
(1, 'Bùi Xuân Quang', 150000, 'Chủ tiệm', 1),
(2, 'Thuỳ Trang', 200000, 'Chủ tiệm', 2),
(3, 'Nguyễn Văn A', 50000, 'Nhân viên', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `timesheets`
--

CREATE TABLE `timesheets` (
  `id` bigint(20) NOT NULL,
  `date_timekeeping` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `timesheets`
--

INSERT INTO `timesheets` (`id`, `date_timekeeping`) VALUES
(1, '2023-10-23 19:28:58.000000'),
(2, '2023-10-24 17:31:54.000000'),
(3, '2023-11-30 10:18:17.000000'),
(35, '2023-10-26 10:14:10.000000'),
(36, '2023-10-27 11:25:42.000000'),
(37, '2023-11-07 13:45:35.000000'),
(38, '2023-11-09 11:28:33.000000'),
(39, '2023-11-13 21:49:21.000000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `timesheetstaff`
--

CREATE TABLE `timesheetstaff` (
  `id` bigint(20) NOT NULL,
  `time_scan` datetime(6) DEFAULT NULL,
  `id_staff` bigint(20) DEFAULT NULL,
  `id_timesheets` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `timesheetstaff`
--

INSERT INTO `timesheetstaff` (`id`, `time_scan`, `id_staff`, `id_timesheets`) VALUES
(1, '2023-10-24 17:03:20.000000', 1, 2),
(2, '2023-10-23 17:03:26.000000', 1, 1),
(3, '2023-10-23 17:03:32.000000', 2, 1),
(4, '2023-10-24 17:03:39.000000', 3, 1),
(5, '2023-11-30 10:21:05.000000', 1, 3),
(6, '2023-11-30 10:21:14.000000', 2, 3),
(7, '2023-11-30 10:21:20.000000', 3, 3);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dinnertable`
--
ALTER TABLE `dinnertable`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dish`
--
ALTER TABLE `dish`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dishorder`
--
ALTER TABLE `dishorder`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`idGuest`);

--
-- Chỉ mục cho bảng `orderr`
--
ALTER TABLE `orderr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKnt8yw3ipl0ychhfm1rqd1fif4` (`dinner_table`),
  ADD KEY `FKggxxi1h48qailvpct8m4r1n9p` (`staff`);

--
-- Chỉ mục cho bảng `order_dish`
--
ALTER TABLE `order_dish`
  ADD PRIMARY KEY (`id_order`,`id_dish_order`),
  ADD KEY `FK8nvdaed3bbny0ilwrpnbc8jj5` (`id_dish_order`);

--
-- Chỉ mục cho bảng `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `payrollstaff`
--
ALTER TABLE `payrollstaff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKhx7jx6n5ins7q4llorgjt1s05` (`payroll_id`),
  ADD KEY `FKt68jr1f5tpjmppuvvbxdeyqhf` (`staff_idStaff`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_account`
--
ALTER TABLE `role_account`
  ADD KEY `FKbw44l0j93wl6fcbnukbfigrdq` (`account_id`),
  ADD KEY `FK7n3rlpv8lyj1ut19752o57q4i` (`role_id`);

--
-- Chỉ mục cho bảng `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`idStaff`),
  ADD UNIQUE KEY `UK_qd28v840ves7a9fd0v069cwwn` (`id_account`);

--
-- Chỉ mục cho bảng `timesheets`
--
ALTER TABLE `timesheets`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `timesheetstaff`
--
ALTER TABLE `timesheetstaff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7ut5kqujh35ryc2lqvkylf7sx` (`id_staff`),
  ADD KEY `FKbu9avweogde1789gjrc839lh7` (`id_timesheets`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `dinnertable`
--
ALTER TABLE `dinnertable`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `dish`
--
ALTER TABLE `dish`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `dishorder`
--
ALTER TABLE `dishorder`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT cho bảng `orderr`
--
ALTER TABLE `orderr`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT cho bảng `payroll`
--
ALTER TABLE `payroll`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `payrollstaff`
--
ALTER TABLE `payrollstaff`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `staff`
--
ALTER TABLE `staff`
  MODIFY `idStaff` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `timesheets`
--
ALTER TABLE `timesheets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `timesheetstaff`
--
ALTER TABLE `timesheetstaff`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orderr`
--
ALTER TABLE `orderr`
  ADD CONSTRAINT `FKggxxi1h48qailvpct8m4r1n9p` FOREIGN KEY (`staff`) REFERENCES `staff` (`idStaff`),
  ADD CONSTRAINT `FKnt8yw3ipl0ychhfm1rqd1fif4` FOREIGN KEY (`dinner_table`) REFERENCES `dinnertable` (`id`);

--
-- Các ràng buộc cho bảng `order_dish`
--
ALTER TABLE `order_dish`
  ADD CONSTRAINT `FK8nvdaed3bbny0ilwrpnbc8jj5` FOREIGN KEY (`id_dish_order`) REFERENCES `dishorder` (`id`),
  ADD CONSTRAINT `FKcg4a7165l80xht6cmj7btkspa` FOREIGN KEY (`id_order`) REFERENCES `orderr` (`id`);

--
-- Các ràng buộc cho bảng `payrollstaff`
--
ALTER TABLE `payrollstaff`
  ADD CONSTRAINT `FKhx7jx6n5ins7q4llorgjt1s05` FOREIGN KEY (`payroll_id`) REFERENCES `payroll` (`id`),
  ADD CONSTRAINT `FKt68jr1f5tpjmppuvvbxdeyqhf` FOREIGN KEY (`staff_idStaff`) REFERENCES `staff` (`idStaff`);

--
-- Các ràng buộc cho bảng `role_account`
--
ALTER TABLE `role_account`
  ADD CONSTRAINT `FK7n3rlpv8lyj1ut19752o57q4i` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `FKbw44l0j93wl6fcbnukbfigrdq` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `FK4mibkbs2yfmqnm00vv1gjnbc4` FOREIGN KEY (`id_account`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `timesheetstaff`
--
ALTER TABLE `timesheetstaff`
  ADD CONSTRAINT `FK7ut5kqujh35ryc2lqvkylf7sx` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`idStaff`),
  ADD CONSTRAINT `FKbu9avweogde1789gjrc839lh7` FOREIGN KEY (`id_timesheets`) REFERENCES `timesheets` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
