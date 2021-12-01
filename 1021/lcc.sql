-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: lcc
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add items',7,'add_items'),(26,'Can change items',7,'change_items'),(27,'Can delete items',7,'delete_items'),(28,'Can view items',7,'view_items'),(29,'Can add product',8,'add_product'),(30,'Can change product',8,'change_product'),(31,'Can delete product',8,'delete_product'),(32,'Can view product',8,'view_product');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$WJ5yBkLlY5jv8MEp7gRGXZ$IELUDUmF33K4XYwJseLa59VeWN7S+9Q3tAlxUsqmx9s=','2021-10-19 10:47:17.382260',1,'bryce','','','bryce30090@gmail.com',1,1,'2021-10-19 10:46:48.544006');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'product','product'),(6,'sessions','session'),(7,'yahoo','items');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-10-19 10:42:52.043073'),(2,'auth','0001_initial','2021-10-19 10:42:52.780360'),(3,'admin','0001_initial','2021-10-19 10:42:52.955365'),(4,'admin','0002_logentry_remove_auto_add','2021-10-19 10:42:52.969041'),(5,'admin','0003_logentry_add_action_flag_choices','2021-10-19 10:42:52.978016'),(6,'contenttypes','0002_remove_content_type_name','2021-10-19 10:42:53.091735'),(7,'auth','0002_alter_permission_name_max_length','2021-10-19 10:42:53.188935'),(8,'auth','0003_alter_user_email_max_length','2021-10-19 10:42:53.232912'),(9,'auth','0004_alter_user_username_opts','2021-10-19 10:42:53.243883'),(10,'auth','0005_alter_user_last_login_null','2021-10-19 10:42:53.342638'),(11,'auth','0006_require_contenttypes_0002','2021-10-19 10:42:53.351825'),(12,'auth','0007_alter_validators_add_error_messages','2021-10-19 10:42:53.362193'),(13,'auth','0008_alter_user_username_max_length','2021-10-19 10:42:53.474634'),(14,'auth','0009_alter_user_last_name_max_length','2021-10-19 10:42:53.555131'),(15,'auth','0010_alter_group_name_max_length','2021-10-19 10:42:53.581313'),(16,'auth','0011_update_proxy_permissions','2021-10-19 10:42:53.591286'),(17,'auth','0012_alter_user_first_name_max_length','2021-10-19 10:42:53.660101'),(18,'product','0001_initial','2021-10-19 10:42:53.690022'),(19,'sessions','0001_initial','2021-10-19 10:42:53.737894'),(20,'yahoo','0001_initial','2021-10-19 10:42:53.770806');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('ncvu8jn9urz1gcwxo2lfeeg9a8izu8o6','.eJxVjEEOwiAQRe_C2hAoHWdw6b5nIMBMpWpKUtqV8e7apAvd_vfef6kQt7WErckSJlYXZdXpd0sxP2TeAd_jfKs613ldpqR3RR-06aGyPK-H-3dQYivfGjwyWcYMyVEyJEKeOSFQ7o0Dl_wZR7DSCxnfWSEcsbMZPQD2WVi9P9dpN3I:1mcmeL:QxXDYiIrF5VWj-N1W-b2HAOk6SwsTQAzHksmd7-Tqls','2021-11-02 10:47:17.387246');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop` varchar(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `photo_url` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL,
  `amount` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `product_type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shop` varchar(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `photo_url` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL,
  `amount` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `product_type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Yahoo','Apple iPhone 13 256G 6.1吋智慧型手機',29400,'https://s.yimg.com/zp/MerchandiseImages/ca76480d7a-Gd-9685151.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-256G-6-1吋智慧型手機-9685151.html',0,'0000-00-00',1),(2,'Yahoo','Apple iPhone 13 128G 組合',26900,'https://s.yimg.com/zp/MerchandiseImages/4FE60E80A2-SP-10393954.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-128G-組合-9692489.html',0,'0000-00-00',1),(3,'Yahoo','Apple iPhone 13 256GB',29400,'https://s.yimg.com/zp/MerchandiseImages/2A50194885-SP-10378729.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-256GB-9687939.html',0,'0000-00-00',1),(4,'Yahoo','Apple iPhone 13 256G 6.1吋智慧型手機',29400,'https://s.yimg.com/zp/MerchandiseImages/3041AF5452-SP-10374220.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-256G-6-1吋智慧型手機-9687220.html',0,'0000-00-00',1),(5,'Yahoo','Apple iPhone 13 128G 6.1吋智慧型手機',25900,'https://s.yimg.com/zp/MerchandiseImages/ca76480d7a-Gd-9685176.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-128G-6-1吋智慧型手機-9685176.html',0,'0000-00-00',1),(6,'Yahoo','2021 iPhone 13 128G 6.1吋 A15 仿生晶片 MLPF3TA MLPG3TA MLPH3TA MLPJ3TA MLPK3TA',25900,'https://s.yimg.com/zp/MerchandiseImages/EDAEBAD8AF-SP-10436505.jpg','https://tw.buy.yahoo.com/gdsale/2021-iPhone-13-128G-6-1吋-A15-仿生晶片-MLPF3TA-MLPG3TA-9707601.html',0,'0000-00-00',1),(7,'Yahoo','Apple iPhone 13 256G 6.1吋智慧型手機',29400,'https://s.yimg.com/zp/MerchandiseImages/65C6C3669A-Gd-9688935.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-256G-6-1吋智慧型手機-9688935.html',0,'0000-00-00',1),(8,'Yahoo','Apple iPhone 13 Pro 256G 6.1吋智慧型手機',36400,'https://s.yimg.com/zp/MerchandiseImages/3c908ec46d-Gd-9685152.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-Pro-256G-6-1吋智慧型手機-9685152.html',0,'0000-00-00',1),(9,'Yahoo','Apple iPhone 13 Pro Max 512G 6.7吋智慧型手機',47400,'https://s.yimg.com/zp/MerchandiseImages/B9DE377218-SP-10463088.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-Pro-Max-512G-6-7吋智慧型手機-9714950.html',0,'0000-00-00',1),(10,'Yahoo','Apple iPhone 13 256G',29400,'https://s.yimg.com/zp/MerchandiseImages/4FE60E80A2-SP-10392018.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-256G-9692015.html',0,'0000-00-00',1),(11,'Yahoo','Apple iPhone 13 256G MINI 5.4吋智慧型手機',26400,'https://s.yimg.com/zp/MerchandiseImages/3041AF5452-SP-10374483.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-256G-MINI-5-4吋智慧型手機-9687209.html',0,'0000-00-00',1),(12,'Yahoo','Apple iPhone 13 256G 6.1吋 5G 手機',29400,'https://s.yimg.com/zp/MerchandiseImages/8457CDFC58-SP-10392241.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-256G-6-1吋-5G-手機-9692159.html',0,'0000-00-00',1),(13,'Yahoo','Apple iPhone 13 512G 6.1吋智慧型手機',36400,'https://s.yimg.com/zp/MerchandiseImages/ca76480d7a-Gd-9685149.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-512G-6-1吋智慧型手機-9685149.html',0,'0000-00-00',1),(14,'Yahoo','Apple iPhone 13 mini 256G 5.4吋智慧型手機',26400,'https://s.yimg.com/zp/MerchandiseImages/390D50C611-SP-10376010.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-mini-256G-5-4吋智慧型手機-9686832.html',0,'0000-00-00',1),(15,'Yahoo','Apple iPhone 13 Pro 512G 6.1吋智慧型手機',43400,'https://s.yimg.com/zp/MerchandiseImages/3c908ec46d-Gd-9685161.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-Pro-512G-6-1吋智慧型手機-9685161.html',0,'0000-00-00',1),(16,'Yahoo','Apple iPhone 12 128G 6.1吋智慧型手機',24010,'https://s.yimg.com/zp/MerchandiseImages/E69C47DC52-SP-9007246.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-12-128G-6-1吋智慧型手機-9330891.html',0,'0000-00-00',1),(17,'Yahoo','CLC TS1-A 彩糖盒馬卡龍色藍芽耳機運動真無線藍芽耳機5.0 (五色可選)',450,'https://s.yimg.com/zp/MerchandiseImages/E84C63FCE7-SP-10312465.jpg','https://tw.buy.yahoo.com/gdsale/CLC-TS1-A-彩糖盒馬卡龍色藍芽耳機運動真無線藍芽耳機5-0-五色可選-9664360.html',0,'0000-00-00',1),(18,'Yahoo','小米 Redmi AirDots3 真無線藍芽耳機(星空藍)',1590,'https://s.yimg.com/zp/MerchandiseImages/FF94ADCD0B-SP-9723205.jpg','https://tw.buy.yahoo.com/gdsale/小米-Redmi-AirDots3-真無線藍芽耳機-星空藍-9469413.html',0,'0000-00-00',1),(19,'Yahoo','Timo【摩艾之聲限定版】真無線藍牙耳機 (IPX5防水 附專用摩艾保護套)',1290,'https://s.yimg.com/zp/MerchandiseImages/47A4F8B72C-SP-10056942.jpg','https://tw.buy.yahoo.com/gdsale/Timo-摩艾之聲限定版-真無線藍牙耳機-IPX5防水-附專用摩艾保護套-9584722.html',0,'0000-00-00',1),(20,'Yahoo','Beats Studio Buds 真無線降噪入耳式耳機(原廠公司貨)',4790,'https://s.yimg.com/zp/MerchandiseImages/071A65ED19-Gd-9627798.jpg','https://tw.buy.yahoo.com/gdsale/Beats-Studio-Buds-真無線降噪入耳式耳機-原廠公司貨-9627798.html',0,'0000-00-00',1),(21,'Yahoo','小米 Redmi AirDots 2 真無線藍芽耳機',729,'https://s.yimg.com/zp/MerchandiseImages/B39956158A-Gd-9139729.jpg','https://tw.buy.yahoo.com/gdsale/小米-Redmi-AirDots-2-真無線藍芽耳機-9139729.html',0,'0000-00-00',1),(22,'Yahoo','daho 馬卡龍 智能觸控無線藍牙耳機 HB05',690,'https://s.yimg.com/zp/MerchandiseImages/46CAC6196E-SP-8006526.jpg','https://tw.buy.yahoo.com/gdsale/daho-馬卡龍-智能觸控無線藍牙耳機-HB05-8816619.html',0,'0000-00-00',1),(23,'Yahoo','Beats Powerbeats 高機能無線耳機',4790,'https://s.yimg.com/zp/MerchandiseImages/91fdeaeb91-Gd-8910666.jpg','https://tw.buy.yahoo.com/gdsale/Beats-Powerbeats-高機能無線耳機-8910666.html',0,'0000-00-00',1),(24,'Yahoo','Beats Flex 頸掛無線入耳式耳機 (原廠公司貨)',2249,'https://s.yimg.com/zp/MerchandiseImages/19860726E2-Gd-9278261.jpg','https://tw.buy.yahoo.com/gdsale/Beats-Flex-頸掛無線入耳式耳機-原廠公司貨-9278261.html',0,'0000-00-00',1),(25,'Yahoo','Gigastone H1 耳罩式無線藍牙耳機',549,'https://s.yimg.com/zp/MerchandiseImages/69e6ca27bd-Gd-9210515.jpg','https://tw.buy.yahoo.com/gdsale/Gigastone-H1-耳罩式無線藍牙耳機-9210515.html',0,'0000-00-00',1),(26,'Yahoo','SONY 耳罩式耳機 WH-1000XM4 無線藍芽 智慧降噪 HiRes',8990,'https://s.yimg.com/zp/MerchandiseImages/F332385F6E-SP-8950034.jpg','https://tw.buy.yahoo.com/gdsale/SONY-耳罩式耳機-WH-1000XM4-無線藍芽-智慧降噪-HiRes-9186082.html',0,'0000-00-00',1),(27,'Yahoo','realme Buds Wireless Pro頸掛藍牙耳機-主動降噪版',999,'https://s.yimg.com/zp/MerchandiseImages/2F51CA96AA-Gd-9256816.jpg','https://tw.buy.yahoo.com/gdsale/realme-Buds-Wireless-Pro頸掛藍牙耳機-主動降噪版-9256816.html',0,'0000-00-00',1),(28,'Yahoo','小米 Redmi AirDots3 真無線藍芽耳機',1490,'https://s.yimg.com/zp/MerchandiseImages/ED3E58B6F6-Gd-9483457.jpg','https://tw.buy.yahoo.com/gdsale/小米-Redmi-AirDots3-真無線藍芽耳機-9483457.html',0,'0000-00-00',1),(29,'Yahoo','realme Buds Q2 真無線藍牙耳機',545,'https://s.yimg.com/zp/MerchandiseImages/9861eb6d27-Gd-9482942.jpg','https://tw.buy.yahoo.com/gdsale/realme-Buds-Q2-真無線藍牙耳機-9482942.html',0,'0000-00-00',1),(30,'Yahoo','DTA-AirPro3 無線藍芽耳機 三代1:1 原模打造 藍牙耳機',412,'https://s.yimg.com/zp/MerchandiseImages/11B09B7A0F-SP-8964362.jpg','https://tw.buy.yahoo.com/gdsale/DTA-AirPro3-無線藍芽耳機-三代1-1-原模打造-藍牙耳機-9191375.html',0,'0000-00-00',1),(31,'Yahoo','ifive】追風族（機車族）骨傳導概念藍牙耳機',869,'https://s.yimg.com/zp/MerchandiseImages/F6459276DB-Product-25915480.jpg','https://tw.buy.yahoo.com/gdsale/ifive-追風族-機車族-骨傳導概念藍牙耳機-9087572.html',0,'0000-00-00',1),(32,'Yahoo','ASUS FX516PR 15吋電競筆電 (i7-11370H/RTX3070/8G/512G SSD/TUF Dash F15)',41999,'https://s.yimg.com/zp/MerchandiseImages/AC5E37D4E4-Gd-9353086.jpg','https://tw.buy.yahoo.com/gdsale/ASUS-FX516PR-15吋電競筆電-i7-11370H-RTX3070-8G-512G-SSD-9353086.html',0,'0000-00-00',1),(33,'Yahoo','ASUS FX706HEB 17吋電競筆電 (i7-11800H/RTX 3050Ti/8G/512G/TUF Gaming F17/幻影灰)',37900,'https://s.yimg.com/zp/MerchandiseImages/C86CCB5768-Gd-9643126.jpg','https://tw.buy.yahoo.com/gdsale/ASUS-FX706HEB-17吋電競筆電-i7-11800H-RTX-3050Ti-8G-512G-9643126.html',0,'0000-00-00',1),(34,'Yahoo','ASUS FX506HEB 15吋電競筆電 (i7-11800H/RTX 3050Ti/8G/512GB/TUF Gaming F15/幻影灰)',37900,'https://s.yimg.com/zp/MerchandiseImages/B9C2DC9FA9-Gd-9643124.jpg','https://tw.buy.yahoo.com/gdsale/ASUS-FX506HEB-15吋電競筆電-i7-11800H-RTX-3050Ti-8G-512G-9643124.html',0,'0000-00-00',1),(35,'Yahoo','ASUS GA503QR 15吋電競筆電 (R9-5900HS/RTX3070/16G/1TB SSD/Zephyrus G15 日蝕灰)',55900,'https://s.yimg.com/zp/MerchandiseImages/080A8E7D15-Gd-9353083.jpg','https://tw.buy.yahoo.com/gdsale/ASUS-GA503QR-15吋電競筆電-R9-5900HS-RTX3070-16G-1TB-SSD-9353083.html',0,'0000-00-00',1),(36,'Yahoo','MSI微星 Creator Z16 Hiroshi Fujiwara A11UE-225TW16吋創作者筆電 (i7-11800H/16G/RTX3060-6G/1T SSD/Win10)',76900,'https://s.yimg.com/zp/MerchandiseImages/4071C2391A-Gd-9721105.jpg','https://tw.buy.yahoo.com/gdsale/MSI微星-Creator-Z16-Hiroshi-Fujiwara-A11UE-225TW16吋創-9721105.html',0,'0000-00-00',1),(37,'Yahoo','MSI微星 GF63 10SCSR-1644TW 15.6吋電競筆電(i7-10750H/8G/GTX1650Ti-4G/512G SSD/Win10/FHD/144Hz)',29900,'https://s.yimg.com/zp/MerchandiseImages/EC8A023E2D-SP-10235248.jpg','https://tw.buy.yahoo.com/gdsale/MSI微星-GF63-10SCSR-1644TW-15-6吋電競筆電-i7-10750H-8G-GT-9640615.html',0,'0000-00-00',1),(38,'Yahoo','ASUS G513QE 15吋電競筆電 (R9-5900HX/RTX3050Ti/8G/512G/ROG Strix G15/潮魂黑)',38900,'https://s.yimg.com/zp/MerchandiseImages/1C518856C1-Gd-9618216.jpg','https://tw.buy.yahoo.com/gdsale/ASUS-G513QE-15吋電競筆電-R9-5900HX-RTX3050Ti-8G-512G-RO-9618216.html',0,'0000-00-00',1),(39,'Yahoo','ASUS G733QM 17.3吋電競筆電 (R9-5900HX/RTX 3060/16GB/1TB SSD/ROG Strix SCAR17)',53500,'https://s.yimg.com/zp/MerchandiseImages/7AF98F2DCC-SP-10433795.jpg','https://tw.buy.yahoo.com/gdsale/ASUS-G733QM-17-3吋電競筆電-R9-5900HX-RTX-3060-16GB-1TB-9706973.html',0,'0000-00-00',1),(40,'Yahoo','ASUS G513QE 15吋電競筆電 (R9-5900HX/RTX3050Ti/8GB/1TB SSD/ROG Strix G15/電馭粉)',40900,'https://s.yimg.com/zp/MerchandiseImages/B6CEED5B07-Gd-9618218.jpg','https://tw.buy.yahoo.com/gdsale/ASUS-G513QE-15吋電競筆電-R9-5900HX-RTX3050Ti-8GB-1TB-SS-9618218.html',0,'0000-00-00',1),(41,'Yahoo','Acer AN517-54-75TM 17吋筆電(i7-11800H/RTX3050Ti/16G/512G SSD/黑)',42900,'https://s.yimg.com/zp/MerchandiseImages/C4D1062775-SP-9997831.jpg','https://tw.buy.yahoo.com/gdsale/Acer-AN517-54-75TM-17吋筆電-i7-11800H-RTX3050Ti-16G-5-9566554.html',0,'0000-00-00',1),(42,'Yahoo','ASUS FX516PM 15吋電競筆電 (i7-11370H/RTX3060/8G/512G SSD/TUF Dash F15/星耀白)',39900,'https://s.yimg.com/zp/MerchandiseImages/2937e2960e-Gd-9457516.jpg','https://tw.buy.yahoo.com/gdsale/ASUS-FX516PM-15吋電競筆電-i7-11370H-RTX3060-8G-512G-SSD-9457516.html',0,'0000-00-00',1),(43,'Yahoo','MSI微星 Katana GF66 11SC-036TW 15.6吋電競筆電(i5-11400H/8G/GTX1650-4G/512G SSD/Win10/FHD/144Hz)',31900,'https://s.yimg.com/zp/MerchandiseImages/D49927C100-SP-9852527.jpg','https://tw.buy.yahoo.com/gdsale/MSI微星-Katana-GF66-11SC-036TW-15-6吋電競筆電-i5-11400H-8-9511587.html',0,'0000-00-00',1),(44,'Yahoo','ASUS FX516PM 15吋電競筆電 (i7-11370H/RTX 3060/16GB/512G SSD/TUF Dash F15/御鐵灰)',43900,'https://s.yimg.com/zp/MerchandiseImages/0EFB0EE6B2-Gd-9630522.jpg','https://tw.buy.yahoo.com/gdsale/ASUS-FX516PM-15吋電競筆電-i7-11370H-RTX-3060-16GB-512G-9630522.html',0,'0000-00-00',1),(45,'Yahoo','MSI微星 GP66 11UH-401TW 15吋11代30系列電競筆電(i7-11800H/16G/1T SSD/RTX 3080-8G/Win10)',64999,'https://s.yimg.com/zp/MerchandiseImages/23334C0628-SP-10046898.jpg','https://tw.buy.yahoo.com/gdsale/MSI微星-GP66-11UH-401TW-15吋11代30系列電競筆電-i7-11800H-16G-9584460.html',0,'0000-00-00',1),(46,'Yahoo','ASUS GV301QH 13吋電競筆電 (R9-5900HS/GTX1650/16G/1TB SSD/4K翻轉觸控/ROG Flow X13)',47900,'https://s.yimg.com/zp/MerchandiseImages/6AC95E9315-Gd-9407430.jpg','https://tw.buy.yahoo.com/gdsale/ASUS-GV301QH-13吋電競筆電-R9-5900HS-GTX1650-16G-1TB-SSD-9407430.html',0,'0000-00-00',1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-21 21:48:57
