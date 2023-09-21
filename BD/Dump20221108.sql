-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: musix
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album` (
  `Id_Album` int(11) NOT NULL,
  `Nome_Album` varchar(255) NOT NULL,
  `Data_Lancamento` date NOT NULL,
  `Duracao_Album` float NOT NULL,
  `Id_Artista` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`Id_Album`),
  UNIQUE KEY `Id_Album` (`Id_Album`),
  KEY `Id_Artista` (`Id_Artista`),
  CONSTRAINT `album_ibfk_1` FOREIGN KEY (`Id_Artista`) REFERENCES `artista` (`Id_Artista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artista`
--

DROP TABLE IF EXISTS `artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artista` (
  `Id_Artista` smallint(6) NOT NULL,
  `Nome_Artista` varchar(255) NOT NULL,
  `Seguidores_Artista` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id_Artista`),
  UNIQUE KEY `Id_Artista` (`Id_Artista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artista`
--

LOCK TABLES `artista` WRITE;
/*!40000 ALTER TABLE `artista` DISABLE KEYS */;
/*!40000 ALTER TABLE `artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artista_playlist`
--

DROP TABLE IF EXISTS `artista_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artista_playlist` (
  `Id_Artista` smallint(6) NOT NULL,
  `Id_Playlist` smallint(6) NOT NULL,
  PRIMARY KEY (`Id_Artista`,`Id_Playlist`),
  UNIQUE KEY `Id_Artista` (`Id_Artista`),
  UNIQUE KEY `Id_Playlist` (`Id_Playlist`),
  CONSTRAINT `FK_ARTISTA` FOREIGN KEY (`Id_Artista`) REFERENCES `artista` (`Id_Artista`),
  CONSTRAINT `FK_PLAYLIST` FOREIGN KEY (`Id_Playlist`) REFERENCES `playlist` (`Id_Playlist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artista_playlist`
--

LOCK TABLES `artista_playlist` WRITE;
/*!40000 ALTER TABLE `artista_playlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `artista_playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biblioteca`
--

DROP TABLE IF EXISTS `biblioteca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biblioteca` (
  `Id_Biblioteca` int(11) NOT NULL,
  `Id_Usuario` int(11) NOT NULL,
  PRIMARY KEY (`Id_Biblioteca`),
  UNIQUE KEY `Id_Biblioteca` (`Id_Biblioteca`),
  UNIQUE KEY `Id_Usuario` (`Id_Usuario`),
  CONSTRAINT `biblioteca_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biblioteca`
--

LOCK TABLES `biblioteca` WRITE;
/*!40000 ALTER TABLE `biblioteca` DISABLE KEYS */;
/*!40000 ALTER TABLE `biblioteca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genero` (
  `Id_Genero` smallint(6) NOT NULL,
  `Nome_Genero` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id_Genero`),
  UNIQUE KEY `Id_Genero` (`Id_Genero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musica`
--

DROP TABLE IF EXISTS `musica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `musica` (
  `Id_Musica` int(11) NOT NULL,
  `Nome_Musica` varchar(255) NOT NULL,
  `Duracao_Musica` int(11) NOT NULL,
  `Reproducoes_Musica` int(11) NOT NULL,
  `Letra_Musica` tinytext,
  PRIMARY KEY (`Id_Musica`),
  UNIQUE KEY `Id_Musica` (`Id_Musica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musica`
--

LOCK TABLES `musica` WRITE;
/*!40000 ALTER TABLE `musica` DISABLE KEYS */;
/*!40000 ALTER TABLE `musica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playlist` (
  `Id_Playlist` smallint(6) NOT NULL,
  `Nome_Playlist` varchar(255) DEFAULT NULL,
  `Curtidas_Playlist` int(11) NOT NULL,
  `Duracao_Playlist` float DEFAULT NULL,
  `Privacidade` tinyint(1) DEFAULT NULL,
  `Descricao_Playlist` varchar(1000) DEFAULT NULL,
  `Criador_Playlist` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Playlist`),
  UNIQUE KEY `Id_Playlist` (`Id_Playlist`),
  KEY `Criador_Playlist` (`Criador_Playlist`),
  CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`Criador_Playlist`) REFERENCES `usuario` (`Id_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `Id_Usuario` int(11) NOT NULL,
  `Nome_Usuario` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Assinatura` tinyint(1) DEFAULT NULL,
  `Seguidores_Usuario` int(11) NOT NULL,
  `Seguindo` int(11) NOT NULL,
  PRIMARY KEY (`Id_Usuario`),
  UNIQUE KEY `Id_Usuario` (`Id_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-08 20:30:13
