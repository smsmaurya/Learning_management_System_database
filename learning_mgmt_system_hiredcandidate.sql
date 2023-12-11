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
-- Table structure for table `hiredcandidate`
--

DROP TABLE IF EXISTS `hiredcandidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hiredcandidate` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `MiddleName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) NOT NULL,
  `EmailId` varchar(255) NOT NULL,
  `HiredCity` varchar(100) DEFAULT NULL,
  `Degree` varchar(100) DEFAULT NULL,
  `HiredDate` date DEFAULT NULL,
  `MobileNumber` varchar(20) DEFAULT NULL,
  `PermanentPincode` varchar(15) DEFAULT NULL,
  `HiredLab` varchar(100) DEFAULT NULL,
  `Attitude` varchar(255) DEFAULT NULL,
  `CommunicationRemark` varchar(255) DEFAULT NULL,
  `KnowledgeRemark` varchar(255) DEFAULT NULL,
  `AggregateRemark` varchar(255) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `CreatorStamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatorUser` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hiredcandidate`
--

LOCK TABLES `hiredcandidate` WRITE;
/*!40000 ALTER TABLE `hiredcandidate` DISABLE KEYS */;
INSERT INTO `hiredcandidate` VALUES (1,'Sumesh','Omprakash','Maurya','Sumesh12@gmail.com','Mumbai','B.Tech','2023-10-17','9923636736','400072','Mum-Lab','Good','Avg','Good','70.56','Active','2023-12-08 08:13:56',2),(3,'Rakesh','Kumar','Pandey','Rakesh65@gmail.com','Mumbai','B.Tech','2023-07-06','9756454566','300072','Mum-Lab','Good','Good','Good','72.43','Active','2023-12-08 08:49:18',2),(4,'Sanket','','Garde','Sanketg@gmail.com','Pune','B.Tech','2023-10-17','8652741521','400086','Pun-Lab','Good','Good','Good','76.86','Active','2023-12-08 08:49:18',2),(5,'Rohan','','Dute','Rohan4@gmail.com','Mumbai','B.Tech','2023-07-06','8643456736','400045','Mum-Lab','Good','Good','Good','78','Active','2023-12-08 08:49:18',2),(6,'Swapnil','','Patil','Swapnil69@gmail.com','Mumbai','B.Tech','2023-07-15','872644556','400066','Mum-Lab','Good','Good','Good','78.07','Active','2023-12-08 08:49:18',2),(7,'Sushil','Kumar','Gupta','Sushil34@gmail.com','Bangalore','B.Tech','2023-10-17','9756475666','560029','Ban-Lab','Good','Good','Good','73.72','Active','2023-12-08 08:49:18',2),(8,'Aditya','','Sharma','Aditya55@gmail.com','Mumbai','B.Tech','2023-07-17','9478536996','400068','Mum-Lab','Good','Good','Good','70.86','Active','2023-12-08 08:49:18',2),(9,'Sanket','Rajkumar','Jadhav','SanketJ4@gmail.com','Mumbai','B.Tech','2023-07-12','7866367936','400028','Mum-Lab','Good','Good','Good','87.89','Active','2023-12-08 08:49:18',2),(10,'Harshal','','Malviya','Harshal99@gmail.com','Pune','B.Tech','2023-07-07','888636736','400234','Pun-Lab','Good','Good','Good','74.33','Active','2023-12-08 08:49:18',2),(11,'Vishlesha','','Mortale','Vishlesha@gmail.com','Mumbai','B.Tech','2023-10-11','8884568844','410062','Mum-Lab','Good','Good','Good','70.56','Active','2023-12-08 08:49:18',2),(12,'Ashish','','Dash','Ashish12@gmail.com','Bangalore','B.Tech','2023-04-23','8763006730','570072','Ban-Lab','Good','Good','Good','76.59','Rejected','2023-12-08 08:49:18',2),(13,'Kul','','Deep','Kuldeep2@gmail.com','Bangalore','B.Tech','2023-11-27','8123636345','540012','Ban-Lab','Good','Avg','Good','67.44','Pending','2023-12-08 08:49:18',2),(14,'Zubair','','Khan','Zubair33@gmail.com','Mumbai','B.Tech','2023-10-17','9923565654','440044','Mum-Lab','Good','Avg','Avg','57.56','Rejected','2023-12-08 08:49:18',2);
/*!40000 ALTER TABLE `hiredcandidate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-11 13:37:28
