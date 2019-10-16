-- MySQL dump 10.17  Distrib 10.3.15-MariaDB, for debian-linux-gnueabihf (armv8l)
--
-- Host: localhost    Database: db_queuing
-- ------------------------------------------------------
-- Server version	10.3.15-MariaDB-1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `queue_logs`
--

DROP TABLE IF EXISTS `queue_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queue_logs` (
  `q_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `numb` int(11) DEFAULT NULL,
  `purp_id` int(11) DEFAULT NULL,
  `win_no` int(11) DEFAULT NULL,
  `user_info_id` int(11) DEFAULT NULL,
  `date_printed` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`q_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queue_logs`
--

LOCK TABLES `queue_logs` WRITE;
/*!40000 ALTER TABLE `queue_logs` DISABLE KEYS */;
INSERT INTO `queue_logs` VALUES (1,1,3,2,1,'2019-07-10 07:50:46'),(2,2,3,2,2,'2019-07-11 07:50:46'),(3,2,3,2,1,'2019-07-13 07:50:46'),(4,1,2,1,1,'2019-07-14 07:50:46'),(5,2,2,1,1,'2019-07-15 07:50:46'),(6,3,3,1,1,'2019-07-16 07:50:46'),(7,1,2,1,2,'2019-07-17 07:50:46'),(8,2,14,1,2,'2019-07-18 07:50:46'),(9,2,14,1,1,'2019-08-01 07:50:46'),(10,2,14,1,1,'2019-08-02 07:50:46'),(11,2,14,1,2,'2019-08-03 07:50:46'),(12,2,14,1,3,'2019-08-04 07:50:46'),(13,3,2,1,4,'2019-08-05 07:50:46'),(14,4,2,1,1,'2019-08-11 07:50:46'),(15,5,2,1,2,'2019-08-12 07:50:46'),(16,6,2,1,3,'2019-08-13 07:50:46'),(17,7,2,1,4,'2019-08-15 07:50:46'),(18,8,2,1,1,'2019-09-01 07:50:46'),(19,10,14,1,2,'2019-09-02 07:50:46'),(20,11,14,1,3,'2019-09-03 07:50:46'),(21,12,14,1,4,'2019-09-04 07:50:46'),(22,9,14,1,1,'2019-09-05 07:50:46'),(23,13,14,1,2,'2019-09-06 07:50:46'),(24,3,3,2,3,'2019-09-07 07:50:46'),(25,14,14,1,4,'2019-09-08 07:50:46'),(26,15,1,1,1,'2019-09-09 07:50:46'),(27,16,1,1,2,'2019-09-10 07:50:46'),(28,17,1,1,3,'2019-09-11 07:50:46'),(29,18,1,1,4,'2019-09-12 07:50:46'),(30,19,1,1,1,'2019-09-13 07:50:46'),(31,20,1,1,2,'2019-09-14 07:50:46'),(32,21,4,1,3,'2019-09-15 07:50:46'),(33,22,2,1,4,'2019-09-16 07:50:46'),(34,23,2,1,1,'2019-09-17 07:50:46'),(35,24,4,1,2,'2019-09-18 07:50:46'),(36,25,3,1,3,'2019-09-19 07:50:46'),(37,26,4,1,1,'2019-10-12 07:50:46'),(38,10,8,2,2,'2019-10-12 07:51:14'),(39,11,8,2,2,'2019-10-12 09:48:21'),(40,0,1,1,1,'2019-10-12 10:33:11'),(41,2,1,1,1,'2019-10-15 03:44:21'),(42,1,1,1,1,'2019-10-15 04:04:19'),(43,2,1,1,1,'2019-10-15 04:04:49'),(44,3,1,1,1,'2019-10-15 05:26:28'),(45,4,1,1,1,'2019-10-15 05:32:44'),(46,5,1,1,1,'2019-10-15 05:34:53'),(47,6,1,1,1,'2019-10-15 05:35:39'),(48,10,1,1,1,'2019-10-15 05:37:09'),(49,11,1,1,1,'2019-10-15 05:38:28'),(50,7,1,1,1,'2019-10-15 05:41:08'),(51,8,1,1,1,'2019-10-15 05:41:16'),(52,9,1,1,1,'2019-10-15 05:41:17'),(53,12,6,1,1,'2019-10-15 06:05:36'),(54,1,6,1,1,'2019-10-15 06:08:33'),(55,2,5,1,1,'2019-10-15 15:01:38'),(56,2,1,1,1,'2019-10-16 03:23:07'),(57,3,6,1,1,'2019-10-16 03:39:29'),(58,4,3,1,1,'2019-10-16 03:56:01'),(59,5,6,1,1,'2019-10-16 03:57:04'),(60,10,2,1,1,'2019-10-16 04:05:28'),(61,6,2,1,1,'2019-10-16 04:05:31'),(62,7,2,1,1,'2019-10-16 04:05:35'),(63,8,3,1,1,'2019-10-16 04:05:40'),(64,9,2,1,1,'2019-10-16 04:05:46'),(65,2,3,1,1,'2019-10-16 05:49:48'),(66,3,2,1,1,'2019-10-16 05:49:49'),(67,4,2,1,1,'2019-10-16 05:49:51'),(68,5,3,1,1,'2019-10-16 05:49:54'),(69,6,2,1,1,'2019-10-16 05:49:56'),(70,7,2,1,1,'2019-10-16 05:49:57'),(71,8,110,1,1,'2019-10-16 05:49:58'),(72,9,2,1,1,'2019-10-16 05:49:58'),(73,10,3,1,1,'2019-10-16 05:49:59'),(74,11,1,1,1,'2019-10-16 05:50:00'),(75,2,1,1,1,'2019-10-16 05:51:15'),(76,3,1,1,1,'2019-10-16 05:51:16'),(77,4,1,1,1,'2019-10-16 05:51:16'),(78,5,5,1,1,'2019-10-16 05:51:16'),(79,6,4,1,1,'2019-10-16 05:51:16'),(80,7,5,1,1,'2019-10-16 05:51:17'),(81,8,4,1,1,'2019-10-16 05:51:17'),(82,1,1,1,1,'2019-10-16 06:04:55'),(83,3,4,1,1,'2019-10-16 06:04:56'),(84,5,1,1,1,'2019-10-16 06:13:58'),(85,7,1,1,1,'2019-10-16 06:13:59'),(86,9,1,1,1,'2019-10-16 06:14:00'),(87,2,7,2,2,'2019-10-16 06:14:40');
/*!40000 ALTER TABLE `queue_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_department`
--

DROP TABLE IF EXISTS `tbl_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_department` (
  `dept_id` int(10) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) DEFAULT NULL,
  `dept_desc` text DEFAULT NULL,
  `date_added` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_department`
--

LOCK TABLES `tbl_department` WRITE;
/*!40000 ALTER TABLE `tbl_department` DISABLE KEYS */;
INSERT INTO `tbl_department` VALUES (1,'ELEM/SHS','Elementary/Senior High School Department','2019-09-24 21:06:05'),(2,'JHS','Junior High School','2019-09-24 21:26:42'),(3,'BSBA/CRIM DEPARTMENT','Bachelor of Science In Business Administration/Criminology DEPARTMENT','2019-09-24 21:27:01'),(4,'BEED','Bachcelor of Science in Education Department','2019-09-24 21:28:45'),(5,'BSOA/AOA,BSIT','Baschelor of Science in Offfice Administration/Bachelor of Science in Information Technology','2019-09-25 00:11:21'),(6,'Assessment 1','Assessment 1','2019-09-25 00:11:21'),(7,' Assessment 2',' Assessment 2','2019-09-25 00:21:23'),(8,'Cashier 8','Parents','2019-09-25 00:21:23'),(9,'Cashier 9','Students','2019-09-25 00:21:23'),(10,'Priority Window','Person with Disability/Pregnant/Senior Citizen','2019-10-03 06:04:57');
/*!40000 ALTER TABLE `tbl_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_login`
--

DROP TABLE IF EXISTS `tbl_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_login` (
  `log_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_info_id` int(10) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `passwd` varchar(255) DEFAULT NULL,
  `utype` int(1) DEFAULT NULL,
  `date_added` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_login`
--

LOCK TABLES `tbl_login` WRITE;
/*!40000 ALTER TABLE `tbl_login` DISABLE KEYS */;
INSERT INTO `tbl_login` VALUES (1,3,'root','admin1234',0,'2019-09-24 17:13:10'),(2,1,'gega','uno1234',1,'2019-09-25 00:44:35'),(3,2,'veloz','vickyveloz',1,'2019-10-03 10:21:31'),(6,5,'user','user1234',1,'2019-10-14 07:10:38'),(7,4,'registrar','registrar1234',1,'2019-10-14 07:12:13'),(8,1,'ladesma','1234',1,'2019-10-14 07:19:00');
/*!40000 ALTER TABLE `tbl_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_printed`
--

DROP TABLE IF EXISTS `tbl_printed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_printed` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `win_no` int(10) DEFAULT NULL,
  `que_number` int(11) DEFAULT NULL,
  `purp_id` int(11) DEFAULT NULL,
  `date_added` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_printed`
--

LOCK TABLES `tbl_printed` WRITE;
/*!40000 ALTER TABLE `tbl_printed` DISABLE KEYS */;
INSERT INTO `tbl_printed` VALUES (4,2,3,7,'2019-10-16 06:05:16'),(8,3,1,24,'2019-10-16 06:12:34'),(9,3,3,24,'2019-10-16 06:12:36'),(10,3,5,24,'2019-10-16 06:12:48'),(11,3,6,24,'2019-10-16 06:13:15'),(12,3,7,24,'2019-10-16 06:13:21'),(13,2,3,7,'2019-10-16 06:13:28'),(14,2,4,7,'2019-10-16 06:13:32'),(15,4,1,30,'2019-10-16 06:28:24');
/*!40000 ALTER TABLE `tbl_printed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_purpose`
--

DROP TABLE IF EXISTS `tbl_purpose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_purpose` (
  `purp_id` int(11) NOT NULL AUTO_INCREMENT,
  `purpose_name` varchar(255) DEFAULT NULL,
  `purpose_desc` text DEFAULT NULL,
  `win_no` int(11) DEFAULT NULL,
  `date_added` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`purp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_purpose`
--

LOCK TABLES `tbl_purpose` WRITE;
/*!40000 ALTER TABLE `tbl_purpose` DISABLE KEYS */;
INSERT INTO `tbl_purpose` VALUES (1,' Enrollment','Elementary/Senior High School Enrollment',1,'2019-10-03 11:40:29'),(2,' Grades','Elementary/High School/Senior High School Grades',1,'2019-10-03 11:40:29'),(3,' Form 137','Elementary /High School/Senior High SchoolForm 137',1,'2019-10-03 11:52:52'),(4,'  Good Moral','Elementary/High School/Senior High School Good Moral',1,'2019-10-03 11:52:52'),(5,'Certificate of Enrollment','Elementary /High School/Senior High SchoolDiploma',1,'2019-10-03 11:52:52'),(6,' GWA','Elementary /High School/Senior High SchoolGWA',1,'2019-10-03 11:52:52'),(7,'Junior High School Grades','Junior High School Grades',2,'2019-10-03 11:55:09'),(8,'Junior High School Enrollment','Junior High School Enrollment',2,'2019-10-03 11:55:09'),(9,'Junior High School Good Moral','Junior High School Good Moral',2,'2019-10-03 11:55:09'),(10,'Junior High School Certificate of Enrollment','Junior High School Certificate of Enrollment',2,'2019-10-03 11:56:25'),(11,'Junior High School Form 137','Junior High School Form 137',2,'2019-10-03 11:56:26'),(12,'Junior High School  GWA','Junior High School  GWA',2,'2019-10-03 11:56:26'),(13,'Junior High School  Diploma','Junior High School  Diploma',2,'2019-10-03 11:56:48'),(24,'College 1 Study Load ','College  Study Load',3,'2019-10-03 12:09:26'),(25,'College 1 Good Moral','College  Good Mora',3,'2019-10-03 12:09:26'),(26,'College 1  Certificate of Enrollment','College   Certificate of Enrollment',3,'2019-10-03 12:09:26'),(27,'College 1  Transcript of Record','College   Transcript of Record',3,'2019-10-03 12:09:26'),(28,'College 1  GWA','College   GWA',3,'2019-10-03 12:09:26'),(29,'College 1 Diploma','College  Diploma',3,'2019-10-03 12:09:26'),(30,'College 2 Enrollment','College  Enrollment',4,'2019-10-03 12:09:26'),(31,'College 2 Entrance Exam','College  Entrance Exam',4,'2019-10-03 12:09:26'),(32,'College 2 Grades','College  Grades',4,'2019-10-03 12:09:26'),(33,'College 2 Study Load','College  Study Load',4,'2019-10-03 12:09:26'),(34,'College 2 Good Moral','College  Good Moral',4,'2019-10-03 12:09:26'),(35,'College 2  Certificate of Enrollment','College   Certificate of Enrollment',4,'2019-10-03 12:09:26'),(36,'College 2  Transcript of Record','College  Transcript of Record',4,'2019-10-03 12:09:26'),(71,'College 2 GWA','College  GWA',4,'2019-10-03 12:09:26'),(72,'College 2 Diploma','College  Diploma',4,'2019-10-03 12:09:26'),(81,'Assessment 1 Account Slip','Assessment  Statement of Accounts',6,'2019-10-03 12:22:18'),(82,'Assessment 2 Account Slip','Assessment   Statement of Accounts',7,'2019-10-03 12:22:18'),(83,'Cashier 1 Parents  Tuition Fees','Cashier  Parents  Tuition Fees',8,'2019-10-03 12:22:18'),(84,'Cashier 1 Books and etc','Cashier  Books and etc',8,'2019-10-03 12:22:19'),(85,'Cashier 2 Parents  Tuition Fees','Cashier Parents  Tuition Fees',9,'2019-10-03 12:22:19'),(86,'Cashier 2 Books and etc','Cashier  Books and etc',9,'2019-10-03 12:22:19'),(87,'College 1 Adding, Dropping Form','College  Adding, Dropping Form',4,'2019-10-03 12:23:25'),(88,'College 2 Adding, Dropping Form','College  Adding, Dropping Form',5,'2019-10-03 12:23:25'),(89,'Elementary Certificate Of Enrollment','Elementary Certificate Of Enrollment',3,'2019-10-03 12:29:37'),(90,'Assessment 1 Inquire','Assessment 1 Inquire',6,'2019-10-03 12:32:56'),(91,'Assessment 2 Inquire','Assessment 2 Inquire',7,'2019-10-03 12:32:56'),(92,'College 3 Study Load ','College Study Load ',5,'2019-10-03 13:50:58'),(93,'College 3 Good Moral','College Good Moral',5,'2019-10-03 13:50:58'),(94,'College 3 Enrollment','College  Enrollment',5,'2019-10-03 13:55:19'),(95,'College 3 Entrance Exam','College  Entrance Exam',5,'2019-10-03 13:55:19'),(96,'College 3  Transcript of Record','College   Transcript of Record',5,'2019-10-03 13:55:19'),(97,'College 3  Certificate of Enrollment','College Certificate of Enrollment',5,'2019-10-03 13:55:19'),(98,'College 3  GWA','College GWA',5,'2019-10-03 13:55:19'),(99,'College 3 Diploma','College Diploma',5,'2019-10-03 13:55:19'),(100,'College 3 Adding, Dropping Form','College  Adding, Dropping Form',5,'2019-10-03 13:55:19'),(101,'Priority Window Enrollment','Enrollment',10,'2019-10-15 08:21:54'),(102,'Priority Window Certificate of Enrollment','Certificate of Enrollment',10,'2019-10-15 08:21:54'),(103,'Priority Window Study Load','Study Load',10,'2019-10-15 08:21:54'),(104,'Priority Window Grades','Grades',10,'2019-10-15 08:21:54'),(105,'Priority Window GWA','GWA',10,'2019-10-15 08:21:54'),(106,'Priority Window TOR','Trabsccript of Records',10,'2019-10-15 08:21:54'),(107,'Priority Window Diploma','Diploma',10,'2019-10-15 08:21:54'),(108,'Priority Window Tuition Fees','Tuition Fee',10,'2019-10-15 08:21:54'),(109,'Priority Window Account Slip','Statement of Accounts',10,'2019-10-15 08:21:54'),(110,'Elementary/Senior High School College 1 Study Load ',' Account Slip',1,'2019-10-15 08:28:31'),(111,'College 1 Study Load ',NULL,NULL,'2019-10-15 08:31:02');
/*!40000 ALTER TABLE `tbl_purpose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_queues`
--

DROP TABLE IF EXISTS `tbl_queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_queues` (
  `que_id` int(11) NOT NULL AUTO_INCREMENT,
  `win_no` int(11) DEFAULT NULL,
  `numb` int(11) DEFAULT NULL,
  `purp_id` int(11) DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`que_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_queues`
--

LOCK TABLES `tbl_queues` WRITE;
/*!40000 ALTER TABLE `tbl_queues` DISABLE KEYS */;
INSERT INTO `tbl_queues` VALUES (3,1,2,NULL,'2019-10-16 06:04:55'),(4,1,4,NULL,'2019-10-16 06:04:56'),(6,2,3,7,'2019-10-16 06:05:16'),(7,1,6,1,'2019-10-16 06:11:50'),(8,1,8,1,'2019-10-16 06:11:51'),(9,1,10,1,'2019-10-16 06:11:55'),(10,3,2,24,'2019-10-16 06:12:34'),(11,3,4,24,'2019-10-16 06:12:36'),(12,3,6,24,'2019-10-16 06:12:48'),(13,3,7,24,'2019-10-16 06:13:15'),(14,3,8,24,'2019-10-16 06:13:21'),(15,2,4,7,'2019-10-16 06:13:28'),(16,2,5,7,'2019-10-16 06:13:32'),(17,1,6,NULL,'2019-10-16 06:13:58'),(18,1,8,NULL,'2019-10-16 06:13:59'),(19,1,10,NULL,'2019-10-16 06:14:00'),(20,2,3,NULL,'2019-10-16 06:14:40'),(21,4,2,30,'2019-10-16 06:28:24');
/*!40000 ALTER TABLE `tbl_queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_info`
--

DROP TABLE IF EXISTS `tbl_user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user_info` (
  `user_info_id` int(10) NOT NULL AUTO_INCREMENT,
  `dept_id` int(10) DEFAULT NULL,
  `user_fname` varchar(255) DEFAULT NULL,
  `user_mname` varchar(255) DEFAULT NULL,
  `user_lname` varchar(255) DEFAULT NULL,
  `win_no` int(11) DEFAULT NULL,
  `date_added` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`user_info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_info`
--

LOCK TABLES `tbl_user_info` WRITE;
/*!40000 ALTER TABLE `tbl_user_info` DISABLE KEYS */;
INSERT INTO `tbl_user_info` VALUES (1,1,'gage','cena','dalupere',1,'2019-10-12 07:08:30'),(2,2,'nova','d','veloz',2,'2019-10-12 07:08:30'),(3,3,'Tita','Villarta','Garrido',3,'2019-10-12 07:08:30'),(4,4,'asses','s','registrar1',4,'2019-10-12 07:08:30'),(5,5,'yoyo','cena','Me',5,'2019-10-12 07:08:30'),(6,8,'Jimvoy','Gwapo','Melegrito',1,'2019-10-15 04:37:44'),(7,10,'Antoniette','China Oil','Ladesma',1,'2019-10-15 05:16:05');
/*!40000 ALTER TABLE `tbl_user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_window`
--

DROP TABLE IF EXISTS `tbl_window`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_window` (
  `win_no` int(11) NOT NULL AUTO_INCREMENT,
  `win_name` varchar(255) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`win_no`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_window`
--

LOCK TABLES `tbl_window` WRITE;
/*!40000 ALTER TABLE `tbl_window` DISABLE KEYS */;
INSERT INTO `tbl_window` VALUES (1,'Registrar Elementaryl/ Senior High School',1,'2019-09-24 20:09:10'),(2,'Registrar Junior High School',2,'2019-09-24 20:31:34'),(3,'Registrar BSBA/CRIM',3,'2019-09-24 23:08:26'),(4,'Registrar EDUCATION',4,'2019-09-24 23:08:26'),(5,'Registrar BSOA/AOA/BSIT',5,'2019-09-24 23:08:26'),(6,'Assessment 1',6,'2019-09-24 23:08:26'),(7,'Assessment 2 ',7,'2019-09-24 23:26:19'),(8,'Cashier 1 Parent',8,'2019-09-24 23:26:19'),(9,'Cashier Students',9,'2019-09-24 23:26:19'),(10,'Priority ',10,'2019-10-03 05:02:48');
/*!40000 ALTER TABLE `tbl_window` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `view_nextPrint`
--

DROP TABLE IF EXISTS `view_nextPrint`;
/*!50001 DROP VIEW IF EXISTS `view_nextPrint`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_nextPrint` (
  `numb` tinyint NOT NULL,
  `win_no` tinyint NOT NULL,
  `purp_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_purpDetails`
--

DROP TABLE IF EXISTS `view_purpDetails`;
/*!50001 DROP VIEW IF EXISTS `view_purpDetails`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_purpDetails` (
  `win_no` tinyint NOT NULL,
  `numb` tinyint NOT NULL,
  `dept_name` tinyint NOT NULL,
  `dept_desc` tinyint NOT NULL,
  `win_name` tinyint NOT NULL,
  `purpose_name` tinyint NOT NULL,
  `purpose_desc` tinyint NOT NULL,
  `purp_id` tinyint NOT NULL,
  `wwin_no` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_queDetails`
--

DROP TABLE IF EXISTS `view_queDetails`;
/*!50001 DROP VIEW IF EXISTS `view_queDetails`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_queDetails` (
  `numb` tinyint NOT NULL,
  `dept_id` tinyint NOT NULL,
  `date_added` tinyint NOT NULL,
  `win_no` tinyint NOT NULL,
  `dept_name` tinyint NOT NULL,
  `dept_desc` tinyint NOT NULL,
  `win_name` tinyint NOT NULL,
  `wwin_no` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_queMonthly`
--

DROP TABLE IF EXISTS `view_queMonthly`;
/*!50001 DROP VIEW IF EXISTS `view_queMonthly`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_queMonthly` (
  `qTotal` tinyint NOT NULL,
  `qMonth` tinyint NOT NULL,
  `qYear` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_quePurpMonth`
--

DROP TABLE IF EXISTS `view_quePurpMonth`;
/*!50001 DROP VIEW IF EXISTS `view_quePurpMonth`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_quePurpMonth` (
  `qTotal` tinyint NOT NULL,
  `qMonth` tinyint NOT NULL,
  `qYear` tinyint NOT NULL,
  `purp_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_queWinMonth`
--

DROP TABLE IF EXISTS `view_queWinMonth`;
/*!50001 DROP VIEW IF EXISTS `view_queWinMonth`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_queWinMonth` (
  `qTotal` tinyint NOT NULL,
  `qMonth` tinyint NOT NULL,
  `qMonthNum` tinyint NOT NULL,
  `qYear` tinyint NOT NULL,
  `win_no` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_queues`
--

DROP TABLE IF EXISTS `view_queues`;
/*!50001 DROP VIEW IF EXISTS `view_queues`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_queues` (
  `win_no` tinyint NOT NULL,
  `numb` tinyint NOT NULL,
  `date_added` tinyint NOT NULL,
  `dept_id` tinyint NOT NULL,
  `win_name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_userInfo`
--

DROP TABLE IF EXISTS `view_userInfo`;
/*!50001 DROP VIEW IF EXISTS `view_userInfo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_userInfo` (
  `user_info_id` tinyint NOT NULL,
  `user_fname` tinyint NOT NULL,
  `user_mname` tinyint NOT NULL,
  `user_lname` tinyint NOT NULL,
  `dept_id` tinyint NOT NULL,
  `dept_name` tinyint NOT NULL,
  `dept_desc` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_userInfoDetails`
--

DROP TABLE IF EXISTS `view_userInfoDetails`;
/*!50001 DROP VIEW IF EXISTS `view_userInfoDetails`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_userInfoDetails` (
  `user_info_id` tinyint NOT NULL,
  `user_fname` tinyint NOT NULL,
  `user_mname` tinyint NOT NULL,
  `user_lname` tinyint NOT NULL,
  `dept_id` tinyint NOT NULL,
  `dept_desc` tinyint NOT NULL,
  `dept_name` tinyint NOT NULL,
  `win_no` tinyint NOT NULL,
  `win_name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_nextPrint`
--

/*!50001 DROP TABLE IF EXISTS `view_nextPrint`*/;
/*!50001 DROP VIEW IF EXISTS `view_nextPrint`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_nextPrint` AS select min(`tbl_printed`.`que_number`) AS `numb`,`tbl_printed`.`win_no` AS `win_no`,`tbl_printed`.`purp_id` AS `purp_id` from `tbl_printed` group by `tbl_printed`.`win_no` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_purpDetails`
--

/*!50001 DROP TABLE IF EXISTS `view_purpDetails`*/;
/*!50001 DROP VIEW IF EXISTS `view_purpDetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_purpDetails` AS select `view_queDetails`.`win_no` AS `win_no`,`view_queDetails`.`numb` AS `numb`,`view_queDetails`.`dept_name` AS `dept_name`,`view_queDetails`.`dept_desc` AS `dept_desc`,`view_queDetails`.`win_name` AS `win_name`,`tbl_purpose`.`purpose_name` AS `purpose_name`,`tbl_purpose`.`purpose_desc` AS `purpose_desc`,`tbl_purpose`.`purp_id` AS `purp_id`,`view_queDetails`.`wwin_no` AS `wwin_no` from (`tbl_purpose` left join `view_queDetails` on(`view_queDetails`.`wwin_no` = `tbl_purpose`.`win_no`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_queDetails`
--

/*!50001 DROP TABLE IF EXISTS `view_queDetails`*/;
/*!50001 DROP VIEW IF EXISTS `view_queDetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_queDetails` AS select `view_queues`.`numb` AS `numb`,`tbl_department`.`dept_id` AS `dept_id`,`view_queues`.`date_added` AS `date_added`,`view_queues`.`win_no` AS `win_no`,`tbl_department`.`dept_name` AS `dept_name`,`tbl_department`.`dept_desc` AS `dept_desc`,`tbl_window`.`win_name` AS `win_name`,`tbl_window`.`win_no` AS `wwin_no` from (`tbl_window` left join (`tbl_department` left join `view_queues` on(`view_queues`.`dept_id` = `tbl_department`.`dept_id`)) on(`tbl_window`.`dept_id` = `tbl_department`.`dept_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_queMonthly`
--

/*!50001 DROP TABLE IF EXISTS `view_queMonthly`*/;
/*!50001 DROP VIEW IF EXISTS `view_queMonthly`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_queMonthly` AS select count(`queue_logs`.`numb`) AS `qTotal`,monthname(`queue_logs`.`date_printed`) AS `qMonth`,year(`queue_logs`.`date_printed`) AS `qYear` from `queue_logs` group by month(`queue_logs`.`date_printed`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_quePurpMonth`
--

/*!50001 DROP TABLE IF EXISTS `view_quePurpMonth`*/;
/*!50001 DROP VIEW IF EXISTS `view_quePurpMonth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_quePurpMonth` AS select count(`queue_logs`.`numb`) AS `qTotal`,monthname(`queue_logs`.`date_printed`) AS `qMonth`,year(`queue_logs`.`date_printed`) AS `qYear`,`queue_logs`.`purp_id` AS `purp_id` from `queue_logs` group by `queue_logs`.`purp_id`,monthname(`queue_logs`.`date_printed`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_queWinMonth`
--

/*!50001 DROP TABLE IF EXISTS `view_queWinMonth`*/;
/*!50001 DROP VIEW IF EXISTS `view_queWinMonth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_queWinMonth` AS select count(`queue_logs`.`numb`) AS `qTotal`,monthname(`queue_logs`.`date_printed`) AS `qMonth`,month(`queue_logs`.`date_printed`) AS `qMonthNum`,year(`queue_logs`.`date_printed`) AS `qYear`,`queue_logs`.`win_no` AS `win_no` from `queue_logs` group by `queue_logs`.`win_no`,monthname(`queue_logs`.`date_printed`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_queues`
--

/*!50001 DROP TABLE IF EXISTS `view_queues`*/;
/*!50001 DROP VIEW IF EXISTS `view_queues`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_queues` AS select `tbl_queues`.`win_no` AS `win_no`,max(`tbl_queues`.`numb`) AS `numb`,`tbl_queues`.`date_added` AS `date_added`,`tbl_window`.`dept_id` AS `dept_id`,`tbl_window`.`win_name` AS `win_name` from (`tbl_queues` join `tbl_window` on(`tbl_window`.`win_no` = `tbl_queues`.`win_no`)) group by `tbl_queues`.`win_no` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_userInfo`
--

/*!50001 DROP TABLE IF EXISTS `view_userInfo`*/;
/*!50001 DROP VIEW IF EXISTS `view_userInfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_userInfo` AS select `tbl_user_info`.`user_info_id` AS `user_info_id`,`tbl_user_info`.`user_fname` AS `user_fname`,`tbl_user_info`.`user_mname` AS `user_mname`,`tbl_user_info`.`user_lname` AS `user_lname`,`tbl_department`.`dept_id` AS `dept_id`,`tbl_department`.`dept_name` AS `dept_name`,`tbl_department`.`dept_desc` AS `dept_desc` from (`tbl_user_info` join `tbl_department` on(`tbl_department`.`dept_id` = `tbl_user_info`.`dept_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_userInfoDetails`
--

/*!50001 DROP TABLE IF EXISTS `view_userInfoDetails`*/;
/*!50001 DROP VIEW IF EXISTS `view_userInfoDetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_userInfoDetails` AS select `view_userInfo`.`user_info_id` AS `user_info_id`,`view_userInfo`.`user_fname` AS `user_fname`,`view_userInfo`.`user_mname` AS `user_mname`,`view_userInfo`.`user_lname` AS `user_lname`,`view_userInfo`.`dept_id` AS `dept_id`,`view_userInfo`.`dept_desc` AS `dept_desc`,`view_userInfo`.`dept_name` AS `dept_name`,`tbl_window`.`win_no` AS `win_no`,`tbl_window`.`win_name` AS `win_name` from (`view_userInfo` left join `tbl_window` on(`view_userInfo`.`dept_id` = `tbl_window`.`dept_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-16  8:38:31
