CREATE DATABASE  IF NOT EXISTS `appPlaylist` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `appPlaylist`;
-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: appPlaylist
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tracks`
--

DROP TABLE IF EXISTS `tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tracks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playlist_id` int(11) NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `artist` varchar(128) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `album_picture` varchar(256) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `youtube_url` varchar(128) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tracks_playlists` (`playlist_id`),
  CONSTRAINT `fk_tracks_playlists` FOREIGN KEY (`playlist_id`) REFERENCES `playlists` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracks`
--

LOCK TABLES `tracks` WRITE;
/*!40000 ALTER TABLE `tracks` DISABLE KEYS */;
INSERT INTO `tracks` VALUES (36,31,'Spirits Will Collide','Devin Townsend','http://img.over-blog-kiwi.com/0/99/50/54/20190228/ob_763bd2_press-cover-01.jpg','https://www.youtube.com/watch?v=AdHJurX0yVA'),(37,31,'Ih-Ah','Devin Townsend','http://images.cdstarts.de/wallpaper/DTP_Addicted.jpg','https://www.youtube.com/watch?v=Dp5uMxhsmcI'),(38,32,'Loanshark Blues','Rory Gallagher','https://img.discogs.com/HvgzxCK3xsi1kxDUydUtgxAGhf4=/fit-in/600x589/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-4454611-1445434833-4699.jpeg.jpg','https://www.youtube.com/watch?v=drknSMdDYA8'),(39,32,'Bad penny','Rory Gallagher','https://media.senscritique.com/media/000006953475/source_big/Top_Priority.jpg','https://www.youtube.com/watch?v=eGlAkiCN4-M'),(40,33,'Handmade Cities (Full Album)','Plini','http://www.albumrock.net/dyn_img/pochettes_album/7565_150.jpg','https://www.youtube.com/watch?v=Yk6OQ9IF4Xg'),(41,33,'THE END OF EVERYTHING (Full EP)','Plini','https://f4.bcbits.com/img/a1209182050_10.jpg','https://www.youtube.com/watch?v=eeQ5Nd3I3YI'),(42,34,'Africa','Toto','https://images-na.ssl-images-amazon.com/images/I/71CvdE-jjVL._SL1417_.jpg','https://www.youtube.com/watch?v=FTQbiNvZqaY'),(43,34,'Stop Loving You','Toto','https://img.discogs.com/wkpN5u9UEkWv4iZhYtHOw6VGfg4=/fit-in/595x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-573310-1225991089.jpeg.jpg','https://www.youtube.com/watch?v=bYr3OJOXk60'),(46,35,'del ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tracks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-15 21:06:04
