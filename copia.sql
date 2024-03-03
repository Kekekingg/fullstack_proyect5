-- MySQL dump 10.13  Distrib 8.3.0, for Win64 (x86_64)
--
-- Host: localhost    Database: nasa_mysql
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `space`
--

DROP TABLE IF EXISTS `space`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `space` (
  `id` int NOT NULL AUTO_INCREMENT,
  `center` varchar(50) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photographer` varchar(50) DEFAULT NULL,
  `data_created` date DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `ImagenURL` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `space`
--

LOCK TABLES `space` WRITE;
/*!40000 ALTER TABLE `space` DISABLE KEYS */;
INSERT INTO `space` VALUES (1,'HQ','Artemis Q&A with NASA Associate Administrator Bob Cabana','NASA','2022-03-10','Artemis Q&A with NASA Associate Administrator Bob Cabana.  With Artemis missions, NASA will land the first woman and first person of color on the Moon, using innovative technologies to explore more of the lunar surface than ever before. ','https://images-assets.nasa.gov/image/Artemis%20II%20second%20poster_11x17_300ppi_CMYK_Right/Artemis%20II%20second%20poster_11x17_300ppi_CMYK_Right~medium.jpg'),(2,'JSC','Moon from Earth','ISS','2024-02-20','Earth\'s atmosphere refracts the light of the waxing gibbous Moon in this photograph from the International Space Station as it orbited 261 miles above the Atlantic Ocean off the coast of the northeastern United States.','https://images-assets.nasa.gov/image/iss070e034731/iss070e034731~medium.jpg'),(3,'JSC','Earth ','ISS','2024-02-06','Snowing mountains from atmosphere.','https://images-assets.nasa.gov/image/a-sky-view-of-earth-from-suomi-npp_16611703184_o/a-sky-view-of-earth-from-suomi-npp_16611703184_o~medium.jpg'),(4,'JSC','Orunburg','ISS','2024-02-11','Orenburg, Russia, surrounded by a wintry landscape, the Sakmara and Ural Rivers, and near the border with Kazakhstan, is pictured from the International Station as it orbited 263 miles above the area where Eastern Europe meets central Asia.','https://images-assets.nasa.gov/image/GSFC_20171208_Archive_e001238/GSFC_20171208_Archive_e001238~medium.jpg'),(5,'JSC','Lights of Shangai','ISS','2024-02-17','The city lights of Shanghai, the most populous city in China with a population of about 24.9 million, and the Huangpu River flowing through downtown, are pictured from the International Space Station as it orbited 260 miles above the East China Sea.','https://images-assets.nasa.gov/image/iss033e011098/iss033e011098~medium.jpg'),(6,'JPL','Juno Mission','NASA','2023-11-09','NASA\'s Juno spacecraft captured this view of Jupiter during the mission\'s 54th close flyby of the giant planet on Sept. 7, 2023. The colorful zones and belts in Jupiter\'s atmosphere run from the cloud tops down to approximately 1,860 miles (3,000 kilometers).','https://images-assets.nasa.gov/image/PIA26077/PIA26077~medium.jpg'),(7,'JPL','The Sword of Orion','NASA','2006-08-15','This image from NASA Spitzer Space Telescope shows the Orion nebula, our closest massive star-making factory, 1,450 light-years from Earth. The nebula is close enough to appear to the naked eye as a fuzzy star in the sword of the constellation.','https://images-assets.nasa.gov/image/PIA08653/PIA08653~medium.jpg'),(8,'NASA, ESA, and D. Coe','Behemoth Black Hole','NASA, ESA, and D. Coe','2016-04-06','This computer-simulated image shows a supermassive black hole at the core of a galaxy. The black region in the center represents the black hole’s event horizon, where no light can escape the massive object’s gravitational grip. The black hole’s powerful gravity distorts space around it like a funhouse mirror.','https://images-assets.nasa.gov/image/behemoth-black-hole-found-in-an-unlikely-place_26209716511_o/behemoth-black-hole-found-in-an-unlikely-place_26209716511_o~medium.jpg'),(9,'GSFC','Whirlpool Galaxy','NASA, Hubble Space Telescope','2017-12-08','NASA\'s Hubble Space Telescope show off two dramatically different face-on views of the spiral galaxy M51, dubbed the Whirlpool Galaxy.','https://images-assets.nasa.gov/image/GSFC_20171208_Archive_e001925/GSFC_20171208_Archive_e001925~medium.jpg'),(10,'JPL','Io´s Volcanos','NASA, Juno spacecraft','2023-12-22','This image revealing the north polar region of the Jovian moon Io was taken on October 15, 2023, by the JunoCam imager aboard NASA\'s Juno spacecraft.','https://images-assets.nasa.gov/image/PIA26234/PIA26234~medium.jpg'),(11,'JPL','Andromeda Galaxy','NASA, Messier31','2003-12-10','This image is from NASA Galaxy Evolution Explorer is an observation of the large galaxy in Andromeda, Messier 31. The Andromeda galaxy is the most massive in the local group of galaxies that includes our Milky Way.','https://images-assets.nasa.gov/image/PIA04921/PIA04921~medium.jpg');
/*!40000 ALTER TABLE `space` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-03  8:21:11
