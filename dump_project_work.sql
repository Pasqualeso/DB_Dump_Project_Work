-- MySQL dump 10.13  Distrib 9.2.0, for macos15.2 (arm64)
--
-- Host: localhost    Database: Project Work
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
-- Table structure for table `Arriva_A`
--

DROP TABLE IF EXISTS `Arriva_A`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Arriva_A` (
  `ID_Tratta` int NOT NULL,
  `ID_Stazione` int NOT NULL,
  PRIMARY KEY (`ID_Tratta`,`ID_Stazione`),
  KEY `idx_arriva_a_stazione` (`ID_Stazione`),
  CONSTRAINT `arriva_a_ibfk_1` FOREIGN KEY (`ID_Tratta`) REFERENCES `Tratta` (`ID_Tratta`),
  CONSTRAINT `arriva_a_ibfk_2` FOREIGN KEY (`ID_Stazione`) REFERENCES `Stazione` (`ID_Stazione`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Arriva_A`
--

LOCK TABLES `Arriva_A` WRITE;
/*!40000 ALTER TABLE `Arriva_A` DISABLE KEYS */;
INSERT INTO `Arriva_A` VALUES (10,1),(1,2),(2,3),(5,4),(3,6),(7,8),(4,9),(8,9),(6,10),(9,10);
/*!40000 ALTER TABLE `Arriva_A` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Assegna`
--

DROP TABLE IF EXISTS `Assegna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Assegna` (
  `ID_Biglietto` int NOT NULL,
  `ID_Posto` int DEFAULT NULL,
  PRIMARY KEY (`ID_Biglietto`),
  KEY `idx_assegna_posto` (`ID_Posto`),
  CONSTRAINT `assegna_ibfk_1` FOREIGN KEY (`ID_Biglietto`) REFERENCES `Biglietto` (`ID_Biglietto`),
  CONSTRAINT `assegna_ibfk_2` FOREIGN KEY (`ID_Posto`) REFERENCES `Posto` (`ID_Posto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Assegna`
--

LOCK TABLES `Assegna` WRITE;
/*!40000 ALTER TABLE `Assegna` DISABLE KEYS */;
INSERT INTO `Assegna` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `Assegna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Biglietto`
--

DROP TABLE IF EXISTS `Biglietto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Biglietto` (
  `ID_Biglietto` int NOT NULL AUTO_INCREMENT,
  `Data_E_Ora_Acquisto` datetime DEFAULT NULL,
  `Prezzo` decimal(10,2) DEFAULT NULL,
  `Stato` enum('Valido','No') NOT NULL DEFAULT 'Valido',
  PRIMARY KEY (`ID_Biglietto`),
  KEY `idx_biglietto_data` (`Data_E_Ora_Acquisto`),
  KEY `idx_biglietto_stato` (`Stato`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Biglietto`
--

LOCK TABLES `Biglietto` WRITE;
/*!40000 ALTER TABLE `Biglietto` DISABLE KEYS */;
INSERT INTO `Biglietto` VALUES (1,'2025-03-01 10:00:00',16.00,'Valido'),(2,'2025-03-02 10:00:00',17.00,'Valido'),(3,'2025-03-03 10:00:00',18.00,'Valido'),(4,'2025-03-04 10:00:00',19.00,'Valido'),(5,'2025-03-05 10:00:00',20.00,'Valido'),(6,'2025-03-06 10:00:00',21.00,'Valido'),(7,'2025-03-07 10:00:00',22.00,'Valido'),(8,'2025-03-08 10:00:00',23.00,'Valido'),(9,'2025-03-09 10:00:00',24.00,'Valido'),(10,'2025-03-10 10:00:00',25.00,'Valido');
/*!40000 ALTER TABLE `Biglietto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Parte_Da`
--

DROP TABLE IF EXISTS `Parte_Da`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Parte_Da` (
  `ID_Tratta` int NOT NULL,
  `ID_Stazione` int NOT NULL,
  PRIMARY KEY (`ID_Tratta`,`ID_Stazione`),
  KEY `idx_parte_da_stazione` (`ID_Stazione`),
  CONSTRAINT `parte_da_ibfk_1` FOREIGN KEY (`ID_Tratta`) REFERENCES `Tratta` (`ID_Tratta`),
  CONSTRAINT `parte_da_ibfk_2` FOREIGN KEY (`ID_Stazione`) REFERENCES `Stazione` (`ID_Stazione`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Parte_Da`
--

LOCK TABLES `Parte_Da` WRITE;
/*!40000 ALTER TABLE `Parte_Da` DISABLE KEYS */;
INSERT INTO `Parte_Da` VALUES (1,1),(7,1),(2,2),(9,2),(6,3),(3,4),(4,5),(10,5),(8,6),(5,7);
/*!40000 ALTER TABLE `Parte_Da` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Passeggero`
--

DROP TABLE IF EXISTS `Passeggero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Passeggero` (
  `ID_Passeggero` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) DEFAULT NULL,
  `Cognome` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID_Passeggero`),
  UNIQUE KEY `Email` (`Email`),
  KEY `idx_email` (`Email`),
  KEY `idx_cognome_nome` (`Cognome`,`Nome`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Passeggero`
--

LOCK TABLES `Passeggero` WRITE;
/*!40000 ALTER TABLE `Passeggero` DISABLE KEYS */;
INSERT INTO `Passeggero` VALUES (1,'Mario','Rossi','mario.rossi@example.com','3451234567'),(2,'Luca','Bianchi','luca.bianchi@example.com','3479876543'),(3,'Giulia','Verdi','giulia.verdi@example.com','3481122334'),(4,'Francesca','Neri','francesca.neri@example.com','3495566778'),(5,'Alessandro','Russo','alessandro.russo@example.com','3469988776'),(6,'Chiara','Romano','chiara.romano@example.com','3404455667'),(7,'Giorgio','Conti','giorgio.conti@example.com','3423344556'),(8,'Elena','Ferrari','elena.ferrari@example.com','3391239876'),(9,'Fabio','Marino','fabio.marino@example.com','3336677889'),(10,'Sara','Greco','sara.greco@example.com','3445566778');
/*!40000 ALTER TABLE `Passeggero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Percorre`
--

DROP TABLE IF EXISTS `Percorre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Percorre` (
  `ID_Treno` int NOT NULL,
  `ID_Tratta` int NOT NULL,
  `Data_E_Ora_Percorrenza` datetime NOT NULL,
  PRIMARY KEY (`ID_Treno`,`ID_Tratta`,`Data_E_Ora_Percorrenza`),
  KEY `ID_Tratta` (`ID_Tratta`),
  KEY `idx_percorre_data` (`Data_E_Ora_Percorrenza`),
  KEY `idx_percorre_treno` (`ID_Treno`),
  CONSTRAINT `percorre_ibfk_1` FOREIGN KEY (`ID_Treno`) REFERENCES `Treno` (`ID_Treno`),
  CONSTRAINT `percorre_ibfk_2` FOREIGN KEY (`ID_Tratta`) REFERENCES `Tratta` (`ID_Tratta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Percorre`
--

LOCK TABLES `Percorre` WRITE;
/*!40000 ALTER TABLE `Percorre` DISABLE KEYS */;
INSERT INTO `Percorre` VALUES (1,1,'2025-04-02 08:00:00'),(2,2,'2025-04-03 09:30:00'),(3,3,'2025-04-04 10:15:00'),(4,4,'2025-04-05 07:45:00'),(5,5,'2025-04-06 12:00:00'),(6,6,'2025-04-07 11:20:00'),(7,7,'2025-04-08 06:40:00'),(8,8,'2025-04-09 15:30:00'),(9,9,'2025-04-10 16:10:00'),(10,10,'2025-04-11 18:00:00');
/*!40000 ALTER TABLE `Percorre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Posto`
--

DROP TABLE IF EXISTS `Posto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Posto` (
  `ID_Posto` int NOT NULL AUTO_INCREMENT,
  `ID_Treno` int DEFAULT NULL,
  `Carrozza` int DEFAULT NULL,
  `Numero_Posto` int DEFAULT NULL,
  `Classe` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID_Posto`),
  KEY `idx_posto_treno` (`ID_Treno`),
  CONSTRAINT `posto_ibfk_1` FOREIGN KEY (`ID_Treno`) REFERENCES `Treno` (`ID_Treno`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Posto`
--

LOCK TABLES `Posto` WRITE;
/*!40000 ALTER TABLE `Posto` DISABLE KEYS */;
INSERT INTO `Posto` VALUES (1,1,1,1,'Economy'),(2,2,1,1,'Economy'),(3,3,1,1,'Economy'),(4,4,1,1,'Economy'),(5,5,1,1,'Economy'),(6,6,1,1,'Economy'),(7,7,1,1,'Economy'),(8,8,1,1,'Economy'),(9,9,1,1,'Economy'),(10,10,1,1,'Economy');
/*!40000 ALTER TABLE `Posto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Prenotazione`
--

DROP TABLE IF EXISTS `Prenotazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Prenotazione` (
  `ID_Prenotazione` int NOT NULL AUTO_INCREMENT,
  `Data_Prenotazione` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ID_Passeggero` int DEFAULT NULL,
  PRIMARY KEY (`ID_Prenotazione`),
  KEY `idx_prenotazione_data` (`Data_Prenotazione`),
  KEY `idx_prenotazione_passeggero` (`ID_Passeggero`),
  CONSTRAINT `prenotazione_ibfk_1` FOREIGN KEY (`ID_Passeggero`) REFERENCES `Passeggero` (`ID_Passeggero`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Prenotazione`
--

LOCK TABLES `Prenotazione` WRITE;
/*!40000 ALTER TABLE `Prenotazione` DISABLE KEYS */;
INSERT INTO `Prenotazione` VALUES (1,'2025-04-13 15:00:54',1),(2,'2025-04-13 15:00:54',2),(3,'2025-04-13 15:00:54',3),(4,'2025-04-13 15:00:54',4),(5,'2025-04-13 15:00:54',5),(6,'2025-04-13 15:00:54',6),(7,'2025-04-13 15:00:54',7),(8,'2025-04-13 15:00:54',8),(9,'2025-04-13 15:00:54',9),(10,'2025-04-13 15:00:54',10);
/*!40000 ALTER TABLE `Prenotazione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Riguarda`
--

DROP TABLE IF EXISTS `Riguarda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Riguarda` (
  `ID_Prenotazione` int NOT NULL,
  `ID_Biglietto` int NOT NULL,
  PRIMARY KEY (`ID_Prenotazione`,`ID_Biglietto`),
  KEY `idx_riguarda_biglietto` (`ID_Biglietto`),
  CONSTRAINT `riguarda_ibfk_1` FOREIGN KEY (`ID_Prenotazione`) REFERENCES `Prenotazione` (`ID_Prenotazione`),
  CONSTRAINT `riguarda_ibfk_2` FOREIGN KEY (`ID_Biglietto`) REFERENCES `Biglietto` (`ID_Biglietto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Riguarda`
--

LOCK TABLES `Riguarda` WRITE;
/*!40000 ALTER TABLE `Riguarda` DISABLE KEYS */;
INSERT INTO `Riguarda` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `Riguarda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stazione`
--

DROP TABLE IF EXISTS `Stazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Stazione` (
  `ID_Stazione` int NOT NULL AUTO_INCREMENT,
  `Nome_Stazione` varchar(100) DEFAULT NULL,
  `Città` varchar(100) DEFAULT NULL,
  `Via` varchar(255) DEFAULT NULL,
  `CAP` varchar(10) DEFAULT NULL,
  `Indirizzo` varchar(255) DEFAULT NULL,
  `Codice_Stazione` varchar(10) DEFAULT NULL,
  `Binario` int DEFAULT NULL,
  PRIMARY KEY (`ID_Stazione`),
  UNIQUE KEY `Codice_Stazione` (`Codice_Stazione`),
  KEY `idx_codice_stazione` (`Codice_Stazione`),
  KEY `idx_nome_stazione` (`Nome_Stazione`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stazione`
--

LOCK TABLES `Stazione` WRITE;
/*!40000 ALTER TABLE `Stazione` DISABLE KEYS */;
INSERT INTO `Stazione` VALUES (1,'Milano Centrale','Milano','Piazza Duca d\'Aosta','20124','Piazza Duca d\'Aosta 1, Milano','MILCEN',1),(2,'Roma Termini','Roma','Via Giolitti','00185','Via Giolitti 40, Roma','ROMTER',3),(3,'Napoli Centrale','Napoli','Piazza Garibaldi','80142','Piazza Garibaldi 2, Napoli','NAPCEN',4),(4,'Firenze SMN','Firenze','Piazza della Stazione','50123','Piazza della Stazione, Firenze','FIRSMN',2),(5,'Torino Porta Nuova','Torino','Corso Vittorio Emanuele II','10128','Corso V. Emanuele II, Torino','TORPN',1),(6,'Bologna Centrale','Bologna','Piazza Medaglie d\'Oro','40121','Piazza Medaglie d\'Oro, Bologna','BOLOCEN',5),(7,'Venezia Mestre','Venezia','Via Piave','30171','Via Piave 2, Venezia','VENMES',2),(8,'Genova Brignole','Genova','Via Edmondo De Amicis','16122','Via E. De Amicis 3, Genova','GENBRI',3),(9,'Bari Centrale','Bari','Piazza Moro','70122','Piazza Moro, Bari','BARCEN',6),(10,'Palermo Centrale','Palermo','Piazza Giulio Cesare','90123','Piazza Giulio Cesare, Palermo','PALCEN',1);
/*!40000 ALTER TABLE `Stazione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tratta`
--

DROP TABLE IF EXISTS `Tratta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tratta` (
  `ID_Tratta` int NOT NULL AUTO_INCREMENT,
  `Costo` decimal(10,2) DEFAULT NULL,
  `Durata` int DEFAULT NULL,
  PRIMARY KEY (`ID_Tratta`),
  KEY `idx_durata` (`Durata`),
  KEY `idx_costo` (`Costo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tratta`
--

LOCK TABLES `Tratta` WRITE;
/*!40000 ALTER TABLE `Tratta` DISABLE KEYS */;
INSERT INTO `Tratta` VALUES (1,89.90,180),(2,55.00,120),(3,49.50,90),(4,99.90,200),(5,79.00,150),(6,109.00,210),(7,59.90,100),(8,69.00,110),(9,89.00,190),(10,39.00,80);
/*!40000 ALTER TABLE `Tratta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Treno`
--

DROP TABLE IF EXISTS `Treno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Treno` (
  `ID_Treno` int NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(50) DEFAULT NULL,
  `Capienza` int DEFAULT NULL,
  PRIMARY KEY (`ID_Treno`),
  KEY `idx_tipo_treno` (`Tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Treno`
--

LOCK TABLES `Treno` WRITE;
/*!40000 ALTER TABLE `Treno` DISABLE KEYS */;
INSERT INTO `Treno` VALUES (1,'Frecciarossa 1000',500),(2,'Italo EVO',480),(3,'Frecciargento',400),(4,'Intercity',300),(5,'Regionale Veloce',250),(6,'EuroCity',450),(7,'Freccialink',350),(8,'Thello Notte',200),(9,'Trenord',280),(10,'Trenitalia Jazz',220);
/*!40000 ALTER TABLE `Treno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Valida`
--

DROP TABLE IF EXISTS `Valida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Valida` (
  `ID_Biglietto` int NOT NULL,
  `ID_Treno` int DEFAULT NULL,
  `ID_Tratta` int DEFAULT NULL,
  `Data_E_Ora_Percorrenza` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_Biglietto`),
  KEY `ID_Treno` (`ID_Treno`,`ID_Tratta`,`Data_E_Ora_Percorrenza`),
  KEY `idx_valida_data` (`Data_E_Ora_Percorrenza`),
  KEY `idx_valida_treno_tratta` (`ID_Treno`,`ID_Tratta`),
  CONSTRAINT `valida_ibfk_1` FOREIGN KEY (`ID_Biglietto`) REFERENCES `Biglietto` (`ID_Biglietto`),
  CONSTRAINT `valida_ibfk_2` FOREIGN KEY (`ID_Treno`, `ID_Tratta`, `Data_E_Ora_Percorrenza`) REFERENCES `Percorre` (`ID_Treno`, `ID_Tratta`, `Data_E_Ora_Percorrenza`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Valida`
--

LOCK TABLES `Valida` WRITE;
/*!40000 ALTER TABLE `Valida` DISABLE KEYS */;
INSERT INTO `Valida` VALUES (1,1,1,'2025-04-02 08:00:00'),(2,2,2,'2025-04-03 09:30:00'),(3,3,3,'2025-04-04 10:15:00'),(4,4,4,'2025-04-05 07:45:00'),(5,5,5,'2025-04-06 12:00:00'),(6,6,6,'2025-04-07 11:20:00'),(7,7,7,'2025-04-08 06:40:00'),(8,8,8,'2025-04-09 15:30:00'),(9,9,9,'2025-04-10 16:10:00'),(10,10,10,'2025-04-11 18:00:00');
/*!40000 ALTER TABLE `Valida` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-14  0:11:56
