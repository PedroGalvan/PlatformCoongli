


-- MySQL dump 10.13  Distrib 5.5.29, for Win64 (x86)
--
-- Host: localhost    Database: We-Work-English
-- ------------------------------------------------------
-- Server version	5.5.29

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
-- Table structure for table `action`
--

DROP TABLE IF EXISTS `action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `action` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `creationMoment` datetime DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `completed` bit(1) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_4l049ji03042tnetm21iddolt` (`user_id`),
  CONSTRAINT `FK_4l049ji03042tnetm21iddolt` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action`
--

LOCK TABLES `action` WRITE;
/*!40000 ALTER TABLE `action` DISABLE KEYS */;
/*!40000 ALTER TABLE `action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actionplan`
--

DROP TABLE IF EXISTS `actionplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actionplan` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `creationMoment` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `docType` varchar(255) DEFAULT NULL,
  `file` longblob,
  `invoiceReport` bit(1) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `resourceCategory_id` int(11) DEFAULT NULL,
  `owner_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_q315sq99r8p5eh8rq3uitnpek` (`owner_id`),
  KEY `FK_r6n25pnt67rhu88x7yorxd41q` (`resourceCategory_id`),
  CONSTRAINT `FK_r6n25pnt67rhu88x7yorxd41q` FOREIGN KEY (`resourceCategory_id`) REFERENCES `resourcecategory` (`id`),
  CONSTRAINT `FK_q315sq99r8p5eh8rq3uitnpek` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actionplan`
--

LOCK TABLES `actionplan` WRITE;
/*!40000 ALTER TABLE `actionplan` DISABLE KEYS */;
/*!40000 ALTER TABLE `actionplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `userAccount_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_gfgqmtp2f9i5wsojt33xm0uth` (`userAccount_id`),
  CONSTRAINT `FK_gfgqmtp2f9i5wsojt33xm0uth` FOREIGN KEY (`userAccount_id`) REFERENCES `useraccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (2,0,'Admin1@mail.com','Admin','123456789','Admin',1);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `creationMoment` datetime DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_jhvt6d9ap8gxv67ftrmshdfhj` (`user_id`),
  CONSTRAINT `FK_jhvt6d9ap8gxv67ftrmshdfhj` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goal`
--

DROP TABLE IF EXISTS `goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goal` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `creationMoment` datetime DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `completed` bit(1) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ndgy9m8dwnn8vskxlmdkcgm1` (`user_id`),
  CONSTRAINT `FK_ndgy9m8dwnn8vskxlmdkcgm1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goal`
--

LOCK TABLES `goal` WRITE;
/*!40000 ALTER TABLE `goal` DISABLE KEYS */;
/*!40000 ALTER TABLE `goal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequences`
--

DROP TABLE IF EXISTS `hibernate_sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequences` (
  `sequence_name` varchar(255) DEFAULT NULL,
  `sequence_next_hi_value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequences`
--

LOCK TABLES `hibernate_sequences` WRITE;
/*!40000 ALTER TABLE `hibernate_sequences` DISABLE KEYS */;
INSERT INTO `hibernate_sequences` VALUES ('DomainEntity',1);
/*!40000 ALTER TABLE `hibernate_sequences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invitation`
--

DROP TABLE IF EXISTS `invitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invitation` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `accepted` bit(1) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `creationMoment` date DEFAULT NULL,
  `rejected` bit(1) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `recipient_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_is3cyarqux8un8ybitmtltqxl` (`recipient_id`),
  KEY `FK_l8nt6vmte7rflbb1we8tps8x0` (`sender_id`),
  KEY `FK_2tg1waaadht9xbnplff4kh9lj` (`session_id`),
  CONSTRAINT `FK_2tg1waaadht9xbnplff4kh9lj` FOREIGN KEY (`session_id`) REFERENCES `session` (`id`),
  CONSTRAINT `FK_is3cyarqux8un8ybitmtltqxl` FOREIGN KEY (`recipient_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_l8nt6vmte7rflbb1we8tps8x0` FOREIGN KEY (`sender_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitation`
--

LOCK TABLES `invitation` WRITE;
/*!40000 ALTER TABLE `invitation` DISABLE KEYS */;
/*!40000 ALTER TABLE `invitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `creationMoment` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `docType` varchar(255) DEFAULT NULL,
  `file` longblob,
  `invoiceReport` bit(1) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `resourceCategory_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_bk564yqlhii6cxdhxu2u3txvg` (`user_id`),
  KEY `FK_d6b37tbn5o4u9bsb25f58lo3f` (`resourceCategory_id`),
  CONSTRAINT `FK_d6b37tbn5o4u9bsb25f58lo3f` FOREIGN KEY (`resourceCategory_id`) REFERENCES `resourcecategory` (`id`),
  CONSTRAINT `FK_bk564yqlhii6cxdhxu2u3txvg` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesage`
--

DROP TABLE IF EXISTS `mesage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mesage` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `saw` bit(1) DEFAULT NULL,
  `sentMoment` datetime DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `messageFolder_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_20vkn79yls7ei9idhyt92w6ff` (`messageFolder_id`),
  CONSTRAINT `FK_20vkn79yls7ei9idhyt92w6ff` FOREIGN KEY (`messageFolder_id`) REFERENCES `messagefolder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesage`
--

LOCK TABLES `mesage` WRITE;
/*!40000 ALTER TABLE `mesage` DISABLE KEYS */;
/*!40000 ALTER TABLE `mesage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messagefolder`
--

DROP TABLE IF EXISTS `messagefolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messagefolder` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `actor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messagefolder`
--

LOCK TABLES `messagefolder` WRITE;
/*!40000 ALTER TABLE `messagefolder` DISABLE KEYS */;
INSERT INTO `messagefolder` VALUES (6,0,'Inbox',2),(7,0,'Outbox',2),(8,0,'Trashbox',2);
/*!40000 ALTER TABLE `messagefolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `creationMoment` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `docType` varchar(255) DEFAULT NULL,
  `file` longblob,
  `invoiceReport` bit(1) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `resourceCategory_id` int(11) DEFAULT NULL,
  `session_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_dhqfm8vyjfibt5s33iy7icgmm` (`session_id`),
  KEY `FK_3518x053ryv6f5ee614ok73id` (`resourceCategory_id`),
  CONSTRAINT `FK_3518x053ryv6f5ee614ok73id` FOREIGN KEY (`resourceCategory_id`) REFERENCES `resourcecategory` (`id`),
  CONSTRAINT `FK_dhqfm8vyjfibt5s33iy7icgmm` FOREIGN KEY (`session_id`) REFERENCES `session` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `creationMoment` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `docType` varchar(255) DEFAULT NULL,
  `file` longblob,
  `invoiceReport` bit(1) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `resourceCategory_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_comk88k68136iard64e4k7j6b` (`resourceCategory_id`),
  CONSTRAINT `FK_comk88k68136iard64e4k7j6b` FOREIGN KEY (`resourceCategory_id`) REFERENCES `resourcecategory` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource`
--

LOCK TABLES `resource` WRITE;
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourcecategory`
--

DROP TABLE IF EXISTS `resourcecategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourcecategory` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `hidden` bit(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourcecategory`
--

LOCK TABLES `resourcecategory` WRITE;
/*!40000 ALTER TABLE `resourcecategory` DISABLE KEYS */;
INSERT INTO `resourcecategory` VALUES (3,0,'Invoices from your sessions','','Invoices'),(4,0,'Reports from sessions','','Reports'),(5,0,'Action plans from users','','ActionPlans');
/*!40000 ALTER TABLE `resourcecategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourcecategory_user`
--

DROP TABLE IF EXISTS `resourcecategory_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourcecategory_user` (
  `resourceCategories_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  KEY `FK_kd7j2fyg623a9v6nacb9q84e5` (`users_id`),
  KEY `FK_7620plbxbe1jxv6x9nh3fq3h7` (`resourceCategories_id`),
  CONSTRAINT `FK_7620plbxbe1jxv6x9nh3fq3h7` FOREIGN KEY (`resourceCategories_id`) REFERENCES `resourcecategory` (`id`),
  CONSTRAINT `FK_kd7j2fyg623a9v6nacb9q84e5` FOREIGN KEY (`users_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourcecategory_user`
--

LOCK TABLES `resourcecategory_user` WRITE;
/*!40000 ALTER TABLE `resourcecategory_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `resourcecategory_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `accepted` bit(1) DEFAULT NULL,
  `cancelled` bit(1) DEFAULT NULL,
  `endMoment` datetime DEFAULT NULL,
  `hidden` bit(1) DEFAULT NULL,
  `periodica` bit(1) DEFAULT NULL,
  `startMoment` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session_user`
--

DROP TABLE IF EXISTS `session_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session_user` (
  `sessions_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  KEY `FK_3k6ov472jxycj5surmpdok768` (`users_id`),
  KEY `FK_kspaymrr9bp6myq3wabj66h2u` (`sessions_id`),
  CONSTRAINT `FK_kspaymrr9bp6myq3wabj66h2u` FOREIGN KEY (`sessions_id`) REFERENCES `session` (`id`),
  CONSTRAINT `FK_3k6ov472jxycj5surmpdok768` FOREIGN KEY (`users_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_user`
--

LOCK TABLES `session_user` WRITE;
/*!40000 ALTER TABLE `session_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `session_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `textable`
--

DROP TABLE IF EXISTS `textable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `textable` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `creationMoment` datetime DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `textable`
--

LOCK TABLES `textable` WRITE;
/*!40000 ALTER TABLE `textable` DISABLE KEYS */;
/*!40000 ALTER TABLE `textable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `userAccount_id` int(11) DEFAULT NULL,
  `activated` bit(1) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `dni` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_o6s94d43co03sx067ili5760c` (`userAccount_id`),
  CONSTRAINT `FK_o6s94d43co03sx067ili5760c` FOREIGN KEY (`userAccount_id`) REFERENCES `useraccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useraccount`
--

DROP TABLE IF EXISTS `useraccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useraccount` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `repeatPassword` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_csivo9yqa08nrbkog71ycilh5` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraccount`
--

LOCK TABLES `useraccount` WRITE;
/*!40000 ALTER TABLE `useraccount` DISABLE KEYS */;
INSERT INTO `useraccount` VALUES (1,0,'6f3df751855376d4d0d6d9e219c47a8c','6f3df751855376d4d0d6d9e219c47a8c','eDSXagrc');
/*!40000 ALTER TABLE `useraccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useraccount_authorities`
--

DROP TABLE IF EXISTS `useraccount_authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useraccount_authorities` (
  `UserAccount_id` int(11) NOT NULL,
  `authority` varchar(255) DEFAULT NULL,
  KEY `FK_b63ua47r0u1m7ccc9lte2ui4r` (`UserAccount_id`),
  CONSTRAINT `FK_b63ua47r0u1m7ccc9lte2ui4r` FOREIGN KEY (`UserAccount_id`) REFERENCES `useraccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraccount_authorities`
--

LOCK TABLES `useraccount_authorities` WRITE;
/*!40000 ALTER TABLE `useraccount_authorities` DISABLE KEYS */;
INSERT INTO `useraccount_authorities` VALUES (1,'ADMIN');
/*!40000 ALTER TABLE `useraccount_authorities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-18 16:50:45
