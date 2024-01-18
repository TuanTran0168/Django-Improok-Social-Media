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
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add invitation group',7,'add_invitationgroup'),(26,'Can change invitation group',7,'change_invitationgroup'),(27,'Can delete invitation group',7,'delete_invitationgroup'),(28,'Can view invitation group',7,'view_invitationgroup'),(29,'Can add post',8,'add_post'),(30,'Can change post',8,'change_post'),(31,'Can delete post',8,'delete_post'),(32,'Can view post',8,'view_post'),(33,'Can add post survey',9,'add_postsurvey'),(34,'Can change post survey',9,'change_postsurvey'),(35,'Can delete post survey',9,'delete_postsurvey'),(36,'Can view post survey',9,'view_postsurvey'),(37,'Can add reaction',10,'add_reaction'),(38,'Can change reaction',10,'change_reaction'),(39,'Can delete reaction',10,'delete_reaction'),(40,'Can view reaction',10,'view_reaction'),(41,'Can add role',11,'add_role'),(42,'Can change role',11,'change_role'),(43,'Can delete role',11,'delete_role'),(44,'Can view role',11,'view_role'),(45,'Can add survey answer',12,'add_surveyanswer'),(46,'Can change survey answer',12,'change_surveyanswer'),(47,'Can delete survey answer',12,'delete_surveyanswer'),(48,'Can view survey answer',12,'view_surveyanswer'),(49,'Can add survey question',13,'add_surveyquestion'),(50,'Can change survey question',13,'change_surveyquestion'),(51,'Can delete survey question',13,'delete_surveyquestion'),(52,'Can view survey question',13,'view_surveyquestion'),(53,'Can add survey question type',14,'add_surveyquestiontype'),(54,'Can change survey question type',14,'change_surveyquestiontype'),(55,'Can delete survey question type',14,'delete_surveyquestiontype'),(56,'Can view survey question type',14,'view_surveyquestiontype'),(57,'Can add survey response',15,'add_surveyresponse'),(58,'Can change survey response',15,'change_surveyresponse'),(59,'Can delete survey response',15,'delete_surveyresponse'),(60,'Can view survey response',15,'view_surveyresponse'),(61,'Can add survey question option',16,'add_surveyquestionoption'),(62,'Can change survey question option',16,'change_surveyquestionoption'),(63,'Can delete survey question option',16,'delete_surveyquestionoption'),(64,'Can view survey question option',16,'view_surveyquestionoption'),(65,'Can add post reaction',17,'add_postreaction'),(66,'Can change post reaction',17,'change_postreaction'),(67,'Can delete post reaction',17,'delete_postreaction'),(68,'Can view post reaction',17,'view_postreaction'),(69,'Can add post invitation',18,'add_postinvitation'),(70,'Can change post invitation',18,'change_postinvitation'),(71,'Can delete post invitation',18,'delete_postinvitation'),(72,'Can view post invitation',18,'view_postinvitation'),(73,'Can add post image',19,'add_postimage'),(74,'Can change post image',19,'change_postimage'),(75,'Can delete post image',19,'delete_postimage'),(76,'Can view post image',19,'view_postimage'),(77,'Can add comment',20,'add_comment'),(78,'Can change comment',20,'change_comment'),(79,'Can delete comment',20,'delete_comment'),(80,'Can view comment',20,'view_comment'),(81,'Can add account',21,'add_account'),(82,'Can change account',21,'change_account'),(83,'Can delete account',21,'delete_account'),(84,'Can view account',21,'view_account'),(85,'Can add alumni account',22,'add_alumniaccount'),(86,'Can change alumni account',22,'change_alumniaccount'),(87,'Can delete alumni account',22,'delete_alumniaccount'),(88,'Can view alumni account',22,'view_alumniaccount'),(89,'Can add confirm status',23,'add_confirmstatus'),(90,'Can change confirm status',23,'change_confirmstatus'),(91,'Can delete confirm status',23,'delete_confirmstatus'),(92,'Can view confirm status',23,'view_confirmstatus'),(93,'Can add application',24,'add_application'),(94,'Can change application',24,'change_application'),(95,'Can delete application',24,'delete_application'),(96,'Can view application',24,'view_application'),(97,'Can add access token',25,'add_accesstoken'),(98,'Can change access token',25,'change_accesstoken'),(99,'Can delete access token',25,'delete_accesstoken'),(100,'Can view access token',25,'view_accesstoken'),(101,'Can add grant',26,'add_grant'),(102,'Can change grant',26,'change_grant'),(103,'Can delete grant',26,'delete_grant'),(104,'Can view grant',26,'view_grant'),(105,'Can add refresh token',27,'add_refreshtoken'),(106,'Can change refresh token',27,'change_refreshtoken'),(107,'Can delete refresh token',27,'delete_refreshtoken'),(108,'Can view refresh token',27,'view_refreshtoken'),(109,'Can add id token',28,'add_idtoken'),(110,'Can change id token',28,'change_idtoken'),(111,'Can delete id token',28,'delete_idtoken'),(112,'Can view id token',28,'view_idtoken'),(113,'Can add task result',29,'add_taskresult'),(114,'Can change task result',29,'change_taskresult'),(115,'Can delete task result',29,'delete_taskresult'),(116,'Can view task result',29,'view_taskresult'),(117,'Can add chord counter',30,'add_chordcounter'),(118,'Can change chord counter',30,'change_chordcounter'),(119,'Can delete chord counter',30,'delete_chordcounter'),(120,'Can view chord counter',30,'view_chordcounter'),(121,'Can add group result',31,'add_groupresult'),(122,'Can change group result',31,'change_groupresult'),(123,'Can delete group result',31,'delete_groupresult'),(124,'Can view group result',31,'view_groupresult'),(125,'Can add crontab',32,'add_crontabschedule'),(126,'Can change crontab',32,'change_crontabschedule'),(127,'Can delete crontab',32,'delete_crontabschedule'),(128,'Can view crontab',32,'view_crontabschedule'),(129,'Can add interval',33,'add_intervalschedule'),(130,'Can change interval',33,'change_intervalschedule'),(131,'Can delete interval',33,'delete_intervalschedule'),(132,'Can view interval',33,'view_intervalschedule'),(133,'Can add periodic task',34,'add_periodictask'),(134,'Can change periodic task',34,'change_periodictask'),(135,'Can delete periodic task',34,'delete_periodictask'),(136,'Can view periodic task',34,'view_periodictask'),(137,'Can add periodic tasks',35,'add_periodictasks'),(138,'Can change periodic tasks',35,'change_periodictasks'),(139,'Can delete periodic tasks',35,'delete_periodictasks'),(140,'Can view periodic tasks',35,'view_periodictasks'),(141,'Can add solar event',36,'add_solarschedule'),(142,'Can change solar event',36,'change_solarschedule'),(143,'Can delete solar event',36,'delete_solarschedule'),(144,'Can view solar event',36,'view_solarschedule'),(145,'Can add clocked',37,'add_clockedschedule'),(146,'Can change clocked',37,'change_clockedschedule'),(147,'Can delete clocked',37,'delete_clockedschedule'),(148,'Can view clocked',37,'view_clockedschedule'),(149,'Can add message',38,'add_message'),(150,'Can change message',38,'change_message'),(151,'Can delete message',38,'delete_message'),(152,'Can view message',38,'view_message'),(153,'Can add room',39,'add_room'),(154,'Can change room',39,'change_room'),(155,'Can delete room',39,'delete_room'),(156,'Can view room',39,'view_room');
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
  `id` int NOT NULL AUTO_INCREMENT,
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
  `id` int NOT NULL AUTO_INCREMENT,
  `minute` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hour` varchar(96) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_of_week` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_of_month` varchar(124) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month_of_year` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_beat_crontabschedule`
--

LOCK TABLES `django_celery_beat_crontabschedule` WRITE;
/*!40000 ALTER TABLE `django_celery_beat_crontabschedule` DISABLE KEYS */;
INSERT INTO `django_celery_beat_crontabschedule` VALUES (1,'0','4','*','*','*','UTC'),(2,'*/1','*','*','*','*','UTC'),(3,'*/2','*','*','*','*','UTC'),(4,'*/3','*','*','*','*','UTC'),(5,'*/5','*','*','*','*','UTC');
/*!40000 ALTER TABLE `django_celery_beat_crontabschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_beat_intervalschedule`
--

DROP TABLE IF EXISTS `django_celery_beat_intervalschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_celery_beat_intervalschedule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `every` int NOT NULL,
  `period` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_beat_intervalschedule`
--

LOCK TABLES `django_celery_beat_intervalschedule` WRITE;
/*!40000 ALTER TABLE `django_celery_beat_intervalschedule` DISABLE KEYS */;
INSERT INTO `django_celery_beat_intervalschedule` VALUES (1,5,'seconds'),(2,30,'seconds');
/*!40000 ALTER TABLE `django_celery_beat_intervalschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_beat_periodictask`
--

DROP TABLE IF EXISTS `django_celery_beat_periodictask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_celery_beat_periodictask` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `args` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `kwargs` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `routing_key` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires` datetime(6) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_run_at` datetime(6) DEFAULT NULL,
  `total_run_count` int unsigned NOT NULL,
  `date_changed` datetime(6) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `crontab_id` int DEFAULT NULL,
  `interval_id` int DEFAULT NULL,
  `solar_id` int DEFAULT NULL,
  `one_off` tinyint(1) NOT NULL,
  `start_time` datetime(6) DEFAULT NULL,
  `priority` int unsigned DEFAULT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT (_utf8mb3'{}'),
  `clocked_id` int DEFAULT NULL,
  `expire_seconds` int unsigned DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_beat_periodictask`
--

LOCK TABLES `django_celery_beat_periodictask` WRITE;
/*!40000 ALTER TABLE `django_celery_beat_periodictask` DISABLE KEYS */;
INSERT INTO `django_celery_beat_periodictask` VALUES (1,'celery.backend_cleanup','celery.backend_cleanup','[]','{}',NULL,NULL,NULL,NULL,1,'2024-01-17 04:00:00.019684',1,'2024-01-17 04:39:19.986066','',1,NULL,NULL,0,NULL,NULL,'{}',NULL,43200),(8,'run-create-invitation-group','social_media.tasks.tuan_tran_create_invitation_group','[]','{}',NULL,NULL,NULL,NULL,1,'2024-01-17 04:40:36.978827',98,'2024-01-17 04:40:59.747269','',NULL,2,NULL,0,NULL,NULL,'{}',NULL,NULL);
/*!40000 ALTER TABLE `django_celery_beat_periodictask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_beat_periodictasks`
--

DROP TABLE IF EXISTS `django_celery_beat_periodictasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_celery_beat_periodictasks` (
  `ident` smallint NOT NULL,
  `last_update` datetime(6) NOT NULL,
  PRIMARY KEY (`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_beat_periodictasks`
--

LOCK TABLES `django_celery_beat_periodictasks` WRITE;
/*!40000 ALTER TABLE `django_celery_beat_periodictasks` DISABLE KEYS */;
INSERT INTO `django_celery_beat_periodictasks` VALUES (1,'2024-01-17 04:39:20.004065');
/*!40000 ALTER TABLE `django_celery_beat_periodictasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_celery_beat_solarschedule`
--

DROP TABLE IF EXISTS `django_celery_beat_solarschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_celery_beat_solarschedule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `event` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_tasks` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int unsigned NOT NULL,
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
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime(6) NOT NULL,
  `date_done` datetime(6) NOT NULL,
  `content_type` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_encoding` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` longtext COLLATE utf8mb4_unicode_ci,
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
  `id` int NOT NULL AUTO_INCREMENT,
  `task_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_encoding` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` longtext COLLATE utf8mb4_unicode_ci,
  `date_done` datetime(6) NOT NULL,
  `traceback` longtext COLLATE utf8mb4_unicode_ci,
  `meta` longtext COLLATE utf8mb4_unicode_ci,
  `task_args` longtext COLLATE utf8mb4_unicode_ci,
  `task_kwargs` longtext COLLATE utf8mb4_unicode_ci,
  `task_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `worker` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_created` datetime(6) NOT NULL,
  `periodic_task_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `django_cele_task_na_08aec9_idx` (`task_name`),
  KEY `django_cele_status_9b6201_idx` (`status`),
  KEY `django_cele_worker_d54dd8_idx` (`worker`),
  KEY `django_cele_date_cr_f04a50_idx` (`date_created`),
  KEY `django_cele_date_do_f59aad_idx` (`date_done`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_celery_results_taskresult`
--

LOCK TABLES `django_celery_results_taskresult` WRITE;
/*!40000 ALTER TABLE `django_celery_results_taskresult` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_celery_results_taskresult` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(37,'django_celery_beat','clockedschedule'),(32,'django_celery_beat','crontabschedule'),(33,'django_celery_beat','intervalschedule'),(34,'django_celery_beat','periodictask'),(35,'django_celery_beat','periodictasks'),(36,'django_celery_beat','solarschedule'),(30,'django_celery_results','chordcounter'),(31,'django_celery_results','groupresult'),(29,'django_celery_results','taskresult'),(25,'oauth2_provider','accesstoken'),(24,'oauth2_provider','application'),(26,'oauth2_provider','grant'),(28,'oauth2_provider','idtoken'),(27,'oauth2_provider','refreshtoken'),(5,'sessions','session'),(21,'social_media','account'),(22,'social_media','alumniaccount'),(20,'social_media','comment'),(23,'social_media','confirmstatus'),(7,'social_media','invitationgroup'),(38,'social_media','message'),(8,'social_media','post'),(19,'social_media','postimage'),(18,'social_media','postinvitation'),(17,'social_media','postreaction'),(9,'social_media','postsurvey'),(10,'social_media','reaction'),(11,'social_media','role'),(39,'social_media','room'),(12,'social_media','surveyanswer'),(13,'social_media','surveyquestion'),(16,'social_media','surveyquestionoption'),(14,'social_media','surveyquestiontype'),(15,'social_media','surveyresponse'),(6,'social_media','user');
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-12-03 13:30:54.317629'),(2,'contenttypes','0002_remove_content_type_name','2023-12-03 13:30:54.348880'),(3,'auth','0001_initial','2023-12-03 13:30:54.443078'),(4,'auth','0002_alter_permission_name_max_length','2023-12-03 13:30:54.474327'),(5,'auth','0003_alter_user_email_max_length','2023-12-03 13:30:54.474327'),(6,'auth','0004_alter_user_username_opts','2023-12-03 13:30:54.474327'),(7,'auth','0005_alter_user_last_login_null','2023-12-03 13:30:54.489999'),(8,'auth','0006_require_contenttypes_0002','2023-12-03 13:30:54.493041'),(9,'auth','0007_alter_validators_add_error_messages','2023-12-03 13:30:54.493041'),(10,'auth','0008_alter_user_username_max_length','2023-12-03 13:30:54.506050'),(11,'auth','0009_alter_user_last_name_max_length','2023-12-03 13:30:54.506050'),(12,'auth','0010_alter_group_name_max_length','2023-12-03 13:30:54.521712'),(13,'auth','0011_update_proxy_permissions','2023-12-03 13:30:54.521712'),(14,'auth','0012_alter_user_first_name_max_length','2023-12-03 13:30:54.537308'),(15,'social_media','0001_initial','2023-12-03 13:30:55.604673'),(16,'admin','0001_initial','2023-12-03 13:30:55.698831'),(17,'admin','0002_logentry_remove_auto_add','2023-12-03 13:30:55.714473'),(18,'admin','0003_logentry_add_action_flag_choices','2023-12-03 13:30:55.730093'),(19,'sessions','0001_initial','2023-12-03 13:30:55.776967'),(20,'social_media','0002_account_alumniaccount_confirmstatus_groupaccount_and_more','2023-12-03 13:30:57.392628'),(21,'social_media','0003_account_account_status','2023-12-03 13:30:57.440018'),(22,'social_media','0004_comment_comment_image_url_alter_account_avatar_and_more','2023-12-03 13:30:57.643949'),(23,'social_media','0005_alter_account_avatar_alter_account_cover_avatar_and_more','2023-12-03 13:30:57.740043'),(24,'social_media','0006_remove_postsurvey_post_survey_status_and_more','2023-12-03 13:30:57.863835'),(25,'social_media','0007_alter_surveyanswer_question_option_value','2023-12-03 13:30:57.879475'),(26,'social_media','0008_alter_surveyanswer_question_option_value','2023-12-03 13:30:57.895137'),(27,'social_media','0009_remove_invitationaccount_account_and_more','2023-12-03 13:30:58.413228'),(28,'social_media','0010_alter_account_group_account_and_more','2023-12-03 13:30:58.475775'),(29,'social_media','0011_alter_account_group_account_and_more','2023-12-03 13:30:58.538679'),(30,'social_media','0012_alter_comment_comment_content_and_more','2023-12-05 02:15:09.429543'),(31,'oauth2_provider','0001_initial','2023-12-09 11:28:31.801593'),(32,'oauth2_provider','0002_auto_20190406_1805','2023-12-09 11:28:31.858138'),(33,'oauth2_provider','0003_auto_20201211_1314','2023-12-09 11:28:31.939136'),(34,'oauth2_provider','0004_auto_20200902_2022','2023-12-09 11:28:32.222162'),(35,'oauth2_provider','0005_auto_20211222_2352','2023-12-09 11:28:32.304365'),(36,'oauth2_provider','0006_alter_application_client_secret','2023-12-09 11:28:32.337879'),(37,'oauth2_provider','0007_application_post_logout_redirect_uris','2023-12-09 11:28:32.402542'),(38,'social_media','0013_remove_account_group_account_and_more','2023-12-12 12:38:26.937512'),(39,'social_media','0014_rename_account_postinvitation_accounts','2023-12-12 12:41:24.296464'),(40,'social_media','0015_alter_invitationgroup_accounts_and_more','2023-12-14 09:40:33.062249'),(41,'social_media','0016_remove_surveyquestionoption_survey_answer_option_and_more','2023-12-17 06:11:51.959064'),(42,'social_media','0017_alter_account_deleted_date_alter_account_role_and_more','2023-12-19 12:24:53.381433'),(43,'social_media','0018_alter_account_deleted_date_and_more','2023-12-21 10:39:40.716880'),(44,'social_media','0019_rename_question_option_value_surveyanswer_answer_value_and_more','2023-12-31 15:23:47.923420'),(45,'social_media','0020_alter_account_date_of_birth','2024-01-06 07:36:43.296819'),(46,'django_celery_results','0001_initial','2024-01-15 16:04:44.596478'),(47,'django_celery_results','0002_add_task_name_args_kwargs','2024-01-15 16:04:44.675584'),(48,'django_celery_results','0003_auto_20181106_1101','2024-01-15 16:04:44.685365'),(49,'django_celery_results','0004_auto_20190516_0412','2024-01-15 16:04:44.857168'),(50,'django_celery_results','0005_taskresult_worker','2024-01-15 16:04:44.913681'),(51,'django_celery_results','0006_taskresult_date_created','2024-01-15 16:04:45.048193'),(52,'django_celery_results','0007_remove_taskresult_hidden','2024-01-15 16:04:45.172185'),(53,'django_celery_results','0008_chordcounter','2024-01-15 16:04:45.247158'),(54,'django_celery_results','0009_groupresult','2024-01-15 16:04:46.025654'),(55,'django_celery_results','0010_remove_duplicate_indices','2024-01-15 16:04:46.057923'),(56,'django_celery_results','0011_taskresult_periodic_task_name','2024-01-15 16:04:46.103976'),(57,'django_celery_beat','0001_initial','2024-01-16 03:15:08.850880'),(58,'django_celery_beat','0002_auto_20161118_0346','2024-01-16 03:15:08.929076'),(59,'django_celery_beat','0003_auto_20161209_0049','2024-01-16 03:15:08.944702'),(60,'django_celery_beat','0004_auto_20170221_0000','2024-01-16 03:15:08.960328'),(61,'django_celery_beat','0005_add_solarschedule_events_choices','2024-01-16 03:15:08.968993'),(62,'django_celery_beat','0006_auto_20180322_0932','2024-01-16 03:15:09.038531'),(63,'django_celery_beat','0007_auto_20180521_0826','2024-01-16 03:15:09.085474'),(64,'django_celery_beat','0008_auto_20180914_1922','2024-01-16 03:15:09.107096'),(65,'django_celery_beat','0006_auto_20180210_1226','2024-01-16 03:15:09.117110'),(66,'django_celery_beat','0006_periodictask_priority','2024-01-16 03:15:09.196058'),(67,'django_celery_beat','0009_periodictask_headers','2024-01-16 03:15:09.259398'),(68,'django_celery_beat','0010_auto_20190429_0326','2024-01-16 03:15:09.384804'),(69,'django_celery_beat','0011_auto_20190508_0153','2024-01-16 03:15:09.463733'),(70,'django_celery_beat','0012_periodictask_expire_seconds','2024-01-16 03:15:09.542277'),(71,'django_celery_beat','0013_auto_20200609_0727','2024-01-16 03:15:09.542277'),(72,'django_celery_beat','0014_remove_clockedschedule_enabled','2024-01-16 03:15:09.557900'),(73,'django_celery_beat','0015_edit_solarschedule_events_choices','2024-01-16 03:15:09.573552'),(74,'django_celery_beat','0016_alter_crontabschedule_timezone','2024-01-16 03:15:09.589149'),(75,'django_celery_beat','0017_alter_crontabschedule_month_of_year','2024-01-16 03:15:09.589149'),(76,'django_celery_beat','0018_improve_crontab_helptext','2024-01-16 03:15:09.604776'),(77,'social_media','0021_room_message','2024-01-18 10:33:51.573828'),(78,'social_media','0022_remove_message_receiver_remove_message_sender_and_more','2024-01-18 10:38:20.184889'),(79,'social_media','0023_alter_room_options_room_first_user_room_second_user_and_more','2024-01-18 11:12:35.095010'),(80,'social_media','0024_alter_message_who_sent','2024-01-18 11:14:06.043352');
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
INSERT INTO `django_session` VALUES ('4h3usc5xxkpsbatncbigzwyq5dftrc54','.eJxVjMEOwiAQRP-FsyGwBQSP3v0GsiyLVA1NSnsy_rtt0oPeJvPezFtEXJca185zHLO4CC1Ov11CenLbQX5gu0-SprbMY5K7Ig_a5W3K_Loe7t9BxV639VAyFtYuK-M9lmTAOQ96y3Q2SArYB0oBgKy1Shd0OLAKhqEYk20Qny_tJjfV:1rPyqE:USjDlte3R38zYip-egPsEYPuhs4rzv9oL9Px432d2AU','2024-01-31 05:51:58.549835'),('8uaq6b2eev9wj58myfbzg65r0sifz80s','.eJxVjMEOwiAQRP-FsyGwBQSP3v0GsiyLVA1NSnsy_rtt0oPeJvPezFtEXJca185zHLO4CC1Ov11CenLbQX5gu0-SprbMY5K7Ig_a5W3K_Loe7t9BxV639VAyFtYuK-M9lmTAOQ96y3Q2SArYB0oBgKy1Shd0OLAKhqEYk20Qny_tJjfV:1rElqF:bnboS88BDDClLff8SmSRJ2SOYhPbfw_QTAoZ1ibVjeI','2023-12-31 07:45:39.988007'),('ao32xfmuceqwqrfqsir7xdpti0hg3bzb','.eJxVjMEOwiAQRP-FsyGwBQSP3v0GsiyLVA1NSnsy_rtt0oPeJvPezFtEXJca185zHLO4CC1Ov11CenLbQX5gu0-SprbMY5K7Ig_a5W3K_Loe7t9BxV639VAyFtYuK-M9lmTAOQ96y3Q2SArYB0oBgKy1Shd0OLAKhqEYk20Qny_tJjfV:1rJwJh:LJIjLjxND2biZSCHv_a3e_mpBmIj5R6WhvYuZNSjXaE','2024-01-14 13:57:25.329923'),('bmybxp5zgcysy5c4n54hqlg221ogglds','.eJxVjMEOwiAQRP-FsyGwBQSP3v0GsiyLVA1NSnsy_rtt0oPeJvPezFtEXJca185zHLO4CC1Ov11CenLbQX5gu0-SprbMY5K7Ig_a5W3K_Loe7t9BxV639VAyFtYuK-M9lmTAOQ96y3Q2SArYB0oBgKy1Shd0OLAKhqEYk20Qny_tJjfV:1rARpw:cz0K-I8fFuMxe6ZDQwohYjPTW07LymzcsIC-SEWwab4','2023-12-19 09:35:28.903416'),('jrtdoi4r4d6y718kzv0zjr8txy7d5rhf','.eJxVjMEOwiAQRP-FsyGwBQSP3v0GsiyLVA1NSnsy_rtt0oPeJvPezFtEXJca185zHLO4CC1Ov11CenLbQX5gu0-SprbMY5K7Ig_a5W3K_Loe7t9BxV639VAyFtYuK-M9lmTAOQ96y3Q2SArYB0oBgKy1Shd0OLAKhqEYk20Qny_tJjfV:1rKgC0:X4CV6B7NaEXjCqWB1Ksg0DdKvUkpalu7GKfvHVfp4Sc','2024-01-16 14:56:32.678343');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_accesstoken`
--

DROP TABLE IF EXISTS `oauth2_provider_accesstoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_accesstoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `source_refresh_token_id` bigint DEFAULT NULL,
  `id_token_id` bigint DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_accesstoken`
--

LOCK TABLES `oauth2_provider_accesstoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_accesstoken` VALUES (1,'mTdfbjmmZlV44XhGoDkL7TYzBZs7Ze','2023-12-09 21:40:17.888779','read write',1,1,'2023-12-09 11:40:17.889782','2023-12-09 11:40:17.889782',NULL,NULL),(2,'MFTA03sf7QDGhk4MgmQxltE5V8Qq8P','2023-12-12 18:29:50.315663','read write',1,1,'2023-12-12 08:29:50.315663','2023-12-12 08:29:50.315663',NULL,NULL),(3,'HM7suDaNLvs6ZQhfdq5B3D7smVz6PD','2023-12-14 20:31:39.568515','read write',1,1,'2023-12-14 10:31:39.569492','2023-12-14 10:31:39.569492',NULL,NULL),(4,'XmIDiznxqxUCHEbLizY775v5JLiTB4','2023-12-14 21:00:06.410048','read write',1,2,'2023-12-14 11:00:06.411121','2023-12-14 11:00:06.411121',NULL,NULL),(5,'3Bo8xNWhZqGKU7AVJhIVimORCbk1C7','2023-12-16 20:40:42.943986','read write',1,2,'2023-12-16 10:40:42.943986','2023-12-16 10:40:42.943986',NULL,NULL),(6,'foayciL9snFRQ4Tp2sng2SVkkflKFc','2023-12-17 16:57:42.943773','read write',1,2,'2023-12-17 06:57:42.943773','2023-12-17 06:57:42.943773',NULL,NULL),(7,'oBulNBppBDdEBtDgsRuogNBsaxPLAj','2023-12-17 21:40:41.132405','read write',1,2,'2023-12-17 11:40:41.132405','2023-12-17 11:40:41.133402',NULL,NULL),(8,'aY3XVcROEhPMbvVgrzfqS48cUhOs6A','2023-12-19 12:26:20.980459','read write',1,2,'2023-12-19 02:26:20.980459','2023-12-19 02:26:20.980459',NULL,NULL),(9,'TuaxIpvmyDwWHWhMv1o17oyN8deSW2','2023-12-19 14:31:02.426574','read write',1,3,'2023-12-19 04:31:02.426574','2023-12-19 04:31:02.426574',NULL,NULL),(10,'jx5GakJzOaOotcT3piytSGcqqgKakL','2023-12-19 14:32:26.037622','read write',1,1,'2023-12-19 04:32:26.037622','2023-12-19 04:32:26.037622',NULL,NULL),(11,'v5EnPVKC3JZGm4IsuABO6j8Hbgdipb','2023-12-19 19:35:58.923920','read write',1,2,'2023-12-19 09:35:58.924921','2023-12-19 09:35:58.924921',NULL,NULL),(12,'91dLCSKLHvqbxx09vHH4p6f54y5loN','2023-12-19 19:59:24.367529','read write',1,2,'2023-12-19 09:59:24.367529','2023-12-19 09:59:24.367529',NULL,NULL),(13,'FnULzUBgROc9hRgpZ2wPaZ7xK9sLOY','2023-12-19 20:02:09.476544','read write',1,2,'2023-12-19 10:02:09.476544','2023-12-19 10:02:09.476544',NULL,NULL),(14,'Qn4jUwA1irxCI6Z6Gt8h9AQs1rkTLg','2023-12-19 20:03:28.161439','read write',1,2,'2023-12-19 10:03:28.162441','2023-12-19 10:03:28.162441',NULL,NULL),(15,'6wzI6xeZVP1BrDlzBMq5TrD6QeEKgt','2023-12-19 20:14:05.308502','read write',1,2,'2023-12-19 10:14:05.309502','2023-12-19 10:14:05.309502',NULL,NULL),(16,'twIL4RXjSrthhMCTegl31PE0je9S3L','2023-12-21 20:11:40.179797','read write',1,1,'2023-12-21 10:11:40.180799','2023-12-21 10:11:40.180799',NULL,NULL),(17,'cmPhhnmgEj8t76GGoqInPM0x6emhBx','2023-12-21 21:08:25.646501','read write',1,2,'2023-12-21 11:08:25.647500','2023-12-21 11:08:25.647500',NULL,NULL),(18,'qluL1NsdtM1hM3ZtnfYjdFPdl9gQI4','2023-12-23 23:15:14.160126','read write',1,2,'2023-12-23 13:15:14.160126','2023-12-23 13:15:14.160126',NULL,NULL),(19,'JxvqNxiaj81MQnoQQeHA8K1v6qkYI1','2023-12-26 18:21:56.923684','read write',1,2,'2023-12-26 08:21:56.923684','2023-12-26 08:21:56.923684',NULL,NULL),(20,'lNSwzq16Ycsty9kcboIFiqDib4EfKo','2023-12-27 01:23:23.069311','read write',1,1,'2023-12-26 15:23:23.070363','2023-12-26 15:23:23.070363',NULL,NULL),(21,'K7vzZPscg85IVPSRkuMF9XmOatCfMW','2023-12-27 01:51:04.961888','read write',1,1,'2023-12-26 15:51:04.961888','2023-12-26 15:51:04.962451',NULL,NULL),(22,'v7OJMhKIqt7785sujd5TSV3HTZhLjA','2023-12-27 01:58:38.379519','read write',1,1,'2023-12-26 15:58:38.379519','2023-12-26 15:58:38.379519',NULL,NULL),(23,'crHEvldYJJjryAxArVvfV1fXKQgDmt','2023-12-27 02:09:46.183450','read write',1,1,'2023-12-26 16:09:46.183450','2023-12-26 16:09:46.183450',NULL,NULL),(24,'rcmFLCbILmygCzlwv6nUMcVuhLAd1O','2023-12-27 02:10:46.925077','read write',1,1,'2023-12-26 16:10:46.925077','2023-12-26 16:10:46.925077',NULL,NULL),(25,'tO71szEAsNJ8OunAUEySAA36mLSlVI','2023-12-27 02:25:52.315535','read write',1,1,'2023-12-26 16:25:52.315535','2023-12-26 16:25:52.315535',NULL,NULL),(26,'eDw1aP3bYwx9MaqNRk4iK5AaY5d53t','2023-12-27 02:28:30.591762','read write',1,1,'2023-12-26 16:28:30.592721','2023-12-26 16:28:30.592721',NULL,NULL),(27,'KTCKiBmuL49FiUdjSxBV6esMBDSGwS','2023-12-27 02:33:28.883787','read write',1,1,'2023-12-26 16:33:28.883787','2023-12-26 16:33:28.883787',NULL,NULL),(28,'80RREdnNosmXuh9iO1MyoYquf7TUvk','2023-12-27 02:59:16.478080','read write',1,1,'2023-12-26 16:59:16.479078','2023-12-26 16:59:16.479078',NULL,NULL),(29,'yc3CfshyuVoOWB0sZdobQjqLr4PDNt','2023-12-27 03:02:52.706802','read write',1,1,'2023-12-26 17:02:52.706802','2023-12-26 17:02:52.706802',NULL,NULL),(30,'XBXwFQT06CrqAZlCxOYFDYpFpZwV5Y','2023-12-27 03:04:47.114370','read write',1,1,'2023-12-26 17:04:47.114370','2023-12-26 17:04:47.114370',NULL,NULL),(31,'Sio6hFGF3OfOCRviFoSAnNofGQWEPg','2023-12-27 03:06:35.731104','read write',1,1,'2023-12-26 17:06:35.731612','2023-12-26 17:06:35.731612',NULL,NULL),(32,'lkSKufr3cTDtMiqbvKLST3uf9bQtSZ','2023-12-27 03:07:31.603059','read write',1,1,'2023-12-26 17:07:31.603059','2023-12-26 17:07:31.603059',NULL,NULL),(33,'fVsI2CHLZJYoxlJ38PLeT9728PF5Gj','2023-12-27 03:09:40.461460','read write',1,1,'2023-12-26 17:09:40.462055','2023-12-26 17:09:40.462055',NULL,NULL),(34,'IjecVhj1p3wAIWtAnVjwSxsT33hW5I','2023-12-28 01:49:56.668386','read write',1,2,'2023-12-27 15:49:56.669386','2023-12-27 15:49:56.669386',NULL,NULL),(35,'8pX0aRcaSQB3rn8eEy9P5suvS6g522','2023-12-28 02:06:19.294125','read write',1,2,'2023-12-27 16:06:19.294125','2023-12-27 16:06:19.294125',NULL,NULL),(36,'zxfKegoF9FZEjnNJk0foymt0tl09uT','2023-12-28 02:06:44.329718','read write',1,2,'2023-12-27 16:06:44.329718','2023-12-27 16:06:44.329718',NULL,NULL),(37,'FKpq7vLg9TS7tPUIdvbEdSvSIWtcbk','2023-12-28 02:07:05.393226','read write',1,2,'2023-12-27 16:07:05.393226','2023-12-27 16:07:05.393226',NULL,NULL),(38,'szCPCsfHqhGEHQOfStKErFFqsbtzBE','2023-12-28 02:08:48.714072','read write',1,2,'2023-12-27 16:08:48.714072','2023-12-27 16:08:48.714072',NULL,NULL),(39,'AMLMObmf9shK0KRTpOVoXYhSutDDpI','2023-12-28 02:09:00.867689','read write',1,2,'2023-12-27 16:09:00.867689','2023-12-27 16:09:00.867689',NULL,NULL),(40,'QgnFNmumUzEbJQOIDaeUYWmey0oIz1','2023-12-28 02:09:17.292775','read write',1,2,'2023-12-27 16:09:17.292775','2023-12-27 16:09:17.292775',NULL,NULL),(41,'zQCiKXN9WtZUL1N1e19SIhx0DP7dDg','2023-12-28 02:09:28.942322','read write',1,2,'2023-12-27 16:09:28.942322','2023-12-27 16:09:28.942322',NULL,NULL),(42,'J9DXfPQ4mHBdmeNcTsPtrqpgZiMzf5','2023-12-28 02:09:51.092780','read write',1,2,'2023-12-27 16:09:51.093780','2023-12-27 16:09:51.093780',NULL,NULL),(43,'qbiSWQaCgqKY4N41mVp1RTeNtx5Ekd','2023-12-28 02:13:19.153602','read write',1,2,'2023-12-27 16:13:19.169228','2023-12-27 16:13:19.169228',NULL,NULL),(44,'3cISffdSrqTGCdzYqQCdC51p8OWBF6','2023-12-28 02:14:13.889137','read write',1,2,'2023-12-27 16:14:13.889137','2023-12-27 16:14:13.889137',NULL,NULL),(45,'kKmSoirA5QGhHSyso7sVBeNnyFhA5Q','2023-12-28 02:14:21.367754','read write',1,3,'2023-12-27 16:14:21.383377','2023-12-27 16:14:21.383377',NULL,NULL),(46,'HcA4YVFDUNi9cffkB1FsBMZZRrOqvl','2023-12-28 21:55:23.683937','read write',1,3,'2023-12-28 11:55:23.684938','2023-12-28 11:55:23.684938',NULL,NULL),(47,'OHAMDQwamYqJxBc9iyus0lmCqmLfAR','2023-12-28 23:59:01.738501','read write',1,3,'2023-12-28 13:59:01.738501','2023-12-28 13:59:01.738501',NULL,NULL),(48,'w3G4qHFcS84ICjLhoNbvzoaeIYj7NV','2023-12-29 00:04:29.769083','read write',1,3,'2023-12-28 14:04:29.769083','2023-12-28 14:04:29.769083',NULL,NULL),(49,'QWxmbvQNxfbCUVmzJP3HQUfKwpTFec','2023-12-29 19:41:57.304305','read write',1,1,'2023-12-29 09:41:57.305308','2023-12-29 09:41:57.305308',NULL,NULL),(50,'TPjJgOXrO3WgtJWDEKeq9k6DoNXKRe','2023-12-31 04:20:37.095852','read write',1,1,'2023-12-30 18:20:37.096861','2023-12-30 18:20:37.096861',NULL,NULL),(51,'gAQOffTrYf3mf9snCsWc3uA4DMGzZP','2023-12-31 05:57:58.597152','read write',1,1,'2023-12-30 19:57:58.598153','2023-12-30 19:57:58.598153',NULL,NULL),(52,'OVee5tfNwBEAKw10yQjzdvxNRK9NJN','2023-12-31 22:59:08.761687','read write',1,1,'2023-12-31 12:59:08.761687','2023-12-31 12:59:08.761687',NULL,NULL),(53,'I1wEKACvlVkBLa7Tu9Ob3yTK3RtPbJ','2024-01-01 12:18:12.672543','read write',1,1,'2024-01-01 02:18:12.672543','2024-01-01 02:18:12.672543',NULL,NULL),(54,'LLsSfra31gaC3q6dr1g3Uu8dpOdlbw','2024-01-01 20:07:13.557598','read write',1,1,'2024-01-01 10:07:13.557598','2024-01-01 10:07:13.557598',NULL,NULL),(55,'FjO1XP9aGTxRRUVFH3jxPZMM683nDP','2024-01-01 22:32:44.272066','read write',1,1,'2024-01-01 12:32:44.272066','2024-01-01 12:32:44.272066',NULL,NULL),(56,'uw7gefdQ5Cxd2SGul6Cv7D4D4tGpPk','2024-01-02 20:00:09.163274','read write',1,1,'2024-01-02 10:00:09.163274','2024-01-02 10:00:09.163274',NULL,NULL),(57,'fUwzcjni1cEE9f5m7UdqOc17iohlyR','2024-01-03 00:13:40.415912','read write',1,1,'2024-01-02 14:13:40.415912','2024-01-02 14:13:40.415912',NULL,NULL),(58,'18fg8PMkx3qNzqMyuQpJouJcFDYrUG','2024-01-03 00:40:27.438401','read write',1,1,'2024-01-02 14:40:27.439405','2024-01-02 14:40:27.439405',NULL,NULL),(59,'zK7ZIMapWF0IItr0ND2MceCnuwHwHC','2024-01-05 00:13:51.442135','read write',1,1,'2024-01-04 14:13:51.443138','2024-01-04 14:13:51.443138',NULL,NULL),(60,'X26uK1DYgNpfBLTV5AqcCjsJecugZS','2024-01-05 00:51:37.567821','read write',1,1,'2024-01-04 14:51:37.567821','2024-01-04 14:51:37.567821',NULL,NULL),(61,'rqv6KDE5RhzTXYsf4eEyT69o6sphfR','2024-01-06 16:30:11.661337','read write',1,1,'2024-01-06 06:30:11.662909','2024-01-06 06:30:11.662909',NULL,NULL),(62,'mTxr0sNsrXa1XLXoxIR50KtLxppi8w','2024-01-06 20:58:01.716005','read write',1,1,'2024-01-06 10:58:01.716005','2024-01-06 10:58:01.716005',NULL,NULL),(63,'ZrrhtbmhQNdW9Nw8mcVhlSIAEV6k1G','2024-01-07 10:33:30.477417','read write',1,1,'2024-01-07 00:33:30.478421','2024-01-07 00:33:30.478421',NULL,NULL),(64,'Gx0hlskFKkjFZL9upb5ClbPD7w3J0z','2024-01-07 11:42:55.248736','read write',1,1,'2024-01-07 01:42:55.248736','2024-01-07 01:42:55.248736',NULL,NULL),(65,'BoTOzmVvUhAIG8WEPnfeQUR58MMxVe','2024-01-07 11:44:04.417546','read write',1,1,'2024-01-07 01:44:04.417546','2024-01-07 01:44:04.417546',NULL,NULL),(66,'H2oDMoEpOp8505yqRrJ9sT3BZqxxfx','2024-01-07 11:46:06.558159','read write',1,1,'2024-01-07 01:46:06.558159','2024-01-07 01:46:06.558159',NULL,NULL),(67,'4mDwqhNvlnDfRXkg7OD0uF7T57APFa','2024-01-07 11:48:11.399213','read write',1,1,'2024-01-07 01:48:11.399213','2024-01-07 01:48:11.399213',NULL,NULL),(68,'2u724D0LWuePNitfsIFN0p0Jgihg9V','2024-01-07 11:48:37.090670','read write',1,1,'2024-01-07 01:48:37.090670','2024-01-07 01:48:37.090670',NULL,NULL),(69,'PcMDovpAdwKeI4RbVVUav2cvga2vSU','2024-01-07 11:49:43.946939','read write',1,1,'2024-01-07 01:49:43.946939','2024-01-07 01:49:43.946939',NULL,NULL),(70,'8o3ZvHYqjTlJh5XqpX02YN3iig3EN3','2024-01-07 12:31:23.626013','read write',1,1,'2024-01-07 02:31:23.626013','2024-01-07 02:31:23.626013',NULL,NULL),(71,'ema3VJ1ivxkcANy3wVntrmgsqbIzUA','2024-01-10 17:35:53.248926','read write',1,1,'2024-01-10 07:35:53.248926','2024-01-10 07:35:53.248926',NULL,NULL),(72,'J9SP0dzsGEg0U7DXiGToOEFw5mKaOZ','2024-01-11 21:29:41.812532','read write',1,1,'2024-01-11 11:29:41.813531','2024-01-11 11:29:41.813531',NULL,NULL),(73,'VvdeHRJLZUKD5lto7w5FxGRRLCcCYh','2024-01-14 11:55:43.842284','read write',1,1,'2024-01-14 01:55:43.842284','2024-01-14 01:55:43.842284',NULL,NULL),(74,'geWWoyEv4jjTwAbkGXthZXkNWGoRso','2024-01-14 11:55:44.140497','read write',1,1,'2024-01-14 01:55:44.140497','2024-01-14 01:55:44.140497',NULL,NULL);
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2_provider_application`
--

DROP TABLE IF EXISTS `oauth2_provider_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2_provider_application` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `client_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect_uris` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorization_grant_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `skip_authorization` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `algorithm` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_logout_redirect_uris` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT (_utf8mb3''),
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `redirect_uri` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `scope` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `code_challenge` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_challenge_method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonce` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `claims` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT (_utf8mb3''),
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `jti` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `application_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` bigint DEFAULT NULL,
  `application_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

LOCK TABLES `oauth2_provider_refreshtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_refreshtoken` VALUES (1,'NMyUhzV6mjYkxNftvskXpKfk9CiCL3',1,1,1,'2023-12-09 11:40:17.907782','2023-12-09 11:40:17.907782',NULL),(2,'YSwxR6TLyIqRq3KxLyTZabuYAWUfpH',2,1,1,'2023-12-12 08:29:50.353010','2023-12-12 08:29:50.353010',NULL),(3,'8oLFhhMHp6Kgpkks3PBKLYkJNW9qLk',3,1,1,'2023-12-14 10:31:39.606518','2023-12-14 10:31:39.606518',NULL),(4,'4Zwkw2116kr5m2FqDu0Qo75084I3dU',4,1,2,'2023-12-14 11:00:06.415055','2023-12-14 11:00:06.415055',NULL),(5,'Bj3ENhfushzibEblproQeH7RMQGIjP',5,1,2,'2023-12-16 10:40:42.978993','2023-12-16 10:40:42.978993',NULL),(6,'5XY83Ega7mbMJWjBrnACRoBliSTMuy',6,1,2,'2023-12-17 06:57:42.975366','2023-12-17 06:57:42.975366',NULL),(7,'pKedIcXLkO1qSn0dBjJsjuHvd5I59j',7,1,2,'2023-12-17 11:40:41.173460','2023-12-17 11:40:41.173460',NULL),(8,'CtMzegwnz5pwHJT3sYo2GkqndXq6SP',8,1,2,'2023-12-19 02:26:21.022458','2023-12-19 02:26:21.022458',NULL),(9,'giBvoklyyhqmyjIuYCitlEBGJFPLqz',9,1,3,'2023-12-19 04:31:02.442199','2023-12-19 04:31:02.442199',NULL),(10,'LLwcp8SPyHFFf6Na2Ob3oWiSyQ2ZMS',10,1,1,'2023-12-19 04:32:26.038623','2023-12-19 04:32:26.038623',NULL),(11,'qCRGABH7QaXJxYF9YZrUiM6jejhPSe',11,1,2,'2023-12-19 09:35:58.936447','2023-12-19 09:35:58.936447',NULL),(12,'qjvYcBwyn7lJcqepVA3JrOXdcnQOKm',12,1,2,'2023-12-19 09:59:24.368527','2023-12-19 09:59:24.368527',NULL),(13,'Kfq1YFntU9oVY8zx9gTUQf9hwlfOkq',13,1,2,'2023-12-19 10:02:09.478547','2023-12-19 10:02:09.478547',NULL),(14,'z2bLUVG6b2tk7F4tWLgr8dTuI35sG9',14,1,2,'2023-12-19 10:03:28.162946','2023-12-19 10:03:28.162946',NULL),(15,'WRBqy57AelrHZwEl1iFHFzKCM9WRHc',15,1,2,'2023-12-19 10:14:05.310503','2023-12-19 10:14:05.310503',NULL),(16,'iJye7c9b3cszBCmKpkBJcrFmeVaLkL',16,1,1,'2023-12-21 10:11:40.227627','2023-12-21 10:11:40.227627',NULL),(17,'DJ1OVenLVf9bDDOaxZKDHrvPK2ST48',17,1,2,'2023-12-21 11:08:25.649501','2023-12-21 11:08:25.649501',NULL),(18,'TdrlWNqEAYvN2yhWuo45pXLxLSMpaS',18,1,2,'2023-12-23 13:15:14.191374','2023-12-23 13:15:14.191374',NULL),(19,'76ah0jtvjwtOf7LWpS26fAEtfw6qAB',19,1,2,'2023-12-26 08:21:56.971679','2023-12-26 08:21:56.971679',NULL),(20,'fuAHuyZy2amyQ41b323CxEioiRGRsh',20,1,1,'2023-12-26 15:23:23.073371','2023-12-26 15:23:23.074374',NULL),(21,'z4lIaW6HdjIWGlNDJ2b2Mg5Uoj4xe9',21,1,1,'2023-12-26 15:51:04.963469','2023-12-26 15:51:04.963469',NULL),(22,'zON3rbDryro5KUp9YuNf8daE72jZEk',22,1,1,'2023-12-26 15:58:38.380518','2023-12-26 15:58:38.380518',NULL),(23,'KQhbkVDJhb81E332BbqTjke91aDOkX',23,1,1,'2023-12-26 16:09:46.184457','2023-12-26 16:09:46.184457',NULL),(24,'OsKJnVA0sHAYKLW5CglIjtjqm69fUK',24,1,1,'2023-12-26 16:10:46.926080','2023-12-26 16:10:46.926080',NULL),(25,'aalAvlsECLUslulsOjMvunWRgNbjQk',25,1,1,'2023-12-26 16:25:52.316537','2023-12-26 16:25:52.316537',NULL),(26,'kDB05lvbQt1mIIDYb5GI2TqgeundXX',26,1,1,'2023-12-26 16:28:30.594248','2023-12-26 16:28:30.594248',NULL),(27,'qtEyH1FC9qLXaj9cC0e2yC5Wl0CZKD',27,1,1,'2023-12-26 16:33:28.884785','2023-12-26 16:33:28.884785',NULL),(28,'e6BF2wIbNsoyaX2vnvPGHrlIElbtPL',28,1,1,'2023-12-26 16:59:16.480081','2023-12-26 16:59:16.480081',NULL),(29,'AF1uyFwfBwoU7jUdnoLw3pi13akSFe',29,1,1,'2023-12-26 17:02:52.707796','2023-12-26 17:02:52.707796',NULL),(30,'M2qGl0lZRXUER9J7o01rh9aMe6SkZX',30,1,1,'2023-12-26 17:04:47.116364','2023-12-26 17:04:47.116364',NULL),(31,'U03zRev5gfQvQnoS5aniMNas7NkN9f',31,1,1,'2023-12-26 17:06:35.732118','2023-12-26 17:06:35.733131',NULL),(32,'glQH24KQbSyJOlyAWNM4L0wv4AUWPg',32,1,1,'2023-12-26 17:07:31.604057','2023-12-26 17:07:31.604057',NULL),(33,'n6s5dFj8oYdcoWSPCkpvGoVhael6QE',33,1,1,'2023-12-26 17:09:40.463013','2023-12-26 17:09:40.463013',NULL),(34,'dAuThiNocQ35DnMKtDGWgrwrQL1Uc0',34,1,2,'2023-12-27 15:49:56.699522','2023-12-27 15:49:56.699522',NULL),(35,'6XeKHzYnAhGPxmNuU8LloUeHFSi2rx',35,1,2,'2023-12-27 16:06:19.294125','2023-12-27 16:06:19.294125',NULL),(36,'3IiRQIPem0uRMUXrDbkLFtkVjSlY0M',36,1,2,'2023-12-27 16:06:44.329718','2023-12-27 16:06:44.329718',NULL),(37,'H3yMPHcC8oB9wdDxbxVqtcRjBQaXQh',37,1,2,'2023-12-27 16:07:05.408852','2023-12-27 16:07:05.408852',NULL),(38,'41gBnpppOEAG5C5drPlq1ZYixeQ4ja',38,1,2,'2023-12-27 16:08:48.717071','2023-12-27 16:08:48.717071',NULL),(39,'vxNZqP5PDJ4pamQzC1ZkCdAuvNwfLg',39,1,2,'2023-12-27 16:09:00.867689','2023-12-27 16:09:00.867689',NULL),(40,'ObBSxsj9MkXWhnxPgyR5bwablhrbE6',40,1,2,'2023-12-27 16:09:17.292775','2023-12-27 16:09:17.292775',NULL),(41,'boNyLop1UcSfg6VSTqyeJKFus25b0E',41,1,2,'2023-12-27 16:09:28.942322','2023-12-27 16:09:28.942322',NULL),(42,'9G9hqWrpZfMUXxTDLEsPCT9JcWx6U4',42,1,2,'2023-12-27 16:09:51.095784','2023-12-27 16:09:51.095784',NULL),(43,'8Lm3AYoBQyGLMiND7dNKNZz29T70m0',43,1,2,'2023-12-27 16:13:19.169228','2023-12-27 16:13:19.169228',NULL),(44,'d8HH9sw1c7UwyZlBp8ou3Lye2vEAcE',44,1,2,'2023-12-27 16:14:13.889137','2023-12-27 16:14:13.889137',NULL),(45,'MoqSTntrDrp65BoOCdqfJ3tJcOGLKy',45,1,3,'2023-12-27 16:14:21.383377','2023-12-27 16:14:21.383377',NULL),(46,'HrPtTffhVsVtItXSSFKWEDvLH1UW1E',46,1,3,'2023-12-28 11:55:23.710477','2023-12-28 11:55:23.710477',NULL),(47,'ELnIMUXTmHQr9YJD0YAEsh8nSF7c0a',47,1,3,'2023-12-28 13:59:01.738501','2023-12-28 13:59:01.738501',NULL),(48,'85YFAwrKWMfM9GeJQC6qHrMT0Kz38R',48,1,3,'2023-12-28 14:04:29.772081','2023-12-28 14:04:29.772081',NULL),(49,'aWFmi4Ef3JAxkMKplDr4g5J4lf3ZHZ',49,1,1,'2023-12-29 09:41:57.349375','2023-12-29 09:41:57.349375',NULL),(50,'QDRWwQrzev0xZT3ZdXHzGGCeHMd5il',50,1,1,'2023-12-30 18:20:37.123843','2023-12-30 18:20:37.123843',NULL),(51,'zIY58tHmHcV9ccZAwfK8R2S8kfngQL',51,1,1,'2023-12-30 19:57:58.622155','2023-12-30 19:57:58.622155',NULL),(52,'nHvugLEypRVLnC34aFvKchusa4xeXb',52,1,1,'2023-12-31 12:59:08.796691','2023-12-31 12:59:08.796691',NULL),(53,'rdpVE03vmxfRNi9gPlWQwRF1Ea6wPd',53,1,1,'2024-01-01 02:18:12.700555','2024-01-01 02:18:12.700555',NULL),(54,'CKeIoqJkQjqyVrfKkICeWxUY0Kfi0N',54,1,1,'2024-01-01 10:07:13.592597','2024-01-01 10:07:13.592597',NULL),(55,'huXPLUSN9D2AbNRhTZtqIvEbU3J2h6',55,1,1,'2024-01-01 12:32:44.300671','2024-01-01 12:32:44.300671',NULL),(56,'1PFkPdJqeJc2zS4JQal5g4ZhWwSN4s',56,1,1,'2024-01-02 10:00:09.192277','2024-01-02 10:00:09.192277',NULL),(57,'JCLE5sncHVZB1OO5SLdrlrUvl22vTV',57,1,1,'2024-01-02 14:13:40.456220','2024-01-02 14:13:40.456220',NULL),(58,'h3JXdFxnrLi33kzgG27Wg4jM7VnPul',58,1,1,'2024-01-02 14:40:27.441430','2024-01-02 14:40:27.441430',NULL),(59,'rs7iEwT3yFDXsCrOu12O87e4MWGPoH',59,1,1,'2024-01-04 14:13:51.488664','2024-01-04 14:13:51.488664',NULL),(60,'i1rbafJzerWGp4gxLjv7Q9MSlr1Rgn',60,1,1,'2024-01-04 14:51:37.567821','2024-01-04 14:51:37.567821',NULL),(61,'acxOUapRq6Yn7mVGwGxKI6PhMrgT2A',61,1,1,'2024-01-06 06:30:11.710345','2024-01-06 06:30:11.710345',NULL),(62,'TsRecYdNWALKiY2Xw7tfO3DH3OzVWq',62,1,1,'2024-01-06 10:58:01.729085','2024-01-06 10:58:01.729085',NULL),(63,'5rsETzRwSCsH0eQdVaxyiFCpxSAkM1',63,1,1,'2024-01-07 00:33:30.506419','2024-01-07 00:33:30.506419',NULL),(64,'npj5vCmGzz3qsWvL0MhyQDovHb1EpX',64,1,1,'2024-01-07 01:42:55.248736','2024-01-07 01:42:55.248736',NULL),(65,'EmxcGccVbU86PL67JYdzWdrkHRu1YJ',65,1,1,'2024-01-07 01:44:04.417546','2024-01-07 01:44:04.417546',NULL),(66,'HjfhUw5COczs8F7RzSMPEyq2NlS0JM',66,1,1,'2024-01-07 01:46:06.558159','2024-01-07 01:46:06.558159',NULL),(67,'pIHMPu8u6SAEGWcTR73VPZ9RuI2enl',67,1,1,'2024-01-07 01:48:11.399213','2024-01-07 01:48:11.399213',NULL),(68,'ds7KV8R6YqqL3SRY8gaVvJ6XyLn45p',68,1,1,'2024-01-07 01:48:37.090670','2024-01-07 01:48:37.090670',NULL),(69,'fcVhToAT0I2YuFqAzy759Hxkgp8LwZ',69,1,1,'2024-01-07 01:49:43.946939','2024-01-07 01:49:43.946939',NULL),(70,'mEe2TcLMd8BlQW8igwAfVlcD8cmmum',70,1,1,'2024-01-07 02:31:23.641645','2024-01-07 02:31:23.641645',NULL),(71,'aprlazC9pN2Cc5qXnkZLwgnjlHASmO',71,1,1,'2024-01-10 07:35:53.298927','2024-01-10 07:35:53.298927',NULL),(72,'iXeB6MN92a0nxYtVVGLK7FAKNdCJj1',72,1,1,'2024-01-11 11:29:41.855048','2024-01-11 11:29:41.855048',NULL),(73,'wcPSVBbab0mFYxluz6VmGG2aZsPlQp',73,1,1,'2024-01-14 01:55:43.874457','2024-01-14 01:55:43.874457',NULL),(74,'TrbeVS0FZTNm0I0TeVtL3KMLn1jEtW',74,1,1,'2024-01-14 01:55:44.140497','2024-01-14 01:55:44.140497',NULL);
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` ENABLE KEYS */;
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
  `date_of_birth` date DEFAULT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_avatar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `account_status` tinyint(1) NOT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_number` (`phone_number`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `social_media_account_role_id_d1ccc1de_fk_social_media_role_id` (`role_id`),
  CONSTRAINT `social_media_account_role_id_d1ccc1de_fk_social_media_role_id` FOREIGN KEY (`role_id`) REFERENCES `social_media_role` (`id`),
  CONSTRAINT `social_media_account_user_id_30063586_fk_social_media_user_id` FOREIGN KEY (`user_id`) REFERENCES `social_media_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_account`
--

LOCK TABLES `social_media_account` WRITE;
/*!40000 ALTER TABLE `social_media_account` DISABLE KEYS */;
INSERT INTO `social_media_account` VALUES (1,'2023-12-02','2024-01-14','2023-12-02',1,'0345809638','2002-08-28','https://res.cloudinary.com/dhwuwy0to/image/upload/v1705197383/khl1ihabkpiygmrxedpj.jpg','https://res.cloudinary.com/dhwuwy0to/image/upload/v1705197632/juylouz0ymc04xzsnurz.jpg',1,1,1,1),(2,'2023-12-02','2024-01-06','2023-12-02',1,'012345678','2023-12-02','https://res.cloudinary.com/dhwuwy0to/image/upload/v1704526087/aud5irfmbwjnvkhqqdjl.png','images/accounts/cover_avatar/2023/12/Ảnh_của_tui_1.jpg',3,2,1,1),(3,'2023-12-02','2023-12-02','2023-12-02',1,'36262312312','2023-12-02','images/accounts/avatar/2023/12/Screenshot_2023-12-02_163517.png','images/accounts/cover_avatar/2023/12/Screenshot_2023-12-02_163517.png',3,3,0,1),(4,'2023-12-02','2023-12-02','2023-12-02',1,'3626','2023-12-02','images/accounts/avatar/2023/12/FURINA.png','images/accounts/cover_avatar/2023/12/FURINA.png',2,4,0,1),(5,'2023-12-07','2023-12-07','2023-12-07',1,'099999','2023-12-07','images/accounts/avatar/2023/12/Screenshot_2023-12-02_163517_uBq6TcI.png','images/accounts/cover_avatar/2023/12/FURINA_Qya12Xs.png',2,5,0,1),(7,'2023-12-10','2023-12-10','2023-12-10',1,'0123456789','2002-08-28','images/accounts/avatar/2023/12/Screenshot_2023-12-02_163517_iMvIY1I.png','images/accounts/cover_avatar/2023/12/Screenshot_2023-12-02_163517_ciM462Z.png',3,6,1,1),(8,'2023-12-19','2023-12-19','2023-12-19',1,'54564','2002-08-28','images/accounts/avatar/2023/12/Screenshot_2023-12-02_163517_iMvIY1I.png','images/accounts/cover_avatar/2023/12/Screenshot_2023-12-02_163517_ciM462Z.png',3,10,0,1),(9,'2023-12-19','2023-12-19','2023-12-19',1,'45456','2002-08-28','images/accounts/avatar/2023/12/Screenshot_2023-12-02_163517_iMvIY1I.png','images/accounts/cover_avatar/2023/12/Screenshot_2023-12-02_163517_ciM462Z.png',3,11,0,1),(10,'2023-12-19','2023-12-19',NULL,1,NULL,NULL,'','',3,12,0,1),(11,'2023-12-19','2023-12-19',NULL,1,NULL,NULL,'','',3,13,0,1),(12,'2023-12-19','2024-01-06',NULL,1,NULL,NULL,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1704522713/pfkpu900ia6jmpsud1ko.png','https://res.cloudinary.com/dhwuwy0to/image/upload/v1704522789/dhe7esicngzjyguzuxrm.png',3,14,0,1),(13,'2023-12-26','2023-12-26',NULL,1,'8456121','2002-08-28','images/accounts/avatar/2023/12/Screenshot_2023-12-21_191538.png','https://res.cloudinary.com/dhwuwy0to/image/upload/v1703582131/eoist3dh8nqvl0namjus.png',3,9,1,1),(15,'2023-12-26','2023-12-26',NULL,1,'821313','2002-08-28','https://res.cloudinary.com/dhwuwy0to/image/upload/v1703582345/horjssrhopdt74extmrb.png','images/accounts/cover_avatar/2023/12/Screenshot_2023-12-23_220045_7pjKdeR.png',3,8,1,1),(16,'2023-12-26','2023-12-26',NULL,1,'82131334','2002-08-28','https://res.cloudinary.com/dhwuwy0to/image/upload/v1703582573/loulgzcbcekhggxsvqo0.png','https://res.cloudinary.com/dhwuwy0to/image/upload/v1703582575/djazey5a7dd1dxninznu.png',3,15,1,1),(17,'2023-12-26','2023-12-26',NULL,1,'121323','2002-08-28','https://res.cloudinary.com/dhwuwy0to/image/upload/v1703582655/dl4xjbbjdsxuiqumtbpw.png','https://res.cloudinary.com/dhwuwy0to/image/upload/v1703582656/yxtijt9mskw9f0me5nly.png',3,16,1,1),(18,'2023-12-26','2023-12-26',NULL,1,'64688','2002-08-28','','https://res.cloudinary.com/dhwuwy0to/image/upload/v1703582716/uxy7taglizpqcrqykglv.png',3,17,1,1),(20,'2023-12-28','2023-12-28',NULL,1,NULL,NULL,'','',3,20,0,1),(28,'2023-12-28','2023-12-28',NULL,1,'64688111','2002-08-08','https://res.cloudinary.com/dhwuwy0to/image/upload/v1703769039/i2anwjvqzepziurvbjnv.png','https://res.cloudinary.com/dhwuwy0to/image/upload/v1703769041/ohkgnhbrnsglqnxwt5mb.png',3,21,1,1),(29,'2023-12-28','2023-12-28',NULL,1,NULL,NULL,'','',3,25,0,1),(30,'2023-12-28','2023-12-28',NULL,1,NULL,NULL,'','',3,26,0,1),(31,'2023-12-28','2023-12-28',NULL,1,NULL,NULL,'','',3,27,0,1),(32,'2023-12-28','2023-12-28',NULL,1,NULL,NULL,'','',3,28,0,1),(33,'2023-12-28','2023-12-28',NULL,1,NULL,NULL,'','',3,29,0,1),(34,'2023-12-31','2024-01-01',NULL,1,NULL,NULL,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1704104173/aduvss5el9cyfomtqrjp.png','',3,30,0,0),(46,'2024-01-07','2024-01-10',NULL,1,'5645','2002-08-28','https://res.cloudinary.com/dhwuwy0to/image/upload/v1704872532/glnefpjfmyeqsf2zgl90.jpg','https://res.cloudinary.com/dhwuwy0to/image/upload/v1704872606/rvbx2ktatzwanszoxxn6.png',3,7,0,0),(48,'2024-01-18','2024-01-18',NULL,1,NULL,NULL,'','',2,32,0,NULL);
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `comment_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint NOT NULL,
  `account_id` bigint DEFAULT NULL,
  `comment_image_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `confirm_status_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `invitation_group_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_invitationgroup`
--

LOCK TABLES `social_media_invitationgroup` WRITE;
/*!40000 ALTER TABLE `social_media_invitationgroup` DISABLE KEYS */;
INSERT INTO `social_media_invitationgroup` VALUES (1,'2023-12-05','2023-12-12','2023-12-12',1,'Group A'),(2,'2023-12-05','2023-12-12','2023-12-12',1,'Group B'),(3,'2023-12-05','2023-12-12','2023-12-12',1,'group C'),(4,'2023-12-12','2023-12-14','2023-12-14',1,'group D'),(5,'2023-12-14','2023-12-17','2023-12-17',1,'Group E1'),(6,'2023-12-17','2023-12-17','2023-12-17',1,'Group F'),(7,'2023-12-17','2023-12-17','2023-12-17',1,'Group G'),(8,'2023-12-17','2023-12-17','2023-12-17',1,'Group H1'),(9,'2023-12-17','2023-12-19','2023-12-19',1,'Group H2'),(10,'2024-01-17','2024-01-17',NULL,1,'Tạo bằng api'),(11,'2024-01-17','2024-01-17',NULL,1,'Tạo bằng api');
/*!40000 ALTER TABLE `social_media_invitationgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media_invitationgroup_accounts`
--

DROP TABLE IF EXISTS `social_media_invitationgroup_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media_invitationgroup_accounts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `invitationgroup_id` bigint NOT NULL,
  `account_id` bigint NOT NULL,
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `who_sent_id` bigint DEFAULT NULL,
  `content` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_media_message_room_id_74e720e7_fk_social_media_room_id` (`room_id`),
  KEY `social_media_message_who_sent_id_02116656` (`who_sent_id`),
  CONSTRAINT `social_media_message_room_id_74e720e7_fk_social_media_room_id` FOREIGN KEY (`room_id`) REFERENCES `social_media_room` (`id`),
  CONSTRAINT `social_media_message_who_sent_id_02116656_fk_social_me` FOREIGN KEY (`who_sent_id`) REFERENCES `social_media_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_message`
--

LOCK TABLES `social_media_message` WRITE;
/*!40000 ALTER TABLE `social_media_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_message` ENABLE KEYS */;
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
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_lock` tinyint(1) NOT NULL,
  `account_id` bigint DEFAULT NULL,
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `post_image_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_id` bigint NOT NULL,
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `postinvitation_id` bigint NOT NULL,
  `account_id` bigint NOT NULL,
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `post_survey_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `post_id` bigint NOT NULL,
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `reaction_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `first_user_id` bigint DEFAULT NULL,
  `second_user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_media_room_first_user_id_second_user_id_53274e82_uniq` (`first_user_id`,`second_user_id`),
  KEY `social_media_room_second_user_id_5ec03e85_fk_social_me` (`second_user_id`),
  CONSTRAINT `social_media_room_first_user_id_c2e77fd7_fk_social_me` FOREIGN KEY (`first_user_id`) REFERENCES `social_media_account` (`id`),
  CONSTRAINT `social_media_room_second_user_id_5ec03e85_fk_social_me` FOREIGN KEY (`second_user_id`) REFERENCES `social_media_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_room`
--

LOCK TABLES `social_media_room` WRITE;
/*!40000 ALTER TABLE `social_media_room` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_room` ENABLE KEYS */;
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
  `answer_value` varchar(10000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `survey_question_id` bigint NOT NULL,
  `survey_response_id` bigint NOT NULL,
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `question_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_order` int NOT NULL,
  `post_survey_id` bigint NOT NULL,
  `survey_question_type_id` bigint NOT NULL,
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `question_option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_option_order` int NOT NULL,
  `survey_question_id` bigint NOT NULL,
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `surveyquestionoption_id` bigint NOT NULL,
  `surveyanswer_id` bigint NOT NULL,
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `deleted_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `question_type_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `confirm_status_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `social_media_user_confirm_status_id_2faf8343_fk_social_me` (`confirm_status_id`),
  CONSTRAINT `social_media_user_confirm_status_id_2faf8343_fk_social_me` FOREIGN KEY (`confirm_status_id`) REFERENCES `social_media_confirmstatus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media_user`
--

LOCK TABLES `social_media_user` WRITE;
/*!40000 ALTER TABLE `social_media_user` DISABLE KEYS */;
INSERT INTO `social_media_user` VALUES (1,'pbkdf2_sha256$600000$2wYAvGMI58wUR4jfbF9Hs5$jxG3DTdYTZemo5oKYIgzmVSW91FdhbxowqxVuEZo5X8=','2024-01-17 05:51:58.476491',1,'admin','Tuan','Tran','tuantran@gmail.com',1,1,'2023-12-01 18:04:49.275061',1),(2,'pbkdf2_sha256$600000$2wYAvGMI58wUR4jfbF9Hs5$jxG3DTdYTZemo5oKYIgzmVSW91FdhbxowqxVuEZo5X8=',NULL,0,'tuan1','Tuan','Tran','tuan1@gmail.com',0,1,'2023-12-02 08:39:37.000000',1),(3,'pbkdf2_sha256$600000$2wYAvGMI58wUR4jfbF9Hs5$jxG3DTdYTZemo5oKYIgzmVSW91FdhbxowqxVuEZo5X8=',NULL,0,'tuan2','Tuan 2','Tran','tuan2@gmail.com',0,1,'2023-12-02 09:37:01.000000',1),(4,'123',NULL,0,'tuan3','Tuan 3','Tran','tuan3@gmail.com',0,1,'2023-12-02 09:40:58.000000',1),(5,'123456',NULL,0,'tuanpasswordfails','Tuan 4','password','tuan4@gmail.com',0,1,'2023-12-07 10:34:31.000000',1),(6,'123456',NULL,0,'tuanpassword1','Tuan 5','Tran','tuan5@gmail.com',0,1,'2023-12-07 10:50:19.000000',1),(7,'pbkdf2_sha256$600000$YkfAul7vg60OJHoQqLFFko$L75Dbc72umE1LYSuy7SEMoVJsHb+CDQT6srpddZxaI4=',NULL,0,'postman','postman','postman','postman@gmail.com',0,1,'2023-12-07 15:30:00.123456',1),(8,'pbkdf2_sha256$600000$vlqLe1BNU6f0YF1TdG6Kan$WHVSVcbHaZ07dg1Ha4cq/GTLqjJUZmHjB1ij44gzhUQ=',NULL,0,'tuan6','Tuan 6','Tuan','tuan6@example.com',0,1,'2023-12-10 11:42:43.323435',1),(9,'pbkdf2_sha256$600000$6iyM47wsGvy9txISvvRGkB$HgxapVMM08GYlIrOuhR33iGxTlCnbo87PFI3nNjJx4Y=',NULL,0,'tuan7','Tuan 7','Tran','',0,1,'2023-12-10 11:44:01.087788',1),(10,'password',NULL,0,'username','first_name','last_name','email@gmail.com',0,1,'2023-12-19 11:57:33.728490',1),(11,'pbkdf2_sha256$600000$uaJ7nQdrlc6IncdN955uzX$aGWFGd1h+FnMZpixTu7DrwMfpwanaJ3Sapucinxbhgk=',NULL,0,'username1','first_name','last_name','email@gmail.com',0,1,'2023-12-19 12:07:24.260463',1),(12,'pbkdf2_sha256$600000$mYGjYnyjJy1DHeFxccXV8z$4031NTk+hrz166ibil4DfwN5SltoLUacaRsXox15ptc=',NULL,0,'username3','first_name','last_name','email@gmail.com',0,1,'2023-12-19 12:25:40.355863',3),(13,'pbkdf2_sha256$600000$UUWQcoS1P9QcZ577p4Y7vP$kF67MbEGHVvFhIyl40k6jTIQUcD+q6yXLKK38eO/UPc=',NULL,0,'12312','string','string','string',0,1,'2023-12-19 12:32:00.927257',3),(14,'pbkdf2_sha256$600000$VdpHrMrltbNF5kc8mVRHuJ$QSBFKkNrLtCKrZNQG1SsLX2YSq558Mq8DTI+sXhKJJE=',NULL,0,'43535','string','string','string',0,1,'2023-12-19 12:33:59.352775',3),(15,'pbkdf2_sha256$600000$VdpHrMrltbNF5kc8mVRHuJ$QSBFKkNrLtCKrZNQG1SsLX2YSq558Mq8DTI+sXhKJJE=',NULL,0,'435357','string','string','string',0,1,'2023-12-19 12:33:59.352775',3),(16,'pbkdf2_sha256$600000$VdpHrMrltbNF5kc8mVRHuJ$QSBFKkNrLtCKrZNQG1SsLX2YSq558Mq8DTI+sXhKJJE=',NULL,0,'435358','string','string','string',0,1,'2023-12-19 12:33:59.352775',3),(17,'pbkdf2_sha256$600000$VdpHrMrltbNF5kc8mVRHuJ$QSBFKkNrLtCKrZNQG1SsLX2YSq558Mq8DTI+sXhKJJE=',NULL,0,'435359','string','string','string',0,1,'2023-12-19 12:33:59.352775',3),(20,'pbkdf2_sha256$600000$wp7QUCfSFsb8gnRQFJWlJl$ZNawP/31SWr1EGKkw1O7rik+ukxSfgwyVODmAuEj7eM=',NULL,0,'username4','first_name','last_name','email@gmail.com',0,1,'2023-12-28 12:16:38.671909',3),(21,'pbkdf2_sha256$600000$wp7QUCfSFsb8gnRQFJWlJl$ZNawP/31SWr1EGKkw1O7rik+ukxSfgwyVODmAuEj7eM=',NULL,0,'username5','first_name','last_name','email@gmail.com',0,1,'2023-12-28 12:16:38.671909',3),(25,'pbkdf2_sha256$600000$xAFgnX6BxTcfsm4TtBs6gw$fUOR8D35c4Foypckn8iGzlJZy5torqB79m7fw0eo9L0=',NULL,0,'username6','first_name','last_name','email@gmail.com',0,1,'2023-12-28 13:37:20.393913',3),(26,'pbkdf2_sha256$600000$M8ryyiLMybgOobfR2TQFqG$WNPHAbP0MHoUIzdg8eAYP6MSDGSWaBo1BH1ZKCuxBgw=',NULL,0,'username7','first_name','last_name','email@gmail.com',0,1,'2023-12-28 13:42:06.973048',3),(27,'pbkdf2_sha256$600000$OpxVMYIXPtnCMbn9zQ0Zhb$bnbwJCZZSL7kcRSDfnX+T2wrgil7Qr4NOh9eCfwRIr0=',NULL,0,'username8','first_name','last_name','email@gmail.com',0,1,'2023-12-28 13:47:05.798022',3),(28,'pbkdf2_sha256$600000$lOGLTL9CaxIra3whK6J72W$tKEOZjnPBqWJvBtG3VS9Ygo6OUEH3qWKL+EnxMd/o3I=',NULL,0,'username10','first_name','last_name','email@gmail.com',0,1,'2023-12-28 13:50:50.452850',3),(29,'pbkdf2_sha256$600000$kMpxIWaxEPXEb6abD4L49r$yXFIJ6XPL0sE7Qa7sAcgqi0ToA0IpKldEn8RGrw5xNQ=',NULL,0,'username11','first_name','last_name','email@gmail.com',0,1,'2023-12-28 13:59:59.344804',3),(30,'pbkdf2_sha256$600000$BnVBIbWcFOXxZ9c9TxODPb$M4VHtEQwWUuYavGax/QldI5Ozrrtt//bDxIJlPFWBM8=',NULL,0,'username13','first_name','last_name','email@gmail.com',0,1,'2023-12-31 15:37:42.916676',3),(32,'pbkdf2_sha256$600000$I1kht3DgNsslBJwA4b4MIp$a3vpO/fthQCH64yHErrTeG3p+8SgQfM5Yk+Igm1EyO4=',NULL,0,'lec123','lec','lec','lec@gmail.com',0,1,'2024-01-18 11:39:53.180269',3);
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

-- Dump completed on 2024-01-18 18:43:54
