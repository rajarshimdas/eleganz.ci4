-- MariaDB dump 10.19  Distrib 10.6.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: eleganz_ci4_db
-- ------------------------------------------------------
-- Server version	10.6.12-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contacts_id` int(11) NOT NULL,
  `address_type` smallint(6) DEFAULT NULL COMMENT '1: Permanent | 2: Communication',
  `door` varchar(100) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `locality` text DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `pincode` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci4_auth_groups_users`
--

DROP TABLE IF EXISTS `ci4_auth_groups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci4_auth_groups_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `ci4_auth_groups_users_user_id_foreign` (`user_id`),
  CONSTRAINT `ci4_auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `ci4_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci4_auth_groups_users`
--

LOCK TABLES `ci4_auth_groups_users` WRITE;
/*!40000 ALTER TABLE `ci4_auth_groups_users` DISABLE KEYS */;
INSERT INTO `ci4_auth_groups_users` VALUES (1,1,'user','2023-12-22 13:02:45'),(2,2,'user','2023-12-31 16:51:29'),(3,3,'user','2024-01-01 16:36:06'),(4,1,'admin','2024-01-02 14:52:04');
/*!40000 ALTER TABLE `ci4_auth_groups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci4_auth_identities`
--

DROP TABLE IF EXISTS `ci4_auth_identities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci4_auth_identities` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `secret` varchar(255) NOT NULL,
  `secret2` varchar(255) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `extra` text DEFAULT NULL,
  `force_reset` tinyint(1) NOT NULL DEFAULT 0,
  `last_used_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_secret` (`type`,`secret`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `ci4_auth_identities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `ci4_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci4_auth_identities`
--

LOCK TABLES `ci4_auth_identities` WRITE;
/*!40000 ALTER TABLE `ci4_auth_identities` DISABLE KEYS */;
INSERT INTO `ci4_auth_identities` VALUES (1,1,'email_password',NULL,'rd@rajarshi.me','$2y$12$nHTbtVBjFFkHbwq7LgCXv.TfbE2mY1A2dILPruuMGHkCxHCah50iq',NULL,NULL,0,'2024-01-02 12:40:43','2023-12-22 13:02:44','2024-01-02 12:40:43'),(2,2,'email_password',NULL,'arnavrdas@gmail.com','$2y$12$29u5KTkLMIDsurYUwJPBCO3b6ir8e7O4mxDz7Tqbxgr5XdS3vUbOW',NULL,NULL,0,'2024-01-01 13:31:27','2023-12-31 16:51:28','2024-01-01 13:31:27'),(3,3,'email_password',NULL,'anuradhardas@gmail.com','$2y$12$YDivZqdvbs7HkGEWHCkyLObXLYSPKjARULP6fn8WrEmgto1zMu.MC',NULL,NULL,0,'2024-01-01 17:20:23','2024-01-01 16:36:06','2024-01-01 17:20:23');
/*!40000 ALTER TABLE `ci4_auth_identities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci4_auth_logins`
--

DROP TABLE IF EXISTS `ci4_auth_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci4_auth_logins` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_type_identifier` (`id_type`,`identifier`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci4_auth_logins`
--

LOCK TABLES `ci4_auth_logins` WRITE;
/*!40000 ALTER TABLE `ci4_auth_logins` DISABLE KEYS */;
INSERT INTO `ci4_auth_logins` VALUES (1,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:121.0) Gecko/20100101 Firefox/121.0','email_password','rd@rajarshi.me',NULL,'2024-01-01 12:24:11',0),(2,'127.0.0.1','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:121.0) Gecko/20100101 Firefox/121.0','email_password','arnavrdas@gmail.com',2,'2024-01-01 12:26:15',1),(3,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36','email_password','rd@rajarshi.me',1,'2024-01-01 13:22:07',1),(4,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36','email_password','arnavrdas@gmail.com',NULL,'2024-01-01 13:31:13',0),(5,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36','email_password','arnavrdas@gmail.com',2,'2024-01-01 13:31:27',1),(6,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36','email_password','rd@rajarshi.me',1,'2024-01-01 16:21:45',1),(7,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36','email_password','rd@rajarshi.me',1,'2024-01-01 16:42:34',1),(8,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36','email_password','anuradhardas@gmail.com',NULL,'2024-01-01 17:18:11',0),(9,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36','email_password','anuradhardas@gmail.com',3,'2024-01-01 17:18:45',1),(10,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36','email_password','anuradhardas@gmail.com',3,'2024-01-01 17:20:23',1),(11,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36','email_password','rd@rajarshi.me',1,'2024-01-01 19:30:28',1),(12,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36','email_password','rd@rajarshi.me',1,'2024-01-01 20:34:43',1),(13,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36','email_password','rd@rajarshi.me',1,'2024-01-02 10:32:45',1),(14,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36','email_password','rd@rajarshi.me',1,'2024-01-02 12:40:43',1);
/*!40000 ALTER TABLE `ci4_auth_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci4_auth_permissions_users`
--

DROP TABLE IF EXISTS `ci4_auth_permissions_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci4_auth_permissions_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `permission` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci4_auth_permissions_users_user_id_foreign` (`user_id`),
  CONSTRAINT `ci4_auth_permissions_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `ci4_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci4_auth_permissions_users`
--

LOCK TABLES `ci4_auth_permissions_users` WRITE;
/*!40000 ALTER TABLE `ci4_auth_permissions_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `ci4_auth_permissions_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci4_auth_remember_tokens`
--

DROP TABLE IF EXISTS `ci4_auth_remember_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci4_auth_remember_tokens` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `expires` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `selector` (`selector`),
  KEY `ci4_auth_remember_tokens_user_id_foreign` (`user_id`),
  CONSTRAINT `ci4_auth_remember_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `ci4_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci4_auth_remember_tokens`
--

LOCK TABLES `ci4_auth_remember_tokens` WRITE;
/*!40000 ALTER TABLE `ci4_auth_remember_tokens` DISABLE KEYS */;
INSERT INTO `ci4_auth_remember_tokens` VALUES (1,'4aa8c7c5f493fe4bb73493fa','d058dd4ca014a8b7d3fd51b23b15419a3788b469485584033a32ed36b8a955ed',1,'2024-02-01 16:21:21','2024-01-02 12:40:43','2024-01-02 21:51:21');
/*!40000 ALTER TABLE `ci4_auth_remember_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci4_auth_token_logins`
--

DROP TABLE IF EXISTS `ci4_auth_token_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci4_auth_token_logins` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_type_identifier` (`id_type`,`identifier`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci4_auth_token_logins`
--

LOCK TABLES `ci4_auth_token_logins` WRITE;
/*!40000 ALTER TABLE `ci4_auth_token_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `ci4_auth_token_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci4_users`
--

DROP TABLE IF EXISTS `ci4_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci4_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `last_active` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci4_users`
--

LOCK TABLES `ci4_users` WRITE;
/*!40000 ALTER TABLE `ci4_users` DISABLE KEYS */;
INSERT INTO `ci4_users` VALUES (1,'rajarshi',NULL,NULL,1,'2024-01-02 22:25:15','2023-12-22 13:02:44','2023-12-22 13:02:45',NULL),(2,'arnav',NULL,NULL,1,'2024-01-01 15:44:55','2023-12-31 16:51:28','2023-12-31 16:51:29',NULL),(3,'anuradha',NULL,NULL,1,'2024-01-01 17:48:04','2024-01-01 16:36:05','2024-01-01 16:36:06',NULL);
/*!40000 ALTER TABLE `ci4_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ci4_users_id` int(11) NOT NULL COMMENT 'Value is 0 for non-employees',
  `dname` varchar(100) NOT NULL COMMENT 'Display Name\n',
  `fname` varchar(45) DEFAULT NULL,
  `mname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `gender` int(11) NOT NULL DEFAULT 0 COMMENT '0: Not selected | 1: Male | 2:	Female | 3: Others',
  `dob` date DEFAULT NULL,
  `current_address_id` int(11) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ci4_users_id_UNIQUE` (`ci4_users_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,1,'Rajarshi Das','Rajarshi','M','Das',1,'1974-11-24',0,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2020-12-28-223112','CodeIgniter\\Shield\\Database\\Migrations\\CreateAuthTables','default','CodeIgniter\\Shield',1703249744,1),(2,'2021-07-04-041948','CodeIgniter\\Settings\\Database\\Migrations\\CreateSettingsTable','default','CodeIgniter\\Settings',1703249744,1),(3,'2021-11-14-143905','CodeIgniter\\Settings\\Database\\Migrations\\AddContextColumn','default','CodeIgniter\\Settings',1703249744,1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `class` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `type` varchar(31) NOT NULL DEFAULT 'string',
  `context` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_attributes`
--

DROP TABLE IF EXISTS `user_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_attributes` (
  `label` varchar(45) NOT NULL,
  `key_name` varchar(45) NOT NULL COMMENT 'key',
  `datatype` varchar(45) NOT NULL COMMENT 'value datatype',
  `description` varchar(250) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  UNIQUE KEY `name_UNIQUE` (`key_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_attributes`
--

LOCK TABLES `user_attributes` WRITE;
/*!40000 ALTER TABLE `user_attributes` DISABLE KEYS */;
INSERT INTO `user_attributes` VALUES ('NA','address','json','door | street | locality | state | pincode | landline | type (1: Permanent or 2: Communication)',1),('Active Address','address_active_id','int','<user_attributes_data_id> of the data row that stores the current address',1),('NA','module_role','json','module_name: role_id',1),('NA','salutation','text','Mr | Ms etc.',1),('Contact Number','spouse_contact_number','text','Mobile or Phone Number',1),('Spouse Name','spouse_name','text','Spouse Name',1);
/*!40000 ALTER TABLE `user_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_attributes_data`
--

DROP TABLE IF EXISTS `user_attributes_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_attributes_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `key` varchar(45) NOT NULL,
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_id` (`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_attributes_data`
--

LOCK TABLES `user_attributes_data` WRITE;
/*!40000 ALTER TABLE `user_attributes_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_attributes_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-02 22:47:35
