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
-- Table structure for table `maker_program`
--

DROP TABLE IF EXISTS `maker_program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maker_program` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ProgramName` varchar(100) DEFAULT NULL,
  `ProgramType` varchar(50) DEFAULT NULL,
  `ProgramLink` varchar(255) DEFAULT NULL,
  `TechStackId` int DEFAULT NULL,
  `TechTypeId` int DEFAULT NULL,
  `IsProgramApproved` tinyint(1) DEFAULT NULL,
  `Description` text,
  `Status` varchar(50) DEFAULT NULL,
  `CreatorStamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatorUser` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `TechStackId` (`TechStackId`),
  KEY `TechTypeId` (`TechTypeId`),
  CONSTRAINT `maker_program_ibfk_1` FOREIGN KEY (`TechStackId`) REFERENCES `techstack` (`Id`),
  CONSTRAINT `maker_program_ibfk_2` FOREIGN KEY (`TechTypeId`) REFERENCES `techtype` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maker_program`
--

LOCK TABLES `maker_program` WRITE;
/*!40000 ALTER TABLE `maker_program` DISABLE KEYS */;
INSERT INTO `maker_program` VALUES (1,'Java Bootcamp','Full Satck','https://www.bridgelabz-javabootcamp.com',1,3,1,'Join our coding program to senhance your skills and prepare for interviews!','Active','2023-12-11 06:48:30',1),(2,'Java Bootcamp','Backend','https://www.bridgelabz-javabackend.com',1,2,1,'Join our coding program to enhance your skills everyday at 10:00 am for 1 month!','Active','2023-12-11 06:48:30',1),(3,'Web development Bootcamp','Frontend','https://www.bridgelabz-webdevlopment.com',3,1,1,'Join our coding program to senhance your skills and get job','Active','2023-12-11 06:48:30',1),(4,'Spring Bootcamp','Full Satck','https://www.bridgelabz-javabootcamp.com',1,3,1,'Join our coding program to senhance your skills and make understandable live projects!','Active','2023-12-11 06:48:30',1);
/*!40000 ALTER TABLE `maker_program` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-11 13:37:29
