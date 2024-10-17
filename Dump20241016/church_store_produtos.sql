CREATE DATABASE  IF NOT EXISTS `church_store` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `church_store`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: church_store
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
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `ProdutoId` int NOT NULL AUTO_INCREMENT,
  `ProdutoNome` varchar(45) DEFAULT NULL,
  `ProdutoValor` double DEFAULT NULL,
  `Quantidade` int DEFAULT NULL,
  `ImagemUrl` longtext,
  `Exibir` tinyint DEFAULT '0',
  PRIMARY KEY (`ProdutoId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'Pizza',45.53,21,'https://plus.unsplash.com/premium_photo-1673439304183-8840bd0dc1bf?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',1),(2,'Coca-Cola',15.5,0,'https://images.unsplash.com/photo-1592892111425-15e04305f961?q=80&w=1364&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',1),(3,'Guarana Antartica',6.25,15,'https://th.bing.com/th/id/OIP.jvZ4RbyxPyKSO5xm14epRgHaFC?rs=1&pid=ImgDetMain',1),(4,'Guarana Jesus',8,20,'https://mir-s3-cdn-cf.behance.net/project_modules/1400_opt_1/212e7f70111801.5b986bc44178a.png',0),(5,'Espetinho de carne',4.5,47,'https://drive.google.com/file/d/1O_OCfdMWyCOjjrBP2XEWSWGPDw5OMfVh/view?usp=sharing',0),(6,'Espetinho de Frango',4,54,'https://media.istockphoto.com/id/1270859209/pt/foto/kebab-grilled-meat-on-a-cutting-board-with-flour-and-vinaigrette-salad.jpg?s=1024x1024&w=is&k=20&c=DmgufPDBWpoA2kX2LTPQDqatQv3pR-l4gWCxl3Annmo=',0),(7,'Espetinho de Linguiça',4,34,'https://media.istockphoto.com/id/1270859209/pt/foto/kebab-grilled-meat-on-a-cutting-board-with-flour-and-vinaigrette-salad.jpg?s=1024x1024&w=is&k=20&c=DmgufPDBWpoA2kX2LTPQDqatQv3pR-l4gWCxl3Annmo=',0),(8,'Espetinho de Coração de galinha',2.5,5,'https://media.istockphoto.com/id/1270859209/pt/foto/kebab-grilled-meat-on-a-cutting-board-with-flour-and-vinaigrette-salad.jpg?s=1024x1024&w=is&k=20&c=DmgufPDBWpoA2kX2LTPQDqatQv3pR-l4gWCxl3Annmo=',0),(9,'Coxinha de frango',7,4,'https://media.istockphoto.com/id/1903436449/pt/foto/delicious-chicken-coxinha-with-cheese-served-in-a-traditional-way-in-the-interior-of-brazil.jpg?s=1024x1024&w=is&k=20&c=mokzbjOMlaF4VruWkkiJ-WGQEIDVHQ0UmaflQfz_92A=',0),(10,'c1',3,2,'c3',0),(11,'Esfiha de carne',9,8,'https://media.istockphoto.com/id/1454260101/pt/foto/brazilian-snack.jpg?s=612x612&w=is&k=20&c=qOaAcdKA5X1UiHcnXaP960MpQVbs7gtgoN_SYjx-i70=',0),(12,'d1',3,2,'c3',0),(13,'Hamburguer',15.5,50,'https://media.istockphoto.com/id/1309352410/pt/foto/cheeseburger-with-tomato-and-lettuce-on-wooden-board.jpg?s=1024x1024&w=is&k=20&c=zRrwnY2BdwaC5GgLFPcVNWedOPQ-0OVEkjqYzRx4jPQ=',0),(14,'Hamburguer Vegano',14.25,25,'https://media.istockphoto.com/id/1309352410/pt/foto/cheeseburger-with-tomato-and-lettuce-on-wooden-board.jpg?s=1024x1024&w=is&k=20&c=zRrwnY2BdwaC5GgLFPcVNWedOPQ-0OVEkjqYzRx4jPQ=',0),(15,'teste',15.4,1,'teste',0);
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

-- Dump completed on 2024-10-16 23:35:36
