-- MySQL dump 10.13  Distrib 8.0.2-dmr, for Win64 (x86_64)
--
-- Host: localhost    Database: student_info
-- ------------------------------------------------------
-- Server version	8.0.2-dmr-log

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
-- Table structure for table `admission`
--

DROP TABLE IF EXISTS `admission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admission` (
  `Admission_ID` int(11) NOT NULL,
  `Admission_Date` date DEFAULT NULL,
  `Admission_Status` varchar(30) DEFAULT NULL,
  `Phone` varchar(12) DEFAULT NULL,
  `Student_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Admission_ID`),
  KEY `Admission_Student` (`Student_ID`),
  CONSTRAINT `Admission_Student` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admission`
--

LOCK TABLES `admission` WRITE;
/*!40000 ALTER TABLE `admission` DISABLE KEYS */;
INSERT INTO `admission` VALUES (1,'2022-09-01','Accepted','555-1234',101),(2,'2022-09-01','Accepted','555-5678',102),(3,'2022-09-02','Paid','555-9012',103);
/*!40000 ALTER TABLE `admission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `attendance` (
  `Attendance_ID` int(11) NOT NULL,
  `Attendance_Date` date DEFAULT NULL,
  `Student_ID` int(11) DEFAULT NULL,
  `Student_Present` varchar(20) DEFAULT NULL,
  `Student_Absent` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Attendance_ID`),
  KEY `Attendance_Student` (`Student_ID`),
  CONSTRAINT `Attendance_Student` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,'2022-09-01',101,'Yes',NULL),(2,'2022-09-01',102,NULL,'Yes'),(3,'2022-09-02',103,'Yes',NULL);
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `course` (
  `Course_ID` int(11) NOT NULL,
  `Course_Name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Course_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Mathematics'),(2,'English'),(3,'Science');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrolment`
--

DROP TABLE IF EXISTS `enrolment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `enrolment` (
  `Course_ID` int(11) NOT NULL,
  `Student_ID` int(11) NOT NULL,
  PRIMARY KEY (`Course_ID`,`Student_ID`),
  KEY `Enrolment_Student` (`Student_ID`),
  CONSTRAINT `Enrolment_Course` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`course_id`),
  CONSTRAINT `Enrolment_Student` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrolment`
--

LOCK TABLES `enrolment` WRITE;
/*!40000 ALTER TABLE `enrolment` DISABLE KEYS */;
INSERT INTO `enrolment` VALUES (1,101),(2,102),(3,103);
/*!40000 ALTER TABLE `enrolment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `payment` (
  `Receipt_Number` int(11) NOT NULL,
  `Student_ID` int(11) DEFAULT NULL,
  `Amount_Paid` decimal(20,2) DEFAULT NULL,
  `Payment_Date` date DEFAULT NULL,
  PRIMARY KEY (`Receipt_Number`),
  KEY `Student_Payment` (`Student_ID`),
  CONSTRAINT `Student_Payment` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,101,1000.00,'2022-09-05'),(2,102,500.00,'2022-09-06'),(3,103,800.00,'2022-09-07'),(4,103,100.00,'2023-04-20');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_admission_status` AFTER INSERT ON `payment` FOR EACH ROW UPDATE Admission
  SET Admission_Status = 'Paid'
  WHERE Student_ID = NEW.Student_ID */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `professor` (
  `Prof_ID` int(11) NOT NULL,
  `Prof_Name` varchar(30) NOT NULL,
  PRIMARY KEY (`Prof_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'John Smith'),(2,'Mary Johnson'),(3,'David Lee');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student` (
  `Student_ID` int(11) NOT NULL,
  `Student_Class` varchar(10) DEFAULT NULL,
  `Student_Details_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (101,'10A',1),(102,'10B',2),(103,'10C',3);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_details`
--

DROP TABLE IF EXISTS `student_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student_details` (
  `Student_ID` int(11) NOT NULL,
  `Student_Name` varchar(20) DEFAULT NULL,
  `Student_Phone` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_details`
--

LOCK TABLES `student_details` WRITE;
/*!40000 ALTER TABLE `student_details` DISABLE KEYS */;
INSERT INTO `student_details` VALUES (1,'Alice Brown','555-1454'),(2,'Charlie Lee','555-9012'),(3,'Bob Green','555-5678');
/*!40000 ALTER TABLE `student_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teaches`
--

DROP TABLE IF EXISTS `teaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `teaches` (
  `Course_ID` int(11) NOT NULL,
  `Prof_ID` int(11) NOT NULL,
  PRIMARY KEY (`Course_ID`,`Prof_ID`),
  KEY `Teaches_Professor` (`Prof_ID`),
  CONSTRAINT `Teaches_Course` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`course_id`),
  CONSTRAINT `Teaches_Professor` FOREIGN KEY (`Prof_ID`) REFERENCES `professor` (`prof_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teaches`
--

LOCK TABLES `teaches` WRITE;
/*!40000 ALTER TABLE `teaches` DISABLE KEYS */;
INSERT INTO `teaches` VALUES (1,1),(2,2),(3,3);
/*!40000 ALTER TABLE `teaches` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-21 11:20:16
