-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: moviesdb
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `__efmigrationshistory`
--

DROP TABLE IF EXISTS `__efmigrationshistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProductVersion` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__efmigrationshistory`
--

LOCK TABLES `__efmigrationshistory` WRITE;
/*!40000 ALTER TABLE `__efmigrationshistory` DISABLE KEYS */;
INSERT INTO `__efmigrationshistory` VALUES ('20230916035525_InitialMigration','6.0.22'),('20230916085924_InitialMigrationUpdate','6.0.22');
/*!40000 ALTER TABLE `__efmigrationshistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Rating` float DEFAULT NULL,
  `Image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `CreatedAt` datetime(6) DEFAULT NULL,
  `UpdatedAt` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'string','string',0,'string','2023-09-16 20:28:45.575985','2023-09-16 20:28:45.575762'),(2,'Pengabdi Setan 2 Update','film horor yang tadi di-update',9,'asdfaslkfjkaljflkasj','2023-09-16 05:19:31.182000','2023-09-16 05:19:31.182000'),(3,'Tukang Bubur Naik Haji','film yang menceritakan tentang orang naik haji hasil jualan bubur ayam, pemeran utamanya adalah haji sulam yang diperankan oleh mat solar',0,'string','2023-09-16 20:03:33.556080','2023-09-16 20:10:27.307011'),(4,'Pengabdi Setan 2 Communion','sebuah film horror Indonesia tahun 2022 yang disutradarai oleh Joko Anwar sebagai sekuel dari film tahun 2017, Pengabdi Setan.',7,'string','2023-09-16 20:14:10.762977','2023-09-16 20:14:10.728686'),(5,'Train to Busan','sebuah film dari korea selatan yang menceritakan tentang zombie',0,'string','2023-09-16 20:21:37.258749','2023-09-16 20:21:37.221733');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `Username` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `PasswordHash` longblob NOT NULL,
  `PasswordSalt` longblob NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('string',_binary '”st\Ä[\ìø\æ\Ûa\ÞJo\0\ÈM\Â\Ò\"\ê/›‹{\Þt\Ù\õa/xÉ·XdÒ¬ƒ‹\rþ\Ùþ6§\Æl\ö¯v',_binary '^4»¹\n\ñRœ]\íSx µ\Ó$¦\'½h\ÖJ2\ð\ê`€|•\âÿl\Ñ6o[\ÖK\äc¤0¸¸²5š‘\ÃÆŒ\òµKµŽ5³\ãÖ½$\ñq¡s)á”•®\Æ\Æe:ž—9¯\â.r–“\Ê\ãu\Ã½]\\þ²¼\Z\Å!\Ó n\Â*\æŒƒ”—\Õ'),('string1',_binary '/\'\ëc\Ä•xq€/ÿc\Zû\í\Í$¡\Ë\ãC.>(fºN«cûØœ®Q\Ò.½Nƒ:g\ð²ü<Z–+4\Õ\0¿d§†Š',_binary '\ê>#˜d°\èŠ\Ù\Ç\Z\ñ¸!\Ê\ë_7NOa¤\È\óA“\ë\r\\@_\öÇ¿bË¯ {¡\çl–N\Ò<aúšG\Èiß¸1~HR)Ž;5\ëE:¸f\ó@mkµ\ær|\Û\Z„©X¨¸_´#\È4œB“–h7\îJJœGYP8¬B\í\ÅF)D');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'moviesdb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-16 20:42:08
