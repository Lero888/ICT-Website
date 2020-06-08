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
-- Table structure for table `rep_pub`
--

DROP TABLE IF EXISTS `rep_pub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rep_pub` (
  `rpid` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  PRIMARY KEY (`rpid`),
  UNIQUE KEY `rpid_UNIQUE` (`rpid`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_pub`
--

LOCK TABLES `rep_pub` WRITE;
/*!40000 ALTER TABLE `rep_pub` DISABLE KEYS */;
INSERT INTO `rep_pub` VALUES (1,1,'Z. Xiao & X. Jing. (2016). A Novel Characteristic Parameter Approach for Analysis and Design of Linear Components in Nonlinear Systems. IEEE Trans. Signal Process, 64(10), 2528-2540'),(2,1,'Z. Xiao & X. Jing. (2016). A Novel Characteristic Parameter Approach for Analysis and Design of Linear Components in Nonlinear Systems. IEEE Trans. Signal Process, 64(10), 2528-2540'),(3,1,'Z. Xiao & X. Jing (2015). A SIMO Nonlinear System Approach to Analysis and Design of Vehicle Suspensions. IEEE/ASME Trans.Mechatronics, 20(6), 3098-3111.'),(4,2,'Wang, MH; Wu, QQ* (2017). Research of Advanced GTM and its Application to Gas-Oil Reservoir Identification. International Journal of Pattern Recognition and Artificial Intelligence, 31(5).'),(5,2,'An, X. Y., & Wu, Q. Q.* (2011). Co-word analysis of the trends in stem cells field based on subject heading weighting. Scientometrics, 88(1), 133-144.'),(6,2,'Wu, Q., Zhang, C., & An, X. (2012). Topic segmentation model based on ATNLDA and co-occurrence theory and its application in stem cell field. Journal of Information Science, 39(3), 1-14.'),(7,3,'Kun-Hong Liu*, Zhi-Hao Zeng, Vincent To Yee Ng, A Hierarchical Ensemble of ECOC for cancer classification based on multi-class microarray data, Information Sciences, Vol. 349–350, pp. 102–118, 2016.(SCI)'),(8,3,'Muchenxuan Tong, Kun-Hong Liu*, Chungui Xu, Wenbin Ju, \"An ensemble of SVM classifiers based on gene pairs\", Computers in Biology and Medicine 43(6), 729–737, 2013. (SCI)'),(9,3,'Guo-Yan Liu, Kun-Hong Liu(co-first author), et. al, “Alterations of tumor-related genes do not exactly match the histopathological grade in gastric adenocarcinomas”，World J Gastroenterol, Vol. 16, No. 9, pp. 1129-1137, 2010. (SCI)'),(10,3,'Kun-Hong Liu* and Chun-Gui Xu, “A genetic programming-based approach to the classification of multiclass microarray datasets”, Bioinformatics, Vol. 25, No.3, pp. 331 – 337, 2009. (SCI)'),(11,4,'R. C.-W. Phan, W.-C. Yau, B.–M. Goi, “Cryptanalysis of simple three-party key exchange protocol (S-3PAKE)”, Information Sciences, 178(13), pp. 2849-2856, 2008.'),(12,4,'W.-C Yau, Raphael C.-W. Phan, S.-H. Heng, B.-M. Goi, “Proxy re-encryption with keyword search: New definitions and algorithms with proofs”, International Journal of Security and Its Applications, 5(2), pp. 75–90, 2011.'),(13,4,'W.-C. Yau, Raphael C. -W. Phan, S.-H. Heng, B.-M. Goi, “Security Models for Delegated Keyword Searching within Encrypted Contents”, Journal of Internet Services and Applications, 3(2), pp. 233-241 2012.'),(14,5,'Lau, B.Y.S., & Lee, C.S. (2008). Methodology and System Design for Implementing Context-Adaptive Service-Oriented Web-based Learning. International Journal of Mobile Learning and Organisation (IJMLO), 3(2), 164 – 183.'),(15,5,'Pham-Nguyen, C., Lau, B.Y.S., Barbry, B., Vantroys, T., & Garlatti, S. International Journal of Mobile and Blended Learning (IJMBL), 1(3), 41-69.'),(16,5,'Pham-Nguyen, C., Lau, B.Y.S., Barbry, B., Vantroys, T., & Garlatti, S. (2009). Pervasive Learning System Based on a Scenario Model Integrating Web Service Retrieval and Orchestration. International Journal of Innovative Mobile (iJIM), 3(2).'),(17,6,'Liong, S. T., See, J., Phan, R. C. W., Oh, Y. H., Le Ngo, A. C., Wong, K., & Tan, S. W. (2016). Spontaneous subtle expression detection and recognition based on facial strain. Signal Processing: Image Communication, 47, 170-182.'),(18,6,'Liong, S. T., See, J., Phan, R. C. W., & Wong, K. (2016). Less is More: Micro-expression Recognition from Video using Apex Frame. arXiv preprint arXiv:1606.01721.'),(19,6,'Le Ngo, A. C., Liong, S. T., See, J., & Phan, R. C. W. (2015, July). Are subtle expressions too sparse to recognize?. In Digital Signal Processing (DSP), 2015 IEEE International Conference on (pp. 1246-1250). IEEE.');
/*!40000 ALTER TABLE `rep_pub` ENABLE KEYS */;
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
