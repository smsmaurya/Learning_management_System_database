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
-- Table structure for table `mentor`
--

DROP TABLE IF EXISTS `mentor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mentor` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `MentorType` varchar(50) DEFAULT NULL,
  `LabId` int DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `CreatorStamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatorUser` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `LabId` (`LabId`),
  CONSTRAINT `mentor_ibfk_1` FOREIGN KEY (`LabId`) REFERENCES `lab` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentor`
--

LOCK TABLES `mentor` WRITE;
/*!40000 ALTER TABLE `mentor` DISABLE KEYS */;
INSERT INTO `mentor` VALUES (1,'Sunil','Lead',1,'Active','2023-12-10 17:26:50',1),(2,'Venkat','Ideation',1,'Active','2023-12-10 17:26:50',1),(3,'Shahzad','Ideation',1,'Active','2023-12-10 17:26:50',1),(4,'Aishwarya','Buddy',1,'Inactive','2023-12-10 17:26:50',1),(5,'Gunjan','Lead',1,'Active','2023-12-10 17:26:50',1),(6,'Nagendra','Ideation',1,'Active','2023-12-10 17:26:50',1),(7,'Roshani','practice_head',1,'Active','2023-12-10 17:26:50',1),(8,'Sudhakar','Lead',1,'Active','2023-12-10 17:26:50',1),(9,'Rajeev','Lead',2,'Active','2023-12-10 17:26:50',1),(10,'Nagaraju','Lead',3,'Active','2023-12-10 17:26:50',1),(11,'Raghu','Ideation',3,'Active','2023-12-10 17:26:50',1),(12,'Anitha','Buddy',3,'Active','2023-12-10 17:26:50',1),(13,'Prathamesh','support',2,'Active','2023-12-10 17:26:50',1),(14,'Shreya','Ideation',2,'Active','2023-12-10 17:26:50',1),(15,'Fatima','Buddy',2,'Active','2023-12-10 17:26:50',1);
/*!40000 ALTER TABLE `mentor` ENABLE KEYS */;
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
