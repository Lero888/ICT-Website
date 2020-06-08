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
-- Table structure for table `news_content`
--

DROP TABLE IF EXISTS `news_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `news_content` (
  `ncid` int(11) NOT NULL AUTO_INCREMENT,
  `nid` int(11) DEFAULT NULL,
  `content` varchar(3000) DEFAULT NULL,
  PRIMARY KEY (`ncid`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_content`
--

LOCK TABLES `news_content` WRITE;
/*!40000 ALTER TABLE `news_content` DISABLE KEYS */;
INSERT INTO `news_content` VALUES (55,2,'A delegation led by Prof.Dai Minhan, Academician of Chinese Academy of Science visited Xiamen University Malaysia (XMUM) on 26 June 2019 to hold a seminar themed Water World: the Way to Go, during which five inspirational talks were delivered by speakers from different areas of expertise to XMUM staff and students.\r'),(56,2,'Prof. Dai Minhan, Director of the State Key Laboratory of Marine Environmental Science, Xiamen University (XMU) gave an overview of the ocean?s potential in different aspects, interpreting ocean science as an interdisciplinary science that tells the stories and processes of those unifying principles in the ocean. The title of his talk is: ?Ocean health and Ocean Science?.\r'),(57,2,'Prof. Gan Jianping, Chair Professor of Department of Ocean Science & Department of Mathematics, Hong Kong University of Science and Technology, introduced the motion of ocean, the role of ocean in climate change, ocean biological productivity and fishery, marine nature source, pollution and natural disasters at the global scale and within the South East Asia region. The title of his talk is: ?Earth is an Ocean World?.\r'),(58,2,'Prof. Lin Senjie from the State Key Laboratory of Marine Environmental Science (XMU) illustrated the paradigm-challenging advances in biological oceanography research with some vivid examples, and highlighted modern biological technology as a powerful tool in this research field. The title of his talk is: ?Recent Advances in Biological Oceanography?.\r'),(59,2,'Prof. Huang Bangqin from the State Key Laboratory of Marine Environmental Science (XMU) talked about the marine ecosystems spanning the earth?s surface and emphasized the influence of global change. The tile of his talk is: ?Marine Ecosystems and Global Change?.\r'),(60,2,'Prof. Kao Shuh-Ji from the State Key Laboratory of Marine Environmental Science (XMU) addressed the triangular relationship between humans, nitrogen and the ocean. The tile of his talk is: ?Human, Nitrogen and Ocean?.\r'),(61,3,'During 24 to 28 June 2019, China-ASEAN College of Marine Sciences, Xiamen University Malaysia (XMUM) co-organized the 3rd South China Sea Conference (SCS 2019) with the Institute of Ocean and Earth Sciences (IOES), University of Malaya (UM) and the First Institute of Oceanography (FIO) of the Ministry of Natural Resources (MNR) China. Held at Eastin Hotel Kuala Lumpur, Malaysia, this conference provided a fruitful platform for discussion and exchange related to research activities in the South China Seas and promoted academic cooperation among marine scientists all over the world.\r'),(62,3,'Themed ?Sea, Science & Societies: Forging Alliances in Facing Global Environmental Change?, the conference consisted of five main sessions: (i) Marine Biodiversity Conservation and Management; (ii) Anthropogenic Impacts on Coastal Processes; (iii) Ocean Accounts and Maritime Communities; (iv) Science, Technology and Innovation for Sustainable Growth of Blue Economy; and (v) Sensing and Monitoring of the Ocean and Atmosphere.\r'),(63,3,'120 participants from 12 countries, including China, Australia, Japan, Indonesia, India, Denmark, Netherlands, New Zealand, Singapore, South Korea, the United States and Malaysia, attended the conference. Prof. Dai Minghan, Director of State Key Laboratory of Marine Environmental Science (XMU) and Prof. Kao Shuh-Ji from State Key Laboratory of Marine Environmental Science (XMU) gave lectures on Carbon Cycle in the South China Sea: Flux, Controls and Global Implications and Global Change and Marine Nitrogen Cycle respectively as plenary speakers. An interesting talk on The Influence of the South China Sea on Transports and Mixing in the Indonesian Throughflow was given by Prof. Robin Robertson from XMUM.\r'),(64,3,'This conference enabled scientists, technologists and people interested in marine sciences to gather together and present their latest findings. It also facilitated the development of new collaborative relationships and research partnerships, and created opportunities for students and emerging scientists to exchange views and gather cutting-edge information in their respective field of expertise.\r'),(65,4,'Hong Khay Boon, a first-year student from XMUM Mathematics and Applied Mathematics Programme, won second prize in the 16th Jingrun Cup Mathematics Competition (Professional Group) held by School of Mathematical Sciences, Xiamen University.\r'),(66,4,'This competition attracted 436 participants, who had been sorted into Professional Group and Unprofessional Group based on their undergraduate programme. 28 students from XMUM signed up for the competition, 3 for Professional Group and 25 for Unprofessional Group. For their convenience, XMUM was used as one competition site and one round of the competition was held here on 1 June 2019.\r'),(67,6,'XMUM Open Day would be a great opportunity to find out more about your education pathway by speaking to our counselors and academicians. Visit us on Open Day and let yourself be taken on a campus tour to view our scenic campus and state-of-the-art facilities.\r'),(68,6,'Our counselors will be available EVERY DAY from 1 July 2019 to 30 September 2019 (including weekends and public holidays) from 9:00a.m.to 5:00p.m.\r'),(69,1,'TCM (Traditional Chinese Medicine) Camp and Olympiad Cup 2019 was co-hosted by Xiamen University Malaysia (XMUM) and Universiti Tunku Abdul Rahman (UTAR) from 31 May to 2 June 2019 at XMUM.\r'),(70,1,'Held in memory of the late Dr. Ngeow Sze Chan, a prominent Chinese physician known as The Father of Modern Traditional Chinese Medicine, this event aims at promoting peer exchange among TCM students from all over the world and enriching their professional knowledge.\r'),(71,1,'The camp attracted 85 participants from 7 universities, including Xiamen University (China), Mae Fah Luang University (Thailand), International Medical University (IMU), Southern University College (SUC), Management & Science University (MSU), UTAR and XMUM. During the 3-day camp, participants attended four public talks and workshops, as well as a quiz competition covering various aspects of Traditional Chinese Medicine. UTAR, XMU (China), SUC and IMU shared the top prize of the quiz competition.\r'),(72,1,'Dr. Wong Pi Ying from Council Secretariat of Traditional and Complementary Medicine (Malaysia), Prof. Ngeow Yun Fong, daughter of Dr. Ngeow Sze Chan, Prof. Qian Linchao from XMUM and Mr. Judick Yap Wei Hoong from UTAR attended the opening ceremony.\r'),(73,1,'This event was sponsored by Dato?Diraja Prof. Wan Kuok Peng, Director TohJoo Huat, Taipei TCM Medical Centre Sdn Bhd and Fooh Beng Health Care Sdn Bhd.\r'),(74,5,'You are invited to join us on our INFO DAY in June and July, to discover what XMUM can offer you and talk with our dedicated course counselors! To make a reservation, please click the link below.\r'),(75,5,'https://docs.google.com/forms/d/e/1FAIpQLScpnrZ4IMMZmOEYPE4stMbgjO1idxnbiDg6e_TJDi_xbsNhQg/viewform\r'),(76,6,'sdfsdf\r'),(77,6,'\r'),(78,6,'sdf\r'),(79,6,'\r'),(80,6,'sd\r'),(81,6,'f\r'),(82,6,'sf'),(85,24,'sdfsdfsdf\r'),(86,24,'123\r');
/*!40000 ALTER TABLE `news_content` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-21  0:15:29
