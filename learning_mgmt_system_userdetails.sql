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
-- Table structure for table `userdetails`
--

DROP TABLE IF EXISTS `userdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userdetails` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `creator_stamp` datetime DEFAULT CURRENT_TIMESTAMP,
  `creator_user` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdetails`
--

LOCK TABLES `userdetails` WRITE;
/*!40000 ALTER TABLE `userdetails` DISABLE KEYS */;
INSERT INTO `userdetails` VALUES (1,'Sumesh12@gmail.com','Sumesh','Maurya','smsmry','9923636736',1,'2023-12-08 13:25:06',1),(2,'Rakesh65@gmail.com','Rakesh','Pandey','rkpandey','9756454566',1,'2023-12-08 13:25:06',1),(3,'Rohan4@gmail.com','Rohan','Dute','rohand12','8643456736',1,'2023-12-08 13:25:06',1),(4,'Sanketg@gmail.com','Sanket','Garde','sgarde88','8652741521',1,'2023-12-08 13:25:06',1),(5,'Sushil34@gmail.com','Sushil','Gupta','skgupta12','9756475666',1,'2023-12-08 13:25:06',1),(6,'Swapnil69@gmail.com','Swapnil','Patil','sPatil','872644556',1,'2023-12-08 13:25:06',1),(7,'Aditya55@gmail.com','Aditya','Sharma','A_sharma','9478536996',1,'2023-12-08 13:25:06',1),(8,'SanketJ4@gmail.com','Sanket','Jadhav','SanketJ6','7866367936',1,'2023-12-08 13:25:06',1),(9,'Harshal99@gmail.com','Harshal','Malviya','HasMal22','888636736',1,'2023-12-08 13:25:06',1),(10,'Kuldeep2@gmail.com','Kul','Deep','KD64546','8123636345',1,'2023-12-08 13:25:06',1),(11,'Vishlesha@gmail.com','Vishlesha','Mortale','Vishlesha','8884568844',1,'2023-12-08 13:25:06',1),(12,'Ashish12@gmail.com','Ashish','Dash','AsDash2','8763006730',1,'2023-12-08 13:25:06',1),(13,'Zubair33@gmail.com','Zubair','Khan','khanz345','9923565654',1,'2023-12-08 13:25:06',1),(14,'RyanChat@gmail.com','Ryan','Chattier','rChattier','678546736',1,'2023-12-08 13:25:06',1),(15,'Jasmon66@gmail.com','Jasmon','Eppan','jussyEpon','6883665730',1,'2023-12-08 13:25:06',1),(16,'Devesh78@gmail.com','Devesh','Singh','devsingh','8976396266',1,'2023-12-08 13:25:06',1),(17,'Mahesh11@gmail.com','Mahesh','Patole','mp356752','8354546736',1,'2023-12-08 13:25:06',1),(18,'Sunil57@gmail.com','Sunil','Patel','sp_sir22','8652215767',1,'2023-12-08 13:25:06',1),(19,'Shardhha@gmail.com','Shradhha','Shirodkar','S_Shiro233','9918815532',1,'2023-12-08 13:25:06',1),(20,'Sachin05@gmail.com','Sachin','Epili','samEpili','8823678511',1,'2023-12-08 13:25:06',1);
/*!40000 ALTER TABLE `userdetails` ENABLE KEYS */;
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
