-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bank_accounts
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `acc_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Account Identification for BankAccounts',
  `acc_Regno` int(4) DEFAULT NULL COMMENT 'Registration number for Account (4 digits)',
  `acc_No` double DEFAULT NULL COMMENT 'Account Number for Account (10 digits)',
  `fk_client_ID` int(11) DEFAULT NULL COMMENT 'Foreign Key connected to Client ID in the table clients',
  `fk_type_ID` int(11) DEFAULT NULL COMMENT 'Foreign Key connected to type_ID',
  `fk_amount_ID` int(11) DEFAULT NULL COMMENT 'Foreign Key connected to amount_ID',
  PRIMARY KEY (`acc_ID`),
  KEY `fk_client_ID_idx` (`fk_client_ID`),
  KEY `fk_type_ID_idx` (`fk_type_ID`),
  KEY `fk_amount_ID_idx` (`fk_amount_ID`),
  CONSTRAINT `fk_amount_ID` FOREIGN KEY (`fk_amount_ID`) REFERENCES `amounts` (`amount_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_client_ID` FOREIGN KEY (`fk_client_ID`) REFERENCES `clients` (`client_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_type_ID` FOREIGN KEY (`fk_type_ID`) REFERENCES `accounttype` (`type_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci COMMENT='Table Data for Accounts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,6423,1010101010,3,1,NULL),(2,6423,2020202020,NULL,2,NULL),(3,6423,3030303030,NULL,1,NULL),(4,6423,4040404040,NULL,2,NULL),(5,6423,9988776655,5,1,NULL);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounttype`
--

DROP TABLE IF EXISTS `accounttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounttype` (
  `type_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Type Identification',
  `type_Name` varchar(50) COLLATE utf8_danish_ci DEFAULT NULL COMMENT 'Name of Type (Løn / Opsparing)',
  PRIMARY KEY (`type_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci COMMENT='Table for Type of accounts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounttype`
--

LOCK TABLES `accounttype` WRITE;
/*!40000 ALTER TABLE `accounttype` DISABLE KEYS */;
INSERT INTO `accounttype` VALUES (1,'Løn'),(2,'Opsparing');
/*!40000 ALTER TABLE `accounttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amounts`
--

DROP TABLE IF EXISTS `amounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `amounts` (
  `amount_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Amount Identification for said account',
  `amount_Sum` double DEFAULT NULL COMMENT 'The Sum of said account',
  PRIMARY KEY (`amount_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4201 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci COMMENT='Table for Amounts of said accounts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amounts`
--

LOCK TABLES `amounts` WRITE;
/*!40000 ALTER TABLE `amounts` DISABLE KEYS */;
INSERT INTO `amounts` VALUES (4200,NULL);
/*!40000 ALTER TABLE `amounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `client_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Client Identification number',
  `client_Name` varchar(50) COLLATE utf8_danish_ci DEFAULT NULL COMMENT 'Client name (surname and lastname)',
  PRIMARY KEY (`client_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci COMMENT='Table for Clients';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Liselotte'),(2,'Lasse'),(3,'Michael Hansen'),(5,'Lars Andersen');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-28 10:09:08
