-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: tutorialdb
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `capitals`
--

DROP TABLE IF EXISTS `capitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `capitals` (
  `country_code` varchar(2) NOT NULL,
  `capital` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capitals`
--

LOCK TABLES `capitals` WRITE;
/*!40000 ALTER TABLE `capitals` DISABLE KEYS */;
INSERT INTO `capitals` VALUES ('IN','Delhi'),('PK','Islamabad'),('CN','Beijing'),('BT','Thimphu'),('US','Washington DC'),('CA','Ottawa'),('AU','Canberra'),('ES','Madrid'),('IT','Rome'),('DE','Berlin'),('BR','Brasilia'),('UY','Montevideo');
/*!40000 ALTER TABLE `capitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `countries` (
  `country_code` varchar(2) NOT NULL,
  `country_name` varchar(100) NOT NULL,
  `region_id` int(11) NOT NULL,
  PRIMARY KEY (`country_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES ('AU','Australia',5),('BR','Brazil',4),('BT','Bhutan',1),('CA','Canada',3),('CN','China',1),('DE','Germany',2),('ES','Spain',2),('GB','Great Britain',2),('IN','India',1),('IT','Italy',2),('PK','Pakistan',1),('US','United States of America',3),('UY','Uruguay',4);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `european_union`
--

DROP TABLE IF EXISTS `european_union`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `european_union` (
  `country_code` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `european_union`
--

LOCK TABLES `european_union` WRITE;
/*!40000 ALTER TABLE `european_union` DISABLE KEYS */;
INSERT INTO `european_union` VALUES ('ES'),('IT'),('DE');
/*!40000 ALTER TABLE `european_union` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major_cities`
--

DROP TABLE IF EXISTS `major_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `major_cities` (
  `country_code` varchar(2) NOT NULL,
  `city` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major_cities`
--

LOCK TABLES `major_cities` WRITE;
/*!40000 ALTER TABLE `major_cities` DISABLE KEYS */;
INSERT INTO `major_cities` VALUES ('IN','Delhi'),('IN','Mumbai'),('IN','Kolkata'),('IN','Chennai'),('PK','Islamabad'),('PK','Karachi'),('PK','Lahore'),('CN','Beijing'),('BT','Thimphu'),('US','Washington DC'),('US','Boston'),('US','New York'),('US','Baltimore'),('CA','Ottawa'),('CA','Toronto'),('AU','Canberra'),('AU','Sydney'),('AU','Melbourne'),('AU','Perth'),('AU','Brisbane'),('ES','Madrid'),('ES','Barcelona'),('ES','Valencia'),('IT','Rome'),('IT','Milan'),('IT','Venice'),('IT','Florence'),('DE','Berlin'),('DE','Munich'),('DE','Frankfurt'),('DE','Cologne'),('BR','Brasilia'),('UY','Montevideo'),('BR','Rio de Janeiro');
/*!40000 ALTER TABLE `major_cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `regions` (
  `region_id` int(11) NOT NULL,
  `region_name` varchar(20) NOT NULL,
  PRIMARY KEY (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
INSERT INTO `regions` VALUES (1,'Asia'),(2,'Europe'),(3,'North America'),(4,'South America'),(5,'Australia');
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-24  3:31:54
