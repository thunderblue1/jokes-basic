CREATE DATABASE  IF NOT EXISTS `heroku_7e81f64bd01960f` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `heroku_7e81f64bd01960f`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: us-cluster-east-01.k8s.cleardb.net    Database: heroku_7e81f64bd01960f
-- ------------------------------------------------------
-- Server version	8.0.20

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '0bd7810f-b967-11ee-a921-ceb303c109c5:1-167,
12c4e5f3-9c2e-11ee-ac42-e259eb08b713:1-41,
12d886e5-a78f-11ee-b22c-461f33dd6e0d:1-2409019,
13f08cd5-d626-11ee-a0e6-7265b726f0fd:1-158,
15cd0bfe-a37e-11ee-b6a8-a6fad47b2784:1-33,
17a0da85-b247-11ee-a891-7369b542e1ec:1-10914794,
1bea0065-e4a9-11ee-a7b4-f6653f9b169c:1-4,
29bfec0b-e11b-11ee-ade3-d690aa908b8f:1-1589426,
303d126e-bd67-11ee-b35d-0e9b7de11758:1,
3527f4ad-91d6-11ee-98a7-42a9568fe801:1,
3d18226a-dd94-11ee-94a0-c7790082dd8f:1-1422795,
45cb8c99-8bae-11ee-82d0-26ee1ea99514:1-367565,
5766b902-d669-11ee-82ec-2fffec5d2b6c:1-3076393,
5ee9ae76-e523-11ee-a56a-e6b27b19fc86:1,
62f52554-e52e-11ee-a0bc-bfbaedec8860:1-2549730,
63d6c882-4746-11ee-b320-46e1adce9ced:1-235318,
684c3c21-be24-11ee-b3d1-ceb303c109c5:1-142,
6d9aff05-d66a-11ee-a741-c234e2c5e25c:1-2,
6fc6c0e5-e48d-11ee-a4a4-fe4b5c279bea:1,
7964633d-dd86-11ee-9a8d-62471b9b2a10:1-84,
7beddf10-e536-11ee-a1c8-2ed100386d44:1-2156,
7ea39c57-c163-11ee-ba2f-4e79623136c3:1-385,
836bc40c-9869-11ee-a3c0-42a9568fe801:1-16,
84fe8100-887d-11ee-89ca-3e8864aa62bb:1-14,
86474e2b-773a-11ee-809e-13a21666bf00:1-235546,
872f42a6-e0a7-11ee-a174-0220c4047765:1,
88be7c7d-e7cb-11ee-b505-523391c3639f:1-10800885,
9bc4584b-4746-11ee-a1a7-feae0c1aaac0:1-4,
9dc00782-81a4-11ee-849b-42a9568fe801:1-72,
a439f611-ec15-11ee-beca-167e1f0cef0b:1-606,
a60c559d-fc0d-11ee-b44f-32f0b8b5fca1:1-5629748,
be8f2cf6-8c57-11ee-90c9-42a9568fe801:1-107,
c1fab70c-d69b-11ee-9241-9a939cdb5401:1-13409,
c586c347-cacc-11ee-8930-a6185dedbbc2:1-3718,
c970f2f1-773a-11ee-b186-1636f2722975:1-104,
ca1e866f-d790-11ee-9602-c234e2c5e25c:1-124,
cb1028b2-b685-11ee-a4fb-e27bf70198e6:1,
d6af15b2-d07b-11ee-9ec0-3a6eacb1230f:1-2579987,
d79211da-9c2d-11ee-8fd6-7fad5feaf976:1-1433483,
dbb1b23e-b247-11ee-a2eb-ceb303c109c5:1-81,
dfcb127a-91d7-11ee-9aed-3e8864aa62bb:1-59,
e611f337-e48d-11ee-a892-e20bfc740b97:1-31968,
e7b901b4-8e2d-11ee-9354-3e8864aa62bb:1-136,
e7c5c4ff-e4ff-11ee-b8f3-7ece6b4057d7:1-190902,
ed27791a-5870-ee11-4dd3-b9e0cc2291f2:1-5053,
eedcf0df-b52e-11ee-a067-8ad9246b9fb7:1,
f09eb7e4-e12f-11ee-a2fc-561692de67a2:1-43,
f6044004-f8e2-11ee-96f4-4ea46ae29a5d:1-38';

--
-- Table structure for table `jokes_table`
--

DROP TABLE IF EXISTS `jokes_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jokes_table` (
  `JokeID` int NOT NULL AUTO_INCREMENT,
  `Joke_question` varchar(500) NOT NULL,
  `Joke_answer` varchar(500) NOT NULL,
  `user_id` char(100) NOT NULL,
  PRIMARY KEY (`JokeID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jokes_table`
--

LOCK TABLES `jokes_table` WRITE;
/*!40000 ALTER TABLE `jokes_table` DISABLE KEYS */;
INSERT INTO `jokes_table` VALUES (1,'What time is it when an elephant sits on your fence?','It\'s time to buy a new fence.','13'),(3,'Why did the chicken cross the road?','To get to the other side.','15'),(4,'What did the mother buffalo say to her son when she dropped him off at school?','Bison','16'),(5,'Why did the chicken cross the playground?','To get to the other slide.','13'),(6,'What happens to a frog\'s car when it breaks down?','It gets toad.','15'),(7,'How does a frog start his car when the battery is dead?','He gets a jump start.','16'),(10,'what to hear a joke?','Your life','13'),(17,'Why can\'t you trust an atom?','They make up everything.','15'),(18,'My sister bet me $100 that I couldn\'t make a car out of spagetti','You should have seen the look on her face when I drove pasta.','16'),(19,'Where do animals go when their tail falls off?','The retail store.','23'),(41,'What does a house wear?','Address!','34'),(42,'This is a new Joke.','Ha.','35'),(43,'This is the newest joke','just now.','37');
/*!40000 ALTER TABLE `jokes_table` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-03 13:17:26

CREATE DATABASE  IF NOT EXISTS `heroku_7e81f64bd01960f` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `heroku_7e81f64bd01960f`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: us-cluster-east-01.k8s.cleardb.net    Database: heroku_7e81f64bd01960f
-- ------------------------------------------------------
-- Server version	8.0.20

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '0bd7810f-b967-11ee-a921-ceb303c109c5:1-167,
12c4e5f3-9c2e-11ee-ac42-e259eb08b713:1-41,
12d886e5-a78f-11ee-b22c-461f33dd6e0d:1-2409019,
13f08cd5-d626-11ee-a0e6-7265b726f0fd:1-158,
15cd0bfe-a37e-11ee-b6a8-a6fad47b2784:1-33,
17a0da85-b247-11ee-a891-7369b542e1ec:1-10914794,
1bea0065-e4a9-11ee-a7b4-f6653f9b169c:1-4,
29bfec0b-e11b-11ee-ade3-d690aa908b8f:1-1589426,
303d126e-bd67-11ee-b35d-0e9b7de11758:1,
3527f4ad-91d6-11ee-98a7-42a9568fe801:1,
3d18226a-dd94-11ee-94a0-c7790082dd8f:1-1422795,
45cb8c99-8bae-11ee-82d0-26ee1ea99514:1-367565,
5766b902-d669-11ee-82ec-2fffec5d2b6c:1-3076393,
5ee9ae76-e523-11ee-a56a-e6b27b19fc86:1,
62f52554-e52e-11ee-a0bc-bfbaedec8860:1-2549730,
63d6c882-4746-11ee-b320-46e1adce9ced:1-235318,
684c3c21-be24-11ee-b3d1-ceb303c109c5:1-142,
6d9aff05-d66a-11ee-a741-c234e2c5e25c:1-2,
6fc6c0e5-e48d-11ee-a4a4-fe4b5c279bea:1,
7964633d-dd86-11ee-9a8d-62471b9b2a10:1-84,
7beddf10-e536-11ee-a1c8-2ed100386d44:1-2156,
7ea39c57-c163-11ee-ba2f-4e79623136c3:1-385,
836bc40c-9869-11ee-a3c0-42a9568fe801:1-16,
84fe8100-887d-11ee-89ca-3e8864aa62bb:1-14,
86474e2b-773a-11ee-809e-13a21666bf00:1-235546,
872f42a6-e0a7-11ee-a174-0220c4047765:1,
88be7c7d-e7cb-11ee-b505-523391c3639f:1-10800885,
9bc4584b-4746-11ee-a1a7-feae0c1aaac0:1-4,
9dc00782-81a4-11ee-849b-42a9568fe801:1-72,
a439f611-ec15-11ee-beca-167e1f0cef0b:1-606,
a60c559d-fc0d-11ee-b44f-32f0b8b5fca1:1-5629745,
be8f2cf6-8c57-11ee-90c9-42a9568fe801:1-107,
c1fab70c-d69b-11ee-9241-9a939cdb5401:1-13409,
c586c347-cacc-11ee-8930-a6185dedbbc2:1-3718,
c970f2f1-773a-11ee-b186-1636f2722975:1-104,
ca1e866f-d790-11ee-9602-c234e2c5e25c:1-124,
cb1028b2-b685-11ee-a4fb-e27bf70198e6:1,
d6af15b2-d07b-11ee-9ec0-3a6eacb1230f:1-2579987,
d79211da-9c2d-11ee-8fd6-7fad5feaf976:1-1433483,
dbb1b23e-b247-11ee-a2eb-ceb303c109c5:1-81,
dfcb127a-91d7-11ee-9aed-3e8864aa62bb:1-59,
e611f337-e48d-11ee-a892-e20bfc740b97:1-31968,
e7b901b4-8e2d-11ee-9354-3e8864aa62bb:1-136,
e7c5c4ff-e4ff-11ee-b8f3-7ece6b4057d7:1-190902,
ed27791a-5870-ee11-4dd3-b9e0cc2291f2:1-5053,
eedcf0df-b52e-11ee-a067-8ad9246b9fb7:1,
f09eb7e4-e12f-11ee-a2fc-561692de67a2:1-43,
f6044004-f8e2-11ee-96f4-4ea46ae29a5d:1-38';

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` text NOT NULL,
  `password` text NOT NULL,
  `email_address` text,
  `admin_role` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (13,'bill','password','bill.gates@microsoft.com',1),(15,'kim','password',' kim.ill@north.ko',0),(16,'don','don','   don.trump@whitehouse.gov   ',0),(17,'bob',' bob ',' bob@microsoft.com',0),(18,' melinda ','m','  melinda.gates@microsoft.com ',0),(19,'jim','jim','jim@msn.com',0),(23,'obama','password','barak@whitehouse.gov',0),(37,'screencast','$2y$10$oF5zo0o3uYZuwzx9PLNnSuRXDgHs1HM22Sz6hoAKM8ieZMsj5fWz6',NULL,NULL),(38,'neverused','$2y$10$wjl2vK6zJ5zHLdvxOLESneazScAyaX4w4y1JW4u7vdU6KOdr4zmUW',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-03 13:17:23
