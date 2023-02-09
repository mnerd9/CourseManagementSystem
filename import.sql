-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.6.11-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for cms
CREATE DATABASE IF NOT EXISTS `cms` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci */;
USE `cms`;

-- Dumping structure for table cms.admins
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT 'none',
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `updatedOn` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table cms.admins: ~1 rows (approximately)
INSERT INTO `admins` (`id`, `fullname`, `gender`, `phone`, `address`, `username`, `email`, `password`, `updatedOn`) VALUES
	(1, 'manoj', 'Male', '9841147588', 'Kalanki, Kathmandu', 'manoj', 'manoj', '123YouGoFree@', '2023-02-09 17:47:11');

-- Dumping structure for table cms.courses
CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT 'none',
  `year` int(11) DEFAULT 1,
  `isActive` int(11) DEFAULT 0,
  `updatedOn` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table cms.courses: ~2 rows (approximately)
INSERT INTO `courses` (`id`, `name`, `year`, `isActive`, `updatedOn`) VALUES
	(1, 'IBM', 1, 1, '2023-02-09 04:13:35'),
	(2, 'BIT', 1, 1, '2023-02-09 17:43:50');

-- Dumping structure for table cms.enrolled_module_instructors
CREATE TABLE IF NOT EXISTS `enrolled_module_instructors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instructors` varchar(50) DEFAULT 'none',
  `phone` varchar(50) DEFAULT 'none',
  `address` varchar(50) DEFAULT 'none',
  `email` varchar(50) DEFAULT 'none',
  `semester` varchar(50) DEFAULT 'none',
  `level` varchar(50) DEFAULT 'none',
  `module` varchar(50) DEFAULT 'none',
  `course` varchar(50) DEFAULT 'none',
  `updatedOn` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table cms.enrolled_module_instructors: ~1 rows (approximately)
INSERT INTO `enrolled_module_instructors` (`id`, `instructors`, `phone`, `address`, `email`, `semester`, `level`, `module`, `course`, `updatedOn`) VALUES
	(1, 'Test', 'none', 'none', 'none', 'Semester 1', 'Level 4', 'oop', 'IBM', '2023-02-09 18:19:53');

-- Dumping structure for table cms.enrolled_module_students
CREATE TABLE IF NOT EXISTS `enrolled_module_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student` varchar(50) DEFAULT 'none',
  `phone` varchar(50) DEFAULT 'none',
  `address` varchar(50) DEFAULT 'none',
  `email` varchar(50) DEFAULT 'none',
  `semester` varchar(50) DEFAULT 'none',
  `level` varchar(50) DEFAULT 'none',
  `module1` varchar(50) DEFAULT 'none',
  `module2` varchar(50) DEFAULT 'none',
  `module3` varchar(50) DEFAULT 'none',
  `module4` varchar(50) DEFAULT 'none',
  `module5` varchar(50) DEFAULT 'none',
  `module6` varchar(50) DEFAULT 'none',
  `instructors` varchar(50) DEFAULT 'none',
  `course` varchar(50) DEFAULT 'none',
  `updatedOn` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table cms.enrolled_module_students: ~2 rows (approximately)
INSERT INTO `enrolled_module_students` (`id`, `student`, `phone`, `address`, `email`, `semester`, `level`, `module1`, `module2`, `module3`, `module4`, `module5`, `module6`, `instructors`, `course`, `updatedOn`) VALUES
	(1, 'manoj kumar karki', '9841147542', 'kalanki', 'manoj3@heraldcollege.edu.np', 'Semester 1', 'Level 4', 'oop', 'oop2', 'oop3', 'oop4', 'none', 'none', 'none', 'IBM', '2023-02-09 18:18:38'),
	(2, 'Madan Gay Khana;', '9841147542', 'kalanki', 'madane@heraldcollege.edu.np', 'Semester 1', 'Level 4', 'oop', 'oop2', 'oop3', 'oop4', 'none', 'none', 'none', 'IBM', '2023-02-09 18:18:38');

-- Dumping structure for table cms.instructors
CREATE TABLE IF NOT EXISTS `instructors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT 'none',
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `updatedOn` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table cms.instructors: ~2 rows (approximately)
INSERT INTO `instructors` (`id`, `fullname`, `gender`, `phone`, `address`, `username`, `email`, `password`, `updatedOn`) VALUES
	(1, 'manoj', 'Male', '1234567890', 'kalanki', 'man', 'manoj@heraldcollege.edu.np', '123YouGoFree@', '2023-02-09 17:46:45'),
	(2, 'Test', 'Male', '1234567890', 'kalanki', 'te', 'te@heraldcollege.edu.np', '123YouGoFree@', '2023-02-09 17:46:45');

-- Dumping structure for table cms.logs
CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT 'none',
  `type` varchar(50) DEFAULT 'none',
  `updatedOn` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table cms.logs: ~126 rows (approximately)
INSERT INTO `logs` (`id`, `description`, `type`, `updatedOn`) VALUES
	(1, 'manoj has logged in!', 'admin', '2023-02-08 16:34:02'),
	(2, 'manoj has logged in!', 'admin', '2023-02-08 16:54:35'),
	(3, 'manoj99 has logged in!', 'student', '2023-02-09 00:08:27'),
	(4, 'manoj99 has logged in!', 'student', '2023-02-09 00:32:09'),
	(5, 'manoj has logged in!', 'admin', '2023-02-09 03:03:55'),
	(6, 'manoj has logged out!', 'admin', '2023-02-09 03:04:08'),
	(7, 'manojasd has logged in!', 'student', '2023-02-09 04:12:29'),
	(8, 'manojasd has logged in!', 'student', '2023-02-09 04:13:47'),
	(9, 'manojasd has logged in!', 'student', '2023-02-09 04:14:26'),
	(10, 'manojasd has logged in!', 'student', '2023-02-09 04:16:02'),
	(11, 'manojasd has logged in!', 'student', '2023-02-09 04:20:39'),
	(12, 'manojasd has logged in!', 'student', '2023-02-09 04:33:01'),
	(13, 'manojasd has logged in!', 'student', '2023-02-09 04:34:44'),
	(14, 'manojasd has logged in!', 'student', '2023-02-09 04:35:31'),
	(15, 'manojasd has logged in!', 'student', '2023-02-09 04:39:17'),
	(16, 'manojasd has logged in!', 'student', '2023-02-09 04:42:13'),
	(17, 'manojasd has logged in!', 'student', '2023-02-09 04:43:26'),
	(18, 'manojasd has logged in!', 'student', '2023-02-09 04:47:41'),
	(19, 'manojasd has logged in!', 'student', '2023-02-09 04:49:24'),
	(20, 'manojasd has logged in!', 'student', '2023-02-09 04:50:05'),
	(21, 'manojasd has logged in!', 'student', '2023-02-09 04:52:04'),
	(22, 'manojasd has logged in!', 'student', '2023-02-09 04:54:09'),
	(23, 'manojasd has logged in!', 'student', '2023-02-09 05:46:27'),
	(24, 'manojasd has logged in!', 'student', '2023-02-09 08:23:29'),
	(25, 'manojasd has logged in!', 'student', '2023-02-09 08:26:12'),
	(26, 'manojasd has logged in!', 'student', '2023-02-09 08:41:02'),
	(27, 'manojasd has logged in!', 'student', '2023-02-09 08:41:38'),
	(28, 'manojasd has logged in!', 'student', '2023-02-09 08:43:59'),
	(29, 'manojasd has logged in!', 'student', '2023-02-09 08:45:02'),
	(30, 'manojasd has logged in!', 'student', '2023-02-09 08:47:47'),
	(31, 'manojasd has logged in!', 'student', '2023-02-09 08:51:47'),
	(32, 'manojasd has logged in!', 'student', '2023-02-09 08:52:50'),
	(33, 'manojasd has logged in!', 'student', '2023-02-09 08:54:32'),
	(34, 'manojasd has logged in!', 'student', '2023-02-09 08:55:27'),
	(35, 'manojasd has logged in!', 'student', '2023-02-09 09:01:08'),
	(36, 'manojasd has logged in!', 'student', '2023-02-09 09:01:54'),
	(37, 'manojasd has logged in!', 'student', '2023-02-09 09:02:20'),
	(38, 'manojasd has logged in!', 'student', '2023-02-09 09:08:27'),
	(39, 'manojasd has logged in!', 'student', '2023-02-09 09:09:09'),
	(40, 'manojasd has logged in!', 'student', '2023-02-09 09:10:25'),
	(41, 'manojasd has logged in!', 'student', '2023-02-09 09:11:15'),
	(42, 'manojasd has logged in!', 'student', '2023-02-09 09:12:02'),
	(43, 'manojasd has logged in!', 'student', '2023-02-09 09:12:52'),
	(44, 'manojasd has logged in!', 'student', '2023-02-09 09:22:21'),
	(45, 'manojasd has logged in!', 'student', '2023-02-09 10:41:19'),
	(46, 'manojasd has logged in!', 'student', '2023-02-09 10:41:51'),
	(47, 'manojasd has logged in!', 'student', '2023-02-09 10:42:58'),
	(48, 'manojasd has logged in!', 'student', '2023-02-09 10:43:53'),
	(49, 'manojasd has logged in!', 'student', '2023-02-09 10:44:31'),
	(50, 'manojasd has logged in!', 'student', '2023-02-09 10:58:00'),
	(51, 'manojasd has logged in!', 'student', '2023-02-09 10:58:42'),
	(52, 'manojasd has logged in!', 'student', '2023-02-09 11:09:29'),
	(53, 'manojasd has logged in!', 'student', '2023-02-09 11:31:16'),
	(54, 'manojasd has logged in!', 'student', '2023-02-09 11:31:42'),
	(55, 'manojasd has logged in!', 'student', '2023-02-09 11:32:04'),
	(56, 'manojasd has logged in!', 'student', '2023-02-09 11:33:36'),
	(57, 'manojasd has logged in!', 'student', '2023-02-09 11:33:55'),
	(58, 'manojasd has logged in!', 'student', '2023-02-09 11:35:10'),
	(59, 'manojasd has logged in!', 'student', '2023-02-09 11:36:42'),
	(60, 'manojasd has logged in!', 'student', '2023-02-09 11:37:59'),
	(61, 'manojasd has logged in!', 'student', '2023-02-09 11:38:35'),
	(62, 'manojasd has logged in!', 'student', '2023-02-09 11:53:36'),
	(63, 'manojasd has logged in!', 'student', '2023-02-09 11:54:23'),
	(64, 'manojasd has logged in!', 'student', '2023-02-09 11:54:46'),
	(65, 'shithead has logged in!', 'instructor', '2023-02-09 12:11:17'),
	(66, 'shithead has logged in!', 'instructor', '2023-02-09 12:12:10'),
	(67, 'shithead has logged in!', 'instructor', '2023-02-09 12:12:49'),
	(68, 'shithead has logged in!', 'instructor', '2023-02-09 12:13:38'),
	(69, 'shithead has logged in!', 'instructor', '2023-02-09 12:14:28'),
	(70, 'shithead has logged in!', 'instructor', '2023-02-09 12:15:44'),
	(71, 'shithead has logged in!', 'instructor', '2023-02-09 12:16:15'),
	(72, 'shithead has logged in!', 'instructor', '2023-02-09 12:17:09'),
	(73, 'shithead has logged in!', 'instructor', '2023-02-09 12:17:28'),
	(74, 'shithead has logged in!', 'instructor', '2023-02-09 12:26:54'),
	(75, 'shithead has logged in!', 'instructor', '2023-02-09 12:28:15'),
	(76, 'shithead has logged in!', 'instructor', '2023-02-09 12:29:21'),
	(77, 'manojasd has logged in!', 'student', '2023-02-09 12:36:15'),
	(78, 'shithead has logged in!', 'instructor', '2023-02-09 12:37:12'),
	(79, 'manoj has logged in!', 'admin', '2023-02-09 12:38:18'),
	(80, 'shithead has logged in!', 'instructor', '2023-02-09 12:44:11'),
	(81, 'shithead has logged in!', 'instructor', '2023-02-09 12:49:08'),
	(82, 'shithead has logged in!', 'instructor', '2023-02-09 12:50:15'),
	(83, 'shithead has logged in!', 'instructor', '2023-02-09 13:08:57'),
	(84, 'shithead has logged in!', 'instructor', '2023-02-09 13:09:29'),
	(85, 'shithead has logged in!', 'instructor', '2023-02-09 13:10:23'),
	(86, 'shithead has logged in!', 'instructor', '2023-02-09 13:11:08'),
	(87, 'shithead has logged in!', 'instructor', '2023-02-09 13:11:32'),
	(88, 'shithead has logged in!', 'instructor', '2023-02-09 13:21:42'),
	(89, 'shithead has logged in!', 'instructor', '2023-02-09 13:27:57'),
	(90, 'shithead has logged in!', 'instructor', '2023-02-09 13:35:40'),
	(91, 'shithead has logged in!', 'instructor', '2023-02-09 13:36:10'),
	(92, 'shithead has logged in!', 'instructor', '2023-02-09 13:36:54'),
	(93, 'shithead has logged in!', 'instructor', '2023-02-09 13:37:57'),
	(94, 'shithead has logged in!', 'instructor', '2023-02-09 13:38:57'),
	(95, 'shithead has logged in!', 'instructor', '2023-02-09 13:41:22'),
	(96, 'shithead has logged in!', 'instructor', '2023-02-09 13:42:10'),
	(97, 'shithead has logged in!', 'instructor', '2023-02-09 13:44:05'),
	(98, 'shithead has logged in!', 'instructor', '2023-02-09 13:45:22'),
	(99, 'shithead has logged in!', 'instructor', '2023-02-09 13:45:59'),
	(100, 'shithead has logged in!', 'instructor', '2023-02-09 13:47:07'),
	(101, 'shithead has logged in!', 'instructor', '2023-02-09 13:47:30'),
	(102, 'shithead has logged in!', 'instructor', '2023-02-09 13:48:26'),
	(103, 'shithead has logged in!', 'instructor', '2023-02-09 13:48:52'),
	(104, 'shithead has logged in!', 'instructor', '2023-02-09 13:49:22'),
	(105, 'shithead has logged in!', 'instructor', '2023-02-09 13:50:38'),
	(106, 'shithead has logged in!', 'instructor', '2023-02-09 13:50:55'),
	(107, 'shithead has logged in!', 'instructor', '2023-02-09 13:51:51'),
	(108, 'shithead has logged in!', 'instructor', '2023-02-09 13:52:11'),
	(109, 'shithead has logged in!', 'instructor', '2023-02-09 13:53:08'),
	(110, 'shithead has logged in!', 'instructor', '2023-02-09 13:53:42'),
	(111, 'shithead has logged in!', 'instructor', '2023-02-09 13:54:23'),
	(112, 'shithead has logged in!', 'instructor', '2023-02-09 13:54:57'),
	(113, 'shithead has logged in!', 'instructor', '2023-02-09 13:56:45'),
	(114, 'shithead has logged in!', 'instructor', '2023-02-09 13:58:14'),
	(115, 'shithead has logged in!', 'instructor', '2023-02-09 14:05:46'),
	(116, 'shithead has logged in!', 'instructor', '2023-02-09 14:06:41'),
	(117, 'shithead has logged in!', 'instructor', '2023-02-09 14:07:04'),
	(118, 'shithead has logged in!', 'instructor', '2023-02-09 14:07:41'),
	(119, 'shithead has logged in!', 'instructor', '2023-02-09 14:08:41'),
	(120, 'manojasd has logged in!', 'student', '2023-02-09 14:27:59'),
	(121, 'manoj has logged in!', 'admin', '2023-02-09 14:28:40'),
	(122, 'manojasd has logged in!', 'student', '2023-02-09 15:04:00'),
	(123, 'manoj has logged in!', 'admin', '2023-02-09 17:42:31'),
	(124, 'manoj has logged out!', 'admin', '2023-02-09 17:42:36'),
	(125, 'manojasd has logged in!', 'student', '2023-02-09 17:43:03'),
	(126, 'manoj has logged in!', 'admin', '2023-02-09 17:43:44'),
	(127, 'manojasd has logged in!', 'student', '2023-02-09 18:22:16');

-- Dumping structure for table cms.modules
CREATE TABLE IF NOT EXISTS `modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course` varchar(50) DEFAULT '0',
  `semester` varchar(50) DEFAULT '0',
  `level` varchar(50) DEFAULT '0',
  `module1` varchar(50) DEFAULT '0',
  `module2` varchar(50) DEFAULT '0',
  `module3` varchar(50) DEFAULT '0',
  `module4` varchar(50) DEFAULT '0',
  `module5` varchar(50) DEFAULT '0',
  `module6` varchar(50) DEFAULT '0',
  `updatedOn` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table cms.modules: ~5 rows (approximately)
INSERT INTO `modules` (`id`, `course`, `semester`, `level`, `module1`, `module2`, `module3`, `module4`, `module5`, `module6`, `updatedOn`) VALUES
	(3, 'IBM', 'Semester 1', 'Level 4', 'oop', 'oop2', 'oop3', 'oop4', 'none', 'none', '2023-02-09 18:17:44'),
	(4, 'BIT', 'Semester 2', 'Level 4', 'BIT1', 'BIT2', 'BIT3', 'BIT14', 'none', 'none', '2023-02-09 18:17:44'),
	(5, 'BIT', 'Semester 3', 'Level 4', 'BITA1', 'BITA2', 'BITA3', 'BITA4', 'none', 'none', '2023-02-09 18:17:44'),
	(6, 'BIT', 'Semester 4', 'Level 4', 'BITT1', 'BITT2', 'BITT3', 'BITT4', 'none', 'none', '2023-02-09 18:17:44'),
	(7, 'BIT', 'Semester 1', 'Level 5', 'BIT51', 'BIT52', 'BIT53', 'BIT54', 'none', 'none', '2023-02-09 18:17:44');

-- Dumping structure for table cms.result
CREATE TABLE IF NOT EXISTS `result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) DEFAULT NULL,
  `instructor` varchar(50) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `semester` varchar(50) DEFAULT NULL,
  `level` varchar(50) DEFAULT NULL,
  `marks` varchar(50) DEFAULT NULL,
  `updatedOn` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table cms.result: ~2 rows (approximately)
INSERT INTO `result` (`id`, `student`, `email`, `instructor`, `module`, `semester`, `level`, `marks`, `updatedOn`) VALUES
	(1, 'manoj kumar karki', 'manoj3@heraldcollege.edu.np', 'shit head', 'oop', 'Semester 1', 'Level 4', '40', '2023-02-09 18:18:04'),
	(2, 'manoj', 'firstname@heraldcollege.edu.np', 'shit head', 'oop', 'Semester 1', 'Level 4', '40', '2023-02-09 18:18:04');

-- Dumping structure for table cms.students
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT 'none',
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `course` varchar(50) DEFAULT NULL,
  `level` varchar(50) DEFAULT 'Level 4',
  `semester` varchar(50) DEFAULT 'Semester 1',
  `updatedOn` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table cms.students: ~3 rows (approximately)
INSERT INTO `students` (`id`, `fullname`, `gender`, `phone`, `address`, `username`, `email`, `password`, `course`, `level`, `semester`, `updatedOn`) VALUES
	(2, 'manoj', 'Male', '9841147588', 'kalanki', 'manoj99', 'manoj@heraldcollege.edu.np', '123YouGoFree@', 'BIT', 'Level 4', 'Semester 1', '2023-02-09 17:47:18'),
	(3, 'manoj karki', 'Male', '9841147584', 'kalanki', 'manoj9ae', 'manoj2@heraldcollege.edu.np', '123YouGoFree@', 'BIT', 'Level 4', 'Semester 1', '2023-02-09 17:47:24'),
	(4, 'manoj kumar karki', 'Male', '9841147542', 'kalanki', 'manojasd', 'manoj3@heraldcollege.edu.np', '123YouGoFree@', 'IBM', 'Level 4', 'Semester 1', '2023-02-09 17:47:26');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
