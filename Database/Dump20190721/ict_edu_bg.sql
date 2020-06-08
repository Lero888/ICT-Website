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
-- Table structure for table `edu_bg`
--

DROP TABLE IF EXISTS `edu_bg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `edu_bg` (
  `edu_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  PRIMARY KEY (`edu_id`),
  UNIQUE KEY `edu_id_UNIQUE` (`edu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_bg`
--

LOCK TABLES `edu_bg` WRITE;
/*!40000 ALTER TABLE `edu_bg` DISABLE KEYS */;
INSERT INTO `edu_bg` VALUES (1,1,'Bachelor Degree, Department of Electronic and Information Engineering, Nanjing University of Posts and Telecommunications, China (2008)'),(2,1,'Master Degree, Department of Electronic Engineering, Beijing University of Posts and Telecommunications, China (2011)'),(3,2,'Bachelor Degree, Department of computer science, Huazhong University of Science & Technology, China (1997)'),(4,2,'Master Degree, Department of System Engineering, Xiamen University, China (2000)'),(5,2,'Ph. D Degree, Center of Intelligence Analysis, Chinese Academy of Sciences, China (2008)'),(6,3,'Bachelor Degree, Institute of Physics Opt Electronics Technology, Fujian Normal University, China (1995-1999)'),(7,3,'Master Degree, Institute of Physics Opt Electronics Technology, Fujian Normal University, China (2002-2004)'),(8,3,'Ph. D Degree, Department of Automation, University of Science and Technology of China (2005-2008)'),(9,4,'Bachelor Degree, Department of Electrical Engineering, National Cheng Kung University, Taiwan, China (1999)'),(10,4,'Master Degree, Department of Electrical Engineering, National Cheng Kung University, Taiwan, China (2001)'),(11,4,'Ph. D Degree, Faculty of Engineering, Multimedia University, Malaysia (2013)'),(12,5,'Bachelor Degree, Faculty of Engineering, Multimedia University, Malaysia (2002)'),(13,5,'Master of Science (MSc) in Construction Engineering and Management, Malaysia University of Science & Technology, Malaysia (2005)'),(14,5,'PhD in Information Technology, Faculty of Computing and Informatics, Multimedia University, Malaysia (2013)'),(15,6,'Bachelor of Engineering (Honours) Electronics majoring in Telecommunications, Multimedia University, Malaysia (2014)'),(16,6,'Ph. D Degree, Faculty of Computer Science and Information Technology, University of Malaya, Malaysia (2017)');
/*!40000 ALTER TABLE `edu_bg` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-21  0:15:27
