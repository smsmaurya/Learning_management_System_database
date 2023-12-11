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
-- Table structure for table `company_requirement`
--

DROP TABLE IF EXISTS `company_requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_requirement` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_id` int DEFAULT NULL,
  `requested_month` date DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `is_doc_verification` tinyint(1) DEFAULT NULL,
  `requirement_doc_path` varchar(255) DEFAULT NULL,
  `no_of_engg` int DEFAULT NULL,
  `tech_stack_id` int DEFAULT NULL,
  `tech_type_id` int DEFAULT NULL,
  `maker_program_id` int DEFAULT NULL,
  `lead_id` int DEFAULT NULL,
  `ideation_engg_id` int DEFAULT NULL,
  `buddy_engg_id` int DEFAULT NULL,
  `special_remark` text,
  `Status` varchar(50) DEFAULT NULL,
  `creator_stamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `creator_user` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  KEY `tech_stack_id` (`tech_stack_id`),
  KEY `tech_type_id` (`tech_type_id`),
  KEY `maker_program_id` (`maker_program_id`),
  KEY `lead_id` (`lead_id`),
  KEY `ideation_engg_id` (`ideation_engg_id`),
  KEY `buddy_engg_id` (`buddy_engg_id`),
  CONSTRAINT `company_requirement_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `company_requirement_ibfk_2` FOREIGN KEY (`tech_stack_id`) REFERENCES `techstack` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `company_requirement_ibfk_3` FOREIGN KEY (`tech_type_id`) REFERENCES `techtype` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `company_requirement_ibfk_4` FOREIGN KEY (`maker_program_id`) REFERENCES `maker_program` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `company_requirement_ibfk_5` FOREIGN KEY (`lead_id`) REFERENCES `mentor` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `company_requirement_ibfk_6` FOREIGN KEY (`ideation_engg_id`) REFERENCES `mentor` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `company_requirement_ibfk_7` FOREIGN KEY (`buddy_engg_id`) REFERENCES `mentor` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_requirement`
--

LOCK TABLES `company_requirement` WRITE;
/*!40000 ALTER TABLE `company_requirement` DISABLE KEYS */;
INSERT INTO `company_requirement` VALUES (1,1,'2023-09-20','Mumbai',1,'/docs/QKrequirement_doc.pdf',10,1,1,1,1,3,4,'Excellent Communication','Active','2023-12-11 06:39:56',1),(2,2,'2023-11-01','Pune',1,'/docs/ABCrequirement_doc.pdf',2,1,1,1,1,3,4,'Good','Active','2023-12-11 06:39:56',1);
/*!40000 ALTER TABLE `company_requirement` ENABLE KEYS */;
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
