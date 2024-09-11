-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: localhost    Database: biblio
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `adherent`
--

DROP TABLE IF EXISTS `adherent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adherent` (
  `NUMADHERENT` char(13) NOT NULL,
  `NOM` char(32) DEFAULT NULL,
  `PRENOM` char(32) DEFAULT NULL,
  `EMAIL` char(64) DEFAULT NULL,
  `TEL` char(10) DEFAULT NULL,
  `DOMAINE` char(32) DEFAULT NULL,
  `DATEADHESION` date DEFAULT NULL,
  `ADRESSE` char(32) DEFAULT NULL,
  `PHOTOADHERENT` longblob,
  PRIMARY KEY (`NUMADHERENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adherent`
--

LOCK TABLES `adherent` WRITE;
/*!40000 ALTER TABLE `adherent` DISABLE KEYS */;
INSERT INTO `adherent` VALUES ('1/E/2024','RAKOTOMALALA','Hery','hery.rakoto@univ.mg','0327654321','Sociologie','2024-02-10','Lot III, Antananarivo',_binary 'photo2.jpg'),('1/P/2024','RABEARISOA','Andry','andry.rabe@gmail.com','0331234567','Informatique','2024-01-15','Lot II, Antananarivo',_binary 'photo1.jpg'),('2/E/2024','RANDRIANARISON','Tiana','tiana.randria@univ.mg','0349988776','Physique','2024-04-22','Lot V, Toliara',_binary 'photo4.jpg'),('2/P/2024','RASOLOFONIRINA','Fanja','fanja.rasolo@gmail.com','0341122334','Médecine','2024-03-18','Lot IV, Fianarantsoa',_binary 'photo3.jpg'),('3/E/2024','RAVOLOLONA','Hanitra','hanitra.ravolo@univ.mg','0348877665','Économie','2024-06-05','Lot VII, Toamasina',_binary 'photo6.jpg'),('3/P/2024','RAJAONARIVELO','Mamy','mamy.rajao@gmail.com','0372244668','Informatique','2024-05-13','Lot VI, Antsirabe',_binary 'photo5.jpg'),('4/E/2024','RANDRIANASOLO','Voahirana','voahirana.randria@univ.mg','0335566777','Chimie','2024-08-20','Lot IX, Antananarivo',_binary 'photo8.jpg'),('4/P/2024','RAKOTOARISOA','Sitraka','sitraka.rakoto@gmail.com','0384433221','Droit','2024-07-15','Lot VIII, Mahajanga',_binary 'photo7.jpg'),('5/E/2024','RAKOTOBE','Mahery','mahery.rakoto@univ.mg','0321237890','Mathématiques','2024-10-14','Lot XI, Fianarantsoa',_binary 'photo10.jpg'),('5/P/2024','RAKOTONIRINA','Zo','zo.rakoto@gmail.com','0336543212','Sociologie','2024-09-10','Lot X, Antsirabe',_binary 'photo9.jpg'),('6/E/2024','RANDRIAMAMPIONONA','Faniry','faniry.randria@univ.mg','0339981234','Physique','2024-12-25','Lot XIII, Mahajanga',_binary 'photo12.jpg'),('6/P/2024','RASOAMANANA','Rina','rina.rasoa@gmail.com','0389876543','Médecine','2024-11-03','Lot XII, Toamasina',_binary 'photo11.jpg'),('7/E/2024','RAZAFINJATOVO','Tojo','tojo.razafy@univ.mg','0349987766','Chimie','2024-09-27','Lot XV, Fianarantsoa',_binary 'photo14.jpg'),('7/P/2024','RANDRIANANTOANDRO','Noro','noro.randria@gmail.com','0388765432','Économie','2024-08-14','Lot XIV, Toliara',_binary 'photo13.jpg'),('8/P/2024','RAZAFINDRAKOTO','Miora','miora.razafi@gmail.com','0321346777','Droit','2024-10-19','Lot XVI, Antsirabe',_binary 'photo15.jpg');
/*!40000 ALTER TABLE `adherent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendrier`
--

DROP TABLE IF EXISTS `calendrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calendrier` (
  `DATE_PRET` char(32) NOT NULL,
  PRIMARY KEY (`DATE_PRET`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendrier`
--

LOCK TABLES `calendrier` WRITE;
/*!40000 ALTER TABLE `calendrier` DISABLE KEYS */;
INSERT INTO `calendrier` VALUES ('2024-09-01'),('2024-09-03'),('2024-09-05'),('2024-09-07'),('2024-09-10'),('2024-09-12'),('2024-09-14'),('2024-09-16'),('2024-09-18'),('2024-09-20'),('2024-09-22'),('2024-09-24'),('2024-09-26'),('2024-09-28'),('2024-09-30');
/*!40000 ALTER TABLE `calendrier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classe_livre`
--

DROP TABLE IF EXISTS `classe_livre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classe_livre` (
  `CODECLASSE` char(6) NOT NULL,
  `NOMCLASSE` char(32) DEFAULT NULL,
  PRIMARY KEY (`CODECLASSE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classe_livre`
--

LOCK TABLES `classe_livre` WRITE;
/*!40000 ALTER TABLE `classe_livre` DISABLE KEYS */;
INSERT INTO `classe_livre` VALUES ('CHI','Chimie'),('DRO','Droit'),('ECO','Économie'),('MAT','Mathématiques'),('MED','Médecine'),('PHY','Physique'),('SOC','Sociologie');
/*!40000 ALTER TABLE `classe_livre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emprunter`
--

DROP TABLE IF EXISTS `emprunter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emprunter` (
  `NUMADHERENT` char(13) NOT NULL,
  `COTELIVRE` char(10) NOT NULL,
  `NUMEXEMPLAIRE` int NOT NULL,
  `DATE_PRET` char(32) NOT NULL,
  `DATERETOUR` date DEFAULT NULL,
  PRIMARY KEY (`NUMADHERENT`,`COTELIVRE`,`NUMEXEMPLAIRE`,`DATE_PRET`),
  KEY `I_FK_EMPRUNTER_ADHERENT` (`NUMADHERENT`),
  KEY `I_FK_EMPRUNTER_EXEMPLAIRE` (`COTELIVRE`,`NUMEXEMPLAIRE`),
  KEY `I_FK_EMPRUNTER_CALENDRIER` (`DATE_PRET`),
  CONSTRAINT `emprunter_ibfk_1` FOREIGN KEY (`NUMADHERENT`) REFERENCES `adherent` (`NUMADHERENT`),
  CONSTRAINT `emprunter_ibfk_2` FOREIGN KEY (`COTELIVRE`, `NUMEXEMPLAIRE`) REFERENCES `exemplaire` (`COTELIVRE`, `NUMEXEMPLAIRE`),
  CONSTRAINT `emprunter_ibfk_3` FOREIGN KEY (`DATE_PRET`) REFERENCES `calendrier` (`DATE_PRET`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emprunter`
--

LOCK TABLES `emprunter` WRITE;
/*!40000 ALTER TABLE `emprunter` DISABLE KEYS */;
INSERT INTO `emprunter` VALUES ('1/E/2024','1001/DRO',5,'2024-09-03',NULL),('1/E/2024','6600/PHY',6,'2024-09-18','2024-09-30'),('1/P/2024','806/ECO',1,'2024-09-01','2024-09-10'),('2/E/2024','6755/MAT',1,'2024-09-03','2024-09-15'),('2/P/2024','1500/MED',6,'2024-09-20','2024-09-28'),('3/E/2024','9999/CHI',6,'2024-09-22','2024-10-01'),('3/P/2024','1025/CHI',1,'2024-09-05','2024-09-20'),('4/E/2024','3030/PHY',1,'2024-09-07','2024-09-25'),('4/P/2024','5050/PHY',6,'2024-09-24','2024-10-05'),('5/E/2024','806/ECO',2,'2024-09-26',NULL),('5/P/2024','5098/MED',5,'2024-09-10',NULL),('6/E/2024','1001/DRO',5,'2024-09-12','2024-09-30'),('6/P/2024','2525/MAT',7,'2024-09-28','2024-10-10'),('7/E/2024','1234/CHI',7,'2024-09-30','2024-10-12'),('7/P/2024','4502/SOC',5,'2024-09-14',NULL),('8/P/2024','3000/ECO',5,'2024-09-16','2024-09-25');
/*!40000 ALTER TABLE `emprunter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exemplaire`
--

DROP TABLE IF EXISTS `exemplaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exemplaire` (
  `COTELIVRE` char(10) NOT NULL,
  `NUMEXEMPLAIRE` int NOT NULL,
  `ETAT` char(32) DEFAULT NULL,
  PRIMARY KEY (`COTELIVRE`,`NUMEXEMPLAIRE`),
  KEY `I_FK_EXEMPLAIRE_LIVRE` (`COTELIVRE`),
  CONSTRAINT `exemplaire_ibfk_1` FOREIGN KEY (`COTELIVRE`) REFERENCES `livre` (`COTELIVRE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exemplaire`
--

LOCK TABLES `exemplaire` WRITE;
/*!40000 ALTER TABLE `exemplaire` DISABLE KEYS */;
INSERT INTO `exemplaire` VALUES ('1001/DRO',5,'Bon'),('1001/DRO',9,'Bon'),('1025/CHI',1,'Acceptable'),('1025/CHI',2,'Neuf'),('1025/CHI',3,'Acceptable'),('1025/CHI',4,'Neuf'),('1025/CHI',8,'Acceptable'),('1234/CHI',7,'Acceptable'),('1500/MED',6,'Bon'),('1500/MED',10,'Acceptable'),('2525/MAT',7,'Bon'),('3000/ECO',5,'Usé'),('3000/ECO',10,'Neuf'),('3030/PHY',1,'Usé'),('3030/PHY',2,'Bon'),('3030/PHY',3,'Neuf'),('3030/PHY',4,'Bon'),('3030/PHY',9,'Usé'),('4502/SOC',5,'Acceptable'),('4502/SOC',10,'Acceptable'),('5050/PHY',6,'Usé'),('5098/MED',5,'Neuf'),('5098/MED',9,'Neuf'),('6600/PHY',6,'Neuf'),('6600/PHY',10,'Bon'),('6755/MAT',1,'Bon'),('6755/MAT',2,'Acceptable'),('6755/MAT',3,'Bon'),('6755/MAT',4,'Acceptable'),('6755/MAT',8,'Bon'),('806/ECO',1,'Neuf'),('806/ECO',2,'Bon'),('806/ECO',3,'Neuf'),('806/ECO',4,'Usé'),('806/ECO',8,'Neuf'),('8088/ECO',7,'Neuf'),('9999/CHI',6,'Acceptable');
/*!40000 ALTER TABLE `exemplaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livre`
--

DROP TABLE IF EXISTS `livre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livre` (
  `COTELIVRE` char(10) NOT NULL,
  `CODECLASSE` char(6) NOT NULL,
  `TITRE` char(32) DEFAULT NULL,
  `AUTEUR` char(32) DEFAULT NULL,
  `EXCLUS_DE_PRET` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`COTELIVRE`),
  KEY `I_FK_LIVRE_CLASSE_LIVRE` (`CODECLASSE`),
  CONSTRAINT `livre_ibfk_1` FOREIGN KEY (`CODECLASSE`) REFERENCES `classe_livre` (`CODECLASSE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livre`
--

LOCK TABLES `livre` WRITE;
/*!40000 ALTER TABLE `livre` DISABLE KEYS */;
INSERT INTO `livre` VALUES ('1001/DRO','DRO','Introduction au Droit','Kelsen H.',0),('1025/CHI','CHI','Chimie Organique','Smith J.',0),('1234/CHI','CHI','Biochimie','Berg J.',0),('1500/MED','MED','Pathologie Générale','Robbins S.',1),('2525/MAT','MAT','Analyse Réelle','Rudin W.',0),('3000/ECO','ECO','Microéconomie','Varian H.',0),('3030/PHY','PHY','Physique Quantique','Einstein A.',0),('4502/SOC','SOC','Sociologie Contemporaine','Durkheim E.',0),('5050/PHY','PHY','Optique','Hecht E.',0),('5098/MED','MED','Anatomie Humaine','Netter F.',1),('6600/PHY','PHY','Mécanique Classique','Goldstein H.',0),('6755/MAT','MAT','Algèbre Linéaire','Lang S.',0),('806/ECO','ECO','Économie Internationale','Stiglitz J.',0),('8088/ECO','ECO','Macroéconomie','Blanchard O.',0),('9999/CHI','CHI','Thermodynamique Chimique','Atkins P.',0);
/*!40000 ALTER TABLE `livre` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-11 15:49:52
