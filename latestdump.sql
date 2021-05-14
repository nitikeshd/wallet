-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: localhost    Database: walletdb
-- ------------------------------------------------------
-- Server version	5.7.33-0ubuntu0.18.04.1

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
-- Table structure for table `activity_logs`
--

DROP TABLE IF EXISTS `activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_logs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_logs_user_id_foreign` (`user_id`),
  CONSTRAINT `activity_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_logs`
--

LOCK TABLES `activity_logs` WRITE;
/*!40000 ALTER TABLE `activity_logs` DISABLE KEYS */;
INSERT INTO `activity_logs` VALUES (1,2,'1','Web','127.0.0.1','','2020-10-20 08:17:11','2020-10-20 08:17:11'),(2,2,'1','Web','49.37.155.77','','2021-04-29 16:14:17','2021-04-29 16:14:17'),(3,2,'1','Web','49.37.155.77','','2021-04-29 16:28:29','2021-04-29 16:28:29'),(4,3,'1','Web','49.37.155.77','','2021-04-29 18:28:49','2021-04-29 18:28:49'),(5,3,'1','Web','49.37.155.77','','2021-04-29 18:38:40','2021-04-29 18:38:40'),(6,3,'1','Web','49.37.155.77','','2021-04-29 18:46:01','2021-04-29 18:46:01'),(7,3,'1','Web','49.37.155.77','','2021-04-29 18:49:14','2021-04-29 18:49:14'),(8,3,'1','Web','49.37.155.77','','2021-04-29 18:50:09','2021-04-29 18:50:09'),(9,3,'1','Web','49.37.155.77','','2021-04-29 18:52:52','2021-04-29 18:52:52'),(10,3,'1','Mobile','42.110.166.143','','2021-04-29 19:00:04','2021-04-29 19:00:04'),(11,3,'1','Web','49.37.155.77','','2021-04-29 19:01:57','2021-04-29 19:01:57'),(12,3,'1','Mobile','42.110.166.143','','2021-04-30 03:01:45','2021-04-30 03:01:45'),(13,3,'1','Mobile','42.110.166.143','','2021-04-30 08:48:41','2021-04-30 08:48:41'),(14,3,'1','Mobile','42.110.166.143','','2021-04-30 10:56:51','2021-04-30 10:56:51'),(15,3,'1','Mobile','42.110.166.143','','2021-04-30 13:28:22','2021-04-30 13:28:22'),(16,3,'1','Mobile','42.110.141.8','','2021-04-30 19:17:25','2021-04-30 19:17:25'),(17,3,'1','Mobile','42.110.141.8','','2021-05-01 02:27:58','2021-05-01 02:27:58'),(18,3,'1','Mobile','42.110.141.8','','2021-05-01 07:14:26','2021-05-01 07:14:26'),(19,3,'1','Mobile','42.110.141.8','','2021-05-01 13:36:37','2021-05-01 13:36:37'),(20,3,'1','Web','42.110.137.42','','2021-05-01 19:08:20','2021-05-01 19:08:20');
/*!40000 ALTER TABLE `activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_give_coin_histories`
--

DROP TABLE IF EXISTS `admin_give_coin_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_give_coin_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `wallet_id` bigint(20) NOT NULL,
  `amount` decimal(13,8) NOT NULL DEFAULT '0.00000000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_give_coin_histories`
--

LOCK TABLES `admin_give_coin_histories` WRITE;
/*!40000 ALTER TABLE `admin_give_coin_histories` DISABLE KEYS */;
INSERT INTO `admin_give_coin_histories` VALUES (1,3,4,100.00000000,'2021-04-29 18:55:04','2021-04-29 18:55:04');
/*!40000 ALTER TABLE `admin_give_coin_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_settings`
--

DROP TABLE IF EXISTS `admin_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_settings`
--

LOCK TABLES `admin_settings` WRITE;
/*!40000 ALTER TABLE `admin_settings` DISABLE KEYS */;
INSERT INTO `admin_settings` VALUES (1,'coin_price','1',NULL,'2021-04-29 16:46:55'),(2,'coin_name','karma',NULL,'2021-04-29 16:46:55'),(3,'app_title','Coinspeaks',NULL,'2021-04-29 16:46:55'),(4,'maximum_withdrawal_daily','3',NULL,NULL),(5,'mail_from','noreply@cpoket.com',NULL,NULL),(6,'admin_coin_address','address',NULL,NULL),(7,'base_coin_type','BTC',NULL,NULL),(8,'minimum_withdrawal_amount','0.005',NULL,NULL),(9,'maximum_withdrawal_amount','12',NULL,NULL),(10,'maintenance_mode','no','2020-10-20 08:16:16','2020-10-20 08:16:16'),(11,'logo','','2020-10-20 08:16:16','2020-10-20 08:16:16'),(12,'login_logo','','2020-10-20 08:16:16','2020-10-20 08:16:16'),(13,'landing_logo','','2020-10-20 08:16:16','2020-10-20 08:16:16'),(14,'favicon','','2020-10-20 08:16:16','2020-10-20 08:16:16'),(15,'copyright_text','Copyright@2020','2020-10-20 08:16:16','2021-04-29 16:46:55'),(16,'pagination_count','10','2020-10-20 08:16:16','2020-10-20 08:16:16'),(17,'point_rate','1','2020-10-20 08:16:16','2020-10-20 08:16:16'),(18,'lang','en','2020-10-20 08:16:16','2021-04-29 16:46:55'),(19,'company_name','Coinspeaks','2020-10-20 08:16:16','2021-04-29 16:46:55'),(20,'primary_email','test@email.com','2020-10-20 08:16:16','2020-10-20 08:16:16'),(21,'sms_getway_name','twillo','2020-10-20 08:16:17','2020-10-20 08:16:17'),(22,'twillo_secret_key','test','2020-10-20 08:16:17','2020-10-20 08:16:17'),(23,'twillo_auth_token','test','2020-10-20 08:16:17','2020-10-20 08:16:17'),(24,'twillo_number','test','2020-10-20 08:16:17','2020-10-20 08:16:17'),(25,'ssl_verify','','2020-10-20 08:16:17','2020-10-20 08:16:17'),(26,'mail_driver','SMTP','2020-10-20 08:16:17','2020-10-20 08:16:17'),(27,'mail_host','smtp.mailtrap.io','2020-10-20 08:16:17','2020-10-20 08:16:17'),(28,'mail_port','2525','2020-10-20 08:16:17','2020-10-20 08:16:17'),(29,'mail_username','','2020-10-20 08:16:17','2020-10-20 08:16:17'),(30,'mail_password','','2020-10-20 08:16:17','2020-10-20 08:16:17'),(31,'mail_encryption','null','2020-10-20 08:16:17','2020-10-20 08:16:17'),(32,'mail_from_address','','2020-10-20 08:16:17','2020-10-20 08:16:17'),(33,'braintree_client_token','test','2020-10-20 08:16:17','2020-10-20 08:16:17'),(34,'braintree_environment','sandbox','2020-10-20 08:16:17','2020-10-20 08:16:17'),(35,'braintree_merchant_id','test','2020-10-20 08:16:17','2020-10-20 08:16:17'),(36,'braintree_public_key','test','2020-10-20 08:16:17','2020-10-20 08:16:17'),(37,'braintree_private_key','test','2020-10-20 08:16:17','2020-10-20 08:16:17'),(38,'sms_getway_name','twillo','2020-10-20 08:16:17','2020-10-20 08:16:17'),(39,'clickatell_api_key','test','2020-10-20 08:16:17','2020-10-20 08:16:17'),(40,'number_of_confirmation','6','2020-10-20 08:16:17','2020-10-20 08:16:17'),(41,'referral_commission_percentage','10','2020-10-20 08:16:17','2020-10-20 08:16:17'),(42,'referral_signup_reward','10','2020-10-20 08:16:17','2020-10-20 08:16:17'),(43,'max_affiliation_level','10','2020-10-20 08:16:17','2020-10-20 08:16:17'),(44,'coin_api_user','test','2020-10-20 08:16:17','2020-10-20 08:16:17'),(45,'coin_api_pass','test','2020-10-20 08:16:17','2020-10-20 08:16:17'),(46,'coin_api_host','test5','2020-10-20 08:16:17','2020-10-20 08:16:17'),(47,'coin_api_port','test','2020-10-20 08:16:17','2020-10-20 08:16:17'),(48,'send_fees_type','1','2020-10-20 08:16:17','2020-10-20 08:16:17'),(49,'send_fees_fixed','0','2020-10-20 08:16:17','2020-10-20 08:16:17'),(50,'send_fees_percentage','0','2020-10-20 08:16:17','2020-10-20 08:16:17'),(51,'max_send_limit','0','2020-10-20 08:16:17','2020-10-20 08:16:17'),(52,'deposit_time','1','2020-10-20 08:16:17','2020-10-20 08:16:17'),(53,'COIN_PAYMENT_PUBLIC_KEY','25d05192bd1a9055aefab1fd5ccfc193c886258313607b6ed766ad3349be7040','2020-10-20 08:16:17','2021-04-29 16:12:31'),(54,'COIN_PAYMENT_PRIVATE_KEY','3198E5Ada93893b91aeb7f738Ffa6543a289Db26680E7036D5eFB46F42Aa3bF3','2020-10-20 08:16:17','2021-04-29 16:12:31'),(55,'COIN_PAYMENT_CURRENCY','BTC','2020-10-20 08:16:17','2020-10-20 08:16:17'),(56,'ipn_merchant_id','294764a31e07f7837405a2b332fc628c','2020-10-20 08:16:17','2021-04-29 16:12:31'),(57,'ipn_merchant_id','','2020-10-20 08:16:17','2020-10-20 08:16:17'),(58,'ipn_secret','Sohan@111','2020-10-20 08:16:17','2021-04-29 16:12:31'),(59,'payment_method_coin_payment','1','2020-10-20 08:16:17','2020-10-20 08:16:17'),(60,'payment_method_bank_deposit','2','2020-10-20 08:16:17','2021-04-29 16:13:47'),(61,'membership_bonus_type','1','2020-10-20 08:16:17','2020-10-20 08:16:17'),(62,'membership_bonus_fixed','0','2020-10-20 08:16:17','2020-10-20 08:16:17'),(63,'membership_bonus_percentage','0','2020-10-20 08:16:17','2020-10-20 08:16:17'),(64,'payment_method_stripe','2','2020-10-20 08:17:40','2021-04-29 16:13:49');
/*!40000 ALTER TABLE `admin_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `affiliation_codes`
--

DROP TABLE IF EXISTS `affiliation_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affiliation_codes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `code` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `affiliation_codes_code_unique` (`code`),
  KEY `affiliation_codes_user_id_foreign` (`user_id`),
  CONSTRAINT `affiliation_codes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affiliation_codes`
--

LOCK TABLES `affiliation_codes` WRITE;
/*!40000 ALTER TABLE `affiliation_codes` DISABLE KEYS */;
INSERT INTO `affiliation_codes` VALUES (1,3,'3608b04f8c29c8',1,NULL,'2021-04-29 19:11:52','2021-04-29 19:11:52');
/*!40000 ALTER TABLE `affiliation_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `affiliation_histories`
--

DROP TABLE IF EXISTS `affiliation_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affiliation_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `child_id` bigint(20) unsigned NOT NULL,
  `amount` decimal(19,8) NOT NULL DEFAULT '0.00000000',
  `system_fees` decimal(19,8) NOT NULL DEFAULT '0.00000000',
  `transaction_id` bigint(20) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `order_type` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `affiliation_histories_user_id_foreign` (`user_id`),
  KEY `affiliation_histories_child_id_foreign` (`child_id`),
  CONSTRAINT `affiliation_histories_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `affiliation_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affiliation_histories`
--

LOCK TABLES `affiliation_histories` WRITE;
/*!40000 ALTER TABLE `affiliation_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `affiliation_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banks`
--

DROP TABLE IF EXISTS `banks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account_holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swift_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banks`
--

LOCK TABLES `banks` WRITE;
/*!40000 ALTER TABLE `banks` DISABLE KEYS */;
/*!40000 ALTER TABLE `banks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buy_coin_histories`
--

DROP TABLE IF EXISTS `buy_coin_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buy_coin_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `coin` decimal(19,8) NOT NULL DEFAULT '0.00000000',
  `btc` decimal(19,8) NOT NULL DEFAULT '0.00000000',
  `doller` decimal(19,8) NOT NULL DEFAULT '0.00000000',
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `admin_confirmation` tinyint(4) NOT NULL DEFAULT '0',
  `confirmations` int(11) NOT NULL DEFAULT '0',
  `bank_sleep` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `coin_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requested_amount` decimal(19,8) NOT NULL DEFAULT '0.00000000',
  `referral_bonus` decimal(19,8) NOT NULL DEFAULT '0.00000000',
  `bonus` decimal(19,8) NOT NULL DEFAULT '0.00000000',
  `fees` decimal(19,8) NOT NULL DEFAULT '0.00000000',
  `referral_level` int(11) DEFAULT NULL,
  `phase_id` bigint(20) DEFAULT NULL,
  `stripe_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buy_coin_histories`
--

LOCK TABLES `buy_coin_histories` WRITE;
/*!40000 ALTER TABLE `buy_coin_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `buy_coin_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buy_coin_referral_histories`
--

DROP TABLE IF EXISTS `buy_coin_referral_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buy_coin_referral_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `wallet_id` bigint(20) NOT NULL,
  `buy_id` bigint(20) NOT NULL,
  `phase_id` bigint(20) NOT NULL,
  `child_id` bigint(20) NOT NULL,
  `level` int(11) NOT NULL,
  `system_fees` decimal(13,8) NOT NULL DEFAULT '0.00000000',
  `amount` decimal(13,8) NOT NULL DEFAULT '0.00000000',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buy_coin_referral_histories`
--

LOCK TABLES `buy_coin_referral_histories` WRITE;
/*!40000 ALTER TABLE `buy_coin_referral_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `buy_coin_referral_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coin_requests`
--

DROP TABLE IF EXISTS `coin_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin_requests` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `amount` decimal(13,8) NOT NULL DEFAULT '0.00000000',
  `sender_user_id` bigint(20) NOT NULL,
  `receiver_user_id` bigint(20) NOT NULL,
  `sender_wallet_id` bigint(20) NOT NULL,
  `receiver_wallet_id` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin_requests`
--

LOCK TABLES `coin_requests` WRITE;
/*!40000 ALTER TABLE `coin_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `coin_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coins`
--

DROP TABLE IF EXISTS `coins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `is_withdrawal` tinyint(4) NOT NULL DEFAULT '1',
  `is_deposit` tinyint(4) NOT NULL DEFAULT '1',
  `is_buy` tinyint(4) NOT NULL DEFAULT '1',
  `is_sell` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `coins_type_unique` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coins`
--

LOCK TABLES `coins` WRITE;
/*!40000 ALTER TABLE `coins` DISABLE KEYS */;
INSERT INTO `coins` VALUES (1,'Bitcoin','BTC',1,1,1,1,1,'2020-10-20 08:16:17','2020-10-20 08:16:17'),(2,'Tether USD','USDT',5,1,1,1,1,'2020-10-20 08:16:17','2021-04-29 16:12:42'),(3,'Ether','ETH',1,1,1,1,1,'2020-10-20 08:16:17','2020-10-20 08:16:17'),(4,'Litecoin','LTC',1,1,1,1,1,'2020-10-20 08:16:17','2020-10-20 08:16:17'),(5,'Dogecoin','DOGE',1,1,1,1,1,'2020-10-20 08:16:17','2021-04-29 16:12:42'),(6,'Bitcoin Cash','BCH',1,1,1,1,1,'2020-10-20 08:16:17','2020-10-20 08:16:17'),(7,'Dash','DASH',1,1,1,1,1,'2020-10-20 08:16:17','2020-10-20 08:16:17'),(8,'Bytecoin','BCN',1,1,1,1,1,'2021-04-29 16:12:42','2021-04-29 16:12:42'),(9,'DigiByte','DGB',1,1,1,1,1,'2021-04-29 16:12:42','2021-04-29 16:12:42');
/*!40000 ALTER TABLE `coins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposite_transactions`
--

DROP TABLE IF EXISTS `deposite_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deposite_transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fees` decimal(19,8) NOT NULL DEFAULT '0.00000000',
  `sender_wallet_id` bigint(20) DEFAULT NULL,
  `receiver_wallet_id` bigint(20) unsigned NOT NULL,
  `address_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(19,8) NOT NULL DEFAULT '0.00000000',
  `btc` decimal(19,8) NOT NULL DEFAULT '0.00000000',
  `doller` decimal(19,8) NOT NULL DEFAULT '0.00000000',
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `confirmations` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposite_transactions`
--

LOCK TABLES `deposite_transactions` WRITE;
/*!40000 ALTER TABLE `deposite_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `deposite_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `author` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ico_phases`
--

DROP TABLE IF EXISTS `ico_phases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ico_phases` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `phase_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `fees` decimal(19,8) NOT NULL DEFAULT '0.00000000',
  `rate` decimal(19,8) NOT NULL DEFAULT '0.00000000',
  `amount` decimal(19,8) NOT NULL DEFAULT '0.00000000',
  `bonus` decimal(19,8) NOT NULL DEFAULT '0.00000000',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `affiliation_level` int(11) DEFAULT NULL,
  `affiliation_percentage` decimal(19,8) NOT NULL DEFAULT '0.00000000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ico_phases`
--

LOCK TABLES `ico_phases` WRITE;
/*!40000 ALTER TABLE `ico_phases` DISABLE KEYS */;
/*!40000 ALTER TABLE `ico_phases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership_bonus_distribution_histories`
--

DROP TABLE IF EXISTS `membership_bonus_distribution_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership_bonus_distribution_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `plan_id` bigint(20) NOT NULL,
  `wallet_id` bigint(20) NOT NULL,
  `membership_id` bigint(20) NOT NULL,
  `distribution_date` date NOT NULL,
  `bonus_amount` decimal(13,8) NOT NULL DEFAULT '0.00000000',
  `plan_current_bonus` decimal(13,8) NOT NULL DEFAULT '0.00000000',
  `bonus_type` tinyint(4) NOT NULL DEFAULT '0',
  `bonus_amount_btc` decimal(13,8) NOT NULL DEFAULT '0.00000000',
  `bonus_coin_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BTC',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_bonus_distribution_histories`
--

LOCK TABLES `membership_bonus_distribution_histories` WRITE;
/*!40000 ALTER TABLE `membership_bonus_distribution_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `membership_bonus_distribution_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership_bonuses`
--

DROP TABLE IF EXISTS `membership_bonuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership_bonuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `bonus_amount` decimal(19,8) NOT NULL DEFAULT '0.00000000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_bonuses`
--

LOCK TABLES `membership_bonuses` WRITE;
/*!40000 ALTER TABLE `membership_bonuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `membership_bonuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership_clubs`
--

DROP TABLE IF EXISTS `membership_clubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership_clubs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `plan_id` bigint(20) DEFAULT NULL,
  `wallet_id` bigint(20) DEFAULT NULL,
  `amount` decimal(19,8) NOT NULL DEFAULT '0.00000000',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_clubs`
--

LOCK TABLES `membership_clubs` WRITE;
/*!40000 ALTER TABLE `membership_clubs` DISABLE KEYS */;
/*!40000 ALTER TABLE `membership_clubs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership_plans`
--

DROP TABLE IF EXISTS `membership_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership_plans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `plan_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int(11) NOT NULL DEFAULT '0',
  `amount` decimal(19,8) NOT NULL DEFAULT '0.00000000',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bonus_type` tinyint(4) NOT NULL DEFAULT '1',
  `bonus` decimal(13,8) NOT NULL DEFAULT '0.00000000',
  `bonus_coin_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BTC',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_plans`
--

LOCK TABLES `membership_plans` WRITE;
/*!40000 ALTER TABLE `membership_plans` DISABLE KEYS */;
INSERT INTO `membership_plans` VALUES (1,'Silver',30,500.00000000,NULL,2,2.00000000,'BTC',1,NULL,'2020-10-20 08:16:17','2020-10-20 08:16:17'),(2,'Gold',30,1000.00000000,NULL,2,5.00000000,'BTC',1,NULL,'2020-10-20 08:16:17','2020-10-20 08:16:17'),(3,'Platinum',30,2000.00000000,NULL,2,10.00000000,'BTC',1,NULL,'2020-10-20 08:16:17','2020-10-20 08:16:17');
/*!40000 ALTER TABLE `membership_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership_transaction_histories`
--

DROP TABLE IF EXISTS `membership_transaction_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership_transaction_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `club_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `wallet_id` bigint(20) NOT NULL,
  `amount` decimal(13,8) NOT NULL DEFAULT '0.00000000',
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_transaction_histories`
--

LOCK TABLES `membership_transaction_histories` WRITE;
/*!40000 ALTER TABLE `membership_transaction_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `membership_transaction_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2019_06_24_092552_create_wallets_table',1),(9,'2019_07_24_092057_create_referrals_table',1),(10,'2019_07_24_092303_create_user_settings_table',1),(11,'2019_07_24_092331_create_admin_settings_table',1),(12,'2019_07_24_092409_create_activity_logs_table',1),(13,'2019_07_24_092511_create_wallet_address_histories_table',1),(14,'2019_07_24_103207_create_user_verification_codes_table',1),(15,'2019_10_17_075927_create_affiliation_codes_table',1),(16,'2019_10_17_080002_create_affiliation_histories_table',1),(17,'2019_10_17_080031_create_referral_users_table',1),(18,'2020_04_29_080822_create_verification_details_table',1),(19,'2020_04_29_081029_create_banks_table',1),(20,'2020_04_29_081134_create_buy_coin_histories_table',1),(21,'2020_04_29_081343_create_deposite_transactions_table',1),(22,'2020_04_29_081451_create_withdraw_histories_table',1),(23,'2020_06_11_133803_create_membership_clubs_table',1),(24,'2020_06_11_134228_create_membership_plans_table',1),(25,'2020_06_11_134611_create_membership_bonuses_table',1),(26,'2020_06_11_134742_create_membership_bonus_distribution_histories_table',1),(27,'2020_06_11_134823_create_membership_transaction_histories_table',1),(28,'2020_06_17_123519_create_faqs_table',1),(29,'2020_06_19_095619_create_send_mail_records_table',1),(30,'2020_06_19_183647_create_notifications_table',1),(31,'2020_06_21_152330_create_referral_sign_bonus_histories_table',1),(32,'2020_06_23_065105_add_wallet_id_at_bonus',1),(33,'2020_06_24_080256_create_websockets_statistics_entries_table',1),(34,'2020_07_01_111249_create_admin_give_coin_histories_table',1),(35,'2020_07_03_092949_create_ico_phases_table',1),(36,'2020_07_03_112940_add_phaseid_at_buy_coin',1),(37,'2020_07_06_053213_create_buy_coin_referral_histories_table',1),(38,'2020_07_26_091257_create_coin_requests_table',1),(39,'2020_09_25_095154_add_coin_type_at_wallets',1),(40,'2020_09_25_105747_create_coins_table',1),(41,'2020_09_29_062329_add_wallet_id_at_membership_clubs',1),(42,'2020_09_30_062649_add_coin_type_at_withdraw',1),(43,'2020_09_30_065234_add_coin_type_at_wallet_address',1),(44,'2020_10_02_060429_add_coin_type_at_plan',1),(45,'2020_10_02_063542_add_coin_type_at_plan_bonus_dis_history',1),(46,'2020_10_20_112652_add_stripe_token_at_buy_coin_histories',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notification_body` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,2,'NEW UPDATE NOTIFICATION!','Due to sudden Ban of Crypto network in Turkey, we had to move our wallet to another server in Europe. Do not worry! All of your coins are safe with us. Currently we are going on major changes in our wallet where you will experience the seamless user experience without any hurdle. Right now all of our services are being synced and it will take 72 hours to fully complete. Hence, you will be able to do transactions after 72 hours from now. If you face any difficulties or concerns, please feel free to drop an email to our support email.',0,'2021-04-29 18:45:50','2021-04-29 18:45:50'),(2,3,'NEW UPDATE NOTIFICATION!','Due to sudden Ban of Crypto network in Turkey, we had to move our wallet to another server in Europe. Do not worry! All of your coins are safe with us. Currently we are going on major changes in our wallet where you will experience the seamless user experience without any hurdle. Right now all of our services are being synced and it will take 72 hours to fully complete. Hence, you will be able to do transactions after 72 hours from now. If you face any difficulties or concerns, please feel free to drop an email to our support email.',1,'2021-04-29 18:45:50','2021-04-29 20:11:34');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referral_sign_bonus_histories`
--

DROP TABLE IF EXISTS `referral_sign_bonus_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referral_sign_bonus_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `wallet_id` bigint(20) NOT NULL,
  `amount` decimal(13,8) NOT NULL DEFAULT '0.00000000',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referral_sign_bonus_histories`
--

LOCK TABLES `referral_sign_bonus_histories` WRITE;
/*!40000 ALTER TABLE `referral_sign_bonus_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `referral_sign_bonus_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referral_users`
--

DROP TABLE IF EXISTS `referral_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referral_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `parent_id` bigint(20) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `referral_users_user_id_unique` (`user_id`),
  KEY `referral_users_parent_id_foreign` (`parent_id`),
  CONSTRAINT `referral_users_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `referral_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referral_users`
--

LOCK TABLES `referral_users` WRITE;
/*!40000 ALTER TABLE `referral_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `referral_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referrals`
--

DROP TABLE IF EXISTS `referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referrals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `parent_user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `referrals_user_id_foreign` (`user_id`),
  CONSTRAINT `referrals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referrals`
--

LOCK TABLES `referrals` WRITE;
/*!40000 ALTER TABLE `referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `send_mail_records`
--

DROP TABLE IF EXISTS `send_mail_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `send_mail_records` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `email_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `send_mail_records`
--

LOCK TABLES `send_mail_records` WRITE;
/*!40000 ALTER TABLE `send_mail_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `send_mail_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_settings`
--

DROP TABLE IF EXISTS `user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_settings_user_id_foreign` (`user_id`),
  CONSTRAINT `user_settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_settings`
--

LOCK TABLES `user_settings` WRITE;
/*!40000 ALTER TABLE `user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_verification_codes`
--

DROP TABLE IF EXISTS `user_verification_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_verification_codes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `expired_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_verification_codes`
--

LOCK TABLES `user_verification_codes` WRITE;
/*!40000 ALTER TABLE `user_verification_codes` DISABLE KEYS */;
INSERT INTO `user_verification_codes` VALUES (1,3,'551311',0,'2021-05-14 00:00:00','2021-04-29 18:23:36','2021-04-29 18:23:36');
/*!40000 ALTER TABLE `user_verification_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reset_code` varchar(180) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT '2',
  `status` int(11) NOT NULL DEFAULT '1',
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_verified` tinyint(4) NOT NULL DEFAULT '0',
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT '1',
  `birth_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g2f_enabled` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `google2fa_secret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` tinyint(4) NOT NULL DEFAULT '0',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `device_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` tinyint(4) NOT NULL DEFAULT '1',
  `push_notification_status` tinyint(4) NOT NULL DEFAULT '1',
  `email_notification_status` tinyint(4) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_reset_code_unique` (`reset_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Mr.','Admin','admin@email.com',NULL,1,1,NULL,NULL,0,NULL,1,NULL,NULL,'0',NULL,1,'$2y$10$nLOEf0bML44/u9fHBk/Fx.PItfYuDtU/bkXOtbl6ySVg2KlX7HtVa','en',NULL,1,1,1,NULL,NULL,NULL),(2,'Mr','User','user@email.com',NULL,2,1,NULL,NULL,0,NULL,1,NULL,NULL,'0',NULL,1,'$2y$10$ymvTLsc44ZjkUnecIHBUkuGKAzCi5iKiel90lrPhYxUpUz4YK0aNS','en',NULL,1,1,1,NULL,NULL,NULL),(3,'Zico','Adhikary','zicoadhikary@gmail.com',NULL,2,1,NULL,'0000000000',0,'in',1,NULL,NULL,'0',NULL,1,'$2y$10$mpH9G6lgeUUrFmBkP.vLx.JPPKbEU2qeZ6zr.ax2yGiFcYbpH/1i.','en',NULL,1,1,1,NULL,'2021-04-29 18:23:36','2021-04-29 19:04:01');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verification_details`
--

DROP TABLE IF EXISTS `verification_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verification_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `field_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `verification_details_user_id_foreign` (`user_id`),
  CONSTRAINT `verification_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verification_details`
--

LOCK TABLES `verification_details` WRITE;
/*!40000 ALTER TABLE `verification_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `verification_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallet_address_histories`
--

DROP TABLE IF EXISTS `wallet_address_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wallet_address_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `wallet_id` bigint(20) NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coin_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BTC',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallet_address_histories`
--

LOCK TABLES `wallet_address_histories` WRITE;
/*!40000 ALTER TABLE `wallet_address_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `wallet_address_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallets`
--

DROP TABLE IF EXISTS `wallets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wallets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coin_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Default',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `is_primary` tinyint(4) NOT NULL DEFAULT '0',
  `balance` decimal(19,8) NOT NULL DEFAULT '0.00000000',
  `referral_balance` decimal(19,8) NOT NULL DEFAULT '0.00000000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wallets_user_id_foreign` (`user_id`),
  CONSTRAINT `wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallets`
--

LOCK TABLES `wallets` WRITE;
/*!40000 ALTER TABLE `wallets` DISABLE KEYS */;
INSERT INTO `wallets` VALUES (1,2,'Default Wallet','Default',1,1,1.00000000,0.00000000,NULL,NULL),(2,1,'Default Wallet','Default',1,1,1.00000000,0.00000000,NULL,NULL),(3,2,'Bitcoin','BTC',1,0,1.00000000,0.00000000,'2021-04-29 16:15:37','2021-04-29 16:15:37'),(4,3,'Default wallet','Default',1,1,100.00000000,0.00000000,'2021-04-29 18:23:36','2021-04-29 18:55:04'),(5,3,'Bitcoin','BTC',1,0,42.89000000,0.00000000,'2021-04-29 18:29:13','2021-04-29 18:29:13'),(6,3,'Dogecoin','DOGE',1,1,1000000.00000000,0.00000000,'2021-04-29 18:29:22','2021-04-29 20:09:38'),(7,3,'Ethereum','ETH',1,0,0.00000000,0.00000000,'2021-04-29 18:30:14','2021-04-29 18:30:14');
/*!40000 ALTER TABLE `wallets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `websockets_statistics_entries`
--

DROP TABLE IF EXISTS `websockets_statistics_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `websockets_statistics_entries`
--

LOCK TABLES `websockets_statistics_entries` WRITE;
/*!40000 ALTER TABLE `websockets_statistics_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `websockets_statistics_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraw_histories`
--

DROP TABLE IF EXISTS `withdraw_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `withdraw_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `wallet_id` bigint(20) unsigned NOT NULL,
  `amount` decimal(19,8) NOT NULL DEFAULT '0.00000000',
  `coin_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BTC',
  `btc` decimal(19,8) NOT NULL DEFAULT '0.00000000',
  `doller` decimal(19,8) NOT NULL DEFAULT '0.00000000',
  `address_type` tinyint(4) NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_hash` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_wallet_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmations` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fees` decimal(19,8) NOT NULL DEFAULT '0.00000000',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `withdraw_histories_wallet_id_foreign` (`wallet_id`),
  CONSTRAINT `withdraw_histories_wallet_id_foreign` FOREIGN KEY (`wallet_id`) REFERENCES `wallets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraw_histories`
--

LOCK TABLES `withdraw_histories` WRITE;
/*!40000 ALTER TABLE `withdraw_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdraw_histories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-01 21:28:09
