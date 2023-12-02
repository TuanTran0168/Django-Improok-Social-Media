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
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add invitation group',7,'add_invitationgroup'),(26,'Can change invitation group',7,'change_invitationgroup'),(27,'Can delete invitation group',7,'delete_invitationgroup'),(28,'Can view invitation group',7,'view_invitationgroup'),(29,'Can add post',8,'add_post'),(30,'Can change post',8,'change_post'),(31,'Can delete post',8,'delete_post'),(32,'Can view post',8,'view_post'),(33,'Can add post survey',9,'add_postsurvey'),(34,'Can change post survey',9,'change_postsurvey'),(35,'Can delete post survey',9,'delete_postsurvey'),(36,'Can view post survey',9,'view_postsurvey'),(37,'Can add reaction',10,'add_reaction'),(38,'Can change reaction',10,'change_reaction'),(39,'Can delete reaction',10,'delete_reaction'),(40,'Can view reaction',10,'view_reaction'),(41,'Can add role',11,'add_role'),(42,'Can change role',11,'change_role'),(43,'Can delete role',11,'delete_role'),(44,'Can view role',11,'view_role'),(45,'Can add survey answer',12,'add_surveyanswer'),(46,'Can change survey answer',12,'change_surveyanswer'),(47,'Can delete survey answer',12,'delete_surveyanswer'),(48,'Can view survey answer',12,'view_surveyanswer'),(49,'Can add survey question',13,'add_surveyquestion'),(50,'Can change survey question',13,'change_surveyquestion'),(51,'Can delete survey question',13,'delete_surveyquestion'),(52,'Can view survey question',13,'view_surveyquestion'),(53,'Can add survey question type',14,'add_surveyquestiontype'),(54,'Can change survey question type',14,'change_surveyquestiontype'),(55,'Can delete survey question type',14,'delete_surveyquestiontype'),(56,'Can view survey question type',14,'view_surveyquestiontype'),(57,'Can add survey response',15,'add_surveyresponse'),(58,'Can change survey response',15,'change_surveyresponse'),(59,'Can delete survey response',15,'delete_surveyresponse'),(60,'Can view survey response',15,'view_surveyresponse'),(61,'Can add survey question option',16,'add_surveyquestionoption'),(62,'Can change survey question option',16,'change_surveyquestionoption'),(63,'Can delete survey question option',16,'delete_surveyquestionoption'),(64,'Can view survey question option',16,'view_surveyquestionoption'),(65,'Can add survey answer option',17,'add_surveyansweroption'),(66,'Can change survey answer option',17,'change_surveyansweroption'),(67,'Can delete survey answer option',17,'delete_surveyansweroption'),(68,'Can view survey answer option',17,'view_surveyansweroption'),(69,'Can add post reaction',18,'add_postreaction'),(70,'Can change post reaction',18,'change_postreaction'),(71,'Can delete post reaction',18,'delete_postreaction'),(72,'Can view post reaction',18,'view_postreaction'),(73,'Can add post invitation',19,'add_postinvitation'),(74,'Can change post invitation',19,'change_postinvitation'),(75,'Can delete post invitation',19,'delete_postinvitation'),(76,'Can view post invitation',19,'view_postinvitation'),(77,'Can add post image',20,'add_postimage'),(78,'Can change post image',20,'change_postimage'),(79,'Can delete post image',20,'delete_postimage'),(80,'Can view post image',20,'view_postimage'),(81,'Can add comment',21,'add_comment'),(82,'Can change comment',21,'change_comment'),(83,'Can delete comment',21,'delete_comment'),(84,'Can view comment',21,'view_comment'),(85,'Can add account',22,'add_account'),(86,'Can change account',22,'change_account'),(87,'Can delete account',22,'delete_account'),(88,'Can view account',22,'view_account'),(89,'Can add alumni account',23,'add_alumniaccount'),(90,'Can change alumni account',23,'change_alumniaccount'),(91,'Can delete alumni account',23,'delete_alumniaccount'),(92,'Can view alumni account',23,'view_alumniaccount'),(93,'Can add confirm status',24,'add_confirmstatus'),(94,'Can change confirm status',24,'change_confirmstatus'),(95,'Can delete confirm status',24,'delete_confirmstatus'),(96,'Can view confirm status',24,'view_confirmstatus'),(97,'Can add group account',25,'add_groupaccount'),(98,'Can change group account',25,'change_groupaccount'),(99,'Can delete group account',25,'delete_groupaccount'),(100,'Can view group account',25,'view_groupaccount'),(101,'Can add invitation account',26,'add_invitationaccount'),(102,'Can change invitation account',26,'change_invitationaccount'),(103,'Can delete invitation account',26,'delete_invitationaccount'),(104,'Can view invitation account',26,'view_invitationaccount');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-12-01 18:34:13.494895','1','Accept',1,'[{\"added\": {}}]',24,1),(2,'2023-12-01 18:34:16.943835','2','Deny',1,'[{\"added\": {}}]',24,1),(3,'2023-12-01 18:39:40.200105','1','0345809638',1,'[{\"added\": {}}]',22,1),(4,'2023-12-02 08:40:35.940138','2','tuan1',1,'[{\"added\": {}}]',6,1),(5,'2023-12-02 08:44:48.826140','2','012345678',1,'[{\"added\": {}}]',22,1),(6,'2023-12-02 08:59:26.504961','1','Bài Post đầu tiên',1,'[{\"added\": {}}]',8,1),(7,'2023-12-02 08:59:44.367475','2','Bài Post thứ 2',1,'[{\"added\": {}}]',8,1),(8,'2023-12-02 08:59:55.372086','3','Bài Post thứ 3',1,'[{\"added\": {}}]',8,1),(9,'2023-12-02 09:00:17.497283','4','Bài Post 1 của tuan1',1,'[{\"added\": {}}]',8,1),(10,'2023-12-02 09:00:24.823636','5','Bài Post 2 của tuan1',1,'[{\"added\": {}}]',8,1),(11,'2023-12-02 09:37:35.330205','3','tuan2',1,'[{\"added\": {}}]',6,1),(12,'2023-12-02 09:38:17.012091','3','36262312312',1,'[{\"added\": {}}]',22,1),(13,'2023-12-02 09:40:27.725469','3','36262312312',2,'[{\"changed\": {\"fields\": [\"Avatar\", \"Cover avatar\"]}}]',22,1),(14,'2023-12-02 09:41:22.623053','4','tuan3',1,'[{\"added\": {}}]',6,1),(15,'2023-12-02 09:41:45.641061','4','3626',1,'[{\"added\": {}}]',22,1),(16,'2023-12-02 10:24:12.975364','1','LIKE',1,'[{\"added\": {}}]',10,1),(17,'2023-12-02 10:24:16.629628','2','LOVE',1,'[{\"added\": {}}]',10,1),(18,'2023-12-02 10:24:19.811735','3','HAHA',1,'[{\"added\": {}}]',10,1),(19,'2023-12-02 10:24:44.983909','4','SAD',1,'[{\"added\": {}}]',10,1),(20,'2023-12-02 10:25:21.285378','5','ANGRY',1,'[{\"added\": {}}]',10,1),(21,'2023-12-02 10:25:46.257505','1','PostReaction object (1)',1,'[{\"added\": {}}]',18,1),(22,'2023-12-02 10:28:37.712588','1','Bài viết hay thế',1,'[{\"added\": {}}]',21,1),(23,'2023-12-02 10:48:22.975522','2','Bài viết hay thế 1',1,'[{\"added\": {}}]',21,1),(24,'2023-12-02 10:49:49.595723','6','<p><u><em><strong>Post n&agrave;y đăng bằng ckeditor</strong></em></u></p>',1,'[{\"added\": {}}]',8,1),(25,'2023-12-02 11:06:31.932538','7','<p>B&agrave;i Post thứ 2 bằng ckeditor nhưng kh&ocirc;ng chỉnh g&igrave;</p>',1,'[{\"added\": {}}]',8,1),(26,'2023-12-02 11:35:54.875356','8','<p>POST KHẢO S&Aacute;T GPA</p>',1,'[{\"added\": {}}]',8,1),(27,'2023-12-02 13:11:54.860770','1','Khảo sát GPA',1,'[{\"added\": {}}]',9,1),(28,'2023-12-02 13:19:42.002946','1','MULTIPLE CHOICE QUESTION',1,'[{\"added\": {}}]',14,1),(29,'2023-12-02 13:19:49.452444','2','INPUT TEXT QUESTION',1,'[{\"added\": {}}]',14,1),(30,'2023-12-02 13:19:54.424877','3','CHECKBOX QUESTION',1,'[{\"added\": {}}]',14,1),(31,'2023-12-02 13:31:47.864839','1','GPA của bạn là bao nhiêu ( checkbox question )?',1,'[{\"added\": {}}]',13,1),(32,'2023-12-02 13:34:01.943883','1','1.0',1,'[{\"added\": {}}]',16,1),(33,'2023-12-02 13:34:10.631732','2','2.0',1,'[{\"added\": {}}]',16,1),(34,'2023-12-02 13:34:17.064237','3','3.0',1,'[{\"added\": {}}]',16,1),(35,'2023-12-02 13:34:27.685777','4','4.0',1,'[{\"added\": {}}]',16,1),(36,'2023-12-02 13:37:00.682523','2','Tại sao bạn được GPA như zậy? (multi choices)',1,'[{\"added\": {}}]',13,1),(37,'2023-12-02 13:38:09.172309','5','Vì học anh Thành',1,'[{\"added\": {}}]',16,1),(38,'2023-12-02 13:38:26.383833','6','Vì học PC CÔNG :)',1,'[{\"added\": {}}]',16,1),(39,'2023-12-02 13:39:30.894925','3','Bạn có cảm nghĩ gì về GPA bạn đạt được? (input text)',1,'[{\"added\": {}}]',13,1),(40,'2023-12-02 13:46:22.745609','2','Tại sao bạn được GPA như zậy? (multi choice)',2,'[{\"changed\": {\"fields\": [\"Question content\"]}}]',13,1),(41,'2023-12-02 14:02:03.734400','1','SurveyResponse object (1)',1,'[{\"added\": {}}]',15,1),(42,'2023-12-02 14:23:20.465531','4','Not input text type',1,'[{\"added\": {}}]',12,1),(43,'2023-12-02 14:26:42.686579','4','Not input text type',2,'[{\"changed\": {\"fields\": [\"Question option value\"]}}]',12,1),(44,'2023-12-02 14:26:47.085033','4','Not input text type',2,'[]',12,1),(45,'2023-12-02 14:27:43.441177','4','Not input text type',2,'[]',12,1),(46,'2023-12-02 14:37:09.729456','1','SurveyAnswerOption object (1)',1,'[{\"added\": {}}]',17,1),(47,'2023-12-02 14:37:15.078724','2','SurveyAnswerOption object (2)',1,'[{\"added\": {}}]',17,1),(48,'2023-12-02 14:52:20.675523','5','Not input text type (Tại sao bạn được GPA như zậy? (multi choice) - tuan1 - Khảo sát GPA) ',1,'[{\"added\": {}}]',12,1),(49,'2023-12-02 14:52:45.386535','3','Not input text type (Tại sao bạn được GPA như zậy? (multi choice) - tuan1 - Khảo sát GPA) Vì học anh Thành',1,'[{\"added\": {}}]',17,1),(50,'2023-12-02 14:53:54.770381','6','Học anh Thành quá đẳng cấp nên GPA cao',1,'[{\"added\": {}}]',12,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session'),(22,'social_media','account'),(23,'social_media','alumniaccount'),(21,'social_media','comment'),(24,'social_media','confirmstatus'),(25,'social_media','groupaccount'),(26,'social_media','invitationaccount'),(7,'social_media','invitationgroup'),(8,'social_media','post'),(20,'social_media','postimage'),(19,'social_media','postinvitation'),(18,'social_media','postreaction'),(9,'social_media','postsurvey'),(10,'social_media','reaction'),(11,'social_media','role'),(12,'social_media','surveyanswer'),(17,'social_media','surveyansweroption'),(13,'social_media','surveyquestion'),(16,'social_media','surveyquestionoption'),(14,'social_media','surveyquestiontype'),(15,'social_media','surveyresponse'),(6,'social_media','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-12-01 18:04:14.999092'),(2,'contenttypes','0002_remove_content_type_name','2023-12-01 18:04:15.045969'),(3,'auth','0001_initial','2023-12-01 18:04:15.234298'),(4,'auth','0002_alter_permission_name_max_length','2023-12-01 18:04:15.312827'),(5,'auth','0003_alter_user_email_max_length','2023-12-01 18:04:15.312827'),(6,'auth','0004_alter_user_username_opts','2023-12-01 18:04:15.328450'),(7,'auth','0005_alter_user_last_login_null','2023-12-01 18:04:15.328450'),(8,'auth','0006_require_contenttypes_0002','2023-12-01 18:04:15.344076'),(9,'auth','0007_alter_validators_add_error_messages','2023-12-01 18:04:15.344076'),(10,'auth','0008_alter_user_username_max_length','2023-12-01 18:04:15.359702'),(11,'auth','0009_alter_user_last_name_max_length','2023-12-01 18:04:15.359702'),(12,'auth','0010_alter_group_name_max_length','2023-12-01 18:04:15.391361'),(13,'auth','0011_update_proxy_permissions','2023-12-01 18:04:15.391361'),(14,'auth','0012_alter_user_first_name_max_length','2023-12-01 18:04:15.406985'),(15,'social_media','0001_initial','2023-12-01 18:04:16.913187'),(16,'admin','0001_initial','2023-12-01 18:04:17.007389'),(17,'admin','0002_logentry_remove_auto_add','2023-12-01 18:04:17.038600'),(18,'admin','0003_logentry_add_action_flag_choices','2023-12-01 18:04:17.054226'),(19,'sessions','0001_initial','2023-12-01 18:04:17.085876'),(20,'social_media','0002_account_alumniaccount_confirmstatus_groupaccount_and_more','2023-12-01 18:04:18.669855'),(21,'social_media','0003_account_account_status','2023-12-01 18:04:18.732760'),(22,'social_media','0004_comment_comment_image_url_alter_account_avatar_and_more','2023-12-02 08:55:20.720259'),(23,'social_media','0005_alter_account_avatar_alter_account_cover_avatar_and_more','2023-12-02 10:46:14.458045'),(24,'social_media','0006_remove_postsurvey_post_survey_status_and_more','2023-12-02 14:14:02.373791'),(25,'social_media','0007_alter_surveyanswer_question_option_value','2023-12-02 14:22:51.735870'),(26,'social_media','0008_alter_surveyanswer_question_option_value','2023-12-02 14:27:17.842714');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('eami7ty3w9zp1ckrvn4dr4slc91x9js2','.eJxVjMEOwiAQRP-FsyGwBQSP3v0GsiyLVA1NSnsy_rtt0oPeJvPezFtEXJca185zHLO4CC1Ov11CenLbQX5gu0-SprbMY5K7Ig_a5W3K_Loe7t9BxV639VAyFtYuK-M9lmTAOQ96y3Q2SArYB0oBgKy1Shd0OLAKhqEYk20Qny_tJjfV:1r9LGY:x5ieLOZlq70jxc6ztt5_CLMZ0HIQmWmhn-AvwahNCx4','2023-12-16 08:22:22.506434');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_account`
--

LOCK TABLES `social_media_account` WRITE;
/*!40000 ALTER TABLE `social_media_account` DISABLE KEYS */;
INSERT INTO `social_media_account` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,'0345809638','2002-08-28 18:37:49.000000','Cho null=True rồi mà sao bắt lạ z???','Cho null=True rồi mà sao bắt lạ z???',1,1,1),(2,'2023-12-02','2023-12-02','2023-12-02',1,'012345678','2023-12-02 08:44:27.000000','images/accounts/avatar/2023/12/Ảnh_của_tui.jpg','images/accounts/cover_avatar/2023/12/Ảnh_của_tui_1.jpg',3,2,1),(3,'2023-12-02','2023-12-02','2023-12-02',1,'36262312312','2023-12-02 09:38:16.000000','images/accounts/avatar/2023/12/Screenshot_2023-12-02_163517.png','images/accounts/cover_avatar/2023/12/Screenshot_2023-12-02_163517.png',3,3,0),(4,'2023-12-02','2023-12-02','2023-12-02',1,'3626','2023-12-02 09:41:44.000000','images/accounts/avatar/2023/12/FURINA.png','images/accounts/cover_avatar/2023/12/FURINA.png',2,4,0);
/*!40000 ALTER TABLE `social_media_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_alumniaccount`
--

LOCK TABLES `social_media_alumniaccount` WRITE;
/*!40000 ALTER TABLE `social_media_alumniaccount` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_alumniaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_comment`
--

LOCK TABLES `social_media_comment` WRITE;
/*!40000 ALTER TABLE `social_media_comment` DISABLE KEYS */;
INSERT INTO `social_media_comment` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,'Bài viết hay thế',1,2,'images/comments/2023/12/Screenshot_2023-12-02_163517.png'),(2,'2023-12-02','2023-12-02','2023-12-02',1,'Bài viết hay thế 1',2,2,'images/comments/2023/12/FURINA.png');
/*!40000 ALTER TABLE `social_media_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_confirmstatus`
--

LOCK TABLES `social_media_confirmstatus` WRITE;
/*!40000 ALTER TABLE `social_media_confirmstatus` DISABLE KEYS */;
INSERT INTO `social_media_confirmstatus` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,'Accept'),(2,'2023-12-02','2023-12-02','2023-12-02',1,'Deny');
/*!40000 ALTER TABLE `social_media_confirmstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_groupaccount`
--

LOCK TABLES `social_media_groupaccount` WRITE;
/*!40000 ALTER TABLE `social_media_groupaccount` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_groupaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_invitationaccount`
--

LOCK TABLES `social_media_invitationaccount` WRITE;
/*!40000 ALTER TABLE `social_media_invitationaccount` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_invitationaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_invitationgroup`
--

LOCK TABLES `social_media_invitationgroup` WRITE;
/*!40000 ALTER TABLE `social_media_invitationgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_invitationgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_post`
--

LOCK TABLES `social_media_post` WRITE;
/*!40000 ALTER TABLE `social_media_post` DISABLE KEYS */;
INSERT INTO `social_media_post` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,'Bài Post đầu tiên',0,1),(2,'2023-12-02','2023-12-02','2023-12-02',1,'Bài Post thứ 2',0,1),(3,'2023-12-02','2023-12-02','2023-12-02',1,'Bài Post thứ 3',0,1),(4,'2023-12-02','2023-12-02','2023-12-02',1,'Bài Post 1 của tuan1',0,2),(5,'2023-12-02','2023-12-02','2023-12-02',1,'Bài Post 2 của tuan1',0,2),(6,'2023-12-02','2023-12-02','2023-12-02',1,'<p><u><em><strong>Post n&agrave;y đăng bằng ckeditor</strong></em></u></p>',0,1),(7,'2023-12-02','2023-12-02','2023-12-02',1,'<p>B&agrave;i Post thứ 2 bằng ckeditor nhưng kh&ocirc;ng chỉnh g&igrave;</p>',0,2),(8,'2023-12-02','2023-12-02','2023-12-02',1,'<p>POST KHẢO S&Aacute;T GPA</p>',0,1);
/*!40000 ALTER TABLE `social_media_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_postimage`
--

LOCK TABLES `social_media_postimage` WRITE;
/*!40000 ALTER TABLE `social_media_postimage` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_postimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_postinvitation`
--

LOCK TABLES `social_media_postinvitation` WRITE;
/*!40000 ALTER TABLE `social_media_postinvitation` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_postinvitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_postreaction`
--

LOCK TABLES `social_media_postreaction` WRITE;
/*!40000 ALTER TABLE `social_media_postreaction` DISABLE KEYS */;
INSERT INTO `social_media_postreaction` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,1,2,1);
/*!40000 ALTER TABLE `social_media_postreaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_postsurvey`
--

LOCK TABLES `social_media_postsurvey` WRITE;
/*!40000 ALTER TABLE `social_media_postsurvey` DISABLE KEYS */;
INSERT INTO `social_media_postsurvey` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,'Khảo sát GPA','2023-12-02 13:11:23.000000','2023-12-02 13:11:24.000000',8,0);
/*!40000 ALTER TABLE `social_media_postsurvey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_reaction`
--

LOCK TABLES `social_media_reaction` WRITE;
/*!40000 ALTER TABLE `social_media_reaction` DISABLE KEYS */;
INSERT INTO `social_media_reaction` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,'LIKE'),(2,'2023-12-02','2023-12-02','2023-12-02',1,'LOVE'),(3,'2023-12-02','2023-12-02','2023-12-02',1,'HAHA'),(4,'2023-12-02','2023-12-02','2023-12-02',1,'SAD'),(5,'2023-12-02','2023-12-02','2023-12-02',1,'ANGRY');
/*!40000 ALTER TABLE `social_media_reaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_role`
--

LOCK TABLES `social_media_role` WRITE;
/*!40000 ALTER TABLE `social_media_role` DISABLE KEYS */;
INSERT INTO `social_media_role` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,'Admin'),(2,'2023-12-02','2023-12-02','2023-12-02',1,'Lecturer'),(3,'2023-12-02','2023-12-02','2023-12-02',1,'Alumni');
/*!40000 ALTER TABLE `social_media_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_surveyanswer`
--

LOCK TABLES `social_media_surveyanswer` WRITE;
/*!40000 ALTER TABLE `social_media_surveyanswer` DISABLE KEYS */;
INSERT INTO `social_media_surveyanswer` VALUES (4,'2023-12-02','2023-12-02','2023-12-02',1,NULL,1,1),(5,'2023-12-02','2023-12-02','2023-12-02',1,NULL,2,1),(6,'2023-12-02','2023-12-02','2023-12-02',1,'Học anh Thành quá đẳng cấp nên GPA cao',3,1);
/*!40000 ALTER TABLE `social_media_surveyanswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_surveyansweroption`
--

LOCK TABLES `social_media_surveyansweroption` WRITE;
/*!40000 ALTER TABLE `social_media_surveyansweroption` DISABLE KEYS */;
INSERT INTO `social_media_surveyansweroption` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,4,3),(2,'2023-12-02','2023-12-02','2023-12-02',1,4,4),(3,'2023-12-02','2023-12-02','2023-12-02',1,5,5);
/*!40000 ALTER TABLE `social_media_surveyansweroption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_surveyquestion`
--

LOCK TABLES `social_media_surveyquestion` WRITE;
/*!40000 ALTER TABLE `social_media_surveyquestion` DISABLE KEYS */;
INSERT INTO `social_media_surveyquestion` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,'GPA của bạn là bao nhiêu ( checkbox question )?',0,1,3,0),(2,'2023-12-02','2023-12-02','2023-12-02',1,'Tại sao bạn được GPA như zậy? (multi choice)',0,1,1,0),(3,'2023-12-02','2023-12-02','2023-12-02',1,'Bạn có cảm nghĩ gì về GPA bạn đạt được? (input text)',0,1,2,0);
/*!40000 ALTER TABLE `social_media_surveyquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_surveyquestionoption`
--

LOCK TABLES `social_media_surveyquestionoption` WRITE;
/*!40000 ALTER TABLE `social_media_surveyquestionoption` DISABLE KEYS */;
INSERT INTO `social_media_surveyquestionoption` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,'1.0',0,1),(2,'2023-12-02','2023-12-02','2023-12-02',1,'2.0',0,1),(3,'2023-12-02','2023-12-02','2023-12-02',1,'3.0',0,1),(4,'2023-12-02','2023-12-02','2023-12-02',1,'4.0',0,1),(5,'2023-12-02','2023-12-02','2023-12-02',1,'Vì học anh Thành',0,2),(6,'2023-12-02','2023-12-02','2023-12-02',1,'Vì học PC CÔNG :)',0,2);
/*!40000 ALTER TABLE `social_media_surveyquestionoption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_surveyquestiontype`
--

LOCK TABLES `social_media_surveyquestiontype` WRITE;
/*!40000 ALTER TABLE `social_media_surveyquestiontype` DISABLE KEYS */;
INSERT INTO `social_media_surveyquestiontype` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,'MULTIPLE CHOICE QUESTION'),(2,'2023-12-02','2023-12-02','2023-12-02',1,'INPUT TEXT QUESTION'),(3,'2023-12-02','2023-12-02','2023-12-02',1,'CHECKBOX QUESTION');
/*!40000 ALTER TABLE `social_media_surveyquestiontype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_surveyresponse`
--

LOCK TABLES `social_media_surveyresponse` WRITE;
/*!40000 ALTER TABLE `social_media_surveyresponse` DISABLE KEYS */;
INSERT INTO `social_media_surveyresponse` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,1,2);
/*!40000 ALTER TABLE `social_media_surveyresponse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_user`
--

LOCK TABLES `social_media_user` WRITE;
/*!40000 ALTER TABLE `social_media_user` DISABLE KEYS */;
INSERT INTO `social_media_user` VALUES (1,'pbkdf2_sha256$600000$2wYAvGMI58wUR4jfbF9Hs5$jxG3DTdYTZemo5oKYIgzmVSW91FdhbxowqxVuEZo5X8=','2023-12-02 08:22:22.502431',1,'admin','','','tuantran@gmail.com',1,1,'2023-12-01 18:04:49.275061',1),(2,'654321',NULL,0,'tuan1','Tuan','Tran','tuan1@gmail.com',0,1,'2023-12-02 08:39:37.000000',1),(3,'123456',NULL,0,'tuan2','Tuan 2','Tran','tuan2@gmail.com',0,1,'2023-12-02 09:37:01.000000',1),(4,'123',NULL,0,'tuan3','Tuan 3','Tran','tuan3@gmail.com',0,1,'2023-12-02 09:40:58.000000',1);
/*!40000 ALTER TABLE `social_media_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_user_groups`
--

LOCK TABLES `social_media_user_groups` WRITE;
/*!40000 ALTER TABLE `social_media_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_media_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2023-12-02 22:00:00
