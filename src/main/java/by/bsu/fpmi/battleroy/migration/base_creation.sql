-- MySQL dump 10.13  Distrib 5.6.25, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: workout_monster
-- ------------------------------------------------------
-- Server version	5.6.25-0ubuntu0.15.04.1

USE workout_monster;

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
-- Table structure for table `MEMBER`
--

DROP TABLE IF EXISTS `MEMBER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MEMBER` (
  `MEMBER_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(20) NOT NULL,
  `LAST_NAME` varchar(20) NOT NULL,
  PRIMARY KEY (`MEMBER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MEMBER`
--

LOCK TABLES `MEMBER` WRITE;
/*!40000 ALTER TABLE `MEMBER` DISABLE KEYS */;
/*!40000 ALTER TABLE `MEMBER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PHOTO`
--

DROP TABLE IF EXISTS `PHOTO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PHOTO` (
  `PHOTO_ID` int(11) NOT NULL,
  `PHOTO_IMAGE_BYTES` blob NOT NULL,
  `FK_SPOT_ID` int(11) NOT NULL,
  PRIMARY KEY (`PHOTO_ID`),
  KEY `FK_SPOT_ID` (`FK_SPOT_ID`),
  CONSTRAINT `PHOTO_ibfk_1` FOREIGN KEY (`FK_SPOT_ID`) REFERENCES `SPOT` (`SPOT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PHOTO`
--

LOCK TABLES `PHOTO` WRITE;
/*!40000 ALTER TABLE `PHOTO` DISABLE KEYS */;
/*!40000 ALTER TABLE `PHOTO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REVIEW`
--

DROP TABLE IF EXISTS `REVIEW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REVIEW` (
  `REVIEW_ID` int(11) NOT NULL,
  `FK_REVIEW_CREATOR` int(11) NOT NULL,
  `REVIEW_TEXT` varchar(300) NOT NULL,
  `FK_SPOT_ID` int(11) NOT NULL,
  PRIMARY KEY (`REVIEW_ID`),
  KEY `FK_SPOT_ID` (`FK_SPOT_ID`),
  CONSTRAINT `REVIEW_ibfk_1` FOREIGN KEY (`FK_SPOT_ID`) REFERENCES `SPOT` (`SPOT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REVIEW`
--

LOCK TABLES `REVIEW` WRITE;
/*!40000 ALTER TABLE `REVIEW` DISABLE KEYS */;
/*!40000 ALTER TABLE `REVIEW` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SPOT`
--

DROP TABLE IF EXISTS `SPOT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SPOT` (
  `SPOT_ID` int(11) NOT NULL,
  `SPOT_NAME` varchar(20) NOT NULL,
  `SPOT_ADDRESS` varchar(50) DEFAULT NULL,
  `SPOT_LATITUDE` double NOT NULL,
  `SPOT_LONGITUDE` double NOT NULL,
  `FK_MEMBER_ID` int(11) NOT NULL,
  PRIMARY KEY (`SPOT_ID`),
  UNIQUE KEY `unique_SPOT_LONGITUDE_LATITUDE` (`SPOT_LONGITUDE`,`SPOT_LATITUDE`),
  KEY `FK_MEMBER_ID` (`FK_MEMBER_ID`),
  CONSTRAINT `SPOT_ibfk_1` FOREIGN KEY (`FK_MEMBER_ID`) REFERENCES `MEMBER` (`MEMBER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SPOT`
--

LOCK TABLES `SPOT` WRITE;
/*!40000 ALTER TABLE `SPOT` DISABLE KEYS */;
/*!40000 ALTER TABLE `SPOT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_CREDENTIALS`
--

DROP TABLE IF EXISTS `USER_CREDENTIALS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_CREDENTIALS` (
  `USER_NAME` varchar(20) NOT NULL,
  `PASSWORD` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`USER_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_CREDENTIALS`
--

LOCK TABLES `USER_CREDENTIALS` WRITE;
/*!40000 ALTER TABLE `USER_CREDENTIALS` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_CREDENTIALS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_ROLE`
--

DROP TABLE IF EXISTS `USER_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_ROLE` (
  `USER_ROLE_ID` int(11) NOT NULL,
  `ROLE` varchar(20) NOT NULL,
  `FK_USER_NAME` varchar(20) NOT NULL,
  PRIMARY KEY (`USER_ROLE_ID`),
  KEY `FK_USER_NAME` (`FK_USER_NAME`),
  CONSTRAINT `USER_ROLE_ibfk_1` FOREIGN KEY (`FK_USER_NAME`) REFERENCES `USER_CREDENTIALS` (`USER_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_ROLE`
--

LOCK TABLES `USER_ROLE` WRITE;
/*!40000 ALTER TABLE `USER_ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_ROLE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-25 21:46:20
