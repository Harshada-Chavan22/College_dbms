CREATE DATABASE  IF NOT EXISTS `college` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `college`;
-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: college
-- ------------------------------------------------------
-- Server version	5.5.16

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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `fee` int(11) DEFAULT '10000',
  `instructor_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  UNIQUE KEY `course_name` (`course_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'CSE',10000,NULL),(2,'DS',5000,NULL),(3,'IT',6000,NULL),(4,'ENTC',4000,NULL);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marks` (
  `student_id` int(11) NOT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marks`
--

LOCK TABLES `marks` WRITE;
/*!40000 ALTER TABLE `marks` DISABLE KEYS */;
INSERT INTO `marks` VALUES (1,'OS',89),(2,'EFM',75),(3,'CN',90),(4,'AA',56),(5,'IOT',48);
/*!40000 ALTER TABLE `marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marks_1`
--

DROP TABLE IF EXISTS `marks_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marks_1` (
  `student_id` int(11) NOT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marks_1`
--

LOCK TABLES `marks_1` WRITE;
/*!40000 ALTER TABLE `marks_1` DISABLE KEYS */;
INSERT INTO `marks_1` VALUES (1,'OS',89),(2,'EFM',75),(3,'CN',90),(4,'AA',NULL),(5,'IOT',NULL);
/*!40000 ALTER TABLE `marks_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `branch` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Harshada','CSE'),(2,'Gauri','IT'),(3,'Mohini','ENTC'),(4,'Bharati','CIVIL'),(5,'Priti','CSE');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students_with_columns`
--

DROP TABLE IF EXISTS `students_with_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students_with_columns` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_with_columns`
--

LOCK TABLES `students_with_columns` WRITE;
/*!40000 ALTER TABLE `students_with_columns` DISABLE KEYS */;
INSERT INTO `students_with_columns` VALUES (1,'Harshada Chavan',22,'Computer Engineering','harshada@gmail.com','2026-03-03'),(2,'Mohini Patil',22,'ENTC','mohini@gmail.com','2026-03-03'),(3,'Rohit Lohar',20,'Computer Engineering','rohit@gmail.com','2026-03-03'),(4,'Priti Sharma',23,'Mechanical Engineering','priti@gmail.com','2026-03-03');
/*!40000 ALTER TABLE `students_with_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_marks`
--

DROP TABLE IF EXISTS `sub_marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_marks` (
  `student_id` int(11) NOT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_marks`
--

LOCK TABLES `sub_marks` WRITE;
/*!40000 ALTER TABLE `sub_marks` DISABLE KEYS */;
INSERT INTO `sub_marks` VALUES (1,'OS',89),(2,'EFM',75),(3,'CN',90),(4,'AA',88),(5,'IOT',45),(6,'DBMS',56),(7,'Java',66),(8,'AOA',77);
/*!40000 ALTER TABLE `sub_marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'college'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-09  1:23:13
