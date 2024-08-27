-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: b4_full_stack
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `bookingID` int NOT NULL AUTO_INCREMENT,
  `campID` int DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `paymentID` varchar(255) DEFAULT NULL,
  `person` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `bookingDate` date DEFAULT NULL,
  PRIMARY KEY (`bookingID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,102,'dzinextest@gmail.com','pay_Oh6nMQjUFLcIkA',2,3000,'2024-08-05'),(2,105,'radha@gmail.com','pay_OhUXDPBDvp6I6z',2,24000,'2024-08-06'),(3,102,'radha@gmail.com','pay_OhUYZSmTJPL2IE',1,1500,'2024-08-06'),(4,106,'radha@gmail.com','pay_Oj4yxr1wVsSUKY',1,5500,'2024-08-10'),(5,105,'kashishjuneja902@gmail.com','pay_Oj6DqA5qOxiAki',4,48000,'2024-08-10'),(6,105,'krishsingh240l@gmail.com','pay_Oj6EJ02XLJ1V0m',2,24000,'2024-08-10'),(7,105,'Sharique123456789011@gmail.com','pay_Oj6EThBr1tXRpO',1,12000,'2024-08-10'),(8,105,'vedantk604@gmail.com','pay_Oj6G0hW1EknZxb',1,12000,'2024-08-10'),(9,106,'kashishjuneja902@gmail.com','pay_Oj6KHjALwzvcdB',4,22000,'2024-08-10'),(10,105,'ak3162427@gmail.com','pay_Oj6L6dhovMTbbj',2,24000,'2024-08-10');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camp`
--

DROP TABLE IF EXISTS `camp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camp` (
  `campID` int NOT NULL AUTO_INCREMENT,
  `orgEmail` varchar(255) DEFAULT NULL,
  `campName` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `descp` longtext,
  `charges` int DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`campID`),
  KEY `campdelete_idx` (`orgEmail`),
  CONSTRAINT `campdelete` FOREIGN KEY (`orgEmail`) REFERENCES `organiser` (`email`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camp`
--

LOCK TABLES `camp` WRITE;
/*!40000 ALTER TABLE `camp` DISABLE KEYS */;
INSERT INTO `camp` VALUES (102,'ranchicamp@gmail.com','water sports',NULL,'Rishikesh','netarhat fall','2024-07-14','2024-07-15','all water sports acitivity',1500,'9090909090'),(103,'ranchicamp@gmail.com','Baloon Festival',NULL,'Jodhpur','fine sand','2024-07-28','2024-08-19','2000 per person. lodging fooding included',2000,'6565656565'),(104,'ranchicamp@gmail.com','Summer Camp',NULL,'Ranchi','tarang ','2024-07-29','2024-07-31','300 per person',300,'8787878787'),(105,'ranchicamp@gmail.com','sand festival',NULL,'Jodhpur','thar','2024-08-15','2024-07-22','all inculded',12000,'3434343434'),(106,'jaipurcamp@gmail.com','Explore Jaipur',NULL,'Jodhpur','jodhapur','2024-08-15','2024-08-19','xyzzzzzzz',5500,'454545467'),(108,'ranchicamp@gmail.com','Patratu Night Camp','Jharkhand',' Ranchi ','Patratu velly','2024-08-17','2024-08-17','night camping with snacks',600,'9898989898'),(109,'ranchicamp@gmail.com','tagore hill camp','Jharkhand',' Ranchi ','tagore hill','2024-08-17','2024-08-19','camping',300,'9898989898');
/*!40000 ALTER TABLE `camp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camp_photo`
--

DROP TABLE IF EXISTS `camp_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camp_photo` (
  `campPhotoID` int NOT NULL AUTO_INCREMENT,
  `campID` int DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`campPhotoID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camp_photo`
--

LOCK TABLES `camp_photo` WRITE;
/*!40000 ALTER TABLE `camp_photo` DISABLE KEYS */;
INSERT INTO `camp_photo` VALUES (2,103,'1721369626.jpg'),(3,102,'1721656166.jpg'),(4,103,'1721656234.jpg'),(5,103,'1721656247.jpg'),(6,105,'1722319846.jpg'),(7,106,'1723267222.jpg'),(8,108,'1723441619.jpg'),(10,109,'1723441687.jpg');
/*!40000 ALTER TABLE `camp_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organiser`
--

DROP TABLE IF EXISTS `organiser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organiser` (
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `address` text,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organiser`
--

LOCK TABLES `organiser` WRITE;
/*!40000 ALTER TABLE `organiser` DISABLE KEYS */;
INSERT INTO `organiser` VALUES ('jaipurcamp','jaipurcamp@gmail.com','8989899889','jaipur','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4'),('RanchiCamp','ranchicamp@gmail.com','7676767676','lalpur ranchi','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4');
/*!40000 ALTER TABLE `organiser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `reviewID` int NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) DEFAULT NULL,
  `campID` int DEFAULT NULL,
  `comment` mediumtext,
  `star` int DEFAULT NULL,
  PRIMARY KEY (`reviewID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'radha@gmail.com',108,'very nice service.',4),(2,'dzinextest@gmail.com',108,'very very nice experience',5),(3,'dzinextest@gmail.com',108,'fair service',3),(4,'dzinextest@gmail.com',108,'worst service',1);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(12) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('ABHISHEKKUMAR','ak3162427@gmail.com','7319719016','cc4bc9cce2bf34d82e0d1515dafcc5b5d95030882c4e54ff68418a7364a57feb'),('ajay','dzinextest@gmail.com','2345674534','5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5'),('kashish','kashishjuneja902@gmail.com','7004514045','26068f894ab723ca76231abddb1d6fcee83893d649fa992b0d7823ce9fb73bba'),('krishsingh','krishsingh240l@gmail.com','9155169544','7e071fd9b023ed8f18458a73613a0834f6220bd5cc50357ba3493c6040a9ea8c'),('navya','nehakhirbaat@gmail.com','7004956500','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f'),('navya','nehakhirbaatello@gmail.com','6767676767','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4'),('NIKITa','nikitadolai1@gmail.com','6283996331','5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5'),('radha','radha@gmail.com','2345886582','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4'),('hrishita','rajhrishita80@gmail.com','9334390176','4507bec14fd6373677f1c5018bb768f57e65e65e4a9f06dea5b64276537b5bde'),('Shariquejaffri','Sharique123456789011@gmail.com','8252085319','5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5'),('vedant','vedantk604@gmail.com','7970879858','e2334de2b40e21f2cc8ae79b6d9b4e304e3a0dde9ebfc2c421072732afc8f908');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-27 11:15:55
