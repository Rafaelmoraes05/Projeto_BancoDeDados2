-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: musix1
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
  `Id_Album` int(11) NOT NULL AUTO_INCREMENT,
  `Nome_Album` varchar(255) NOT NULL,
  `Data_Lancamento` date NOT NULL,
  `Duracao_Album` float NOT NULL,
  `Id_Artista` smallint(6) NOT NULL,
  `albumcol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id_Album`),
  UNIQUE KEY `Id_Album` (`Id_Album`),
  KEY `Id_Artista` (`Id_Artista`),
  CONSTRAINT `album_ibfk_1` FOREIGN KEY (`Id_Artista`) REFERENCES `artista` (`Id_Artista`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
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
  `Id_Artista` smallint(6) NOT NULL AUTO_INCREMENT,
  `Nome_Artista` varchar(255) NOT NULL,
  `Seguidores_Artista` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id_Artista`),
  UNIQUE KEY `Id_Artista` (`Id_Artista`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artista`
--

LOCK TABLES `artista` WRITE;
/*!40000 ALTER TABLE `artista` DISABLE KEYS */;
INSERT INTO `artista` VALUES (1,'SZA',4875292),(2,'Sam Smith',7685445),(3,'Meghan Trainor',50805),(4,'Eagles',286635),(5,'AC/DC',236045),(6,'Polo G',234262),(7,'Radiohead',18521),(8,'Aerosmith',45674),(9,'Drake',676510),(10,'Lil Baby',304322),(11,'Gucci Mane',1290100),(12,'Taylor Swift',8206470),(13,'Conde Só Brega ',99999999),(14,'Cornélio Gualhardo',100000000),(15,'Priscila Senna',100000000),(16,'Tash Sultana ',1425966),(17,'Edson Gomes',20168524),(18,'Natiruts',4565211),(19,'Grupo Revelação',12568412),(20,'Grupo Fundo de Quintal',5684236),(21,'Seu Jorge ',7999999),(22,'Grupo Menos é Mais ',5645648),(23,'Dorgival Dantas ',12365478),(24,'Wesley Safadão ',20365478),(25,'Aerosmith',50369741),(26,'O Rappa',7564123),(27,'Red Hot Chili Peppers',99999999),(28,'Marina Sena',3172263),(29,'Maglore',140690),(30,'Lamparina',314838),(31,'Banda do Mar',545996),(32,'Luiza Lian',113700),(33,'Carne Doce',58775),(34,'Rachel Reis',342804),(35,'Abacaxepa',36675),(36,'Francisco El Hombre',435761),(37,'Luísa e os Alquimistas',78109),(38,'Kafé',65577),(39,'Rosa Neon',181974),(40,'Crystal Castles',4747118),(41,'Illy',1781406),(42,'BaianaSystem',480322),(91,'SZA',4875292),(92,'Sam Smith',7685445),(93,'Meghan Trainor',50805),(94,'Eagles',286635),(95,'AC/DC',236045),(96,'AC/DC',236045),(97,'Radiohead',18521),(98,'Aerosmith',45674),(99,'Drake',676510),(100,'Polo G',234262),(101,'Lil Baby',304322),(102,'Gucci Mane',1290100),(103,'Taylor Swift',8206470),(104,'Taylor Swift',8206470),(105,'Taylor Swift',8206470),(106,'Conde Só Brega ',99999999),(107,'Cornélio Gualhardo',100000000),(108,'Priscila Senna',100000000),(109,'Tash Sultana ',1425966),(110,'Edson Gomes',20168524),(111,'Natiruts',4565211),(112,'Grupo Revelação',12568412),(113,'Grupo Fundo de Quintal',5684236),(114,'Seu Jorge ',7999999),(115,'Grupo Menos é Mais ',5645648),(116,'Dorgival Dantas ',12365478),(117,'Wesley Safadão ',20365478),(118,'Aerosmith',50369741),(119,'O Rappa',7564123),(120,'Red Hot Chili Peppers',99999999),(121,'Marina Sena',3172263),(122,'Maglore',140690),(123,'Lamparina',314838),(124,'Banda do Mar',545996),(125,'Luiza Lian',113700),(126,'Carne Doce',58775),(127,'Rachel Reis',342804),(128,'Abacaxepa',36675),(129,'Francisco El Hombre',435761),(130,'Luísa e os Alquimistas',78109),(131,'Kafé',65577),(132,'Rosa Neon',181974),(133,'Crystal Castles',4747118),(134,'Illy',1781406),(135,'BaianaSystem',480322);
/*!40000 ALTER TABLE `artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artista_musica`
--

DROP TABLE IF EXISTS `artista_musica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artista_musica` (
  `Id_Artista_Art_Mus` smallint(6) NOT NULL,
  `Id_Musica_Art_Mus` int(11) NOT NULL,
  PRIMARY KEY (`Id_Artista_Art_Mus`,`Id_Musica_Art_Mus`),
  UNIQUE KEY `Id_Artista_Art_Mus` (`Id_Artista_Art_Mus`),
  UNIQUE KEY `Id_Musica_Art_Mus` (`Id_Musica_Art_Mus`),
  CONSTRAINT `FK_Artista_Art_Mus` FOREIGN KEY (`Id_Artista_Art_Mus`) REFERENCES `artista` (`Id_Artista`),
  CONSTRAINT `FK_Musica_Art_Mus` FOREIGN KEY (`Id_Musica_Art_Mus`) REFERENCES `musica` (`Id_Musica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artista_musica`
--

LOCK TABLES `artista_musica` WRITE;
/*!40000 ALTER TABLE `artista_musica` DISABLE KEYS */;
/*!40000 ALTER TABLE `artista_musica` ENABLE KEYS */;
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
  `Id_Biblioteca` int(11) NOT NULL AUTO_INCREMENT,
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
-- Table structure for table `biblioteca_album`
--

DROP TABLE IF EXISTS `biblioteca_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biblioteca_album` (
  `Id_Biblioteca_Aux` int(11) NOT NULL,
  `Id_Album_Aux` int(11) NOT NULL,
  PRIMARY KEY (`Id_Biblioteca_Aux`,`Id_Album_Aux`),
  UNIQUE KEY `Id_Biblioteca_Aux` (`Id_Biblioteca_Aux`),
  UNIQUE KEY `Id_Album_Aux` (`Id_Album_Aux`),
  CONSTRAINT `FK_Id_Album_Aux` FOREIGN KEY (`Id_Album_Aux`) REFERENCES `album` (`Id_Album`),
  CONSTRAINT `FK_Id_Biblioteca_Aux` FOREIGN KEY (`Id_Biblioteca_Aux`) REFERENCES `biblioteca` (`Id_Biblioteca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biblioteca_album`
--

LOCK TABLES `biblioteca_album` WRITE;
/*!40000 ALTER TABLE `biblioteca_album` DISABLE KEYS */;
/*!40000 ALTER TABLE `biblioteca_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biblioteca_playlist`
--

DROP TABLE IF EXISTS `biblioteca_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biblioteca_playlist` (
  `Id_Biblioteca_Aux` int(11) NOT NULL,
  `Id_Playlist_Aux` smallint(6) NOT NULL,
  PRIMARY KEY (`Id_Biblioteca_Aux`,`Id_Playlist_Aux`),
  UNIQUE KEY `Id_Biblioteca_Aux` (`Id_Biblioteca_Aux`),
  UNIQUE KEY `Id_Playlist_Aux` (`Id_Playlist_Aux`),
  CONSTRAINT `FK_Id_Biblioteca_Play` FOREIGN KEY (`Id_Biblioteca_Aux`) REFERENCES `biblioteca` (`Id_Biblioteca`),
  CONSTRAINT `FK_Id_Playlist_Biblio` FOREIGN KEY (`Id_Playlist_Aux`) REFERENCES `playlist` (`Id_Playlist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biblioteca_playlist`
--

LOCK TABLES `biblioteca_playlist` WRITE;
/*!40000 ALTER TABLE `biblioteca_playlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `biblioteca_playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genero` (
  `Id_Genero` smallint(6) NOT NULL AUTO_INCREMENT,
  `Nome_Genero` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id_Genero`),
  UNIQUE KEY `Id_Genero` (`Id_Genero`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (12,'POP'),(13,'ROCK'),(14,'RAP'),(15,'Brega'),(16,'Reggae'),(17,'Funk'),(18,'Pagode'),(19,'Samba'),(20,'INDIE'),(21,'FORRÓ'),(22,'EDM');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musica`
--

DROP TABLE IF EXISTS `musica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `musica` (
  `Id_Musica` int(11) NOT NULL AUTO_INCREMENT,
  `Nome_Musica` varchar(255) NOT NULL,
  `Duracao_Musica` int(11) NOT NULL,
  `Reproducoes_Musica` int(11) NOT NULL,
  `Letra_Musica` tinytext,
  `Id_Genero_Musica` smallint(6) NOT NULL,
  `Id_Album_Musica` int(11) NOT NULL,
  PRIMARY KEY (`Id_Musica`),
  UNIQUE KEY `Id_Musica` (`Id_Musica`),
  KEY `fk_genero_musica` (`Id_Genero_Musica`),
  KEY `fk_album_musica` (`Id_Album_Musica`),
  CONSTRAINT `fk_album_musica` FOREIGN KEY (`Id_Album_Musica`) REFERENCES `album` (`Id_Album`),
  CONSTRAINT `fk_genero_musica` FOREIGN KEY (`Id_Genero_Musica`) REFERENCES `genero` (`Id_Genero`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;
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
  `Id_Playlist` smallint(6) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
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
  `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Nome_Usuario` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Assinatura` tinyint(1) DEFAULT NULL,
  `Seguidores_Usuario` int(11) NOT NULL,
  `Seguindo` int(11) NOT NULL,
  PRIMARY KEY (`Id_Usuario`),
  UNIQUE KEY `Id_Usuario` (`Id_Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (17,'DivaPoP98','popismylife@gmail.com',1,98878,35678),(18,'MarquinhosGameplay','mgp@gmail.com',0,10,10005),(19,'Mac12','mac12@gmail.com',1,45647,8),(20,'Bregosotroia','liajsd@gmail.com',1,4578,578),(21,'Metaleiro788','metalrock@gmail.com',1,457,5789),(22,'IndieLover2','31fz@gmail.com',1,1,1457),(23,'Popzero','pasasdsd@gmail.coma',1,457878,1557),(24,'AmadaFoca','amadafoca@gmail.com',1,54,89),(25,'Cabisbaixo','cabis69@gmail.com',1,4521,21),(26,'RafinhaMatador05','comedordecarro@gmail.com',0,99999,1),(27,'Tokagando','tramontina45@gmail.com',1,54210,4554),(28,'CaetanoVeloso','mpbtop@gmail.com',1,50215,5121),(29,'MetalBest','massacration789@gmail.com',1,22,525),(30,'troinhaRei22','troiaramos@yahoo.com',0,8541,5435),(31,'bennyOcara','benedito-tasso@bol.com.br',0,0,0),(32,'jesusTOP999','RMS55@gmail.com',1,1513515,2);
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

-- Dump completed on 2023-02-01 21:13:38
