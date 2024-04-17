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
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idUsuarios` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellidos` varchar(45) DEFAULT NULL,
  `Correo_electronico` varchar(45) DEFAULT NULL,
  `genero` varchar(15) DEFAULT NULL,
  `fecha_nacimiento` varchar(45) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `Contacto` int NOT NULL,
  PRIMARY KEY (`idUsuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1501,'Juan','García','juan@example.com','Masculino','1990-05-15','password123',123456789),(1502,'María','López','maria@example.com','Femenino','1985-08-22','maria123',987654321),(1503,'Pedro','Martínez','pedro@example.com','Masculino','1992-03-10','pedro123',456789123),(1504,'Ana','Rodríguez','ana@example.com','Femenino','1988-11-03','ana123',789123456),(1505,'Luis','Sánchez','luis@example.com','Masculino','1995-06-25','luis123',321654987),(1506,'Laura','Gómez','laura@example.com','Femenino','1991-09-17','laura123',654987321),(1507,'Carlos','Pérez','carlos@example.com','Masculino','1987-04-08','carlos123',159263487),(1508,'Sofía','Díaz','sofia@example.com','Femenino','1993-12-12','sofia123',369852147),(1509,'Javier','Hernández','javier@example.com','Masculino','1994-02-28','javier123',258741369),(1510,'Elena','Muñoz','elena@example.com','Femenino','1990-07-20','elena123',147852369),(1511,'Diego','Gutiérrez','diego@example.com','Masculino','1986-10-30','diego123',963852741),(1512,'Isabel','Vargas','isabel@example.com','Femenino','1989-01-05','isabel123',852963147),(1513,'Miguel','Ruiz','miguel@example.com','Masculino','1997-04-14','miguel123',741852963),(1514,'Paula','Torres','paula@example.com','Femenino','1996-08-07','paula123',632541879),(1515,'Alejandro','Jiménez','alejandro@example.com','Masculino','1984-11-19','alejandro123',985214763),(15011,'Juan','García','juan@example.com','Masculino','1990-05-15','password123',123456789),(15012,'María','López','maria@example.com','Femenino','1985-08-22','maria123',987654321),(15013,'Pedro','Martínez','pedro@example.com','Masculino','1992-03-10','pedro123',456789123),(15014,'Ana','Rodríguez','ana@example.com','Femenino','1988-11-03','ana123',789123456),(15015,'Luis','Sánchez','luis@example.com','Masculino','1995-06-25','luis123',321654987),(15016,'Laura','Gómez','laura@example.com','Femenino','1991-09-17','laura123',654987321),(15017,'Carlos','Pérez','carlos@example.com','Masculino','1987-04-08','carlos123',159263487),(15018,'Sofía','Díaz','sofia@example.com','Femenino','1993-12-12','sofia123',369852147),(15019,'Javier','Hernández','javier@example.com','Masculino','1994-02-28','javier123',258741369),(15110,'Elena','Muñoz','elena@example.com','Femenino','1990-07-20','elena123',147852369),(15111,'Diego','Gutiérrez','diego@example.com','Masculino','1986-10-30','diego123',963852741),(15112,'Isabel','Vargas','isabel@example.com','Femenino','1989-01-05','isabel123',852963147),(15113,'Miguel','Ruiz','miguel@example.com','Masculino','1997-04-14','miguel123',741852963),(15114,'Paula','Torres','paula@example.com','Femenino','1996-08-07','paula123',632541879),(15115,'Alejandro','Jiménez','alejandro@example.com','Masculino','1984-11-19','alejandro123',985214763);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
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
