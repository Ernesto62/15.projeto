-- MySQL dump 10.16  Distrib 10.1.37-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: Projeto
-- ------------------------------------------------------
-- Server version	10.1.37-MariaDB

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
-- Current Database: `Projeto`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `projeto` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `Projeto`;

--
-- Table structure for table `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedores` (
  `id_fornecedores` int(11) NOT NULL,
  `idade` int(11) DEFAULT NULL,
  `morada` varchar(20) DEFAULT NULL,
  `nome` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_fornecedores`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedores`
--

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
INSERT INTO `fornecedores` VALUES (1,17,'Paredes',NULL),(2,16,'Porto',NULL),(3,15,'Lisboa',NULL),(4,17,'Porto',NULL),(5,16,'Paredes',NULL);
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedoresprodutos`
--

DROP TABLE IF EXISTS `fornecedoresprodutos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedoresprodutos` (
  `id_fornecedores` int(11) NOT NULL,
  `id_produtos` int(11) DEFAULT NULL,
  KEY `id_fornecedores` (`id_fornecedores`),
  KEY `id_produtos` (`id_produtos`),
  CONSTRAINT `fornecedoresprodutos_ibfk_1` FOREIGN KEY (`id_fornecedores`) REFERENCES `fornecedores` (`id_fornecedores`),
  CONSTRAINT `fornecedoresprodutos_ibfk_2` FOREIGN KEY (`id_produtos`) REFERENCES `produtos` (`id_produtos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedoresprodutos`
--

LOCK TABLES `fornecedoresprodutos` WRITE;
/*!40000 ALTER TABLE `fornecedoresprodutos` DISABLE KEYS */;
/*!40000 ALTER TABLE `fornecedoresprodutos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `id_produtos` int(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `validade` datetime DEFAULT NULL,
  PRIMARY KEY (`id_produtos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (11,'Bananas','2021-01-01 00:00:00'),(12,'Pessegos','2021-02-02 00:00:00'),(13,'Laranjas','2021-03-03 00:00:00'),(14,'Maças','2021-04-04 00:00:00'),(15,'Melancias','2021-05-05 00:00:00');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-09 10:17:27
