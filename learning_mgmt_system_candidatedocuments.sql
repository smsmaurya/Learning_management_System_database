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
-- Table structure for table `candidatedocuments`
--

DROP TABLE IF EXISTS `candidatedocuments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidatedocuments` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CandidateId` varchar(20) DEFAULT NULL,
  `DocType` varchar(50) DEFAULT NULL,
  `DocPath` varchar(255) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `CreatorStamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatorUser` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `CandidateId` (`CandidateId`),
  CONSTRAINT `candidatedocuments_ibfk_1` FOREIGN KEY (`CandidateId`) REFERENCES `fellowshipcandidate` (`CandidateId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidatedocuments`
--

LOCK TABLES `candidatedocuments` WRITE;
/*!40000 ALTER TABLE `candidatedocuments` DISABLE KEYS */;
INSERT INTO `candidatedocuments` VALUES (1,'CIC00001','Adhaar Card','www.sms_adhaarcard.pdf.drive.in','Recieved','2023-12-10 08:48:26',2),(2,'CIC00001','PAN Card','www.sms_PANcard.pdf.drive.in','Recieved','2023-12-10 08:55:14',2),(3,'CIC00001','Certificate','','Pending','2023-12-10 09:50:06',2),(4,'CIC00003','Adhaar Card','shdhgdfd23.pdf','Recieved','2023-12-10 09:51:39',2),(5,'CIC00003','PAn Card','shdhgdfd23.pdf','Pending','2023-12-10 09:52:02',2),(6,'CIC00003','Certificate','doc.pdf','Recieved','2023-12-10 09:53:16',2),(7,'CIC00004','Adhaar Card','adharcard.pdf','Recieved','2023-12-10 09:54:00',2),(8,'CIC00004','PAN Card','panrcard.pdf','Recieved','2023-12-10 09:54:16',2),(9,'CIC00004','Certificate','certi.pdf','Recieved','2023-12-10 09:54:39',2),(10,'CIC00005','Adhaar Card','id1.pdf','Recieved','2023-12-10 09:55:08',2),(11,'CIC00005','PAN Card','id2.pdf','Recieved','2023-12-10 09:55:20',2),(12,'CIC00005','Cerificate','javacert.pdf','Recieved','2023-12-10 09:55:50',2),(13,'CIC00006','Cerificate','cerficate1.pdf','Pending','2023-12-10 09:56:39',2),(14,'CIC00006','Adhaar Card','adhaar1.jph','Recieved','2023-12-10 09:57:14',2),(15,'CIC00006','PAN Card','','Pending','2023-12-10 09:57:39',2),(16,'CIC00007','PAN Card','pancard1.jpg','Recieved','2023-12-10 09:58:19',2),(17,'CIC00007','Adhaar Card','','Pending','2023-12-10 09:59:03',2),(18,'CIC00008','Adhaar Card','idproof1.pdf','Recieved','2023-12-10 09:59:34',2),(19,'CIC00008','PAN Card','idproof2.pdf','Recieved','2023-12-10 09:59:46',2),(20,'CIC00008','Certificate','scerticicate.pdf','Recieved','2023-12-10 10:01:25',2),(21,'CIC00009','Certificate','','Pending','2023-12-10 10:01:47',2),(22,'CIC00009','Adhaar Card','nationalID.jpeg','Recieved','2023-12-10 10:02:37',2);
/*!40000 ALTER TABLE `candidatedocuments` ENABLE KEYS */;
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
