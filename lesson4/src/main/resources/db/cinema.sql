CREATE DATABASE  IF NOT EXISTS `cinema` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cinema`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: cinema
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film` (
  `id_film` int unsigned NOT NULL AUTO_INCREMENT,
  `film_name` varchar(255) NOT NULL,
  `film_duration` time NOT NULL,
  PRIMARY KEY (`id_film`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES
(1,'Фильм 1','01:00:00'),
(2,'Фильм 2','01:30:00'),
(3,'Фильм 3','02:00:00'),
(4,'Фильм 4','01:00:00'),
(5,'Фильм 5','01:30:00'),
(6,'Фильм 6','02:00:00');
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `film_fees`
--

DROP TABLE IF EXISTS `film_fees`;
/*!50001 DROP VIEW IF EXISTS `film_fees`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `film_fees` AS SELECT 
 1 AS `Название фильма`,
 1 AS `Продано билетов`,
 1 AS `На общую сумму`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `hall`
--

DROP TABLE IF EXISTS `hall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hall` (
  `id_hall` int unsigned NOT NULL AUTO_INCREMENT,
  `hall_name` varchar(45) NOT NULL,
  `line` int unsigned NOT NULL,
  `seat` int unsigned NOT NULL,
  PRIMARY KEY (`id_hall`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hall`
--

LOCK TABLES `hall` WRITE;
/*!40000 ALTER TABLE `hall` DISABLE KEYS */;
INSERT INTO `hall` VALUES
(1,'Зеленый',1,1),
(2,'Зеленый',1,2),
(3,'Зеленый',1,3),
(4,'Зеленый',1,4),
(5,'Зеленый',1,5),
(6,'Зеленый',2,1),
(7,'Зеленый',2,2),
(8,'Зеленый',2,3),
(9,'Зеленый',2,4),
(10,'Зеленый',2,5),
(11,'Зеленый',3,1),
(12,'Зеленый',3,2),
(13,'Зеленый',3,3),
(14,'Зеленый',3,4),
(15,'Зеленый',3,5);
/*!40000 ALTER TABLE `hall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `playbill_desc`
--

DROP TABLE IF EXISTS `playbill_desc`;
/*!50001 DROP VIEW IF EXISTS `playbill_desc`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `playbill_desc` AS SELECT 
 1 AS `Название фильма`,
 1 AS `Начало сеанса`,
 1 AS `Продолжительность`,
 1 AS `Начало следующего сеанса`,
 1 AS `Длительность перерыва`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `playbill_make`
--

DROP TABLE IF EXISTS `playbill_make`;
/*!50001 DROP VIEW IF EXISTS `playbill_make`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `playbill_make` AS SELECT 
 1 AS `Название фильма`,
 1 AS `Начало сеанса`,
 1 AS `Продолжительность`,
 1 AS `Начало следующего сеанса`,
 1 AS `Длительность перерыва`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sales_from_09_to_15`
--

DROP TABLE IF EXISTS `sales_from_09_to_15`;
/*!50001 DROP VIEW IF EXISTS `sales_from_09_to_15`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sales_from_09_to_15` AS SELECT 
 1 AS `Продано билетов на сеансы с 9:00 до 15:00`,
 1 AS `На сумму`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sales_from_15_to_18`
--

DROP TABLE IF EXISTS `sales_from_15_to_18`;
/*!50001 DROP VIEW IF EXISTS `sales_from_15_to_18`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sales_from_15_to_18` AS SELECT 
 1 AS `Продано билетов на сеансы с 15:00 до 18:00`,
 1 AS `На сумму`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sales_from_18_to_21`
--

DROP TABLE IF EXISTS `sales_from_18_to_21`;
/*!50001 DROP VIEW IF EXISTS `sales_from_18_to_21`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sales_from_18_to_21` AS SELECT 
 1 AS `Продано билетов на сеансы с 18:00 до 21:00`,
 1 AS `На сумму`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sales_from_21_to_00`
--

DROP TABLE IF EXISTS `sales_from_21_to_00`;
/*!50001 DROP VIEW IF EXISTS `sales_from_21_to_00`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sales_from_21_to_00` AS SELECT 
 1 AS `Продано билетов на сеансы с 21:00 до 23:59`,
 1 AS `На сумму`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `show_schedule`
--

DROP TABLE IF EXISTS `show_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `show_schedule` (
  `id_show` int unsigned NOT NULL AUTO_INCREMENT,
  `id_film` int unsigned NOT NULL,
  `id_hall` int unsigned NOT NULL,
  `start_date` date NOT NULL,
  `start_time` time NOT NULL,
  `break_duration` time NOT NULL,
  PRIMARY KEY (`id_show`),
  KEY `fk_show_film_idx` (`id_film`),
  KEY `fk_show_hall_idx` (`id_hall`),
  CONSTRAINT `fk_show_film` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`),
  CONSTRAINT `fk_show_hall` FOREIGN KEY (`id_hall`) REFERENCES `hall` (`id_hall`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `show_schedule`
--

LOCK TABLES `show_schedule` WRITE;
/*!40000 ALTER TABLE `show_schedule` DISABLE KEYS */;
INSERT INTO `show_schedule` VALUES
(1,1,1,'2022-11-20','08:00:00','00:15:00'),
(2,2,1,'2022-11-20','09:15:00','00:20:00'),
(3,3,1,'2022-11-20','11:05:00','00:30:00'),
(4,4,1,'2022-11-20','13:35:00','00:25:00'),
(5,5,1,'2022-11-20','15:00:00','00:10:00'),
(6,6,1,'2022-11-20','16:40:00','00:15:00'),
(7,1,1,'2022-11-20','18:55:00','00:10:00'),
(8,3,1,'2022-11-20','20:05:00','00:15:00'),
(9,2,1,'2022-11-20','22:20:00','00:20:00');
/*!40000 ALTER TABLE `show_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `id_ticket` int unsigned NOT NULL AUTO_INCREMENT,
  `id_show` int unsigned NOT NULL,
  `line` int unsigned NOT NULL,
  `seat` int unsigned NOT NULL,
  `price` decimal(6,2) unsigned NOT NULL,
  PRIMARY KEY (`id_ticket`),
  KEY `fk_ticket_show_idx` (`id_show`),
  CONSTRAINT `fk_ticket_show` FOREIGN KEY (`id_show`) REFERENCES `show_schedule` (`id_show`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES
(1,1,1,7,500.00),
(2,1,1,8,500.00),
(3,2,2,7,650.00),
(4,2,2,8,650.00),
(5,3,5,7,700.00),
(6,3,5,8,700.00),
(7,3,7,7,750.00),
(8,3,7,8,750.00),
(9,4,10,7,1200.00),
(10,4,10,8,1200.00),
(11,5,9,3,1000.00),
(12,5,9,4,1000.00),
(13,6,11,5,900.00),
(14,6,11,6,900.00),
(15,7,3,7,1200.00),
(16,7,3,8,1200.00),
(17,8,5,7,900.00),
(18,8,5,8,900.00),
(19,9,3,4,700.00),
(20,9,3,5,700.00);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `total_fees`
--

DROP TABLE IF EXISTS `total_fees`;
/*!50001 DROP VIEW IF EXISTS `total_fees`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_fees` AS SELECT 
 1 AS `Всего продано билетов, шт.`,
 1 AS `На общую сумму, руб.`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'cinema'
--

--
-- Dumping routines for database 'cinema'
--

--
-- Final view structure for view `film_fees`
--

/*!50001 DROP VIEW IF EXISTS `film_fees`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `film_fees` AS select `fl`.`film_name` AS `Название фильма`,`fl`.`tickets` AS `Продано билетов`,`fl`.`summ` AS `На общую сумму` from (select `f`.`film_name` AS `film_name`,count(0) AS `tickets`,sum(`t`.`price`) AS `summ` from ((`ticket` `t` join `show_schedule` `sh` on((`t`.`id_show` = `sh`.`id_show`))) left join `film` `f` on((`sh`.`id_film` = `f`.`id_film`))) group by `f`.`id_film` order by sum(`t`.`price`) desc) `fl` union all select '----------' AS `----------`,' ' AS `Name_exp_5`,0 AS `0` union all select 'Итого' AS `Итого`,(select count(0) from `ticket` `t`) AS `(SELECT COUNT(0) FROM ticket t)`,(select sum(`t`.`price`) from `ticket` `t`) AS `(SELECT SUM(t.price) FROM ticket t)` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `playbill_desc`
--

/*!50001 DROP VIEW IF EXISTS `playbill_desc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `playbill_desc` AS select `f`.`film_name` AS `Название фильма`,`sh`.`start_time` AS `Начало сеанса`,`f`.`film_duration` AS `Продолжительность`,addtime((`sh`.`start_time` + `f`.`film_duration`),`sh`.`break_duration`) AS `Начало следующего сеанса`,`sh`.`break_duration` AS `Длительность перерыва` from (`show_schedule` `sh` left join `film` `f` on((`sh`.`id_film` = `f`.`id_film`))) group by `sh`.`start_time` order by `sh`.`break_duration` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `playbill_make`
--

/*!50001 DROP VIEW IF EXISTS `playbill_make`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `playbill_make` AS select `f`.`film_name` AS `Название фильма`,`sh`.`start_time` AS `Начало сеанса`,`f`.`film_duration` AS `Продолжительность`,addtime((`sh`.`start_time` + `f`.`film_duration`),`sh`.`break_duration`) AS `Начало следующего сеанса`,`sh`.`break_duration` AS `Длительность перерыва` from (`show_schedule` `sh` left join `film` `f` on((`sh`.`id_film` = `f`.`id_film`))) group by `sh`.`start_time` order by `sh`.`start_time` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sales_from_09_to_15`
--

/*!50001 DROP VIEW IF EXISTS `sales_from_09_to_15`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sales_from_09_to_15` AS select count(0) AS `Продано билетов на сеансы с 9:00 до 15:00`,sum(`t`.`price`) AS `На сумму` from (`ticket` `t` left join `show_schedule` `sh` on((`sh`.`id_show` = `t`.`id_show`))) where ((`sh`.`start_time` >= '09:00:00') and (`sh`.`start_time` < '15:00:00')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sales_from_15_to_18`
--

/*!50001 DROP VIEW IF EXISTS `sales_from_15_to_18`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sales_from_15_to_18` AS select count(0) AS `Продано билетов на сеансы с 15:00 до 18:00`,sum(`t`.`price`) AS `На сумму` from (`ticket` `t` left join `show_schedule` `sh` on((`sh`.`id_show` = `t`.`id_show`))) where ((`sh`.`start_time` >= '15:00:00') and (`sh`.`start_time` < '18:00:00')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sales_from_18_to_21`
--

/*!50001 DROP VIEW IF EXISTS `sales_from_18_to_21`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sales_from_18_to_21` AS select count(0) AS `Продано билетов на сеансы с 18:00 до 21:00`,sum(`t`.`price`) AS `На сумму` from (`ticket` `t` left join `show_schedule` `sh` on((`sh`.`id_show` = `t`.`id_show`))) where ((`sh`.`start_time` >= '18:00:00') and (`sh`.`start_time` < '21:00:00')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sales_from_21_to_00`
--

/*!50001 DROP VIEW IF EXISTS `sales_from_21_to_00`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sales_from_21_to_00` AS select count(0) AS `Продано билетов на сеансы с 21:00 до 23:59`,sum(`t`.`price`) AS `На сумму` from (`ticket` `t` left join `show_schedule` `sh` on((`sh`.`id_show` = `t`.`id_show`))) where ((`sh`.`start_time` >= '21:00:00') and (`sh`.`start_time` <= '23:59:59')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_fees`
--

/*!50001 DROP VIEW IF EXISTS `total_fees`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_fees` AS select count(0) AS `Всего продано билетов, шт.`,sum(`t`.`price`) AS `На общую сумму, руб.` from `ticket` `t` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-28 19:17:30
