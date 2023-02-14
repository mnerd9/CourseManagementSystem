CREATE DATABASE IF NOT EXISTS `cms`
USE `cms`;

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
);

CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT 'none',
  `isActive` int(11) DEFAULT 0,
  `updatedOn` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
);

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
);

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
);

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
);

CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT 'none',
  `type` varchar(50) DEFAULT 'none',
  `updatedOn` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
);

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
);

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
);

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
);