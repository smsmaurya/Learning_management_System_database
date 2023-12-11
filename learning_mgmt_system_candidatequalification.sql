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
-- Table structure for table `candidatequalification`
--

DROP TABLE IF EXISTS `candidatequalification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidatequalification` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CandidateId` varchar(20) DEFAULT NULL,
  `Diploma` varchar(100) DEFAULT NULL,
  `DegreeName` varchar(100) DEFAULT NULL,
  `IsDegreeNameVerified` tinyint(1) DEFAULT NULL,
  `EmployeeDiscipline` varchar(100) DEFAULT NULL,
  `IsEmployeeDisciplineVerified` tinyint(1) DEFAULT NULL,
  `PassingYear` int DEFAULT NULL,
  `IsPassingYearVerified` tinyint(1) DEFAULT NULL,
  `AggrPer` decimal(5,2) DEFAULT NULL,
  `IsAggrPerVerified` tinyint(1) DEFAULT NULL,
  `FinalYearPer` decimal(5,2) DEFAULT NULL,
  `IsFinalYearPerVerified` tinyint(1) DEFAULT NULL,
  `TrainingInstitute` varchar(100) DEFAULT NULL,
  `IsTrainingInstituteVerified` tinyint(1) DEFAULT NULL,
  `TrainingDurationMonth` int DEFAULT NULL,
  `IsTrainingDurationMonthVerified` tinyint(1) DEFAULT NULL,
  `OtherTraining` varchar(255) DEFAULT NULL,
  `IsOtherTrainingVerified` tinyint(1) DEFAULT NULL,
  `CreatorStamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatorUser` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `CandidateId` (`CandidateId`),
  CONSTRAINT `candidatequalification_ibfk_1` FOREIGN KEY (`CandidateId`) REFERENCES `fellowshipcandidate` (`CandidateId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidatequalification`
--

LOCK TABLES `candidatequalification` WRITE;
/*!40000 ALTER TABLE `candidatequalification` DISABLE KEYS */;
INSERT INTO `candidatequalification` VALUES (1,'CIC00001','No','B.Tech',1,'Yes',1,2021,1,70.56,1,74.00,1,'BridgeLabz',1,3,1,'No',1,'2023-12-10 06:02:18',2),(2,'CIC00003','No','B.Tech',1,'Yes',1,2019,1,73.00,1,77.57,1,'BridgeLabz',1,6,1,'Yes',1,'2023-12-10 06:05:25',2),(3,'CIC00004','No','B.Tech',1,'Yes',1,2022,1,68.00,1,71.88,1,'BridgeLabz',1,3,1,'No',1,'2023-12-10 06:06:40',2),(4,'CIC00005','No','MCA',1,'Yes',1,2022,1,70.00,1,76.23,1,'BridgeLabz',1,3,1,'No',1,'2023-12-10 06:08:13',2),(5,'CIC00006','No','B.Tech Electronics',1,'Yes',1,2021,1,76.00,1,80.77,1,'BridgeLabz',1,6,1,'No',1,'2023-12-10 06:10:15',2),(6,'CIC00007','No','B.Tech IT',1,'Yes',1,2021,1,77.44,1,82.33,1,'BridgeLabz',1,3,1,'No',1,'2023-12-10 06:11:36',2),(7,'CIC00008','No','B.Tech ME',1,'Yes',1,2021,1,75.45,1,79.47,1,'BridgeLabz',1,6,1,'No',1,'2023-12-10 06:13:30',2),(8,'CIC00009','No','B.Tech CS',1,'Yes',1,2022,1,82.83,1,88.73,1,'BridgeLabz',1,6,1,'No',1,'2023-12-10 06:15:00',2);
/*!40000 ALTER TABLE `candidatequalification` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-11 13:37:26
