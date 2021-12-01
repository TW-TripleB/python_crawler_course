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
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add product',7,'add_product'),(26,'Can change product',7,'change_product'),(27,'Can delete product',7,'delete_product'),(28,'Can view product',7,'view_product'),(29,'Can add message',8,'add_message'),(30,'Can change message',8,'change_message'),(31,'Can delete message',8,'delete_message'),(32,'Can view message',8,'view_message');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
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
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'message','message'),(7,'product','product'),(6,'sessions','session');
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
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-10-19 11:10:56.031496'),(2,'auth','0001_initial','2021-10-19 11:10:56.640738'),(3,'admin','0001_initial','2021-10-19 11:10:56.875061'),(4,'admin','0002_logentry_remove_auto_add','2021-10-19 11:10:56.875061'),(5,'admin','0003_logentry_add_action_flag_choices','2021-10-19 11:10:56.890683'),(6,'contenttypes','0002_remove_content_type_name','2021-10-19 11:10:57.000033'),(7,'auth','0002_alter_permission_name_max_length','2021-10-19 11:10:57.078140'),(8,'auth','0003_alter_user_email_max_length','2021-10-19 11:10:57.109384'),(9,'auth','0004_alter_user_username_opts','2021-10-19 11:10:57.125006'),(10,'auth','0005_alter_user_last_login_null','2021-10-19 11:10:57.171871'),(11,'auth','0006_require_contenttypes_0002','2021-10-19 11:10:57.187492'),(12,'auth','0007_alter_validators_add_error_messages','2021-10-19 11:10:57.187492'),(13,'auth','0008_alter_user_username_max_length','2021-10-19 11:10:57.265601'),(14,'auth','0009_alter_user_last_name_max_length','2021-10-19 11:10:57.312464'),(15,'auth','0010_alter_group_name_max_length','2021-10-19 11:10:57.343708'),(16,'auth','0011_update_proxy_permissions','2021-10-19 11:10:57.343708'),(17,'auth','0012_alter_user_first_name_max_length','2021-10-19 11:10:57.421816'),(18,'product','0001_initial','2021-10-19 11:10:57.437438'),(19,'sessions','0001_initial','2021-10-19 11:10:57.499924'),(20,'message','0001_initial','2021-10-26 12:33:42.814269');
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
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
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
  `mount` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `product_type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Yahoo','Apple iPhone 13 256G 6.1吋智慧型手機',29400,'https://s.yimg.com/zp/MerchandiseImages/ca76480d7a-Gd-9685151.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-256G-6-1吋智慧型手機-9685151.html',0,'0000-00-00',1),(2,'Yahoo','Apple iPhone 13 128G 組合',26900,'https://s.yimg.com/zp/MerchandiseImages/4FE60E80A2-SP-10393954.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-128G-組合-9692489.html',0,'0000-00-00',1),(3,'Yahoo','Apple iPhone 13 256GB',29400,'https://s.yimg.com/zp/MerchandiseImages/2A50194885-SP-10378729.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-256GB-9687939.html',0,'0000-00-00',1),(4,'Yahoo','Apple iPhone 13 256G 6.1吋智慧型手機',29400,'https://s.yimg.com/zp/MerchandiseImages/3041AF5452-SP-10374220.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-256G-6-1吋智慧型手機-9687220.html',0,'0000-00-00',1),(5,'Yahoo','Apple iPhone 13 128G 6.1吋智慧型手機',25900,'https://s.yimg.com/zp/MerchandiseImages/ca76480d7a-Gd-9685176.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-128G-6-1吋智慧型手機-9685176.html',0,'0000-00-00',1),(6,'Yahoo','2021 iPhone 13 128G 6.1吋 A15 仿生晶片 MLPF3TA MLPG3TA MLPH3TA MLPJ3TA MLPK3TA',25900,'https://s.yimg.com/zp/MerchandiseImages/EDAEBAD8AF-SP-10436505.jpg','https://tw.buy.yahoo.com/gdsale/2021-iPhone-13-128G-6-1吋-A15-仿生晶片-MLPF3TA-MLPG3TA-9707601.html',0,'0000-00-00',1),(7,'Yahoo','Apple iPhone 13 256G 6.1吋智慧型手機',29400,'https://s.yimg.com/zp/MerchandiseImages/65C6C3669A-Gd-9688935.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-256G-6-1吋智慧型手機-9688935.html',0,'0000-00-00',1),(8,'Yahoo','Apple iPhone 13 Pro 256G 6.1吋智慧型手機',36400,'https://s.yimg.com/zp/MerchandiseImages/3c908ec46d-Gd-9685152.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-Pro-256G-6-1吋智慧型手機-9685152.html',0,'0000-00-00',1),(9,'Yahoo','Apple iPhone 13 Pro Max 512G 6.7吋智慧型手機',47400,'https://s.yimg.com/zp/MerchandiseImages/B9DE377218-SP-10463088.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-Pro-Max-512G-6-7吋智慧型手機-9714950.html',0,'0000-00-00',1),(10,'Yahoo','Apple iPhone 13 256G',29400,'https://s.yimg.com/zp/MerchandiseImages/4FE60E80A2-SP-10392018.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-256G-9692015.html',0,'0000-00-00',1),(11,'Yahoo','Apple iPhone 13 256G MINI 5.4吋智慧型手機',26400,'https://s.yimg.com/zp/MerchandiseImages/3041AF5452-SP-10374483.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-256G-MINI-5-4吋智慧型手機-9687209.html',0,'0000-00-00',1),(12,'Yahoo','Apple iPhone 13 256G 6.1吋 5G 手機',29400,'https://s.yimg.com/zp/MerchandiseImages/8457CDFC58-SP-10392241.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-256G-6-1吋-5G-手機-9692159.html',0,'0000-00-00',1),(13,'Yahoo','Apple iPhone 13 512G 6.1吋智慧型手機',36400,'https://s.yimg.com/zp/MerchandiseImages/ca76480d7a-Gd-9685149.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-512G-6-1吋智慧型手機-9685149.html',0,'0000-00-00',1),(14,'Yahoo','Apple iPhone 13 mini 256G 5.4吋智慧型手機',26400,'https://s.yimg.com/zp/MerchandiseImages/390D50C611-SP-10376010.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-mini-256G-5-4吋智慧型手機-9686832.html',0,'0000-00-00',1),(15,'Yahoo','Apple iPhone 13 Pro 512G 6.1吋智慧型手機',43400,'https://s.yimg.com/zp/MerchandiseImages/3c908ec46d-Gd-9685161.jpg','https://tw.buy.yahoo.com/gdsale/Apple-iPhone-13-Pro-512G-6-1吋智慧型手機-9685161.html',0,'0000-00-00',1),(16,'Yahoo','Canon PowerShot SX70 HS 輕便數位相機(公司貨)',15778,'https://s.yimg.com/zp/MerchandiseImages/4CF4648341-SP-6914782.jpg','https://tw.buy.yahoo.com/gdsale/Canon-PowerShot-SX70-相機-8342195.html',0,'0000-00-00',1),(17,'Yahoo','【64G雙電】Canon IXUS 185 28mm廣角時尚隨身機(公司貨)',3686,'https://s.yimg.com/zp/MerchandiseImages/FAA77B7426-SP-6932661.jpg','https://tw.buy.yahoo.com/gdsale/64G雙電-Canon-IXUS-185-28mm-8349848.html',0,'0000-00-00',1),(18,'Yahoo','Canon EOS M50 II M50 MARK II 15-45mm STM 變焦組 公司貨',19900,'https://s.yimg.com/zp/MerchandiseImages/12663C3458-SP-9360093.jpg','https://tw.buy.yahoo.com/gdsale/Canon-EOS-M50-II-M50-MARK-II-15-45mm-STM-變焦組-公司貨-9336444.html',0,'0000-00-00',1),(19,'Yahoo','Canon G7X Mark III (G7XM3 / M3)類單眼相機(公司貨)',19990,'https://s.yimg.com/zp/MerchandiseImages/247b73a073-Gd-8487483.jpg','https://tw.buy.yahoo.com/gdsale/Canon-G7-X-Mark-III-相機-8487483.html',0,'0000-00-00',1),(20,'Yahoo','Canon SX740 HS 高倍變焦類單眼(公司貨)',12290,'https://s.yimg.com/zp/MerchandiseImages/EB1AAF3642-SP-6911584.jpg','https://tw.buy.yahoo.com/gdsale/Canon-SX740-HS-相機-8338938.html',0,'0000-00-00',1),(21,'Yahoo','Canon G7 X G7X Mark III (G7XM3) 類單眼相機(公司貨)',19990,'https://s.yimg.com/zp/MerchandiseImages/e2cf60f79a-Gd-8520950.jpg','https://tw.buy.yahoo.com/gdsale/Canon-G7-X-G7X-Mark-III-G-8520950.html',0,'0000-00-00',1),(22,'Yahoo','Canon EOS M6 Mark II 18-150mm STM (公司貨)',35200,'https://s.yimg.com/zp/MerchandiseImages/9D029FF1F3-SP-7454322.jpg','https://tw.buy.yahoo.com/gdsale/Canon-EOS-M6-Mark-II-18-1-8580319.html',0,'0000-00-00',1),(23,'Yahoo','Canon EOS M50 MARK II 15-45mm IS STM 單鏡組(公司貨)',19900,'https://s.yimg.com/zp/MerchandiseImages/B1DB1216BD-SP-9330569.jpg','https://tw.buy.yahoo.com/gdsale/Canon-EOS-M50-MARK-II-15-45mm-IS-STM-單鏡組-公司貨-9325956.html',0,'0000-00-00',1),(24,'Yahoo','Canon G1 X Mark III 大光圈類單眼相機(公司貨)',29090,'https://s.yimg.com/zp/images/ACCA636DD255DB129980B97D770664DD3C00777C','https://tw.buy.yahoo.com/gdsale/Canon-G1-X-Mark-III-大光圈類單-7517948.html',0,'0000-00-00',1),(25,'Yahoo','Canon EOS RP BODY 單機身(公司貨)',29900,'https://s.yimg.com/zp/MerchandiseImages/188C5C40B1-SP-6637271.jpg','https://tw.buy.yahoo.com/gdsale/Canon-EOS-RP-BODY-單機身-公司貨-8209085.html',0,'0000-00-00',1),(26,'Yahoo','CANON PowerShot G7X Mark III  數位相機 (公司貨)',19990,'https://s.yimg.com/zp/MerchandiseImages/1DD3F61F64-Product-23917933.jpg','https://tw.buy.yahoo.com/gdsale/CANON-PowerShot-G7X-Mark-8554445.html',0,'0000-00-00',1),(27,'Yahoo','Canon EOS R6 單機身(公司貨)',76900,'https://s.yimg.com/zp/MerchandiseImages/79B19ACAEE-SP-8742448.jpg','https://tw.buy.yahoo.com/gdsale/Canon-EOS-R6-單機身-9107763.html',0,'0000-00-00',1),(28,'Yahoo','Canon PowerShot SX70HS 高倍率類單眼相機 (公司貨)',15290,'https://s.yimg.com/zp/MerchandiseImages/7A0CA7A581-SP-6775455.jpg','https://tw.buy.yahoo.com/gdsale/Canon-PowerShot-SX70HS-高倍-8273705.html',0,'0000-00-00',1),(29,'Yahoo','Canon EOS R6 單機身 (公司貨)',76900,'https://s.yimg.com/zp/MerchandiseImages/1F980079BB-SP-8742725.jpg','https://tw.buy.yahoo.com/gdsale/Canon-EOS-R6-單機身-公司貨-9105907.html',0,'0000-00-00',1),(30,'Yahoo','【64G超值組】Canon G9X Mark II (G9X MK2) 類單眼相機(公司貨)',13990,'https://s.yimg.com/zp/images/F42AAF37E1732E9A3B427AA7577B72C3BE83B26E','https://tw.buy.yahoo.com/gdsale/Canon-G9X-Mark-II-G9X-MK2-7050099.html',0,'0000-00-00',1),(31,'Yahoo','Acer PS538-G2-781NG 筆記型電腦(i7-8565U/13.3/8GB/256G/win10h)',18900,'https://s.yimg.com/zp/MerchandiseImages/E1BD243A07-SP-9834048.jpg','https://tw.buy.yahoo.com/gdsale/Acer-PS538-G2-781NG-筆記型電腦-i7-8565U-13-3-8GB-256G-w-9509747.html',0,'0000-00-00',1),(32,'Yahoo','DELL Latitude 7320 13.3吋 輕薄商務筆電 (i7-1185G7/16G/512GB/WIN10P)',49990,'https://s.yimg.com/zp/MerchandiseImages/16AF08E531-SP-10215579.jpg','https://tw.buy.yahoo.com/gdsale/DELL-Latitude-7320-13-3吋-輕薄商務筆電-i7-1185G7-16G-512G-9633809.html',0,'0000-00-00',1),(33,'Yahoo','ASUS BR1100FKA 11.6吋 翻轉觸控商用筆電 (N5100/8G/128G EMMC+256G SSD/3年保固/灰/特仕版)',15900,'https://s.yimg.com/zp/MerchandiseImages/E00A5283EC-SP-10330755.jpg','https://tw.buy.yahoo.com/gdsale/ASUS-BR1100FKA-11-6吋-翻轉觸控商用筆電-N5100-8G-128G-EMMC-2-9676108.html',0,'0000-00-00',1),(34,'Yahoo','Acer TMP215-53-572B 15吋商務筆電(i5-1135G7/8G/512G SSD/Win10 Pro/三年保固)',28900,'https://s.yimg.com/zp/MerchandiseImages/79867B59AD-SP-10478179.jpg','https://tw.buy.yahoo.com/gdsale/Acer-TMP215-53-572B-15吋商務筆電-i5-1135G7-8G-512G-SSD-9722579.html',0,'0000-00-00',1),(35,'Yahoo','微軟Surface Laptop Go 12.4吋(i5/8G/128G白金)',21888,'https://s.yimg.com/zp/MerchandiseImages/19326D4A50-SP-9070723.jpg','https://tw.buy.yahoo.com/gdsale/微軟Surface-Laptop-Go-12-4吋-i5-8G-128G白金-9232629.html',0,'0000-00-00',1),(36,'Yahoo','ASUS BR1100FKA 11.6吋 翻轉觸控商用筆電 (N5100/8G/128G EMMC+512G SSD/3年保固/灰/特仕版)',16900,'https://s.yimg.com/zp/MerchandiseImages/E00A5283EC-SP-10331133.jpg','https://tw.buy.yahoo.com/gdsale/ASUS-BR1100FKA-11-6吋-翻轉觸控商用筆電-N5100-8G-128G-EMMC-5-9676109.html',0,'0000-00-00',1),(37,'Yahoo','ASUS 華碩 B1500 15.6吋商用筆電 (i3-1115G4/8G/256G/W10 PRO/三年保固)',22900,'https://s.yimg.com/zp/MerchandiseImages/3CF3B28853-SP-10131215.jpg','https://tw.buy.yahoo.com/gdsale/ASUS-華碩-B1500-15-6吋商用筆電-i3-1115G4-8G-256G-W10-PRO-9609475.html',0,'0000-00-00',1),(38,'Yahoo','Dynabook X30W-J 989g13吋極輕翻轉筆電(i7-1165G7/16G/512SSD/支援 TBT4/Wi-Fi 6/觸控筆)',55900,'https://s.yimg.com/zp/MerchandiseImages/4e749c85d2-Gd-9380759.jpg','https://tw.buy.yahoo.com/gdsale/Dynabook-X30W-J-989g13吋極輕翻轉筆電-i7-1165G7-16G-512-9380759.html',0,'0000-00-00',1),(39,'Yahoo','MSI 微星 Summit E14 A11SCST-617TW 14吋觸控商務筆電(i7-1185G7/16G/GTX1650Ti-4G/1T SSD/Win10Pro)',42900,'https://s.yimg.com/zp/MerchandiseImages/4248E7F7B2-SP-10185379.jpg','https://tw.buy.yahoo.com/gdsale/MSI-微星-Summit-E14-A11SCST-617TW-14吋觸控商務筆電-i7-1185G-9635162.html',0,'0000-00-00',1),(40,'Yahoo','DELL Latitude 7420 14吋 商務筆記型觸控輕薄二合一電腦 (i7-1185G7/16G/512GB/WIN10P)',54990,'https://s.yimg.com/zp/MerchandiseImages/3F9030AD39-SP-9799707.jpg','https://tw.buy.yahoo.com/gdsale/DELL-Latitude-7420-14吋-商務筆記型觸控輕薄二合一電腦-i7-1185G7-16-9492854.html',0,'0000-00-00',1),(41,'Yahoo','DELL Vostro 5410 14吋筆電 (I5-11300H/MX450/8G/512G/Win10P/深空灰)',34990,'https://s.yimg.com/zp/MerchandiseImages/534C99EAEB-SP-9954614.jpg','https://tw.buy.yahoo.com/gdsale/DELL-Vostro-5410-14吋筆電-I5-11300H-8G-512G-MX450-Win-9549538.html',0,'0000-00-00',1),(42,'Yahoo','HP惠普 348 G7 14吋商務筆電(i5-10210U/8G/512G PCIe SSD/Win10 Pro)',30900,'https://s.yimg.com/zp/MerchandiseImages/F0FCE9CF56-SP-10406156.jpg','https://tw.buy.yahoo.com/gdsale/HP惠普-348-G7-14吋商務筆電-i5-10210U-8G-512G-PCIe-SSD-Win-9697084.html',0,'0000-00-00',1),(43,'Yahoo','HP惠普 348 G7 14吋商務筆電(i5-10210U/8G+8G/512G PCIe SSD/Win10 Pro/特仕版)',31900,'https://s.yimg.com/zp/MerchandiseImages/200AD91C8D-SP-10406923.jpg','https://tw.buy.yahoo.com/gdsale/HP惠普-348-G7-14吋商務筆電-i5-10210U-8G-8G-512G-PCIe-SSD-9697083.html',0,'0000-00-00',1),(44,'Yahoo','↘直降一萬二★Surface Laptop 3 商務版 15吋 i7/16G/512G 二色可選',56888,'https://s.yimg.com/zp/MerchandiseImages/6517F1F3A4-SP-9403813.jpg','https://tw.buy.yahoo.com/gdsale/Surface-Laptop-3-商務版-15吋-i7-16G-512G-二色可選-9354361.html',0,'0000-00-00',1),(45,'Yahoo','Lenovo X1c Carbon Gen 9 14吋商務筆電 i7-1165G7/16G/512G PCIe SSD/ThinkPad/Win10/三年保到府維修',53990,'https://s.yimg.com/zp/MerchandiseImages/330EF2FDA4-SP-10124877.jpg','https://tw.buy.yahoo.com/gdsale/Lenovo-X1c-Carbon-Gen-9-14吋商務筆電-i7-1165G7-16G-512G-9605815.html',0,'0000-00-00',1),(46,'Yahoo','【大研生醫】 德國頂級魚油(60粒)*2',1999,'https://s.yimg.com/zp/MerchandiseImages/ac5dc0178e-Gd-9340041.jpg','https://tw.buy.yahoo.com/gdsale/大研-德國頂級魚油-60粒-2-9340041.html',0,'0000-00-00',1),(47,'Yahoo','10/19-21買就送10%超贈點)【葡萄王】益菌王60粒X4盒 (7好菌 甩囤積 好順暢)',1800,'https://s.yimg.com/zp/MerchandiseImages/9D716CF6D6-Gd-8985942.jpg','https://tw.buy.yahoo.com/gdsale/葡萄王-益菌王60粒X4盒-7好菌-甩囤積-好順暢--8985942.html',0,'0000-00-00',1),(48,'Yahoo','【大研生醫】視易適葉黃素(30粒)x2',1899,'https://s.yimg.com/zp/MerchandiseImages/523acd854b-Gd-9460383.jpg','https://tw.buy.yahoo.com/gdsale/大研生醫-視易適葉黃素-30粒-x2-9460383.html',0,'0000-00-00',1),(49,'Yahoo','10/19-21買就送10%超贈點)【葡萄王】孅益薑黃100粒X4盒',3299,'https://s.yimg.com/zp/MerchandiseImages/88f05dcdfe-Gd-8997506.jpg','https://tw.buy.yahoo.com/gdsale/葡萄王-孅益薑黃100粒X4盒-8997506.html',0,'0000-00-00',1),(50,'Yahoo','10/19-21買就送10%超贈點)【葡萄王】康普茶雙纖飲530ml(24入)',699,'https://s.yimg.com/zp/MerchandiseImages/021D25DCBE-SP-9998017.jpg','https://tw.buy.yahoo.com/gdsale/葡萄王-葡萄王-康普茶雙纖飲530ml-24入-9564875.html',0,'0000-00-00',1),(51,'Yahoo','【大研生醫】納豆紅麴膠囊(60粒入)x2',1999,'https://s.yimg.com/zp/MerchandiseImages/55DD8DD918-Gd-9463095.jpg','https://tw.buy.yahoo.com/gdsale/大研生醫-納豆紅麴膠囊-60粒入-x2-9463095.html',0,'0000-00-00',1),(52,'Yahoo','桂格完膳營養素24罐組【受贈對象：雙福基金會】(您不會收到商品)(公益)',1250,'https://s.yimg.com/zp/MerchandiseImages/1B690B26D3-SP-10390195.jpg','https://tw.buy.yahoo.com/gdsale/桂格完膳營養素24罐組-受贈對象-雙福基金會-您不會收到商品-公益-9691298.html',0,'0000-00-00',1),(53,'Yahoo','白蘭氏 深海魚油+蝦紅素120錠/瓶-Omega3 DHA 提升新陳代謝 14004739',1420,'https://s.yimg.com/ut/api/res/1.2/jyINORfm6ZBbmn2bIQ1SBg--~B/dz0xNjg7aD0xNjg7cT0xMDA7Zmk9Zml0O3NzPTEuMDthcHBpZD15dHdtYWxs/https://s.yimg.com/fy/7189/item/p0582181650077-item-1d6exf4x0600x0600-m.jpg','https://tw.buy.yahoo.com/gdsale/gdsale.asp?gdid=p0582181650077',0,'0000-00-00',1),(54,'Yahoo','德國 好立善 德國發泡錠 任選四件組(20錠x4)(C180/鎂200/鈣500/綜合維他命)',532,'https://s.yimg.com/zp/MerchandiseImages/AC42F033A2-SP-6081033.jpg','https://tw.buy.yahoo.com/gdsale/德國-歐森-好立善-德國發泡錠-任選四件組-20錠-7917525.html',0,'0000-00-00',1),(55,'Yahoo','SUNTORY三得利 芝麻明EX 90錠/瓶',1299,'https://s.yimg.com/ut/api/res/1.2/yl381Vl3azv21oiBdffsmw--~B/dz0xNjg7aD0xNjg7cT0xMDA7Zmk9Zml0O3NzPTEuMDthcHBpZD15dHdtYWxs/https://s.yimg.com/fy/2cb5/item/p0376190616140-item-ec4cxf4x1000x1000-m.jpg','https://tw.buy.yahoo.com/gdsale/gdsale.asp?gdid=p0376190616140',0,'0000-00-00',1),(56,'Yahoo','【大研生醫】台灣極品靈芝膠囊(60粒)x2',1999,'https://s.yimg.com/zp/MerchandiseImages/9da26fab56-Gd-9460403.jpg','https://tw.buy.yahoo.com/gdsale/大研生醫-台灣極品靈芝膠囊-60粒-x2-9460403.html',0,'0000-00-00',1),(57,'Yahoo','日濢Tsuie 綜合維生素B群+鋅 30錠/盒',199,'https://s.yimg.com/zp/MerchandiseImages/4B30F01CBD-SP-8214038.jpg','https://tw.buy.yahoo.com/gdsale/日濢Tsuie-綜合維生素B群-鋅-30錠-盒-8900689.html',0,'0000-00-00',1),(58,'Yahoo','10/19-21買就送10%超贈點)【葡萄王】優適金盞花葉黃素90粒X3瓶 (FloraGLO專利葉黃素)',1999,'https://s.yimg.com/zp/MerchandiseImages/016061011b-Gd-8986029.jpg','https://tw.buy.yahoo.com/gdsale/葡萄王-優適金盞花葉黃素90粒X3盒-FloraGLO專利葉黃素--8986029.html',0,'0000-00-00',1),(59,'Yahoo','10/19-21買就送10%超贈點)【葡萄王】樟芝王100粒X4瓶 (樟芝多醣9%補精力有活力)',2999,'https://s.yimg.com/zp/MerchandiseImages/650BE0233E-Gd-8986008.jpg','https://tw.buy.yahoo.com/gdsale/葡萄王-樟芝王100粒X4盒-樟芝多醣9-補精力有活力--8986008.html',0,'0000-00-00',1),(60,'Yahoo','白蘭氏 深海魚油+蝦紅素30錠 -Omega3 DHA 促進代謝 14006726',399,'https://s.yimg.com/ut/api/res/1.2/HNHRZnBe3NYsr80JMfEVEg--~B/dz0xNjg7aD0xNjg7cT0xMDA7Zmk9Zml0O3NzPTEuMDthcHBpZD15dHdtYWxs/https://s.yimg.com/fy/0a88/item/p0582203562460-item-f4e7xf4x0600x0600-m.jpg','https://tw.buy.yahoo.com/gdsale/gdsale.asp?gdid=p0582203562460',0,'0000-00-00',1),(61,'Yahoo','（領券再折）NIKE AIR FORCE 1 經典休閒鞋 白  男女鞋 315115-112 315115-111 DD8959-100 CW2288-111',2980,'https://s.yimg.com/zp/MerchandiseImages/85BB9F8A43-Gd-9590634.jpg','https://tw.buy.yahoo.com/gdsale/NIKE-AIR-FORCE-1-經典休閒鞋-白-男女鞋-315115-112-315115-111-9590634.html',0,'0000-00-00',1),(62,'Yahoo','【限時快閃】NIKE WAFFLE ONE 小SACAI 解構 男女休閒鞋(三款任選)',2119,'https://s.yimg.com/zp/MerchandiseImages/3b81c0ebe2-Gd-9542690.jpg','https://tw.buy.yahoo.com/gdsale/時時樂限定-NIKE-WAFFLE-ONE-小SACAI-男女休閒鞋-多款任選-9542690.html',0,'0000-00-00',1),(63,'Yahoo','NIKE TANJUN 黑白 慢跑鞋 (男女鞋) 812654-011、812655-011',1280,'https://s.yimg.com/zp/MerchandiseImages/0C830A5DB3-SP-9939319.jpg','https://tw.buy.yahoo.com/gdsale/NIKE-TANJUN-黑白-慢跑鞋-男女鞋-812654-011-812655-011-9544052.html',0,'0000-00-00',1),(64,'Yahoo','NIKE AIR MAX 270 大氣墊 黑 / 白 (男女鞋)',2820,'https://s.yimg.com/zp/MerchandiseImages/8D63686F3D-SP-9630002.jpg','https://tw.buy.yahoo.com/gdsale/NIKE-AIR-MAX-270-大氣墊-黑-白-男女鞋-9433586.html',0,'0000-00-00',1),(65,'Yahoo','【時時樂限定】Nike男女拖鞋(多款任選)',599,'https://s.yimg.com/zp/MerchandiseImages/11a7457cb0-Gd-9583592.jpg','https://tw.buy.yahoo.com/gdsale/時時樂限定-Nike男女拖鞋-多款任選-9583592.html',0,'0000-00-00',1),(66,'Yahoo','NIKE AIR JORDAN 1 LOW 男籃球鞋-白-553558118',2739,'https://s.yimg.com/zp/MerchandiseImages/4470D765B4-SP-9849902.jpg','https://tw.buy.yahoo.com/gdsale/NIKE-AIR-JORDAN-1-LOW-男籃球鞋-白-553558118-9510731.html',0,'0000-00-00',1),(67,'Yahoo','NIKE Air Jordan 1 Mid  男籃球鞋-黑藍-554724140',2926,'https://s.yimg.com/zp/MerchandiseImages/50BBC63E4A-SP-10141626.jpg','https://tw.buy.yahoo.com/gdsale/NIKE-Air-Jordan-1-Mid-男籃球鞋-黑藍-554724140-9610806.html',0,'0000-00-00',1),(68,'Yahoo','NIKE AIR MAX 97 白子彈 男女鞋 921733-100 921826-101',3980,'https://s.yimg.com/zp/MerchandiseImages/0AF68EE180-SP-10294302.jpg','https://tw.buy.yahoo.com/gdsale/NIKE-AIR-MAX-97-白子彈-男女鞋-921733-100-921826-101-9659537.html',0,'0000-00-00',1),(69,'Yahoo','NIKE 休閒鞋 DUNK LOW GREY FOG 灰白 經典 球鞋穿搭 男(布魯克林) DD1391-103',7200,'https://s.yimg.com/ut/api/res/1.2/t4GMszHpdJ4p_pVOACyabw--~B/dz0xNjg7aD0xNjg7cT0xMDA7Zmk9Zml0O3NzPTEuMDthcHBpZD15dHdtYWxs/https://s.yimg.com/fy/5480/item/p0373229724306-item-83a9xf4x1000x1000-m.jpg','https://tw.buy.yahoo.com/gdsale/gdsale.asp?gdid=p0373229724306',0,'0000-00-00',1),(70,'Yahoo','NIKE 籃球鞋 AIR JORDAN 4 AJ4 四代 LIGHTING 2021 閃電黃 男(布魯克林) CT8527-700',7100,'https://s.yimg.com/ut/api/res/1.2/N3NBpiKTnL.hF.1uytaWgA--~B/dz0xNjg7aD0xNjg7cT0xMDA7Zmk9Zml0O3NzPTEuMDthcHBpZD15dHdtYWxs/https://s.yimg.com/fy/66dd/item/p0373229479060-item-cdb7xf4x1000x1000-m.jpg','https://tw.buy.yahoo.com/gdsale/gdsale.asp?gdid=p0373229479060',0,'0000-00-00',1),(71,'Yahoo','Nike Air Max Pre-Day 男休閒鞋-白灰-DA4263100',3170,'https://s.yimg.com/zp/MerchandiseImages/7575E4DAF9-SP-9688489.jpg','https://tw.buy.yahoo.com/gdsale/Nike-Air-Max-Pre-Day-男休閒鞋-白灰-DA4263100-9452725.html',0,'0000-00-00',1),(72,'Yahoo','NIKE Air Jordan 11 CMFT Low 低筒 男籃球鞋-白-DO0751100',2600,'https://s.yimg.com/zp/MerchandiseImages/156A82ADB5-SP-10141472.jpg','https://tw.buy.yahoo.com/gdsale/NIKE-Air-Jordan-11-CMFT-Low-低筒-男籃球鞋-白-DO0751100-9610781.html',0,'0000-00-00',1),(73,'Yahoo','NIKE AIR FORCE 1 07 LV8 小金勾 男休閒鞋-白黑-DA8481100',3024,'https://s.yimg.com/zp/MerchandiseImages/03798EC73E-SP-10324871.jpg','https://tw.buy.yahoo.com/gdsale/NIKE-AIR-FORCE-1-07-LV8-小金勾-男休閒鞋-白黑-DA8481100-9668733.html',0,'0000-00-00',1),(74,'Yahoo','（領券再折）NIKE M2K TEKNO 白銀老爹鞋 BQ3378-100',3280,'https://s.yimg.com/zp/MerchandiseImages/CF62401695-Gd-9618728.jpg','https://tw.buy.yahoo.com/gdsale/NIKE-M2K-TEKNO-白銀老爹鞋-BQ3378-100-9618728.html',0,'0000-00-00',1),(75,'Yahoo','Nike Air Jordan 3 白藍爆裂紋 籃球鞋',6580,'https://s.yimg.com/zp/MerchandiseImages/875D01ABBA-SP-10418815.jpg','https://tw.buy.yahoo.com/gdsale/Nike-Air-Jordan-3-白藍爆裂紋-籃球鞋-9702776.html',0,'0000-00-00',1),(76,'Yahoo','Gogoro VIVA  MIX BASIC - 基本⽩(GJ6B2)',66980,'https://s.yimg.com/zp/MerchandiseImages/D7BB4A1136-Gd-9411486.jpg','https://tw.buy.yahoo.com/gdsale/Gogoro-VIVA-MIX-BASIC-基本白-9411486.html',0,'0000-00-00',1),(77,'Yahoo','Gogoro S2 Café Racer ABS MY22 - 深焙棕(GB7HJ)',113980,'https://s.yimg.com/zp/MerchandiseImages/AF75DAB9D1-SP-10075452.jpg','https://tw.buy.yahoo.com/gdsale/Gogoro-S2-Caf-Racer-ABS-MY22-深焙棕-9590324.html',0,'0000-00-00',1),(78,'Yahoo','Gogoro VIVA  XL BELT - 復古綠(GSP6DT)',77980,'https://s.yimg.com/zp/MerchandiseImages/22451944A9-SP-10121970.jpg','https://tw.buy.yahoo.com/gdsale/Gogoro-VIVA-XL-BELT-復古綠-9605108.html',0,'0000-00-00',1),(79,'Yahoo','Gogoro VIVA  XL BASIC - 極簡白(GSP6CT)',69980,'https://s.yimg.com/zp/MerchandiseImages/BCD6F39B28-SP-10120542.jpg','https://tw.buy.yahoo.com/gdsale/Gogoro-VIVA-XL-BASIC-極簡白-9604721.html',0,'0000-00-00',1),(80,'Yahoo','Gogoro VIVA  MIX KEYLESS - 節奏灰(GJ6C2)',69980,'https://s.yimg.com/zp/MerchandiseImages/548E5911BB-Gd-9411688.jpg','https://tw.buy.yahoo.com/gdsale/Gogoro-VIVA-MIX-KEYLESS-節奏灰-9411688.html',0,'0000-00-00',1),(81,'Yahoo','Gogoro VIVA MIX SUPERFAST - 迷幻黑(GJ7U2)',84980,'https://s.yimg.com/zp/MerchandiseImages/251A7809FE-SP-10249407.jpg','https://tw.buy.yahoo.com/gdsale/Gogoro-VIVA-MIX-SUPERFAST-迷幻黑-GJ7U2-9644586.html',0,'0000-00-00',1),(82,'Yahoo','Gogoro VIVA  MIX BELT - 電音藍(GJ6C2)',74980,'https://s.yimg.com/zp/MerchandiseImages/FD0C037936-Gd-9411753.jpg','https://tw.buy.yahoo.com/gdsale/Gogoro-VIVA-MIX-BELT-電音藍-9411753.html',0,'0000-00-00',1),(83,'Yahoo','Gogoro VIVA  MIX BELT - 節奏灰(GJ6C2)',74980,'https://s.yimg.com/zp/MerchandiseImages/2361836898-Gd-9411774.jpg','https://tw.buy.yahoo.com/gdsale/Gogoro-VIVA-MIX-BELT-節奏灰-9411774.html',0,'0000-00-00',1),(84,'Yahoo','Gogoro S2 Café Racer MY22 - 深焙棕(GB7HL)',107980,'https://s.yimg.com/zp/MerchandiseImages/EF817ABF49-SP-10075416.jpg','https://tw.buy.yahoo.com/gdsale/Gogoro-S2-Caf-Racer-MY22-深焙棕-9590259.html',0,'0000-00-00',1),(85,'Yahoo','Gogoro S2 ABS MY22 - 石墨灰(GSB7BTJ)',100980,'https://s.yimg.com/zp/MerchandiseImages/582776D4ED-SP-10075124.jpg','https://tw.buy.yahoo.com/gdsale/Gogoro-S2-ABS-MY22-石墨灰-9590167.html',0,'0000-00-00',1),(86,'Yahoo','Gogoro VIVA  XL BELT - 哥德灰(GSP6DT)',77980,'https://s.yimg.com/zp/MerchandiseImages/038C27EE35-SP-10121988.jpg','https://tw.buy.yahoo.com/gdsale/Gogoro-VIVA-XL-BELT-哥德灰-9605114.html',0,'0000-00-00',1),(87,'Yahoo','Gogoro VIVA  MIX BELT - 雷鬼棕(GJ6C2)',74980,'https://s.yimg.com/zp/MerchandiseImages/D11E2F1626-Gd-9411741.jpg','https://tw.buy.yahoo.com/gdsale/Gogoro-VIVA-MIX-BELT-雷鬼棕-9411741.html',0,'0000-00-00',1),(88,'Yahoo','Gogoro S2 ABS MY22 - 光譜藍(GSB7BTJ)',100980,'https://s.yimg.com/zp/MerchandiseImages/41CEC40E05-SP-10075263.jpg','https://tw.buy.yahoo.com/gdsale/Gogoro-S2-ABS-MY22-光譜藍-9590214.html',0,'0000-00-00',1),(89,'Yahoo','Gogoro 3 Premium - 暮光綠(GP6U2)',79980,'https://s.yimg.com/zp/MerchandiseImages/EBB9F35821-SP-10102694.jpg','https://tw.buy.yahoo.com/gdsale/Gogoro-3-Premium-暮光綠-9599361.html',0,'0000-00-00',1),(90,'Yahoo','Gogoro VIVA  MIX KEYLESS - 合聲白(GJ6C2)',69980,'https://s.yimg.com/zp/MerchandiseImages/6D559BDAE3-Gd-9411699.jpg','https://tw.buy.yahoo.com/gdsale/Gogoro-VIVA-MIX-KEYLESS-合聲白-9411699.html',0,'0000-00-00',1),(91,'Yahoo','SEIKO精工 CS系列簡約大三針時尚男錶-37mm(6N42-00K0S/SUR299P1)',5076,'https://s.yimg.com/zp/MerchandiseImages/2AF1E8D196-SP-9822468.jpg','https://tw.buy.yahoo.com/gdsale/SEIKO精工-CS系列簡約大三針時尚男錶-37mm-6N42-00K0S-SUR299P1-9501424.html',0,'0000-00-00',1),(92,'Yahoo','SEIKO 精工 Prospex 太魯閣峽谷 台灣獨賣款 200米潛水機械錶(SRPH39K1/4R36-06Z0N)',16100,'https://s.yimg.com/zp/MerchandiseImages/277DC05B98-SP-10425355.jpg','https://tw.buy.yahoo.com/gdsale/SEIKO-精工-Prospex-太魯閣峽谷-台灣獨賣款-200米潛水機械錶-SRPH39K1-4R-9703067.html',0,'0000-00-00',1),(93,'Yahoo','SEIKO 精工 Prospex SCUBA 限量200米潛水機械錶(SPB195J1/6R35-01A0G)-45mm',23415,'https://s.yimg.com/zp/MerchandiseImages/E03E775841-Product-26449553.jpg','https://tw.buy.yahoo.com/gdsale/SEIKO-精工-Prospex-SCUBA-限量200米潛水機械錶-SPB195J1-6R35-0-9215657.html',0,'0000-00-00',1),(94,'Yahoo','SEIKO Marinemaster鮪魚罐頭300米專業潛水錶(SBBN031J)48mm',25200,'https://s.yimg.com/zp/images/725B031363BA93F8193C7055D8B600D5DD4A3CCC','https://tw.buy.yahoo.com/gdsale/SBBN031J-潛水錶-SEIKO-精工錶-7548950.html',0,'0000-00-00',1),(95,'Yahoo','SEIKO 精工 5 Sports 系列機械錶(SRPD51K1)-藍x銀/42.5mm',7440,'https://s.yimg.com/zp/MerchandiseImages/7FFFA1AD96-SP-7325127.jpg','https://tw.buy.yahoo.com/gdsale/SEIKO-精工-5-Sports-系列機械錶-S-8520992.html',0,'0000-00-00',1),(96,'Yahoo','SEIKO 精工 PROSPEX 夜潛金槍魚 鮪魚罐頭 限量太陽能潛水錶(SNE577P1/V157-0DL0C)-46.7mm',10369,'https://s.yimg.com/zp/MerchandiseImages/FEAFF45F5A-SP-9992152.jpg','https://tw.buy.yahoo.com/gdsale/SEIKO精工-PROSPEX-夜潛金槍魚-限量太陽能潛水錶-SNE577P1-V157-0DL0C-9563004.html',0,'0000-00-00',1),(97,'Yahoo','SEIKO 精工 5號21石盾牌羅馬機械腕錶(SNKP17J1)-銀X黑',4556,'https://s.yimg.com/zp/MerchandiseImages/889C512A9A-SP-6087895.jpg','https://tw.buy.yahoo.com/gdsale/SEIKO-精工-5號21石盾牌羅馬機械腕錶-SN-7925171.html',0,'0000-00-00',1),(98,'Yahoo','SEIKO 精工 Prospex DIVER SCUBA 1965復刻機械錶(SPB143J1/6R35-00P0N)',35100,'https://s.yimg.com/zp/MerchandiseImages/D161BD4167-Gd-9022410.jpg','https://tw.buy.yahoo.com/gdsale/SEIKO-精工-Prospex-DIVER-SCUBA-1965復刻機械錶-SPB143J1-6R-9022410.html',0,'0000-00-00',1),(99,'Yahoo','SEIKO精工 SOLAR 太陽能簡約手錶(SUP863P1)-白/38mm',2999,'https://s.yimg.com/zp/MerchandiseImages/a570cdf39b-Gd-7520047.jpg','https://tw.buy.yahoo.com/gdsale/SEIKO精工-SOLAR-太陽能簡約手錶-SUP-7520047.html',0,'0000-00-00',1),(100,'Yahoo','SEIKO 精工 Prospex 愛海洋 企鵝漫步 200米潛水機械錶(SRPG59K1/4R35-04Z0H)',11373,'https://s.yimg.com/zp/MerchandiseImages/D1FDB65C79-SP-9918797.jpg','https://tw.buy.yahoo.com/gdsale/SEIKO-精工-Prospex-愛海洋-企鵝-潛水機械錶-SRPG59K1-4R35-04Z0H-9537179.html',0,'0000-00-00',1),(101,'Yahoo','SEIKO 精工 Astron 服部金太郎限量款 GPS衛星定位雙時區鈦金屬錶 (SSH073J1/5X53-0BB0SD)',112500,'https://s.yimg.com/zp/MerchandiseImages/B7C227B050-SP-8921239.jpg','https://tw.buy.yahoo.com/gdsale/SEIKO-精工-Astron-服部金太郎限量款-GPS衛星定位雙時區鈦金屬錶-SSH073J1-5-9177167.html',0,'0000-00-00',1),(102,'Yahoo','SEIKO精工 時尚新貴5號自動機械錶(SNKM41J)-銀面/日本製/40mm',3990,'https://s.yimg.com/zp/MerchandiseImages/937D20B44E-SP-9368382.jpg','https://tw.buy.yahoo.com/gdsale/SEIKO精工-時尚新貴5號自動機械錶-SNKM41J-銀面-日本製-40mm-9339061.html',0,'0000-00-00',1),(103,'Yahoo','SEIKO 精工 PROSPEX 廣告款 200米潛水機械錶(SPB101J1)-45mm',18397,'https://s.yimg.com/zp/MerchandiseImages/0C8C5F114C-SP-7065265.jpg','https://tw.buy.yahoo.com/gdsale/SEIKO-精工-PROSPEX-廣告款-200米-8410277.html',0,'0000-00-00',1),(104,'Yahoo','SEIKO 精工 藍水鬼Prospex PADI 太陽能潛水200米聯名限量腕錶(SNE549J1/V157-0DF0B)',10035,'https://s.yimg.com/zp/images/C1B9E330432E964D5EB026517D6A174EC4A5BA5B','https://tw.buy.yahoo.com/gdsale/SEIKO精工-Prospex-PADI-太陽能潛-7498398.html',0,'0000-00-00',1),(105,'Yahoo','SEIKO 精工 PROSPEX 140週年限量機械錶 (SPB207J1/6R35-01L0G)',39150,'https://s.yimg.com/zp/MerchandiseImages/C78315D9CD-SP-9513811.jpg','https://tw.buy.yahoo.com/gdsale/SEIKO-精工-PROSPEX-140週年限量機械錶-SPB207J1-6R35-01L0G-9391354.html',0,'0000-00-00',1),(106,'Yahoo','CLC TS1-A 彩糖盒馬卡龍色藍芽耳機運動真無線藍芽耳機5.0 (五色可選)',450,'https://s.yimg.com/zp/MerchandiseImages/E84C63FCE7-SP-10312465.jpg','https://tw.buy.yahoo.com/gdsale/CLC-TS1-A-彩糖盒馬卡龍色藍芽耳機運動真無線藍芽耳機5-0-五色可選-9664360.html',0,'0000-00-00',1),(107,'Yahoo','小米 Redmi AirDots3 真無線藍芽耳機(星空藍)',1590,'https://s.yimg.com/zp/MerchandiseImages/FF94ADCD0B-SP-9723205.jpg','https://tw.buy.yahoo.com/gdsale/小米-Redmi-AirDots3-真無線藍芽耳機-星空藍-9469413.html',0,'0000-00-00',1),(108,'Yahoo','Timo【摩艾之聲限定版】真無線藍牙耳機 (IPX5防水 附專用摩艾保護套)',1290,'https://s.yimg.com/zp/MerchandiseImages/47A4F8B72C-SP-10056942.jpg','https://tw.buy.yahoo.com/gdsale/Timo-摩艾之聲限定版-真無線藍牙耳機-IPX5防水-附專用摩艾保護套-9584722.html',0,'0000-00-00',1),(109,'Yahoo','Beats Studio Buds 真無線降噪入耳式耳機(原廠公司貨)',4790,'https://s.yimg.com/zp/MerchandiseImages/071A65ED19-Gd-9627798.jpg','https://tw.buy.yahoo.com/gdsale/Beats-Studio-Buds-真無線降噪入耳式耳機-原廠公司貨-9627798.html',0,'0000-00-00',1),(110,'Yahoo','小米 Redmi AirDots 2 真無線藍芽耳機',729,'https://s.yimg.com/zp/MerchandiseImages/B39956158A-Gd-9139729.jpg','https://tw.buy.yahoo.com/gdsale/小米-Redmi-AirDots-2-真無線藍芽耳機-9139729.html',0,'0000-00-00',1),(111,'Yahoo','daho 馬卡龍 智能觸控無線藍牙耳機 HB05',690,'https://s.yimg.com/zp/MerchandiseImages/46CAC6196E-SP-8006526.jpg','https://tw.buy.yahoo.com/gdsale/daho-馬卡龍-智能觸控無線藍牙耳機-HB05-8816619.html',0,'0000-00-00',1),(112,'Yahoo','Beats Powerbeats 高機能無線耳機',4790,'https://s.yimg.com/zp/MerchandiseImages/91fdeaeb91-Gd-8910666.jpg','https://tw.buy.yahoo.com/gdsale/Beats-Powerbeats-高機能無線耳機-8910666.html',0,'0000-00-00',1),(113,'Yahoo','Beats Flex 頸掛無線入耳式耳機 (原廠公司貨)',2249,'https://s.yimg.com/zp/MerchandiseImages/19860726E2-Gd-9278261.jpg','https://tw.buy.yahoo.com/gdsale/Beats-Flex-頸掛無線入耳式耳機-原廠公司貨-9278261.html',0,'0000-00-00',1),(114,'Yahoo','Gigastone H1 耳罩式無線藍牙耳機',549,'https://s.yimg.com/zp/MerchandiseImages/69e6ca27bd-Gd-9210515.jpg','https://tw.buy.yahoo.com/gdsale/Gigastone-H1-耳罩式無線藍牙耳機-9210515.html',0,'0000-00-00',1),(115,'Yahoo','SONY 耳罩式耳機 WH-1000XM4 無線藍芽 智慧降噪 HiRes',8990,'https://s.yimg.com/zp/MerchandiseImages/F332385F6E-SP-8950034.jpg','https://tw.buy.yahoo.com/gdsale/SONY-耳罩式耳機-WH-1000XM4-無線藍芽-智慧降噪-HiRes-9186082.html',0,'0000-00-00',1),(116,'Yahoo','realme Buds Wireless Pro頸掛藍牙耳機-主動降噪版',999,'https://s.yimg.com/zp/MerchandiseImages/2F51CA96AA-Gd-9256816.jpg','https://tw.buy.yahoo.com/gdsale/realme-Buds-Wireless-Pro頸掛藍牙耳機-主動降噪版-9256816.html',0,'0000-00-00',1),(117,'Yahoo','小米 Redmi AirDots3 真無線藍芽耳機',1490,'https://s.yimg.com/zp/MerchandiseImages/ED3E58B6F6-Gd-9483457.jpg','https://tw.buy.yahoo.com/gdsale/小米-Redmi-AirDots3-真無線藍芽耳機-9483457.html',0,'0000-00-00',1),(118,'Yahoo','realme Buds Q2 真無線藍牙耳機',545,'https://s.yimg.com/zp/MerchandiseImages/9861eb6d27-Gd-9482942.jpg','https://tw.buy.yahoo.com/gdsale/realme-Buds-Q2-真無線藍牙耳機-9482942.html',0,'0000-00-00',1),(119,'Yahoo','DTA-AirPro3 無線藍芽耳機 三代1:1 原模打造 藍牙耳機',412,'https://s.yimg.com/zp/MerchandiseImages/11B09B7A0F-SP-8964362.jpg','https://tw.buy.yahoo.com/gdsale/DTA-AirPro3-無線藍芽耳機-三代1-1-原模打造-藍牙耳機-9191375.html',0,'0000-00-00',1),(120,'Yahoo','ifive】追風族（機車族）骨傳導概念藍牙耳機',869,'https://s.yimg.com/zp/MerchandiseImages/F6459276DB-Product-25915480.jpg','https://tw.buy.yahoo.com/gdsale/ifive-追風族-機車族-骨傳導概念藍牙耳機-9087572.html',0,'0000-00-00',1);
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

-- Dump completed on 2021-10-26 21:52:45
