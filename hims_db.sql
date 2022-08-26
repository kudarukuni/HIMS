-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: hms
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `city_state`
--

DROP TABLE IF EXISTS `city_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city_state` (
  `city` varchar(30) NOT NULL,
  `state` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`city`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_state`
--

LOCK TABLES `city_state` WRITE;
/*!40000 ALTER TABLE `city_state` DISABLE KEYS */;
INSERT INTO `city_state` VALUES ('Nembudzia','Gokwe'),('Mutora','Gokwe'),('Musadzi','Gokwe'),('Gandawaroyi','Gokwe'),('Chodha','Gokwe'),('Gumunyu','Gokwe');
/*!40000 ALTER TABLE `city_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complain`
--

DROP TABLE IF EXISTS `complain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complain` (
  `id` int(11) DEFAULT NULL,
  `dof` date DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complain`
--

LOCK TABLES `complain` WRITE;
/*!40000 ALTER TABLE `complain` DISABLE KEYS */;
INSERT INTO `complain` VALUES (100,'2022-04-17','Munashe Mabaya','Management','Extremely Poor Management'),(101,'2022-04-18','Chief Mangwembe','Staff','Maintance memebr was not wearing any gloes in the bathroom'),(102,'2022-04-18','Sheruta Rwanai','Other','Gay patients seen inside the hospital, unacceptable'),(100,'2022-04-21','Mweya Unesu','Treatment Quality','enjoyed how my father recoered in the least time possible'),(101,'2022-04-21','Sister Ghoni','Facilities','Beautiful artifacts and buildings');
/*!40000 ALTER TABLE `complain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curr`
--

DROP TABLE IF EXISTS `curr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curr` (
  `d_id` int(11) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `patients` int(11) DEFAULT NULL,
  KEY `d_id` (`d_id`),
  CONSTRAINT `curr_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `doctor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `qual` varchar(30) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `exp` int(11) DEFAULT NULL,
  KEY `id` (`id`),
  CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `salary` double(12,2) NOT NULL,
  `type` varchar(20) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `employee_contact`
--

DROP TABLE IF EXISTS `employee_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_contact` (
  `id` int(11) NOT NULL,
  `contact` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `employee_contact_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_contact`
--

LOCK TABLES `employee_contact` WRITE;
/*!40000 ALTER TABLE `employee_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_email`
--

DROP TABLE IF EXISTS `employee_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_email` (
  `id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `employee_email_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_email`
--

LOCK TABLES `employee_email` WRITE;
/*!40000 ALTER TABLE `employee_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hardware`
--

DROP TABLE IF EXISTS `hardware`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hardware` (
  `model` varchar(20) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hardware`
--

LOCK TABLES `hardware` WRITE;
/*!40000 ALTER TABLE `hardware` DISABLE KEYS */;
INSERT INTO `hardware` VALUES ('M101','Medical Imaging',7),('M104','CT Scan',10),('M107','Medical Ultrasound',9),('M116','MRI',2),('M121','PET',6),('M133','XRAY',5),('M140','MRI',5);
/*!40000 ALTER TABLE `hardware` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `username` int(11) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  KEY `username` (`username`),
  CONSTRAINT `login_ibfk_1` FOREIGN KEY (`username`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nurse`
--

DROP TABLE IF EXISTS `nurse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nurse` (
  `id` int(11) DEFAULT NULL,
  `qual` varchar(20) DEFAULT NULL,
  `exp` int(11) DEFAULT NULL,
  KEY `id` (`id`),
  CONSTRAINT `nurse_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse`
--

LOCK TABLES `nurse` WRITE;
/*!40000 ALTER TABLE `nurse` DISABLE KEYS */;
INSERT INTO `nurse` VALUES (1008,'ER Nurse Aid',2);
/*!40000 ALTER TABLE `nurse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `doa` date NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `contact` bigint(20) DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL,
  `room` int(11) DEFAULT NULL,
  `dol` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`doa`),
  KEY `d_id` (`d_id`),
  CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `doctor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (10001,'Patient One','Female','2022-04-16','57 Gumunyu Rd','Nembudzia',263782452782,1004,101,'2022-04-18','DISCHARGED'),(10002,'Patient Two','Male','2022-04-18','43 Munyatipanzi Rd','Chodha',263782378957,1009,102,'2022-04-18','CURRENT'),(10003,'Mbanje Kunaka','TO BE UPDATED','2022-04-21','TO BE UPDATED','TO BE UPDATED',-1,1004,0,NULL,'EMERGENCY'),(10004,'Patient Four','Female','2022-04-16','68 Kure Rd','Gandawaroyi',263712900892,1004,101,'2022-04-16','CURRENT'),(10005,'Patient Fiwe','TO BE UPDATED','2022-04-18','TO BE UPDATED','TO BE UPDATED',-1,1009,0,NULL,'EMERGENCY'),(10006,'Smokie Mambanjere','TO BE UPDATED','2022-04-16','TO BE UPDATED','TO BE UPDATED',-1,1004,103,'2022-04-16','DISCHARGED');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record`
--

DROP TABLE IF EXISTS `record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record` (
  `id` int(11) NOT NULL,
  `d_id` int(11) DEFAULT NULL,
  `doa` date NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `medicines` varchar(200) DEFAULT NULL,
  `m_fee` double(10,2) DEFAULT NULL,
  `c_fee` double(10,2) DEFAULT NULL,
  `d_fee` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`,`doa`),
  KEY `d_id` (`d_id`),
  CONSTRAINT `record_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `doctor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record`
--

LOCK TABLES `record` WRITE;
/*!40000 ALTER TABLE `record` DISABLE KEYS */;
INSERT INTO `record` VALUES (10001,1004,'2022-04-16','This woman need a surgery on her punani that thing was starting to look like some monster','Punani Pills',672.81,830.42,1529.11),(10002,1009,'2022-04-18','This guy had an accident luckily the doctors sawed him up','Heat Rub',740.38,365.44,301.18),(10003,1004,'2022-04-21','TO BE UPDATED','TO BE UPDATED',5443.84,8712.87,10543.22),(10004,1004,'2022-04-16','She had an abortion and she is in ery critical condition after a successfull abortion','Nothing the mother is almost dead anyway ',0.00,0.00,0.00),(10005,1009,'2022-04-18','TO BE UPDATED','TO BE UPDATED',0.00,0.00,0.00),(10006,1004,'2018-04-16','TO BE UPDATED','TO BE UPDATED',0.00,0.00,0.00);
/*!40000 ALTER TABLE `record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `patients` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `server`
--

DROP TABLE IF EXISTS `server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server` (
  `email` varchar(50) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL,
  `proxy` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server`
--

LOCK TABLES `server` WRITE;
/*!40000 ALTER TABLE `server` DISABLE KEYS */;
INSERT INTO `server` VALUES ('hmanagerserver@gmail.com','hmanager','172.31.1.5:8080');
/*!40000 ALTER TABLE `server` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-07 23:41:43