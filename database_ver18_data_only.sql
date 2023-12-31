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
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add invitation group',7,'add_invitationgroup'),(26,'Can change invitation group',7,'change_invitationgroup'),(27,'Can delete invitation group',7,'delete_invitationgroup'),(28,'Can view invitation group',7,'view_invitationgroup'),(29,'Can add post',8,'add_post'),(30,'Can change post',8,'change_post'),(31,'Can delete post',8,'delete_post'),(32,'Can view post',8,'view_post'),(33,'Can add post survey',9,'add_postsurvey'),(34,'Can change post survey',9,'change_postsurvey'),(35,'Can delete post survey',9,'delete_postsurvey'),(36,'Can view post survey',9,'view_postsurvey'),(37,'Can add reaction',10,'add_reaction'),(38,'Can change reaction',10,'change_reaction'),(39,'Can delete reaction',10,'delete_reaction'),(40,'Can view reaction',10,'view_reaction'),(41,'Can add role',11,'add_role'),(42,'Can change role',11,'change_role'),(43,'Can delete role',11,'delete_role'),(44,'Can view role',11,'view_role'),(45,'Can add survey answer',12,'add_surveyanswer'),(46,'Can change survey answer',12,'change_surveyanswer'),(47,'Can delete survey answer',12,'delete_surveyanswer'),(48,'Can view survey answer',12,'view_surveyanswer'),(49,'Can add survey question',13,'add_surveyquestion'),(50,'Can change survey question',13,'change_surveyquestion'),(51,'Can delete survey question',13,'delete_surveyquestion'),(52,'Can view survey question',13,'view_surveyquestion'),(53,'Can add survey question type',14,'add_surveyquestiontype'),(54,'Can change survey question type',14,'change_surveyquestiontype'),(55,'Can delete survey question type',14,'delete_surveyquestiontype'),(56,'Can view survey question type',14,'view_surveyquestiontype'),(57,'Can add survey response',15,'add_surveyresponse'),(58,'Can change survey response',15,'change_surveyresponse'),(59,'Can delete survey response',15,'delete_surveyresponse'),(60,'Can view survey response',15,'view_surveyresponse'),(61,'Can add survey question option',16,'add_surveyquestionoption'),(62,'Can change survey question option',16,'change_surveyquestionoption'),(63,'Can delete survey question option',16,'delete_surveyquestionoption'),(64,'Can view survey question option',16,'view_surveyquestionoption'),(65,'Can add post reaction',17,'add_postreaction'),(66,'Can change post reaction',17,'change_postreaction'),(67,'Can delete post reaction',17,'delete_postreaction'),(68,'Can view post reaction',17,'view_postreaction'),(69,'Can add post invitation',18,'add_postinvitation'),(70,'Can change post invitation',18,'change_postinvitation'),(71,'Can delete post invitation',18,'delete_postinvitation'),(72,'Can view post invitation',18,'view_postinvitation'),(73,'Can add post image',19,'add_postimage'),(74,'Can change post image',19,'change_postimage'),(75,'Can delete post image',19,'delete_postimage'),(76,'Can view post image',19,'view_postimage'),(77,'Can add comment',20,'add_comment'),(78,'Can change comment',20,'change_comment'),(79,'Can delete comment',20,'delete_comment'),(80,'Can view comment',20,'view_comment'),(81,'Can add account',21,'add_account'),(82,'Can change account',21,'change_account'),(83,'Can delete account',21,'delete_account'),(84,'Can view account',21,'view_account'),(85,'Can add alumni account',22,'add_alumniaccount'),(86,'Can change alumni account',22,'change_alumniaccount'),(87,'Can delete alumni account',22,'delete_alumniaccount'),(88,'Can view alumni account',22,'view_alumniaccount'),(89,'Can add confirm status',23,'add_confirmstatus'),(90,'Can change confirm status',23,'change_confirmstatus'),(91,'Can delete confirm status',23,'delete_confirmstatus'),(92,'Can view confirm status',23,'view_confirmstatus'),(93,'Can add application',24,'add_application'),(94,'Can change application',24,'change_application'),(95,'Can delete application',24,'delete_application'),(96,'Can view application',24,'view_application'),(97,'Can add access token',25,'add_accesstoken'),(98,'Can change access token',25,'change_accesstoken'),(99,'Can delete access token',25,'delete_accesstoken'),(100,'Can view access token',25,'view_accesstoken'),(101,'Can add grant',26,'add_grant'),(102,'Can change grant',26,'change_grant'),(103,'Can delete grant',26,'delete_grant'),(104,'Can view grant',26,'view_grant'),(105,'Can add refresh token',27,'add_refreshtoken'),(106,'Can change refresh token',27,'change_refreshtoken'),(107,'Can delete refresh token',27,'delete_refreshtoken'),(108,'Can view refresh token',27,'view_refreshtoken'),(109,'Can add id token',28,'add_idtoken'),(110,'Can change id token',28,'change_idtoken'),(111,'Can delete id token',28,'delete_idtoken'),(112,'Can view id token',28,'view_idtoken');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-12-05 01:54:11.303447','1','Group A',1,'[{\"added\": {}}]',7,1),(2,'2023-12-05 01:54:17.475192','2','Group B',1,'[{\"added\": {}}]',7,1),(3,'2023-12-05 01:55:43.155542','3','group C',1,'[{\"added\": {}}]',7,1),(4,'2023-12-05 01:57:49.742585','1','Group A',2,'[{\"added\": {\"name\": \"account-invitationgroup relationship\", \"object\": \"Account_group_account object (1)\"}}]',7,1),(5,'2023-12-05 01:58:13.538724','1','Group A',2,'[{\"added\": {\"name\": \"account-invitationgroup relationship\", \"object\": \"Account_group_account object (2)\"}}]',7,1),(6,'2023-12-05 02:04:14.144737','9','<p>POST INVITATION + 3 Post Image</p>',1,'[{\"added\": {}}, {\"added\": {\"name\": \"post image\", \"object\": \"images/post_images/2023/12/FURINA.png\"}}, {\"added\": {\"name\": \"post image\", \"object\": \"images/post_images/2023/12/Screenshot_2023-11-09_011731_qYfvcnH.png\"}}, {\"added\": {\"name\": \"post image\", \"object\": \"images/post_images/2023/12/Screenshot_2023-12-02_163517_859smi0.png\"}}, {\"added\": {\"name\": \"post invitation\", \"object\": \"Invitation event\"}}]',8,1),(7,'2023-12-05 02:05:23.581520','1','Invitation event',2,'[{\"added\": {\"name\": \"account-postinvitation relationship\", \"object\": \"Account_invitation_account object (1)\"}}, {\"added\": {\"name\": \"account-postinvitation relationship\", \"object\": \"Account_invitation_account object (2)\"}}]',18,1),(8,'2023-12-05 02:05:39.446511','1','Invitation first event',2,'[{\"changed\": {\"fields\": [\"Event name\"]}}]',18,1),(9,'2023-12-05 02:11:00.066470','5','Not input text type (Tại sao bạn được GPA như zậy? (multi choice) - tuan1 - Khảo sát GPA) ',2,'[{\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answer_option object (1)\"}}]',12,1),(10,'2023-12-05 02:11:21.730067','4','Not input text type (GPA của bạn là bao nhiêu ( checkbox question )? - tuan1 - Khảo sát GPA) ',2,'[{\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answer_option object (2)\"}}, {\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answer_option object (3)\"}}]',12,1),(11,'2023-12-05 02:17:28.700884','3','Ôi bài Post Invitation này hay quá',1,'[{\"added\": {}}]',20,1),(12,'2023-12-05 02:17:52.243105','3','Ôi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitati',2,'[{\"changed\": {\"fields\": [\"Comment content\"]}}]',20,1),(13,'2023-12-07 10:34:51.534818','5','tuanpassword',1,'[{\"added\": {}}]',6,1),(14,'2023-12-07 10:35:55.653614','5','099999',1,'[{\"added\": {}}]',21,1),(15,'2023-12-07 10:36:03.894407','5','099999',2,'[]',21,1),(16,'2023-12-07 10:37:31.492940','5','tuanpasswordfails',2,'[{\"changed\": {\"fields\": [\"Username\"]}}]',6,1),(17,'2023-12-07 10:50:47.866383','6','tuanpassword1',1,'[{\"added\": {}}]',6,1),(18,'2023-12-10 12:46:32.700082','6','images/post_images/2023/12/Screenshot_2023-12-02_163517_gIEG6wZ.png',1,'[{\"added\": {}}]',19,1),(19,'2023-12-12 12:47:25.935361','1','Group A',2,'[{\"changed\": {\"fields\": [\"Accounts\"]}}]',7,1),(20,'2023-12-12 12:47:48.452391','1','Group A',2,'[{\"changed\": {\"fields\": [\"Accounts\"]}}]',7,1),(21,'2023-12-12 12:48:03.456924','2','Group B',2,'[{\"changed\": {\"fields\": [\"Accounts\"]}}]',7,1),(22,'2023-12-12 12:48:08.547529','3','group C',2,'[{\"changed\": {\"fields\": [\"Accounts\"]}}]',7,1),(23,'2023-12-14 09:37:56.210258','5','Group E',2,'[{\"changed\": {\"fields\": [\"Accounts\"]}}]',7,1),(24,'2023-12-14 09:42:32.057736','5','Group E',2,'[{\"changed\": {\"fields\": [\"Accounts\"]}}]',7,1),(25,'2023-12-14 09:43:59.725772','5','Group E',2,'[{\"changed\": {\"fields\": [\"Accounts\"]}}]',7,1),(26,'2023-12-14 09:58:50.816659','5','Group E',2,'[{\"changed\": {\"fields\": [\"Accounts\"]}}]',7,1),(27,'2023-12-14 10:08:24.082377','4','group D',2,'[{\"changed\": {\"fields\": [\"Accounts\"]}}]',7,1),(28,'2023-12-17 06:02:42.252929','3','tuan3 - Khảo sát về độ tiện dụng của Swagger',1,'[{\"added\": {}}]',15,1),(29,'2023-12-17 06:03:42.531001','8','Not input text type (Xài swagger có tuyệt không? - tuan3 - Khảo sát về độ tiện dụng của Swagger) ',1,'[{\"added\": {}}, {\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answer_option object (5)\"}}]',12,1),(30,'2023-12-17 06:08:21.183394','6','Vì học PC CÔNG :)',2,'[]',16,1),(31,'2023-12-17 06:08:26.054851','5','Những lý do nào mà bạn thích swagger?',1,'[{\"added\": {}}, {\"added\": {\"name\": \"survey question option\", \"object\": \"V\\u00ec swagger \\u0111\\u1eb9p\"}}, {\"added\": {\"name\": \"survey question option\", \"object\": \"V\\u00ec swagger ti\\u1ec7n l\\u1ee3i\"}}, {\"added\": {\"name\": \"survey question option\", \"object\": \"V\\u00ec th\\u1ea7y b\\u1eaft x\\u00e0i :v\"}}]',13,1),(32,'2023-12-17 06:15:14.013610','4','Not input text type (GPA của bạn là bao nhiêu ( checkbox question )? - tuan1 - Khảo sát GPA) ',2,'[{\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answers object (1)\"}}, {\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answers object (2)\"}}, {\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answers object (3)\"}}]',12,1),(33,'2023-12-17 06:15:29.078446','5','Not input text type (Tại sao bạn được GPA như zậy? (multi choice) - tuan1 - Khảo sát GPA) ',2,'[{\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answers object (4)\"}}]',12,1),(34,'2023-12-17 06:15:49.632666','7','Not input text type (Xài swagger có tuyệt không? - tuan1 - Khảo sát về độ tiện dụng của Swagger) ',2,'[{\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answers object (5)\"}}]',12,1),(35,'2023-12-17 06:16:42.591729','4','tuanpasswordfails - Khảo sát về độ tiện dụng của Swagger',1,'[{\"added\": {}}]',15,1),(36,'2023-12-17 06:17:10.537482','9','Not input text type (Những lý do nào mà bạn thích swagger? - tuanpasswordfails - Khảo sát về độ tiện dụng của Swagger) ',1,'[{\"added\": {}}, {\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answers object (6)\"}}, {\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answers object (7)\"}}, {\"added\": {\"name\": \"surveyquestionoption-surveyanswer relationship\", \"object\": \"SurveyQuestionOption_survey_answers object (8)\"}}]',12,1),(37,'2023-12-17 06:20:33.653130','5','tuan2 - Khảo sát về độ tiện dụng của Swagger',1,'[{\"added\": {}}]',15,1),(38,'2023-12-17 07:03:43.600467','9','Group H2',1,'[{\"added\": {}}]',7,1),(39,'2023-12-17 08:15:01.805128','3','PostReaction object (3)',1,'[{\"added\": {}}]',17,1),(40,'2023-12-17 08:15:08.209818','4','PostReaction object (4)',1,'[{\"added\": {}}]',17,1),(41,'2023-12-17 08:15:14.278349','5','PostReaction object (5)',1,'[{\"added\": {}}]',17,1),(42,'2023-12-17 08:15:22.378320','6','PostReaction object (6)',1,'[{\"added\": {}}]',17,1),(43,'2023-12-17 08:15:31.012529','7','PostReaction object (7)',1,'[{\"added\": {}}]',17,1),(44,'2023-12-17 08:15:54.724093','8','PostReaction object (8)',1,'[{\"added\": {}}]',17,1),(45,'2023-12-21 10:16:24.510108','16','Bài Post để khảo sát',3,'',8,1),(46,'2023-12-21 10:17:58.673396','17','Bài Post để khảo sát',3,'',8,1),(47,'2023-12-21 10:19:15.461266','18','Bài Post để khảo sát',3,'',8,1),(48,'2023-12-21 10:39:23.699600','15','Bạn thích điều gì ở giảng viên B',2,'[{\"changed\": {\"fields\": [\"Question content\"]}}]',13,1),(49,'2023-12-21 13:17:36.806632','23','Đây là bài Post Invitation',3,'',8,1),(50,'2023-12-31 14:02:59.927820','16','Khảo sát chất lượng giảng viên D1',2,'[{\"changed\": {\"fields\": [\"Post survey title\"]}}]',9,1),(51,'2023-12-31 14:03:08.494196','17','Khảo sát chất lượng giảng viên D2',2,'[{\"changed\": {\"fields\": [\"Post survey title\"]}}]',9,1),(52,'2023-12-31 14:03:49.911928','9','Khảo sát chất lượng giảng viên D real',2,'[{\"changed\": {\"fields\": [\"Post survey title\"]}}]',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(25,'oauth2_provider','accesstoken'),(24,'oauth2_provider','application'),(26,'oauth2_provider','grant'),(28,'oauth2_provider','idtoken'),(27,'oauth2_provider','refreshtoken'),(5,'sessions','session'),(21,'social_media','account'),(22,'social_media','alumniaccount'),(20,'social_media','comment'),(23,'social_media','confirmstatus'),(7,'social_media','invitationgroup'),(8,'social_media','post'),(19,'social_media','postimage'),(18,'social_media','postinvitation'),(17,'social_media','postreaction'),(9,'social_media','postsurvey'),(10,'social_media','reaction'),(11,'social_media','role'),(12,'social_media','surveyanswer'),(13,'social_media','surveyquestion'),(16,'social_media','surveyquestionoption'),(14,'social_media','surveyquestiontype'),(15,'social_media','surveyresponse'),(6,'social_media','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-12-03 13:30:54.317629'),(2,'contenttypes','0002_remove_content_type_name','2023-12-03 13:30:54.348880'),(3,'auth','0001_initial','2023-12-03 13:30:54.443078'),(4,'auth','0002_alter_permission_name_max_length','2023-12-03 13:30:54.474327'),(5,'auth','0003_alter_user_email_max_length','2023-12-03 13:30:54.474327'),(6,'auth','0004_alter_user_username_opts','2023-12-03 13:30:54.474327'),(7,'auth','0005_alter_user_last_login_null','2023-12-03 13:30:54.489999'),(8,'auth','0006_require_contenttypes_0002','2023-12-03 13:30:54.493041'),(9,'auth','0007_alter_validators_add_error_messages','2023-12-03 13:30:54.493041'),(10,'auth','0008_alter_user_username_max_length','2023-12-03 13:30:54.506050'),(11,'auth','0009_alter_user_last_name_max_length','2023-12-03 13:30:54.506050'),(12,'auth','0010_alter_group_name_max_length','2023-12-03 13:30:54.521712'),(13,'auth','0011_update_proxy_permissions','2023-12-03 13:30:54.521712'),(14,'auth','0012_alter_user_first_name_max_length','2023-12-03 13:30:54.537308'),(15,'social_media','0001_initial','2023-12-03 13:30:55.604673'),(16,'admin','0001_initial','2023-12-03 13:30:55.698831'),(17,'admin','0002_logentry_remove_auto_add','2023-12-03 13:30:55.714473'),(18,'admin','0003_logentry_add_action_flag_choices','2023-12-03 13:30:55.730093'),(19,'sessions','0001_initial','2023-12-03 13:30:55.776967'),(20,'social_media','0002_account_alumniaccount_confirmstatus_groupaccount_and_more','2023-12-03 13:30:57.392628'),(21,'social_media','0003_account_account_status','2023-12-03 13:30:57.440018'),(22,'social_media','0004_comment_comment_image_url_alter_account_avatar_and_more','2023-12-03 13:30:57.643949'),(23,'social_media','0005_alter_account_avatar_alter_account_cover_avatar_and_more','2023-12-03 13:30:57.740043'),(24,'social_media','0006_remove_postsurvey_post_survey_status_and_more','2023-12-03 13:30:57.863835'),(25,'social_media','0007_alter_surveyanswer_question_option_value','2023-12-03 13:30:57.879475'),(26,'social_media','0008_alter_surveyanswer_question_option_value','2023-12-03 13:30:57.895137'),(27,'social_media','0009_remove_invitationaccount_account_and_more','2023-12-03 13:30:58.413228'),(28,'social_media','0010_alter_account_group_account_and_more','2023-12-03 13:30:58.475775'),(29,'social_media','0011_alter_account_group_account_and_more','2023-12-03 13:30:58.538679'),(30,'social_media','0012_alter_comment_comment_content_and_more','2023-12-05 02:15:09.429543'),(31,'oauth2_provider','0001_initial','2023-12-09 11:28:31.801593'),(32,'oauth2_provider','0002_auto_20190406_1805','2023-12-09 11:28:31.858138'),(33,'oauth2_provider','0003_auto_20201211_1314','2023-12-09 11:28:31.939136'),(34,'oauth2_provider','0004_auto_20200902_2022','2023-12-09 11:28:32.222162'),(35,'oauth2_provider','0005_auto_20211222_2352','2023-12-09 11:28:32.304365'),(36,'oauth2_provider','0006_alter_application_client_secret','2023-12-09 11:28:32.337879'),(37,'oauth2_provider','0007_application_post_logout_redirect_uris','2023-12-09 11:28:32.402542'),(38,'social_media','0013_remove_account_group_account_and_more','2023-12-12 12:38:26.937512'),(39,'social_media','0014_rename_account_postinvitation_accounts','2023-12-12 12:41:24.296464'),(40,'social_media','0015_alter_invitationgroup_accounts_and_more','2023-12-14 09:40:33.062249'),(41,'social_media','0016_remove_surveyquestionoption_survey_answer_option_and_more','2023-12-17 06:11:51.959064'),(42,'social_media','0017_alter_account_deleted_date_alter_account_role_and_more','2023-12-19 12:24:53.381433'),(43,'social_media','0018_alter_account_deleted_date_and_more','2023-12-21 10:39:40.716880'),(44,'social_media','0019_rename_question_option_value_surveyanswer_answer_value_and_more','2023-12-31 15:23:47.923420');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('8uaq6b2eev9wj58myfbzg65r0sifz80s','.eJxVjMEOwiAQRP-FsyGwBQSP3v0GsiyLVA1NSnsy_rtt0oPeJvPezFtEXJca185zHLO4CC1Ov11CenLbQX5gu0-SprbMY5K7Ig_a5W3K_Loe7t9BxV639VAyFtYuK-M9lmTAOQ96y3Q2SArYB0oBgKy1Shd0OLAKhqEYk20Qny_tJjfV:1rElqF:bnboS88BDDClLff8SmSRJ2SOYhPbfw_QTAoZ1ibVjeI','2023-12-31 07:45:39.988007'),('ao32xfmuceqwqrfqsir7xdpti0hg3bzb','.eJxVjMEOwiAQRP-FsyGwBQSP3v0GsiyLVA1NSnsy_rtt0oPeJvPezFtEXJca185zHLO4CC1Ov11CenLbQX5gu0-SprbMY5K7Ig_a5W3K_Loe7t9BxV639VAyFtYuK-M9lmTAOQ96y3Q2SArYB0oBgKy1Shd0OLAKhqEYk20Qny_tJjfV:1rJwJh:LJIjLjxND2biZSCHv_a3e_mpBmIj5R6WhvYuZNSjXaE','2024-01-14 13:57:25.329923'),('bmybxp5zgcysy5c4n54hqlg221ogglds','.eJxVjMEOwiAQRP-FsyGwBQSP3v0GsiyLVA1NSnsy_rtt0oPeJvPezFtEXJca185zHLO4CC1Ov11CenLbQX5gu0-SprbMY5K7Ig_a5W3K_Loe7t9BxV639VAyFtYuK-M9lmTAOQ96y3Q2SArYB0oBgKy1Shd0OLAKhqEYk20Qny_tJjfV:1rARpw:cz0K-I8fFuMxe6ZDQwohYjPTW07LymzcsIC-SEWwab4','2023-12-19 09:35:28.903416');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `oauth2_provider_accesstoken`
--

LOCK TABLES `oauth2_provider_accesstoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_accesstoken` VALUES (1,'mTdfbjmmZlV44XhGoDkL7TYzBZs7Ze','2023-12-09 21:40:17.888779','read write',1,1,'2023-12-09 11:40:17.889782','2023-12-09 11:40:17.889782',NULL,NULL),(2,'MFTA03sf7QDGhk4MgmQxltE5V8Qq8P','2023-12-12 18:29:50.315663','read write',1,1,'2023-12-12 08:29:50.315663','2023-12-12 08:29:50.315663',NULL,NULL),(3,'HM7suDaNLvs6ZQhfdq5B3D7smVz6PD','2023-12-14 20:31:39.568515','read write',1,1,'2023-12-14 10:31:39.569492','2023-12-14 10:31:39.569492',NULL,NULL),(4,'XmIDiznxqxUCHEbLizY775v5JLiTB4','2023-12-14 21:00:06.410048','read write',1,2,'2023-12-14 11:00:06.411121','2023-12-14 11:00:06.411121',NULL,NULL),(5,'3Bo8xNWhZqGKU7AVJhIVimORCbk1C7','2023-12-16 20:40:42.943986','read write',1,2,'2023-12-16 10:40:42.943986','2023-12-16 10:40:42.943986',NULL,NULL),(6,'foayciL9snFRQ4Tp2sng2SVkkflKFc','2023-12-17 16:57:42.943773','read write',1,2,'2023-12-17 06:57:42.943773','2023-12-17 06:57:42.943773',NULL,NULL),(7,'oBulNBppBDdEBtDgsRuogNBsaxPLAj','2023-12-17 21:40:41.132405','read write',1,2,'2023-12-17 11:40:41.132405','2023-12-17 11:40:41.133402',NULL,NULL),(8,'aY3XVcROEhPMbvVgrzfqS48cUhOs6A','2023-12-19 12:26:20.980459','read write',1,2,'2023-12-19 02:26:20.980459','2023-12-19 02:26:20.980459',NULL,NULL),(9,'TuaxIpvmyDwWHWhMv1o17oyN8deSW2','2023-12-19 14:31:02.426574','read write',1,3,'2023-12-19 04:31:02.426574','2023-12-19 04:31:02.426574',NULL,NULL),(10,'jx5GakJzOaOotcT3piytSGcqqgKakL','2023-12-19 14:32:26.037622','read write',1,1,'2023-12-19 04:32:26.037622','2023-12-19 04:32:26.037622',NULL,NULL),(11,'v5EnPVKC3JZGm4IsuABO6j8Hbgdipb','2023-12-19 19:35:58.923920','read write',1,2,'2023-12-19 09:35:58.924921','2023-12-19 09:35:58.924921',NULL,NULL),(12,'91dLCSKLHvqbxx09vHH4p6f54y5loN','2023-12-19 19:59:24.367529','read write',1,2,'2023-12-19 09:59:24.367529','2023-12-19 09:59:24.367529',NULL,NULL),(13,'FnULzUBgROc9hRgpZ2wPaZ7xK9sLOY','2023-12-19 20:02:09.476544','read write',1,2,'2023-12-19 10:02:09.476544','2023-12-19 10:02:09.476544',NULL,NULL),(14,'Qn4jUwA1irxCI6Z6Gt8h9AQs1rkTLg','2023-12-19 20:03:28.161439','read write',1,2,'2023-12-19 10:03:28.162441','2023-12-19 10:03:28.162441',NULL,NULL),(15,'6wzI6xeZVP1BrDlzBMq5TrD6QeEKgt','2023-12-19 20:14:05.308502','read write',1,2,'2023-12-19 10:14:05.309502','2023-12-19 10:14:05.309502',NULL,NULL),(16,'twIL4RXjSrthhMCTegl31PE0je9S3L','2023-12-21 20:11:40.179797','read write',1,1,'2023-12-21 10:11:40.180799','2023-12-21 10:11:40.180799',NULL,NULL),(17,'cmPhhnmgEj8t76GGoqInPM0x6emhBx','2023-12-21 21:08:25.646501','read write',1,2,'2023-12-21 11:08:25.647500','2023-12-21 11:08:25.647500',NULL,NULL),(18,'qluL1NsdtM1hM3ZtnfYjdFPdl9gQI4','2023-12-23 23:15:14.160126','read write',1,2,'2023-12-23 13:15:14.160126','2023-12-23 13:15:14.160126',NULL,NULL),(19,'JxvqNxiaj81MQnoQQeHA8K1v6qkYI1','2023-12-26 18:21:56.923684','read write',1,2,'2023-12-26 08:21:56.923684','2023-12-26 08:21:56.923684',NULL,NULL),(20,'lNSwzq16Ycsty9kcboIFiqDib4EfKo','2023-12-27 01:23:23.069311','read write',1,1,'2023-12-26 15:23:23.070363','2023-12-26 15:23:23.070363',NULL,NULL),(21,'K7vzZPscg85IVPSRkuMF9XmOatCfMW','2023-12-27 01:51:04.961888','read write',1,1,'2023-12-26 15:51:04.961888','2023-12-26 15:51:04.962451',NULL,NULL),(22,'v7OJMhKIqt7785sujd5TSV3HTZhLjA','2023-12-27 01:58:38.379519','read write',1,1,'2023-12-26 15:58:38.379519','2023-12-26 15:58:38.379519',NULL,NULL),(23,'crHEvldYJJjryAxArVvfV1fXKQgDmt','2023-12-27 02:09:46.183450','read write',1,1,'2023-12-26 16:09:46.183450','2023-12-26 16:09:46.183450',NULL,NULL),(24,'rcmFLCbILmygCzlwv6nUMcVuhLAd1O','2023-12-27 02:10:46.925077','read write',1,1,'2023-12-26 16:10:46.925077','2023-12-26 16:10:46.925077',NULL,NULL),(25,'tO71szEAsNJ8OunAUEySAA36mLSlVI','2023-12-27 02:25:52.315535','read write',1,1,'2023-12-26 16:25:52.315535','2023-12-26 16:25:52.315535',NULL,NULL),(26,'eDw1aP3bYwx9MaqNRk4iK5AaY5d53t','2023-12-27 02:28:30.591762','read write',1,1,'2023-12-26 16:28:30.592721','2023-12-26 16:28:30.592721',NULL,NULL),(27,'KTCKiBmuL49FiUdjSxBV6esMBDSGwS','2023-12-27 02:33:28.883787','read write',1,1,'2023-12-26 16:33:28.883787','2023-12-26 16:33:28.883787',NULL,NULL),(28,'80RREdnNosmXuh9iO1MyoYquf7TUvk','2023-12-27 02:59:16.478080','read write',1,1,'2023-12-26 16:59:16.479078','2023-12-26 16:59:16.479078',NULL,NULL),(29,'yc3CfshyuVoOWB0sZdobQjqLr4PDNt','2023-12-27 03:02:52.706802','read write',1,1,'2023-12-26 17:02:52.706802','2023-12-26 17:02:52.706802',NULL,NULL),(30,'XBXwFQT06CrqAZlCxOYFDYpFpZwV5Y','2023-12-27 03:04:47.114370','read write',1,1,'2023-12-26 17:04:47.114370','2023-12-26 17:04:47.114370',NULL,NULL),(31,'Sio6hFGF3OfOCRviFoSAnNofGQWEPg','2023-12-27 03:06:35.731104','read write',1,1,'2023-12-26 17:06:35.731612','2023-12-26 17:06:35.731612',NULL,NULL),(32,'lkSKufr3cTDtMiqbvKLST3uf9bQtSZ','2023-12-27 03:07:31.603059','read write',1,1,'2023-12-26 17:07:31.603059','2023-12-26 17:07:31.603059',NULL,NULL),(33,'fVsI2CHLZJYoxlJ38PLeT9728PF5Gj','2023-12-27 03:09:40.461460','read write',1,1,'2023-12-26 17:09:40.462055','2023-12-26 17:09:40.462055',NULL,NULL),(34,'IjecVhj1p3wAIWtAnVjwSxsT33hW5I','2023-12-28 01:49:56.668386','read write',1,2,'2023-12-27 15:49:56.669386','2023-12-27 15:49:56.669386',NULL,NULL),(35,'8pX0aRcaSQB3rn8eEy9P5suvS6g522','2023-12-28 02:06:19.294125','read write',1,2,'2023-12-27 16:06:19.294125','2023-12-27 16:06:19.294125',NULL,NULL),(36,'zxfKegoF9FZEjnNJk0foymt0tl09uT','2023-12-28 02:06:44.329718','read write',1,2,'2023-12-27 16:06:44.329718','2023-12-27 16:06:44.329718',NULL,NULL),(37,'FKpq7vLg9TS7tPUIdvbEdSvSIWtcbk','2023-12-28 02:07:05.393226','read write',1,2,'2023-12-27 16:07:05.393226','2023-12-27 16:07:05.393226',NULL,NULL),(38,'szCPCsfHqhGEHQOfStKErFFqsbtzBE','2023-12-28 02:08:48.714072','read write',1,2,'2023-12-27 16:08:48.714072','2023-12-27 16:08:48.714072',NULL,NULL),(39,'AMLMObmf9shK0KRTpOVoXYhSutDDpI','2023-12-28 02:09:00.867689','read write',1,2,'2023-12-27 16:09:00.867689','2023-12-27 16:09:00.867689',NULL,NULL),(40,'QgnFNmumUzEbJQOIDaeUYWmey0oIz1','2023-12-28 02:09:17.292775','read write',1,2,'2023-12-27 16:09:17.292775','2023-12-27 16:09:17.292775',NULL,NULL),(41,'zQCiKXN9WtZUL1N1e19SIhx0DP7dDg','2023-12-28 02:09:28.942322','read write',1,2,'2023-12-27 16:09:28.942322','2023-12-27 16:09:28.942322',NULL,NULL),(42,'J9DXfPQ4mHBdmeNcTsPtrqpgZiMzf5','2023-12-28 02:09:51.092780','read write',1,2,'2023-12-27 16:09:51.093780','2023-12-27 16:09:51.093780',NULL,NULL),(43,'qbiSWQaCgqKY4N41mVp1RTeNtx5Ekd','2023-12-28 02:13:19.153602','read write',1,2,'2023-12-27 16:13:19.169228','2023-12-27 16:13:19.169228',NULL,NULL),(44,'3cISffdSrqTGCdzYqQCdC51p8OWBF6','2023-12-28 02:14:13.889137','read write',1,2,'2023-12-27 16:14:13.889137','2023-12-27 16:14:13.889137',NULL,NULL),(45,'kKmSoirA5QGhHSyso7sVBeNnyFhA5Q','2023-12-28 02:14:21.367754','read write',1,3,'2023-12-27 16:14:21.383377','2023-12-27 16:14:21.383377',NULL,NULL),(46,'HcA4YVFDUNi9cffkB1FsBMZZRrOqvl','2023-12-28 21:55:23.683937','read write',1,3,'2023-12-28 11:55:23.684938','2023-12-28 11:55:23.684938',NULL,NULL),(47,'OHAMDQwamYqJxBc9iyus0lmCqmLfAR','2023-12-28 23:59:01.738501','read write',1,3,'2023-12-28 13:59:01.738501','2023-12-28 13:59:01.738501',NULL,NULL),(48,'w3G4qHFcS84ICjLhoNbvzoaeIYj7NV','2023-12-29 00:04:29.769083','read write',1,3,'2023-12-28 14:04:29.769083','2023-12-28 14:04:29.769083',NULL,NULL),(49,'QWxmbvQNxfbCUVmzJP3HQUfKwpTFec','2023-12-29 19:41:57.304305','read write',1,1,'2023-12-29 09:41:57.305308','2023-12-29 09:41:57.305308',NULL,NULL),(50,'TPjJgOXrO3WgtJWDEKeq9k6DoNXKRe','2023-12-31 04:20:37.095852','read write',1,1,'2023-12-30 18:20:37.096861','2023-12-30 18:20:37.096861',NULL,NULL),(51,'gAQOffTrYf3mf9snCsWc3uA4DMGzZP','2023-12-31 05:57:58.597152','read write',1,1,'2023-12-30 19:57:58.598153','2023-12-30 19:57:58.598153',NULL,NULL),(52,'OVee5tfNwBEAKw10yQjzdvxNRK9NJN','2023-12-31 22:59:08.761687','read write',1,1,'2023-12-31 12:59:08.761687','2023-12-31 12:59:08.761687',NULL,NULL);
/*!40000 ALTER TABLE `oauth2_provider_accesstoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `oauth2_provider_application`
--

LOCK TABLES `oauth2_provider_application` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_application` DISABLE KEYS */;
INSERT INTO `oauth2_provider_application` VALUES (1,'zDnklZ6ztQVU0X4DOQEymwV96MfWhW3Hk2VHq3D9','','confidential','password','pbkdf2_sha256$600000$5LHz7M6Judz2XeQnUf9RCc$8iGHf26rj7Ywkplnc1V8eQCl5CbCBnP6AUQ3hF0XaRc=','Improok_Social_Media',1,0,'2023-12-09 11:35:27.327354','2023-12-09 11:35:27.327354','','');
/*!40000 ALTER TABLE `oauth2_provider_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `oauth2_provider_grant`
--

LOCK TABLES `oauth2_provider_grant` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_grant` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_grant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `oauth2_provider_idtoken`
--

LOCK TABLES `oauth2_provider_idtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2_provider_idtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `oauth2_provider_refreshtoken`
--

LOCK TABLES `oauth2_provider_refreshtoken` WRITE;
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` DISABLE KEYS */;
INSERT INTO `oauth2_provider_refreshtoken` VALUES (1,'NMyUhzV6mjYkxNftvskXpKfk9CiCL3',1,1,1,'2023-12-09 11:40:17.907782','2023-12-09 11:40:17.907782',NULL),(2,'YSwxR6TLyIqRq3KxLyTZabuYAWUfpH',2,1,1,'2023-12-12 08:29:50.353010','2023-12-12 08:29:50.353010',NULL),(3,'8oLFhhMHp6Kgpkks3PBKLYkJNW9qLk',3,1,1,'2023-12-14 10:31:39.606518','2023-12-14 10:31:39.606518',NULL),(4,'4Zwkw2116kr5m2FqDu0Qo75084I3dU',4,1,2,'2023-12-14 11:00:06.415055','2023-12-14 11:00:06.415055',NULL),(5,'Bj3ENhfushzibEblproQeH7RMQGIjP',5,1,2,'2023-12-16 10:40:42.978993','2023-12-16 10:40:42.978993',NULL),(6,'5XY83Ega7mbMJWjBrnACRoBliSTMuy',6,1,2,'2023-12-17 06:57:42.975366','2023-12-17 06:57:42.975366',NULL),(7,'pKedIcXLkO1qSn0dBjJsjuHvd5I59j',7,1,2,'2023-12-17 11:40:41.173460','2023-12-17 11:40:41.173460',NULL),(8,'CtMzegwnz5pwHJT3sYo2GkqndXq6SP',8,1,2,'2023-12-19 02:26:21.022458','2023-12-19 02:26:21.022458',NULL),(9,'giBvoklyyhqmyjIuYCitlEBGJFPLqz',9,1,3,'2023-12-19 04:31:02.442199','2023-12-19 04:31:02.442199',NULL),(10,'LLwcp8SPyHFFf6Na2Ob3oWiSyQ2ZMS',10,1,1,'2023-12-19 04:32:26.038623','2023-12-19 04:32:26.038623',NULL),(11,'qCRGABH7QaXJxYF9YZrUiM6jejhPSe',11,1,2,'2023-12-19 09:35:58.936447','2023-12-19 09:35:58.936447',NULL),(12,'qjvYcBwyn7lJcqepVA3JrOXdcnQOKm',12,1,2,'2023-12-19 09:59:24.368527','2023-12-19 09:59:24.368527',NULL),(13,'Kfq1YFntU9oVY8zx9gTUQf9hwlfOkq',13,1,2,'2023-12-19 10:02:09.478547','2023-12-19 10:02:09.478547',NULL),(14,'z2bLUVG6b2tk7F4tWLgr8dTuI35sG9',14,1,2,'2023-12-19 10:03:28.162946','2023-12-19 10:03:28.162946',NULL),(15,'WRBqy57AelrHZwEl1iFHFzKCM9WRHc',15,1,2,'2023-12-19 10:14:05.310503','2023-12-19 10:14:05.310503',NULL),(16,'iJye7c9b3cszBCmKpkBJcrFmeVaLkL',16,1,1,'2023-12-21 10:11:40.227627','2023-12-21 10:11:40.227627',NULL),(17,'DJ1OVenLVf9bDDOaxZKDHrvPK2ST48',17,1,2,'2023-12-21 11:08:25.649501','2023-12-21 11:08:25.649501',NULL),(18,'TdrlWNqEAYvN2yhWuo45pXLxLSMpaS',18,1,2,'2023-12-23 13:15:14.191374','2023-12-23 13:15:14.191374',NULL),(19,'76ah0jtvjwtOf7LWpS26fAEtfw6qAB',19,1,2,'2023-12-26 08:21:56.971679','2023-12-26 08:21:56.971679',NULL),(20,'fuAHuyZy2amyQ41b323CxEioiRGRsh',20,1,1,'2023-12-26 15:23:23.073371','2023-12-26 15:23:23.074374',NULL),(21,'z4lIaW6HdjIWGlNDJ2b2Mg5Uoj4xe9',21,1,1,'2023-12-26 15:51:04.963469','2023-12-26 15:51:04.963469',NULL),(22,'zON3rbDryro5KUp9YuNf8daE72jZEk',22,1,1,'2023-12-26 15:58:38.380518','2023-12-26 15:58:38.380518',NULL),(23,'KQhbkVDJhb81E332BbqTjke91aDOkX',23,1,1,'2023-12-26 16:09:46.184457','2023-12-26 16:09:46.184457',NULL),(24,'OsKJnVA0sHAYKLW5CglIjtjqm69fUK',24,1,1,'2023-12-26 16:10:46.926080','2023-12-26 16:10:46.926080',NULL),(25,'aalAvlsECLUslulsOjMvunWRgNbjQk',25,1,1,'2023-12-26 16:25:52.316537','2023-12-26 16:25:52.316537',NULL),(26,'kDB05lvbQt1mIIDYb5GI2TqgeundXX',26,1,1,'2023-12-26 16:28:30.594248','2023-12-26 16:28:30.594248',NULL),(27,'qtEyH1FC9qLXaj9cC0e2yC5Wl0CZKD',27,1,1,'2023-12-26 16:33:28.884785','2023-12-26 16:33:28.884785',NULL),(28,'e6BF2wIbNsoyaX2vnvPGHrlIElbtPL',28,1,1,'2023-12-26 16:59:16.480081','2023-12-26 16:59:16.480081',NULL),(29,'AF1uyFwfBwoU7jUdnoLw3pi13akSFe',29,1,1,'2023-12-26 17:02:52.707796','2023-12-26 17:02:52.707796',NULL),(30,'M2qGl0lZRXUER9J7o01rh9aMe6SkZX',30,1,1,'2023-12-26 17:04:47.116364','2023-12-26 17:04:47.116364',NULL),(31,'U03zRev5gfQvQnoS5aniMNas7NkN9f',31,1,1,'2023-12-26 17:06:35.732118','2023-12-26 17:06:35.733131',NULL),(32,'glQH24KQbSyJOlyAWNM4L0wv4AUWPg',32,1,1,'2023-12-26 17:07:31.604057','2023-12-26 17:07:31.604057',NULL),(33,'n6s5dFj8oYdcoWSPCkpvGoVhael6QE',33,1,1,'2023-12-26 17:09:40.463013','2023-12-26 17:09:40.463013',NULL),(34,'dAuThiNocQ35DnMKtDGWgrwrQL1Uc0',34,1,2,'2023-12-27 15:49:56.699522','2023-12-27 15:49:56.699522',NULL),(35,'6XeKHzYnAhGPxmNuU8LloUeHFSi2rx',35,1,2,'2023-12-27 16:06:19.294125','2023-12-27 16:06:19.294125',NULL),(36,'3IiRQIPem0uRMUXrDbkLFtkVjSlY0M',36,1,2,'2023-12-27 16:06:44.329718','2023-12-27 16:06:44.329718',NULL),(37,'H3yMPHcC8oB9wdDxbxVqtcRjBQaXQh',37,1,2,'2023-12-27 16:07:05.408852','2023-12-27 16:07:05.408852',NULL),(38,'41gBnpppOEAG5C5drPlq1ZYixeQ4ja',38,1,2,'2023-12-27 16:08:48.717071','2023-12-27 16:08:48.717071',NULL),(39,'vxNZqP5PDJ4pamQzC1ZkCdAuvNwfLg',39,1,2,'2023-12-27 16:09:00.867689','2023-12-27 16:09:00.867689',NULL),(40,'ObBSxsj9MkXWhnxPgyR5bwablhrbE6',40,1,2,'2023-12-27 16:09:17.292775','2023-12-27 16:09:17.292775',NULL),(41,'boNyLop1UcSfg6VSTqyeJKFus25b0E',41,1,2,'2023-12-27 16:09:28.942322','2023-12-27 16:09:28.942322',NULL),(42,'9G9hqWrpZfMUXxTDLEsPCT9JcWx6U4',42,1,2,'2023-12-27 16:09:51.095784','2023-12-27 16:09:51.095784',NULL),(43,'8Lm3AYoBQyGLMiND7dNKNZz29T70m0',43,1,2,'2023-12-27 16:13:19.169228','2023-12-27 16:13:19.169228',NULL),(44,'d8HH9sw1c7UwyZlBp8ou3Lye2vEAcE',44,1,2,'2023-12-27 16:14:13.889137','2023-12-27 16:14:13.889137',NULL),(45,'MoqSTntrDrp65BoOCdqfJ3tJcOGLKy',45,1,3,'2023-12-27 16:14:21.383377','2023-12-27 16:14:21.383377',NULL),(46,'HrPtTffhVsVtItXSSFKWEDvLH1UW1E',46,1,3,'2023-12-28 11:55:23.710477','2023-12-28 11:55:23.710477',NULL),(47,'ELnIMUXTmHQr9YJD0YAEsh8nSF7c0a',47,1,3,'2023-12-28 13:59:01.738501','2023-12-28 13:59:01.738501',NULL),(48,'85YFAwrKWMfM9GeJQC6qHrMT0Kz38R',48,1,3,'2023-12-28 14:04:29.772081','2023-12-28 14:04:29.772081',NULL),(49,'aWFmi4Ef3JAxkMKplDr4g5J4lf3ZHZ',49,1,1,'2023-12-29 09:41:57.349375','2023-12-29 09:41:57.349375',NULL),(50,'QDRWwQrzev0xZT3ZdXHzGGCeHMd5il',50,1,1,'2023-12-30 18:20:37.123843','2023-12-30 18:20:37.123843',NULL),(51,'zIY58tHmHcV9ccZAwfK8R2S8kfngQL',51,1,1,'2023-12-30 19:57:58.622155','2023-12-30 19:57:58.622155',NULL),(52,'nHvugLEypRVLnC34aFvKchusa4xeXb',52,1,1,'2023-12-31 12:59:08.796691','2023-12-31 12:59:08.796691',NULL);
/*!40000 ALTER TABLE `oauth2_provider_refreshtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_account`
--

LOCK TABLES `social_media_account` WRITE;
/*!40000 ALTER TABLE `social_media_account` DISABLE KEYS */;
INSERT INTO `social_media_account` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,'0345809638','2002-08-28 18:37:49.000000','images/accounts/avatar/2023/12/Ảnh_của_tui.jpg','images/accounts/cover_avatar/2023/12/Ảnh_của_tui_1.jpg',1,1,1,1),(2,'2023-12-02','2023-12-02','2023-12-02',1,'012345678','2023-12-02 08:44:27.000000','images/accounts/avatar/2023/12/Ảnh_của_tui.jpg','images/accounts/cover_avatar/2023/12/Ảnh_của_tui_1.jpg',3,2,1,1),(3,'2023-12-02','2023-12-02','2023-12-02',1,'36262312312','2023-12-02 09:38:16.000000','images/accounts/avatar/2023/12/Screenshot_2023-12-02_163517.png','images/accounts/cover_avatar/2023/12/Screenshot_2023-12-02_163517.png',3,3,0,1),(4,'2023-12-02','2023-12-02','2023-12-02',1,'3626','2023-12-02 09:41:44.000000','images/accounts/avatar/2023/12/FURINA.png','images/accounts/cover_avatar/2023/12/FURINA.png',2,4,0,1),(5,'2023-12-07','2023-12-07','2023-12-07',1,'099999','2023-12-07 10:35:10.000000','images/accounts/avatar/2023/12/Screenshot_2023-12-02_163517_uBq6TcI.png','images/accounts/cover_avatar/2023/12/FURINA_Qya12Xs.png',2,5,0,1),(7,'2023-12-10','2023-12-10','2023-12-10',1,'0123456789','2002-08-28 00:00:00.000000','images/accounts/avatar/2023/12/Screenshot_2023-12-02_163517_iMvIY1I.png','images/accounts/cover_avatar/2023/12/Screenshot_2023-12-02_163517_ciM462Z.png',3,6,1,1),(8,'2023-12-19','2023-12-19','2023-12-19',1,'54564','2002-08-28 00:00:00.000000','images/accounts/avatar/2023/12/Screenshot_2023-12-02_163517_iMvIY1I.png','images/accounts/cover_avatar/2023/12/Screenshot_2023-12-02_163517_ciM462Z.png',3,10,0,1),(9,'2023-12-19','2023-12-19','2023-12-19',1,'45456','2002-08-28 00:00:00.000000','images/accounts/avatar/2023/12/Screenshot_2023-12-02_163517_iMvIY1I.png','images/accounts/cover_avatar/2023/12/Screenshot_2023-12-02_163517_ciM462Z.png',3,11,0,1),(10,'2023-12-19','2023-12-19',NULL,1,NULL,NULL,'','',3,12,0,1),(11,'2023-12-19','2023-12-19',NULL,1,NULL,NULL,'','',3,13,0,1),(12,'2023-12-19','2023-12-19',NULL,1,NULL,NULL,'','',3,14,0,1),(13,'2023-12-26','2023-12-26',NULL,1,'8456121','2002-08-28 00:00:00.000000','images/accounts/avatar/2023/12/Screenshot_2023-12-21_191538.png','https://res.cloudinary.com/dhwuwy0to/image/upload/v1703582131/eoist3dh8nqvl0namjus.png',3,9,1,1),(15,'2023-12-26','2023-12-26',NULL,1,'821313','2002-08-28 00:00:00.000000','https://res.cloudinary.com/dhwuwy0to/image/upload/v1703582345/horjssrhopdt74extmrb.png','images/accounts/cover_avatar/2023/12/Screenshot_2023-12-23_220045_7pjKdeR.png',3,8,1,1),(16,'2023-12-26','2023-12-26',NULL,1,'82131334','2002-08-28 00:00:00.000000','https://res.cloudinary.com/dhwuwy0to/image/upload/v1703582573/loulgzcbcekhggxsvqo0.png','https://res.cloudinary.com/dhwuwy0to/image/upload/v1703582575/djazey5a7dd1dxninznu.png',3,15,1,1),(17,'2023-12-26','2023-12-26',NULL,1,'121323','2002-08-28 00:00:00.000000','https://res.cloudinary.com/dhwuwy0to/image/upload/v1703582655/dl4xjbbjdsxuiqumtbpw.png','https://res.cloudinary.com/dhwuwy0to/image/upload/v1703582656/yxtijt9mskw9f0me5nly.png',3,16,1,1),(18,'2023-12-26','2023-12-26',NULL,1,'64688','2002-08-28 00:00:00.000000','','https://res.cloudinary.com/dhwuwy0to/image/upload/v1703582716/uxy7taglizpqcrqykglv.png',3,17,1,1),(20,'2023-12-28','2023-12-28',NULL,1,NULL,NULL,'','',3,20,0,1),(28,'2023-12-28','2023-12-28',NULL,1,'64688111','2002-08-08 00:00:00.000000','https://res.cloudinary.com/dhwuwy0to/image/upload/v1703769039/i2anwjvqzepziurvbjnv.png','https://res.cloudinary.com/dhwuwy0to/image/upload/v1703769041/ohkgnhbrnsglqnxwt5mb.png',3,21,1,1),(29,'2023-12-28','2023-12-28',NULL,1,NULL,NULL,'','',3,25,0,1),(30,'2023-12-28','2023-12-28',NULL,1,NULL,NULL,'','',3,26,0,1),(31,'2023-12-28','2023-12-28',NULL,1,NULL,NULL,'','',3,27,0,1),(32,'2023-12-28','2023-12-28',NULL,1,NULL,NULL,'','',3,28,0,1),(33,'2023-12-28','2023-12-28',NULL,1,NULL,NULL,'','',3,29,0,1);
/*!40000 ALTER TABLE `social_media_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_alumniaccount`
--

LOCK TABLES `social_media_alumniaccount` WRITE;
/*!40000 ALTER TABLE `social_media_alumniaccount` DISABLE KEYS */;
INSERT INTO `social_media_alumniaccount` VALUES (1,'2023-12-19','2023-12-19','2023-12-19',1,'1298419283',8),(2,'2023-12-19','2023-12-19','2023-12-19',1,'12984193',9),(3,'2023-12-19','2023-12-19',NULL,1,'2309482034',10),(4,'2023-12-19','2023-12-19',NULL,1,'123132',11),(5,'2023-12-19','2023-12-19',NULL,1,'3432',12),(7,'2023-12-28','2023-12-28',NULL,1,'2309482035',20),(8,'2023-12-28','2023-12-28',NULL,1,'12312312',29),(9,'2023-12-28','2023-12-28',NULL,1,'53453',30),(10,'2023-12-28','2023-12-28',NULL,1,'2309482034<',31),(11,'2023-12-28','2023-12-28',NULL,1,'2309482034>',32),(12,'2023-12-28','2023-12-28',NULL,1,'2309482034\'',33);
/*!40000 ALTER TABLE `social_media_alumniaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_comment`
--

LOCK TABLES `social_media_comment` WRITE;
/*!40000 ALTER TABLE `social_media_comment` DISABLE KEYS */;
INSERT INTO `social_media_comment` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,'Bài viết hay thế',1,2,'images/comments/2023/12/Screenshot_2023-12-02_163517.png'),(2,'2023-12-02','2023-12-02','2023-12-02',1,'Bài viết hay thế 1',2,2,'images/comments/2023/12/FURINA.png'),(3,'2023-12-05','2023-12-05','2023-12-05',1,'Ôi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá\r\nÔi bài Post Invitation này hay quá',9,2,'images/comments/2023/12/Screenshot_2023-10-15_111305.png'),(4,'2023-12-19','2023-12-19','2023-12-19',1,'Sửa phân quyền',14,2,''),(5,'2023-12-19','2023-12-19','2023-12-19',1,'Sửa phân quyền',14,2,''),(11,'2023-12-26','2023-12-26',NULL,1,'Đây là comment',4,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1703580132/oqleuuuoexj5iu6anaze.png');
/*!40000 ALTER TABLE `social_media_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_confirmstatus`
--

LOCK TABLES `social_media_confirmstatus` WRITE;
/*!40000 ALTER TABLE `social_media_confirmstatus` DISABLE KEYS */;
INSERT INTO `social_media_confirmstatus` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,'Accept'),(2,'2023-12-02','2023-12-02','2023-12-02',1,'Deny'),(3,'2023-12-02','2023-12-02','2023-12-02',1,'Pending');
/*!40000 ALTER TABLE `social_media_confirmstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_invitationgroup`
--

LOCK TABLES `social_media_invitationgroup` WRITE;
/*!40000 ALTER TABLE `social_media_invitationgroup` DISABLE KEYS */;
INSERT INTO `social_media_invitationgroup` VALUES (1,'2023-12-05','2023-12-12','2023-12-12',1,'Group A'),(2,'2023-12-05','2023-12-12','2023-12-12',1,'Group B'),(3,'2023-12-05','2023-12-12','2023-12-12',1,'group C'),(4,'2023-12-12','2023-12-14','2023-12-14',1,'group D'),(5,'2023-12-14','2023-12-17','2023-12-17',1,'Group E1'),(6,'2023-12-17','2023-12-17','2023-12-17',1,'Group F'),(7,'2023-12-17','2023-12-17','2023-12-17',1,'Group G'),(8,'2023-12-17','2023-12-17','2023-12-17',1,'Group H1'),(9,'2023-12-17','2023-12-19','2023-12-19',1,'Group H2');
/*!40000 ALTER TABLE `social_media_invitationgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_invitationgroup_accounts`
--

LOCK TABLES `social_media_invitationgroup_accounts` WRITE;
/*!40000 ALTER TABLE `social_media_invitationgroup_accounts` DISABLE KEYS */;
INSERT INTO `social_media_invitationgroup_accounts` VALUES (4,1,1),(5,1,2),(6,1,3),(7,2,3),(8,2,4),(9,3,3),(10,3,5),(74,5,4),(72,5,5),(71,5,7),(75,9,1),(76,9,2),(77,9,3);
/*!40000 ALTER TABLE `social_media_invitationgroup_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_post`
--

LOCK TABLES `social_media_post` WRITE;
/*!40000 ALTER TABLE `social_media_post` DISABLE KEYS */;
INSERT INTO `social_media_post` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,'Bài Post đầu tiên',0,1),(2,'2023-12-02','2023-12-02','2023-12-02',1,'Bài Post thứ 2',0,1),(3,'2023-12-02','2023-12-02','2023-12-02',1,'Bài Post thứ 3',0,1),(4,'2023-12-02','2023-12-02','2023-12-02',1,'Bài Post 1 của tuan1',0,2),(5,'2023-12-02','2023-12-02','2023-12-02',1,'Bài Post 2 của tuan1',0,2),(6,'2023-12-02','2023-12-02','2023-12-02',1,'<p><u><em><strong>Post n&agrave;y đăng bằng ckeditor</strong></em></u></p>',0,1),(7,'2023-12-02','2023-12-02','2023-12-02',1,'<p>B&agrave;i Post thứ 2 bằng ckeditor nhưng kh&ocirc;ng chỉnh g&igrave;</p>',0,2),(8,'2023-12-02','2023-12-02','2023-12-02',1,'<p>POST KHẢO S&Aacute;T GPA</p>',0,1),(9,'2023-12-05','2023-12-05','2023-12-05',1,'<p>POST INVITATION + 3 Post Image</p>',0,1),(10,'2023-12-10','2023-12-10','2023-12-10',1,'Bài viết được tạo bởi Swagger',0,1),(11,'2023-12-10','2023-12-10','2023-12-10',1,'Bài viết được chỉnh sửa bởi swagger',1,1),(12,'2023-12-14','2023-12-14','2023-12-14',1,'Post này để tạo thư mời (invitation)',0,1),(13,'2023-12-14','2023-12-14','2023-12-14',1,'Post này để tạo thư mời 2 (invitation)',0,1),(14,'2023-12-16','2023-12-16','2023-12-16',1,'Bài post khảo sát by Swagger',0,1),(15,'2023-12-21','2023-12-21','2023-12-16',1,'Bài Post để khảo sát',0,1),(19,'2023-12-21','2023-12-21','2023-12-16',1,'Bài Post để khảo sát',0,1),(20,'2023-12-21','2023-12-21','2023-12-16',1,'Bài Post để khảo sát 2',0,1),(21,'2023-12-21','2023-12-21','2023-12-16',1,'Bài Post để khảo sát 3',0,1),(22,'2023-12-21','2023-12-21','2023-12-16',1,'Bài Post để khảo sát 3',0,1),(24,'2023-12-21','2023-12-21',NULL,1,'Đây là bài Post Invitation',0,1),(25,'2023-12-21','2023-12-21',NULL,1,'Đây là bài Post Invitation 2',0,1),(26,'2023-12-26','2023-12-26',NULL,1,'Bài post survey',0,1),(27,'2023-12-26','2023-12-26',NULL,1,'Bài post survey',0,1),(28,'2023-12-26','2023-12-26',NULL,1,'Bài post survey',0,1),(29,'2023-12-26','2023-12-26',NULL,1,'Bài post survey',0,1),(30,'2023-12-26','2023-12-26',NULL,1,'Alo',0,1),(31,'2023-12-27','2023-12-27',NULL,1,'Alo',0,1),(32,'2023-12-27','2023-12-27',NULL,1,'Alo',0,1),(33,'2023-12-27','2023-12-27',NULL,1,'Alo',0,1),(34,'2023-12-29','2023-12-29',NULL,1,'Bài Post để khảo sát 3',0,1),(35,'2023-12-29','2023-12-29',NULL,1,'Bài Post để khảo sát 3',0,1),(36,'2023-12-29','2023-12-29',NULL,1,'Bài Post để khảo sát 4',0,1),(37,'2023-12-29','2023-12-29',NULL,1,'Bài Post để khảo sát 4',0,1),(38,'2023-12-29','2023-12-29',NULL,1,'Bài Post để khảo sát 4',0,1),(39,'2023-12-29','2023-12-29',NULL,1,'Bài Post để khảo sát 4',0,1),(40,'2023-12-29','2023-12-29',NULL,1,'Bài Post để khảo sát 5',0,1);
/*!40000 ALTER TABLE `social_media_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_postimage`
--

LOCK TABLES `social_media_postimage` WRITE;
/*!40000 ALTER TABLE `social_media_postimage` DISABLE KEYS */;
INSERT INTO `social_media_postimage` VALUES (1,'2023-12-05','2023-12-05','2023-12-05',1,'images/post_images/2023/12/FURINA.png',9),(2,'2023-12-05','2023-12-05','2023-12-05',1,'images/post_images/2023/12/Screenshot_2023-11-09_011731_qYfvcnH.png',9),(3,'2023-12-05','2023-12-05','2023-12-05',1,'images/post_images/2023/12/Screenshot_2023-12-02_163517_859smi0.png',9),(4,'2023-12-10','2023-12-10','2023-12-10',0,'images/post_images/2023/12/2172227.jpg',11),(5,'2023-12-10','2023-12-10','2023-12-10',0,'images/post_images/2023/12/2172227.jpg',11),(6,'2023-12-10','2023-12-10','2023-12-10',1,'images/post_images/2023/12/Screenshot_2023-12-02_163517_gIEG6wZ.png',11),(7,'2023-12-10','2023-12-10','2023-12-10',1,'images/post_images/2023/12/2172227.jpg',11),(8,'2023-12-10','2023-12-10','2023-12-10',1,'images/post_images/2023/12/2172227.jpg',11),(9,'2023-12-10','2023-12-10','2023-12-10',1,'images/post_images/2023/12/Screenshot_2023-12-10_195600.png',11),(10,'2023-12-10','2023-12-10','2023-12-10',1,'images/post_images/2023/12/2172227.jpg',11),(11,'2023-12-10','2023-12-10','2023-12-10',1,'images/post_images/2023/12/2172227.jpg',11),(12,'2023-12-10','2023-12-10','2023-12-10',1,'images/post_images/2023/12/2172227.jpg',11),(13,'2023-12-10','2023-12-10','2023-12-10',1,'images/post_images/2023/12/2172227.jpg',11),(14,'2023-12-10','2023-12-10','2023-12-10',1,'images/post_images/2023/12/Screenshot_2023-12-10_195600_hE8Apix.png',11),(15,'2023-12-10','2023-12-10','2023-12-10',1,'images/post_images/2023/12/2172227.jpg',11),(16,'2023-12-10','2023-12-10','2023-12-10',1,'images/post_images/2023/12/2172227.jpg',11),(42,'2023-12-23','2023-12-23',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1703342212/pphulgax6qbzuawood8s.jpg',1),(43,'2023-12-23','2023-12-23',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1703342421/vf5yo2ot1w9gymv5zgrc.jpg',2),(44,'2023-12-23','2023-12-23',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1703342629/iuekurb6dwmu9hejnfxo.jpg',2),(45,'2023-12-23','2023-12-23',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1703342759/cxxgh6zdqrsdeztgxoqn.jpg',2),(46,'2023-12-23','2023-12-23',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1703343120/yc8sz1urdoimvlxn7p2t.jpg',2),(47,'2023-12-23','2023-12-23',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1703343412/l8auoh4jer9q9qyocumz.jpg',2),(48,'2023-12-26','2023-12-26',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1703579523/owjypecxe1ltli5ndc0r.jpg',3),(49,'2023-12-26','2023-12-26',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1703579523/owjypecxe1ltli5ndc0r.jpg',3),(50,'2023-12-26','2023-12-26',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1703579523/owjypecxe1ltli5ndc0r.jpg',3),(51,'2023-12-26','2023-12-26',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1703579827/hbjhsueboll1dd4ig4wh.png',3),(52,'2023-12-26','2023-12-26',NULL,1,'https://res.cloudinary.com/dhwuwy0to/image/upload/v1703579880/rixj2dvjkjapnugdn4g8.jpg',3);
/*!40000 ALTER TABLE `social_media_postimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_postinvitation`
--

LOCK TABLES `social_media_postinvitation` WRITE;
/*!40000 ALTER TABLE `social_media_postinvitation` DISABLE KEYS */;
INSERT INTO `social_media_postinvitation` VALUES (1,'2023-12-05','2023-12-14','2023-12-14',1,'Invitation first event','2023-12-05 02:03:12.000000','2023-12-05 02:03:13.000000',9),(2,'2023-12-14','2023-12-14','2023-12-14',1,'Post thư mời lần 2','2023-12-14 12:41:24.400000','2023-12-14 12:41:24.400000',12),(4,'2023-12-21','2023-12-21',NULL,1,'Mời mừng giáng sinh (Post Invitation)','2023-12-21 10:00:00.000000','2023-12-21 12:00:00.000000',24),(5,'2023-12-21','2023-12-21',NULL,1,'Mời mừng giáng sinh 2 (Post Invitation 2)','2023-12-21 10:00:00.000000','2023-12-21 12:00:00.000000',25);
/*!40000 ALTER TABLE `social_media_postinvitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_postinvitation_accounts`
--

LOCK TABLES `social_media_postinvitation_accounts` WRITE;
/*!40000 ALTER TABLE `social_media_postinvitation_accounts` DISABLE KEYS */;
INSERT INTO `social_media_postinvitation_accounts` VALUES (11,1,4),(7,1,5),(8,1,7),(14,2,4),(15,2,5),(16,2,7);
/*!40000 ALTER TABLE `social_media_postinvitation_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_postreaction`
--

LOCK TABLES `social_media_postreaction` WRITE;
/*!40000 ALTER TABLE `social_media_postreaction` DISABLE KEYS */;
INSERT INTO `social_media_postreaction` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,1,2,1),(2,'2023-12-12','2023-12-12','2023-12-12',1,2,1,2),(3,'2023-12-17','2023-12-17','2023-12-17',1,14,3,4),(4,'2023-12-17','2023-12-17','2023-12-17',1,14,2,7),(5,'2023-12-17','2023-12-17','2023-12-17',1,13,5,7),(6,'2023-12-17','2023-12-17','2023-12-17',1,14,3,2),(7,'2023-12-17','2023-12-17','2023-12-17',1,13,1,5),(8,'2023-12-17','2023-12-17','2023-12-17',1,14,4,3);
/*!40000 ALTER TABLE `social_media_postreaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_postsurvey`
--

LOCK TABLES `social_media_postsurvey` WRITE;
/*!40000 ALTER TABLE `social_media_postsurvey` DISABLE KEYS */;
INSERT INTO `social_media_postsurvey` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,'Khảo sát GPA','2023-12-02 13:11:23.000000','2023-12-02 13:11:24.000000',8,0),(2,'2023-12-16','2023-12-16','2023-12-16',1,'Khảo sát về độ tiện dụng của Swagger','2023-12-16 10:38:28.415000','2023-12-16 10:38:28.415000',14,1),(6,'2023-12-21','2023-12-21',NULL,1,'Khảo sát chất lượng giảng viên','2023-12-21 12:00:00.000000','2023-12-21 12:00:00.000000',19,0),(7,'2023-12-21','2023-12-21',NULL,1,'Khảo sát chất lượng giảng viên 2','2023-12-21 12:00:00.000000','2023-12-21 12:00:00.000000',20,0),(8,'2023-12-21','2023-12-21',NULL,1,'Khảo sát chất lượng giảng viên C','2023-12-21 10:46:28.771000','2023-12-21 10:46:28.771000',21,0),(9,'2023-12-21','2023-12-31',NULL,1,'Khảo sát chất lượng giảng viên D real','2023-12-21 10:46:28.000000','2023-12-21 10:46:28.000000',22,0),(10,'2023-12-26','2023-12-26',NULL,1,'Alo','2023-12-26 16:28:00.000000','2023-12-26 16:28:00.000000',28,0),(11,'2023-12-26','2023-12-26',NULL,1,'Alo','2023-12-26 16:28:00.000000','2023-12-26 16:28:00.000000',29,0),(12,'2023-12-26','2023-12-26',NULL,1,'Alo1','2023-12-26 16:59:00.000000','2023-12-26 16:59:00.000000',30,0),(13,'2023-12-27','2023-12-27',NULL,1,'Alo1','2023-12-26 16:59:00.000000','2023-12-26 16:59:00.000000',31,0),(14,'2023-12-27','2023-12-27',NULL,1,'Alo1','2023-12-26 16:59:00.000000','2023-12-26 16:59:00.000000',32,0),(15,'2023-12-27','2023-12-27',NULL,1,'Alo1','2023-12-26 16:59:00.000000','2023-12-26 16:59:00.000000',33,0),(16,'2023-12-29','2023-12-31',NULL,1,'Khảo sát chất lượng giảng viên D1','2023-12-21 10:46:28.000000','2023-12-21 10:46:28.000000',34,0),(17,'2023-12-29','2023-12-31',NULL,1,'Khảo sát chất lượng giảng viên D2','2023-12-21 10:46:28.000000','2023-12-21 10:46:28.000000',35,0),(18,'2023-12-29','2023-12-29',NULL,1,'Khảo sát chất lượng giảng viên E','2023-12-21 10:46:28.771000','2023-12-21 10:46:28.771000',36,0),(19,'2023-12-29','2023-12-29',NULL,1,'Khảo sát chất lượng giảng viên E','2023-12-21 10:46:28.771000','2023-12-21 10:46:28.771000',37,0),(20,'2023-12-29','2023-12-29',NULL,1,'Khảo sát chất lượng giảng viên E','2023-12-21 10:46:28.771000','2023-12-21 10:46:28.771000',38,0),(21,'2023-12-29','2023-12-29',NULL,1,'Khảo sát chất lượng giảng viên E','2023-12-21 10:46:28.771000','2023-12-21 10:46:28.771000',39,0),(22,'2023-12-29','2023-12-29',NULL,1,'Khảo sát chất lượng giảng viên E','2023-12-21 10:46:28.771000','2023-12-21 10:46:28.771000',40,0);
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
INSERT INTO `social_media_surveyanswer` VALUES (4,'2023-12-02','2023-12-17','2023-12-17',1,NULL,1,1),(5,'2023-12-02','2023-12-17','2023-12-17',1,NULL,2,1),(6,'2023-12-02','2023-12-02','2023-12-02',1,'Học anh Thành quá đẳng cấp nên GPA cao',3,1),(7,'2023-12-16','2023-12-17','2023-12-17',1,NULL,4,2),(8,'2023-12-17','2023-12-17','2023-12-17',1,NULL,4,3),(9,'2023-12-17','2023-12-17','2023-12-17',1,NULL,5,4),(10,'2023-12-17','2023-12-17','2023-12-17',1,'string',5,5),(11,'2023-12-26','2023-12-26',NULL,1,'',18,12),(12,'2023-12-26','2023-12-26',NULL,1,'',19,12),(13,'2023-12-26','2023-12-26',NULL,1,'',18,13),(14,'2023-12-26','2023-12-26',NULL,1,'',19,13),(15,'2023-12-28','2023-12-28',NULL,1,'',18,14),(16,'2023-12-28','2023-12-28',NULL,1,'',19,14),(17,'2023-12-28','2023-12-28',NULL,1,'',18,15),(18,'2023-12-28','2023-12-28',NULL,1,NULL,19,15),(19,'2023-12-28','2023-12-28',NULL,1,'',18,16),(20,'2023-12-28','2023-12-28',NULL,1,NULL,19,16);
/*!40000 ALTER TABLE `social_media_surveyanswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_surveyquestion`
--

LOCK TABLES `social_media_surveyquestion` WRITE;
/*!40000 ALTER TABLE `social_media_surveyquestion` DISABLE KEYS */;
INSERT INTO `social_media_surveyquestion` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,'GPA của bạn là bao nhiêu ( checkbox question )?',0,1,3,0),(2,'2023-12-02','2023-12-02','2023-12-02',1,'Tại sao bạn được GPA như zậy? (multi choice)',0,1,1,0),(3,'2023-12-02','2023-12-02','2023-12-02',1,'Bạn có cảm nghĩ gì về GPA bạn đạt được? (input text)',0,1,2,0),(4,'2023-12-16','2023-12-16','2023-12-16',1,'Xài swagger có tuyệt không?',1,2,1,1),(5,'2023-12-17','2023-12-17','2023-12-17',1,'Những lý do nào mà bạn thích swagger?',0,2,3,1),(12,'2023-12-21','2023-12-21',NULL,1,'Giảng viên A thế nào',1,6,1,1),(13,'2023-12-21','2023-12-21',NULL,1,'Bạn thích điều gì ở giảng viên A',2,6,3,1),(14,'2023-12-21','2023-12-21',NULL,1,'Giảng viên B thế nào',1,7,1,1),(15,'2023-12-21','2023-12-21',NULL,1,'Bạn thích điều gì ở giảng viên B',2,7,3,1),(16,'2023-12-21','2023-12-21',NULL,1,'Giảng viên C thế nào',1,8,1,1),(17,'2023-12-21','2023-12-21',NULL,1,'Bạn thích điều gì ở giảng viên C',2,8,3,1),(18,'2023-12-21','2023-12-21',NULL,1,'Giảng viên D thế nào',1,9,1,1),(19,'2023-12-21','2023-12-21',NULL,1,'Bạn thích điều gì ở giảng viên D',2,9,3,1),(20,'2023-12-29','2023-12-29',NULL,1,'Giảng viên D thế nào',1,16,1,1),(21,'2023-12-29','2023-12-29',NULL,1,'Bạn thích điều gì ở giảng viên D',2,16,3,1),(22,'2023-12-29','2023-12-29',NULL,1,'Giảng viên D thế nào',1,17,1,1),(23,'2023-12-29','2023-12-29',NULL,1,'Bạn thích điều gì ở giảng viên D',2,17,3,1),(24,'2023-12-29','2023-12-29',NULL,1,'Giảng viên E thế nào',1,18,1,1),(25,'2023-12-29','2023-12-29',NULL,1,'Bạn thích điều gì ở giảng viên E',2,18,3,1),(26,'2023-12-29','2023-12-29',NULL,1,'Giảng viên E thế nào',1,19,1,1),(27,'2023-12-29','2023-12-29',NULL,1,'Bạn thích điều gì ở giảng viên E',2,19,3,1),(28,'2023-12-29','2023-12-29',NULL,1,'Giảng viên E thế nào>',1,20,1,1),(29,'2023-12-29','2023-12-29',NULL,1,'Bạn thích điều gì ở giảng viên E',2,20,3,1),(30,'2023-12-29','2023-12-29',NULL,1,'Giảng viên E thế nào>',1,21,1,1),(31,'2023-12-29','2023-12-29',NULL,1,'Bạn thích điều gì ở giảng viên E',2,21,3,1),(32,'2023-12-29','2023-12-29',NULL,1,'Giảng viên E thế nào',1,22,1,1),(33,'2023-12-29','2023-12-29',NULL,1,'Bạn thích điều gì ở giảng viên E',2,22,3,1);
/*!40000 ALTER TABLE `social_media_surveyquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_surveyquestionoption`
--

LOCK TABLES `social_media_surveyquestionoption` WRITE;
/*!40000 ALTER TABLE `social_media_surveyquestionoption` DISABLE KEYS */;
INSERT INTO `social_media_surveyquestionoption` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,'1.0',0,1),(2,'2023-12-02','2023-12-02','2023-12-02',1,'2.0',0,1),(3,'2023-12-02','2023-12-02','2023-12-02',1,'3.0',0,1),(4,'2023-12-02','2023-12-02','2023-12-02',1,'4.0',0,1),(5,'2023-12-02','2023-12-02','2023-12-02',1,'Vì học anh Thành',0,2),(6,'2023-12-02','2023-12-17','2023-12-17',1,'Vì học PC CÔNG :)',0,2),(7,'2023-12-16','2023-12-16','2023-12-16',1,'Tuyệt',0,4),(8,'2023-12-16','2023-12-16','2023-12-16',1,'Hơi tuyệt',0,4),(9,'2023-12-16','2023-12-16','2023-12-16',1,'Bình thường',0,4),(10,'2023-12-17','2023-12-17','2023-12-17',1,'Vì swagger đẹp',0,5),(11,'2023-12-17','2023-12-17','2023-12-17',1,'Vì swagger tiện lợi',1,5),(12,'2023-12-17','2023-12-17','2023-12-17',1,'Vì thầy bắt xài :v',2,5),(13,'2023-12-21','2023-12-21',NULL,1,'Tốt',1,12),(14,'2023-12-21','2023-12-21',NULL,1,'Bình thường',2,12),(15,'2023-12-21','2023-12-21',NULL,1,'tệ',3,12),(16,'2023-12-21','2023-12-21',NULL,1,'Hiền',1,13),(17,'2023-12-21','2023-12-21',NULL,1,'Nhân hậu',2,13),(18,'2023-12-21','2023-12-21',NULL,1,'Giỏi',3,13),(19,'2023-12-21','2023-12-21',NULL,1,'Cũng được',1,14),(20,'2023-12-21','2023-12-21',NULL,1,'Cũng tạm',2,14),(21,'2023-12-21','2023-12-21',NULL,1,'Chê',3,14),(22,'2023-12-21','2023-12-21',NULL,1,'Không biết',1,15),(23,'2023-12-21','2023-12-21',NULL,1,'Ai biết',2,15),(24,'2023-12-21','2023-12-21',NULL,1,'Biết gì đâu mà hỏi',3,15),(25,'2023-12-21','2023-12-21',NULL,1,'Tốt',1,16),(26,'2023-12-21','2023-12-21',NULL,1,'Bình thường',2,16),(27,'2023-12-21','2023-12-21',NULL,1,'tệ',3,16),(28,'2023-12-21','2023-12-21',NULL,1,'Hiền',1,17),(29,'2023-12-21','2023-12-21',NULL,1,'Nhân hậu',2,17),(30,'2023-12-21','2023-12-21',NULL,1,'Giỏi',3,17),(31,'2023-12-21','2023-12-21',NULL,1,'Tốt',1,18),(32,'2023-12-21','2023-12-21',NULL,1,'Bình thường',2,18),(33,'2023-12-21','2023-12-21',NULL,1,'tệ',3,18),(34,'2023-12-21','2023-12-21',NULL,1,'Hiền',1,19),(35,'2023-12-21','2023-12-21',NULL,1,'Nhân hậu',2,19),(36,'2023-12-21','2023-12-21',NULL,1,'Giỏi',3,19),(37,'2023-12-29','2023-12-29',NULL,1,'Tốt',1,20),(38,'2023-12-29','2023-12-29',NULL,1,'Bình thường',2,20),(39,'2023-12-29','2023-12-29',NULL,1,'tệ',3,20),(40,'2023-12-29','2023-12-29',NULL,1,'Hiền',1,21),(41,'2023-12-29','2023-12-29',NULL,1,'Nhân hậu',2,21),(42,'2023-12-29','2023-12-29',NULL,1,'Giỏi',3,21),(43,'2023-12-29','2023-12-29',NULL,1,'Tốt',1,22),(44,'2023-12-29','2023-12-29',NULL,1,'Bình thường',2,22),(45,'2023-12-29','2023-12-29',NULL,1,'tệ',3,22),(46,'2023-12-29','2023-12-29',NULL,1,'Hiền',1,23),(47,'2023-12-29','2023-12-29',NULL,1,'Nhân hậu',2,23),(48,'2023-12-29','2023-12-29',NULL,1,'Giỏi',3,23),(49,'2023-12-29','2023-12-29',NULL,1,'Tốt',1,24),(50,'2023-12-29','2023-12-29',NULL,1,'Bình thường',2,24),(51,'2023-12-29','2023-12-29',NULL,1,'tệ',3,24),(52,'2023-12-29','2023-12-29',NULL,1,'Hiền',1,25),(53,'2023-12-29','2023-12-29',NULL,1,'Nhân hậu',2,25),(54,'2023-12-29','2023-12-29',NULL,1,'Giỏi',3,25),(55,'2023-12-29','2023-12-29',NULL,1,'Tốt<',1,26),(56,'2023-12-29','2023-12-29',NULL,1,'Bình thường',2,26),(57,'2023-12-29','2023-12-29',NULL,1,'tệ',3,26),(58,'2023-12-29','2023-12-29',NULL,1,'Hiền',1,27),(59,'2023-12-29','2023-12-29',NULL,1,'Nhân hậu',2,27),(60,'2023-12-29','2023-12-29',NULL,1,'Giỏi',3,27),(61,'2023-12-29','2023-12-29',NULL,1,'Tốt',1,28),(62,'2023-12-29','2023-12-29',NULL,1,'Bình thường',2,28),(63,'2023-12-29','2023-12-29',NULL,1,'tệ',3,28),(64,'2023-12-29','2023-12-29',NULL,1,'Hiền',1,29),(65,'2023-12-29','2023-12-29',NULL,1,'Nhân hậu',2,29),(66,'2023-12-29','2023-12-29',NULL,1,'Giỏi',3,29),(67,'2023-12-29','2023-12-29',NULL,1,'Tốt',1,30),(68,'2023-12-29','2023-12-29',NULL,1,'Bình thường',2,30),(69,'2023-12-29','2023-12-29',NULL,1,'tệ',3,30),(70,'2023-12-29','2023-12-29',NULL,1,'Hiền',1,31),(71,'2023-12-29','2023-12-29',NULL,1,'Nhân hậu',2,31),(72,'2023-12-29','2023-12-29',NULL,1,'Giỏi',3,31),(73,'2023-12-29','2023-12-29',NULL,1,'Tốt',1,32),(74,'2023-12-29','2023-12-29',NULL,1,'Bình thường',2,32),(75,'2023-12-29','2023-12-29',NULL,1,'tệ',3,32),(76,'2023-12-29','2023-12-29',NULL,1,'Hiền',1,33),(77,'2023-12-29','2023-12-29',NULL,1,'Nhân hậu',2,33),(78,'2023-12-29','2023-12-29',NULL,1,'Giỏi',3,33);
/*!40000 ALTER TABLE `social_media_surveyquestionoption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_surveyquestionoption_survey_answers`
--

LOCK TABLES `social_media_surveyquestionoption_survey_answers` WRITE;
/*!40000 ALTER TABLE `social_media_surveyquestionoption_survey_answers` DISABLE KEYS */;
INSERT INTO `social_media_surveyquestionoption_survey_answers` VALUES (1,1,4),(2,2,4),(3,3,4),(4,5,5),(5,9,7),(6,10,9),(9,10,10),(7,11,9),(10,11,10),(8,12,9),(11,32,13),(15,32,15),(19,32,17),(23,32,19),(12,34,14),(16,34,16),(20,34,18),(24,34,20),(13,35,14),(17,35,16),(21,35,18),(25,35,20),(14,36,14),(18,36,16),(22,36,18),(26,36,20);
/*!40000 ALTER TABLE `social_media_surveyquestionoption_survey_answers` ENABLE KEYS */;
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
INSERT INTO `social_media_surveyresponse` VALUES (1,'2023-12-02','2023-12-02','2023-12-02',1,1,2),(2,'2023-12-16','2023-12-16','2023-12-16',1,2,2),(3,'2023-12-17','2023-12-17','2023-12-17',1,2,4),(4,'2023-12-17','2023-12-17','2023-12-17',1,2,5),(5,'2023-12-17','2023-12-17','2023-12-17',1,2,3),(6,'2023-12-26','2023-12-26',NULL,1,9,1),(7,'2023-12-26','2023-12-26',NULL,1,9,1),(8,'2023-12-26','2023-12-26',NULL,1,9,1),(9,'2023-12-26','2023-12-26',NULL,1,9,1),(10,'2023-12-26','2023-12-26',NULL,1,9,1),(11,'2023-12-26','2023-12-26',NULL,1,9,1),(12,'2023-12-26','2023-12-26',NULL,1,9,1),(13,'2023-12-26','2023-12-26',NULL,1,9,2),(14,'2023-12-28','2023-12-28',NULL,1,9,2),(15,'2023-12-28','2023-12-28',NULL,1,9,3),(16,'2023-12-28','2023-12-28',NULL,1,9,4);
/*!40000 ALTER TABLE `social_media_surveyresponse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `social_media_user`
--

LOCK TABLES `social_media_user` WRITE;
/*!40000 ALTER TABLE `social_media_user` DISABLE KEYS */;
INSERT INTO `social_media_user` VALUES (1,'pbkdf2_sha256$600000$2wYAvGMI58wUR4jfbF9Hs5$jxG3DTdYTZemo5oKYIgzmVSW91FdhbxowqxVuEZo5X8=','2023-12-31 13:57:25.265190',1,'admin','','','tuantran@gmail.com',1,1,'2023-12-01 18:04:49.275061',1),(2,'pbkdf2_sha256$600000$2wYAvGMI58wUR4jfbF9Hs5$jxG3DTdYTZemo5oKYIgzmVSW91FdhbxowqxVuEZo5X8=',NULL,0,'tuan1','Tuan','Tran','tuan1@gmail.com',0,1,'2023-12-02 08:39:37.000000',1),(3,'pbkdf2_sha256$600000$2wYAvGMI58wUR4jfbF9Hs5$jxG3DTdYTZemo5oKYIgzmVSW91FdhbxowqxVuEZo5X8=',NULL,0,'tuan2','Tuan 2','Tran','tuan2@gmail.com',0,1,'2023-12-02 09:37:01.000000',1),(4,'123',NULL,0,'tuan3','Tuan 3','Tran','tuan3@gmail.com',0,1,'2023-12-02 09:40:58.000000',1),(5,'123456',NULL,0,'tuanpasswordfails','Tuan 4','password','tuan4@gmail.com',0,1,'2023-12-07 10:34:31.000000',1),(6,'123456',NULL,0,'tuanpassword1','Tuan 5','Tran','tuan5@gmail.com',0,1,'2023-12-07 10:50:19.000000',1),(7,'pbkdf2_sha256$600000$YkfAul7vg60OJHoQqLFFko$L75Dbc72umE1LYSuy7SEMoVJsHb+CDQT6srpddZxaI4=',NULL,0,'postman','postman','postman','postman@gmail.com',0,0,'2023-12-07 15:30:00.123456',1),(8,'pbkdf2_sha256$600000$vlqLe1BNU6f0YF1TdG6Kan$WHVSVcbHaZ07dg1Ha4cq/GTLqjJUZmHjB1ij44gzhUQ=',NULL,0,'tuan6','Tuan 6','Tuan','tuan6@example.com',0,1,'2023-12-10 11:42:43.323435',1),(9,'pbkdf2_sha256$600000$6iyM47wsGvy9txISvvRGkB$HgxapVMM08GYlIrOuhR33iGxTlCnbo87PFI3nNjJx4Y=',NULL,0,'tuan7','Tuan 7','Tran','',0,1,'2023-12-10 11:44:01.087788',1),(10,'password',NULL,0,'username','first_name','last_name','email@gmail.com',0,1,'2023-12-19 11:57:33.728490',1),(11,'pbkdf2_sha256$600000$uaJ7nQdrlc6IncdN955uzX$aGWFGd1h+FnMZpixTu7DrwMfpwanaJ3Sapucinxbhgk=',NULL,0,'username1','first_name','last_name','email@gmail.com',0,1,'2023-12-19 12:07:24.260463',1),(12,'pbkdf2_sha256$600000$mYGjYnyjJy1DHeFxccXV8z$4031NTk+hrz166ibil4DfwN5SltoLUacaRsXox15ptc=',NULL,0,'username3','first_name','last_name','email@gmail.com',0,1,'2023-12-19 12:25:40.355863',3),(13,'pbkdf2_sha256$600000$UUWQcoS1P9QcZ577p4Y7vP$kF67MbEGHVvFhIyl40k6jTIQUcD+q6yXLKK38eO/UPc=',NULL,0,'12312','string','string','string',0,1,'2023-12-19 12:32:00.927257',3),(14,'pbkdf2_sha256$600000$VdpHrMrltbNF5kc8mVRHuJ$QSBFKkNrLtCKrZNQG1SsLX2YSq558Mq8DTI+sXhKJJE=',NULL,0,'43535','string','string','string',0,1,'2023-12-19 12:33:59.352775',3),(15,'pbkdf2_sha256$600000$VdpHrMrltbNF5kc8mVRHuJ$QSBFKkNrLtCKrZNQG1SsLX2YSq558Mq8DTI+sXhKJJE=',NULL,0,'435357','string','string','string',0,1,'2023-12-19 12:33:59.352775',3),(16,'pbkdf2_sha256$600000$VdpHrMrltbNF5kc8mVRHuJ$QSBFKkNrLtCKrZNQG1SsLX2YSq558Mq8DTI+sXhKJJE=',NULL,0,'435358','string','string','string',0,1,'2023-12-19 12:33:59.352775',3),(17,'pbkdf2_sha256$600000$VdpHrMrltbNF5kc8mVRHuJ$QSBFKkNrLtCKrZNQG1SsLX2YSq558Mq8DTI+sXhKJJE=',NULL,0,'435359','string','string','string',0,1,'2023-12-19 12:33:59.352775',3),(20,'pbkdf2_sha256$600000$wp7QUCfSFsb8gnRQFJWlJl$ZNawP/31SWr1EGKkw1O7rik+ukxSfgwyVODmAuEj7eM=',NULL,0,'username4','first_name','last_name','email@gmail.com',0,1,'2023-12-28 12:16:38.671909',3),(21,'pbkdf2_sha256$600000$wp7QUCfSFsb8gnRQFJWlJl$ZNawP/31SWr1EGKkw1O7rik+ukxSfgwyVODmAuEj7eM=',NULL,0,'username5','first_name','last_name','email@gmail.com',0,1,'2023-12-28 12:16:38.671909',3),(25,'pbkdf2_sha256$600000$xAFgnX6BxTcfsm4TtBs6gw$fUOR8D35c4Foypckn8iGzlJZy5torqB79m7fw0eo9L0=',NULL,0,'username6','first_name','last_name','email@gmail.com',0,1,'2023-12-28 13:37:20.393913',3),(26,'pbkdf2_sha256$600000$M8ryyiLMybgOobfR2TQFqG$WNPHAbP0MHoUIzdg8eAYP6MSDGSWaBo1BH1ZKCuxBgw=',NULL,0,'username7','first_name','last_name','email@gmail.com',0,1,'2023-12-28 13:42:06.973048',3),(27,'pbkdf2_sha256$600000$OpxVMYIXPtnCMbn9zQ0Zhb$bnbwJCZZSL7kcRSDfnX+T2wrgil7Qr4NOh9eCfwRIr0=',NULL,0,'username8','first_name','last_name','email@gmail.com',0,1,'2023-12-28 13:47:05.798022',3),(28,'pbkdf2_sha256$600000$lOGLTL9CaxIra3whK6J72W$tKEOZjnPBqWJvBtG3VS9Ygo6OUEH3qWKL+EnxMd/o3I=',NULL,0,'username10','first_name','last_name','email@gmail.com',0,1,'2023-12-28 13:50:50.452850',3),(29,'pbkdf2_sha256$600000$kMpxIWaxEPXEb6abD4L49r$yXFIJ6XPL0sE7Qa7sAcgqi0ToA0IpKldEn8RGrw5xNQ=',NULL,0,'username11','first_name','last_name','email@gmail.com',0,1,'2023-12-28 13:59:59.344804',3);
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

-- Dump completed on 2023-12-31 22:29:26
