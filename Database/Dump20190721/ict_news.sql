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
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `news` (
  `idnews` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) DEFAULT NULL,
  `caption` varchar(1000) DEFAULT NULL,
  `thumbnail` varchar(1000) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `category` varchar(45) NOT NULL,
  PRIMARY KEY (`idnews`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'TCM Camp and Olympiad Cup 2019 Held at XMUM','TCM (Traditional Chinese Medicine) Camp and Olympiad Cup 2019 was co-hosted by Xiamen University Malaysia (XMUM) and Universiti Tunku Abdul Rahman (UTAR) from 31 May to 2 June 2019 at XMUM.','TCMCampandOlympiadCup2019HeldatXMUM.png','2019-06-17 00:00:00','Highlight'),(2,'Exploring Water World: China-ASEAN College of Marine Sciences Seminar Series','A delegation led by Prof.Dai Minhan, Academician of Chinese Academy of Science visited Xiamen University Malaysia (XMUM) on 26 June 2019 to hold a seminar themed Water World: the Way to Go, during which five inspirational talks were delivered by speakers from different areas of expertise toXMUM staff and students.','ExploringWaterWorldChinaASEANCollegeofMarineSciencesSeminarSeries.png','2019-07-03 00:00:00','Highlight'),(3,'XMUM Co-Organizes the 3rd South China Sea Conference','XMUM Co-Organizes the 3rd South China Sea Conference','XMUMCoOrganizesthe3rdSouthChinaSeaConference.png','2019-07-03 00:00:00','Highlight'),(4,'XMUM Student Wins Second Prize in Jingrun Cup Mathematics ','XMUM Student Wins Second Prize in Jingrun Cup Mathematics ','XMUMStudentWinsSecondPrizeinJingrunCupMathematics.png','2019-07-03 00:00:00','Highlight'),(5,'XMUM INFO DAY','You are invited to join us on our INFO DAY in June and July, to discover what XMUM can offer you and talk with our dedicated course counselors! To make a reservation, please click the link below.','XMUMINFODAY.png','2019-06-03 00:00:00','Highlight'),(6,'XMUM Open Day (20 & 21 July 2019) - Apply now!','XMUM Open Day would be a great opportunity to find out more about your education pathway by speaking to our counselors and academicians. Visit us on Open Day and let yourself be taken on a campus tour to view our scenic campus and state-of-the-art facilities. ','XMUMOpenDay2021July2019Applynow.png','2019-06-18 00:00:00','Most Read');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-21  0:15:30
