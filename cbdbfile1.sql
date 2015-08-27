-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.26-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for cbdb
CREATE DATABASE IF NOT EXISTS `cbdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cbdb`;


-- Dumping structure for table cbdb.cab_master
CREATE TABLE IF NOT EXISTS `cab_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cab_no` varchar(50) DEFAULT NULL,
  `driver_name` varchar(50) DEFAULT NULL,
  `seats` int(11) DEFAULT NULL,
  `isavailable` bit(1) DEFAULT NULL,
  `isready` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table cbdb.cab_master: ~0 rows (approximately)
/*!40000 ALTER TABLE `cab_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `cab_master` ENABLE KEYS */;


-- Dumping structure for table cbdb.route_master
CREATE TABLE IF NOT EXISTS `route_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route_name` varchar(50) DEFAULT NULL,
  `way_points` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table cbdb.route_master: ~3 rows (approximately)
/*!40000 ALTER TABLE `route_master` DISABLE KEYS */;
INSERT INTO `route_master` (`id`, `route_name`, `way_points`) VALUES
	(1, 'Avadi', '11'),
	(2, 'Perambur', '12'),
	(3, NULL, NULL);
/*!40000 ALTER TABLE `route_master` ENABLE KEYS */;


-- Dumping structure for table cbdb.tbl_users
CREATE TABLE IF NOT EXISTS `tbl_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `emer_contact` varchar(50) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `vzid` varchar(50) DEFAULT NULL,
  `manager_name` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `mobile_no` varchar(10) DEFAULT NULL,
  `device_id` varchar(1024) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table cbdb.tbl_users: ~2 rows (approximately)
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` (`user_id`, `username`, `emer_contact`, `gender`, `vzid`, `manager_name`, `address`, `location`, `mobile_no`, `device_id`, `lat`, `longitude`) VALUES
	(1, 'Ramkumar,Narasimhachary', '9444223835', 'M', 'v907066', 'Feroz', '84,chithirai street,virugambakkam', 'Citius', '9444223835', NULL, NULL, NULL),
	(2, 'Suresh,Anatharaj', '9884867271', 'M', 'v541081', 'Jaffar,Sadiq', 'Avadi', 'Citius', '9884867271', NULL, NULL, NULL);
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;


-- Dumping structure for table cbdb.trip_details
CREATE TABLE IF NOT EXISTS `trip_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cab_id` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `route_id` int(11) DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table cbdb.trip_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `trip_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `trip_details` ENABLE KEYS */;


-- Dumping structure for table cbdb.trip_resource
CREATE TABLE IF NOT EXISTS `trip_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trip_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `feedback` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table cbdb.trip_resource: ~0 rows (approximately)
/*!40000 ALTER TABLE `trip_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `trip_resource` ENABLE KEYS */;


-- Dumping structure for table cbdb.user_request
CREATE TABLE IF NOT EXISTS `user_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `trip_avail` bit(1) DEFAULT NULL,
  `booking_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table cbdb.user_request: ~3 rows (approximately)
/*!40000 ALTER TABLE `user_request` DISABLE KEYS */;
INSERT INTO `user_request` (`id`, `user_id`, `trip_avail`, `booking_time`) VALUES
	(1, 1, NULL, '2015-08-27 09:14:24'),
	(2, 1, NULL, '2015-08-27 09:16:21'),
	(3, 2, NULL, '2015-08-27 09:18:30');
/*!40000 ALTER TABLE `user_request` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
