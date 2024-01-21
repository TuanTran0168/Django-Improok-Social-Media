CREATE DATABASE  IF NOT EXISTS `improok-social-media` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `improok-social-media`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: improok-social-media
-- ------------------------------------------------------
-- Server version	8.0.17

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add invitation group',7,'add_invitationgroup'),(26,'Can change invitation group',7,'change_invitationgroup'),(27,'Can delete invitation group',7,'delete_invitationgroup'),(28,'Can view invitation group',7,'view_invitationgroup'),(29,'Can add post',8,'add_post'),(30,'Can change post',8,'change_post'),(31,'Can delete post',8,'delete_post'),(32,'Can view post',8,'view_post'),(33,'Can add post survey',9,'add_postsurvey'),(34,'Can change post survey',9,'change_postsurvey'),(35,'Can delete post survey',9,'delete_postsurvey'),(36,'Can view post survey',9,'view_postsurvey'),(37,'Can add reaction',10,'add_reaction'),(38,'Can change reaction',10,'change_reaction'),(39,'Can delete reaction',10,'delete_reaction'),(40,'Can view reaction',10,'view_reaction'),(41,'Can add role',11,'add_role'),(42,'Can change role',11,'change_role'),(43,'Can delete role',11,'delete_role'),(44,'Can view role',11,'view_role'),(45,'Can add survey answer',12,'add_surveyanswer'),(46,'Can change survey answer',12,'change_surveyanswer'),(47,'Can delete survey answer',12,'delete_surveyanswer'),(48,'Can view survey answer',12,'view_surveyanswer'),(49,'Can add survey question',13,'add_surveyquestion'),(50,'Can change survey question',13,'change_surveyquestion'),(51,'Can delete survey question',13,'delete_surveyquestion'),(52,'Can view survey question',13,'view_surveyquestion'),(53,'Can add survey question type',14,'add_surveyquestiontype'),(54,'Can change survey question type',14,'change_surveyquestiontype'),(55,'Can delete survey question type',14,'delete_surveyquestiontype'),(56,'Can view survey question type',14,'view_surveyquestiontype'),(57,'Can add survey response',15,'add_surveyresponse'),(58,'Can change survey response',15,'change_surveyresponse'),(59,'Can delete survey response',15,'delete_surveyresponse'),(60,'Can view survey response',15,'view_surveyresponse'),(61,'Can add survey question option',16,'add_surveyquestionoption'),(62,'Can change survey question option',16,'change_surveyquestionoption'),(63,'Can delete survey question option',16,'delete_surveyquestionoption'),(64,'Can view survey question option',16,'view_surveyquestionoption'),(65,'Can add post reaction',17,'add_postreaction'),(66,'Can change post reaction',17,'change_postreaction'),(67,'Can delete post reaction',17,'delete_postreaction'),(68,'Can view post reaction',17,'view_postreaction'),(69,'Can add post invitation',18,'add_postinvitation'),(70,'Can change post invitation',18,'change_postinvitation'),(71,'Can delete post invitation',18,'delete_postinvitation'),(72,'Can view post invitation',18,'view_postinvitation'),(73,'Can add post image',19,'add_postimage'),(74,'Can change post image',19,'change_postimage'),(75,'Can delete post image',19,'delete_postimage'),(76,'Can view post image',19,'view_postimage'),(77,'Can add comment',20,'add_comment'),(78,'Can change comment',20,'change_comment'),(79,'Can delete comment',20,'delete_comment'),(80,'Can view comment',20,'view_comment'),(81,'Can add account',21,'add_account'),(82,'Can change account',21,'change_account'),(83,'Can delete account',21,'delete_account'),(84,'Can view account',21,'view_account'),(85,'Can add alumni account',22,'add_alumniaccount'),(86,'Can change alumni account',22,'change_alumniaccount'),(87,'Can delete alumni account',22,'delete_alumniaccount'),(88,'Can view alumni account',22,'view_alumniaccount'),(89,'Can add confirm status',23,'add_confirmstatus'),(90,'Can change confirm status',23,'change_confirmstatus'),(91,'Can delete confirm status',23,'delete_confirmstatus'),(92,'Can view confirm status',23,'view_confirmstatus'),(93,'Can add application',24,'add_application'),(94,'Can change application',24,'change_application'),(95,'Can delete application',24,'delete_application'),(96,'Can view application',24,'view_application'),(97,'Can add access token',25,'add_accesstoken'),(98,'Can change access token',25,'change_accesstoken'),(99,'Can delete access token',25,'delete_accesstoken'),(100,'Can view access token',25,'view_accesstoken'),(101,'Can add grant',26,'add_grant'),(102,'Can change grant',26,'change_grant'),(103,'Can delete grant',26,'delete_grant'),(104,'Can view grant',26,'view_grant'),(105,'Can add refresh token',27,'add_refreshtoken'),(106,'Can change refresh token',27,'change_refreshtoken'),(107,'Can delete refresh token',27,'delete_refreshtoken'),(108,'Can view refresh token',27,'view_refreshtoken'),(109,'Can add id token',28,'add_idtoken'),(110,'Can change id token',28,'change_idtoken'),(111,'Can delete id token',28,'delete_idtoken'),(112,'Can view id token',28,'view_idtoken'),(113,'Can add task result',29,'add_taskresult'),(114,'Can change task result',29,'change_taskresult'),(115,'Can delete task result',29,'delete_taskresult'),(116,'Can view task result',29,'view_taskresult'),(117,'Can add chord counter',30,'add_chordcounter'),(118,'Can change chord counter',30,'change_chordcounter'),(119,'Can delete chord counter',30,'delete_chordcounter'),(120,'Can view chord counter',30,'view_chordcounter'),(121,'Can add group result',31,'add_groupresult'),(122,'Can change group result',31,'change_groupresult'),(123,'Can delete group result',31,'delete_groupresult'),(124,'Can view group result',31,'view_groupresult'),(125,'Can add crontab',32,'add_crontabschedule'),(126,'Can change crontab',32,'change_crontabschedule'),(127,'Can delete crontab',32,'delete_crontabschedule'),(128,'Can view crontab',32,'view_crontabschedule'),(129,'Can add interval',33,'add_intervalschedule'),(130,'Can change interval',33,'change_intervalschedule'),(131,'Can delete interval',33,'delete_intervalschedule'),(132,'Can view interval',33,'view_intervalschedule'),(133,'Can add periodic task',34,'add_periodictask'),(134,'Can change periodic task',34,'change_periodictask'),(135,'Can delete periodic task',34,'delete_periodictask'),(136,'Can view periodic task',34,'view_periodictask'),(137,'Can add periodic tasks',35,'add_periodictasks'),(138,'Can change periodic tasks',35,'change_periodictasks'),(139,'Can delete periodic tasks',35,'delete_periodictasks'),(140,'Can view periodic tasks',35,'view_periodictasks'),(141,'Can add solar event',36,'add_solarschedule'),(142,'Can change solar event',36,'change_solarschedule'),(143,'Can delete solar event',36,'delete_solarschedule'),(144,'Can view solar event',36,'view_solarschedule'),(145,'Can add clocked',37,'add_clockedschedule'),(146,'Can change clocked',37,'change_clockedschedule'),(147,'Can delete clocked',37,'delete_clockedschedule'),(148,'Can view clocked',37,'view_clockedschedule'),(149,'Can add message',38,'add_message'),(150,'Can change message',38,'change_message'),(151,'Can delete message',38,'delete_message'),(152,'Can view message',38,'view_message'),(153,'Can add room',39,'add_room'),(154,'Can change room',39,'change_room'),(155,'Can delete room',39,'delete_room'),(156,'Can view room',39,'view_room'),(157,'Can add association',40,'add_association'),(158,'Can change association',40,'change_association'),(159,'Can delete association',40,'delete_association'),(160,'Can view association',40,'view_association'),(161,'Can add code',41,'add_code'),(162,'Can change code',41,'change_code'),(163,'Can delete code',41,'delete_code'),(164,'Can view code',41,'view_code'),(165,'Can add nonce',42,'add_nonce'),(166,'Can change nonce',42,'change_nonce'),(167,'Can delete nonce',42,'delete_nonce'),(168,'Can view nonce',42,'view_nonce'),(169,'Can add user social auth',43,'add_usersocialauth'),(170,'Can change user social auth',43,'change_usersocialauth'),(171,'Can delete user social auth',43,'delete_usersocialauth'),(172,'Can view user social auth',43,'view_usersocialauth'),(173,'Can add partial',44,'add_partial'),(174,'Can change partial',44,'change_partial'),(175,'Can delete partial',44,'delete_partial'),(176,'Can view partial',44,'view_partial');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
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
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_social_media_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_social_media_user_id` FOREIGN KEY (`user_id`) REFERENCES `social_media_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-12-05 01:54:11.303447','1','Group A',1,'[{\"added\": {}}]',7,1),(2,'2023-12-05 01:54:17.475192','2','Group B',1,'[{\"added\": {}}]',7,1),(3,'2023-12-05 01:55:43.155542','3','group C',1,'[{\"added\": {}}]',7,1),(4,'2023-12-05 01:57:49.742585','1','Group A',2,'[{\"added\": {\"name\": \"account-invitationgroup relationship\", \"object\": \"Account_group_account object (1)\"}}]',7,1),(5,'2023-12-05 01:58:13.538724','1','Group A',2,'[{\"added\": {\"name\": \"account-invitationgroup relationship\", \"object\": \"Account_group_account object (2)\"}}]',7,1),(6,'2023-12-05 02:04:14.144737','9','<p>POST INVITATION + 3 Post Image</p>',1,'[{\"added\": {}}, {\"added\": {\"name\": \"post image\", \"object\": \"images/post_images/2023/12/FURINA.png\"}}, {\"added\": {\"name\": \"post image\", \"object\": \"images/post_images/2023/12/Screenshot_2023-11-09_011731_qYfvcnH.png\"}}, {\"added\": {\"name\": \"post image\", \"object\": \"images/post_images/2023/12/Screenshot_2023-12-02_163517_859smi0.png\"}}, {\"added\": {\"name\": \"post invitation\", \"object\": \"Invitation event\"}}]',8,1),(7,'2023-12-05 02:05:23.581520','1','Invitation event',2,'[{\"added\": {\"name\": \"account-postinvitation relationship\", \"object\": \"Account_invitation_account object (1)\"}}, {\"added\": {\"name\": \"account-postinvitation relationship\", \"object\": \"Account_invitation_account object (2)\"}}]',18,1),(8,'2023-12-05 02:05:39.446511','1','Invitation first event',2,'[{\"changed\": {\"fields\": [\"Event name\"]}}]',18,1),(9,'2023-12-05 02:11:00.066470','5','Not input text type (Tại sao bạn được GPA như zậy? (multi choice) - tuan1 - Khảo sát GPA) ',2,'[{\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answer_option object (1)\"}}]',12,1),(10,'2023-12-05 02:11:21.730067','4','Not input text type (GPA của bạn là bao nhiêu ( checkbox question )? - tuan1 - Khảo sát GPA) ',2,'[{\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answer_option object (2)\"}}, {\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answer_option object (3)\"}}]',12,1),(11,'2023-12-05 02:17:28.700884','3','Ôi bài Post Invitation này hay quá',1,'[{\"added\": {}}]',20,1),(12,'2023-12-05 02:17:52.243105','3','Ôi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitati',2,'[{\"changed\": {\"fields\": [\"Comment content\"]}}]',20,1),(13,'2023-12-07 10:34:51.534818','5','tuanpassword',1,'[{\"added\": {}}]',6,1),(14,'2023-12-07 10:35:55.653614','5','099999',1,'[{\"added\": {}}]',21,1),(15,'2023-12-07 10:36:03.894407','5','099999',2,'[]',21,1),(16,'2023-12-07 10:37:31.492940','5','tuanpasswordfails',2,'[{\"changed\": {\"fields\": [\"Username\"]}}]',6,1),(17,'2023-12-07 10:50:47.866383','6','tuanpassword1',1,'[{\"added\": {}}]',6,1),(18,'2023-12-10 12:46:32.700082','6','images/post_images/2023/12/Screenshot_2023-12-02_163517_gIEG6wZ.png',1,'[{\"added\": {}}]',19,1),(19,'2023-12-12 12:47:25.935361','1','Group A',2,'[{\"changed\": {\"fields\": [\"Accounts\"]}}]',7,1),(20,'2023-12-12 12:47:48.452391','1','Group A',2,'[{\"changed\": {\"fields\": [\"Accounts\"]}}]',7,1),(21,'2023-12-12 12:48:03.456924','2','Group B',2,'[{\"changed\": {\"fields\": [\"Accounts\"]}}]',7,1),(22,'2023-12-12 12:48:08.547529','3','group C',2,'[{\"changed\": {\"fields\": [\"Accounts\"]}}]',7,1),(23,'2023-12-14 09:37:56.210258','5','Group E',2,'[{\"changed\": {\"fields\": [\"Accounts\"]}}]',7,1),(24,'2023-12-14 09:42:32.057736','5','Group E',2,'[{\"changed\": {\"fields\": [\"Accounts\"]}}]',7,1),(25,'2023-12-14 09:43:59.725772','5','Group E',2,'[{\"changed\": {\"fields\": [\"Accounts\"]}}]',7,1),(26,'2023-12-14 09:58:50.816659','5','Group E',2,'[{\"changed\": {\"fields\": [\"Accounts\"]}}]',7,1),(27,'2023-12-14 10:08:24.082377','4','group D',2,'[{\"changed\": {\"fields\": [\"Accounts\"]}}]',7,1),(28,'2023-12-17 06:02:42.252929','3','tuan3 - Khảo sát về độ tiện dụng của Swagger',1,'[{\"added\": {}}]',15,1),(29,'2023-12-17 06:03:42.531001','8','Not input text type (Xài swagger có tuyệt không? - tuan3 - Khảo sát về độ tiện dụng của Swagger) ',1,'[{\"added\": {}}, {\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answer_option object (5)\"}}]',12,1),(30,'2023-12-17 06:08:21.183394','6','Vì học PC CÔNG :)',2,'[]',16,1),(31,'2023-12-17 06:08:26.054851','5','Những lý do nào mà bạn thích swagger?',1,'[{\"added\": {}}, {\"added\": {\"name\": \"survey question option\", \"object\": \"V\\u00ec swagger \\u0111\\u1eb9p\"}}, {\"added\": {\"name\": \"survey question option\", \"object\": \"V\\u00ec swagger ti\\u1ec7n l\\u1ee3i\"}}, {\"added\": {\"name\": \"survey question option\", \"object\": \"V\\u00ec th\\u1ea7y b\\u1eaft x\\u00e0i :v\"}}]',13,1),(32,'2023-12-17 06:15:14.013610','4','Not input text type (GPA của bạn là bao nhiêu ( checkbox question )? - tuan1 - Khảo sát GPA) ',2,'[{\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answers object (1)\"}}, {\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answers object (2)\"}}, {\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answers object (3)\"}}]',12,1),(33,'2023-12-17 06:15:29.078446','5','Not input text type (Tại sao bạn được GPA như zậy? (multi choice) - tuan1 - Khảo sát GPA) ',2,'[{\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answers object (4)\"}}]',12,1),(34,'2023-12-17 06:15:49.632666','7','Not input text type (Xài swagger có tuyệt không? - tuan1 - Khảo sát về độ tiện dụng của Swagger) ',2,'[{\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answers object (5)\"}}]',12,1),(35,'2023-12-17 06:16:42.591729','4','tuanpasswordfails - Khảo sát về độ tiện dụng của Swagger',1,'[{\"added\": {}}]',15,1),(36,'2023-12-17 06:17:10.537482','9','Not input text type (Những lý do nào mà bạn thích swagger? - tuanpasswordfails - Khảo sát về độ tiện dụng của Swagger) ',1,'[{\"added\": {}}, {\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answers object (6)\"}}, {\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answers object (7)\"}}, {\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answers object (8)\"}}]',12,1),(37,'2023-12-17 06:20:33.653130','5','tuan2 - Khảo sát về độ tiện dụng của Swagger',1,'[{\"added\": {}}]',15,1),(38,'2023-12-17 07:03:43.600467','9','Group H2',1,'[{\"added\": {}}]',7,1),(39,'2023-12-17 08:15:01.805128','3','PostReaction object (3)',1,'[{\"added\": {}}]',17,1),(40,'2023-12-17 08:15:08.209818','4','PostReaction object (4)',1,'[{\"added\": {}}]',17,1),(41,'2023-12-17 08:15:14.278349','5','PostReaction object (5)',1,'[{\"added\": {}}]',17,1),(42,'2023-12-17 08:15:22.378320','6','PostReaction object (6)',1,'[{\"added\": {}}]',17,1),(43,'2023-12-17 08:15:31.012529','7','PostReaction object (7)',1,'[{\"added\": {}}]',17,1),(44,'2023-12-17 08:15:54.724093','8','PostReaction object (8)',1,'[{\"added\": {}}]',17,1),(45,'2023-12-21 10:16:24.510108','16','Bài Post để khảo sát',3,'',8,1),(46,'2023-12-21 10:17:58.673396','17','Bài Post để khảo sát',3,'',8,1),(47,'2023-12-21 10:19:15.461266','18','Bài Post để khảo sát',3,'',8,1),(48,'2023-12-21 10:39:23.699600','15','Bạn thích điều gì ở giảng viên B',2,'[{\"changed\": {\"fields\": [\"Question content\"]}}]',13,1),(49,'2023-12-21 13:17:36.806632','23','Đây là bài Post Invitation',3,'',8,1),(50,'2023-12-31 14:02:59.927820','16','Khảo sát chất lượng giảng viên D1',2,'[{\"changed\": {\"fields\": [\"Post survey title\"]}}]',9,1),(51,'2023-12-31 14:03:08.494196','17','Khảo sát chất lượng giảng viên D2',2,'[{\"changed\": {\"fields\": [\"Post survey title\"]}}]',9,1),(52,'2023-12-31 14:03:49.911928','9','Khảo sát chất lượng giảng viên D real',2,'[{\"changed\": {\"fields\": [\"Post survey title\"]}}]',9,1),(53,'2024-01-01 02:28:45.134805','41','<p>Khảo s&aacute;t năm mới</p>',1,'[{\"added\": {}}, {\"added\": {\"name\": \"post survey\", \"object\": \"Kh\\u1ea3o s\\u00e1t nh\\u1ea1c T\\u1ebft\"}}]',8,1),(54,'2024-01-01 02:30:37.610743','34','Bạn thích bài hát nào?',1,'[{\"added\": {}}, {\"added\": {\"name\": \"survey question option\", \"object\": \"T\\u1ebft \\u0111\\u1ebfn r\\u1ed3i\"}}, {\"added\": {\"name\": \"survey question option\", \"object\": \"R\\u1ed3ng bay ph\\u01b0\\u1ee3ng m\\u00faa\"}}, {\"added\": {\"name\": \"survey question option\", \"object\": \"L\\u00ec x\\u00ec n\\u00e8\"}}, {\"added\": {\"name\": \"survey question option\", \"object\": \"Mua \\u00e1o \\u0111\\u1ecf\"}}]',13,1),(55,'2024-01-01 02:31:17.654260','35','Bài muốn lì xì bao nhiêu?',1,'[{\"added\": {}}, {\"added\": {\"name\": \"survey question option\", \"object\": \"10 c\\u1ee7\"}}, {\"added\": {\"name\": \"survey question option\", \"object\": \"20 c\\u1ee7\"}}, {\"added\": {\"name\": \"survey question option\", \"object\": \"30 c\\u1ee7\"}}]',13,1),(56,'2024-01-01 02:31:45.571628','36','Cảm nghĩ của bạn khi qua năm mới?',1,'[{\"added\": {}}]',13,1),(57,'2024-01-01 02:32:02.668202','37','Bạn nghĩ gì về việc đi chùa?',1,'[{\"added\": {}}]',13,1),(58,'2024-01-01 02:32:24.820916','17','admin - Khảo sát nhạc Tết',1,'[{\"added\": {}}]',15,1),(59,'2024-01-01 02:32:35.141031','18','tuanpasswordfails - Khảo sát nhạc Tết',1,'[{\"added\": {}}]',15,1),(60,'2024-01-01 02:32:44.771177','19','username13 - Khảo sát nhạc Tết',1,'[{\"added\": {}}]',15,1),(61,'2024-01-01 02:32:54.794942','20','tuanpassword1 - Khảo sát nhạc Tết',1,'[{\"added\": {}}]',15,1),(62,'2024-01-01 02:34:52.348238','21','Not input text type (Bạn thích bài hát nào? - admin - Khảo sát nhạc Tết) ',1,'[{\"added\": {}}, {\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answers object (27)\"}}, {\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answers object (28)\"}}, {\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answers object (29)\"}}]',12,1),(63,'2024-01-01 02:37:27.401892','22','Not input text type (Bạn thích bài hát nào? - tuanpasswordfails - Khảo sát nhạc Tết) ',1,'[{\"added\": {}}, {\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answers object (30)\"}}]',12,1),(64,'2024-01-01 02:37:50.871771','23','Cũng thú vị',1,'[{\"added\": {}}]',12,1),(65,'2024-01-01 02:38:20.764935','24','Cũng vui nè',1,'[{\"added\": {}}]',12,1),(66,'2024-01-01 02:39:21.483349','25','Not input text type (Bài muốn lì xì bao nhiêu? - tuanpassword1 - Khảo sát nhạc Tết) ',1,'[{\"added\": {}}, {\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answers object (31)\"}}]',12,1),(67,'2024-01-01 02:40:38.584532','26','Not input text type (Bạn thích bài hát nào? - username13 - Khảo sát nhạc Tết) ',1,'[{\"added\": {}}, {\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answers object (32)\"}}, {\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answers object (33)\"}}]',12,1),(68,'2024-01-01 02:50:43.462878','27','Tịnh tâm',1,'[{\"added\": {}}]',12,1),(69,'2024-01-01 02:51:26.200624','21','43535 - Khảo sát nhạc Tết',1,'[{\"added\": {}}]',15,1),(70,'2024-01-01 02:51:54.780168','28','Ngộ lắm cả nhà',1,'[{\"added\": {}}]',12,1),(71,'2024-01-01 02:52:14.436936','29','Nam mô, nam mô',1,'[{\"added\": {}}]',12,1),(72,'2024-01-01 02:53:34.063176','30','Dô tri',1,'[{\"added\": {}}]',12,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_beat_clockedschedule`
--

DROP TABLE IF EXISTS `django_celery_beat_clockedschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_celery_beat_clockedschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clocked_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_beat_clockedschedule`
--

LOCK TABLES `django_celery_beat_clockedschedule` WRITE;
/*!40000 ALTER TABLE `django_celery_beat_clockedschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_celery_beat_clockedschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_beat_crontabschedule`
--

DROP TABLE IF EXISTS `django_celery_beat_crontabschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_celery_beat_crontabschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `minute` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hour` varchar(96) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_of_week` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_of_month` varchar(124) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `month_of_year` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_beat_crontabschedule`
--

LOCK TABLES `django_celery_beat_crontabschedule` WRITE;
/*!40000 ALTER TABLE `django_celery_beat_crontabschedule` DISABLE KEYS */;
INSERT INTO `django_celery_beat_crontabschedule` VALUES (1,'0','4','*','*','*','UTC'),(2,'*/1','*','*','*','*','UTC'),(3,'*/2','*','*','*','*','UTC'),(4,'*/3','*','*','*','*','UTC'),(5,'*/5','*','*','*','*','UTC'),(6,'0','0','*','*','*','UTC'),(7,'0','4','*','*','*','Asia/Ho_Chi_Minh'),(8,'0','0','*','*','*','Asia/Ho_Chi_Minh');
/*!40000 ALTER TABLE `django_celery_beat_crontabschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_beat_intervalschedule`
--

DROP TABLE IF EXISTS `django_celery_beat_intervalschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_celery_beat_intervalschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `every` int(11) NOT NULL,
  `period` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_beat_intervalschedule`
--

LOCK TABLES `django_celery_beat_intervalschedule` WRITE;
/*!40000 ALTER TABLE `django_celery_beat_intervalschedule` DISABLE KEYS */;
INSERT INTO `django_celery_beat_intervalschedule` VALUES (1,5,'seconds'),(2,30,'seconds'),(3,10,'seconds'),(4,15,'seconds');
/*!40000 ALTER TABLE `django_celery_beat_intervalschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_beat_periodictask`
--

DROP TABLE IF EXISTS `django_celery_beat_periodictask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_celery_beat_periodictask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `task` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `args` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kwargs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `routing_key` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires` datetime(6) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_run_at` datetime(6) DEFAULT NULL,
  `total_run_count` int(10) unsigned NOT NULL,
  `date_changed` datetime(6) NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `crontab_id` int(11) DEFAULT NULL,
  `interval_id` int(11) DEFAULT NULL,
  `solar_id` int(11) DEFAULT NULL,
  `one_off` tinyint(1) NOT NULL,
  `start_time` datetime(6) DEFAULT NULL,
  `priority` int(10) unsigned DEFAULT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT (_utf8mb3'{}'),
  `clocked_id` int(11) DEFAULT NULL,
  `expire_seconds` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `django_celery_beat_p_crontab_id_d3cba168_fk_django_ce` (`crontab_id`),
  KEY `django_celery_beat_p_interval_id_a8ca27da_fk_django_ce` (`interval_id`),
  KEY `django_celery_beat_p_solar_id_a87ce72c_fk_django_ce` (`solar_id`),
  KEY `django_celery_beat_p_clocked_id_47a69f82_fk_django_ce` (`clocked_id`),
  CONSTRAINT `django_celery_beat_p_clocked_id_47a69f82_fk_django_ce` FOREIGN KEY (`clocked_id`) REFERENCES `django_celery_beat_clockedschedule` (`id`),
  CONSTRAINT `django_celery_beat_p_crontab_id_d3cba168_fk_django_ce` FOREIGN KEY (`crontab_id`) REFERENCES `django_celery_beat_crontabschedule` (`id`),
  CONSTRAINT `django_celery_beat_p_interval_id_a8ca27da_fk_django_ce` FOREIGN KEY (`interval_id`) REFERENCES `django_celery_beat_intervalschedule` (`id`),
  CONSTRAINT `django_celery_beat_p_solar_id_a87ce72c_fk_django_ce` FOREIGN KEY (`solar_id`) REFERENCES `django_celery_beat_solarschedule` (`id`),
  CONSTRAINT `django_celery_beat_periodictask_chk_1` CHECK ((`total_run_count` >= 0)),
  CONSTRAINT `django_celery_beat_periodictask_chk_2` CHECK ((`priority` >= 0)),
  CONSTRAINT `django_celery_beat_periodictask_chk_3` CHECK ((`expire_seconds` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_beat_periodictask`
--

LOCK TABLES `django_celery_beat_periodictask` WRITE;
/*!40000 ALTER TABLE `django_celery_beat_periodictask` DISABLE KEYS */;
INSERT INTO `django_celery_beat_periodictask` VALUES (1,'celery.backend_cleanup','celery.backend_cleanup','[]','{}',NULL,NULL,NULL,NULL,1,'2024-01-20 09:28:49.072467',3,'2024-01-20 13:38:30.687004','',7,NULL,NULL,0,NULL,NULL,'{}',NULL,43200),(8,'run-create-invitation-group','social_media.tasks.tuan_tran_create_invitation_group','[]','{}',NULL,NULL,NULL,NULL,1,'2024-01-20 13:38:30.792661',246,'2024-01-20 13:38:30.832664','',NULL,2,NULL,0,NULL,NULL,'{}',NULL,NULL),(9,'run-tuan-tran-change-password-after-1-days','social_media.tasks.tuan_tran_change_password_after_1_days','[]','{}',NULL,NULL,NULL,NULL,1,NULL,0,'2024-01-20 13:38:30.743023','',8,NULL,NULL,0,NULL,NULL,'{}',NULL,NULL),(10,'test-count-task','social_media.tasks.test_count_task','[]','{}',NULL,NULL,NULL,NULL,1,'2024-01-20 13:38:45.856006',573,'2024-01-20 13:38:55.966504','',NULL,4,NULL,0,NULL,NULL,'{}',NULL,NULL);
/*!40000 ALTER TABLE `django_celery_beat_periodictask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_beat_periodictasks`
--

DROP TABLE IF EXISTS `django_celery_beat_periodictasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_celery_beat_periodictasks` (
  `ident` smallint(6) NOT NULL,
  `last_update` datetime(6) NOT NULL,
  PRIMARY KEY (`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_beat_periodictasks`
--

LOCK TABLES `django_celery_beat_periodictasks` WRITE;
/*!40000 ALTER TABLE `django_celery_beat_periodictasks` DISABLE KEYS */;
INSERT INTO `django_celery_beat_periodictasks` VALUES (1,'2024-01-20 13:38:30.758143');
/*!40000 ALTER TABLE `django_celery_beat_periodictasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_beat_solarschedule`
--

DROP TABLE IF EXISTS `django_celery_beat_solarschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_celery_beat_solarschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` decimal(9,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq` (`event`,`latitude`,`longitude`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_beat_solarschedule`
--

LOCK TABLES `django_celery_beat_solarschedule` WRITE;
/*!40000 ALTER TABLE `django_celery_beat_solarschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_celery_beat_solarschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_results_chordcounter`
--

DROP TABLE IF EXISTS `django_celery_results_chordcounter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_celery_results_chordcounter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_tasks` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`),
  CONSTRAINT `django_celery_results_chordcounter_chk_1` CHECK ((`count` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_results_chordcounter`
--

LOCK TABLES `django_celery_results_chordcounter` WRITE;
/*!40000 ALTER TABLE `django_celery_results_chordcounter` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_celery_results_chordcounter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_results_groupresult`
--

DROP TABLE IF EXISTS `django_celery_results_groupresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_celery_results_groupresult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime(6) NOT NULL,
  `date_done` datetime(6) NOT NULL,
  `content_type` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_encoding` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`),
  KEY `django_cele_date_cr_bd6c1d_idx` (`date_created`),
  KEY `django_cele_date_do_caae0e_idx` (`date_done`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_results_groupresult`
--

LOCK TABLES `django_celery_results_groupresult` WRITE;
/*!40000 ALTER TABLE `django_celery_results_groupresult` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_celery_results_groupresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_results_taskresult`
--

DROP TABLE IF EXISTS `django_celery_results_taskresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_celery_results_taskresult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_encoding` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date_done` datetime(6) NOT NULL,
  `traceback` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `task_args` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `task_kwargs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `task_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `worker` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_created` datetime(6) NOT NULL,
  `periodic_task_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `django_cele_task_na_08aec9_idx` (`task_name`),
  KEY `django_cele_status_9b6201_idx` (`status`),
  KEY `django_cele_worker_d54dd8_idx` (`worker`),
  KEY `django_cele_date_cr_f04a50_idx` (`date_created`),
  KEY `django_cele_date_do_f59aad_idx` (`date_done`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_results_taskresult`
--

LOCK TABLES `django_celery_results_taskresult` WRITE;
/*!40000 ALTER TABLE `django_celery_results_taskresult` DISABLE KEYS */;
INSERT INTO `django_celery_results_taskresult` VALUES (1,'c7a48246-2be0-412e-8ee5-6b14a8a06a50','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:05:15.607566',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:05:15.607566',NULL),(2,'c0a77a8b-bcd2-48a8-94d9-2cc024cc4077','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:05:20.598788',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:05:20.598788',NULL),(3,'69f2f709-a53e-46e0-a3df-4e8d56fd7416','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:05:25.602395',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:05:25.602395',NULL),(4,'f8062a34-2825-4827-be58-00af2766f5a0','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:05:30.614072',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:05:30.614072',NULL),(5,'155fb63b-f7b4-471c-b158-e9f7bac2c156','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:05:35.630511',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:05:35.630511',NULL),(6,'208a0b4e-ae9c-42ea-b684-c6c8dbdd9022','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:05:45.677073',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:05:45.677073',NULL),(7,'f98a75d9-314c-4f27-a8a2-88077ec89fd3','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:05:50.674530',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:05:50.674530',NULL),(8,'d4595148-e2a4-4d6c-9552-fa4b1566c79a','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:05:55.667837',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:05:55.667837',NULL),(9,'1c6f399b-d180-4526-9041-2e9a925620fb','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:06:00.692049',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:06:00.692049',NULL),(10,'38a0be1f-63e9-4e4d-8b3d-8d3a65382df5','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:06:05.724986',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:06:05.724986',NULL),(11,'3db365c5-ecf4-4851-958e-b3101b348238','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:06:10.708764',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:06:10.708764',NULL),(12,'287cc410-8aff-43b4-8f99-cd778f27f81c','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:06:15.711395',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:06:15.711395',NULL),(13,'2e46698b-c41c-4319-bc40-35faedb1714e','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:06:20.729203',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:06:20.729203',NULL),(14,'a040fa11-4b33-42e3-b780-b7ca32f5519e','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:06:25.736921',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:06:25.736921',NULL),(15,'c3a8d0ba-5d76-447f-b3a6-075bdc14bd24','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:06:30.757599',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:06:30.757599',NULL),(16,'d5dbb522-b95e-4609-ba1b-7ab5551ab8d4','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:06:35.780309',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:06:35.780309',NULL),(17,'f8a60f6d-7773-4fbb-a037-98e2e9337231','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:06:40.852041',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:06:40.852041',NULL),(18,'b65f2801-5149-4b26-ba89-e6a36d159430','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:06:45.803607',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:06:45.803607',NULL),(19,'46178f24-871c-41a8-b0c9-c3f6347a6fae','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:06:50.851417',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:06:50.851417',NULL),(20,'75aa1097-8cf3-4112-847a-ea4fb48064cf','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:06:55.843338',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:06:55.842329',NULL),(21,'b36ddddf-0692-474c-8019-54ec56bdd67b','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:07:00.858856',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:07:00.858856',NULL),(22,'1a77c382-096b-4b1d-bec8-55f1762f2415','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:07:05.881593',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:07:05.881593',NULL),(23,'261bbd46-265d-47f4-a6b9-25ff02ab0847','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:07:10.957916',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:07:10.957916',NULL),(24,'cc864750-b036-4a02-a967-f1c724557ec2','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:07:15.880027',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:07:15.880027',NULL),(25,'c9ba4654-2496-4c92-a8aa-507edb337fcd','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:07:20.912603',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:07:20.912603',NULL),(26,'55683643-596b-4210-b0f1-cd57fb3132ea','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:07:25.901806',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:07:25.901806',NULL),(27,'ff2e1ef7-0209-41c1-883c-e90ecbe1be61','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:07:30.933640',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:07:30.933640',NULL),(28,'319efb0d-36a6-4936-8b25-d8d614e0674c','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:07:35.931896',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:07:35.931896',NULL),(29,'966d61c7-9b77-4a4d-ac29-e2c52866befb','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:07:40.940506',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:07:40.940506',NULL),(30,'2db1521c-37e8-4eb7-9c39-ba51f0f00382','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:07:45.990799',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:07:45.990799',NULL),(31,'07ccd54a-2eac-4432-87b9-c6f67653b127','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:07:50.964579',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:07:50.964579',NULL),(32,'5a4ff7c4-d98c-4dfd-bb5a-cb937a622eae','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:07:55.977247',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:07:55.977247',NULL),(33,'642a5c09-433e-4c75-8c74-148abcc808f4','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:08:00.985547',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:08:00.985547',NULL),(34,'d2c33280-446c-4cb8-99ff-2c2b0fa9fa6f','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:08:06.089413',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:08:06.089413',NULL),(35,'53335b67-78e0-4681-a2cb-2f77c382f438','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:08:11.037225',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:08:11.037225',NULL),(36,'17dec62d-bd5f-4749-ac53-d9e5bc3ef485','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:08:16.006956',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:08:16.006956',NULL),(37,'3e3a499d-e2f1-4530-8fbc-f08360573be6','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:08:21.033217',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:08:21.033217',NULL),(38,'f608501e-e500-4caa-9b41-eb4605941d1d','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:08:26.045445',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:08:26.045445',NULL),(39,'8262a341-5c18-47bb-8348-c4adcee7fdc5','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:08:31.046804',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:08:31.046804',NULL),(40,'a4dcb368-d27b-4217-8051-fdd7d5c07408','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:08:36.065004',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:08:36.065004',NULL),(41,'3641a223-6d0e-441b-99d0-fae0df55cf77','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:08:41.084796',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:08:41.084796',NULL),(42,'9c2cbaa7-e993-4474-be45-9a3cb32c887a','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:08:46.096584',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:08:46.096584',NULL),(43,'39eb1932-adb0-4cc6-bb90-4cd63654a63a','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:08:51.090884',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:08:51.090884',NULL),(44,'3da98c2f-2198-4c3f-86bc-c839af449e3f','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:08:56.096419',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:08:56.096419',NULL),(45,'57afe5eb-5c14-4561-aed5-6e0ff5153ced','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:09:01.122111',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:09:01.122111',NULL),(46,'60f91a43-5662-4711-8ecc-98d35a845cf1','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:09:06.135652',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:09:06.135652',NULL),(47,'feac248e-5a57-4861-8036-c99d85062073','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:11:51.438299',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:11:51.437294',NULL),(48,'5983bcb2-27ce-4567-8ac2-2faeef5ec8c2','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:11:56.423560',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:11:56.423560',NULL),(49,'2ece352a-492d-4266-b258-ed1904f76a65','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:12:01.443706',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:12:01.443706',NULL),(50,'8cd1559f-3c1b-4fae-8fdf-a338c681a86f','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:12:06.473616',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:12:06.473616',NULL),(51,'c4aed533-38b6-4c8c-be2d-c846674e68d3','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:12:11.478424',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:12:11.478424',NULL),(52,'02fff9be-1300-413e-8a9a-918d252885e4','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:12:16.467067',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:12:16.467067',NULL),(53,'351caca4-35ab-4e44-b1bf-8102e661c36e','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:12:21.528773',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:12:21.528773',NULL),(54,'948b9834-1703-4cfa-b1b2-3a66a53ee70f','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:12:26.506608',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:12:26.506608',NULL),(55,'21f8cbdd-7df4-41da-a82f-f49df7697d02','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:12:31.518009',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:12:31.518009',NULL),(56,'d573520f-7b74-4ff7-89bd-c1f832a2bfa7','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:12:36.539670',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:12:36.539670',NULL),(57,'29ae066e-17c8-4ec6-824c-01feec9eb90c','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:12:41.527622',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:12:41.527622',NULL),(58,'6d977916-b9bb-41b0-91e0-3b3ab5401308','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:12:46.531202',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:12:46.531202',NULL),(59,'5e517ced-f5a2-4fba-be74-e1783bac38c4','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:12:51.569068',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:12:51.569068',NULL),(60,'c4347152-ee6c-4069-814e-8435e40494f7','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:12:56.564325',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:12:56.564325',NULL),(61,'15c47bea-b67f-4936-8983-3351c715dc4f','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:13:01.566923',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:13:01.566923',NULL),(62,'4bdd1ddb-72c5-439c-a4b3-0af725126de5','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:13:06.580688',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:13:06.580688',NULL),(63,'7de1ee81-14ce-4847-b8b7-7862c1193dfe','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:13:11.599973',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:13:11.599973',NULL),(64,'bc0d3c15-6708-4faa-ae5b-8ce0e2b6af28','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:13:16.596389',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:13:16.596389',NULL),(65,'71368843-93fb-42ad-8f22-496cc76a18fb','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:13:21.597932',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:13:21.597932',NULL),(66,'7fc9daec-c30d-48ee-aa7c-087f4213b450','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:13:26.603957',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:13:26.603957',NULL),(67,'b9e41160-58be-45fe-9c56-0348c285566e','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:13:31.635002',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:13:31.635002',NULL),(68,'898e4d99-92ce-4f5d-9246-95b6263cbf29','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:13:36.652522',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:13:36.652522',NULL),(69,'5e188e6d-8ed4-4aad-a4c2-cdac4f4b3c11','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:13:41.668072',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:13:41.668072',NULL),(70,'3cd84336-5a51-493d-b1ef-ca60c4b23888','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:13:46.664904',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:13:46.664904',NULL),(71,'02a458c8-1a7b-49f9-9848-19f80788bb9d','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:13:51.688725',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:13:51.688725',NULL),(72,'0f52cecb-0968-4ddc-bbd3-036e7bac47fe','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:13:56.701689',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:13:56.701689',NULL),(73,'040a0c82-4b9e-4a46-9fee-be6f18704caa','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:14:01.702329',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:14:01.702329',NULL),(74,'ff71f165-46bd-45d4-b7db-da7afd63f099','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:14:06.711705',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:14:06.711705',NULL),(75,'25035bcc-53e9-41ad-8d26-e55346880568','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:14:11.710307',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:14:11.710307',NULL),(76,'72c00baf-95a0-453e-b03e-dbddf3b00a8b','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:14:16.741109',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:14:16.741109',NULL),(77,'75cbc099-7b77-488a-a6ca-2a34e1cf9dbc','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:14:21.749733',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:14:21.749733',NULL),(78,'a82fceda-fcdf-4d07-b4c9-42c24c584232','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:14:26.754438',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:14:26.754438',NULL),(79,'8a9b8ec7-aeb0-4058-9d84-43cfb320af5a','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:14:31.808745',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:14:31.808745',NULL),(80,'a1a9cac7-b6fa-4836-8a1a-aca4cd3a85a4','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:15:36.758024',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:15:36.758024',NULL),(81,'d539eaee-2cc2-439c-a1d4-c7ba661b6088','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:15:41.721691',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:15:41.721691',NULL),(82,'889e7050-ae9c-4b5a-ab1c-24eb20c36214','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:15:46.734139',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:15:46.734139',NULL),(83,'d1576a57-cd25-41dc-af23-88c25d524d83','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:15:51.748642',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:15:51.748642',NULL),(84,'c2de16e1-3c10-431f-9369-d2ba1cfa23b8','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:15:56.772708',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:15:56.772708',NULL),(85,'b498054a-45ea-4b06-926a-4c5e042410ae','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:16:01.781282',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:16:01.781282',NULL),(86,'741605a6-1c19-4802-bb89-e4f7e5207473','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:19:45.853761',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:19:45.853761',NULL),(87,'0a2fa179-df7b-4951-9e39-91c6793a060f','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:19:50.806314',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:19:50.806314',NULL),(88,'3b21e84a-7bee-4bba-bcb0-10d34e5ba250','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:19:55.798667',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:19:55.798667',NULL),(89,'8d0b2af8-c344-46f0-a3bd-ae0b48dbb19f','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:20:00.820358',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:20:00.820358',NULL),(90,'2d754853-6ddb-45e7-86fb-4ae66045f43e','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:22:29.514180',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:22:29.514180',NULL),(91,'2085e565-d11d-4867-a8fd-0ebfacbacfa3','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:22:34.540093',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:22:34.540093',NULL),(92,'999ed105-0c78-452b-a72b-fc26c87274f7','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:22:39.540574',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:22:39.540574',NULL),(93,'2b898967-0b02-40ed-92a4-ac6e9d214409','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:22:44.565658',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:22:44.565658',NULL),(94,'3e7f162f-1213-4bf8-90cc-3e2f6af2efc5','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:22:49.579478',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:22:49.579478',NULL),(95,'5f65fe62-73a3-4c3a-9a55-2b3d0be82e45','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:22:59.599093',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:22:59.599093',NULL),(96,'1795e758-17c4-4ea4-a618-0f085093e3a3','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:23:04.608317',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:23:04.608317',NULL),(97,'701f2c57-574e-4c58-8c52-631edb6dbf23','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:23:09.619085',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:23:09.619085',NULL),(98,'32cb64eb-79d9-41fc-8bf3-de3795018f75','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:23:14.625141',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:23:14.625141',NULL),(99,'e804e460-9c1a-4a15-af49-f4872fc55338','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:23:19.641374',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:23:19.641374',NULL),(100,'9433448a-a2b4-4dae-9d4e-d6325e20e3b5','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:23:24.668700',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:23:24.668700',NULL),(101,'f9f33ea1-ac41-4b3a-a322-a7d0d76a71a4','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:23:29.698125',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:23:29.698125',NULL),(102,'956c3086-03be-40d6-95c6-b24e1b108581','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:23:34.683720',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:23:34.683720',NULL),(103,'db6e6fe7-9d98-4ef8-8e0c-859c41bcd0df','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:23:39.706885',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:23:39.706885',NULL),(104,'24c9d68a-cb33-4b99-9793-970a26266cc8','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:23:44.749604',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:23:44.749604',NULL),(105,'6003320c-1ff8-4f1d-a9b1-d72aed6080ed','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:23:49.720944',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:23:49.720944',NULL),(106,'2547b618-1feb-4927-9e1a-7773461572fc','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:23:54.738337',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:23:54.738337',NULL),(107,'5679d407-f8bb-460f-b8b5-8d16fbe97bf4','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task()\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:27:21.988559',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:27:21.988559',NULL),(108,'ff51fa1d-46a1-4051-817c-a58a37777158','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task()\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:27:27.010847',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:27:27.010847',NULL),(109,'e44b855a-bc32-40d0-a256-0774521f33a3','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task()\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:27:31.999288',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:27:31.999288',NULL),(110,'189e3c5e-70ee-4dd5-91cd-240a5099ddca','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task()\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:27:37.014164',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:27:37.014164',NULL),(111,'73674864-3193-43e7-bd00-b252c5dc7142','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task()\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:27:42.018189',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:27:42.018189',NULL),(112,'79d7d731-a15d-4a24-91af-0612a5b50566','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task()\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:27:47.046118',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:27:47.046118',NULL),(113,'9e393b02-fbb1-4571-ab68-4df9858042cd','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task()\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:27:52.087371',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:27:52.087371',NULL),(114,'2acb1350-2652-4342-98d8-ae7db40761c5','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task()\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:27:57.027130',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:27:57.027130',NULL),(115,'8119bba4-edb7-49b9-af45-99d9523d7197','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task()\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:28:02.062943',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:28:02.062943',NULL),(116,'734093f7-da6f-4059-bdd4-07245759e039','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task()\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:28:07.046249',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:28:07.046249',NULL),(117,'759394d1-1e5b-485a-b937-c5335b3d5962','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task()\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:28:12.047791',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:28:12.047791',NULL),(118,'8f016b10-fcf7-4bf8-b1dc-3830f27f7239','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task()\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:28:17.075848',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:28:17.075848',NULL),(119,'25740cf7-d00e-42ab-a4b2-6fc29f5d1ba0','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:28:38.295313',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:28:38.295313',NULL),(120,'61382405-8ab5-47d6-8f45-6dd52cb11b7a','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:28:43.272376',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:28:43.272376',NULL),(121,'f68cbe24-31b8-46ee-ab8d-57c8f1e61faa','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:28:48.283817',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:28:48.283817',NULL),(122,'4fe373cb-28f7-44c2-8681-b05e6bc78985','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:28:53.254785',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:28:53.254785',NULL),(123,'d5f6bad9-05cb-493b-b762-cd14df153a2a','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:28:58.293939',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:28:58.293939',NULL),(124,'75955a0f-dba7-4e30-859e-f8745ab58fc3','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:29:03.298134',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:29:03.298134',NULL),(125,'80901c50-f4e6-4b29-aea7-40b08178a390','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:29:08.343180',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:29:08.343180',NULL),(126,'9f10ad57-4efe-4d47-ae23-dd58fbcd0599','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:29:51.522581',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:29:51.522581',NULL),(127,'fddd39fd-11f2-4e24-8158-cac390649a6f','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:29:56.535510',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:29:56.535510',NULL),(128,'b869909a-a1af-48b6-bdbd-a1a510496f33','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:30:01.571024',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:30:01.571024',NULL),(129,'feeb41cc-fe6f-49ec-9129-b538149b551b','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:30:06.580969',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:30:06.580969',NULL),(130,'54a078a1-8aef-444b-a997-049b34c8be39','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:30:11.578457',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:30:11.578457',NULL),(131,'4d19a244-4b09-4227-8e66-a5f4b8ade853','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:31:47.680155',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:31:47.680155',NULL),(132,'9df9920d-bedd-4664-92ca-d37e7102d2f2','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:31:52.685588',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:31:52.685588',NULL),(133,'fabb0f66-d732-4cf8-b9ad-328aa2c0ed9a','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:31:57.682278',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:31:57.682278',NULL),(134,'1d4b7ad6-3178-4f66-8457-cec49eacf3c7','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:32:07.724930',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:32:07.724930',NULL),(135,'505e2a5b-12d7-4351-b359-82a0857570d2','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:32:17.782168',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:32:17.782168',NULL),(136,'2c205fe1-89d8-42a0-8acf-6f88d9657515','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:32:27.782294',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:32:27.782294',NULL),(137,'0f051cb4-78c7-443b-8cb5-2e0270d5ba6d','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:32:37.819705',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:32:37.819705',NULL),(138,'f357f21b-3b99-4d39-9165-47e06d1e123c','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:32:42.867547',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:32:42.867547',NULL),(139,'642f0b7d-3ff5-4ac4-aadf-024a77b53de5','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:32:47.841339',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:32:47.841339',NULL),(140,'5354c79c-bafa-49ed-bbee-a8046ac95b37','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:32:52.855845',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:32:52.855845',NULL),(141,'b328bbdb-f319-430e-a4ee-87b048fa56de','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:32:57.848803',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:32:57.848803',NULL),(142,'ca22b35d-7f6c-4019-9777-27bbfd0d474c','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:33:02.870910',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:33:02.870910',NULL),(143,'b4184c50-bcaf-48a2-81a0-da7d947f643a','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:33:07.862783',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:33:07.862783',NULL),(144,'fbd11e9a-98bd-41ad-8943-03531a1d82ef','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:33:12.876111',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:33:12.876111',NULL),(145,'c36cfcb7-7d8e-49c8-981e-0763cafcdf9d','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:33:17.884311',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:33:17.884311',NULL),(146,'a276c355-25dd-411e-b026-dc68cb69bdbf','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:33:22.883451',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:33:22.883451',NULL),(147,'900d9034-393b-46bd-bbd7-8bb8fb2a7c42','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:36:47.773599',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:36:47.773599',NULL),(148,'c9592cb2-1024-426f-b27c-3b5b8bbbf21e','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:36:52.868553',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:36:52.868553',NULL),(149,'6aec28ca-0aad-4b18-b514-7d2053b31d94','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:37:17.849656',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:37:17.849656',NULL),(150,'81f91c27-eef2-4918-b573-bcc3a32e12ab','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:37:22.886145',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:37:22.885146',NULL),(151,'c450a01f-1d5d-4667-a0b9-a05ae89a4aa1','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:37:27.902934',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:37:27.902934',NULL),(152,'dc4d1ad3-4f5c-4899-8242-8e47a1133bd8','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:37:32.912342',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:37:32.912342',NULL),(153,'b68c5ffd-4572-45c4-8ed2-1ce2b51e24e3','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:37:37.914042',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:37:37.914042',NULL),(154,'34348c0d-d91c-4776-9af5-dcf60ca50bfa','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:37:42.944155',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:37:42.944155',NULL),(155,'42be4f7c-c75f-4959-b9d3-a5816154533c','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:37:47.947408',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:37:47.947408',NULL),(156,'73e2c598-b069-4e44-95db-eb6ada22ad07','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:41:05.444075',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:41:05.444075',NULL),(157,'a2cdec7f-6f8c-4ed8-b9b2-0b3b53a7910a','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.tuan_tran_create_invitation_group\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:41:05.492059',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:41:05.492059',NULL),(158,'d9c3c6f9-04c5-4588-80a1-9452302fa99c','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:41:10.401103',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:41:10.401103',NULL),(159,'c55560d9-7cd7-49fe-9f22-23fc2cd223fa','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:41:15.421296',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:41:15.421296',NULL),(160,'b530a00b-4f42-4f18-a6ad-105586ba5f44','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:41:20.443945',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:41:20.443945',NULL),(161,'d299d041-887b-4cdd-87c0-5d2ddcd63f08','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:41:25.443990',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:41:25.443990',NULL),(162,'c7c255af-035d-402f-8a72-b6c15604123c','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:41:30.446297',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:41:30.446297',NULL),(163,'728ee3a3-9fbe-4c17-8194-9f6519dc5530','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:41:35.462428',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:41:35.462428',NULL),(164,'8015a694-2917-41ee-9b16-6b1a861df629','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.tuan_tran_create_invitation_group\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:41:35.510637',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:41:35.510637',NULL),(165,'6c33d97e-f51d-4643-b703-3589558cd5cf','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:41:40.492967',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:41:40.492967',NULL),(166,'1d3b004d-b25b-4eb7-b100-21751e0a8685','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:41:45.519442',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:41:45.519442',NULL),(167,'6efecb1b-b6b7-44b1-81fe-083d1f67d505','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:41:50.537234',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:41:50.537234',NULL),(168,'e391091f-8200-432f-9c4b-1043fc446ca3','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:41:55.547233',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:41:55.547233',NULL),(169,'efb0e660-485e-46ad-85e0-225b4b13f718','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:42:00.560935',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:42:00.560935',NULL),(170,'042b4596-f9b3-4b7b-82b5-f168e0ca21b3','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.tuan_tran_create_invitation_group\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:42:05.464687',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:42:05.464687',NULL),(171,'6dd9e689-aca6-4a05-af98-d82dc7a1f232','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:42:05.527206',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:42:05.527206',NULL),(172,'595e6523-d269-4885-a70a-2076f982d9be','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:42:10.577896',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:42:10.577896',NULL),(173,'81050b6d-4112-4f0e-bd7b-b12bcff67ea5','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:42:15.604905',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:42:15.604905',NULL),(174,'30b624e9-2d84-4ba9-9345-a10a43a901a8','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:42:20.596251',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:42:20.596251',NULL),(175,'5c494c10-e827-451c-8fc0-4e6e5526b905','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:42:32.593065',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:42:32.593065',NULL),(176,'683e7972-4ec1-4354-9eca-eb26733233ee','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.tuan_tran_create_invitation_group\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:42:35.505423',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:42:35.505423',NULL),(177,'01ee0437-c036-4463-9f45-5e99b0c710ca','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:42:37.521879',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:42:37.521879',NULL),(178,'503c8c00-412f-474b-bfc5-e18847066545','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:42:42.546902',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:42:42.546902',NULL),(179,'de5aa38a-33a9-4c84-b704-1f1bb28c1403','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:42:47.545774',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:42:47.545774',NULL),(180,'c02854ef-0d2c-4c18-a7c2-e811c6c5a010','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:42:52.561339',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:42:52.561339',NULL),(181,'5c34d03e-b266-4b20-ad32-5de0eb9887fa','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:42:57.576380',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:42:57.576380',NULL),(182,'d3d9a24d-de3c-417c-8e8a-1e6e8aba834f','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:43:02.599495',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:43:02.599495',NULL),(183,'4a81831c-35b3-4bba-9366-d2d8ec1b3796','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.tuan_tran_create_invitation_group\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:43:05.517737',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:43:05.517737',NULL),(184,'b6f32128-67a4-403c-974b-1dd176221261','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:43:07.697533',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:43:07.697533',NULL),(185,'330c74c9-c711-4860-82ea-3290c894c354','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:43:12.586068',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:43:12.586068',NULL),(186,'44150c1b-3d6c-4a02-bb2a-705dcf09fed0','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:43:17.625731',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:43:17.625731',NULL),(187,'c3880827-e831-4980-b13a-fe5fc5770f31','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media_app.social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:43:22.633307',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:43:22.633307',NULL),(188,'42b2fb57-6e6a-4e93-bc95-75abfbde5a3c','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:43:59.010422',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:43:59.010422',NULL),(189,'311e7bd7-959d-4eb4-bad8-e2eafdfc7a67','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:44:03.960324',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:44:03.960324',NULL),(190,'d88c9363-7719-456d-b235-11bcd80ca19b','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:44:08.979254',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:44:08.979254',NULL),(191,'ecbcb7f6-1bbb-4055-9941-4eca7e133a46','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:50:34.509559',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:50:34.509559',NULL),(192,'60b317df-465e-4752-8c11-bd70489b0cfe','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:50:39.461401',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:50:39.461401',NULL),(193,'24acf2f2-65e8-4976-9aa9-45642844f69a','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 10:50:44.485445',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 10:50:44.485445',NULL),(201,'e3728bf1-ac9f-43fb-b548-19194b94ebaa','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.taskss.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 11:37:10.695981',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 11:37:10.695981',NULL),(202,'1b1329cc-48d2-4783-b9b5-516bf3198d03','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.taskss.test_count_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 11:37:10.758483',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 11:37:10.758483',NULL),(203,'61c1918e-794e-4b62-80d2-8a382bf1800d','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.another_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 12:17:00.289417',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 11:44:36.749526',NULL),(204,'13ee017d-2e60-4fdf-8bdd-88b23c13bcaa','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.another_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 12:17:00.305040',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 11:44:37.017649',NULL),(205,'60f33f67-0aa2-4b75-b820-2398f8900d12','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.another_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 12:17:03.316478',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 11:44:37.173083',NULL),(206,'7990db30-c485-4319-821d-6927660c61d5','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.another_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 12:17:07.351746',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 11:44:37.726714',NULL),(207,'42380df4-eda0-4ad3-a609-93a7fcf63232','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.another_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 12:17:07.367373',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 11:44:37.961247',NULL),(208,'4a2f252e-08cc-47a4-a881-1026d4afca8a','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.another_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 12:17:10.565422',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 11:44:38.300509',NULL),(209,'208d5408-6112-49d4-91f0-02143472bd3c','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.another_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 12:17:13.768087',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 11:44:38.402452',NULL),(210,'f70fc649-0e36-4b71-bf26-71f7d79833df','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.another_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 12:17:16.985391',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 11:44:38.693384',NULL),(211,'61899cb3-7672-4959-bba1-814b1f8cf5c9','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.another_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 12:19:25.161581',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 11:44:39.243131',NULL),(212,'87e71f91-e629-4eae-92a2-ef191d210bd3','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.another_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 12:19:26.023846',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 11:44:39.460450',NULL),(213,'127e7632-ffbc-432c-bb7d-c736bccaab45','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.another_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 11:44:39.680989',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 11:44:39.680989',NULL),(214,'03b41ca0-7f29-45e8-91dc-7fb9a920f012','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.another_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 11:44:40.504961',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 11:44:40.504961',NULL),(215,'7c836460-dc5e-48f0-b921-d1b3e5c410eb','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.another_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 11:44:40.984872',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 11:44:40.984872',NULL),(216,'e903605c-9109-4244-b5ba-8c86a63ebe41','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.another_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 11:44:41.282961',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 11:44:41.282961',NULL),(217,'3f6db681-94f3-47be-a7c6-4dd4b903ccfa','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.another_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 11:44:41.974963',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 11:44:41.974963',NULL),(218,'2be3f829-6288-4390-abfb-0252bd03cb5c','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.another_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 11:44:42.779177',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 11:44:42.779177',NULL),(219,'1a998c96-7d17-4a90-aba8-fd1fec51138b','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.another_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 11:44:43.815220',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 11:44:43.815220',NULL),(220,'c42e887c-1723-4f85-878a-bbc52c4400fc','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.another_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 12:17:04.132004',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 12:17:04.132004',NULL),(221,'bbc0c46f-2004-4d5b-bfa4-2ec4d3fc1281','FAILURE','application/json','utf-8','{\"exc_type\": \"NotRegistered\", \"exc_message\": [\"social_media.tasks.another_task\"], \"exc_module\": \"celery.exceptions\"}','2024-01-20 12:17:19.386918',NULL,'{\"children\": []}',NULL,NULL,NULL,NULL,'2024-01-20 12:17:19.386918',NULL),(222,'ade4cf71-e211-40da-95de-89efc5d73915','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:04:51.250276',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:04:51.250276',NULL),(223,'e83d877f-8720-408f-ba67-c98d0bcfb68d','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:09:16.213803',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:09:16.213803',NULL),(224,'9fe79168-eb57-4cda-8b7d-f200b334017e','SUCCESS','application/json','utf-8','null','2024-01-20 13:09:16.245611',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.tuan_tran_create_invitation_group','celery@DESKTOP-V5HDK02','2024-01-20 13:09:16.245611',NULL),(225,'0ec7591c-3a4c-4335-b704-db26670568b8','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:11:06.202852',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:11:06.202852',NULL),(226,'a295db29-4d13-475c-899c-1966599803c5','SUCCESS','application/json','utf-8','null','2024-01-20 13:11:06.217359',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.tuan_tran_create_invitation_group','celery@DESKTOP-V5HDK02','2024-01-20 13:11:06.217359',NULL),(227,'178b8b92-b1aa-4a7c-aa5d-f6f3408cceb8','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:12:21.352313',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:12:21.352313',NULL),(228,'d4dde37e-b9f1-4c7e-981e-293d7c420b19','SUCCESS','application/json','utf-8','null','2024-01-20 13:12:21.367973',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.tuan_tran_create_invitation_group','celery@DESKTOP-V5HDK02','2024-01-20 13:12:21.367973',NULL),(229,'4c93ca00-f565-473a-a6f6-1f5af810b44f','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:12:36.343757',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:12:36.343757',NULL),(230,'286c70dd-9ec3-459b-a7ba-54bb686b9cda','SUCCESS','application/json','utf-8','null','2024-01-20 13:12:36.359417',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.tuan_tran_create_invitation_group','celery@DESKTOP-V5HDK02','2024-01-20 13:12:36.359417',NULL),(231,'baa83ffa-31f0-49a7-b1fc-4ec3c0e6c736','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:15:20.726731',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:15:20.726731',NULL),(232,'3fc69ba5-da43-4de0-aed7-40b08968fbac','SUCCESS','application/json','utf-8','null','2024-01-20 13:15:20.773772',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.tuan_tran_create_invitation_group','celery@DESKTOP-V5HDK02','2024-01-20 13:15:20.773772',NULL),(233,'c6509d53-41ee-431d-8e23-4d81d079c04d','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:16:35.262707',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:16:35.262707',NULL),(234,'30ca0016-97e5-4e6a-96a4-313ad36fbaea','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:17:30.268101',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:17:30.268101',NULL),(235,'2ef676c4-75ae-40d8-8197-3f40572ae2ca','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:18:54.797775',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:18:54.797775',NULL),(236,'6019176b-e821-463c-82d9-c42180a510c7','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:19:09.402343',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:19:09.402343',NULL),(237,'207d623f-7d8d-4a34-9f87-f5ddef818225','SUCCESS','application/json','utf-8','null','2024-01-20 13:19:09.409384',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.tuan_tran_create_invitation_group','celery@DESKTOP-V5HDK02','2024-01-20 13:19:09.409384',NULL),(238,'95bb51d4-f094-4211-8c65-97c4ca01bd73','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:19:30.841737',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:19:30.841737',NULL),(239,'658e9bfd-5026-466b-b363-f50f33a8f3bc','SUCCESS','application/json','utf-8','null','2024-01-20 13:19:30.861710',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.tuan_tran_create_invitation_group','celery@DESKTOP-V5HDK02','2024-01-20 13:19:30.861710',NULL),(240,'3857c46a-bc38-4e8b-85ed-e6336ac382c0','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:20:59.760663',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:20:59.760663',NULL),(241,'5d371e22-7a0e-4cd3-9c87-56b71e0ed606','SUCCESS','application/json','utf-8','null','2024-01-20 13:20:59.811279',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.tuan_tran_create_invitation_group','celery@DESKTOP-V5HDK02','2024-01-20 13:20:59.811279',NULL),(242,'b49c1b4e-c53e-40f0-b757-94d785f416b9','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:22:51.225625',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:22:51.225625',NULL),(243,'3eabb98a-5225-417f-bc7d-8b0e101b5d2b','SUCCESS','application/json','utf-8','\"Task (tuan_tran_create_invitation_group) \\u0111\\u00e3 ho\\u00e0n th\\u00e0nh th\\u00e0nh c\\u00f4ng!\"','2024-01-20 13:22:51.279843',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.tuan_tran_create_invitation_group','celery@DESKTOP-V5HDK02','2024-01-20 13:22:51.279843',NULL),(244,'339eba38-285a-440f-8b04-43f5041288ea','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:24:54.210254',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:24:54.210254',NULL),(245,'d4a550e5-0caa-47d8-a8dd-63b991cf262f','SUCCESS','application/json','utf-8','\"Task (tuan_tran_create_invitation_group) Completed!\"','2024-01-20 13:24:54.248932',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.tuan_tran_create_invitation_group','celery@DESKTOP-V5HDK02','2024-01-20 13:24:54.248932',NULL),(246,'cfd3d833-ab97-40ef-92f6-44e2e31810fe','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:33:22.920930',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:33:22.920930','test-count-task'),(247,'e61a7acd-b8b1-4040-9704-23f3a75c2fe1','SUCCESS','application/json','utf-8','\"Task (tuan_tran_create_invitation_group) Completed!\"','2024-01-20 13:33:22.939929',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.tuan_tran_create_invitation_group','celery@DESKTOP-V5HDK02','2024-01-20 13:33:22.939929','run-create-invitation-group'),(248,'4bd0cbc9-bdd5-4298-95f1-d6f450d4cd34','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:33:33.955942',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:33:33.955942','test-count-task'),(249,'1e224c22-1c0b-4353-871b-a1aad167871e','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:33:44.989311',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:33:44.989311','test-count-task'),(250,'faf82e74-ec4a-40c4-ab57-23957d274a1c','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:33:56.017395',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:33:56.017395','test-count-task'),(251,'91f4cc1c-3c13-4f3f-8fa6-cf142af759c5','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:34:07.053179',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:34:07.053179','test-count-task'),(252,'c9e39688-d6b4-4398-b155-0c1d4b9a148c','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:34:18.102737',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:34:18.102737','test-count-task'),(253,'88420728-12c2-412a-adc4-40eee9f4493b','SUCCESS','application/json','utf-8','\"Task (tuan_tran_create_invitation_group) Completed!\"','2024-01-20 13:34:18.134721',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.tuan_tran_create_invitation_group','celery@DESKTOP-V5HDK02','2024-01-20 13:34:18.134721','run-create-invitation-group'),(254,'af36da2c-4e97-40d9-98e2-36072d81f50a','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:34:29.194642',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:34:29.194642','test-count-task'),(255,'d93472f3-8636-48fe-b2cc-17284d81ba2e','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:34:40.226981',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:34:40.226981','test-count-task'),(256,'20660aec-414d-40e1-a1c2-31bd93b66cd3','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:34:51.501724',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:34:51.501724','test-count-task'),(257,'9d9a6ffa-4566-4c5b-9ab4-303c81c8f853','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:35:02.523159',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:35:02.523159','test-count-task'),(258,'cd797719-3608-431c-b6a3-0d1ad93d6839','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:35:13.565865',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:35:13.565865','test-count-task'),(259,'ea9fea05-06c6-48cf-a7be-80156a4e4037','SUCCESS','application/json','utf-8','\"Task (tuan_tran_create_invitation_group) Completed!\"','2024-01-20 13:35:32.027644',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.tuan_tran_create_invitation_group','celery@DESKTOP-V5HDK02','2024-01-20 13:35:32.027644','run-create-invitation-group'),(260,'d1c35d1f-36a0-49ab-aea3-2f508f643c13','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:35:43.043063',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:35:43.043063','test-count-task'),(261,'7e2ab37c-f1e4-4b0b-a228-d8733219cff3','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:35:58.073084',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:35:58.073084','test-count-task'),(262,'25ad80ea-495d-4c71-ae21-c98c848cec68','SUCCESS','application/json','utf-8','\"Task (tuan_tran_create_invitation_group) Completed!\"','2024-01-20 13:36:02.033735',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.tuan_tran_create_invitation_group','celery@DESKTOP-V5HDK02','2024-01-20 13:36:02.033735','run-create-invitation-group'),(263,'cc4a2ce2-83b9-4255-859e-2a58c6eae887','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:36:13.065189',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:36:13.065189','test-count-task'),(264,'38204636-8576-49c8-aeeb-15cf3ba26793','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:38:37.452586',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:36:28.062991','test-count-task'),(265,'1f52e531-1169-4668-ad3e-4292d5b0b953','SUCCESS','application/json','utf-8','\"Task (tuan_tran_create_invitation_group) Completed!\"','2024-01-20 13:38:37.475743',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.tuan_tran_create_invitation_group','celery@DESKTOP-V5HDK02','2024-01-20 13:38:37.475743','run-create-invitation-group'),(266,'5fc89c33-bb60-4a6c-b1a6-b37391d8469c','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:38:48.511908',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:38:48.511908','test-count-task'),(267,'7461cad3-d42a-49d1-9baa-43ae45fd0dce','SUCCESS','application/json','utf-8','\"Task complete\"','2024-01-20 13:38:59.562553',NULL,'{\"children\": []}','\"()\"','\"{}\"','social_media.tasks.test_count_task','celery@DESKTOP-V5HDK02','2024-01-20 13:38:59.562553','test-count-task');
/*!40000 ALTER TABLE `django_celery_results_taskresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(37,'django_celery_beat','clockedschedule'),(32,'django_celery_beat','crontabschedule'),(33,'django_celery_beat','intervalschedule'),(34,'django_celery_beat','periodictask'),(35,'django_celery_beat','periodictasks'),(36,'django_celery_beat','solarschedule'),(30,'django_celery_results','chordcounter'),(31,'django_celery_results','groupresult'),(29,'django_celery_results','taskresult'),(25,'oauth2_provider','accesstoken'),(24,'oauth2_provider','application'),(26,'oauth2_provider','grant'),(28,'oauth2_provider','idtoken'),(27,'oauth2_provider','refreshtoken'),(5,'sessions','session'),(40,'social_django','association'),(41,'social_django','code'),(42,'social_django','nonce'),(44,'social_django','partial'),(43,'social_django','usersocialauth'),(21,'social_media','account'),(22,'social_media','alumniaccount'),(20,'social_media','comment'),(23,'social_media','confirmstatus'),(7,'social_media','invitationgroup'),(38,'social_media','message'),(8,'social_media','post'),(19,'social_media','postimage'),(18,'social_media','postinvitation'),(17,'social_media','postreaction'),(9,'social_media','postsurvey'),(10,'social_media','reaction'),(11,'social_media','role'),(39,'social_media','room'),(12,'social_media','surveyanswer'),(13,'social_media','surveyquestion'),(16,'social_media','surveyquestionoption'),(14,'social_media','surveyquestiontype'),(15,'social_media','surveyresponse'),(6,'social_media','user');
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
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-12-03 13:30:54.317629'),(2,'contenttypes','0002_remove_content_type_name','2023-12-03 13:30:54.348880'),(3,'auth','0001_initial','2023-12-03 13:30:54.443078'),(4,'auth','0002_alter_permission_name_max_length','2023-12-03 13:30:54.474327'),(5,'auth','0003_alter_user_email_max_length','2023-12-03 13:30:54.474327'),(6,'auth','0004_alter_user_username_opts','2023-12-03 13:30:54.474327'),(7,'auth','0005_alter_user_last_login_null','2023-12-03 13:30:54.489999'),(8,'auth','0006_require_contenttypes_0002','2023-12-03 13:30:54.493041'),(9,'auth','0007_alter_validators_add_error_messages','2023-12-03 13:30:54.493041'),(10,'auth','0008_alter_user_username_max_length','2023-12-03 13:30:54.506050'),(11,'auth','0009_alter_user_last_name_max_length','2023-12-03 13:30:54.506050'),(12,'auth','0010_alter_group_name_max_length','2023-12-03 13:30:54.521712'),(13,'auth','0011_update_proxy_permissions','2023-12-03 13:30:54.521712'),(14,'auth','0012_alter_user_first_name_max_length','2023-12-03 13:30:54.537308'),(15,'social_media','0001_initial','2023-12-03 13:30:55.604673'),(16,'admin','0001_initial','2023-12-03 13:30:55.698831'),(17,'admin','0002_logentry_remove_auto_add','2023-12-03 13:30:55.714473'),(18,'admin','0003_logentry_add_action_flag_choices','2023-12-03 13:30:55.730093'),(19,'sessions','0001_initial','2023-12-03 13:30:55.776967'),(20,'social_media','0002_account_alumniaccount_confirmstatus_groupaccount_and_more','2023-12-03 13:30:57.392628'),(21,'social_media','0003_account_account_status','2023-12-03 13:30:57.440018'),(22,'social_media','0004_comment_comment_image_url_alter_account_avatar_and_more','2023-12-03 13:30:57.643949'),(23,'social_media','0005_alter_account_avatar_alter_account_cover_avatar_and_more','2023-12-03 13:30:57.740043'),(24,'social_media','0006_remove_postsurvey_post_survey_status_and_more','2023-12-03 13:30:57.863835'),(25,'social_media','0007_alter_surveyanswer_question_option_value','2023-12-03 13:30:57.879475'),(26,'social_media','0008_alter_surveyanswer_question_option_value','2023-12-03 13:30:57.895137'),(27,'social_media','0009_remove_invitationaccount_account_and_more','2023-12-03 13:30:58.413228'),(28,'social_media','0010_alter_account_group_account_and_more','2023-12-03 13:30:58.475775'),(29,'social_media','0011_alter_account_group_account_and_more','2023-12-03 13:30:58.538679'),(30,'social_media','0012_alter_comment_comment_content_and_more','2023-12-05 02:15:09.429543'),(31,'oauth2_provider','0001_initial','2023-12-09 11:28:31.801593'),(32,'oauth2_provider','0002_auto_20190406_1805','2023-12-09 11:28:31.858138'),(33,'oauth2_provider','0003_auto_20201211_1314','2023-12-09 11:28:31.939136'),(34,'oauth2_provider','0004_auto_20200902_2022','2023-12-09 11:28:32.222162'),(35,'oauth2_provider','0005_auto_20211222_2352','2023-12-09 11:28:32.304365'),(36,'oauth2_provider','0006_alter_application_client_secret','2023-12-09 11:28:32.337879'),(37,'oauth2_provider','0007_application_post_logout_redirect_uris','2023-12-09 11:28:32.402542'),(38,'social_media','0013_remove_account_group_account_and_more','2023-12-12 12:38:26.937512'),(39,'social_media','0014_rename_account_postinvitation_accounts','2023-12-12 12:41:24.296464'),(40,'social_media','0015_alter_invitationgroup_accounts_and_more','2023-12-14 09:40:33.062249'),(41,'social_media','0016_remove_surveyquestionoption_survey_answer_option_and_more','2023-12-17 06:11:51.959064'),(42,'social_media','0017_alter_account_deleted_date_alter_account_role_and_more','2023-12-19 12:24:53.381433'),(43,'social_media','0018_alter_account_deleted_date_and_more','2023-12-21 10:39:40.716880'),(44,'social_media','0019_rename_question_option_value_surveyanswer_answer_value_and_more','2023-12-31 15:23:47.923420'),(45,'social_media','0020_alter_account_date_of_birth','2024-01-06 07:36:43.296819'),(46,'django_celery_results','0001_initial','2024-01-15 16:04:44.596478'),(47,'django_celery_results','0002_add_task_name_args_kwargs','2024-01-15 16:04:44.675584'),(48,'django_celery_results','0003_auto_20181106_1101','2024-01-15 16:04:44.685365'),(49,'django_celery_results','0004_auto_20190516_0412','2024-01-15 16:04:44.857168'),(50,'django_celery_results','0005_taskresult_worker','2024-01-15 16:04:44.913681'),(51,'django_celery_results','0006_taskresult_date_created','2024-01-15 16:04:45.048193'),(52,'django_celery_results','0007_remove_taskresult_hidden','2024-01-15 16:04:45.172185'),(53,'django_celery_results','0008_chordcounter','2024-01-15 16:04:45.247158'),(54,'django_celery_results','0009_groupresult','2024-01-15 16:04:46.025654'),(55,'django_celery_results','0010_remove_duplicate_indices','2024-01-15 16:04:46.057923'),(56,'django_celery_results','0011_taskresult_periodic_task_name','2024-01-15 16:04:46.103976'),(57,'django_celery_beat','0001_initial','2024-01-16 03:15:08.850880'),(58,'django_celery_beat','0002_auto_20161118_0346','2024-01-16 03:15:08.929076'),(59,'django_celery_beat','0003_auto_20161209_0049','2024-01-16 03:15:08.944702'),(60,'django_celery_beat','0004_auto_20170221_0000','2024-01-16 03:15:08.960328'),(61,'django_celery_beat','0005_add_solarschedule_events_choices','2024-01-16 03:15:08.968993'),(62,'django_celery_beat','0006_auto_20180322_0932','2024-01-16 03:15:09.038531'),(63,'django_celery_beat','0007_auto_20180521_0826','2024-01-16 03:15:09.085474'),(64,'django_celery_beat','0008_auto_20180914_1922','2024-01-16 03:15:09.107096'),(65,'django_celery_beat','0006_auto_20180210_1226','2024-01-16 03:15:09.117110'),(66,'django_celery_beat','0006_periodictask_priority','2024-01-16 03:15:09.196058'),(67,'django_celery_beat','0009_periodictask_headers','2024-01-16 03:15:09.259398'),(68,'django_celery_beat','0010_auto_20190429_0326','2024-01-16 03:15:09.384804'),(69,'django_celery_beat','0011_auto_20190508_0153','2024-01-16 03:15:09.463733'),(70,'django_celery_beat','0012_periodictask_expire_seconds','2024-01-16 03:15:09.542277'),(71,'django_celery_beat','0013_auto_20200609_0727','2024-01-16 03:15:09.542277'),(72,'django_celery_beat','0014_remove_clockedschedule_enabled','2024-01-16 03:15:09.557900'),(73,'django_celery_beat','0015_edit_solarschedule_events_choices','2024-01-16 03:15:09.573552'),(74,'django_celery_beat','0016_alter_crontabschedule_timezone','2024-01-16 03:15:09.589149'),(75,'django_celery_beat','0017_alter_crontabschedule_month_of_year','2024-01-16 03:15:09.589149'),(76,'django_celery_beat','0018_improve_crontab_helptext','2024-01-16 03:15:09.604776'),(77,'social_media','0021_room_message','2024-01-18 10:33:51.573828'),(78,'social_media','0022_remove_message_receiver_remove_message_sender_and_more','2024-01-18 10:38:20.184889'),(79,'social_media','0023_alter_room_options_room_first_user_room_second_user_and_more','2024-01-18 11:12:35.095010'),(80,'social_media','0024_alter_message_who_sent','2024-01-18 11:14:06.043352'),(81,'default','0001_initial','2024-01-21 15:18:47.749092'),(82,'social_auth','0001_initial','2024-01-21 15:18:47.753609'),(83,'default','0002_add_related_name','2024-01-21 15:18:47.820611'),(84,'social_auth','0002_add_related_name','2024-01-21 15:18:47.824607'),(85,'default','0003_alter_email_max_length','2024-01-21 15:18:47.841616'),(86,'social_auth','0003_alter_email_max_length','2024-01-21 15:18:47.845616'),(87,'default','0004_auto_20160423_0400','2024-01-21 15:18:47.863136'),(88,'social_auth','0004_auto_20160423_0400','2024-01-21 15:18:47.867137'),(89,'social_auth','0005_auto_20160727_2333','2024-01-21 15:18:47.889147'),(90,'social_django','0006_partial','2024-01-21 15:18:47.947531'),(91,'social_django','0007_code_timestamp','2024-01-21 15:18:47.994045'),(92,'social_django','0008_partial_timestamp','2024-01-21 15:18:48.042163'),(93,'social_django','0009_auto_20191118_0520','2024-01-21 15:18:48.128391'),(94,'social_django','0010_uid_db_index','2024-01-21 15:18:48.162446'),(95,'social_django','0011_alter_id_fields','2024-01-21 15:18:48.581939'),(96,'social_django','0012_usersocialauth_extra_data_new','2024-01-21 15:18:48.823335'),(97,'social_django','0013_migrate_extra_data','2024-01-21 15:18:48.853862'),(98,'social_django','0014_remove_usersocialauth_extra_data','2024-01-21 15:18:48.962904'),(99,'social_django','0015_rename_extra_data_new_usersocialauth_extra_data','2024-01-21 15:18:49.011981'),(100,'social_django','0005_auto_20160727_2333','2024-01-21 15:18:49.020983'),(101,'social_django','0003_alter_email_max_length','2024-01-21 15:18:49.024983'),(102,'social_django','0002_add_related_name','2024-01-21 15:18:49.029982'),(103,'social_django','0001_initial','2024-01-21 15:18:49.033981'),(104,'social_django','0004_auto_20160423_0400','2024-01-21 15:18:49.037986');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `django_session` VALUES ('8uaq6b2eev9wj58myfbzg65r0sifz80s','.eJxVjMEOwiAQRP-FsyGwBQSP3v0GsiyLVA1NSnsy_rtt0oPeJvPezFtEXJca185zHLO4CC1Ov11CenLbQX5gu0-SprbMY5K7Ig_a5W3K_Loe7t9BxV639VAyFtYuK-M9lmTAOQ96y3Q2SArYB0oBgKy1Shd0OLAKhqEYk20Qny_tJjfV:1rElqF:bnboS88BDDClLff8SmSRJ2SOYhPbfw_QTAoZ1ibVjeI','2023-12-31 07:45:39.988007'),('ao32xfmuceqwqrfqsir7xdpti0hg3bzb','.eJxVjMEOwiAQRP-FsyGwBQSP3v0GsiyLVA1NSnsy_rtt0oPeJvPezFtEXJca185zHLO4CC1Ov11CenLbQX5gu0-SprbMY5K7Ig_a5W3K_Loe7t9BxV639VAyFtYuK-M9lmTAOQ96y3Q2SArYB0oBgKy1Shd0OLAKhqEYk20Qny_tJjfV:1rJwJh:LJIjLjxND2biZSCHv_a3e_mpBmIj5R6WhvYuZNSjXaE','2024-01-14 13:57:25.329923'),('bmybxp5zgcysy5c4n54hqlg221ogglds','.eJxVjMEOwiAQRP-FsyGwBQSP3v0GsiyLVA1NSnsy_rtt0oPeJvPezFtEXJca185zHLO4CC1Ov11CenLbQX5gu0-SprbMY5K7Ig_a5W3K_Loe7t9BxV639VAyFtYuK-M9lmTAOQ96y3Q2SArYB0oBgKy1Shd0OLAKhqEYk20Qny_tJjfV:1rARpw:cz0K-I8fFuMxe6ZDQwohYjPTW07LymzcsIC-SEWwab4','2023-12-19 09:35:28.903416'),('f12gvdlj0idaek7oy172x6ta5b1b9sgt','eyJuZXh0IjoiL2hvbWUvIiwiZ29vZ2xlLW9hdXRoMl9zdGF0ZSI6IllDdUlDclRjMTdPajlWY3dRNXlsNkY4aENFYzZYMHp6In0:1rRb5N:iE5-IaUypQE9xalmIplqmBMeOGO-7F8ypqNGp7_8hO4','2024-02-04 16:54:17.109185'),('jrtdoi4r4d6y718kzv0zjr8txy7d5rhf','.eJxVjMEOwiAQRP-FsyGwBQSP3v0GsiyLVA1NSnsy_rtt0oPeJvPezFtEXJca185zHLO4CC1Ov11CenLbQX5gu0-SprbMY5K7Ig_a5W3K_Loe7t9BxV639VAyFtYuK-M9lmTAOQ96y3Q2SArYB0oBgKy1Shd0OLAKhqEYk20Qny_tJjfV:1rKgC0:X4CV6B7NaEXjCqWB1Ksg0DdKvUkpalu7GKfvHVfp4Sc','2024-01-16 14:56:32.678343'),('kdeq10ppcu4th7archf4hkmx5ecl66ld','eyJuZXh0IjoiL2hvbWUvIiwiZ29vZ2xlLW9hdXRoMl9zdGF0ZSI6Ijd2Vnd2ZFZydGNvQ2htNVNtMWlQenBTT2N1SWxubXdIIn0:1rRad2:rFcFErY_CV6CzHUsVhEL-fFXhFjYRr9YB67QA8a0uWA','2024-02-04 16:25:00.571793'),('oziorh8k5mx7jhz4iqyw3r4kzhbjksqd','.eJxVkEtrwzAQhP-Lzq0jWSsF9RZCKaUlhRxSfBJ6rB_UsUgku4WQ_145zaE-LczwzSxzIQP-JPJEVm044oo8kCaEpsfHYMbUljomkzDbpvysqul9Or5CtT3sh12zcafnafwO6i2ddusM6pnQY8Sz7nxGOCxFa9wXDrMTg-tMr104Y3FXY_HXW7zczsdmbl_yrYlthpUCK72sKTAmRe2pkkYxoMrZ2gnOuGWOcpRQCrAC11ByIbxgzFsKwtc59N5_i-5NTLoPTTf8e3CxAbn-AmqvYVM:1rRbBy:ksgO-9U-YX0zdyUiKf-BrkWd62vA6KOJG_2nGsFfJSU','2024-02-04 17:01:06.539066'),('wglq5rxburfcb174x3mk46rnxhgxyil6','.eJxVkM2qwjAQRt8lay2ZZiYSd4pwkbtwY9chv221GK6pXFR8d1t1YVcD33C-M8yd1SnVXZgnc-mbUufe9IEtma3w6qvjDfw-0uYv8e3v4ro97OC_Wadqv2EzpkdCX3I469YPiMBpaI07htO4ycm1ptMunUPxSXPx9hY_r7FbjfYp35jcDLBSaKWXkSOApOi5kkYBcuVsdCRAWHBcBIkloaWwwFIQeQLwliP5OJR-_K_qzuRed6luT18HTn7AHk_DVFwv:1rRasn:KB60czscprsKFbb4dcj-x2mz9ZjPFjyoJ4MxrzUA2NM','2024-02-04 16:41:17.364276');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_accesstoken`
--

DROP TABLE IF EXISTS `oauth2_provider_accesstoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_accesstoken` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `source_refresh_token_id` bigint(20) DEFAULT NULL,
  `id_token_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`),
  UNIQUE KEY `source_refresh_token_id` (`source_refresh_token_id`),
  UNIQUE KEY `id_token_id` (`id_token_id`),
  KEY `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_acce_user_id_6e4c9a65_fk_social_me` (`user_id`),
  CONSTRAINT `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_acce_id_token_id_85db651b_fk_oauth2_pr` FOREIGN KEY (`id_token_id`) REFERENCES `oauth2_provider_idtoken` (`id`),
  CONSTRAINT `oauth2_provider_acce_source_refresh_token_e66fbc72_fk_oauth2_pr` FOREIGN KEY (`source_refresh_token_id`) REFERENCES `oauth2_provider_refreshtoken` (`id`),
  CONSTRAINT `oauth2_provider_acce_user_id_6e4c9a65_fk_social_me` FOREIGN KEY (`user_id`) REFERENCES `social_media_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_accesstoken`
--

LOCK TABLES `oauth2_provider_accesstoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_accesstoken` VALUES (1,'mTdfbjmmZlV44XhGoDkL7TYzBZs7Ze','2023-12-09 21:40:17.888779','read write',1,1,'2023-12-09 11:40:17.889782','2023-12-09 11:40:17.889782',NULL,NULL),(2,'MFTA03sf7QDGhk4MgmQxltE5V8Qq8P','2023-12-12 18:29:50.315663','read write',1,1,'2023-12-12 08:29:50.315663','2023-12-12 08:29:50.315663',NULL,NULL),(3,'HM7suDaNLvs6ZQhfdq5B3D7smVz6PD','2023-12-14 20:31:39.568515','read write',1,1,'2023-12-14 10:31:39.569492','2023-12-14 10:31:39.569492',NULL,NULL),(4,'XmIDiznxqxUCHEbLizY775v5JLiTB4','2023-12-14 21:00:06.410048','read write',1,2,'2023-12-14 11:00:06.411121','2023-12-14 11:00:06.411121',NULL,NULL),(5,'3Bo8xNWhZqGKU7AVJhIVimORCbk1C7','2023-12-16 20:40:42.943986','read write',1,2,'2023-12-16 10:40:42.943986','2023-12-16 10:40:42.943986',NULL,NULL),(6,'foayciL9snFRQ4Tp2sng2SVkkflKFc','2023-12-17 16:57:42.943773','read write',1,2,'2023-12-17 06:57:42.943773','2023-12-17 06:57:42.943773',NULL,NULL),(7,'oBulNBppBDdEBtDgsRuogNBsaxPLAj','2023-12-17 21:40:41.132405','read write',1,2,'2023-12-17 11:40:41.132405','2023-12-17 11:40:41.133402',NULL,NULL),(8,'aY3XVcROEhPMbvVgrzfqS48cUhOs6A','2023-12-19 12:26:20.980459','read write',1,2,'2023-12-19 02:26:20.980459','2023-12-19 02:26:20.980459',NULL,NULL),(9,'TuaxIpvmyDwWHWhMv1o17oyN8deSW2','2023-12-19 14:31:02.426574','read write',1,3,'2023-12-19 04:31:02.426574','2023-12-19 04:31:02.426574',NULL,NULL),(10,'jx5GakJzOaOotcT3piytSGcqqgKakL','2023-12-19 14:32:26.037622','read write',1,1,'2023-12-19 04:32:26.037622','2023-12-19 04:32:26.037622',NULL,NULL),(11,'v5EnPVKC3JZGm4IsuABO6j8Hbgdipb','2023-12-19 19:35:58.923920','read write',1,2,'2023-12-19 09:35:58.924921','2023-12-19 09:35:58.924921',NULL,NULL),(12,'91dLCSKLHvqbxx09vHH4p6f54y5loN','2023-12-19 19:59:24.367529','read write',1,2,'2023-12-19 09:59:24.367529','2023-12-19 09:59:24.367529',NULL,NULL),(13,'FnULzUBgROc9hRgpZ2wPaZ7xK9sLOY','2023-12-19 20:02:09.476544','read write',1,2,'2023-12-19 10:02:09.476544','2023-12-19 10:02:09.476544',NULL,NULL),(14,'Qn4jUwA1irxCI6Z6Gt8h9AQs1rkTLg','2023-12-19 20:03:28.161439','read write',1,2,'2023-12-19 10:03:28.162441','2023-12-19 10:03:28.162441',NULL,NULL),(15,'6wzI6xeZVP1BrDlzBMq5TrD6QeEKgt','2023-12-19 20:14:05.308502','read write',1,2,'2023-12-19 10:14:05.309502','2023-12-19 10:14:05.309502',NULL,NULL),(16,'twIL4RXjSrthhMCTegl31PE0je9S3L','2023-12-21 20:11:40.179797','read write',1,1,'2023-12-21 10:11:40.180799','2023-12-21 10:11:40.180799',NULL,NULL),(17,'cmPhhnmgEj8t76GGoqInPM0x6emhBx','2023-12-21 21:08:25.646501','read write',1,2,'2023-12-21 11:08:25.647500','2023-12-21 11:08:25.647500',NULL,NULL),(18,'qluL1NsdtM1hM3ZtnfYjdFPdl9gQI4','2023-12-23 23:15:14.160126','read write',1,2,'2023-12-23 13:15:14.160126','2023-12-23 13:15:14.160126',NULL,NULL),(19,'JxvqNxiaj81MQnoQQeHA8K1v6qkYI1','2023-12-26 18:21:56.923684','read write',1,2,'2023-12-26 08:21:56.923684','2023-12-26 08:21:56.923684',NULL,NULL),(20,'lNSwzq16Ycsty9kcboIFiqDib4EfKo','2023-12-27 01:23:23.069311','read write',1,1,'2023-12-26 15:23:23.070363','2023-12-26 15:23:23.070363',NULL,NULL),(21,'K7vzZPscg85IVPSRkuMF9XmOatCfMW','2023-12-27 01:51:04.961888','read write',1,1,'2023-12-26 15:51:04.961888','2023-12-26 15:51:04.962451',NULL,NULL),(22,'v7OJMhKIqt7785sujd5TSV3HTZhLjA','2023-12-27 01:58:38.379519','read write',1,1,'2023-12-26 15:58:38.379519','2023-12-26 15:58:38.379519',NULL,NULL),(23,'crHEvldYJJjryAxArVvfV1fXKQgDmt','2023-12-27 02:09:46.183450','read write',1,1,'2023-12-26 16:09:46.183450','2023-12-26 16:09:46.183450',NULL,NULL),(24,'rcmFLCbILmygCzlwv6nUMcVuhLAd1O','2023-12-27 02:10:46.925077','read write',1,1,'2023-12-26 16:10:46.925077','2023-12-26 16:10:46.925077',NULL,NULL),(25,'tO71szEAsNJ8OunAUEySAA36mLSlVI','2023-12-27 02:25:52.315535','read write',1,1,'2023-12-26 16:25:52.315535','2023-12-26 16:25:52.315535',NULL,NULL),(26,'eDw1aP3bYwx9MaqNRk4iK5AaY5d53t','2023-12-27 02:28:30.591762','read write',1,1,'2023-12-26 16:28:30.592721','2023-12-26 16:28:30.592721',NULL,NULL),(27,'KTCKiBmuL49FiUdjSxBV6esMBDSGwS','2023-12-27 02:33:28.883787','read write',1,1,'2023-12-26 16:33:28.883787','2023-12-26 16:33:28.883787',NULL,NULL),(28,'80RREdnNosmXuh9iO1MyoYquf7TUvk','2023-12-27 02:59:16.478080','read write',1,1,'2023-12-26 16:59:16.479078','2023-12-26 16:59:16.479078',NULL,NULL),(29,'yc3CfshyuVoOWB0sZdobQjqLr4PDNt','2023-12-27 03:02:52.706802','read write',1,1,'2023-12-26 17:02:52.706802','2023-12-26 17:02:52.706802',NULL,NULL),(30,'XBXwFQT06CrqAZlCxOYFDYpFpZwV5Y','2023-12-27 03:04:47.114370','read write',1,1,'2023-12-26 17:04:47.114370','2023-12-26 17:04:47.114370',NULL,NULL),(31,'Sio6hFGF3OfOCRviFoSAnNofGQWEPg','2023-12-27 03:06:35.731104','read write',1,1,'2023-12-26 17:06:35.731612','2023-12-26 17:06:35.731612',NULL,NULL),(32,'lkSKufr3cTDtMiqbvKLST3uf9bQtSZ','2023-12-27 03:07:31.603059','read write',1,1,'2023-12-26 17:07:31.603059','2023-12-26 17:07:31.603059',NULL,NULL),(33,'fVsI2CHLZJYoxlJ38PLeT9728PF5Gj','2023-12-27 03:09:40.461460','read write',1,1,'2023-12-26 17:09:40.462055','2023-12-26 17:09:40.462055',NULL,NULL),(34,'IjecVhj1p3wAIWtAnVjwSxsT33hW5I','2023-12-28 01:49:56.668386','read write',1,2,'2023-12-27 15:49:56.669386','2023-12-27 15:49:56.669386',NULL,NULL),(35,'8pX0aRcaSQB3rn8eEy9P5suvS6g522','2023-12-28 02:06:19.294125','read write',1,2,'2023-12-27 16:06:19.294125','2023-12-27 16:06:19.294125',NULL,NULL),(36,'zxfKegoF9FZEjnNJk0foymt0tl09uT','2023-12-28 02:06:44.329718','read write',1,2,'2023-12-27 16:06:44.329718','2023-12-27 16:06:44.329718',NULL,NULL),(37,'FKpq7vLg9TS7tPUIdvbEdSvSIWtcbk','2023-12-28 02:07:05.393226','read write',1,2,'2023-12-27 16:07:05.393226','2023-12-27 16:07:05.393226',NULL,NULL),(38,'szCPCsfHqhGEHQOfStKErFFqsbtzBE','2023-12-28 02:08:48.714072','read write',1,2,'2023-12-27 16:08:48.714072','2023-12-27 16:08:48.714072',NULL,NULL),(39,'AMLMObmf9shK0KRTpOVoXYhSutDDpI','2023-12-28 02:09:00.867689','read write',1,2,'2023-12-27 16:09:00.867689','2023-12-27 16:09:00.867689',NULL,NULL),(40,'QgnFNmumUzEbJQOIDaeUYWmey0oIz1','2023-12-28 02:09:17.292775','read write',1,2,'2023-12-27 16:09:17.292775','2023-12-27 16:09:17.292775',NULL,NULL),(41,'zQCiKXN9WtZUL1N1e19SIhx0DP7dDg','2023-12-28 02:09:28.942322','read write',1,2,'2023-12-27 16:09:28.942322','2023-12-27 16:09:28.942322',NULL,NULL),(42,'J9DXfPQ4mHBdmeNcTsPtrqpgZiMzf5','2023-12-28 02:09:51.092780','read write',1,2,'2023-12-27 16:09:51.093780','2023-12-27 16:09:51.093780',NULL,NULL),(43,'qbiSWQaCgqKY4N41mVp1RTeNtx5Ekd','2023-12-28 02:13:19.153602','read write',1,2,'2023-12-27 16:13:19.169228','2023-12-27 16:13:19.169228',NULL,NULL),(44,'3cISffdSrqTGCdzYqQCdC51p8OWBF6','2023-12-28 02:14:13.889137','read write',1,2,'2023-12-27 16:14:13.889137','2023-12-27 16:14:13.889137',NULL,NULL),(45,'kKmSoirA5QGhHSyso7sVBeNnyFhA5Q','2023-12-28 02:14:21.367754','read write',1,3,'2023-12-27 16:14:21.383377','2023-12-27 16:14:21.383377',NULL,NULL),(46,'HcA4YVFDUNi9cffkB1FsBMZZRrOqvl','2023-12-28 21:55:23.683937','read write',1,3,'2023-12-28 11:55:23.684938','2023-12-28 11:55:23.684938',NULL,NULL),(47,'OHAMDQwamYqJxBc9iyus0lmCqmLfAR','2023-12-28 23:59:01.738501','read write',1,3,'2023-12-28 13:59:01.738501','2023-12-28 13:59:01.738501',NULL,NULL),(48,'w3G4qHFcS84ICjLhoNbvzoaeIYj7NV','2023-12-29 00:04:29.769083','read write',1,3,'2023-12-28 14:04:29.769083','2023-12-28 14:04:29.769083',NULL,NULL),(49,'QWxmbvQNxfbCUVmzJP3HQUfKwpTFec','2023-12-29 19:41:57.304305','read write',1,1,'2023-12-29 09:41:57.305308','2023-12-29 09:41:57.305308',NULL,NULL),(50,'TPjJgOXrO3WgtJWDEKeq9k6DoNXKRe','2023-12-31 04:20:37.095852','read write',1,1,'2023-12-30 18:20:37.096861','2023-12-30 18:20:37.096861',NULL,NULL),(51,'gAQOffTrYf3mf9snCsWc3uA4DMGzZP','2023-12-31 05:57:58.597152','read write',1,1,'2023-12-30 19:57:58.598153','2023-12-30 19:57:58.598153',NULL,NULL),(52,'OVee5tfNwBEAKw10yQjzdvxNRK9NJN','2023-12-31 22:59:08.761687','read write',1,1,'2023-12-31 12:59:08.761687','2023-12-31 12:59:08.761687',NULL,NULL),(53,'I1wEKACvlVkBLa7Tu9Ob3yTK3RtPbJ','2024-01-01 12:18:12.672543','read write',1,1,'2024-01-01 02:18:12.672543','2024-01-01 02:18:12.672543',NULL,NULL),(54,'LLsSfra31gaC3q6dr1g3Uu8dpOdlbw','2024-01-01 20:07:13.557598','read write',1,1,'2024-01-01 10:07:13.557598','2024-01-01 10:07:13.557598',NULL,NULL),(55,'FjO1XP9aGTxRRUVFH3jxPZMM683nDP','2024-01-01 22:32:44.272066','read write',1,1,'2024-01-01 12:32:44.272066','2024-01-01 12:32:44.272066',NULL,NULL),(56,'uw7gefdQ5Cxd2SGul6Cv7D4D4tGpPk','2024-01-02 20:00:09.163274','read write',1,1,'2024-01-02 10:00:09.163274','2024-01-02 10:00:09.163274',NULL,NULL),(57,'fUwzcjni1cEE9f5m7UdqOc17iohlyR','2024-01-03 00:13:40.415912','read write',1,1,'2024-01-02 14:13:40.415912','2024-01-02 14:13:40.415912',NULL,NULL),(58,'18fg8PMkx3qNzqMyuQpJouJcFDYrUG','2024-01-03 00:40:27.438401','read write',1,1,'2024-01-02 14:40:27.439405','2024-01-02 14:40:27.439405',NULL,NULL),(59,'zK7ZIMapWF0IItr0ND2MceCnuwHwHC','2024-01-05 00:13:51.442135','read write',1,1,'2024-01-04 14:13:51.443138','2024-01-04 14:13:51.443138',NULL,NULL),(60,'X26uK1DYgNpfBLTV5AqcCjsJecugZS','2024-01-05 00:51:37.567821','read write',1,1,'2024-01-04 14:51:37.567821','2024-01-04 14:51:37.567821',NULL,NULL),(61,'rqv6KDE5RhzTXYsf4eEyT69o6sphfR','2024-01-06 16:30:11.661337','read write',1,1,'2024-01-06 06:30:11.662909','2024-01-06 06:30:11.662909',NULL,NULL),(62,'mTxr0sNsrXa1XLXoxIR50KtLxppi8w','2024-01-06 20:58:01.716005','read write',1,1,'2024-01-06 10:58:01.716005','2024-01-06 10:58:01.716005',NULL,NULL),(63,'ZrrhtbmhQNdW9Nw8mcVhlSIAEV6k1G','2024-01-07 10:33:30.477417','read write',1,1,'2024-01-07 00:33:30.478421','2024-01-07 00:33:30.478421',NULL,NULL),(64,'Gx0hlskFKkjFZL9upb5ClbPD7w3J0z','2024-01-07 11:42:55.248736','read write',1,1,'2024-01-07 01:42:55.248736','2024-01-07 01:42:55.248736',NULL,NULL),(65,'BoTOzmVvUhAIG8WEPnfeQUR58MMxVe','2024-01-07 11:44:04.417546','read write',1,1,'2024-01-07 01:44:04.417546','2024-01-07 01:44:04.417546',NULL,NULL),(66,'H2oDMoEpOp8505yqRrJ9sT3BZqxxfx','2024-01-07 11:46:06.558159','read write',1,1,'2024-01-07 01:46:06.558159','2024-01-07 01:46:06.558159',NULL,NULL),(67,'4mDwqhNvlnDfRXkg7OD0uF7T57APFa','2024-01-07 11:48:11.399213','read write',1,1,'2024-01-07 01:48:11.399213','2024-01-07 01:48:11.399213',NULL,NULL),(68,'2u724D0LWuePNitfsIFN0p0Jgihg9V','2024-01-07 11:48:37.090670','read write',1,1,'2024-01-07 01:48:37.090670','2024-01-07 01:48:37.090670',NULL,NULL),(69,'PcMDovpAdwKeI4RbVVUav2cvga2vSU','2024-01-07 11:49:43.946939','read write',1,1,'2024-01-07 01:49:43.946939','2024-01-07 01:49:43.946939',NULL,NULL),(70,'8o3ZvHYqjTlJh5XqpX02YN3iig3EN3','2024-01-07 12:31:23.626013','read write',1,1,'2024-01-07 02:31:23.626013','2024-01-07 02:31:23.626013',NULL,NULL),(71,'ema3VJ1ivxkcANy3wVntrmgsqbIzUA','2024-01-10 17:35:53.248926','read write',1,1,'2024-01-10 07:35:53.248926','2024-01-10 07:35:53.248926',NULL,NULL),(72,'J9SP0dzsGEg0U7DXiGToOEFw5mKaOZ','2024-01-11 21:29:41.812532','read write',1,1,'2024-01-11 11:29:41.813531','2024-01-11 11:29:41.813531',NULL,NULL),(73,'VvdeHRJLZUKD5lto7w5FxGRRLCcCYh','2024-01-14 11:55:43.842284','read write',1,1,'2024-01-14 01:55:43.842284','2024-01-14 01:55:43.842284',NULL,NULL),(74,'geWWoyEv4jjTwAbkGXthZXkNWGoRso','2024-01-14 11:55:44.140497','read write',1,1,'2024-01-14 01:55:44.140497','2024-01-14 01:55:44.140497',NULL,NULL),(75,'cCQNbpY7eiG33833Omweyz3RXlBbtE','2024-01-19 18:25:33.170135','read write',1,1,'2024-01-19 08:25:33.171137','2024-01-19 08:25:33.171137',NULL,NULL),(76,'EtOvhgaIkF1HG07SDJVxHEvswQMpv1','2024-01-19 18:34:42.226124','read write',1,1,'2024-01-19 08:34:42.226124','2024-01-19 08:34:42.226124',NULL,NULL),(77,'rVO8dpW9rdsvFIjZamOKIz0H1kFgRy','2024-01-19 18:38:03.229239','read write',1,1,'2024-01-19 08:38:03.230282','2024-01-19 08:38:03.230282',NULL,NULL),(78,'vHdpMS5YMDSDC3A6T2JXNS8ckTiuqj','2024-01-19 18:46:43.138453','read write',1,1,'2024-01-19 08:46:43.138453','2024-01-19 08:46:43.138453',NULL,NULL),(79,'XcmFLjqSuLA9Thx8B4tPgRrrZNEcwV','2024-01-19 18:50:42.575050','read write',1,1,'2024-01-19 08:50:42.575050','2024-01-19 08:50:42.575050',NULL,NULL),(80,'TBnN0Lwds4yxoGOvay8cxFacQfNp1E','2024-01-19 18:56:48.468036','read write',1,1,'2024-01-19 08:56:48.469006','2024-01-19 08:56:48.469006',NULL,NULL),(81,'AFGwFJL82zNsSi4X2ZPlUMtd1Ph2Wn','2024-01-20 00:01:29.609234','read write',1,1,'2024-01-19 14:01:29.609234','2024-01-19 14:01:29.609234',NULL,NULL),(82,'Ou9vldW4j8bEuBhydO3qRnzLGLX6Q7','2024-01-20 00:03:55.690573','read write',1,2,'2024-01-19 14:03:55.690573','2024-01-19 14:03:55.690573',NULL,NULL),(83,'FuXkoR8lX6zj0W7Jyv4KHs6nRhOLD0','2024-01-20 02:01:36.235592','read write',1,1,'2024-01-19 16:01:36.236603','2024-01-19 16:01:36.236603',NULL,NULL),(84,'e4Omd8McepZHCUFuyJ5MtdC9jONAff','2024-01-20 02:09:33.495837','read write',1,1,'2024-01-19 16:09:33.498886','2024-01-19 16:09:33.498886',NULL,NULL),(85,'xay6Eko5oj3vfV4n2BhwafSuCsNdsk','2024-01-20 02:11:57.985529','read write',1,1,'2024-01-19 16:11:57.986538','2024-01-19 16:11:57.986538',NULL,NULL),(86,'zyRnEb2KoEonIhsf1YRVE8Ma5xR8J6','2024-01-20 02:13:05.658836','read write',1,1,'2024-01-19 16:13:05.658836','2024-01-19 16:13:05.658836',NULL,NULL),(87,'DaXCYUF3wOHBwlQKTjbpQHCZeEc00Z','2024-01-20 02:16:19.220628','read write',1,1,'2024-01-19 16:16:19.220628','2024-01-19 16:16:19.220628',NULL,NULL),(88,'f56UpDuFyABiNacIhWxC0jiT692SSj','2024-01-20 02:17:07.355560','read write',1,1,'2024-01-19 16:17:07.355560','2024-01-19 16:17:07.355560',NULL,NULL),(89,'uzLpGgWkYH1v61sxr4luY8AHnACbrh','2024-01-20 02:30:58.503329','read write',1,1,'2024-01-19 16:30:58.503329','2024-01-19 16:30:58.503329',NULL,NULL),(90,'DkrbmS7pOXCrSGc7ZwQHO2h1xs6r1p','2024-01-20 02:31:15.387931','read write',1,2,'2024-01-19 16:31:15.387931','2024-01-19 16:31:15.387931',NULL,NULL),(91,'B2XVZLg7rVUJrkA0qVOJGCIinok2ic','2024-01-20 02:32:24.865712','read write',1,1,'2024-01-19 16:32:24.865712','2024-01-19 16:32:24.865712',NULL,NULL),(92,'y7ri0uKkOR3Za1qcPyBiDAWsFrp4N5','2024-01-20 03:05:57.626551','read write',1,1,'2024-01-19 17:05:57.626551','2024-01-19 17:05:57.626551',NULL,NULL);
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_application`
--

DROP TABLE IF EXISTS `oauth2_provider_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_application` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect_uris` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorization_grant_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `skip_authorization` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `algorithm` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_logout_redirect_uris` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT (_utf8mb3''),
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id` (`client_id`),
  KEY `oauth2_provider_appl_user_id_79829054_fk_social_me` (`user_id`),
  KEY `oauth2_provider_application_client_secret_53133678` (`client_secret`),
  CONSTRAINT `oauth2_provider_appl_user_id_79829054_fk_social_me` FOREIGN KEY (`user_id`) REFERENCES `social_media_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_application`
--

LOCK TABLES `oauth2_provider_application` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_application` DISABLE KEYS */;
INSERT INTO `oauth2_provider_application` VALUES (1,'zDnklZ6ztQVU0X4DOQEymwV96MfWhW3Hk2VHq3D9','','confidential','password','pbkdf2_sha256$600000$5LHz7M6Judz2XeQnUf9RCc$8iGHf26rj7Ywkplnc1V8eQCl5CbCBnP6AUQ3hF0XaRc=','Improok_Social_Media',1,0,'2023-12-09 11:35:27.327354','2023-12-09 11:35:27.327354','','');
/*!40000 ALTER TABLE `oauth2_provider_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_grant`
--

DROP TABLE IF EXISTS `oauth2_provider_grant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_grant` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `redirect_uri` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `scope` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `code_challenge` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_challenge_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `claims` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT (_utf8mb3''),
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_grant_user_id_e8f62af8_fk_social_media_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_grant_user_id_e8f62af8_fk_social_media_user_id` FOREIGN KEY (`user_id`) REFERENCES `social_media_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_grant`
--

LOCK TABLES `oauth2_provider_grant` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_grant` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_grant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_idtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_idtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_idtoken` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `jti` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `application_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jti` (`jti`),
  KEY `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_idtoken_user_id_dd512b59_fk_social_media_user_id` (`user_id`),
  CONSTRAINT `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_idtoken_user_id_dd512b59_fk_social_media_user_id` FOREIGN KEY (`user_id`) REFERENCES `social_media_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_idtoken`
--

LOCK TABLES `oauth2_provider_idtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_refreshtoken`
--

DROP TABLE IF EXISTS `oauth2_provider_refreshtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_refreshtoken` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` bigint(20) DEFAULT NULL,
  `application_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `revoked` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `access_token_id` (`access_token_id`),
  UNIQUE KEY `oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq` (`token`,`revoked`),
  KEY `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` (`application_id`),
  KEY `oauth2_provider_refr_user_id_da837fce_fk_social_me` (`user_id`),
  CONSTRAINT `oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr` FOREIGN KEY (`access_token_id`) REFERENCES `oauth2_provider_accesstoken` (`id`),
  CONSTRAINT `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  CONSTRAINT `oauth2_provider_refr_user_id_da837fce_fk_social_me` FOREIGN KEY (`user_id`) REFERENCES `social_media_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

LOCK TABLES `oauth2_provider_refreshtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_refreshtoken` VALUES (1,'NMyUhzV6mjYkxNftvskXpKfk9CiCL3',1,1,1,'2023-12-09 11:40:17.907782','2023-12-09 11:40:17.907782',NULL),(2,'YSwxR6TLyIqRq3KxLyTZabuYAWUfpH',2,1,1,'2023-12-12 08:29:50.353010','2023-12-12 08:29:50.353010',NULL),(3,'8oLFhhMHp6Kgpkks3PBKLYkJNW9qLk',3,1,1,'2023-12-14 10:31:39.606518','2023-12-14 10:31:39.606518',NULL),(4,'4Zwkw2116kr5m2FqDu0Qo75084I3dU',4,1,2,'2023-12-14 11:00:06.415055','2023-12-14 11:00:06.415055',NULL),(5,'Bj3ENhfushzibEblproQeH7RMQGIjP',5,1,2,'2023-12-16 10:40:42.978993','2023-12-16 10:40:42.978993',NULL),(6,'5XY83Ega7mbMJWjBrnACRoBliSTMuy',6,1,2,'2023-12-17 06:57:42.975366','2023-12-17 06:57:42.975366',NULL),(7,'pKedIcXLkO1qSn0dBjJsjuHvd5I59j',7,1,2,'2023-12-17 11:40:41.173460','2023-12-17 11:40:41.173460',NULL),(8,'CtMzegwnz5pwHJT3sYo2GkqndXq6SP',8,1,2,'2023-12-19 02:26:21.022458','2023-12-19 02:26:21.022458',NULL),(9,'giBvoklyyhqmyjIuYCitlEBGJFPLqz',9,1,3,'2023-12-19 04:31:02.442199','2023-12-19 04:31:02.442199',NULL),(10,'LLwcp8SPyHFFf6Na2Ob3oWiSyQ2ZMS',10,1,1,'2023-12-19 04:32:26.038623','2023-12-19 04:32:26.038623',NULL),(11,'qCRGABH7QaXJxYF9YZrUiM6jejhPSe',11,1,2,'2023-12-19 09:35:58.936447','2023-12-19 09:35:58.936447',NULL),(12,'qjvYcBwyn7lJcqepVA3JrOXdcnQOKm',12,1,2,'2023-12-19 09:59:24.368527','2023-12-19 09:59:24.368527',NULL),(13,'Kfq1YFntU9oVY8zx9gTUQf9hwlfOkq',13,1,2,'2023-12-19 10:02:09.478547','2023-12-19 10:02:09.478547',NULL),(14,'z2bLUVG6b2tk7F4tWLgr8dTuI35sG9',14,1,2,'2023-12-19 10:03:28.162946','2023-12-19 10:03:28.162946',NULL),(15,'WRBqy57AelrHZwEl1iFHFzKCM9WRHc',15,1,2,'2023-12-19 10:14:05.310503','2023-12-19 10:14:05.310503',NULL),(16,'iJye7c9b3cszBCmKpkBJcrFmeVaLkL',16,1,1,'2023-12-21 10:11:40.227627','2023-12-21 10:11:40.227627',NULL),(17,'DJ1OVenLVf9bDDOaxZKDHrvPK2ST48',17,1,2,'2023-12-21 11:08:25.649501','2023-12-21 11:08:25.649501',NULL),(18,'TdrlWNqEAYvN2yhWuo45pXLxLSMpaS',18,1,2,'2023-12-23 13:15:14.191374','2023-12-23 13:15:14.191374',NULL),(19,'76ah0jtvjwtOf7LWpS26fAEtfw6qAB',19,1,2,'2023-12-26 08:21:56.971679','2023-12-26 08:21:56.971679',NULL),(20,'fuAHuyZy2amyQ41b323CxEioiRGRsh',20,1,1,'2023-12-26 15:23:23.073371','2023-12-26 15:23:23.074374',NULL),(21,'z4lIaW6HdjIWGlNDJ2b2Mg5Uoj4xe9',21,1,1,'2023-12-26 15:51:04.963469','2023-12-26 15:51:04.963469',NULL),(22,'zON3rbDryro5KUp9YuNf8daE72jZEk',22,1,1,'2023-12-26 15:58:38.380518','2023-12-26 15:58:38.380518',NULL),(23,'KQhbkVDJhb81E332BbqTjke91aDOkX',23,1,1,'2023-12-26 16:09:46.184457','2023-12-26 16:09:46.184457',NULL),(24,'OsKJnVA0sHAYKLW5CglIjtjqm69fUK',24,1,1,'2023-12-26 16:10:46.926080','2023-12-26 16:10:46.926080',NULL),(25,'aalAvlsECLUslulsOjMvunWRgNbjQk',25,1,1,'2023-12-26 16:25:52.316537','2023-12-26 16:25:52.316537',NULL),(26,'kDB05lvbQt1mIIDYb5GI2TqgeundXX',26,1,1,'2023-12-26 16:28:30.594248','2023-12-26 16:28:30.594248',NULL),(27,'qtEyH1FC9qLXaj9cC0e2yC5Wl0CZKD',27,1,1,'2023-12-26 16:33:28.884785','2023-12-26 16:33:28.884785',NULL),(28,'e6BF2wIbNsoyaX2vnvPGHrlIElbtPL',28,1,1,'2023-12-26 16:59:16.480081','2023-12-26 16:59:16.480081',NULL),(29,'AF1uyFwfBwoU7jUdnoLw3pi13akSFe',29,1,1,'2023-12-26 17:02:52.707796','2023-12-26 17:02:52.707796',NULL),(30,'M2qGl0lZRXUER9J7o01rh9aMe6SkZX',30,1,1,'2023-12-26 17:04:47.116364','2023-12-26 17:04:47.116364',NULL),(31,'U03zRev5gfQvQnoS5aniMNas7NkN9f',31,1,1,'2023-12-26 17:06:35.732118','2023-12-26 17:06:35.733131',NULL),(32,'glQH24KQbSyJOlyAWNM4L0wv4AUWPg',32,1,1,'2023-12-26 17:07:31.604057','2023-12-26 17:07:31.604057',NULL),(33,'n6s5dFj8oYdcoWSPCkpvGoVhael6QE',33,1,1,'2023-12-26 17:09:40.463013','2023-12-26 17:09:40.463013',NULL),(34,'dAuThiNocQ35DnMKtDGWgrwrQL1Uc0',34,1,2,'2023-12-27 15:49:56.699522','2023-12-27 15:49:56.699522',NULL),(35,'6XeKHzYnAhGPxmNuU8LloUeHFSi2rx',35,1,2,'2023-12-27 16:06:19.294125','2023-12-27 16:06:19.294125',NULL),(36,'3IiRQIPem0uRMUXrDbkLFtkVjSlY0M',36,1,2,'2023-12-27 16:06:44.329718','2023-12-27 16:06:44.329718',NULL),(37,'H3yMPHcC8oB9wdDxbxVqtcRjBQaXQh',37,1,2,'2023-12-27 16:07:05.408852','2023-12-27 16:07:05.408852',NULL),(38,'41gBnpppOEAG5C5drPlq1ZYixeQ4ja',38,1,2,'2023-12-27 16:08:48.717071','2023-12-27 16:08:48.717071',NULL),(39,'vxNZqP5PDJ4pamQzC1ZkCdAuvNwfLg',39,1,2,'2023-12-27 16:09:00.867689','2023-12-27 16:09:00.867689',NULL),(40,'ObBSxsj9MkXWhnxPgyR5bwablhrbE6',40,1,2,'2023-12-27 16:09:17.292775','2023-12-27 16:09:17.292775',NULL),(41,'boNyLop1UcSfg6VSTqyeJKFus25b0E',41,1,2,'2023-12-27 16:09:28.942322','2023-12-27 16:09:28.942322',NULL),(42,'9G9hqWrpZfMUXxTDLEsPCT9JcWx6U4',42,1,2,'2023-12-27 16:09:51.095784','2023-12-27 16:09:51.095784',NULL),(43,'8Lm3AYoBQyGLMiND7dNKNZz29T70m0',43,1,2,'2023-12-27 16:13:19.169228','2023-12-27 16:13:19.169228',NULL),(44,'d8HH9sw1c7UwyZlBp8ou3Lye2vEAcE',44,1,2,'2023-12-27 16:14:13.889137','2023-12-27 16:14:13.889137',NULL),(45,'MoqSTntrDrp65BoOCdqfJ3tJcOGLKy',45,1,3,'2023-12-27 16:14:21.383377','2023-12-27 16:14:21.383377',NULL),(46,'HrPtTffhVsVtItXSSFKWEDvLH1UW1E',46,1,3,'2023-12-28 11:55:23.710477','2023-12-28 11:55:23.710477',NULL),(47,'ELnIMUXTmHQr9YJD0YAEsh8nSF7c0a',47,1,3,'2023-12-28 13:59:01.738501','2023-12-28 13:59:01.738501',NULL),(48,'85YFAwrKWMfM9GeJQC6qHrMT0Kz38R',48,1,3,'2023-12-28 14:04:29.772081','2023-12-28 14:04:29.772081',NULL),(49,'aWFmi4Ef3JAxkMKplDr4g5J4lf3ZHZ',49,1,1,'2023-12-29 09:41:57.349375','2023-12-29 09:41:57.349375',NULL),(50,'QDRWwQrzev0xZT3ZdXHzGGCeHMd5il',50,1,1,'2023-12-30 18:20:37.123843','2023-12-30 18:20:37.123843',NULL),(51,'zIY58tHmHcV9ccZAwfK8R2S8kfngQL',51,1,1,'2023-12-30 19:57:58.622155','2023-12-30 19:57:58.622155',NULL),(52,'nHvugLEypRVLnC34aFvKchusa4xeXb',52,1,1,'2023-12-31 12:59:08.796691','2023-12-31 12:59:08.796691',NULL),(53,'rdpVE03vmxfRNi9gPlWQwRF1Ea6wPd',53,1,1,'2024-01-01 02:18:12.700555','2024-01-01 02:18:12.700555',NULL),(54,'CKeIoqJkQjqyVrfKkICeWxUY0Kfi0N',54,1,1,'2024-01-01 10:07:13.592597','2024-01-01 10:07:13.592597',NULL),(55,'huXPLUSN9D2AbNRhTZtqIvEbU3J2h6',55,1,1,'2024-01-01 12:32:44.300671','2024-01-01 12:32:44.300671',NULL),(56,'1PFkPdJqeJc2zS4JQal5g4ZhWwSN4s',56,1,1,'2024-01-02 10:00:09.192277','2024-01-02 10:00:09.192277',NULL),(57,'JCLE5sncHVZB1OO5SLdrlrUvl22vTV',57,1,1,'2024-01-02 14:13:40.456220','2024-01-02 14:13:40.456220',NULL),(58,'h3JXdFxnrLi33kzgG27Wg4jM7VnPul',58,1,1,'2024-01-02 14:40:27.441430','2024-01-02 14:40:27.441430',NULL),(59,'rs7iEwT3yFDXsCrOu12O87e4MWGPoH',59,1,1,'2024-01-04 14:13:51.488664','2024-01-04 14:13:51.488664',NULL),(60,'i1rbafJzerWGp4gxLjv7Q9MSlr1Rgn',60,1,1,'2024-01-04 14:51:37.567821','2024-01-04 14:51:37.567821',NULL),(61,'acxOUapRq6Yn7mVGwGxKI6PhMrgT2A',61,1,1,'2024-01-06 06:30:11.710345','2024-01-06 06:30:11.710345',NULL),(62,'TsRecYdNWALKiY2Xw7tfO3DH3OzVWq',62,1,1,'2024-01-06 10:58:01.729085','2024-01-06 10:58:01.729085',NULL),(63,'5rsETzRwSCsH0eQdVaxyiFCpxSAkM1',63,1,1,'2024-01-07 00:33:30.506419','2024-01-07 00:33:30.506419',NULL),(64,'npj5vCmGzz3qsWvL0MhyQDovHb1EpX',64,1,1,'2024-01-07 01:42:55.248736','2024-01-07 01:42:55.248736',NULL),(65,'EmxcGccVbU86PL67JYdzWdrkHRu1YJ',65,1,1,'2024-01-07 01:44:04.417546','2024-01-07 01:44:04.417546',NULL),(66,'HjfhUw5COczs8F7RzSMPEyq2NlS0JM',66,1,1,'2024-01-07 01:46:06.558159','2024-01-07 01:46:06.558159',NULL),(67,'pIHMPu8u6SAEGWcTR73VPZ9RuI2enl',67,1,1,'2024-01-07 01:48:11.399213','2024-01-07 01:48:11.399213',NULL),(68,'ds7KV8R6YqqL3SRY8gaVvJ6XyLn45p',68,1,1,'2024-01-07 01:48:37.090670','2024-01-07 01:48:37.090670',NULL),(69,'fcVhToAT0I2YuFqAzy759Hxkgp8LwZ',69,1,1,'2024-01-07 01:49:43.946939','2024-01-07 01:49:43.946939',NULL),(70,'mEe2TcLMd8BlQW8igwAfVlcD8cmmum',70,1,1,'2024-01-07 02:31:23.641645','2024-01-07 02:31:23.641645',NULL),(71,'aprlazC9pN2Cc5qXnkZLwgnjlHASmO',71,1,1,'2024-01-10 07:35:53.298927','2024-01-10 07:35:53.298927',NULL),(72,'iXeB6MN92a0nxYtVVGLK7FAKNdCJj1',72,1,1,'2024-01-11 11:29:41.855048','2024-01-11 11:29:41.855048',NULL),(73,'wcPSVBbab0mFYxluz6VmGG2aZsPlQp',73,1,1,'2024-01-14 01:55:43.874457','2024-01-14 01:55:43.874457',NULL),(74,'TrbeVS0FZTNm0I0TeVtL3KMLn1jEtW',74,1,1,'2024-01-14 01:55:44.140497','2024-01-14 01:55:44.140497',NULL),(75,'Tsi8dd3cnD4uLqShMWcxhtc5rrG9aR',75,1,1,'2024-01-19 08:25:33.199140','2024-01-19 08:25:33.199140',NULL),(76,'FbJPWSGqoJv3LQGQYRC75tBVb7KHXK',76,1,1,'2024-01-19 08:34:42.237154','2024-01-19 08:34:42.237154',NULL),(77,'C4yfk8SPShpLoWCrhTAuPqCHXF9xGh',77,1,1,'2024-01-19 08:38:03.244482','2024-01-19 08:38:03.244482',NULL),(78,'uiJcbY8P5myRyWN7KAbSrDzkiu2rQd',78,1,1,'2024-01-19 08:46:43.144849','2024-01-19 08:46:43.144849',NULL),(79,'PG8CjmELuvjg2s5o1EKXZ2EL1lU4ph',79,1,1,'2024-01-19 08:50:42.579049','2024-01-19 08:50:42.579049',NULL),(80,'BIf2VvFFuhKaqnP3crnuLFSXH0wY6r',80,1,1,'2024-01-19 08:56:48.472586','2024-01-19 08:56:48.472586',NULL),(81,'fS9by3zocbrvwceQDRFtn2KWuK3wtU',81,1,1,'2024-01-19 14:01:29.615240','2024-01-19 14:01:29.615240',NULL),(82,'Wevn1VGUHZUv7DvYUvodgSQgVNI1r5',82,1,2,'2024-01-19 14:03:55.696732','2024-01-19 14:03:55.696732',NULL),(83,'S78pxWiElwbUpxO4Rcw3nKv3hISguQ',83,1,1,'2024-01-19 16:01:36.245118','2024-01-19 16:01:36.245118',NULL),(84,'UkoULFzp35PsD3mg3toO3VtrhMsgPM',84,1,1,'2024-01-19 16:09:33.498886','2024-01-19 16:09:33.498886',NULL),(85,'g3Lu2RTQevyaXJqSOxLx6ESeactCXK',85,1,1,'2024-01-19 16:11:57.990536','2024-01-19 16:11:57.990536',NULL),(86,'D6GWhVpyb7o09RzjehvcNKmRyhvHsw',86,1,1,'2024-01-19 16:13:05.659870','2024-01-19 16:13:05.659870',NULL),(87,'QNtyYEoOaJFsTbphtmAeA7vnItBB46',87,1,1,'2024-01-19 16:16:19.222178','2024-01-19 16:16:19.222178',NULL),(88,'cAXoga8udJAleeHyOExLG6twYhZCKh',88,1,1,'2024-01-19 16:17:07.360560','2024-01-19 16:17:07.360560',NULL),(89,'SmaBMqSmMLsNGYkcfZtqstrTIzqWEm',89,1,1,'2024-01-19 16:30:58.508369','2024-01-19 16:30:58.508369',NULL),(90,'tLPnI5pyhWlYHEwCiPr3pBsmCfoAxT',90,1,2,'2024-01-19 16:31:15.391929','2024-01-19 16:31:15.391929',NULL),(91,'81k87ZDzaQjIuhwnYtYYt91nMNE7mS',91,1,1,'2024-01-19 16:32:24.869470','2024-01-19 16:32:24.869470',NULL),(92,'UD47wa9V8ckWwO3TPfmD15Zel183cs',92,1,1,'2024-01-19 17:05:57.655550','2024-01-19 17:05:57.655550',NULL);
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_association`
--

DROP TABLE IF EXISTS `social_auth_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_association` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_association`
--

LOCK TABLES `social_auth_association` WRITE;
/*!40000 ALTER TABLE `social_auth_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_code`
--

DROP TABLE IF EXISTS `social_auth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_code` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  KEY `social_auth_code_code_a2393167` (`code`),
  KEY `social_auth_code_timestamp_176b341f` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_code`
--

LOCK TABLES `social_auth_code` WRITE;
/*!40000 ALTER TABLE `social_auth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_nonce`
--

DROP TABLE IF EXISTS `social_auth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_nonce` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_nonce`
--

LOCK TABLES `social_auth_nonce` WRITE;
/*!40000 ALTER TABLE `social_auth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_partial`
--

DROP TABLE IF EXISTS `social_auth_partial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_partial` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `token` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `next_step` smallint(5) unsigned NOT NULL,
  `backend` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `data` json NOT NULL DEFAULT (_utf8mb3'{}'),
  PRIMARY KEY (`id`),
  KEY `social_auth_partial_token_3017fea3` (`token`),
  KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`),
  CONSTRAINT `social_auth_partial_chk_1` CHECK ((`next_step` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_partial`
--

LOCK TABLES `social_auth_partial` WRITE;
/*!40000 ALTER TABLE `social_auth_partial` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_partial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_usersocialauth`
--

DROP TABLE IF EXISTS `social_auth_usersocialauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_auth_usersocialauth` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `provider` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `extra_data` json NOT NULL DEFAULT (_utf8mb3'{}'),
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  KEY `social_auth_usersoci_user_id_17d28448_fk_social_me` (`user_id`),
  KEY `social_auth_usersocialauth_uid_796e51dc` (`uid`),
  CONSTRAINT `social_auth_usersoci_user_id_17d28448_fk_social_me` FOREIGN KEY (`user_id`) REFERENCES `social_media_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_usersocialauth`
--

LOCK TABLES `social_auth_usersocialauth` WRITE;
/*!40000 ALTER TABLE `social_auth_usersocialauth` DISABLE KEYS */;
INSERT INTO `social_auth_usersocialauth` VALUES (1,'google-oauth2','2051050549tuan@ou.edu.vn',34,'2024-01-21 16:14:22.658695','2024-01-21 17:01:06.398977','{\"expires\": 3599, \"auth_time\": 1705856466, \"token_type\": \"Bearer\", \"access_token\": \"ya29.a0AfB_byB9khPcEsaizGWhztQeRYs_vEXybF-mltfNPRO0x74rm4VGEkNLpu0tQh87R3tIClxYgql6cgyPi02y7fTIADLCiVSwA__KYuZvkNjGTzdpfa1XSAIlro4lcswJy2jIUAal_prEKvvX_8MYOZpAGWHkEZ3kxKOkaCgYKAZsSARISFQHGX2Mi3ogtKgI_rtLAfIxxtQR3Gg0171\"}');
/*!40000 ALTER TABLE `social_auth_usersocialauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_account`
--

DROP TABLE IF EXISTS `social_media_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `account_status` tinyint(1) NOT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_number` (`phone_number`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `social_media_account_role_id_d1ccc1de_fk_social_media_role_id` (`role_id`),
  CONSTRAINT `social_media_account_role_id_d1ccc1de_fk_social_media_role_id` FOREIGN KEY (`role_id`) REFERENCES `social_media_role` (`id`),
  CONSTRAINT `social_media_account_user_id_30063586_fk_social_media_user_id` FOREIGN KEY (`user_id`) REFERENCES `social_media_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_account`
--

LOCK TABLES `social_media_account` WRITE;
/*!40000 ALTER TABLE `social_media_account` DISABLE KEYS */;
INSERT INTO `social_media_account` VALUES (1,'2023-12-02','2024-01-14','2023-12-02',1,'0345809638','2002-08-28','https://res.cloudinary.com/dhwuwy0to/image/upload/v1705197383/khl1ihabkpiygmrxedpj.jpg','https://res.cloudinary.com/dhwuwy0to/image/upload/v1705197632/juylouz0ymc04xzsnurz.jpg',1,1,1,1),(2,'2023-12-02','2024-01-06','2023-12-02',1,'012345678','2023-12-02','https://res.cloudinary.com/dhwuwy0to/image/upload/v1704526087/aud5irfmbwjnvkhqqdjl.png','images/accounts/cover_avatar/2023/12/Ảnh_của_tui_1.jpg',3,2,1,1),(3,'2023-12-02','2023-12-02','2023-12-02',1,'36262312312','2023-12-02','images/accounts/avatar/2023/12/Screenshot_2023-12-02_163517.png','images/accounts/cover_avatar/2023/12/Screenshot_2023-12-02_163517.png',3,3,0,1),(4,'2023-12-02','2023-12-02','2023-12-02',1,'3626','2023-12-02','images/accounts/avatar/2023/12/FURINA.png','images/accounts/cover_avatar/2023/12/FURINA.png',2,4,0,1),(5,'2023-12-07','2023-12-07','2023-12-07',1,'099999','2023-12-07','images/accounts/avatar/2023/12/Screenshot_2023-12-02_163517_uBq6TcI.png','images/accounts/cover_avatar/2023/12/FURINA_Qya12Xs.png',2,5,0,1),(7,'2023-12-10','2023-12-10','2023-12-10',1,'0123456789','2002-08-28','images/accounts/avatar/2023/12/Screenshot_2023-12-02_163517_iMvIY1I.png','images/accounts/cover_avatar/2023/12/Screenshot_2023-12-02_163517_ciM462Z.png',3,6,1,1),(8,'2023-12-19','2023-12-19','2023-12-19',1,'54564','2002-08-28','images/accounts/avatar/2023/12/Screenshot_2023-12-02_163517_iMvIY1I.png','images/accounts/cover_avatar/2023/12/Screenshot_2023-12-02_163517_ciM462Z.png',3,10,0,1),(9,'2023-12-19','2023-12-19','2023-12-19',1,'45456','2002-08-28','images/accounts/avatar/2023/12/Screenshot_2023-12-02_163517_iMvIY1I.png','images/accounts/cover_avatar/2023/12/Screenshot_2023-12-02_163517_ciM462Z.png',3,11,0,1),(10,'2023-12-19','2023-12-19',NULL,1,NULL,NULL,'','',3,12,0,1),(11,'2023-12-19','2023-12-19',NULL,1,NULL,NULL,'','',3,13,0,1),(12,'2023-12-19','2024-01-06',NULL,1,NULL,NULL,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1704522713/pfkpu900ia6jmpsud1ko.png','https://res.cloudinary.com/dhwuwy0to/image/upload/v1704522789/dhe7esicngzjyguzuxrm.png',3,14,0,1),(13,'2023-12-26','2023-12-26',NULL,1,'8456121','2002-08-28','images/accounts/avatar/2023/12/Screenshot_2023-12-21_191538.png','https://res.cloudinary.com/dhwuwy0to/image/upload/v1703582131/eoist3dh8nqvl0namjus.png',3,9,1,1),(15,'2023-12-26','2023-12-26',NULL,1,'821313','2002-08-28','https://res.cloudinary.com/dhwuwy0to/image/upload/v1703582345/horjssrhopdt74extmrb.png','images/accounts/cover_avatar/2023/12/Screenshot_2023-12-23_220045_7pjKdeR.png',3,8,1,1),(16,'2023-12-26','2023-12-26',NULL,1,'82131334','2002-08-28','https://res.cloudinary.com/dhwuwy0to/image/upload/v1703582573/loulgzcbcekhggxsvqo0.png','https://res.cloudinary.com/dhwuwy0to/image/upload/v1703582575/djazey5a7dd1dxninznu.png',3,15,1,1),(17,'2023-12-26','2023-12-26',NULL,1,'121323','2002-08-28','https://res.cloudinary.com/dhwuwy0to/image/upload/v1703582655/dl4xjbbjdsxuiqumtbpw.png','https://res.cloudinary.com/dhwuwy0to/image/upload/v1703582656/yxtijt9mskw9f0me5nly.png',3,16,1,1),(18,'2023-12-26','2023-12-26',NULL,1,'64688','2002-08-28','','https://res.cloudinary.com/dhwuwy0to/image/upload/v1703582716/uxy7taglizpqcrqykglv.png',3,17,1,1),(20,'2023-12-28','2023-12-28',NULL,1,NULL,NULL,'','',3,20,0,1),(28,'2023-12-28','2023-12-28',NULL,1,'64688111','2002-08-08','https://res.cloudinary.com/dhwuwy0to/image/upload/v1703769039/i2anwjvqzepziurvbjnv.png','https://res.cloudinary.com/dhwuwy0to/image/upload/v1703769041/ohkgnhbrnsglqnxwt5mb.png',3,21,1,1),(29,'2023-12-28','2023-12-28',NULL,1,NULL,NULL,'','',3,25,0,1),(30,'2023-12-28','2023-12-28',NULL,1,NULL,NULL,'','',3,26,0,1),(31,'2023-12-28','2023-12-28',NULL,1,NULL,NULL,'','',3,27,0,1),(32,'2023-12-28','2023-12-28',NULL,1,NULL,NULL,'','',3,28,0,1),(33,'2023-12-28','2023-12-28',NULL,1,NULL,NULL,'','',3,29,0,1),(34,'2023-12-31','2024-01-01',NULL,1,NULL,NULL,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1704104173/aduvss5el9cyfomtqrjp.png','',3,30,0,0),(46,'2024-01-07','2024-01-10',NULL,1,'5645','2002-08-28','https://res.cloudinary.com/dhwuwy0to/image/upload/v1704872532/glnefpjfmyeqsf2zgl90.jpg','https://res.cloudinary.com/dhwuwy0to/image/upload/v1704872606/rvbx2ktatzwanszoxxn6.png',3,7,0,0),(48,'2024-01-18','2024-01-18',NULL,1,NULL,NULL,'','',2,32,0,NULL),(49,'2024-01-19','2024-01-19',NULL,1,NULL,NULL,'','',2,33,0,NULL);
/*!40000 ALTER TABLE `social_media_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_alumniaccount`
--

DROP TABLE IF EXISTS `social_media_alumniaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_alumniaccount` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `alumni_account_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_id` (`account_id`),
  CONSTRAINT `social_media_alumnia_account_id_c7d06ad4_fk_social_me` FOREIGN KEY (`account_id`) REFERENCES `social_media_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_alumniaccount`
--

LOCK TABLES `social_media_alumniaccount` WRITE;
/*!40000 ALTER TABLE `social_media_alumniaccount` DISABLE KEYS */;
INSERT INTO `social_media_alumniaccount` VALUES (1,'2023-12-19','2023-12-19','2023-12-19',1,'1298419283',8),(2,'2023-12-19','2023-12-19','2023-12-19',1,'12984193',9),(3,'2023-12-19','2023-12-19',NULL,1,'2309482034',10),(4,'2023-12-19','2023-12-19',NULL,1,'123132',11),(5,'2023-12-19','2023-12-19',NULL,1,'3432',12),(7,'2023-12-28','2023-12-28',NULL,1,'2309482035',20),(8,'2023-12-28','2023-12-28',NULL,1,'12312312',29),(9,'2023-12-28','2023-12-28',NULL,1,'53453',30),(10,'2023-12-28','2023-12-28',NULL,1,'2309482034<',31),(11,'2023-12-28','2023-12-28',NULL,1,'2309482034>',32),(12,'2023-12-28','2023-12-28',NULL,1,'2309482034\'',33),(13,'2023-12-31','2023-12-31',NULL,1,'2309482',34);
/*!40000 ALTER TABLE `social_media_alumniaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_comment`
--

DROP TABLE IF EXISTS `social_media_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `comment_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  `comment_image_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_media_comment_post_id_200ffcb6_fk_social_media_post_id` (`post_id`),
  KEY `social_media_comment_account_id_3fe640d0_fk_social_me` (`account_id`),
  CONSTRAINT `social_media_comment_account_id_3fe640d0_fk_social_me` FOREIGN KEY (`account_id`) REFERENCES `social_media_account` (`id`),
  CONSTRAINT `social_media_comment_post_id_200ffcb6_fk_social_media_post_id` FOREIGN KEY (`post_id`) REFERENCES `social_media_post` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_comment`
--

LOCK TABLES `social_media_comment` WRITE;
/*!40000 ALTER TABLE `social_media_comment` DISABLE KEYS */;
INSERT INTO `social_media_comment` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,'Bài viết hay thế',1,2,'images/comments/2023/12/Screenshot_2023-12-02_163517.png'),(2,'2023-12-02','2023-12-02','2023-12-02',1,'Bài viết hay thế 1',2,2,'images/comments/2023/12/FURINA.png'),(3,'2023-12-05','2023-12-05','2023-12-05',1,'Ôi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá',9,2,'images/comments/2023/12/Screenshot_2023-10-15_111305.png'),(4,'2023-12-19','2023-12-19','2023-12-19',1,'Sửa phân quyền',14,2,''),(5,'2023-12-19','2023-12-19','2023-12-19',1,'Sửa phân quyền',14,2,''),(11,'2023-12-26','2023-12-26',NULL,1,'Đây là comment',4,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1703580132/oqleuuuoexj5iu6anaze.png'),(12,'2024-01-14','2024-01-14',NULL,1,'Jdjejd',49,1,''),(13,'2024-01-14','2024-01-14',NULL,1,'Jdjejd',49,1,''),(14,'2024-01-14','2024-01-14',NULL,1,'Jdjejd',49,1,'');
/*!40000 ALTER TABLE `social_media_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_confirmstatus`
--

DROP TABLE IF EXISTS `social_media_confirmstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_confirmstatus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `confirm_status_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_confirmstatus`
--

LOCK TABLES `social_media_confirmstatus` WRITE;
/*!40000 ALTER TABLE `social_media_confirmstatus` DISABLE KEYS */;
INSERT INTO `social_media_confirmstatus` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,'Accept'),(2,'2023-12-02','2023-12-02','2023-12-02',1,'Deny'),(3,'2023-12-02','2023-12-02','2023-12-02',1,'Pending');
/*!40000 ALTER TABLE `social_media_confirmstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_invitationgroup`
--

DROP TABLE IF EXISTS `social_media_invitationgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_invitationgroup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `invitation_group_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_invitationgroup`
--

LOCK TABLES `social_media_invitationgroup` WRITE;
/*!40000 ALTER TABLE `social_media_invitationgroup` DISABLE KEYS */;
INSERT INTO `social_media_invitationgroup` VALUES (1,'2023-12-05','2023-12-12','2023-12-12',1,'Group A'),(2,'2023-12-05','2023-12-12','2023-12-12',1,'Group B'),(3,'2023-12-05','2023-12-12','2023-12-12',1,'group C'),(4,'2023-12-12','2023-12-14','2023-12-14',1,'group D'),(5,'2023-12-14','2023-12-17','2023-12-17',1,'Group E1'),(6,'2023-12-17','2023-12-17','2023-12-17',1,'Group F'),(7,'2023-12-17','2023-12-17','2023-12-17',1,'Group G'),(8,'2023-12-17','2023-12-17','2023-12-17',1,'Group H1'),(9,'2023-12-17','2023-12-19','2023-12-19',1,'Group H2'),(10,'2024-01-17','2024-01-17',NULL,1,'Tạo bằng api'),(11,'2024-01-17','2024-01-17',NULL,1,'Tạo bằng api'),(12,'2024-01-20','2024-01-20',NULL,1,'Tạo bằng task'),(13,'2024-01-20','2024-01-20',NULL,1,'Tạo bằng task'),(14,'2024-01-20','2024-01-20',NULL,1,'Tạo bằng task'),(15,'2024-01-20','2024-01-20',NULL,1,'Tạo bằng task'),(16,'2024-01-20','2024-01-20',NULL,1,'Tạo bằng task'),(17,'2024-01-20','2024-01-20',NULL,1,'Tạo bằng task'),(18,'2024-01-20','2024-01-20',NULL,1,'Tạo bằng task'),(19,'2024-01-20','2024-01-20',NULL,1,'Tạo bằng task'),(20,'2024-01-20','2024-01-20',NULL,1,'Tạo bằng task'),(21,'2024-01-20','2024-01-20',NULL,1,'Tạo bằng task'),(22,'2024-01-20','2024-01-20',NULL,1,'Tạo bằng task'),(23,'2024-01-20','2024-01-20',NULL,1,'Tạo bằng task'),(24,'2024-01-20','2024-01-20',NULL,1,'Tạo bằng task'),(25,'2024-01-20','2024-01-20',NULL,1,'Tạo bằng task'),(26,'2024-01-20','2024-01-20',NULL,1,'Tạo bằng task (CELERY BEAT)');
/*!40000 ALTER TABLE `social_media_invitationgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_invitationgroup_accounts`
--

DROP TABLE IF EXISTS `social_media_invitationgroup_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_invitationgroup_accounts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `invitationgroup_id` bigint(20) NOT NULL,
  `account_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_media_invitationg_invitationgroup_id_accou_5b65dcb1_uniq` (`invitationgroup_id`,`account_id`),
  KEY `social_media_invitat_account_id_cd4c65a9_fk_social_me` (`account_id`),
  CONSTRAINT `social_media_invitat_account_id_cd4c65a9_fk_social_me` FOREIGN KEY (`account_id`) REFERENCES `social_media_account` (`id`),
  CONSTRAINT `social_media_invitat_invitationgroup_id_fe4d591b_fk_social_me` FOREIGN KEY (`invitationgroup_id`) REFERENCES `social_media_invitationgroup` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_invitationgroup_accounts`
--

LOCK TABLES `social_media_invitationgroup_accounts` WRITE;
/*!40000 ALTER TABLE `social_media_invitationgroup_accounts` DISABLE KEYS */;
INSERT INTO `social_media_invitationgroup_accounts` VALUES (4,1,1),(5,1,2),(6,1,3),(7,2,3),(8,2,4),(9,3,3),(10,3,5),(74,5,4),(72,5,5),(71,5,7),(75,9,1),(76,9,2),(77,9,3);
/*!40000 ALTER TABLE `social_media_invitationgroup_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_message`
--

DROP TABLE IF EXISTS `social_media_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `who_sent_id` bigint(20) DEFAULT NULL,
  `content` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_media_message_room_id_74e720e7_fk_social_media_room_id` (`room_id`),
  KEY `social_media_message_who_sent_id_02116656` (`who_sent_id`),
  CONSTRAINT `social_media_message_room_id_74e720e7_fk_social_media_room_id` FOREIGN KEY (`room_id`) REFERENCES `social_media_room` (`id`),
  CONSTRAINT `social_media_message_who_sent_id_02116656_fk_social_me` FOREIGN KEY (`who_sent_id`) REFERENCES `social_media_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_message`
--

LOCK TABLES `social_media_message` WRITE;
/*!40000 ALTER TABLE `social_media_message` DISABLE KEYS */;
INSERT INTO `social_media_message` VALUES (1,'2024-01-19','2024-01-19',NULL,1,1,'string',5);
/*!40000 ALTER TABLE `social_media_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_post`
--

DROP TABLE IF EXISTS `social_media_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_lock` tinyint(1) NOT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_media_post_account_id_40a73edf_fk_social_media_account_id` (`account_id`),
  CONSTRAINT `social_media_post_account_id_40a73edf_fk_social_media_account_id` FOREIGN KEY (`account_id`) REFERENCES `social_media_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_post`
--

LOCK TABLES `social_media_post` WRITE;
/*!40000 ALTER TABLE `social_media_post` DISABLE KEYS */;
INSERT INTO `social_media_post` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,'Bài Post đầu tiên',0,1),(2,'2023-12-02','2023-12-02','2023-12-02',1,'Bài Post thứ 2',0,1),(3,'2023-12-02','2023-12-02','2023-12-02',1,'Bài Post thứ 3',0,1),(4,'2023-12-02','2023-12-02','2023-12-02',1,'Bài Post 1 của tuan1',0,2),(5,'2023-12-02','2023-12-02','2023-12-02',1,'Bài Post 2 của tuan1',0,2),(6,'2023-12-02','2023-12-02','2023-12-02',1,'<p><u><em><strong>Post n&agrave;y đăng bằng ckeditor</strong></em></u></p>',0,1),(7,'2023-12-02','2023-12-02','2023-12-02',1,'<p>B&agrave;i Post thứ 2 bằng ckeditor nhưng kh&ocirc;ng chỉnh g&igrave;</p>',0,2),(8,'2023-12-02','2023-12-02','2023-12-02',1,'<p>POST KHẢO S&Aacute;T GPA</p>',0,1),(9,'2023-12-05','2023-12-05','2023-12-05',1,'<p>POST INVITATION + 3 Post Image</p>',0,1),(10,'2023-12-10','2023-12-10','2023-12-10',1,'Bài viết được tạo bởi Swagger',0,1),(11,'2023-12-10','2023-12-10','2023-12-10',1,'Bài viết được chỉnh sửa bởi swagger',1,1),(12,'2023-12-14','2023-12-14','2023-12-14',1,'Post này để tạo thư mời (invitation)',0,1),(13,'2023-12-14','2023-12-14','2023-12-14',1,'Post này để tạo thư mời 2 (invitation)',0,1),(14,'2023-12-16','2023-12-16','2023-12-16',1,'Bài post khảo sát by Swagger',0,1),(15,'2023-12-21','2023-12-21','2023-12-16',1,'Bài Post để khảo sát',0,1),(19,'2023-12-21','2023-12-21','2023-12-16',1,'Bài Post để khảo sát',0,1),(20,'2023-12-21','2023-12-21','2023-12-16',1,'Bài Post để khảo sát 2',0,1),(21,'2023-12-21','2023-12-21','2023-12-16',1,'Bài Post để khảo sát 3',0,1),(22,'2023-12-21','2023-12-21','2023-12-16',1,'Bài Post để khảo sát 3',0,1),(24,'2023-12-21','2023-12-21',NULL,1,'Đây là bài Post Invitation',0,1),(25,'2023-12-21','2023-12-21',NULL,1,'Đây là bài Post Invitation 2',0,1),(26,'2023-12-26','2023-12-26',NULL,1,'Bài post survey',0,1),(27,'2023-12-26','2023-12-26',NULL,1,'Bài post survey',0,1),(28,'2023-12-26','2023-12-26',NULL,1,'Bài post survey',0,1),(29,'2023-12-26','2023-12-26',NULL,1,'Bài post survey',0,1),(30,'2023-12-26','2023-12-26',NULL,1,'Alo',0,1),(31,'2023-12-27','2023-12-27',NULL,1,'Alo',0,1),(32,'2023-12-27','2023-12-27',NULL,1,'Alo',0,1),(33,'2023-12-27','2023-12-27',NULL,1,'Alo',0,1),(34,'2023-12-29','2023-12-29',NULL,1,'Bài Post để khảo sát 3',0,1),(35,'2023-12-29','2023-12-29',NULL,1,'Bài Post để khảo sát 3',0,1),(36,'2023-12-29','2023-12-29',NULL,1,'Bài Post để khảo sát 4',0,1),(37,'2023-12-29','2023-12-29',NULL,1,'Bài Post để khảo sát 4',0,1),(38,'2023-12-29','2023-12-29',NULL,1,'Bài Post để khảo sát 4',0,1),(39,'2023-12-29','2023-12-29',NULL,1,'Bài Post để khảo sát 4',0,1),(40,'2023-12-29','2023-12-29',NULL,1,'Bài Post để khảo sát 5',0,1),(41,'2024-01-01','2024-01-01',NULL,1,'Khảo sát năm mới',0,1),(42,'2024-01-06','2024-01-06',NULL,1,'Hihuhi',0,1),(43,'2024-01-06','2024-01-06',NULL,1,'Hahahaha',0,1),(44,'2024-01-06','2024-01-06',NULL,1,'Hahahahahahuihi',0,1),(45,'2024-01-06','2024-01-06',NULL,1,'Hahahahahahuihi',0,1),(46,'2024-01-06','2024-01-06',NULL,1,'Hahahahahahuihi',0,1),(47,'2024-01-06','2024-01-06',NULL,1,'Cú tui dứ',0,1),(48,'2024-01-14','2024-01-14',NULL,1,'Bsbbsbd',0,1),(49,'2024-01-14','2024-01-14',NULL,1,'Bsbbsbd',0,1),(50,'2024-01-14','2024-01-14',NULL,1,'Ê đăng hìn đc nghe',0,1);
/*!40000 ALTER TABLE `social_media_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_postimage`
--

DROP TABLE IF EXISTS `social_media_postimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_postimage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `post_image_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_media_postimage_post_id_c78cdf02_fk_social_media_post_id` (`post_id`),
  CONSTRAINT `social_media_postimage_post_id_c78cdf02_fk_social_media_post_id` FOREIGN KEY (`post_id`) REFERENCES `social_media_post` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_postimage`
--

LOCK TABLES `social_media_postimage` WRITE;
/*!40000 ALTER TABLE `social_media_postimage` DISABLE KEYS */;
INSERT INTO `social_media_postimage` VALUES (1,'2023-12-05','2023-12-05','2023-12-05',1,'images/post_images/2023/12/FURINA.png',9),(2,'2023-12-05','2023-12-05','2023-12-05',1,'images/post_images/2023/12/Screenshot_2023-11-09_011731_qYfvcnH.png',9),(3,'2023-12-05','2023-12-05','2023-12-05',1,'images/post_images/2023/12/Screenshot_2023-12-02_163517_859smi0.png',9),(4,'2023-12-10','2023-12-10','2023-12-10',0,'images/post_images/2023/12/2172227.jpg',11),(5,'2023-12-10','2023-12-10','2023-12-10',0,'images/post_images/2023/12/2172227.jpg',11),(6,'2023-12-10','2023-12-10','2023-12-10',1,'images/post_images/2023/12/Screenshot_2023-12-02_163517_gIEG6wZ.png',11),(7,'2023-12-10','2023-12-10','2023-12-10',1,'images/post_images/2023/12/2172227.jpg',11),(8,'2023-12-10','2023-12-10','2023-12-10',1,'images/post_images/2023/12/2172227.jpg',11),(9,'2023-12-10','2023-12-10','2023-12-10',1,'images/post_images/2023/12/Screenshot_2023-12-10_195600.png',11),(10,'2023-12-10','2023-12-10','2023-12-10',1,'images/post_images/2023/12/2172227.jpg',11),(11,'2023-12-10','2023-12-10','2023-12-10',1,'images/post_images/2023/12/2172227.jpg',11),(12,'2023-12-10','2023-12-10','2023-12-10',1,'images/post_images/2023/12/2172227.jpg',11),(13,'2023-12-10','2023-12-10','2023-12-10',1,'images/post_images/2023/12/2172227.jpg',11),(14,'2023-12-10','2023-12-10','2023-12-10',1,'images/post_images/2023/12/Screenshot_2023-12-10_195600_hE8Apix.png',11),(15,'2023-12-10','2023-12-10','2023-12-10',1,'images/post_images/2023/12/2172227.jpg',11),(16,'2023-12-10','2023-12-10','2023-12-10',1,'images/post_images/2023/12/2172227.jpg',11),(42,'2023-12-23','2023-12-23',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1703342212/pphulgax6qbzuawood8s.jpg',1),(43,'2023-12-23','2023-12-23',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1703342421/vf5yo2ot1w9gymv5zgrc.jpg',2),(44,'2023-12-23','2023-12-23',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1703342629/iuekurb6dwmu9hejnfxo.jpg',2),(45,'2023-12-23','2023-12-23',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1703342759/cxxgh6zdqrsdeztgxoqn.jpg',2),(46,'2023-12-23','2023-12-23',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1703343120/yc8sz1urdoimvlxn7p2t.jpg',2),(47,'2023-12-23','2023-12-23',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1703343412/l8auoh4jer9q9qyocumz.jpg',2),(48,'2023-12-26','2023-12-26',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1703579523/owjypecxe1ltli5ndc0r.jpg',3),(49,'2023-12-26','2023-12-26',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1703579523/owjypecxe1ltli5ndc0r.jpg',3),(50,'2023-12-26','2023-12-26',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1703579523/owjypecxe1ltli5ndc0r.jpg',3),(51,'2023-12-26','2023-12-26',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1703579827/hbjhsueboll1dd4ig4wh.png',3),(52,'2023-12-26','2023-12-26',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1703579880/rixj2dvjkjapnugdn4g8.jpg',3),(53,'2024-01-06','2024-01-06',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1704540032/dwwawdxeihr8udnwdfb4.jpg',47),(54,'2024-01-06','2024-01-06',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1704540577/thk7qajf3udkxlqnbisl.jpg',47),(55,'2024-01-06','2024-01-06',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1704540578/uxfsxfdsybdwrpo9sd9n.jpg',47),(56,'2024-01-06','2024-01-06',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1704540666/urceoec1ftduww287dik.jpg',47),(57,'2024-01-06','2024-01-06',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1704540667/stjg9gkusaihzlsjjsic.jpg',47),(58,'2024-01-06','2024-01-06',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1704540668/lnxi6rmqrei1frkankth.jpg',47),(59,'2024-01-06','2024-01-06',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1704540771/ugl4se6ffcoupx9syoer.jpg',47),(60,'2024-01-06','2024-01-06',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1704540772/oybmhozyrazb2i5k7eau.jpg',47),(61,'2024-01-06','2024-01-06',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1704540773/txbe2taqooct0cy8zxf5.jpg',47),(62,'2024-01-07','2024-01-07',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1704599173/vqhieflmnewqxvf8gpvc.jpg',47),(63,'2024-01-07','2024-01-07',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1704599174/luese3fgzhrazdrbvzrf.jpg',47),(64,'2024-01-07','2024-01-07',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1704599175/zrwmoseiewvhdovj0msk.jpg',47),(65,'2024-01-14','2024-01-14',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1705197829/j9xig11brn5m3ezakgtd.jpg',50),(66,'2024-01-14','2024-01-14',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1705197830/uni5nf562kdltj8k4ij2.jpg',50),(67,'2024-01-14','2024-01-14',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1705197832/lh4eyvji0cuzmxnohaw6.jpg',50),(68,'2024-01-14','2024-01-14',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1705197833/rnst9fyui2oi4ivqrzc6.jpg',50),(69,'2024-01-14','2024-01-14',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1705197834/m5zdrw4bd6vlbts3w6st.jpg',50),(70,'2024-01-14','2024-01-14',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1705197835/npe2xnknfwvcgfcdcqx0.jpg',50);
/*!40000 ALTER TABLE `social_media_postimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_postinvitation`
--

DROP TABLE IF EXISTS `social_media_postinvitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_postinvitation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `event_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `post_id` (`post_id`),
  CONSTRAINT `social_media_postinv_post_id_d49969f2_fk_social_me` FOREIGN KEY (`post_id`) REFERENCES `social_media_post` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_postinvitation`
--

LOCK TABLES `social_media_postinvitation` WRITE;
/*!40000 ALTER TABLE `social_media_postinvitation` DISABLE KEYS */;
INSERT INTO `social_media_postinvitation` VALUES (1,'2023-12-05','2023-12-14','2023-12-14',1,'Invitation first event','2023-12-05 02:03:12.000000','2023-12-05 02:03:13.000000',9),(2,'2023-12-14','2023-12-14','2023-12-14',1,'Post thư mời lần 2','2023-12-14 12:41:24.400000','2023-12-14 12:41:24.400000',12),(4,'2023-12-21','2023-12-21',NULL,1,'Mời mừng giáng sinh (Post Invitation)','2023-12-21 10:00:00.000000','2023-12-21 12:00:00.000000',24),(5,'2023-12-21','2023-12-21',NULL,1,'Mời mừng giáng sinh 2 (Post Invitation 2)','2023-12-21 10:00:00.000000','2023-12-21 12:00:00.000000',25),(6,'2024-01-14','2024-01-14',NULL,1,'','2024-01-14 01:57:00.000000','2024-01-14 01:57:00.000000',48),(7,'2024-01-14','2024-01-14',NULL,1,'','2024-01-14 01:57:00.000000','2024-01-14 01:57:00.000000',49);
/*!40000 ALTER TABLE `social_media_postinvitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_postinvitation_accounts`
--

DROP TABLE IF EXISTS `social_media_postinvitation_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_postinvitation_accounts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `postinvitation_id` bigint(20) NOT NULL,
  `account_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_media_postinvitat_postinvitation_id_accoun_68235e57_uniq` (`postinvitation_id`,`account_id`),
  KEY `social_media_postinv_account_id_a29d298c_fk_social_me` (`account_id`),
  CONSTRAINT `social_media_postinv_account_id_a29d298c_fk_social_me` FOREIGN KEY (`account_id`) REFERENCES `social_media_account` (`id`),
  CONSTRAINT `social_media_postinv_postinvitation_id_fca7cc95_fk_social_me` FOREIGN KEY (`postinvitation_id`) REFERENCES `social_media_postinvitation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_postinvitation_accounts`
--

LOCK TABLES `social_media_postinvitation_accounts` WRITE;
/*!40000 ALTER TABLE `social_media_postinvitation_accounts` DISABLE KEYS */;
INSERT INTO `social_media_postinvitation_accounts` VALUES (11,1,4),(7,1,5),(8,1,7),(14,2,4),(15,2,5),(16,2,7),(18,6,1),(19,7,1);
/*!40000 ALTER TABLE `social_media_postinvitation_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_postreaction`
--

DROP TABLE IF EXISTS `social_media_postreaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_postreaction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `reaction_id` bigint(20) NOT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_media_postrea_post_id_33171a86_fk_social_me` (`post_id`),
  KEY `social_media_postrea_reaction_id_b79c36c9_fk_social_me` (`reaction_id`),
  KEY `social_media_postrea_account_id_64ecc229_fk_social_me` (`account_id`),
  CONSTRAINT `social_media_postrea_account_id_64ecc229_fk_social_me` FOREIGN KEY (`account_id`) REFERENCES `social_media_account` (`id`),
  CONSTRAINT `social_media_postrea_post_id_33171a86_fk_social_me` FOREIGN KEY (`post_id`) REFERENCES `social_media_post` (`id`),
  CONSTRAINT `social_media_postrea_reaction_id_b79c36c9_fk_social_me` FOREIGN KEY (`reaction_id`) REFERENCES `social_media_reaction` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_postreaction`
--

LOCK TABLES `social_media_postreaction` WRITE;
/*!40000 ALTER TABLE `social_media_postreaction` DISABLE KEYS */;
INSERT INTO `social_media_postreaction` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,1,2,1),(2,'2023-12-12','2023-12-12','2023-12-12',1,2,1,2),(3,'2023-12-17','2023-12-17','2023-12-17',1,14,3,4),(4,'2023-12-17','2023-12-17','2023-12-17',1,14,2,7),(5,'2023-12-17','2023-12-17','2023-12-17',1,13,5,7),(6,'2023-12-17','2023-12-17','2023-12-17',1,14,3,2),(7,'2023-12-17','2023-12-17','2023-12-17',1,13,1,5),(8,'2023-12-17','2023-12-17','2023-12-17',1,14,4,3);
/*!40000 ALTER TABLE `social_media_postreaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_postsurvey`
--

DROP TABLE IF EXISTS `social_media_postsurvey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_postsurvey` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `post_survey_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `is_closed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `post_id` (`post_id`),
  CONSTRAINT `social_media_postsurvey_post_id_8b5475b0_fk_social_media_post_id` FOREIGN KEY (`post_id`) REFERENCES `social_media_post` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_postsurvey`
--

LOCK TABLES `social_media_postsurvey` WRITE;
/*!40000 ALTER TABLE `social_media_postsurvey` DISABLE KEYS */;
INSERT INTO `social_media_postsurvey` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,'Khảo sát GPA','2023-12-02 13:11:23.000000','2023-12-02 13:11:24.000000',8,0),(2,'2023-12-16','2023-12-16','2023-12-16',1,'Khảo sát về độ tiện dụng của Swagger','2023-12-16 10:38:28.415000','2023-12-16 10:38:28.415000',14,1),(6,'2023-12-21','2023-12-21',NULL,1,'Khảo sát chất lượng giảng viên','2023-12-21 12:00:00.000000','2023-12-21 12:00:00.000000',19,0),(7,'2023-12-21','2023-12-21',NULL,1,'Khảo sát chất lượng giảng viên 2','2023-12-21 12:00:00.000000','2023-12-21 12:00:00.000000',20,0),(8,'2023-12-21','2023-12-21',NULL,1,'Khảo sát chất lượng giảng viên C','2023-12-21 10:46:28.771000','2023-12-21 10:46:28.771000',21,0),(9,'2023-12-21','2023-12-31',NULL,1,'Khảo sát chất lượng giảng viên D real','2023-12-21 10:46:28.000000','2023-12-21 10:46:28.000000',22,0),(10,'2023-12-26','2023-12-26',NULL,1,'Alo','2023-12-26 16:28:00.000000','2023-12-26 16:28:00.000000',28,0),(11,'2023-12-26','2023-12-26',NULL,1,'Alo','2023-12-26 16:28:00.000000','2023-12-26 16:28:00.000000',29,0),(12,'2023-12-26','2023-12-26',NULL,1,'Alo1','2023-12-26 16:59:00.000000','2023-12-26 16:59:00.000000',30,0),(13,'2023-12-27','2023-12-27',NULL,1,'Alo1','2023-12-26 16:59:00.000000','2023-12-26 16:59:00.000000',31,0),(14,'2023-12-27','2023-12-27',NULL,1,'Alo1','2023-12-26 16:59:00.000000','2023-12-26 16:59:00.000000',32,0),(15,'2023-12-27','2023-12-27',NULL,1,'Alo1','2023-12-26 16:59:00.000000','2023-12-26 16:59:00.000000',33,0),(16,'2023-12-29','2023-12-31',NULL,1,'Khảo sát chất lượng giảng viên D1','2023-12-21 10:46:28.000000','2023-12-21 10:46:28.000000',34,0),(17,'2023-12-29','2023-12-31',NULL,1,'Khảo sát chất lượng giảng viên D2','2023-12-21 10:46:28.000000','2023-12-21 10:46:28.000000',35,0),(18,'2023-12-29','2023-12-29',NULL,1,'Khảo sát chất lượng giảng viên E','2023-12-21 10:46:28.771000','2023-12-21 10:46:28.771000',36,0),(19,'2023-12-29','2023-12-29',NULL,1,'Khảo sát chất lượng giảng viên E','2023-12-21 10:46:28.771000','2023-12-21 10:46:28.771000',37,0),(20,'2023-12-29','2023-12-29',NULL,1,'Khảo sát chất lượng giảng viên E','2023-12-21 10:46:28.771000','2023-12-21 10:46:28.771000',38,0),(21,'2023-12-29','2023-12-29',NULL,1,'Khảo sát chất lượng giảng viên E','2023-12-21 10:46:28.771000','2023-12-21 10:46:28.771000',39,0),(22,'2023-12-29','2023-12-29',NULL,1,'Khảo sát chất lượng giảng viên E','2023-12-21 10:46:28.771000','2023-12-21 10:46:28.771000',40,0),(23,'2024-01-01','2024-01-01',NULL,1,'Khảo sát nhạc Tết','2024-01-01 02:27:16.000000','2024-01-01 02:27:18.000000',41,0);
/*!40000 ALTER TABLE `social_media_postsurvey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_reaction`
--

DROP TABLE IF EXISTS `social_media_reaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_reaction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `reaction_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_reaction`
--

LOCK TABLES `social_media_reaction` WRITE;
/*!40000 ALTER TABLE `social_media_reaction` DISABLE KEYS */;
INSERT INTO `social_media_reaction` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,'LIKE'),(2,'2023-12-02','2023-12-02','2023-12-02',1,'LOVE'),(3,'2023-12-02','2023-12-02','2023-12-02',1,'HAHA'),(4,'2023-12-02','2023-12-02','2023-12-02',1,'SAD'),(5,'2023-12-02','2023-12-02','2023-12-02',1,'ANGRY');
/*!40000 ALTER TABLE `social_media_reaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_role`
--

DROP TABLE IF EXISTS `social_media_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_role`
--

LOCK TABLES `social_media_role` WRITE;
/*!40000 ALTER TABLE `social_media_role` DISABLE KEYS */;
INSERT INTO `social_media_role` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,'Admin'),(2,'2023-12-02','2023-12-02','2023-12-02',1,'Lecturer'),(3,'2023-12-02','2023-12-02','2023-12-02',1,'Alumni');
/*!40000 ALTER TABLE `social_media_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_room`
--

DROP TABLE IF EXISTS `social_media_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_room` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `first_user_id` bigint(20) DEFAULT NULL,
  `second_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_media_room_first_user_id_second_user_id_53274e82_uniq` (`first_user_id`,`second_user_id`),
  KEY `social_media_room_second_user_id_5ec03e85_fk_social_me` (`second_user_id`),
  CONSTRAINT `social_media_room_first_user_id_c2e77fd7_fk_social_me` FOREIGN KEY (`first_user_id`) REFERENCES `social_media_account` (`id`),
  CONSTRAINT `social_media_room_second_user_id_5ec03e85_fk_social_me` FOREIGN KEY (`second_user_id`) REFERENCES `social_media_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_room`
--

LOCK TABLES `social_media_room` WRITE;
/*!40000 ALTER TABLE `social_media_room` DISABLE KEYS */;
INSERT INTO `social_media_room` VALUES (5,'2024-01-19','2024-01-19','2024-01-19',1,1,2),(6,'2024-01-19','2024-01-19','2024-01-19',1,2,3),(7,'2024-01-19','2024-01-19',NULL,1,4,2);
/*!40000 ALTER TABLE `social_media_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_surveyanswer`
--

DROP TABLE IF EXISTS `social_media_surveyanswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_surveyanswer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `answer_value` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `survey_question_id` bigint(20) NOT NULL,
  `survey_response_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_media_surveya_survey_question_id_1dafa1b7_fk_social_me` (`survey_question_id`),
  KEY `social_media_surveya_survey_response_id_91ba8f7c_fk_social_me` (`survey_response_id`),
  CONSTRAINT `social_media_surveya_survey_question_id_1dafa1b7_fk_social_me` FOREIGN KEY (`survey_question_id`) REFERENCES `social_media_surveyquestion` (`id`),
  CONSTRAINT `social_media_surveya_survey_response_id_91ba8f7c_fk_social_me` FOREIGN KEY (`survey_response_id`) REFERENCES `social_media_surveyresponse` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_surveyanswer`
--

LOCK TABLES `social_media_surveyanswer` WRITE;
/*!40000 ALTER TABLE `social_media_surveyanswer` DISABLE KEYS */;
INSERT INTO `social_media_surveyanswer` VALUES (4,'2023-12-02','2023-12-17','2023-12-17',1,NULL,1,1),(5,'2023-12-02','2023-12-17','2023-12-17',1,NULL,2,1),(6,'2023-12-02','2023-12-02','2023-12-02',1,'Học anh Thành quá đẳng cấp nên GPA cao',3,1),(7,'2023-12-16','2023-12-17','2023-12-17',1,NULL,4,2),(8,'2023-12-17','2023-12-17','2023-12-17',1,NULL,4,3),(9,'2023-12-17','2023-12-17','2023-12-17',1,NULL,5,4),(10,'2023-12-17','2023-12-17','2023-12-17',1,'string',5,5),(11,'2023-12-26','2023-12-26',NULL,1,'',18,12),(12,'2023-12-26','2023-12-26',NULL,1,'',19,12),(13,'2023-12-26','2023-12-26',NULL,1,'',18,13),(14,'2023-12-26','2023-12-26',NULL,1,'',19,13),(15,'2023-12-28','2023-12-28',NULL,1,'',18,14),(16,'2023-12-28','2023-12-28',NULL,1,'',19,14),(17,'2023-12-28','2023-12-28',NULL,1,'',18,15),(18,'2023-12-28','2023-12-28',NULL,1,NULL,19,15),(19,'2023-12-28','2023-12-28',NULL,1,'',18,16),(20,'2023-12-28','2023-12-28',NULL,1,NULL,19,16),(21,'2024-01-01','2024-01-01',NULL,1,NULL,34,17),(22,'2024-01-01','2024-01-01',NULL,1,NULL,34,18),(23,'2024-01-01','2024-01-01',NULL,1,'Cũng thú vị',37,20),(24,'2024-01-01','2024-01-01',NULL,1,'Cũng vui nè',36,17),(25,'2024-01-01','2024-01-01',NULL,1,NULL,35,20),(26,'2024-01-01','2024-01-01',NULL,1,NULL,34,19),(27,'2024-01-01','2024-01-01',NULL,1,'Tịnh tâm',37,18),(28,'2024-01-01','2024-01-01',NULL,1,'Ngộ lắm cả nhà',37,17),(29,'2024-01-01','2024-01-01',NULL,1,'Nam mô, nam mô',37,21),(30,'2024-01-01','2024-01-01',NULL,1,'Dô tri',37,19);
/*!40000 ALTER TABLE `social_media_surveyanswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_surveyquestion`
--

DROP TABLE IF EXISTS `social_media_surveyquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_surveyquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `question_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_order` int(11) NOT NULL,
  `post_survey_id` bigint(20) NOT NULL,
  `survey_question_type_id` bigint(20) NOT NULL,
  `is_required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_media_surveyq_survey_question_type_29e9c43e_fk_social_me` (`survey_question_type_id`),
  KEY `social_media_surveyq_post_survey_id_b5e1b2c4_fk_social_me` (`post_survey_id`),
  CONSTRAINT `social_media_surveyq_post_survey_id_b5e1b2c4_fk_social_me` FOREIGN KEY (`post_survey_id`) REFERENCES `social_media_postsurvey` (`id`),
  CONSTRAINT `social_media_surveyq_survey_question_type_29e9c43e_fk_social_me` FOREIGN KEY (`survey_question_type_id`) REFERENCES `social_media_surveyquestiontype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_surveyquestion`
--

LOCK TABLES `social_media_surveyquestion` WRITE;
/*!40000 ALTER TABLE `social_media_surveyquestion` DISABLE KEYS */;
INSERT INTO `social_media_surveyquestion` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,'GPA của bạn là bao nhiêu ( checkbox question )?',0,1,3,0),(2,'2023-12-02','2023-12-02','2023-12-02',1,'Tại sao bạn được GPA như zậy? (multi choice)',0,1,1,0),(3,'2023-12-02','2023-12-02','2023-12-02',1,'Bạn có cảm nghĩ gì về GPA bạn đạt được? (input text)',0,1,2,0),(4,'2023-12-16','2023-12-16','2023-12-16',1,'Xài swagger có tuyệt không?',1,2,1,1),(5,'2023-12-17','2023-12-17','2023-12-17',1,'Những lý do nào mà bạn thích swagger?',0,2,3,1),(12,'2023-12-21','2023-12-21',NULL,1,'Giảng viên A thế nào',1,6,1,1),(13,'2023-12-21','2023-12-21',NULL,1,'Bạn thích điều gì ở giảng viên A',2,6,3,1),(14,'2023-12-21','2023-12-21',NULL,1,'Giảng viên B thế nào',1,7,1,1),(15,'2023-12-21','2023-12-21',NULL,1,'Bạn thích điều gì ở giảng viên B',2,7,3,1),(16,'2023-12-21','2023-12-21',NULL,1,'Giảng viên C thế nào',1,8,1,1),(17,'2023-12-21','2023-12-21',NULL,1,'Bạn thích điều gì ở giảng viên C',2,8,3,1),(18,'2023-12-21','2023-12-21',NULL,1,'Giảng viên D thế nào',1,9,1,1),(19,'2023-12-21','2023-12-21',NULL,1,'Bạn thích điều gì ở giảng viên D',2,9,3,1),(20,'2023-12-29','2023-12-29',NULL,1,'Giảng viên D thế nào',1,16,1,1),(21,'2023-12-29','2023-12-29',NULL,1,'Bạn thích điều gì ở giảng viên D',2,16,3,1),(22,'2023-12-29','2023-12-29',NULL,1,'Giảng viên D thế nào',1,17,1,1),(23,'2023-12-29','2023-12-29',NULL,1,'Bạn thích điều gì ở giảng viên D',2,17,3,1),(24,'2023-12-29','2023-12-29',NULL,1,'Giảng viên E thế nào',1,18,1,1),(25,'2023-12-29','2023-12-29',NULL,1,'Bạn thích điều gì ở giảng viên E',2,18,3,1),(26,'2023-12-29','2023-12-29',NULL,1,'Giảng viên E thế nào',1,19,1,1),(27,'2023-12-29','2023-12-29',NULL,1,'Bạn thích điều gì ở giảng viên E',2,19,3,1),(28,'2023-12-29','2023-12-29',NULL,1,'Giảng viên E thế nào>',1,20,1,1),(29,'2023-12-29','2023-12-29',NULL,1,'Bạn thích điều gì ở giảng viên E',2,20,3,1),(30,'2023-12-29','2023-12-29',NULL,1,'Giảng viên E thế nào>',1,21,1,1),(31,'2023-12-29','2023-12-29',NULL,1,'Bạn thích điều gì ở giảng viên E',2,21,3,1),(32,'2023-12-29','2023-12-29',NULL,1,'Giảng viên E thế nào',1,22,1,1),(33,'2023-12-29','2023-12-29',NULL,1,'Bạn thích điều gì ở giảng viên E',2,22,3,1),(34,'2024-01-01','2024-01-01',NULL,1,'Bạn thích bài hát nào?',1,23,3,0),(35,'2024-01-01','2024-01-01',NULL,1,'Bài muốn lì xì bao nhiêu?',2,23,1,0),(36,'2024-01-01','2024-01-01',NULL,1,'Cảm nghĩ của bạn khi qua năm mới?',3,23,2,0),(37,'2024-01-01','2024-01-01',NULL,1,'Bạn nghĩ gì về việc đi chùa?',4,23,2,0);
/*!40000 ALTER TABLE `social_media_surveyquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_surveyquestionoption`
--

DROP TABLE IF EXISTS `social_media_surveyquestionoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_surveyquestionoption` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `question_option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_option_order` int(11) NOT NULL,
  `survey_question_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_media_surveyq_survey_question_id_da5c9957_fk_social_me` (`survey_question_id`),
  CONSTRAINT `social_media_surveyq_survey_question_id_da5c9957_fk_social_me` FOREIGN KEY (`survey_question_id`) REFERENCES `social_media_surveyquestion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_surveyquestionoption`
--

LOCK TABLES `social_media_surveyquestionoption` WRITE;
/*!40000 ALTER TABLE `social_media_surveyquestionoption` DISABLE KEYS */;
INSERT INTO `social_media_surveyquestionoption` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,'1.0',0,1),(2,'2023-12-02','2023-12-02','2023-12-02',1,'2.0',0,1),(3,'2023-12-02','2023-12-02','2023-12-02',1,'3.0',0,1),(4,'2023-12-02','2023-12-02','2023-12-02',1,'4.0',0,1),(5,'2023-12-02','2023-12-02','2023-12-02',1,'Vì học anh Thành',0,2),(6,'2023-12-02','2023-12-17','2023-12-17',1,'Vì học PC CÔNG :)',0,2),(7,'2023-12-16','2023-12-16','2023-12-16',1,'Tuyệt',0,4),(8,'2023-12-16','2023-12-16','2023-12-16',1,'Hơi tuyệt',0,4),(9,'2023-12-16','2023-12-16','2023-12-16',1,'Bình thường',0,4),(10,'2023-12-17','2023-12-17','2023-12-17',1,'Vì swagger đẹp',0,5),(11,'2023-12-17','2023-12-17','2023-12-17',1,'Vì swagger tiện lợi',1,5),(12,'2023-12-17','2023-12-17','2023-12-17',1,'Vì thầy bắt xài :v',2,5),(13,'2023-12-21','2023-12-21',NULL,1,'Tốt',1,12),(14,'2023-12-21','2023-12-21',NULL,1,'Bình thường',2,12),(15,'2023-12-21','2023-12-21',NULL,1,'tệ',3,12),(16,'2023-12-21','2023-12-21',NULL,1,'Hiền',1,13),(17,'2023-12-21','2023-12-21',NULL,1,'Nhân hậu',2,13),(18,'2023-12-21','2023-12-21',NULL,1,'Giỏi',3,13),(19,'2023-12-21','2023-12-21',NULL,1,'Cũng được',1,14),(20,'2023-12-21','2023-12-21',NULL,1,'Cũng tạm',2,14),(21,'2023-12-21','2023-12-21',NULL,1,'Chê',3,14),(22,'2023-12-21','2023-12-21',NULL,1,'Không biết',1,15),(23,'2023-12-21','2023-12-21',NULL,1,'Ai biết',2,15),(24,'2023-12-21','2023-12-21',NULL,1,'Biết gì đâu mà hỏi',3,15),(25,'2023-12-21','2023-12-21',NULL,1,'Tốt',1,16),(26,'2023-12-21','2023-12-21',NULL,1,'Bình thường',2,16),(27,'2023-12-21','2023-12-21',NULL,1,'tệ',3,16),(28,'2023-12-21','2023-12-21',NULL,1,'Hiền',1,17),(29,'2023-12-21','2023-12-21',NULL,1,'Nhân hậu',2,17),(30,'2023-12-21','2023-12-21',NULL,1,'Giỏi',3,17),(31,'2023-12-21','2023-12-21',NULL,1,'Tốt',1,18),(32,'2023-12-21','2023-12-21',NULL,1,'Bình thường',2,18),(33,'2023-12-21','2023-12-21',NULL,1,'tệ',3,18),(34,'2023-12-21','2023-12-21',NULL,1,'Hiền',1,19),(35,'2023-12-21','2023-12-21',NULL,1,'Nhân hậu',2,19),(36,'2023-12-21','2023-12-21',NULL,1,'Giỏi',3,19),(37,'2023-12-29','2023-12-29',NULL,1,'Tốt',1,20),(38,'2023-12-29','2023-12-29',NULL,1,'Bình thường',2,20),(39,'2023-12-29','2023-12-29',NULL,1,'tệ',3,20),(40,'2023-12-29','2023-12-29',NULL,1,'Hiền',1,21),(41,'2023-12-29','2023-12-29',NULL,1,'Nhân hậu',2,21),(42,'2023-12-29','2023-12-29',NULL,1,'Giỏi',3,21),(43,'2023-12-29','2023-12-29',NULL,1,'Tốt',1,22),(44,'2023-12-29','2023-12-29',NULL,1,'Bình thường',2,22),(45,'2023-12-29','2023-12-29',NULL,1,'tệ',3,22),(46,'2023-12-29','2023-12-29',NULL,1,'Hiền',1,23),(47,'2023-12-29','2023-12-29',NULL,1,'Nhân hậu',2,23),(48,'2023-12-29','2023-12-29',NULL,1,'Giỏi',3,23),(49,'2023-12-29','2023-12-29',NULL,1,'Tốt',1,24),(50,'2023-12-29','2023-12-29',NULL,1,'Bình thường',2,24),(51,'2023-12-29','2023-12-29',NULL,1,'tệ',3,24),(52,'2023-12-29','2023-12-29',NULL,1,'Hiền',1,25),(53,'2023-12-29','2023-12-29',NULL,1,'Nhân hậu',2,25),(54,'2023-12-29','2023-12-29',NULL,1,'Giỏi',3,25),(55,'2023-12-29','2023-12-29',NULL,1,'Tốt<',1,26),(56,'2023-12-29','2023-12-29',NULL,1,'Bình thường',2,26),(57,'2023-12-29','2023-12-29',NULL,1,'tệ',3,26),(58,'2023-12-29','2023-12-29',NULL,1,'Hiền',1,27),(59,'2023-12-29','2023-12-29',NULL,1,'Nhân hậu',2,27),(60,'2023-12-29','2023-12-29',NULL,1,'Giỏi',3,27),(61,'2023-12-29','2023-12-29',NULL,1,'Tốt',1,28),(62,'2023-12-29','2023-12-29',NULL,1,'Bình thường',2,28),(63,'2023-12-29','2023-12-29',NULL,1,'tệ',3,28),(64,'2023-12-29','2023-12-29',NULL,1,'Hiền',1,29),(65,'2023-12-29','2023-12-29',NULL,1,'Nhân hậu',2,29),(66,'2023-12-29','2023-12-29',NULL,1,'Giỏi',3,29),(67,'2023-12-29','2023-12-29',NULL,1,'Tốt',1,30),(68,'2023-12-29','2023-12-29',NULL,1,'Bình thường',2,30),(69,'2023-12-29','2023-12-29',NULL,1,'tệ',3,30),(70,'2023-12-29','2023-12-29',NULL,1,'Hiền',1,31),(71,'2023-12-29','2023-12-29',NULL,1,'Nhân hậu',2,31),(72,'2023-12-29','2023-12-29',NULL,1,'Giỏi',3,31),(73,'2023-12-29','2023-12-29',NULL,1,'Tốt',1,32),(74,'2023-12-29','2023-12-29',NULL,1,'Bình thường',2,32),(75,'2023-12-29','2023-12-29',NULL,1,'tệ',3,32),(76,'2023-12-29','2023-12-29',NULL,1,'Hiền',1,33),(77,'2023-12-29','2023-12-29',NULL,1,'Nhân hậu',2,33),(78,'2023-12-29','2023-12-29',NULL,1,'Giỏi',3,33),(79,'2024-01-01','2024-01-01',NULL,1,'Tết đến rồi',1,34),(80,'2024-01-01','2024-01-01',NULL,1,'Rồng bay phượng múa',2,34),(81,'2024-01-01','2024-01-01',NULL,1,'Lì xì nè',3,34),(82,'2024-01-01','2024-01-01',NULL,1,'Mua áo đỏ',4,34),(83,'2024-01-01','2024-01-01',NULL,1,'10 củ',1,35),(84,'2024-01-01','2024-01-01',NULL,1,'20 củ',2,35),(85,'2024-01-01','2024-01-01',NULL,1,'30 củ',3,35);
/*!40000 ALTER TABLE `social_media_surveyquestionoption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_surveyquestionoption_survey_answers`
--

DROP TABLE IF EXISTS `social_media_surveyquestionoption_survey_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_surveyquestionoption_survey_answers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `surveyquestionoption_id` bigint(20) NOT NULL,
  `surveyanswer_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_media_surveyquest_surveyquestionoption_id__8d4a8b2c_uniq` (`surveyquestionoption_id`,`surveyanswer_id`),
  KEY `social_media_surveyq_surveyanswer_id_bca37255_fk_social_me` (`surveyanswer_id`),
  CONSTRAINT `social_media_surveyq_surveyanswer_id_bca37255_fk_social_me` FOREIGN KEY (`surveyanswer_id`) REFERENCES `social_media_surveyanswer` (`id`),
  CONSTRAINT `social_media_surveyq_surveyquestionoption_5bbecb6f_fk_social_me` FOREIGN KEY (`surveyquestionoption_id`) REFERENCES `social_media_surveyquestionoption` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_surveyquestionoption_survey_answers`
--

LOCK TABLES `social_media_surveyquestionoption_survey_answers` WRITE;
/*!40000 ALTER TABLE `social_media_surveyquestionoption_survey_answers` DISABLE KEYS */;
INSERT INTO `social_media_surveyquestionoption_survey_answers` VALUES (1,1,4),(2,2,4),(3,3,4),(4,5,5),(5,9,7),(6,10,9),(9,10,10),(7,11,9),(10,11,10),(8,12,9),(11,32,13),(15,32,15),(19,32,17),(23,32,19),(12,34,14),(16,34,16),(20,34,18),(24,34,20),(13,35,14),(17,35,16),(21,35,18),(25,35,20),(14,36,14),(18,36,16),(22,36,18),(26,36,20),(28,79,21),(32,79,26),(27,80,21),(30,80,22),(33,81,26),(29,82,21),(31,85,25);
/*!40000 ALTER TABLE `social_media_surveyquestionoption_survey_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_surveyquestiontype`
--

DROP TABLE IF EXISTS `social_media_surveyquestiontype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_surveyquestiontype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `question_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_surveyquestiontype`
--

LOCK TABLES `social_media_surveyquestiontype` WRITE;
/*!40000 ALTER TABLE `social_media_surveyquestiontype` DISABLE KEYS */;
INSERT INTO `social_media_surveyquestiontype` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,'MULTIPLE CHOICE QUESTION'),(2,'2023-12-02','2023-12-02','2023-12-02',1,'INPUT TEXT QUESTION'),(3,'2023-12-02','2023-12-02','2023-12-02',1,'CHECKBOX QUESTION');
/*!40000 ALTER TABLE `social_media_surveyquestiontype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_surveyresponse`
--

DROP TABLE IF EXISTS `social_media_surveyresponse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_surveyresponse` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `post_survey_id` bigint(20) NOT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_media_surveyr_post_survey_id_4c3aec1c_fk_social_me` (`post_survey_id`),
  KEY `social_media_surveyr_account_id_0098cd24_fk_social_me` (`account_id`),
  CONSTRAINT `social_media_surveyr_account_id_0098cd24_fk_social_me` FOREIGN KEY (`account_id`) REFERENCES `social_media_account` (`id`),
  CONSTRAINT `social_media_surveyr_post_survey_id_4c3aec1c_fk_social_me` FOREIGN KEY (`post_survey_id`) REFERENCES `social_media_postsurvey` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_surveyresponse`
--

LOCK TABLES `social_media_surveyresponse` WRITE;
/*!40000 ALTER TABLE `social_media_surveyresponse` DISABLE KEYS */;
INSERT INTO `social_media_surveyresponse` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,1,2),(2,'2023-12-16','2023-12-16','2023-12-16',1,2,2),(3,'2023-12-17','2023-12-17','2023-12-17',1,2,4),(4,'2023-12-17','2023-12-17','2023-12-17',1,2,5),(5,'2023-12-17','2023-12-17','2023-12-17',1,2,3),(6,'2023-12-26','2023-12-26',NULL,1,9,1),(7,'2023-12-26','2023-12-26',NULL,1,9,1),(8,'2023-12-26','2023-12-26',NULL,1,9,1),(9,'2023-12-26','2023-12-26',NULL,1,9,1),(10,'2023-12-26','2023-12-26',NULL,1,9,1),(11,'2023-12-26','2023-12-26',NULL,1,9,1),(12,'2023-12-26','2023-12-26',NULL,1,9,1),(13,'2023-12-26','2023-12-26',NULL,1,9,2),(14,'2023-12-28','2023-12-28',NULL,1,9,2),(15,'2023-12-28','2023-12-28',NULL,1,9,3),(16,'2023-12-28','2023-12-28',NULL,1,9,4),(17,'2024-01-01','2024-01-01',NULL,1,23,1),(18,'2024-01-01','2024-01-01',NULL,1,23,5),(19,'2024-01-01','2024-01-01',NULL,1,23,34),(20,'2024-01-01','2024-01-01',NULL,1,23,7),(21,'2024-01-01','2024-01-01',NULL,1,23,12);
/*!40000 ALTER TABLE `social_media_surveyresponse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_user`
--

DROP TABLE IF EXISTS `social_media_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `confirm_status_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `social_media_user_confirm_status_id_2faf8343_fk_social_me` (`confirm_status_id`),
  CONSTRAINT `social_media_user_confirm_status_id_2faf8343_fk_social_me` FOREIGN KEY (`confirm_status_id`) REFERENCES `social_media_confirmstatus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_user`
--

LOCK TABLES `social_media_user` WRITE;
/*!40000 ALTER TABLE `social_media_user` DISABLE KEYS */;
INSERT INTO `social_media_user` VALUES (1,'pbkdf2_sha256$600000$2wYAvGMI58wUR4jfbF9Hs5$jxG3DTdYTZemo5oKYIgzmVSW91FdhbxowqxVuEZo5X8=','2024-01-21 16:14:37.662000',1,'admin','Tuan','Tran','tuantran@gmail.com',1,1,'2023-12-01 18:04:49.275061',1),(2,'pbkdf2_sha256$600000$2wYAvGMI58wUR4jfbF9Hs5$jxG3DTdYTZemo5oKYIgzmVSW91FdhbxowqxVuEZo5X8=',NULL,0,'tuan1','Tuan','Tran','tuan1@gmail.com',0,1,'2023-12-02 08:39:37.000000',1),(3,'pbkdf2_sha256$600000$2wYAvGMI58wUR4jfbF9Hs5$jxG3DTdYTZemo5oKYIgzmVSW91FdhbxowqxVuEZo5X8=',NULL,0,'tuan2','Tuan 2','Tran','tuan2@gmail.com',0,1,'2023-12-02 09:37:01.000000',1),(4,'123',NULL,0,'tuan3','Tuan 3','Tran','tuan3@gmail.com',0,1,'2023-12-02 09:40:58.000000',1),(5,'123456',NULL,0,'tuanpasswordfails','Tuan 4','password','tuan4@gmail.com',0,1,'2023-12-07 10:34:31.000000',1),(6,'123456',NULL,0,'tuanpassword1','Tuan 5','Tran','tuan5@gmail.com',0,1,'2023-12-07 10:50:19.000000',1),(7,'pbkdf2_sha256$600000$YkfAul7vg60OJHoQqLFFko$L75Dbc72umE1LYSuy7SEMoVJsHb+CDQT6srpddZxaI4=',NULL,0,'postman','postman','postman','postman@gmail.com',0,1,'2023-12-07 15:30:00.123456',1),(8,'pbkdf2_sha256$600000$vlqLe1BNU6f0YF1TdG6Kan$WHVSVcbHaZ07dg1Ha4cq/GTLqjJUZmHjB1ij44gzhUQ=',NULL,0,'tuan6','Tuan 6','Tuan','tuan6@example.com',0,1,'2023-12-10 11:42:43.323435',1),(9,'pbkdf2_sha256$600000$6iyM47wsGvy9txISvvRGkB$HgxapVMM08GYlIrOuhR33iGxTlCnbo87PFI3nNjJx4Y=',NULL,0,'tuan7','Tuan 7','Tran','',0,1,'2023-12-10 11:44:01.087788',1),(10,'password',NULL,0,'username','first_name','last_name','email@gmail.com',0,1,'2023-12-19 11:57:33.728490',1),(11,'pbkdf2_sha256$600000$uaJ7nQdrlc6IncdN955uzX$aGWFGd1h+FnMZpixTu7DrwMfpwanaJ3Sapucinxbhgk=',NULL,0,'username1','first_name','last_name','email@gmail.com',0,1,'2023-12-19 12:07:24.260463',1),(12,'pbkdf2_sha256$600000$mYGjYnyjJy1DHeFxccXV8z$4031NTk+hrz166ibil4DfwN5SltoLUacaRsXox15ptc=',NULL,0,'username3','first_name','last_name','email@gmail.com',0,1,'2023-12-19 12:25:40.355863',3),(13,'pbkdf2_sha256$600000$UUWQcoS1P9QcZ577p4Y7vP$kF67MbEGHVvFhIyl40k6jTIQUcD+q6yXLKK38eO/UPc=',NULL,0,'12312','string','string','string',0,1,'2023-12-19 12:32:00.927257',3),(14,'pbkdf2_sha256$600000$VdpHrMrltbNF5kc8mVRHuJ$QSBFKkNrLtCKrZNQG1SsLX2YSq558Mq8DTI+sXhKJJE=',NULL,0,'43535','string','string','string',0,1,'2023-12-19 12:33:59.352775',3),(15,'pbkdf2_sha256$600000$VdpHrMrltbNF5kc8mVRHuJ$QSBFKkNrLtCKrZNQG1SsLX2YSq558Mq8DTI+sXhKJJE=',NULL,0,'435357','string','string','string',0,1,'2023-12-19 12:33:59.352775',3),(16,'pbkdf2_sha256$600000$VdpHrMrltbNF5kc8mVRHuJ$QSBFKkNrLtCKrZNQG1SsLX2YSq558Mq8DTI+sXhKJJE=',NULL,0,'435358','string','string','string',0,1,'2023-12-19 12:33:59.352775',3),(17,'pbkdf2_sha256$600000$VdpHrMrltbNF5kc8mVRHuJ$QSBFKkNrLtCKrZNQG1SsLX2YSq558Mq8DTI+sXhKJJE=',NULL,0,'435359','string','string','string',0,1,'2023-12-19 12:33:59.352775',3),(20,'pbkdf2_sha256$600000$wp7QUCfSFsb8gnRQFJWlJl$ZNawP/31SWr1EGKkw1O7rik+ukxSfgwyVODmAuEj7eM=',NULL,0,'username4','first_name','last_name','email@gmail.com',0,1,'2023-12-28 12:16:38.671909',3),(21,'pbkdf2_sha256$600000$wp7QUCfSFsb8gnRQFJWlJl$ZNawP/31SWr1EGKkw1O7rik+ukxSfgwyVODmAuEj7eM=',NULL,0,'username5','first_name','last_name','email@gmail.com',0,1,'2023-12-28 12:16:38.671909',3),(25,'pbkdf2_sha256$600000$xAFgnX6BxTcfsm4TtBs6gw$fUOR8D35c4Foypckn8iGzlJZy5torqB79m7fw0eo9L0=',NULL,0,'username6','first_name','last_name','email@gmail.com',0,1,'2023-12-28 13:37:20.393913',3),(26,'pbkdf2_sha256$600000$M8ryyiLMybgOobfR2TQFqG$WNPHAbP0MHoUIzdg8eAYP6MSDGSWaBo1BH1ZKCuxBgw=',NULL,0,'username7','first_name','last_name','email@gmail.com',0,1,'2023-12-28 13:42:06.973048',3),(27,'pbkdf2_sha256$600000$OpxVMYIXPtnCMbn9zQ0Zhb$bnbwJCZZSL7kcRSDfnX+T2wrgil7Qr4NOh9eCfwRIr0=',NULL,0,'username8','first_name','last_name','email@gmail.com',0,1,'2023-12-28 13:47:05.798022',3),(28,'pbkdf2_sha256$600000$lOGLTL9CaxIra3whK6J72W$tKEOZjnPBqWJvBtG3VS9Ygo6OUEH3qWKL+EnxMd/o3I=',NULL,0,'username10','first_name','last_name','email@gmail.com',0,1,'2023-12-28 13:50:50.452850',3),(29,'pbkdf2_sha256$600000$kMpxIWaxEPXEb6abD4L49r$yXFIJ6XPL0sE7Qa7sAcgqi0ToA0IpKldEn8RGrw5xNQ=',NULL,0,'username11','first_name','last_name','email@gmail.com',0,1,'2023-12-28 13:59:59.344804',3),(30,'pbkdf2_sha256$600000$BnVBIbWcFOXxZ9c9TxODPb$M4VHtEQwWUuYavGax/QldI5Ozrrtt//bDxIJlPFWBM8=',NULL,0,'username13','first_name','last_name','email@gmail.com',0,1,'2023-12-31 15:37:42.916676',3),(32,'pbkdf2_sha256$600000$I1kht3DgNsslBJwA4b4MIp$a3vpO/fthQCH64yHErrTeG3p+8SgQfM5Yk+Igm1EyO4=',NULL,0,'lec123','lec','lec','lec@gmail.com',0,1,'2024-01-18 11:39:53.180269',2),(33,'pbkdf2_sha256$600000$rvQSZbuSVIdfYfrMSpDK5q$vlUjZ4oUJovgcI/e8JLT45fDl8tHFKT1aG7xloRRFgw=',NULL,0,'string','string','string','string',0,1,'2024-01-19 08:41:39.338439',1),(34,'!IiDIqP3Gy1cqwcjJhW6fEnJgNzxpOSc9e7AnSTZW','2024-01-21 17:01:06.420975',0,'2051050549tuan','Tuấn','Trần Đăng','2051050549tuan@ou.edu.vn',0,1,'2024-01-21 16:14:22.635691',3);
/*!40000 ALTER TABLE `social_media_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_user_groups`
--

DROP TABLE IF EXISTS `social_media_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL,
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

-- Dump completed on 2024-01-22  0:08:00
