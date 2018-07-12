-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: java_fullstack_hibernate
-- ------------------------------------------------------
-- Server version	8.0.11

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
-- Table structure for table `delivery_address_entity`
--

DROP TABLE IF EXISTS `delivery_address_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `delivery_address_entity` (
  `delivery_address_entity_id` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone_number` varchar(100) DEFAULT NULL,
  `pin_code` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `landmark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`delivery_address_entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_address_entity`
--

LOCK TABLES `delivery_address_entity` WRITE;
/*!40000 ALTER TABLE `delivery_address_entity` DISABLE KEYS */;
INSERT INTO `delivery_address_entity` VALUES ('402881eb642ca95701642caadb4b0000','sdfermgio sdlkgms',NULL,'1234567','sdkmgfdkmb','sdfdsg','fdglmgf','fgfdg','dfmhklfgh'),('402881eb642ca95701642cae295a0001','sljdgldi sldkjg',NULL,'1234567','dfjngs','sjfhedlgsj','xjkvhbsf','dfkjgb','jklxg'),('402881eb647440b20164744bf1da0000','sdfgon',NULL,'1478523','sdklgj','dsfnj','dsfg','etwtew','sfsg'),('402881eb648f68f101648f6b50af0000','sdgfh5e',NULL,'1234567','wegeg','asft','dfhfhjrt','fgdjrtjy','sdgdrh'),('402881eb648f68f101648f71e4350001','wewter',NULL,'1234567','reyery','fwete','xfdh','reyrey','gfhgf');
/*!40000 ALTER TABLE `delivery_address_entity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-12 23:06:57
