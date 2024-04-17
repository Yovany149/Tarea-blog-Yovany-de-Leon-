-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `publicaciones`
--

DROP TABLE IF EXISTS `publicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publicaciones` (
  `idPublicaciones` int NOT NULL,
  `fecha` date DEFAULT NULL,
  `descripcion_contenido` varchar(45) DEFAULT NULL,
  `Categoria` varchar(45) DEFAULT NULL,
  `Usuarios_idUsuarios` int NOT NULL,
  `Publicacionescol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPublicaciones`),
  KEY `fk_Publicaciones_Usuarios1_idx` (`Usuarios_idUsuarios`),
  CONSTRAINT `fk_Publicaciones_Usuarios1` FOREIGN KEY (`Usuarios_idUsuarios`) REFERENCES `usuarios` (`idUsuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicaciones`
--

LOCK TABLES `publicaciones` WRITE;
/*!40000 ALTER TABLE `publicaciones` DISABLE KEYS */;
INSERT INTO `publicaciones` VALUES (1,'2024-04-17','Top5 mejores celulares','Tecnología',1501,NULL),(2,'2024-04-16','Los mejores lugares turisticos','Viajes',1502,NULL),(3,'2024-04-15','Recetas para el almuerzo','Cocina',1503,NULL),(4,'2024-04-14','¡Hola mundo! Bienvenidos a mi nuevo blog.','General',1504,NULL),(5,'2024-04-13',' consejos útiles para el hogar.','Hogar',1505,NULL),(6,'2024-04-12','Descubre las última moda.','Moda',1506,NULL),(7,'2024-04-11','Te gustaría aprender a cocinar platos','Cocina',1507,NULL),(8,'2024-04-10','Explora los destinos exóticos del mundo.','Viajes',1508,NULL),(9,'2024-04-09','¡Descubre cómo alcanzar tus metas!','Productividad',1509,NULL),(10,'2024-04-08','Los mejores consejos para cuidar tu salud','Salud',1510,NULL),(11,'2024-04-07','Te invito a conocer mi último viaje.','Viajes',1511,NULL),(12,'2024-04-06','Aprende nuevos idiomas y abre nuevas puertas.','Educación',1512,NULL),(13,'2024-04-05','¡Los secretos para tener una piel saludable!','Belleza',1513,NULL),(14,'2024-04-04','¿Quieres aprender a programar?','Tecnología',1514,NULL),(15,'2024-04-03','Conoce las mejores recetas de postres.','Cocina',1515,NULL);
/*!40000 ALTER TABLE `publicaciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-17  3:39:47
