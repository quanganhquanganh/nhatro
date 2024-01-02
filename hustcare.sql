-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 28, 2023 at 06:39 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hustcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `Areas`
--

CREATE TABLE `Areas` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Attributes`
--

CREATE TABLE `Attributes` (
  `id` varchar(255) NOT NULL,
  `price` varchar(255) DEFAULT NULL,
  `acreage` varchar(255) DEFAULT NULL,
  `published` varchar(255) DEFAULT NULL,
  `hashtag` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Attributes`
--

INSERT INTO `Attributes` (`id`, `price`, `acreage`, `published`, `hashtag`, `createdAt`, `updatedAt`) VALUES
('02955fe2-a99d-4610-abdc-bcae9bf2e0f1', '1 triệu/tháng', '20 m2', '05/12/2023', '#844077', '2023-12-05 11:49:21', '2023-12-05 11:49:21'),
('38c74aba-582f-4578-acb5-140450755d47', '1 triệu/tháng', '10 m2', '23/12/2023', '#864466', '2023-12-23 10:25:55', '2023-12-23 10:25:55'),
('64e7c99b-0fe0-4292-b395-13e470c24c1a', '1 triệu/tháng', '10 m2', '23/12/2023', '#711395', '2023-12-23 10:20:14', '2023-12-23 10:20:14'),
('72f69ace-5526-47da-bbd2-207fbc30db95', '3 triệu/tháng', '20 m2', '07/06/2023', '#419359', '2023-06-07 14:22:21', '2023-06-07 14:22:21'),
('7a0f0e7f-0c64-456a-a64b-ad4dece96c16', '3 triệu/tháng', '20 m2', '07/06/2023', '#708717', '2023-06-07 14:20:25', '2023-06-07 14:20:25'),
('83b1eddf-d6c1-411f-9b04-58c0f9430373', '10 triệu/tháng', '50 m2', '19/12/2023', '#994393', '2023-12-18 19:03:46', '2023-12-18 19:03:46'),
('98b0fed8-b3b0-4f05-a16b-2680d6199c17', '10 triệu/tháng', '10 m2', '28/12/2023', '#883707', '2023-12-28 05:39:05', '2023-12-28 05:39:05'),
('bc2724ec-f373-43ef-bceb-1f9aaef2541a', '1 triệu/tháng', '20 m2', '05/12/2023', '#549553', '2023-12-05 11:46:51', '2023-12-05 11:46:51');

-- --------------------------------------------------------

--
-- Table structure for table `Categories`
--

CREATE TABLE `Categories` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `header` varchar(255) DEFAULT NULL,
  `subheader` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Categories`
--

INSERT INTO `Categories` (`id`, `code`, `value`, `header`, `subheader`, `createdAt`, `updatedAt`) VALUES
(1, 'code123', 'Phòng trọ', 'Phòng trọ, nhà trọ', 'Phòng trọ 2', '2023-06-03 19:23:25', '2023-06-03 19:23:25'),
(2, 'code 1234', 'Share phòng', 'Share phòng', 'Share phòng', '2023-12-19 02:51:25', '2023-12-19 02:51:25');

-- --------------------------------------------------------

--
-- Table structure for table `Comment`
--

CREATE TABLE `Comment` (
  `comment_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `time_created` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Feedbacks`
--

CREATE TABLE `Feedbacks` (
  `id` int(255) NOT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `postId` varchar(255) DEFAULT '0',
  `titlePost` varchar(255) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `content` longtext DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Feedbacks`
--

INSERT INTO `Feedbacks` (`id`, `userId`, `postId`, `titlePost`, `rating`, `content`, `createdAt`, `updatedAt`) VALUES
(1, 'user123', '156a2341-66fb-443b-bc9c-27685554007e', 'áas', 4, 'sáasasa', '2023-12-19 20:54:31', '2023-12-19 20:54:31'),
(2, '6cfe9b27-63c1-4c89-a8d4-cbd8a35b9f62', '156a2341-66fb-443b-bc9c-27685554007e', 'saasas', 3, 'asasas', '2023-12-19 21:03:31', '2023-12-19 21:03:31'),
(3, '6cfe9b27-63c1-4c89-a8d4-cbd8a35b9f62', '156a2341-66fb-443b-bc9c-27685554007e', 'sa', 4, 'aaaaa', '2023-12-19 21:18:44', '2023-12-19 21:18:44'),
(4, '6cfe9b27-63c1-4c89-a8d4-cbd8a35b9f62', '156a2341-66fb-443b-bc9c-27685554007e', 'saas', 3, 'asas', '2023-12-19 21:19:03', '2023-12-19 21:19:03'),
(5, '6cfe9b27-63c1-4c89-a8d4-cbd8a35b9f62', '156a2341-66fb-443b-bc9c-27685554007e', 'âsas', 4, 'sáas', '2023-12-27 18:54:38', '2023-12-27 18:54:38'),
(6, '6cfe9b27-63c1-4c89-a8d4-cbd8a35b9f62', '156a2341-66fb-443b-bc9c-27685554007e', 'aA', 0, 'ÁAS', '2023-12-27 18:57:55', '2023-12-27 18:57:55'),
(7, '6cfe9b27-63c1-4c89-a8d4-cbd8a35b9f62', '156a2341-66fb-443b-bc9c-27685554007e', 'asas', 0, 'asas', '2023-12-27 18:57:59', '2023-12-27 18:57:59'),
(8, '6cfe9b27-63c1-4c89-a8d4-cbd8a35b9f62', '156a2341-66fb-443b-bc9c-27685554007e', 'aa', 0, 'abcd', '2023-12-27 18:58:09', '2023-12-27 18:58:09'),
(9, '6cfe9b27-63c1-4c89-a8d4-cbd8a35b9f62', '156a2341-66fb-443b-bc9c-27685554007e', 'aa', 0, 'aaaa', '2023-12-28 05:39:20', '2023-12-28 05:39:20'),
(10,'1','1','Nhận xét phòng',5,'Phòng đẹp đấy', '2023-12-28 05:39:20', '2023-12-28 05:39:20'),
(11,'1','2','Nhận xét phòng',5,'Phòng chất lừ', '2023-12-28 05:39:20', '2023-12-28 05:39:20'),
(12,'1','3','Nhận xét phòng',3,'Phòng chật quá bạn ơi', '2023-12-28 05:39:20', '2023-12-28 05:39:20'),
(13,'1','4','Nhận xét phòng',4,'Thiếu cửa số nhìn hơi bí', '2023-12-28 05:39:20', '2023-12-28 05:39:20'),
(14,'1','5','Nhận xét phòng',5,'Phòng rộng rãi,thoáng mát!', '2023-12-28 05:39:20', '2023-12-28 05:39:20'),
(15,'1','5','Nhận xét phòng',4,'Phòng rộ̣ng rãi nhưng ở mặt đường nên hơi ồn nha.', '2023-12-28 05:39:20', '2023-12-28 05:39:20');

-- --------------------------------------------------------

--
-- Table structure for table `Images`
--

CREATE TABLE `Images` (
  `id` varchar(255) NOT NULL,
  `image` longtext DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Images`
--

INSERT INTO `Images` (`id`, `image`, `createdAt`, `updatedAt`) VALUES
('02f612fa-37ac-44b3-8b1c-5a9b1a149a8d', '[\"https://res.cloudinary.com/djjv3stcm/image/upload/v1703326942/phongtro123/rxklfwwujyidceeliori.jpg\"]', '2023-12-23 10:25:55', '2023-12-23 10:25:55'),
('13e11421-68ca-4eb4-a6aa-405bffac1164', '[\"https://res.cloudinary.com/djjv3stcm/image/upload/v1686147546/phongtro123/sn7zthyznafnaefeeohb.png\",\"https://res.cloudinary.com/djjv3stcm/image/upload/v1686147613/phongtro123/z35smxpsan9erfzuajz0.jpg\"]', '2023-06-07 14:20:25', '2023-06-07 14:20:25'),
('3ffa01b8-9d4b-4d24-b5a7-c1989f6a8e41', '[\"https://res.cloudinary.com/djjv3stcm/image/upload/v1701776808/phongtro123/iz4ddmnlsdxvt7ola29v.jpg\"]', '2023-12-05 11:46:51', '2023-12-05 11:46:51'),
('91cba214-a377-4999-b065-9837befe397b', '[\"https://res.cloudinary.com/djjv3stcm/image/upload/v1686147742/phongtro123/ja9ok5afj7ebdjmoguhn.jpg\"]', '2023-06-07 14:22:21', '2023-06-07 14:22:21'),
('9fbf3ebf-b945-4a15-ab49-d1fc50705752', '[\"https://res.cloudinary.com/djjv3stcm/image/upload/v1702926223/phongtro123/eaar1ox4obdrjrbl3jjb.jpg\"]', '2023-12-18 19:03:46', '2023-12-18 19:03:46'),
('cdb408dd-5def-4dab-b467-317984dc36e6', '[\"https://res.cloudinary.com/djjv3stcm/image/upload/v1701776959/phongtro123/v6d4o8hc1jahvuihhz3b.jpg\"]', '2023-12-05 11:49:21', '2023-12-05 11:49:21'),
('df4481da-44d3-4fb7-8429-b4dd3353c613', '[\"https://res.cloudinary.com/djjv3stcm/image/upload/v1703741940/phongtro123/j6cawtkvg04o9xbbizyj.jpg\"]', '2023-12-28 05:39:05', '2023-12-28 05:39:05'),
('dff974ae-b3e4-42df-b121-c451e2252a9c', '[\"https://res.cloudinary.com/djjv3stcm/image/upload/v1703326528/phongtro123/b1rkdxfomqnw8zpoywpr.jpg\"]', '2023-12-23 10:20:14', '2023-12-23 10:20:14'),
('1','[\"https://tromoi.com/uploads/members/chi.tran/TIN%20TR%E1%BB%8C/thang%2010/22606/anh-tang-3-1_1647251377.jpg\",\"https://tromoi.com/uploads/members/chi.tran/TIN%20TR%E1%BB%8C/thang%2010/22606/anh-tang-3-4_1647251360.jpg\",\"https://tromoi.com/uploads/members/chi.tran/TIN%20TR%E1%BB%8C/thang%2010/22606/anh-tang-3-5_1647251390.jpg \"]', '2023-12-23 10:20:14', '2023-12-23 10:20:14'),
('2','[\"https://tromoi.com/uploads/static/TINTROMOI/thang%2012/22785/407177181_362259086280119_2694286972290018469_n.jpg \",\"https://tromoi.com/uploads/static/TINTROMOI/thang%2012/22785/407304551_362259066280121_8792032875194033950_n.jpg \",\"https://tromoi.com/uploads/static/TINTROMOI/thang%2012/22785/407304551_362259066280121_8792032875194033950_n.jpg \"]', '2023-12-23 10:20:14', '2023-12-23 10:20:14'),
('3','[\"https://tromoi.com/uploads/members/chi.tran/TIN%20TR%E1%BB%8C/thang9/1809/22287/img-20230914-191656_1694831657.jpg \",\"https://tromoi.com/uploads/members/chi.tran/TIN%20TR%E1%BB%8C/thang9/1809/22287/img-20230914-191647_1694831657.jpg \",\"https://tromoi.com/uploads/members/chi.tran/TIN%20TR%E1%BB%8C/thang9/1809/22287/img-20230914-191632_1694831697.jpg \"]', '2023-12-23 10:20:14', '2023-12-23 10:20:14'),
('4','[\"https://tromoi.com/uploads/members/ai.tran/tin%20tr%E1%BB%8D/thang%203/20172/z4177916371988-b6c491b2b09315744357a3d7885661b6_1679540268%20(1).jpg \",\"https://tromoi.com/uploads/members/ai.tran/tin%20tr%E1%BB%8D/thang%203/20172/z4177916331260-fe8fe14e89e7bd748b1ffc0268bd14af_1679540266%20(1).jpg \",\"https://tromoi.com/uploads/members/ai.tran/tin%20tr%E1%BB%8D/thang%203/20172/z4177916337857-c3edf6e3db51d9657a4573976f62b0e2_1679540266%20(1).jpg \"]', '2023-12-23 10:20:14', '2023-12-23 10:20:14'),
('5','[\"https://tromoi.com/uploads/guest/o_1grk7aemn14t816p2r7ubsri0fg.jpeg \",\"https://tromoi.com/uploads/guest/o_1grk7aemnr0c185m29p14jii6ld.jpeg \",\"https://tromoi.com/uploads/guest/o_1grk7aemnnhr1gf9edbu1s4dke.jpeg\"]', '2023-12-23 10:20:14', '2023-12-23 10:20:14'),
('6','[\"https://file4.batdongsan.com.vn/2024/01/02/20240102094757-dd5e_wm.jpg\",\"https://file4.batdongsan.com.vn/2024/01/02/20240102094836-53d7_wm.jpg\",\"https://file4.batdongsan.com.vn/2023/12/25/20231225092625-51c7_wm.jpg\"]', '2023-12-23 10:20:14', '2023-12-23 10:20:14'),
('7','[\"https://file4.batdongsan.com.vn/2023/12/25/20231225190028-64b3_wm.jpg\",\"https://file4.batdongsan.com.vn/2023/12/25/20231225190027-bef5_wm.jpg\",\"https://file4.batdongsan.com.vn/2023/12/25/20231225190027-865c_wm.jpg\"]', '2023-12-23 10:20:14', '2023-12-23 10:20:14'),
('8','[\"https://file4.batdongsan.com.vn/2023/12/08/20231208154514-57b3_wm.jpg\",\"https://file4.batdongsan.com.vn/2023/12/08/20231208154517-0a11_wm.jpg\"]', '2023-12-23 10:20:14', '2023-12-23 10:20:14'),
('9','[\"https://file4.batdongsan.com.vn/2024/01/01/20240101100824-2576_wm.jpg\",\"https://file4.batdongsan.com.vn/2024/01/01/20240101100824-1ae4_wm.jpg\",\"https://file4.batdongsan.com.vn/2024/01/01/20240101100918-f5b7_wm.jpg\"]', '2023-12-23 10:20:14', '2023-12-23 10:20:14'),
('10','[\"https://file4.batdongsan.com.vn/2023/03/29/20230329175933-8bcb_wm.jpg\",\"https://file4.batdongsan.com.vn/2023/03/29/20230329175933-1814_wm.jpg\",\"https://file4.batdongsan.com.vn/2023/03/29/20230329175933-23cb_wm.jpg\"]', '2023-12-23 10:20:14', '2023-12-23 10:20:14');

-- --------------------------------------------------------

--
-- Table structure for table `Labels`
--

CREATE TABLE `Labels` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Labels`
--

INSERT INTO `Labels` (`id`, `code`, `value`, `createdAt`, `updatedAt`) VALUES
(1, 'OUOA', 'Share phòng Cầu Giấy', '2023-06-07 14:20:25', '2023-06-07 14:20:25'),
(2, 'OUOH', 'Phòng trọ Hoàng Mai', '2023-06-07 14:22:21', '2023-06-07 14:22:21'),
(3, 'OTOI', 'Phòng trọ Hoàn Kiếm', '2023-12-05 11:46:51', '2023-12-05 11:46:51'),
(4, 'OARN', 'Phòng trọ Đống Đa', '2023-12-05 11:49:21', '2023-12-05 11:49:21'),
(5, 'AHOĐ', 'Share phòng Tây Hồ', '2023-12-23 10:20:14', '2023-12-23 10:20:14'),
(6, 'ACNI', 'Phòng trọ Hai Bà Trưng', '2023-12-23 10:25:55', '2023-12-23 10:25:55'),
(7, 'AANU', 'Share phòng Ba Đình', '2023-12-23 10:25:55', '2023-12-23 10:25:55'),
(8, 'ABAB', 'Phòng trọ Long Biên', '2023-12-23 10:25:55', '2023-12-23 10:25:55'),
(9, 'ABEF', 'Phòng trọ Thanh Xuân', '2023-12-23 10:25:55', '2023-12-23 10:25:55'),
(10, 'ABMN', 'Phòng trọ Nam Từ Liêm ', '2023-12-23 10:25:55', '2023-12-23 10:25:55'),
(11, 'ABGH', 'Share phòng Bắc Từ Liêm', '2023-12-23 10:25:55', '2023-12-23 10:25:55'),
(12, 'ABCD', 'Share phòng Thanh Trì', '2023-12-23 10:25:55', '2023-12-23 10:25:55'),
(13, 'OUAB', 'Phòng trọ Ba Đình', '2023-12-28 05:39:05', '2023-12-28 05:39:05');

-- --------------------------------------------------------

--
-- Table structure for table `Overviews`
--

CREATE TABLE `Overviews` (
  `id` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `bonus` varchar(255) DEFAULT NULL,
  `created` varchar(255) DEFAULT NULL,
  `expire` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Overviews`
--

INSERT INTO `Overviews` (`id`, `code`, `area`, `type`, `target`, `bonus`, `created`, `expire`, `createdAt`, `updatedAt`) VALUES
('1', '#864466', 'Share phòng Thành phố Hà Nội', 'Share phòng', 'Tất cả', 'Tin miễn phí', 'Thứ 7, 17:25 23/12/2023', '30/12/2024', '2023-12-23 10:25:55', '2023-12-23 10:32:37'),
('2', '#549553', 'Phòng trọ Thành phố Hà Nội', 'Phòng trọ', 'Tất cả', 'Tin miễn phí', 'Thứ 3, 18:46 5/12/2023', '30/12/2024', '2023-12-05 11:46:51', '2023-12-05 11:46:51'),
('3', '#994393', 'Phòng trọ Thành phố Hà Nội', 'Phòng trọ', 'Tất cả', 'Tin miễn phí', 'Thứ 3, 2:3 19/12/2023', '30/12/2024', '2023-12-18 19:03:46', '2023-12-18 19:04:53'),
('4', '#419359', 'Phòng trọQuận Cầu Giấy', 'Phòng trọ', 'Tất cả', 'Tin miễn phí', 'Thứ 4, 21:22 7/6/2023', '22/06/2024', '2023-06-07 14:22:21', '2023-06-07 15:22:25'),
('5', '#883707', 'Share phòng Thành phố Hà Nội', 'Share phòng', 'Tất cả', 'Tin miễn phí', 'Thứ 6, 17:25 23/01/2024', '30/12/2024', '2023-12-28 05:39:05', '2023-12-28 05:39:05'),
('6', '#844077', 'Phòng trọ Thành phố Hà Nội', 'Phòng trọ', 'Tất cả', 'Tin miễn phí', 'Thứ 6, 17:25 23/01/2024', '30/12/2024', '2023-12-05 11:49:21', '2023-12-05 11:50:30'),
('7', '#708717', 'Phòng trọ Thành phố Hà Nội', 'Phòng trọ', 'Tất cả', 'Tin miễn phí', 'Thứ 6, 17:25 23/01/2024', '30/12/2024', '2023-06-07 14:20:25', '2023-06-07 14:20:25'),
('8', '#711395', 'Share phòng Thành phố Hà Nội', 'Share phòng', 'Tất cả', 'Tin miễn phí', 'Thứ 6, 17:25 23/01/2024', '30/12/2024', '2023-12-23 10:20:14', '2023-12-23 10:32:40'),
('9','#864466','Phòng trọ Thành phố Hà Nội','Phòng trọ','Tất cả','Tin miễn phí','Thứ 2, 17:25 01/01/2024','30/12/2024','2023-12-23 10:20:14', '2023-12-23 10:32:40'),
('10','#864466','Share phòng Thành phố Hà Nội','Share phòng','Tất cả','Tin miễn phí','Thứ 2, 17:30 01/01/2024','30/12/2024','2023-12-23 10:20:14', '2023-12-23 10:32:40');

-- --------------------------------------------------------

--
-- Table structure for table `Positions`
--

CREATE TABLE `Positions` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `PostLikes`
--

CREATE TABLE `PostLikes` (
  `id` int(11) NOT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `postId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PostLikes`
--

INSERT INTO `PostLikes` (`id`, `userId`, `postId`, `createdAt`, `updatedAt`) VALUES
(2, '32e6e1b1-893c-4c12-a4b2-6ea4c78ab8ea', 'ebff2ccf-83a1-4186-80c9-10fc90bb3dde', '2023-12-05 11:50:45', '2023-12-05 11:50:45'),
(3, '6cfe9b27-63c1-4c89-a8d4-cbd8a35b9f62', '9cf8cb68-e7fd-4614-b3ea-0b3486e6d327', '2023-12-07 03:03:22', '2023-12-07 03:03:22');

-- --------------------------------------------------------

--
-- Table structure for table `Posts`
--

CREATE TABLE `Posts` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `star` varchar(255) DEFAULT '0',
  `labelCode` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `attributeId` varchar(255) DEFAULT NULL,
  `priceCode` varchar(255) DEFAULT NULL,
  `areaCode` varchar(255) DEFAULT NULL,
  `provinceCode` varchar(255) DEFAULT NULL,
  `categoryCode` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `overviewId` varchar(255) DEFAULT NULL,
  `imageId` varchar(255) DEFAULT NULL,
  `priceNumber` float DEFAULT NULL,
  `areaNumber` float DEFAULT NULL,
  `utilities` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Posts`
--

INSERT INTO `Posts` (`id`, `title`, `star`, `labelCode`, `address`, `attributeId`, `priceCode`, `areaCode`, `provinceCode`, `categoryCode`, `description`, `status`, `userId`, `overviewId`, `imageId`, `priceNumber`, `areaNumber`, `utilities`, `createdAt`, `updatedAt`) VALUES
('1','Phòng cho thuê - Không chung chủ- có điều hòa quận Đống Đa','5','OARN','Hào Nam, Ô Chợ Dừa, Đống Đa','72f69ace-5526-47da-bbd2-207fbc30db95',NULL,NULL,'NDOE','code123','\"Cho thuê phòng ở phố Hào Nam, diện tích 20m2+ công trình phụ 5m2 +bếp + chỗ phơi quần áo + sân rộng 30m2 để xe\"','checked','1','1','1',3000000,1,'Wifi|Điều Hòa','2023-12-05 11:49:21', '2023-12-05 11:50:30'),
('2','Cho thuê phòng trọ ở ngõ 79B Lương Khánh Thiện','4','OUOA','Lương Khánh Thiện,Cầu Giấy','02955fe2-a99d-4610-abdc-bcae9bf2e0f1',NULL,NULL,'NDOE','code123','\"Cho thuê phòng trọ ở ngõ 79B Lương Khánh Thiện\"','checked','1','2','2',2500000,2,'Wifi|Nóng Lạnh','2023-12-05 11:49:21', '2023-12-05 11:50:30'),
('3','Cho thuê phòng 1tr8 trong nhà 2 ngủ ngách 19 ngõ 1194 đường láng, đầy đủ nóng lạnh điều hoà','4','OUOA','Láng, Quan Hoa, Cầu Giấy','bc2724ec-f373-43ef-bceb-1f9aaef2541a',NULL,NULL,'NDOE','code123','\"Cần cho thuê phòng 1tr8 trong căn 2 ngủ, chung nvs với 1 phòng\"','checked','1','3','3',1800000,2,'Wifi|Nóng Lạnh|Điều Hòa','2023-12-05 11:49:21', '2023-12-05 11:50:30'),
('4','Tìm 1 nữ ở ghép - Đầu tháng có thể vào luôn','5','OUOA','92 Nguyễn Khánh Toàn, Phường Quan Hoa, Quận Cầu Giấy, Hà Nội','7a0f0e7f-0c64-456a-a64b-ad4dece96c16',NULL,NULL,'NDOE','code 1234','\"Nhà 2n1k, có bếp và phòng khách riêng như chung cư\"','checked','1','4','4',2000000,1,'Wifi|Nóng Lạnh|Điều Hòa','2023-12-05 11:49:21', '2023-12-05 11:50:30'),
('5','Tìm người ở ghép ( nữ, sinh viên or đi làm)','5','OUOA','Nguyễn Khang, Yên Hoà, Cầu Giấy','7a0f0e7f-0c64-456a-a64b-ad4dece96c16',NULL,NULL,'NDOE','code 1234','\"Nhà sạch sẽ, ở với chủ, an toàn, gần chợ, gần cv, giá 1 triệu/ người/ tháng, tiền điện 4k/ số. Nước 50k/ người/ tháng.\"','checked','1','5','5',1000000,3,'Wifi|Nóng Lạnh|Điều Hòa','2023-12-05 11:49:21', '2023-12-05 11:50:30'),
('6','CHO THUÊ PHÒNG STUDIO 2N1K, 1BẾP, 1 BAN CÔNG - 2A NGÕ 39 TÚ MỠ, ĐỦ ĐỒ THANG MÁY GIÁ CHỈ 6TR ','4','OUOA','Số 2A ngõ 39, Đường Tú Mỡ, Phường Trung Hòa, Cầu Giấy, Hà Nội','7a0f0e7f-0c64-456a-a64b-ad4dece96c16',NULL,NULL,'NDOE','code123','\"Studio 2 phòng ngủ 1 khách 1 bếp 1 vs 1 ban công.\"','checked','1','6','6',6000000,NULL,'Wifi|Nóng Lạnh|Điều Hòa','2023-12-05 11:49:21', '2023-12-05 11:50:30'),
('7','Cho thuê nhà trọ, phòng trọ đường Xuân Thuỷ, Cầu Giấy (đối diện học viện báo chí và tuyên truyền)','5','OUOA','Số 2 ngõ 23, Đường Xuân Thủy, Phường Dịch Vọng Hậu, Cầu Giấy, Hà Nội','7a0f0e7f-0c64-456a-a64b-ad4dece96c16',NULL,NULL,'NDOE','code123','\"Cho thuê phòng.\"','checked','1','7','7',4500000,NULL,'Wifi|Nóng Lạnh|Điều Hòa','2023-12-05 11:49:21', '2023-12-05 11:50:30'),
('8','cho thuê phòng trọ sinh viên, hộ gia đình tại Doãn Kế Thiện, quận Cầu Giấy, ngõ ô tô','4','OUOA','Ngõ 56, Phố Doãn Kế Thiện, Phường Mai Dịch, Cầu Giấy, Hà Nội','7a0f0e7f-0c64-456a-a64b-ad4dece96c16',NULL,NULL,'NDOE','code 1234','\"Cho thuê phòng trọ cho sinh viên, nhà ở cho hộ gia đình. Nhà 4 tầng, 1 tum.\"','checked','1','8','8',4000000,NULL,'Wifi|Nóng Lạnh|Điều Hòa','2023-12-05 11:49:21', '2023-12-05 11:50:30'),
('9','Chính chủ cho thuê phòng trọ 343 Đội Cấn','5','OARN','343, Đường Đội Cấn, Phường Liễu Giai, Ba Đình, Hà Nội','98b0fed8-b3b0-4f05-a16b-2680d6199c17',NULL,NULL,'NDOE','code123',' \"Phòng ở ngõ 343 Đội Cấn, ô tô cách nhà 100m.\"','checked','1','9','9',2400000,NULL,'Wifi|Nóng Lạnh|Điều Hòa','2023-12-05 11:49:21', '2023-12-05 11:50:30'),
('10','Cho thuê phòng trọ diện tích 18 m2','4','OUAB','Số 4 ngách 68/81 ngõ 173 Đường Hoàng Hoa Thám, Phường Ngọc Hà, Ba Đình, Hà Nội','38c74aba-582f-4578-acb5-140450755d47',NULL,NULL,'NDOE','code123','\"Cho thuê phòng trọ diện tích 18 m², trên tầng 2, cầu thang rộng rãi, nhà vệ sinh khép kín, điện nước công tơ riêng. \"','checked','1','10','10',1900000,NULL,'Wifi|Nóng Lạnh|Điều Hòa','2023-12-05 11:49:21', '2023-12-05 11:50:30');
-- --------------------------------------------------------

--
-- Table structure for table `Prices`
--

CREATE TABLE `Prices` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Provinces`
--

CREATE TABLE `Provinces` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Provinces`
--

INSERT INTO `Provinces` (`id`, `code`, `value`, `createdAt`, `updatedAt`) VALUES
(1, 'NDOE', 'Hà Nội', '2023-06-07 14:20:25', '2023-06-07 14:20:25');

-- --------------------------------------------------------

--
-- Table structure for table `Roles`
--

CREATE TABLE `Roles` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `SequelizeMeta`
--

CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SequelizeMeta`
--

INSERT INTO `SequelizeMeta` (`name`) VALUES
('create-area.js'),
('create-attribute.js'),
('create-category.js'),
('create-feedback.js'),
('create-image.js'),
('create-label.js'),
('create-overview.js'),
('create-position.js'),
('create-post.js'),
('create-postLike.js'),
('create-price.js'),
('create-province.js'),
('create-role.js'),
('create-user.js');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `zalo` varchar(255) DEFAULT NULL,
  `fbUrl` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `roleCode` varchar(255) DEFAULT 'R2',
  `positionCode` varchar(255) DEFAULT 'P1',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `name`, `password`, `phone`, `zalo`, `fbUrl`, `avatar`, `roleCode`, `positionCode`, `createdAt`, `updatedAt`) VALUES
('32e6e1b1-893c-4c12-a4b2-6ea4c78ab8ea', 'Admin', '$2a$12$5aenhykmyMuVOCIykKiqxufCLNc/00EYF8THCd368SIK4osCPPCzq', '0123456789', NULL, NULL, NULL, 'R1', 'P2', '2023-06-07 14:23:47', '2023-12-18 19:48:54'),
('457fb5e0-ac7c-43ec-ace1-74a4e8e7cd12', 'Datist Pham', '$2a$12$KCfQNZMtCaAQqp48XsM8Ve8XHBHDMU7PKqwEysV/9ht7KnbJnCJIi', '0384294882', '01832983912', 'https://facebook.com/123', 'https://res.cloudinary.com/djjv3stcm/image/upload/v1686151132/phongtro123/zjxwuawqc4v4l4i9phgp.png', 'R2', 'P1', '2023-06-07 14:17:34', '2023-06-07 15:22:50'),
('55659d58-38f8-40e3-97ea-c8a62ac58ee3', 'Datist Pham', '$2a$12$plVvc52Z7NRfC3q1wP53guiw4lQQGEPZqpfzsE/d6H7bsN/oY0UgW', '0388029483', NULL, NULL, NULL, 'R1', 'P1', '2023-06-03 12:06:39', '2023-12-07 02:57:33'),
('6cfe9b27-63c1-4c89-a8d4-cbd8a35b9f62', 'Dat', '$2a$12$iOBUCcfYCZxJRnR.7Qi6m.cpDTqGHKyfy6VI0gPFbjx2K7FqFI1s.', '0123456780', '', '', 'https://res.cloudinary.com/djjv3stcm/image/upload/v1701776973/phongtro123/ropmifxvgol6n6qqh5ms.jpg', 'R2', 'P1', '2023-12-05 11:48:29', '2023-12-05 11:49:34'),
('dd10d060-c0c0-4482-b789-6457a7dcdcd9', 'Datist Pham', '$2a$12$wHNkMlDwLgT0xxa2.h.K6.IVRwwy31Sybg8ld6NxLPxwMlsWcOOay', '0383491381', '', '', 'https://res.cloudinary.com/djjv3stcm/image/upload/v1702216065/phongtro123/kzd4ga7k32ohrdhp33ny.svg', 'R2', 'P1', '2023-12-10 13:46:52', '2023-12-10 13:47:53'),
('1','Trần Văn A','$2y$10$OzIMvmetGivhv4ouMemUyueyMeX4.QDUcZ5izNK282TBRO0D4zV7y','982691222','982691222','https://www.facebook.com/profile.php?id=100090749167007',NULL,'R2','P1', '2023-12-10 13:46:52', '2023-12-10 13:47:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Areas`
--
ALTER TABLE `Areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Attributes`
--
ALTER TABLE `Attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Feedbacks`
--
ALTER TABLE `Feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Images`
--
ALTER TABLE `Images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Labels`
--
ALTER TABLE `Labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Overviews`
--
ALTER TABLE `Overviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Positions`
--
ALTER TABLE `Positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `PostLikes`
--
ALTER TABLE `PostLikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Posts`
--
ALTER TABLE `Posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Prices`
--
ALTER TABLE `Prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Provinces`
--
ALTER TABLE `Provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Roles`
--
ALTER TABLE `Roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SequelizeMeta`
--
ALTER TABLE `SequelizeMeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Areas`
--
ALTER TABLE `Areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Categories`
--
ALTER TABLE `Categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Feedbacks`
--
ALTER TABLE `Feedbacks`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `Labels`
--
ALTER TABLE `Labels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `Positions`
--
ALTER TABLE `Positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PostLikes`
--
ALTER TABLE `PostLikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Prices`
--
ALTER TABLE `Prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Provinces`
--
ALTER TABLE `Provinces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Roles`
--
ALTER TABLE `Roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
