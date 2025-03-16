-- MySQL dump 10.13  Distrib 8.0.41, for macos15 (arm64)
--
-- Host: localhost    Database: Project work
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Current Database: `Project work`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Project work` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `Project work`;

--
-- Table structure for table `Biglietto`
--

DROP TABLE IF EXISTS `Biglietto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Biglietto` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_Passeggero` int DEFAULT NULL,
  `ID_Tratta` int DEFAULT NULL,
  `Data_Acquisto` date DEFAULT NULL,
  `Prezzo` decimal(10,2) DEFAULT NULL,
  `Stato` enum('Valido','No') NOT NULL DEFAULT 'Valido',
  PRIMARY KEY (`ID`),
  KEY `ID_Passeggero` (`ID_Passeggero`),
  KEY `idx_biglietto_tratta` (`ID_Tratta`),
  CONSTRAINT `biglietto_ibfk_1` FOREIGN KEY (`ID_Passeggero`) REFERENCES `Passeggero` (`ID`),
  CONSTRAINT `biglietto_ibfk_2` FOREIGN KEY (`ID_Tratta`) REFERENCES `Tratta` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Biglietto`
--

LOCK TABLES `Biglietto` WRITE;
/*!40000 ALTER TABLE `Biglietto` DISABLE KEYS */;
INSERT INTO `Biglietto` VALUES (1,1,1,'2024-03-15',49.99,'Valido'),(2,2,2,'2024-03-16',59.99,'No');
/*!40000 ALTER TABLE `Biglietto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fermata`
--

DROP TABLE IF EXISTS `Fermata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Fermata` (
  `ID_Tratta` int NOT NULL,
  `ID_Stazione` int NOT NULL,
  `Ordine` int DEFAULT NULL,
  `Binario` int DEFAULT NULL,
  PRIMARY KEY (`ID_Tratta`,`ID_Stazione`),
  KEY `ID_Stazione` (`ID_Stazione`),
  CONSTRAINT `fermata_ibfk_1` FOREIGN KEY (`ID_Tratta`) REFERENCES `Tratta` (`ID`),
  CONSTRAINT `fermata_ibfk_2` FOREIGN KEY (`ID_Stazione`) REFERENCES `Stazione` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fermata`
--

LOCK TABLES `Fermata` WRITE;
/*!40000 ALTER TABLE `Fermata` DISABLE KEYS */;
INSERT INTO `Fermata` VALUES (1,1,1,8),(1,2,2,5);
/*!40000 ALTER TABLE `Fermata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Passeggero`
--

DROP TABLE IF EXISTS `Passeggero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Passeggero` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) DEFAULT NULL,
  `Cognome` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Email` (`Email`),
  KEY `idx_passeggero_email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Passeggero`
--

LOCK TABLES `Passeggero` WRITE;
/*!40000 ALTER TABLE `Passeggero` DISABLE KEYS */;
INSERT INTO `Passeggero` VALUES (1,'Mario','Rossi','mario.rossi@email.com','3331234567'),(2,'Luca','Bianchi','luca.bianchi@email.com','3349876543'),(3,'Anna','Verdi','anna.verdi@email.com','3355678912');
/*!40000 ALTER TABLE `Passeggero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Prenotazione`
--

DROP TABLE IF EXISTS `Prenotazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Prenotazione` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_Passeggero` int DEFAULT NULL,
  `ID_Biglietto` int DEFAULT NULL,
  `Data_Prenotazione` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_Biglietto` (`ID_Biglietto`),
  KEY `idx_prenotazione_passeggero` (`ID_Passeggero`),
  CONSTRAINT `prenotazione_ibfk_1` FOREIGN KEY (`ID_Passeggero`) REFERENCES `Passeggero` (`ID`),
  CONSTRAINT `prenotazione_ibfk_2` FOREIGN KEY (`ID_Biglietto`) REFERENCES `Biglietto` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Prenotazione`
--

LOCK TABLES `Prenotazione` WRITE;
/*!40000 ALTER TABLE `Prenotazione` DISABLE KEYS */;
INSERT INTO `Prenotazione` VALUES (1,1,1,'2024-03-15 07:00:00'),(2,2,2,'2024-03-16 08:00:00');
/*!40000 ALTER TABLE `Prenotazione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stazione`
--

DROP TABLE IF EXISTS `Stazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Stazione` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) DEFAULT NULL,
  `Città` varchar(100) DEFAULT NULL,
  `Via` varchar(255) DEFAULT NULL,
  `CAP_Stazione` varchar(10) DEFAULT NULL,
  `Codice_Stazione` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Nome` (`Nome`),
  UNIQUE KEY `Codice_Stazione` (`Codice_Stazione`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stazione`
--

LOCK TABLES `Stazione` WRITE;
/*!40000 ALTER TABLE `Stazione` DISABLE KEYS */;
INSERT INTO `Stazione` VALUES (1,'Roma Termini','Roma','Via Marsala 1','00185','RMT'),(2,'Milano Centrale','Milano','Piazza Duca d\'Aosta','20124','MILC');
/*!40000 ALTER TABLE `Stazione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tratta`
--

DROP TABLE IF EXISTS `Tratta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tratta` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_Stazione_Partenza` int DEFAULT NULL,
  `Durata` int DEFAULT NULL,
  `Costo` decimal(10,2) DEFAULT NULL,
  `Data_Partenza` date DEFAULT NULL,
  `Ora_Partenza` time DEFAULT NULL,
  `ID_Treno` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_Stazione_Partenza` (`ID_Stazione_Partenza`),
  KEY `ID_Treno` (`ID_Treno`),
  KEY `idx_tratta_data` (`Data_Partenza`),
  CONSTRAINT `tratta_ibfk_1` FOREIGN KEY (`ID_Stazione_Partenza`) REFERENCES `Stazione` (`ID`),
  CONSTRAINT `tratta_ibfk_2` FOREIGN KEY (`ID_Treno`) REFERENCES `Treno` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tratta`
--

LOCK TABLES `Tratta` WRITE;
/*!40000 ALTER TABLE `Tratta` DISABLE KEYS */;
INSERT INTO `Tratta` VALUES (1,1,180,49.99,'2024-03-15','08:00:00',1),(2,2,200,59.99,'2024-03-16','09:30:00',2);
/*!40000 ALTER TABLE `Tratta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Treno`
--

DROP TABLE IF EXISTS `Treno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Treno` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(50) DEFAULT NULL,
  `Capienza` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Treno`
--

LOCK TABLES `Treno` WRITE;
/*!40000 ALTER TABLE `Treno` DISABLE KEYS */;
INSERT INTO `Treno` VALUES (1,'Treno Alta Velocità',500),(2,'Treno Regionale',300);
/*!40000 ALTER TABLE `Treno` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-16 15:20:00
