-- MySQL dump 10.13  Distrib 5.5.50, for Win32 (x86)
--
-- Host: localhost    Database: ChitChat
-- ------------------------------------------------------
-- Server version	5.5.50

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
-- Table structure for table `avengers`
--

DROP TABLE IF EXISTS `avengers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avengers` (
  `participants` varchar(70) DEFAULT NULL,
  `isAdmin` tinyint(1) DEFAULT NULL,
  `accepted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avengers`
--

LOCK TABLES `avengers` WRITE;
/*!40000 ALTER TABLE `avengers` DISABLE KEYS */;
INSERT INTO `avengers` VALUES ('captain_america',0,1),('Thanos',0,1),('iron_man',0,1),('hulk',1,1);
/*!40000 ALTER TABLE `avengers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friends` (
  `participants` varchar(70) DEFAULT NULL,
  `isAdmin` tinyint(1) DEFAULT NULL,
  `accepted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
INSERT INTO `friends` VALUES ('hohos',0,0),('smt_coder',0,0),('eXperienced',0,0),('satan_nightmare',0,0),('gg_14',1,1);
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invitations`
--

DROP TABLE IF EXISTS `invitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invitations` (
  `fromuser` varchar(70) DEFAULT NULL,
  `touser` varchar(70) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitations`
--

LOCK TABLES `invitations` WRITE;
/*!40000 ALTER TABLE `invitations` DISABLE KEYS */;
INSERT INTO `invitations` VALUES ('Friends','hohos',0),('Friends','smt_coder',0),('Friends','eXperienced',0),('Friends','satan_nightmare',0),('party','hulk',0),('party','Thanos',0),('party','iron_man',0),('Secret_Group','captain_america',0),('Secret_Group','hohos',0),('Secret_Group','smt_coder',0),('Secret_Group','gg_14',0),('Secret_Group','eXperienced',0),('Secret_Group','satan_nightmare',0),('Secret_Group','Thanos',0),('Secret_Group','hulk',0);
/*!40000 ALTER TABLE `invitations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `messagefrom` varchar(70) DEFAULT NULL,
  `messageto` varchar(70) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `sent` tinyint(1) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `actualsender` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=451 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (383,'hulk','captain_america','whats up captain?','2017-12-21 06:45:26',1,0,'hulk'),(384,'captain_america','hulk','nothing much','2017-12-21 06:45:57',1,0,'captain_america'),(385,'captain_america','hulk','just daily routine','2017-12-21 06:46:05',1,0,'captain_america'),(386,'hulk','captain_america','what about a fight...hahahaha','2017-12-21 06:46:39',1,0,'hulk'),(387,'captain_america','hulk','i dont think','2017-12-21 06:46:54',1,0,'captain_america'),(388,'captain_america','hulk','u can control yourself','2017-12-21 06:47:06',1,0,'captain_america'),(389,'gg_14','hulk','hey hulk!!','2017-12-21 06:52:36',0,0,'gg_14'),(390,'gg_14','hulk','having fun?','2017-12-21 06:52:43',0,0,'gg_14'),(391,'gg_14','hulk','in controlling yourself??','2017-12-21 06:52:52',0,0,'gg_14'),(392,'gg_14','hulk','lol lol lol','2017-12-21 06:53:02',0,0,'gg_14'),(393,'smt_coder','hulk','its been a month','2017-12-21 06:53:20',0,0,'smt_coder'),(394,'smt_coder','hulk','since i last the real u','2017-12-21 06:53:31',0,0,'smt_coder'),(395,'smt_coder','hulk','time to turn green','2017-12-21 06:53:39',0,0,'smt_coder'),(396,'smt_coder','hulk','huh??','2017-12-21 06:53:41',0,0,'smt_coder'),(397,'smt_coder','hulk','hahaha','2017-12-21 06:53:44',0,0,'smt_coder'),(398,'hohos','hulk','I am a philosopher','2017-12-21 06:54:07',1,0,'hohos'),(399,'hohos','hulk','tell me ur problems','2017-12-21 06:54:14',1,0,'hohos'),(400,'hohos','hulk','and i will solve them','2017-12-21 06:54:28',1,0,'hohos'),(401,'captain_america','hulk','but still','2017-12-21 06:54:45',1,0,'captain_america'),(402,'captain_america','hulk','I am always up for fight!!','2017-12-21 06:54:57',1,0,'captain_america'),(403,'gg_14','eXperienced','Preparing well for ICPC?','2017-12-21 07:03:44',0,0,'gg_14'),(404,'gg_14','eXperienced','All the best brother','2017-12-21 07:03:53',0,0,'gg_14'),(405,'hulk','captain_america','just tell the venue..','2017-12-21 07:08:37',1,0,'hulk'),(406,'captain_america','hulk','where I was born','2017-12-21 07:08:55',1,0,'captain_america'),(407,'hulk','captain_america','that was a century ago','2017-12-21 07:09:16',1,0,'hulk'),(408,'hulk','captain_america','you emotional idiot','2017-12-21 07:09:32',1,0,'hulk'),(409,'hohos','captain_america','hey','2017-12-21 07:10:56',1,0,'hohos'),(410,'hohos','captain_america','cap','2017-12-21 07:10:58',1,0,'hohos'),(411,'hohos','captain_america','howdy','2017-12-21 07:11:04',1,0,'hohos'),(412,'hulk','Thanos','I am gonna rip you in two pieces','2017-12-21 07:26:29',1,0,'hulk'),(413,'Avengers','captain_america','I will beat u all','2017-12-21 07:55:28',1,0,'Thanos'),(414,'Avengers','iron_man','I will beat u all','2017-12-21 07:55:28',1,0,'Thanos'),(415,'Avengers','hulk','I will beat u all','2017-12-21 07:55:28',1,0,'Thanos'),(416,'Thanos','Avengers','I will beat u all','2017-12-21 07:55:28',0,0,'Thanos'),(417,'Avengers','captain_america','how you people are gonna fight with me??','2017-12-21 07:56:03',1,0,'Thanos'),(418,'Avengers','iron_man','how you people are gonna fight with me??','2017-12-21 07:56:03',1,0,'Thanos'),(419,'Avengers','hulk','how you people are gonna fight with me??','2017-12-21 07:56:03',1,0,'Thanos'),(420,'Thanos','Avengers','how you people are gonna fight with me??','2017-12-21 07:56:03',0,0,'Thanos'),(421,'Avengers','captain_america','like the old man say..','2017-12-21 07:56:57',1,0,'iron_man'),(422,'Avengers','Thanos','like the old man say..','2017-12-21 07:56:57',1,0,'iron_man'),(423,'Avengers','hulk','like the old man say..','2017-12-21 07:56:57',1,0,'iron_man'),(424,'iron_man','Avengers','like the old man say..','2017-12-21 07:56:57',0,0,'iron_man'),(425,'Avengers','captain_america','TOGETHER','2017-12-21 07:57:05',1,0,'iron_man'),(426,'Avengers','Thanos','TOGETHER','2017-12-21 07:57:05',1,0,'iron_man'),(427,'Avengers','hulk','TOGETHER','2017-12-21 07:57:05',1,0,'iron_man'),(428,'iron_man','Avengers','TOGETHER','2017-12-21 07:57:05',0,0,'iron_man'),(429,'Avengers','captain_america','Hell Yeah!! ','2017-12-21 07:57:30',1,0,'hulk'),(430,'Avengers','Thanos','Hell Yeah!! ','2017-12-21 07:57:30',1,0,'hulk'),(431,'Avengers','iron_man','Hell Yeah!! ','2017-12-21 07:57:30',1,0,'hulk'),(432,'hulk','Avengers','Hell Yeah!! ','2017-12-21 07:57:30',0,0,'hulk'),(433,'Avengers','captain_america','src/resources/server_resources/ChitChat_5MA3J.jpg','2017-12-21 07:59:53',0,1,'iron_man'),(434,'Avengers','Thanos','src/resources/server_resources/ChitChat_5MA3J.jpg','2017-12-21 07:59:53',0,1,'iron_man'),(435,'Avengers','hulk','src/resources/server_resources/ChitChat_5MA3J.jpg','2017-12-21 07:59:53',0,1,'iron_man'),(436,'iron_man','Avengers','src/resources/server_resources/ChitChat_5MA3J.jpg','2017-12-21 07:59:53',0,1,'iron_man'),(437,'hohos','captain_america','Why are you not replying?','2017-12-21 08:21:22',0,0,'hohos'),(438,'hohos','captain_america','I am waiting for the response...','2017-12-21 08:21:36',0,0,'hohos'),(439,'smt_coder','captain_america','Hey cap','2017-12-21 08:21:54',0,0,'smt_coder'),(440,'smt_coder','captain_america','try coding','2017-12-21 08:21:59',0,0,'smt_coder'),(441,'smt_coder','captain_america','coding is the future','2017-12-21 08:22:07',0,0,'smt_coder'),(442,'gg_14','captain_america','whats your strategy to beat thanos?','2017-12-21 08:22:28',0,0,'gg_14'),(443,'gg_14','captain_america','If u want...I can help u in that..','2017-12-21 08:22:46',0,0,'gg_14'),(444,'iron_man','captain_america','hey cap','2017-12-21 08:23:25',0,0,'iron_man'),(445,'iron_man','captain_america','sorry for what happened in civil war','2017-12-21 08:23:37',0,0,'iron_man'),(446,'iron_man','captain_america','hope u understand','2017-12-21 08:23:53',0,0,'iron_man'),(447,'Avengers','Thanos','u just wait and watch your end..thanos','2017-12-21 08:26:17',0,0,'captain_america'),(448,'Avengers','iron_man','u just wait and watch your end..thanos','2017-12-21 08:26:17',1,0,'captain_america'),(449,'Avengers','hulk','u just wait and watch your end..thanos','2017-12-21 08:26:17',0,0,'captain_america'),(450,'captain_america','Avengers','u just wait and watch your end..thanos','2017-12-21 08:26:17',0,0,'captain_america');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `party`
--

DROP TABLE IF EXISTS `party`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `party` (
  `participants` varchar(70) DEFAULT NULL,
  `isAdmin` tinyint(1) DEFAULT NULL,
  `accepted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `party`
--

LOCK TABLES `party` WRITE;
/*!40000 ALTER TABLE `party` DISABLE KEYS */;
INSERT INTO `party` VALUES ('hulk',0,0),('Thanos',0,0),('iron_man',0,0),('captain_america',1,1);
/*!40000 ALTER TABLE `party` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secret_group`
--

DROP TABLE IF EXISTS `secret_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secret_group` (
  `participants` varchar(70) DEFAULT NULL,
  `isAdmin` tinyint(1) DEFAULT NULL,
  `accepted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secret_group`
--

LOCK TABLES `secret_group` WRITE;
/*!40000 ALTER TABLE `secret_group` DISABLE KEYS */;
INSERT INTO `secret_group` VALUES ('captain_america',0,0),('hohos',0,0),('smt_coder',0,0),('gg_14',0,0),('eXperienced',0,0),('satan_nightmare',0,0),('Thanos',0,0),('hulk',0,0),('iron_man',1,1);
/*!40000 ALTER TABLE `secret_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(70) DEFAULT NULL,
  `password` varchar(70) DEFAULT NULL,
  `isGroup` tinyint(1) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `photo` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (42,'gg_14','C10CE3C5B91B2EDF067D77958A11AD9764EA58D4',0,'garvitgupta58@gmail.com','9897116543','src/resources/server_resources/ChitChat_BVXGR.jpg'),(44,'eXperienced','4DEE61AAAE702DF02DE67AA02FB2D45B1065559E',0,'experienced@chitchat.com','9999999999','src/resources/server_resources/ChitChat_DM3VQ.jpg'),(45,'smt_coder','5993BFBB508F0C48C83F1D3C96AC7A1A790EFD22',0,'smt@chitchat.com','9888888888','src/resources/server_resources/ChitChat_S8YM8.jpg'),(46,'satan_nightmare','C63DA39ED13090239F702C236D56FDBE77E99B03',0,'satan@chitchat.com','9777777777','src/resources/server_resources/ChitChat_10UUR.jpg'),(47,'hohos','D11186354D1EF01CA06AE37D7E23E827DA13E85F',0,'hohos@chitchat.com','9777777777','src/resources/server_resources/ChitChat_8CL9T.jfif'),(48,'Thanos','2A412AE07B7993BF3612EB94431A9D06E919550C',0,'thanos@chitchat.com','9666666666','src/resources/server_resources/ChitChat_2S5TY.jpg'),(49,'iron_man','B6A8F89581549D66F7D66487D4BBB46FF4F3C59C',0,'ironman@ChitChat.com','9595959595','src/resources/server_resources/ChitChat_BYNG7.jpg'),(50,'captain_america','85F45E1685B99E03226A2A1371245DDB286D887A',0,'captain@chitchat.com','9898989898','src/resources/server_resources/ChitChat_G2KG5.jpg'),(51,'hulk','C829575CB9BDD27191CB3377C4F2E1794D6DD236',0,'hulk@chitchat.com','8787878787','src/resources/server_resources/ChitChat_XH8I0.jfif'),(52,'Avengers',NULL,1,NULL,NULL,'src/resources/server_resources/ChitChat_8QWKV.jfif'),(53,'Friends',NULL,1,NULL,NULL,'src/resources/server_resources/ChitChat_KLGQA.jfif'),(54,'party',NULL,1,NULL,NULL,NULL),(55,'Secret_Group',NULL,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-21  9:27:29