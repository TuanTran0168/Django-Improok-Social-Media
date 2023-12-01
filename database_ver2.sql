CREATE DATABASE  IF NOT EXISTS `improok-social-media` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `improok-social-media`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: improok-social-media
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add invitation group',7,'add_invitationgroup'),(26,'Can change invitation group',7,'change_invitationgroup'),(27,'Can delete invitation group',7,'delete_invitationgroup'),(28,'Can view invitation group',7,'view_invitationgroup'),(29,'Can add post',8,'add_post'),(30,'Can change post',8,'change_post'),(31,'Can delete post',8,'delete_post'),(32,'Can view post',8,'view_post'),(33,'Can add post survey',9,'add_postsurvey'),(34,'Can change post survey',9,'change_postsurvey'),(35,'Can delete post survey',9,'delete_postsurvey'),(36,'Can view post survey',9,'view_postsurvey'),(37,'Can add reaction',10,'add_reaction'),(38,'Can change reaction',10,'change_reaction'),(39,'Can delete reaction',10,'delete_reaction'),(40,'Can view reaction',10,'view_reaction'),(41,'Can add role',11,'add_role'),(42,'Can change role',11,'change_role'),(43,'Can delete role',11,'delete_role'),(44,'Can view role',11,'view_role'),(45,'Can add survey answer',12,'add_surveyanswer'),(46,'Can change survey answer',12,'change_surveyanswer'),(47,'Can delete survey answer',12,'delete_surveyanswer'),(48,'Can view survey answer',12,'view_surveyanswer'),(49,'Can add survey question',13,'add_surveyquestion'),(50,'Can change survey question',13,'change_surveyquestion'),(51,'Can delete survey question',13,'delete_surveyquestion'),(52,'Can view survey question',13,'view_surveyquestion'),(53,'Can add survey question type',14,'add_surveyquestiontype'),(54,'Can change survey question type',14,'change_surveyquestiontype'),(55,'Can delete survey question type',14,'delete_surveyquestiontype'),(56,'Can view survey question type',14,'view_surveyquestiontype'),(57,'Can add survey response',15,'add_surveyresponse'),(58,'Can change survey response',15,'change_surveyresponse'),(59,'Can delete survey response',15,'delete_surveyresponse'),(60,'Can view survey response',15,'view_surveyresponse'),(61,'Can add survey question option',16,'add_surveyquestionoption'),(62,'Can change survey question option',16,'change_surveyquestionoption'),(63,'Can delete survey question option',16,'delete_surveyquestionoption'),(64,'Can view survey question option',16,'view_surveyquestionoption'),(65,'Can add survey answer option',17,'add_surveyansweroption'),(66,'Can change survey answer option',17,'change_surveyansweroption'),(67,'Can delete survey answer option',17,'delete_surveyansweroption'),(68,'Can view survey answer option',17,'view_surveyansweroption'),(69,'Can add post reaction',18,'add_postreaction'),(70,'Can change post reaction',18,'change_postreaction'),(71,'Can delete post reaction',18,'delete_postreaction'),(72,'Can view post reaction',18,'view_postreaction'),(73,'Can add post invitation',19,'add_postinvitation'),(74,'Can change post invitation',19,'change_postinvitation'),(75,'Can delete post invitation',19,'delete_postinvitation'),(76,'Can view post invitation',19,'view_postinvitation'),(77,'Can add post image',20,'add_postimage'),(78,'Can change post image',20,'change_postimage'),(79,'Can delete post image',20,'delete_postimage'),(80,'Can view post image',20,'view_postimage'),(81,'Can add comment',21,'add_comment'),(82,'Can change comment',21,'change_comment'),(83,'Can delete comment',21,'delete_comment'),(84,'Can view comment',21,'view_comment'),(85,'Can add account',22,'add_account'),(86,'Can change account',22,'change_account'),(87,'Can delete account',22,'delete_account'),(88,'Can view account',22,'view_account'),(89,'Can add alumni account',23,'add_alumniaccount'),(90,'Can change alumni account',23,'change_alumniaccount'),(91,'Can delete alumni account',23,'delete_alumniaccount'),(92,'Can view alumni account',23,'view_alumniaccount'),(93,'Can add confirm status',24,'add_confirmstatus'),(94,'Can change confirm status',24,'change_confirmstatus'),(95,'Can delete confirm status',24,'delete_confirmstatus'),(96,'Can view confirm status',24,'view_confirmstatus'),(97,'Can add group account',25,'add_groupaccount'),(98,'Can change group account',25,'change_groupaccount'),(99,'Can delete group account',25,'delete_groupaccount'),(100,'Can view group account',25,'view_groupaccount'),(101,'Can add invitation account',26,'add_invitationaccount'),(102,'Can change invitation account',26,'change_invitationaccount'),(103,'Can delete invitation account',26,'delete_invitationaccount'),(104,'Can view invitation account',26,'view_invitationaccount');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_social_media_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_social_media_user_id` FOREIGN KEY (`user_id`) REFERENCES `social_media_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session'),(22,'social_media','account'),(23,'social_media','alumniaccount'),(21,'social_media','comment'),(24,'social_media','confirmstatus'),(25,'social_media','groupaccount'),(26,'social_media','invitationaccount'),(7,'social_media','invitationgroup'),(8,'social_media','post'),(20,'social_media','postimage'),(19,'social_media','postinvitation'),(18,'social_media','postreaction'),(9,'social_media','postsurvey'),(10,'social_media','reaction'),(11,'social_media','role'),(12,'social_media','surveyanswer'),(17,'social_media','surveyansweroption'),(13,'social_media','surveyquestion'),(16,'social_media','surveyquestionoption'),(14,'social_media','surveyquestiontype'),(15,'social_media','surveyresponse'),(6,'social_media','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-12-01 18:04:14.999092'),(2,'contenttypes','0002_remove_content_type_name','2023-12-01 18:04:15.045969'),(3,'auth','0001_initial','2023-12-01 18:04:15.234298'),(4,'auth','0002_alter_permission_name_max_length','2023-12-01 18:04:15.312827'),(5,'auth','0003_alter_user_email_max_length','2023-12-01 18:04:15.312827'),(6,'auth','0004_alter_user_username_opts','2023-12-01 18:04:15.328450'),(7,'auth','0005_alter_user_last_login_null','2023-12-01 18:04:15.328450'),(8,'auth','0006_require_contenttypes_0002','2023-12-01 18:04:15.344076'),(9,'auth','0007_alter_validators_add_error_messages','2023-12-01 18:04:15.344076'),(10,'auth','0008_alter_user_username_max_length','2023-12-01 18:04:15.359702'),(11,'auth','0009_alter_user_last_name_max_length','2023-12-01 18:04:15.359702'),(12,'auth','0010_alter_group_name_max_length','2023-12-01 18:04:15.391361'),(13,'auth','0011_update_proxy_permissions','2023-12-01 18:04:15.391361'),(14,'auth','0012_alter_user_first_name_max_length','2023-12-01 18:04:15.406985'),(15,'social_media','0001_initial','2023-12-01 18:04:16.913187'),(16,'admin','0001_initial','2023-12-01 18:04:17.007389'),(17,'admin','0002_logentry_remove_auto_add','2023-12-01 18:04:17.038600'),(18,'admin','0003_logentry_add_action_flag_choices','2023-12-01 18:04:17.054226'),(19,'sessions','0001_initial','2023-12-01 18:04:17.085876'),(20,'social_media','0002_account_alumniaccount_confirmstatus_groupaccount_and_more','2023-12-01 18:04:18.669855'),(21,'social_media','0003_account_account_status','2023-12-01 18:04:18.732760');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('mf87joqahg8xcp3qsgsn299x6o08o7di','.eJxVjMEOwiAQRP-FsyGwBQSP3v0GsiyLVA1NSnsy_rtt0oPeJvPezFtEXJca185zHLO4CC1Ov11CenLbQX5gu0-SprbMY5K7Ig_a5W3K_Loe7t9BxV639VAyFtYuK-M9lmTAOQ96y3Q2SArYB0oBgKy1Shd0OLAKhqEYk20Qny_tJjfV:1r97sy:MMBRTTXJRE22qvYJvRpa1es0Rr31-JrSGquJsBPxANU','2023-12-15 18:05:08.547692');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_account`
--

DROP TABLE IF EXISTS `social_media_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_account` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` datetime(6) DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `account_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_number` (`phone_number`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `social_media_account_role_id_d1ccc1de_fk_social_media_role_id` (`role_id`),
  CONSTRAINT `social_media_account_role_id_d1ccc1de_fk_social_media_role_id` FOREIGN KEY (`role_id`) REFERENCES `social_media_role` (`id`),
  CONSTRAINT `social_media_account_user_id_30063586_fk_social_media_user_id` FOREIGN KEY (`user_id`) REFERENCES `social_media_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_account`
--

LOCK TABLES `social_media_account` WRITE;
/*!40000 ALTER TABLE `social_media_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_alumniaccount`
--

DROP TABLE IF EXISTS `social_media_alumniaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_alumniaccount` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `alumni_account_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_id` (`account_id`),
  CONSTRAINT `social_media_alumnia_account_id_c7d06ad4_fk_social_me` FOREIGN KEY (`account_id`) REFERENCES `social_media_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_alumniaccount`
--

LOCK TABLES `social_media_alumniaccount` WRITE;
/*!40000 ALTER TABLE `social_media_alumniaccount` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_alumniaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_comment`
--

DROP TABLE IF EXISTS `social_media_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `comment_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint NOT NULL,
  `account_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_media_comment_post_id_200ffcb6_fk_social_media_post_id` (`post_id`),
  KEY `social_media_comment_account_id_3fe640d0_fk_social_me` (`account_id`),
  CONSTRAINT `social_media_comment_account_id_3fe640d0_fk_social_me` FOREIGN KEY (`account_id`) REFERENCES `social_media_account` (`id`),
  CONSTRAINT `social_media_comment_post_id_200ffcb6_fk_social_media_post_id` FOREIGN KEY (`post_id`) REFERENCES `social_media_post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_comment`
--

LOCK TABLES `social_media_comment` WRITE;
/*!40000 ALTER TABLE `social_media_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_confirmstatus`
--

DROP TABLE IF EXISTS `social_media_confirmstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_confirmstatus` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `confirm_status_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_confirmstatus`
--

LOCK TABLES `social_media_confirmstatus` WRITE;
/*!40000 ALTER TABLE `social_media_confirmstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_confirmstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_groupaccount`
--

DROP TABLE IF EXISTS `social_media_groupaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_groupaccount` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `account_id` bigint NOT NULL,
  `invitation_group_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_media_groupac_invitation_group_id_cd0b4203_fk_social_me` (`invitation_group_id`),
  KEY `social_media_groupac_account_id_8c0f4a12_fk_social_me` (`account_id`),
  CONSTRAINT `social_media_groupac_account_id_8c0f4a12_fk_social_me` FOREIGN KEY (`account_id`) REFERENCES `social_media_account` (`id`),
  CONSTRAINT `social_media_groupac_invitation_group_id_cd0b4203_fk_social_me` FOREIGN KEY (`invitation_group_id`) REFERENCES `social_media_invitationgroup` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_groupaccount`
--

LOCK TABLES `social_media_groupaccount` WRITE;
/*!40000 ALTER TABLE `social_media_groupaccount` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_groupaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_invitationaccount`
--

DROP TABLE IF EXISTS `social_media_invitationaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_invitationaccount` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `account_id` bigint NOT NULL,
  `post_invitation_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_media_invitat_post_invitation_id_a98ad106_fk_social_me` (`post_invitation_id`),
  KEY `social_media_invitat_account_id_94b62627_fk_social_me` (`account_id`),
  CONSTRAINT `social_media_invitat_account_id_94b62627_fk_social_me` FOREIGN KEY (`account_id`) REFERENCES `social_media_account` (`id`),
  CONSTRAINT `social_media_invitat_post_invitation_id_a98ad106_fk_social_me` FOREIGN KEY (`post_invitation_id`) REFERENCES `social_media_postinvitation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_invitationaccount`
--

LOCK TABLES `social_media_invitationaccount` WRITE;
/*!40000 ALTER TABLE `social_media_invitationaccount` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_invitationaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_invitationgroup`
--

DROP TABLE IF EXISTS `social_media_invitationgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_invitationgroup` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `invitation_group_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_invitationgroup`
--

LOCK TABLES `social_media_invitationgroup` WRITE;
/*!40000 ALTER TABLE `social_media_invitationgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_invitationgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_post`
--

DROP TABLE IF EXISTS `social_media_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `post_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_lock` tinyint(1) NOT NULL,
  `account_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_media_post_account_id_40a73edf_fk_social_media_account_id` (`account_id`),
  CONSTRAINT `social_media_post_account_id_40a73edf_fk_social_media_account_id` FOREIGN KEY (`account_id`) REFERENCES `social_media_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_post`
--

LOCK TABLES `social_media_post` WRITE;
/*!40000 ALTER TABLE `social_media_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_postimage`
--

DROP TABLE IF EXISTS `social_media_postimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_postimage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `post_image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_media_postimage_post_id_c78cdf02_fk_social_media_post_id` (`post_id`),
  CONSTRAINT `social_media_postimage_post_id_c78cdf02_fk_social_media_post_id` FOREIGN KEY (`post_id`) REFERENCES `social_media_post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_postimage`
--

LOCK TABLES `social_media_postimage` WRITE;
/*!40000 ALTER TABLE `social_media_postimage` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_postimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_postinvitation`
--

DROP TABLE IF EXISTS `social_media_postinvitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_postinvitation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `event_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `post_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `post_id` (`post_id`),
  CONSTRAINT `social_media_postinv_post_id_d49969f2_fk_social_me` FOREIGN KEY (`post_id`) REFERENCES `social_media_post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_postinvitation`
--

LOCK TABLES `social_media_postinvitation` WRITE;
/*!40000 ALTER TABLE `social_media_postinvitation` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_postinvitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_postreaction`
--

DROP TABLE IF EXISTS `social_media_postreaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_postreaction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `post_id` bigint NOT NULL,
  `reaction_id` bigint NOT NULL,
  `account_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_media_postrea_post_id_33171a86_fk_social_me` (`post_id`),
  KEY `social_media_postrea_reaction_id_b79c36c9_fk_social_me` (`reaction_id`),
  KEY `social_media_postrea_account_id_64ecc229_fk_social_me` (`account_id`),
  CONSTRAINT `social_media_postrea_account_id_64ecc229_fk_social_me` FOREIGN KEY (`account_id`) REFERENCES `social_media_account` (`id`),
  CONSTRAINT `social_media_postrea_post_id_33171a86_fk_social_me` FOREIGN KEY (`post_id`) REFERENCES `social_media_post` (`id`),
  CONSTRAINT `social_media_postrea_reaction_id_b79c36c9_fk_social_me` FOREIGN KEY (`reaction_id`) REFERENCES `social_media_reaction` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_postreaction`
--

LOCK TABLES `social_media_postreaction` WRITE;
/*!40000 ALTER TABLE `social_media_postreaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_postreaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_postsurvey`
--

DROP TABLE IF EXISTS `social_media_postsurvey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_postsurvey` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `post_survey_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `post_survey_status` tinyint(1) NOT NULL,
  `post_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `post_id` (`post_id`),
  CONSTRAINT `social_media_postsurvey_post_id_8b5475b0_fk_social_media_post_id` FOREIGN KEY (`post_id`) REFERENCES `social_media_post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_postsurvey`
--

LOCK TABLES `social_media_postsurvey` WRITE;
/*!40000 ALTER TABLE `social_media_postsurvey` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_postsurvey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_reaction`
--

DROP TABLE IF EXISTS `social_media_reaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_reaction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `reaction_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_reaction`
--

LOCK TABLES `social_media_reaction` WRITE;
/*!40000 ALTER TABLE `social_media_reaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_reaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_role`
--

DROP TABLE IF EXISTS `social_media_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_role`
--

LOCK TABLES `social_media_role` WRITE;
/*!40000 ALTER TABLE `social_media_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_surveyanswer`
--

DROP TABLE IF EXISTS `social_media_surveyanswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_surveyanswer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `question_option_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `survey_question_id` bigint NOT NULL,
  `survey_response_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_media_surveya_survey_question_id_1dafa1b7_fk_social_me` (`survey_question_id`),
  KEY `social_media_surveya_survey_response_id_91ba8f7c_fk_social_me` (`survey_response_id`),
  CONSTRAINT `social_media_surveya_survey_question_id_1dafa1b7_fk_social_me` FOREIGN KEY (`survey_question_id`) REFERENCES `social_media_surveyquestion` (`id`),
  CONSTRAINT `social_media_surveya_survey_response_id_91ba8f7c_fk_social_me` FOREIGN KEY (`survey_response_id`) REFERENCES `social_media_surveyresponse` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_surveyanswer`
--

LOCK TABLES `social_media_surveyanswer` WRITE;
/*!40000 ALTER TABLE `social_media_surveyanswer` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_surveyanswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_surveyansweroption`
--

DROP TABLE IF EXISTS `social_media_surveyansweroption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_surveyansweroption` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `survey_answer_id` bigint NOT NULL,
  `survey_question_option_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_media_surveya_survey_answer_id_b9cc40b2_fk_social_me` (`survey_answer_id`),
  KEY `social_media_surveya_survey_question_opti_ff66c0e0_fk_social_me` (`survey_question_option_id`),
  CONSTRAINT `social_media_surveya_survey_answer_id_b9cc40b2_fk_social_me` FOREIGN KEY (`survey_answer_id`) REFERENCES `social_media_surveyanswer` (`id`),
  CONSTRAINT `social_media_surveya_survey_question_opti_ff66c0e0_fk_social_me` FOREIGN KEY (`survey_question_option_id`) REFERENCES `social_media_surveyquestionoption` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_surveyansweroption`
--

LOCK TABLES `social_media_surveyansweroption` WRITE;
/*!40000 ALTER TABLE `social_media_surveyansweroption` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_surveyansweroption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_surveyquestion`
--

DROP TABLE IF EXISTS `social_media_surveyquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_surveyquestion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `question_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_order` int NOT NULL,
  `post_survey_id` bigint NOT NULL,
  `survey_question_type_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_media_surveyq_survey_question_type_29e9c43e_fk_social_me` (`survey_question_type_id`),
  KEY `social_media_surveyq_post_survey_id_b5e1b2c4_fk_social_me` (`post_survey_id`),
  CONSTRAINT `social_media_surveyq_post_survey_id_b5e1b2c4_fk_social_me` FOREIGN KEY (`post_survey_id`) REFERENCES `social_media_postsurvey` (`id`),
  CONSTRAINT `social_media_surveyq_survey_question_type_29e9c43e_fk_social_me` FOREIGN KEY (`survey_question_type_id`) REFERENCES `social_media_surveyquestiontype` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_surveyquestion`
--

LOCK TABLES `social_media_surveyquestion` WRITE;
/*!40000 ALTER TABLE `social_media_surveyquestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_surveyquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_surveyquestionoption`
--

DROP TABLE IF EXISTS `social_media_surveyquestionoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_surveyquestionoption` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `question_option_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_option_order` int NOT NULL,
  `survey_question_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_media_surveyq_survey_question_id_da5c9957_fk_social_me` (`survey_question_id`),
  CONSTRAINT `social_media_surveyq_survey_question_id_da5c9957_fk_social_me` FOREIGN KEY (`survey_question_id`) REFERENCES `social_media_surveyquestion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_surveyquestionoption`
--

LOCK TABLES `social_media_surveyquestionoption` WRITE;
/*!40000 ALTER TABLE `social_media_surveyquestionoption` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_surveyquestionoption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_surveyquestiontype`
--

DROP TABLE IF EXISTS `social_media_surveyquestiontype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_surveyquestiontype` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `question_type_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_surveyquestiontype`
--

LOCK TABLES `social_media_surveyquestiontype` WRITE;
/*!40000 ALTER TABLE `social_media_surveyquestiontype` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_surveyquestiontype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_surveyresponse`
--

DROP TABLE IF EXISTS `social_media_surveyresponse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_surveyresponse` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `post_survey_id` bigint NOT NULL,
  `account_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_media_surveyr_post_survey_id_4c3aec1c_fk_social_me` (`post_survey_id`),
  KEY `social_media_surveyr_account_id_0098cd24_fk_social_me` (`account_id`),
  CONSTRAINT `social_media_surveyr_account_id_0098cd24_fk_social_me` FOREIGN KEY (`account_id`) REFERENCES `social_media_account` (`id`),
  CONSTRAINT `social_media_surveyr_post_survey_id_4c3aec1c_fk_social_me` FOREIGN KEY (`post_survey_id`) REFERENCES `social_media_postsurvey` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_surveyresponse`
--

LOCK TABLES `social_media_surveyresponse` WRITE;
/*!40000 ALTER TABLE `social_media_surveyresponse` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_surveyresponse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_user`
--

DROP TABLE IF EXISTS `social_media_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `confirm_status_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `social_media_user_confirm_status_id_2faf8343_fk_social_me` (`confirm_status_id`),
  CONSTRAINT `social_media_user_confirm_status_id_2faf8343_fk_social_me` FOREIGN KEY (`confirm_status_id`) REFERENCES `social_media_confirmstatus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_user`
--

LOCK TABLES `social_media_user` WRITE;
/*!40000 ALTER TABLE `social_media_user` DISABLE KEYS */;
INSERT INTO `social_media_user` VALUES (1,'pbkdf2_sha256$600000$2wYAvGMI58wUR4jfbF9Hs5$jxG3DTdYTZemo5oKYIgzmVSW91FdhbxowqxVuEZo5X8=','2023-12-01 18:05:08.544657',1,'admin','','','tuantran@gmail.com',1,1,'2023-12-01 18:04:49.275061',NULL);
/*!40000 ALTER TABLE `social_media_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_user_groups`
--

DROP TABLE IF EXISTS `social_media_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_media_user_groups_user_id_group_id_38ce0124_uniq` (`user_id`,`group_id`),
  KEY `social_media_user_groups_group_id_90fc3bd1_fk_auth_group_id` (`group_id`),
  CONSTRAINT `social_media_user_gr_user_id_e05fbb9c_fk_social_me` FOREIGN KEY (`user_id`) REFERENCES `social_media_user` (`id`),
  CONSTRAINT `social_media_user_groups_group_id_90fc3bd1_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_user_groups`
--

LOCK TABLES `social_media_user_groups` WRITE;
/*!40000 ALTER TABLE `social_media_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_user_user_permissions`
--

DROP TABLE IF EXISTS `social_media_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_media_user_user_p_user_id_permission_id_272c2dba_uniq` (`user_id`,`permission_id`),
  KEY `social_media_user_us_permission_id_35577a9c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `social_media_user_us_permission_id_35577a9c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `social_media_user_us_user_id_cb9d5f23_fk_social_me` FOREIGN KEY (`user_id`) REFERENCES `social_media_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_user_user_permissions`
--

LOCK TABLES `social_media_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `social_media_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-02  1:07:52
