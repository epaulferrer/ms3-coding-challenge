-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.25 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for ms3_contacts
CREATE DATABASE IF NOT EXISTS `ms3_contacts` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ms3_contacts`;

-- Dumping structure for table ms3_contacts.addresses
CREATE TABLE IF NOT EXISTS `addresses` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `identification_id` bigint NOT NULL,
  `number` bigint NOT NULL,
  `street` varchar(50) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(49) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `zipcode` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `identification_id` (`identification_id`),
  CONSTRAINT `fk_addr_identification_id` FOREIGN KEY (`identification_id`) REFERENCES `identifications` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ms3_contacts.addresses: ~3 rows (approximately)
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` (`id`, `identification_id`, `number`, `street`, `unit`, `city`, `state`, `zipcode`, `created`, `updated`, `type`) VALUES
	(1, 1, 1234, 'Sampaguita', '1A', 'Mabalacat', 'Angeles', '3432B', '2021-07-21 21:32:56', '2021-07-21 21:32:56', 'Office'),
	(2, 1, 1234, 'Wall', '1A', 'Capa - updateds', 'Tarlac', '2315', '2021-07-21 21:32:56', '2021-07-21 21:32:59', 'Home'),
	(5, 1, 1234, 'Wall', '1A', 'Capas', 'Tarlac', '2315', '2021-07-21 21:33:02', '2021-07-21 21:33:02', 'Home');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;

-- Dumping structure for table ms3_contacts.communications
CREATE TABLE IF NOT EXISTS `communications` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `identification_id` bigint NOT NULL,
  `value` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `preferred` tinyint NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `identification_id` (`identification_id`) USING BTREE,
  CONSTRAINT `fk_comm_identification_id` FOREIGN KEY (`identification_id`) REFERENCES `identifications` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ms3_contacts.communications: ~3 rows (approximately)
/*!40000 ALTER TABLE `communications` DISABLE KEYS */;
INSERT INTO `communications` (`id`, `identification_id`, `value`, `preferred`, `created`, `updated`, `type`) VALUES
	(1, 1, 'ernestpaulferrer@gmail.com', 0, '2021-07-21 21:32:56', '2021-07-21 21:32:56', 'EMail'),
	(2, 1, 'ernestpaulferrer@gmail.com', 1, '2021-07-21 21:32:56', '2021-07-21 21:32:59', 'EMail'),
	(5, 1, 'ernestpaulferrer@gmail.com', 0, '2021-07-21 21:33:02', '2021-07-21 21:33:02', 'EMail');
/*!40000 ALTER TABLE `communications` ENABLE KEYS */;

-- Dumping structure for table ms3_contacts.identifications
CREATE TABLE IF NOT EXISTS `identifications` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table ms3_contacts.identifications: ~2 rows (approximately)
/*!40000 ALTER TABLE `identifications` DISABLE KEYS */;
INSERT INTO `identifications` (`id`, `first_name`, `last_name`, `date_of_birth`, `gender`, `title`, `created`, `updated`) VALUES
	(1, 'Ernest Paul', 'Ferrer', '1991-08-01', 'M', 'Mulesoft Integration Developer', '2021-07-21 21:32:56', '2021-07-21 21:32:59'),
	(3, 'Ernest Paul', 'Ferrer', '1991-08-01', 'M', 'Mulesoft Integration Developer', '2021-07-21 21:33:02', '2021-07-21 21:33:02');
/*!40000 ALTER TABLE `identifications` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
