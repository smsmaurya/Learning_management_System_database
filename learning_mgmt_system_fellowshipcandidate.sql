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
-- Table structure for table `fellowshipcandidate`
--

DROP TABLE IF EXISTS `fellowshipcandidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fellowshipcandidate` (
  `Id` int DEFAULT NULL,
  `CandidateId` varchar(20) NOT NULL,
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
  `CreatorStamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatorUser` int DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `IsBirthDateVerified` tinyint(1) DEFAULT NULL,
  `ParentName` varchar(100) DEFAULT NULL,
  `ParentOccupation` varchar(100) DEFAULT NULL,
  `ParentsMobileNumber` varchar(20) DEFAULT NULL,
  `ParentsAnnualSalary` decimal(10,2) DEFAULT NULL,
  `LocalAddress` varchar(255) DEFAULT NULL,
  `PermanentAddress` varchar(255) DEFAULT NULL,
  `PhotoPath` varchar(255) DEFAULT NULL,
  `JoiningDate` date DEFAULT NULL,
  `CandidateStatus` varchar(50) DEFAULT NULL,
  `PersonalInformation` text,
  `BankInformation` text,
  `EducationalInformation` text,
  `DocumentStatus` varchar(50) DEFAULT NULL,
  `Remark` text,
  PRIMARY KEY (`CandidateId`),
  KEY `Id` (`Id`),
  CONSTRAINT `fellowshipcandidate_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `hiredcandidate` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fellowshipcandidate`
--

LOCK TABLES `fellowshipcandidate` WRITE;
/*!40000 ALTER TABLE `fellowshipcandidate` DISABLE KEYS */;
INSERT INTO `fellowshipcandidate` VALUES (1,'CIC00001','Sumesh','Omprakash','Maurya','Sumesh12@gmail.com','Mumbai','B.Tech','2023-10-17','9923636736','400072','Mum-Lab','Good','Avg','Good','70.56','2023-12-08 08:13:56',2,'1999-05-12',1,'Omprakash Maurya','Worker','9869534527',200000.00,'Yadav Nagar','Sakinaka','No','2023-10-17','Active','NA','PNB','Not done','Done','Good'),(3,'CIC00003','Rakesh','Kumar','Pandey','Rakesh65@gmail.com','Mumbai','B.Tech','2023-07-06','9756454566','300072','Mum-Lab','Good','Good','Good','72.43','2023-12-08 08:49:18',2,'1995-06-17',1,'Brijlal','Farmer','8254635633',360000.00,'Buxer','Bihar','No','2023-07-06','Active','NA','Bank Of Baroda','Done','Done','Good'),(4,'CIC00004','Sanket','','Garde','Sanketg@gmail.com','Pune','B.Tech','2023-10-17','8652741521','400086','Pun-Lab','Good','Good','Good','76.86','2023-12-08 08:49:18',2,'2000-08-26',1,'Vinod','Farmer','8586345465',480000.00,'Mumbai','Maharashtra','No','2023-10-17','Active','NA','Canera Bank','Done','Done','Good'),(5,'CIC00005','Rohan','','Dute','Rohan4@gmail.com','Mumbai','B.Tech','2023-07-06','8643456736','400045','Mum-Lab','Good','Good','Good','78','2023-12-08 08:49:18',2,'1999-04-16',1,'Arvind','Farmer','9886345478',420000.00,'Pune','Maharashtra','No','2023-07-06','Active','NA','ICICI Bank','Done','Not Done','Good'),(6,'CIC00006','Swapnil','','Patil','Swapnil69@gmail.com','Mumbai','B.Tech','2023-07-15','872644556','400066','Mum-Lab','Good','Good','Good','78.07','2023-12-08 08:49:18',2,'1997-02-09',1,'Ramesh','Employee','7865645498',600000.00,'Panvel','Maharashtra','No','2023-07-15','Active','Available','SBI Bank','Done','Done','Good'),(7,'CIC00007','Sushil','Kumar','Gupta','Sushil34@gmail.com','Bangalore','B.Tech','2023-10-17','9756475666','560029','Ban-Lab','Good','Good','Good','73.72','2023-12-08 08:49:18',2,'1999-07-20',1,'Anil','Farmer','9918454324',400000.00,'Patna','Bihar','No','2023-10-17','Active','NA','SBI Bank','Done','Not Done','Good'),(8,'CIC00008','Aditya','','Sharma','Aditya55@gmail.com','Mumbai','B.Tech','2023-07-17','9478536996','400068','Mum-Lab','Good','Good','Good','70.86','2023-12-08 08:49:18',2,'1998-10-29',1,'Shivprashad','Engineer','9794263228',600000.00,'Lucknow','Uttarpradesh','No','2023-07-17','Active','NA','City Bank','Done','Done','Good'),(9,'CIC00009','Sanket','Rajkumar','Jadhav','SanketJ4@gmail.com','Mumbai','B.Tech','2023-07-12','7866367936','400028','Mum-Lab','Good','Good','Good','87.89','2023-12-08 08:49:18',2,'2000-03-08',1,'Rajkumar','Businessman','9768357248',720000.00,'Mumbai','Mahashtra','No','2023-07-12','Active','NA','Yes Bank','Done','Done','Good');
/*!40000 ALTER TABLE `fellowshipcandidate` ENABLE KEYS */;
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
