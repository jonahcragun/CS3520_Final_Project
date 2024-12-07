-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: table_booking_system
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `card`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `card_reference` varchar(255) NOT NULL,
  `created_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `card_reference` (`card_reference`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`id`, `card_reference`, `created_at`, `updated_at`) VALUES (1,'card_ref_001','2024-12-07 05:57:28.212','2024-12-07 05:57:28.212'),(2,'card_ref_002','2024-12-07 05:57:28.212','2024-12-07 05:57:28.212'),(3,'card_ref_003','2024-12-07 05:57:28.212','2024-12-07 05:57:28.212'),(4,'card_ref_004','2024-12-07 05:57:28.212','2024-12-07 05:57:28.212'),(5,'card_ref_005','2024-12-07 05:57:28.212','2024-12-07 05:57:28.212'),(6,'card_ref_006','2024-12-07 05:57:28.212','2024-12-07 05:57:28.212'),(7,'card_ref_007','2024-12-07 05:57:28.212','2024-12-07 05:57:28.212'),(8,'card_ref_008','2024-12-07 05:57:28.212','2024-12-07 05:57:28.212'),(9,'card_ref_009','2024-12-07 05:57:28.212','2024-12-07 05:57:28.212'),(10,'card_ref_010','2024-12-07 05:57:28.212','2024-12-07 05:57:28.212'),(11,'card_ref_011','2024-12-07 05:57:28.212','2024-12-07 05:57:28.212'),(12,'card_ref_012','2024-12-07 05:57:28.212','2024-12-07 05:57:28.212'),(13,'card_ref_013','2024-12-07 05:57:28.212','2024-12-07 05:57:28.212'),(14,'card_ref_014','2024-12-07 05:57:28.212','2024-12-07 05:57:28.212'),(15,'card_ref_015','2024-12-07 05:57:28.212','2024-12-07 05:57:28.212');

--
-- Table structure for table `customer`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `State` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `first_name`, `last_name`, `phone`, `email`, `address`, `City`, `State`) VALUES (1,'Aaron','Zalmon','(801)000-0000','aaron_zalmon@mail.com','0 West 0 North','Salt Lake City','Utah'),(2,'Baron','Yalmon','(801)001-0001','baron_yalmon@mail.com','10 West 10 North','Salt Lake City','Utah'),(3,'Caron','Xalmon','(801)002-0002','caron_xalmon@mail.com','20 West 20 North','Salt Lake City','Utah'),(4,'Daron','Walmon','(801)003-0003','daron_walmon@mail.com','30 West 30 North','Salt Lake City','Utah'),(5,'Earon','Valmon','(801)004-0004','earon_valmon@mail.com','40 West 40 North','Salt Lake City','Utah'),(6,'Faron','Ualmon','(801)005-0005','faron_ualmon@mail.com','50 West 50 North','Salt Lake City','Utah'),(7,'Garon','Talmon','(801)006-0006','garon_talmon@mail.com','60 West 60 North','Salt Lake City','Utah'),(8,'Haron','Salmon','(801)007-0007','haron_salmon@mail.com','70 West 70 North','Salt Lake City','Utah'),(9,'Iaron','Ralmon','(801)010-0010','iaron_ralmon@mail.com','80 West 80 North','Salt Lake City','Utah'),(10,'Jaron','Qalmon','(801)011-0011','jaron_qalmon@mail.com','90 West 90 North','Salt Lake City','Utah'),(11,'Karon','Palmon','(801)012-0012','karon_palmon@mail.com','100 West 100 North','Salt Lake City','Utah'),(12,'Laron','Oalmon','(801)013-0013','laron_oalmon@mail.com','110 West 110 North','Salt Lake City','Utah'),(13,'Maron','Nalmon','(801)014-0014','maron_nalmon@mail.com','120 West 120 North','Salt Lake City','Utah'),(14,'Naron','Malmon','(801)015-0015','naron_malmon@mail.com','130 West 130 North','Salt Lake City','Utah'),(15,'Oaron','Lalmon','(801)016-0016','oaron_lalmon@mail.com','140 West 140 North','Salt Lake City','Utah'),(16,'Paron','Kalmon','(801)017-0017','paron_kalmon@mail.com','150 West 150 North','Salt Lake City','Utah'),(17,'Qaron','Jalmon','(801)020-0020','qaron_jalmon@mail.com','160 West 160 North','Salt Lake City','Utah'),(18,'Raron','Ialmon','(801)021-0021','raron_ialmon@mail.com','170 West 170 North','Salt Lake City','Utah'),(19,'Saron','Halmon','(801)022-0022','saron_halmon@mail.com','180 West 180 North','Salt Lake City','Utah'),(20,'Taron','Galmon','(801)023-0023','taron_galmon@mail.com','190 West 190 North','Salt Lake City','Utah'),(21,'Uaron','Falmon','(801)024-0024','uaron_falmon@mail.com','200 West 200 North','Salt Lake City','Utah'),(22,'Varon','Ealmon','(801)025-0025','varon_ealmon@mail.com','210 West 210 North','Salt Lake City','Utah'),(23,'Waron','Dalmon','(801)026-0026','waron_dalmon@mail.com','220 West 220 North','Salt Lake City','Utah'),(24,'Xaron','Calmon','(801)027-0027','xaron_calmon@mail.com','230 West 230 North','Salt Lake City','Utah'),(25,'Yaron','Balmon','(801)030-0030','yaron_balmon@mail.com','240 West 240 North','Salt Lake City','Utah'),(26,'Zaron','Aalmon','(801)031-0031','zaron_aalmon@mail.com','250 West 250 North','Salt Lake City','Utah'),(27,'aaronz','Zalmona','(801)032-0032','aaronz_zalmona@mail.com','260 West 260 North','Salt Lake City','Utah'),(28,'aarony','Zalmonb','(801)033-0033','aarony_zalmonb@mail.com','270 West 270 North','Salt Lake City','Utah'),(29,'aaronx','Zalmonc','(801)034-0034','aaronx_zalmonc@mail.com','280 West 280 North','Salt Lake City','Utah'),(30,'aaronw','Zalmond','(801)035-0035','aaronw_zalmond@mail.com','290 West 290 North','Salt Lake City','Utah'),(31,'aaronv','Zalmone','(801)036-0036','aaronv_zalmone@mail.com','300 West 300 North','Salt Lake City','Utah'),(32,'aaronu','Zalmonf','(801)037-0037','aaronu_zalmonf@mail.com','310 West 310 North','Salt Lake City','Utah'),(33,'aaront','Zalmong','(801)040-0040','aaront_zalmong@mail.com','320 West 320 North','Salt Lake City','Utah'),(34,'aarons','Zalmonh','(801)041-0041','aarons_zalmonh@mail.com','330 West 330 North','Salt Lake City','Utah'),(35,'aaronr','Zalmoni','(801)042-0042','aaronr_zalmoni@mail.com','340 West 340 North','Salt Lake City','Utah'),(36,'aaronq','Zalmonj','(801)043-0043','aaronq_zalmonj@mail.com','350 West 350 North','Salt Lake City','Utah'),(37,'aaronp','Zalmonk','(801)044-0044','aaronp_zalmonk@mail.com','360 West 360 North','Salt Lake City','Utah'),(38,'aarono','Zalmonl','(801)045-0045','aarono_zalmonl@mail.com','370 West 370 North','Salt Lake City','Utah'),(39,'aaronn','Zalmonm','(801)046-0046','aaronn_zalmonm@mail.com','380 West 380 North','Salt Lake City','Utah'),(40,'aaronm','Zalmonn','(801)047-0047','aaronm_zalmonn@mail.com','390 West 390 North','Salt Lake City','Utah'),(41,'aaronl','Zalmono','(801)050-0050','aaronl_zalmono@mail.com','400 West 400 North','Salt Lake City','Utah'),(42,'aaronk','Zalmonp','(801)051-0051','aaronk_zalmonp@mail.com','410 West 410 North','Salt Lake City','Utah'),(43,'aaronj','Zalmonq','(801)052-0052','aaronj_zalmonq@mail.com','420 West 420 North','Salt Lake City','Utah'),(44,'aaroni','Zalmonr','(801)053-0053','aaroni_zalmonr@mail.com','430 West 430 North','Salt Lake City','Utah'),(45,'aaronh','Zalmons','(801)054-0054','aaronh_zalmons@mail.com','440 West 440 North','Salt Lake City','Utah'),(46,'aarong','Zalmont','(801)055-0055','aarong_zalmont@mail.com','450 West 450 North','Salt Lake City','Utah'),(47,'aaronf','Zalmonu','(801)056-0056','aaronf_zalmonu@mail.com','460 West 460 North','Salt Lake City','Utah'),(48,'aarone','Zalmonv','(801)057-0057','aarone_zalmonv@mail.com','470 West 470 North','Salt Lake City','Utah'),(49,'aarond','Zalmonw','(801)060-0060','aarond_zalmonw@mail.com','480 West 480 North','Salt Lake City','Utah'),(50,'aaronc','Zalmonx','(801)061-0061','aaronc_zalmonx@mail.com','490 West 490 North','Salt Lake City','Utah'),(51,'aaronb','Zalmony','(801)062-0062','aaronb_zalmony@mail.com','500 West 500 North','Salt Lake City','Utah'),(52,'aarona','Zalmonz','(801)063-0063','aarona_zalmonz@mail.com','510 West 510 North','Salt Lake City','Utah'),(53,'Baronz','Yalmona','(801)033-0033','baronz_yalmona@mail.com','270 West 270 North','Salt Lake City','Utah'),(54,'Barony','Yalmonb','(801)034-0034','barony_yalmonb@mail.com','280 West 280 North','Salt Lake City','Utah'),(55,'Baronx','Yalmonc','(801)035-0035','baronx_yalmonc@mail.com','290 West 290 North','Salt Lake City','Utah'),(56,'Baronw','Yalmond','(801)036-0036','baronw_yalmond@mail.com','300 West 300 North','Salt Lake City','Utah'),(57,'Baronv','Yalmone','(801)037-0037','baronv_yalmone@mail.com','310 West 310 North','Salt Lake City','Utah'),(58,'Baronu','Yalmonf','(801)040-0040','baronu_yalmonf@mail.com','320 West 320 North','Salt Lake City','Utah'),(59,'Baront','Yalmong','(801)041-0041','baront_yalmong@mail.com','330 West 330 North','Salt Lake City','Utah'),(60,'Barons','Yalmonh','(801)042-0042','barons_yalmonh@mail.com','340 West 340 North','Salt Lake City','Utah'),(61,'Baronr','Yalmoni','(801)043-0043','baronr_yalmoni@mail.com','350 West 350 North','Salt Lake City','Utah'),(62,'Baronq','Yalmonj','(801)044-0044','baronq_yalmonj@mail.com','360 West 360 North','Salt Lake City','Utah'),(63,'Baronp','Yalmonk','(801)045-0045','baronp_yalmonk@mail.com','370 West 370 North','Salt Lake City','Utah'),(64,'Barono','Yalmonl','(801)046-0046','barono_yalmonl@mail.com','380 West 380 North','Salt Lake City','Utah'),(65,'Baronn','Yalmonm','(801)047-0047','baronn_yalmonm@mail.com','390 West 390 North','Salt Lake City','Utah'),(66,'Baronm','Yalmonn','(801)050-0050','baronm_yalmonn@mail.com','400 West 400 North','Salt Lake City','Utah'),(67,'Baronl','Yalmono','(801)051-0051','baronl_yalmono@mail.com','410 West 410 North','Salt Lake City','Utah'),(68,'Baronk','Yalmonp','(801)052-0052','baronk_yalmonp@mail.com','420 West 420 North','Salt Lake City','Utah'),(69,'Baronj','Yalmonq','(801)053-0053','baronj_yalmonq@mail.com','430 West 430 North','Salt Lake City','Utah'),(70,'Baroni','Yalmonr','(801)054-0054','baroni_yalmonr@mail.com','440 West 440 North','Salt Lake City','Utah'),(71,'Baronh','Yalmons','(801)055-0055','baronh_yalmons@mail.com','450 West 450 North','Salt Lake City','Utah'),(72,'Barong','Yalmont','(801)056-0056','barong_yalmont@mail.com','460 West 460 North','Salt Lake City','Utah'),(73,'Baronf','Yalmonu','(801)057-0057','baronf_yalmonu@mail.com','470 West 470 North','Salt Lake City','Utah'),(74,'Barone','Yalmonv','(801)060-0060','barone_yalmonv@mail.com','480 West 480 North','Salt Lake City','Utah'),(75,'Barond','Yalmonw','(801)061-0061','barond_yalmonw@mail.com','490 West 490 North','Salt Lake City','Utah'),(76,'Baronc','Yalmonx','(801)062-0062','baronc_yalmonx@mail.com','500 West 500 North','Salt Lake City','Utah'),(77,'Baronb','Yalmony','(801)063-0063','baronb_yalmony@mail.com','510 West 510 North','Salt Lake City','Utah'),(78,'Barona','Yalmonz','(801)064-0064','barona_yalmonz@mail.com','520 West 520 North','Salt Lake City','Utah'),(79,'Caronz','Xalmona','(801)065-0065','caronz_xalmona@mail.com','530 West 530 North','Salt Lake City','Utah'),(80,'Carony','Xalmonb','(801)066-0066','carony_xalmonb@mail.com','540 West 540 North','Salt Lake City','Utah'),(81,'Caronx','Xalmonc','(801)067-0067','caronx_xalmonc@mail.com','550 West 550 North','Salt Lake City','Utah'),(82,'Caronw','Xalmond','(801)070-0070','caronw_xalmond@mail.com','560 West 560 North','Salt Lake City','Utah'),(83,'Caronv','Xalmone','(801)071-0071','caronv_xalmone@mail.com','570 West 570 North','Salt Lake City','Utah'),(84,'Caronu','Xalmonf','(801)072-0072','caronu_xalmonf@mail.com','580 West 580 North','Salt Lake City','Utah'),(85,'Caront','Xalmong','(801)073-0073','caront_xalmong@mail.com','590 West 590 North','Salt Lake City','Utah'),(86,'Carons','Xalmonh','(801)074-0074','carons_xalmonh@mail.com','600 West 600 North','Salt Lake City','Utah'),(87,'Caronr','Xalmoni','(801)075-0075','caronr_xalmoni@mail.com','610 West 610 North','Salt Lake City','Utah'),(88,'Caronq','Xalmonj','(801)076-0076','caronq_xalmonj@mail.com','620 West 620 North','Salt Lake City','Utah'),(89,'Caronp','Xalmonk','(801)077-0077','caronp_xalmonk@mail.com','630 West 630 North','Salt Lake City','Utah'),(90,'Carono','Xalmonl','(801)100-0100','carono_xalmonl@mail.com','640 West 640 North','Salt Lake City','Utah'),(91,'Caronn','Xalmonm','(801)101-0101','caronn_xalmonm@mail.com','650 West 650 North','Salt Lake City','Utah'),(92,'Caronm','Xalmonn','(801)102-0102','caronm_xalmonn@mail.com','660 West 660 North','Salt Lake City','Utah'),(93,'Caronl','Xalmono','(801)103-0103','caronl_xalmono@mail.com','670 West 670 North','Salt Lake City','Utah'),(94,'Caronk','Xalmonp','(801)104-0104','caronk_xalmonp@mail.com','680 West 680 North','Salt Lake City','Utah'),(95,'Caronj','Xalmonq','(801)105-0105','caronj_xalmonq@mail.com','690 West 690 North','Salt Lake City','Utah'),(96,'Caroni','Xalmonr','(801)106-0106','caroni_xalmonr@mail.com','700 West 700 North','Salt Lake City','Utah'),(97,'Caronh','Xalmons','(801)107-0107','caronh_xalmons@mail.com','710 West 710 North','Salt Lake City','Utah'),(98,'Carong','Xalmont','(801)110-0110','carong_xalmont@mail.com','720 West 720 North','Salt Lake City','Utah'),(99,'Caronf','Xalmonu','(801)111-0111','caronf_xalmonu@mail.com','730 West 730 North','Salt Lake City','Utah'),(100,'Carone','Xalmonv','(801)112-0112','carone_xalmonv@mail.com','740 West 740 North','Salt Lake City','Utah'),(101,'Carond','Xalmonw','(801)113-0113','carond_xalmonw@mail.com','750 West 750 North','Salt Lake City','Utah'),(102,'Caronc','Xalmonx','(801)114-0114','caronc_xalmonx@mail.com','760 West 760 North','Salt Lake City','Utah'),(103,'Caronb','Xalmony','(801)115-0115','caronb_xalmony@mail.com','770 West 770 North','Salt Lake City','Utah'),(104,'Carona','Xalmonz','(801)116-0116','carona_xalmonz@mail.com','780 West 780 North','Salt Lake City','Utah');

--
-- Table structure for table `open_hours`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `open_hours` (
  `day_of_week` enum('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday') NOT NULL,
  `open_time` time NOT NULL,
  `close_time` time NOT NULL,
  PRIMARY KEY (`day_of_week`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `open_hours`
--

INSERT INTO `open_hours` (`day_of_week`, `open_time`, `close_time`) VALUES ('Monday','08:00:00','22:00:00'),('Tuesday','08:00:00','22:00:00'),('Wednesday','08:00:00','22:00:00'),('Thursday','08:00:00','22:00:00'),('Friday','08:00:00','23:00:00'),('Saturday','10:00:00','23:00:00'),('Sunday','10:00:00','20:00:00');

--
-- Table structure for table `reservation`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer_id` bigint NOT NULL,
  `reservation_time` datetime NOT NULL,
  `number_of_guests` bigint NOT NULL,
  `table_id` bigint NOT NULL,
  `card_id` bigint DEFAULT NULL,
  `created_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  KEY `reservation_customer_id_fk` (`customer_id`),
  KEY `reservation_table_id_fk` (`table_id`),
  KEY `reservation_card_id_fk` (`card_id`),
  CONSTRAINT `reservation_card_id_fk` FOREIGN KEY (`card_id`) REFERENCES `card` (`id`),
  CONSTRAINT `reservation_customer_id_fk` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `reservation_table_id_fk` FOREIGN KEY (`table_id`) REFERENCES `table` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `customer_id`, `reservation_time`, `number_of_guests`, `table_id`, `card_id`, `created_at`, `updated_at`) VALUES (1,1,'2024-12-06 08:00:00',6,3,1,'2024-12-07 05:57:28.366','2024-12-07 05:57:28.366'),(2,2,'2024-12-06 08:15:00',4,2,2,'2024-12-07 05:57:28.373','2024-12-07 05:57:28.373'),(3,3,'2024-12-06 10:00:00',8,4,3,'2024-12-07 05:57:28.379','2024-12-07 05:57:28.379'),(4,4,'2024-12-06 14:00:00',2,1,4,'2024-12-07 05:57:28.385','2024-12-07 05:57:28.385'),(5,4,'2024-12-06 14:00:00',2,5,4,'2024-12-07 05:57:28.392','2024-12-07 05:57:28.392'),(6,4,'2024-12-06 14:00:00',2,9,4,'2024-12-07 05:57:28.399','2024-12-07 05:57:28.399'),(7,4,'2024-12-06 14:00:00',2,13,4,'2024-12-07 05:57:28.405','2024-12-07 05:57:28.405'),(8,4,'2024-12-06 14:00:00',2,17,4,'2024-12-07 05:57:28.413','2024-12-07 05:57:28.413'),(9,4,'2024-12-06 14:00:00',2,2,4,'2024-12-07 05:57:28.420','2024-12-07 05:57:28.420'),(10,4,'2024-12-06 14:00:00',2,6,4,'2024-12-07 05:57:28.426','2024-12-07 05:57:28.426'),(11,4,'2024-12-06 14:00:00',2,10,4,'2024-12-07 05:57:28.432','2024-12-07 05:57:28.432'),(12,4,'2024-12-06 14:00:00',2,14,4,'2024-12-07 05:57:28.439','2024-12-07 05:57:28.439'),(13,4,'2024-12-06 14:00:00',2,18,4,'2024-12-07 05:57:28.446','2024-12-07 05:57:28.446'),(14,4,'2024-12-06 14:00:00',2,3,4,'2024-12-07 05:57:28.459','2024-12-07 05:57:28.459'),(15,4,'2024-12-06 14:00:00',2,7,4,'2024-12-07 05:57:28.466','2024-12-07 05:57:28.466'),(16,5,'2024-12-06 16:00:00',6,3,5,'2024-12-07 05:57:28.475','2024-12-07 05:57:28.475'),(17,6,'2024-12-06 18:00:00',4,2,6,'2024-12-07 05:57:28.483','2024-12-07 05:57:28.483'),(18,7,'2024-12-06 20:00:00',8,4,7,'2024-12-07 05:57:28.489','2024-12-07 05:57:28.489'),(19,7,'2024-12-06 20:00:00',8,8,7,'2024-12-07 05:57:28.498','2024-12-07 05:57:28.498'),(20,7,'2024-12-06 20:00:00',8,12,7,'2024-12-07 05:57:28.509','2024-12-07 05:57:28.509'),(21,7,'2024-12-06 20:00:00',8,16,7,'2024-12-07 05:57:28.515','2024-12-07 05:57:28.515');

--
-- Table structure for table `table`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `table_size` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table`
--

INSERT INTO `table` (`id`, `table_size`) VALUES (1,2),(2,4),(3,6),(4,8),(5,2),(6,4),(7,6),(8,8),(9,2),(10,4),(11,6),(12,8),(13,2),(14,4),(15,6),(16,8),(17,2),(18,4),(19,6),(20,8);

--
-- Dumping routines for database 'table_booking_system'
--
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `make_reservation`(
    IN p_customer_id BIGINT,
    IN p_reservation_time DATETIME,
    IN p_number_of_guests BIGINT,
    IN p_card_id BIGINT
)
BEGIN
    DECLARE suitable_table_id BIGINT;
    DECLARE reservation_end_time DATETIME;
    DECLARE open_start TIME;
    DECLARE open_end TIME;

    -- Calculate the reservation's end time (2 hours from the reservation start time)
    SET reservation_end_time = DATE_ADD(p_reservation_time, INTERVAL 2 HOUR);

    -- Get the open hours for the given day of the week
    SELECT open_time, close_time
    INTO open_start, open_end
    FROM open_hours
    WHERE day_of_week = DAYNAME(p_reservation_time);

    -- Ensure the reservation is within open hours
    IF TIME(p_reservation_time) < open_start OR TIME(reservation_end_time) > open_end THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Reservation time is outside of open hours.';
    END IF;

    -- Find the smallest suitable table that is not already booked
    SELECT id INTO suitable_table_id
    FROM `table`
    WHERE table_size >= p_number_of_guests
      AND id NOT IN (
        SELECT table_id
        FROM reservation r
        WHERE p_reservation_time >= r.reservation_time
          AND p_reservation_time < DATE_ADD(r.reservation_time, INTERVAL 2 HOUR)
    )
    ORDER BY table_size
    LIMIT 1;

    -- If no table is available, raise an error
    IF suitable_table_id IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'No suitable table is available for the given time slot.';
    END IF;

    -- Insert the reservation
    INSERT INTO reservation (
        customer_id,
        reservation_time,
        number_of_guests,
        table_id,
        card_id
    )
    VALUES (
               p_customer_id,
               p_reservation_time,
               p_number_of_guests,
               suitable_table_id,
               p_card_id
           );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-06 22:58:32
