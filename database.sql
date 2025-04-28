-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital2
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `fullname` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` varchar(3) DEFAULT NULL,
  `appoint_data` varchar(50) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phno` varchar(20) NOT NULL,
  `disease` varchar(255) NOT NULL,
  `doctor_id` int DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,1,'John Doe','Male','30','2024-11-08','johndoe@example.com','1234567890','Flu',5,'123 Main St, Springfield','Pending'),(2,2,'jen dermine','male','23','2024-11-08','jendermine@gmail.com','9907709560','fever',2,'Badgam','Pending'),(3,4,'jen dermine','male','34','2024-11-08','jendermine@gmail.com','99999','fever',5,'Badgam','Pending'),(4,4,'jen dermine','male','33','2024-11-01','jendermine@gmail.com','9907709560','cold',6,'Badgam','Pending'),(5,5,'suresh','male','22','2024-11-03','suresh@gmail.com','9999','cramp',6,'Chennai','Pending'),(6,5,'Suresh Kumar','male','22','2024-11-08','suresh@gmail.com','9999','cramp',5,'Chennai','Pending');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `qualification` varchar(255) NOT NULL,
  `specialist` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobno` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'Dr. Sarah Lee','1980-05-15','MBBS, MD','Cardiologist','sarahlee@example.com','9876543210','securePass123'),(2,'Dr. Priya Sharma','1985-09-22','MBBS, MD (Pediatrics)','Pediatrician','priyasharma@example.com','9123456789','PriyaSecure@123'),(3,'Dr. Anjali Verma','1983-08-12','MBBS, MD (Dermatology)','Dermatologist','anjaliverma@example.com','9876543210','AnjaliPass@123'),(4,'Dr. Rajesh Kumar','1975-02-25','MBBS, MS (Orthopedics)','Orthopedic Surgeon','rajeshkumar@example.com','9123456789','RajeshPass@456'),(5,'Dr. Suresh Mehta','1981-11-17','MBBS, MD (Cardiology)','Cardiologist','sureshmehta@example.com','9234567890','SureshPass@789'),(6,'Dr. Priya Singh','1990-05-03','BDS, MDS (Oral Surgery)','Dentist','priyasingh@example.com','9345678901','PriyaPass@101'),(7,'Dr. Rakesh Sharma','1987-12-29','MBBS, MD (Pediatrics)','Pediatrician','rakeshsharma@example.com','9456789012','RakeshPass@202');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialist`
--

DROP TABLE IF EXISTS `specialist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `spec_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialist`
--

LOCK TABLES `specialist` WRITE;
/*!40000 ALTER TABLE `specialist` DISABLE KEYS */;
/*!40000 ALTER TABLE `specialist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'jende','jend@mm.com','ae',NULL),(2,'jende','jendermine@gmail.com','ae',NULL),(3,'Jane Smith','janesmith@example.com','password123',NULL),(4,'jen dermine','newone@gmail.com','ae','999999999'),(5,'Suresh Kumar','suresh@gmail.com','ae','9999'),(6,'test','test@example.com','ae','12345678');
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

-- Dump completed on 2024-11-08 22:41:40
