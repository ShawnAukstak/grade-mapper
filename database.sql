-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: country_grade_mapper
-- ------------------------------------------------------
-- Server version	5.1.73

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (6,'United States','2015-06-08 15:45:10','2015-06-08 15:45:10'),(7,'Brazil','2015-06-08 15:45:25','2015-06-08 15:45:25'),(8,'United Kingdom','2015-06-08 15:45:25','2015-06-08 15:45:25');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gradess`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grades` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `grade_level` int(11) unsigned NOT NULL,
  `country_id` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;



LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES 
(null,1,6,'First Grade','2015-06-08 15:47:30','2015-06-08 15:47:30'),
(null,1,7,'Primeiro Ano Fundamental','2015-06-08 16:46:28','2015-06-08 16:46:28'),
(null,2,6,'second grade','2015-06-08 16:47:06','2015-06-08 16:47:06'),
(null,2,7,'Segundo Ano Fundamental','2015-06-08 16:53:06','2015-06-08 16:53:06'),
(null,3,6,'third grade','2015-06-08 16:47:14','2015-06-08 16:47:14'),
(null,3,7,'Terceiro Ano Fundamental','2015-06-08 16:53:15','2015-06-08 16:53:15'),
(null,4,6,'fourth grade','2015-06-08 16:48:06','2015-06-08 16:48:06'),
(null,4,7,'Quarto Ano Fundamental','2015-06-08 16:53:27','2015-06-08 16:53:27'),
(null,5,6,'fifth grade','2015-06-08 16:48:15','2015-06-08 16:48:15'),
(null,5,7,'Quinto Ano Fundamental','2015-06-08 16:53:35','2015-06-08 16:53:35'),
(null,6,6,'sixth grade','2015-06-08 16:48:23','2015-06-08 16:48:23'),
(null,6,7,'Sexto Ano Fundamental','2015-06-08 16:53:42','2015-06-08 16:53:42'),
(null,7,6,'seventh grade','2015-06-08 16:48:29','2015-06-08 16:48:29'),
(null,7,7,'Sétimo Ano Fundamental','2015-06-08 16:53:49','2015-06-08 16:53:49'),
(null,8,6,'eighth grade','2015-06-08 16:48:48','2015-06-08 16:48:48'),
(null,8,7,'Oitavo Ano Fundamental','2015-06-08 16:53:57','2015-06-08 16:53:57'),
(null,9,6,'ninth grade','2015-06-08 16:48:57','2015-06-08 16:48:57'),
(null,9,7,'Nono Ano Fundamental','2015-06-08 16:54:08','2015-06-08 16:54:08'),
(null,10,6,'tenth grade','2015-06-08 16:49:04','2015-06-08 16:49:04'),
(null,10,7,'Primeiro Ano Ensino Médio','2015-06-08 16:55:39','2015-06-08 16:55:39'),
(null,11,6,'eleventh grade','2015-06-08 16:49:20','2015-06-08 16:49:20'),
(null,11,7,'Segundo Ano Ensino Médio','2015-06-08 16:55:50','2015-06-08 16:55:50'),
(null,12,6,'twelfth grade','2015-06-08 16:49:32','2015-06-08 16:49:32'),
(null,12,7,'Terceiro Ano Ensino Médio','2015-06-08 16:55:57','2015-06-08 16:55:57'),
(null,1,8,'Year 2','2015-06-08 15:47:30','2015-06-08 15:47:30'),
(null,2,8,'Year 3','2015-06-08 15:47:30','2015-06-08 15:47:30'),
(null,3,8,'Year 4','2015-06-08 15:47:30','2015-06-08 15:47:30'),
(null,4,8,'Year 5','2015-06-08 15:47:30','2015-06-08 15:47:30'),
(null,5,8,'Year 6','2015-06-08 15:47:30','2015-06-08 15:47:30'),
(null,6,8,'Year 7','2015-06-08 15:47:30','2015-06-08 15:47:30'),
(null,7,8,'Year 8','2015-06-08 15:47:30','2015-06-08 15:47:30'),
(null,8,8,'Year 9','2015-06-08 15:47:30','2015-06-08 15:47:30'),
(null,9,8,'Year 10','2015-06-08 15:47:30','2015-06-08 15:47:30'),
(null,10,8,'Year 11','2015-06-08 15:47:30','2015-06-08 15:47:30'),
(null,11,8,'Year 12','2015-06-08 15:47:30','2015-06-08 15:47:30'),
(null,12,8,'Year 13','2015-06-08 15:47:30','2015-06-08 15:47:30');
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;










/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-08 19:00:33
