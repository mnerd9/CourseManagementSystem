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

-- Dumping data for table cms.admins: ~0 rows (approximately)
INSERT INTO `admins` (`id`, `fullname`, `gender`, `phone`, `address`, `username`, `email`, `password`, `updatedOn`) VALUES
	(1, 'manoj', 'Male', '9841147588', 'Kalanki, Kathmandu', 'manoj', 'manoj', '123', '2023-02-03 11:46:29');

-- Dumping structure for table cms.courses
CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT 'none',
  `year` int(11) DEFAULT 1,
  `isActive` int(11) DEFAULT 0,
  `updatedOn` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table cms.courses: ~1 rows (approximately)
INSERT INTO `courses` (`id`, `name`, `year`, `isActive`, `updatedOn`) VALUES
	(1, 'IBM', 1, 1, '2023-02-09 04:13:35');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table cms.enrolled_module_instructors: ~0 rows (approximately)

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table cms.instructors: ~0 rows (approximately)

-- Dumping structure for table cms.logs
CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT 'none',
  `type` varchar(50) DEFAULT 'none',
  `updatedOn` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table cms.logs: ~22 rows (approximately)
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
	(22, 'manojasd has logged in!', 'student', '2023-02-09 04:54:09');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Dumping data for table cms.modules: ~1 rows (approximately)
INSERT INTO `modules` (`id`, `course`, `semester`, `level`, `module1`, `module2`, `module3`, `module4`, `module5`, `module6`) VALUES
	(3, 'IBM', 'Semester 1', 'Level 4', 'oop', 'oop2', 'oop3', 'oop4', 'none', 'none');

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
	(2, 'manoj', 'Male', '9841147588', 'kalanki', 'manoj99', 'manoj@heraldcollege.edu.np', 'Manoj253042@#', 'BIT', 'Level 4', 'Semester 1', '2023-02-09 04:00:39'),
	(3, 'manoj karki', 'Male', '9841147584', 'kalanki', 'manoj9ae', 'manoj2@heraldcollege.edu.np', 'Manoj253042@#', 'BIT', 'Level 4', 'Semester 1', '2023-02-09 04:00:40'),
	(4, 'manoj kumar karki', 'Male', '9841147542', 'kalanki', 'manojasd', 'manoj3@heraldcollege.edu.np', 'Manoj253042@#', 'IBM', 'Level 6', 'Semester 1', '2023-02-09 04:49:41');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
