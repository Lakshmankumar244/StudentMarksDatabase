-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: studentmarks
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `midmarks`
--

DROP TABLE IF EXISTS `midmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `midmarks` (
  `sid` int NOT NULL,
  `tm1` int NOT NULL DEFAULT (30),
  `om1` int NOT NULL DEFAULT (0),
  `tm2` int NOT NULL DEFAULT (30),
  `om2` int NOT NULL DEFAULT (0),
  `fm` int GENERATED ALWAYS AS (((`om1` + `om2`) / 2)) VIRTUAL,
  `fid` varchar(20) NOT NULL,
  KEY `fid` (`fid`),
  CONSTRAINT `midmarks_ibfk_1` FOREIGN KEY (`fid`) REFERENCES `facultydata` (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `midmarks`
--

LOCK TABLES `midmarks` WRITE;
/*!40000 ALTER TABLE `midmarks` DISABLE KEYS */;
INSERT INTO `midmarks` (`sid`, `tm1`, `om1`, `tm2`, `om2`, `fid`) VALUES (201,30,28,30,28,'1001'),(201,30,28,30,24,'1002'),(201,30,26,30,26,'1003'),(201,30,20,30,22,'1004'),(201,30,27,30,27,'1005'),(202,30,28,30,27,'1001'),(202,30,28,30,30,'1002'),(202,30,23,30,23,'1003'),(202,30,26,30,24,'1004'),(202,30,25,30,25,'1005'),(203,30,23,30,9,'1001'),(203,30,28,30,24,'1002'),(203,30,0,30,0,'1003'),(203,30,0,30,0,'1004'),(203,30,0,30,0,'1005'),(204,30,26,30,30,'1001'),(204,30,0,30,0,'1002'),(204,30,0,30,0,'1003'),(204,30,0,30,0,'1004'),(204,30,0,30,0,'1005'),(205,30,24,30,26,'1001'),(205,30,0,30,0,'1002'),(205,30,0,30,0,'1003'),(205,30,0,30,0,'1004'),(205,30,0,30,0,'1005'),(206,30,29,30,29,'1001'),(206,30,0,30,0,'1002'),(206,30,0,30,0,'1003'),(206,30,21,30,22,'1004'),(206,30,0,30,0,'1005'),(358,30,0,30,0,'1001'),(358,30,0,30,0,'1002'),(358,30,0,30,0,'1003'),(358,30,0,30,0,'1004'),(358,30,0,30,0,'1005');
/*!40000 ALTER TABLE `midmarks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-19 16:31:23
