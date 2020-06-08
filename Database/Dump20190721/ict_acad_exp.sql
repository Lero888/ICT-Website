-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ict
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acad_exp`
--

DROP TABLE IF EXISTS `acad_exp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `acad_exp` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  PRIMARY KEY (`aid`),
  UNIQUE KEY `aid_UNIQUE` (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acad_exp`
--

LOCK TABLES `acad_exp` WRITE;
/*!40000 ALTER TABLE `acad_exp` DISABLE KEYS */;
INSERT INTO `acad_exp` VALUES (1,1,'Assistant Professor, Department of Information Communication Technology, Xiamen University Malaysia (2017)'),(2,2,'Assistant Professor ,   Department of Digital Media Technology, Xiamen University, China (2008-2011)'),(3,2,'Associate Professor,   Department of Digital Media Technology, Xiamen University, China (2011-present)'),(4,3,'Associate Professor in Software School of Xiamen University (2011.8- present)'),(5,3,'Assistant Professor in Software School of Xiamen University (2008.9- 2011.7)'),(6,4,'Associate Professor, Xiamen University Malaysia (2016 – Present)'),(7,4,'Lecturer / Senior Lecturer,   Faculty of Engineering, Multimedia University (2004 - 2016)'),(8,5,'Lecturer, Department of Information Communication Technology, Xiamen University, Malaysia (2016 - 2017)'),(9,6,'Lecturer / Senior Lecturer,   Faculty of Engineering, Multimedia University (2004 - 2016)');
/*!40000 ALTER TABLE `acad_exp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-21  0:15:28
