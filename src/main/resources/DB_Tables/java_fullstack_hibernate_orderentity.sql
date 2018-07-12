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
-- Table structure for table `orderentity`
--

DROP TABLE IF EXISTS `orderentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orderentity` (
  `order_id` varchar(100) NOT NULL,
  `item_id` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `delivery_address_delivery_address_entity_id` varchar(100) DEFAULT NULL,
  `order_date` varchar(100) DEFAULT NULL,
  `order_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `User_FK_idx` (`user_email`),
  KEY `Item_FK_idx` (`item_id`),
  KEY `Delivery_Address_FK_idx` (`delivery_address_delivery_address_entity_id`),
  CONSTRAINT `Delivery_Address_FK` FOREIGN KEY (`delivery_address_delivery_address_entity_id`) REFERENCES `delivery_address_entity` (`delivery_address_entity_id`),
  CONSTRAINT `Item_FK` FOREIGN KEY (`item_id`) REFERENCES `itementity` (`id`),
  CONSTRAINT `User_FK` FOREIGN KEY (`user_email`) REFERENCES `user` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderentity`
--

LOCK TABLES `orderentity` WRITE;
/*!40000 ALTER TABLE `orderentity` DISABLE KEYS */;
INSERT INTO `orderentity` VALUES ('A2731','I102','asd@sfg.com','402881eb647440b20164744bf1da0000','Sat Jul 07 16:01:31 IST 2018',3),('A8321','I103','arijitban6.1995@gamil.com','402881eb648f68f101648f6b50af0000','Thu Jul 12 22:25:32 IST 2018',3),('A8591','I104','arijitban6@yahoo.co.in','402881eb648f68f101648f71e4350001','Thu Jul 12 22:32:43 IST 2018',3);
/*!40000 ALTER TABLE `orderentity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-12 23:06:58
