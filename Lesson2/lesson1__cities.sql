-- MySQL dump 10.13  Distrib 8.0.13, for Linux (x86_64)
--
-- Host: localhost    Database: lesson1
-- ------------------------------------------------------
-- Server version	8.0.13

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
-- Table structure for table `_cities`
--

DROP TABLE IF EXISTS `_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `_cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `important` tinyint(1) NOT NULL,
  `region_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `city_index` (`title`),
  KEY `Foreign_city_countries` (`country_id`),
  KEY `Foreign_city_regions` (`region_id`),
  CONSTRAINT `Foreign_city_countries` FOREIGN KEY (`country_id`) REFERENCES `_countries` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `Foreign_city_regions` FOREIGN KEY (`region_id`) REFERENCES `_regions` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_cities`
--

LOCK TABLES `_cities` WRITE;
/*!40000 ALTER TABLE `_cities` DISABLE KEYS */;
INSERT INTO `_cities` VALUES (1,1,0,1,'Москва'),(2,1,0,2,'Саратов'),(3,1,0,2,'Энгельс'),(4,2,0,3,'Варезе'),(5,2,0,3,'Милан'),(6,2,0,4,'Венеция'),(7,2,0,4,'Верона'),(8,3,0,5,'Ренн'),(9,3,0,6,'Аяччо'),(10,4,0,7,'Вольфсбург'),(11,4,0,8,'Луккенвальдэ');
/*!40000 ALTER TABLE `_cities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-03 15:48:10
