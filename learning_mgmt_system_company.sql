CREATE DATABASE  IF NOT EXISTS `learning_mgmt_system` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `learning_mgmt_system`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: learning_mgmt_system
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `CreatorStamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatorUser` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Quality Kiosk','419A, MBP Rd, Kopar Khairane',' Navi Mumbai','Active','2023-12-10 10:14:13',1),(2,'ABC Software Innovators','456 Innovation Avenue','Navi Mumbai','Active','2023-12-10 10:14:13',1),(3,'TechWise Solutions','789 Testing Lane','Bangalore','Active','2023-12-10 10:14:13',1),(4,'Pioneer IT Services','101 IT Park','Pune','Active','2023-12-10 10:14:13',1),(5,'Delta Software Solutions','234 Development Road','Delhi','Active','2023-12-10 10:14:13',1),(6,'Infinite Coders','567 Coding Street','Noida','Active','2023-12-10 10:14:13',1),(7,'Binary Systems','890 Binary Lane','Mumbai','Active','2023-12-10 10:14:13',1),(8,'TechVista Innovations','123 Tech Street','Navi Mumbai','Active','2023-12-10 10:14:13',1),(9,'Agile Software Solutions','456 Agile Avenue','Bangalore','Active','2023-12-10 10:14:13',1),(10,'DevGenius Technologies','789 Dev Lane','Pune','Active','2023-12-10 10:14:13',1),(11,'Innovate IT Services','101 Innovation Park','Delhi','Active','2023-12-10 10:14:13',1),(12,'Nextron Labs','234 Nextron Road','Noida','Active','2023-12-10 10:14:13',1),(13,'CodeCrafters India','567 Coding Street','Mumbai','Active','2023-12-10 10:14:13',1),(14,'TechMasters Solutions','890 Tech Lane','Navi Mumbai','Active','2023-12-10 10:14:13',1),(15,'TestGenius Systems','123 Testing Street','Bangalore','Active','2023-12-10 10:14:13',1);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-11 13:37:27
