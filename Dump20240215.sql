-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: isacflix
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `anime`
--

DROP TABLE IF EXISTS `anime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `descricao` text,
  `imagem` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anime`
--

LOCK TABLES `anime` WRITE;
/*!40000 ALTER TABLE `anime` DISABLE KEYS */;
INSERT INTO `anime` VALUES (1,'Noblesse','Raizel desperta de seu sono de 820 anos. Ele é um nobre de sangue-puro que carrega o distinto título de Noblesse, protetor da nobreza. Para tentar proteger Raizel, seu servo Frankenstein o matricula no Colégio Ye Ran, onde Raizel se familiariza com a rotina simples e cotidiana do mundo humano e seus colegas. Contudo, a União, uma sociedade secreta que almeja dominar o mundo, começa a enviar humanos modificados para gradualmente interferir na vida de Raizel, forçando-o a lançar mão de seu tremendo poder para proteger as pessoas ao seu redor.','https://www.crunchyroll.com/imgsrv/display/thumbnail/1200x675/catalog/crunchyroll/cbeec7fe79efe09c46841bf66cbe8b97.jpe'),(2,'Plunderer','Todo mundo tem um \"Contador\", que é baseado no estilo de vida de cada um, mas ninguém quer zerá-lo e ser enviado ao Abismo!','https://www.crunchyroll.com/imgsrv/display/thumbnail/1200x675/catalog/crunchyroll/dbb7e4ac3442551634a2e80fa54106cc.jpe'),(3,'Yu Yu Hakusho','Desde faltar às aulas até brigas nas ruas, Yusuke Urameshi não é um modelo típico. Na verdade, esse garoto nada mais é do que um delinquente de quatorze anos com talento para encrencas. Mas em um único ato altruísta, Yusuke morre enquanto salvava outro. Por tão nobre sacrifício, ele recebe uma segunda chance na vida, mas será uma vida muito diferente daquela que ficou para trás. Agora um Detetive Espiritual, o jovem deve rastrear demônios e humanos que desejam governar os três reinos da realidade.','https://www.crunchyroll.com/imgsrv/display/thumbnail/480x720/catalog/crunchyroll/e60626c56bf7437857e0caf7cbc4bf4a.jpe'),(4,'A Certain Magical Index','Kamijo é um estudante bastante dedicado da Academy City, onde usa-se ciência para desenvolver habilidades sobrenaturais. E isso é uma boa notícia para Index, uma jovem freira fugindo de uma sociedade de feiticeiros que deseja obter os incríveis 103 mil volumes de conhecimento mágico armazenados em sua memória. Quando os caminhos de Index e Kamijo se cruzam, ela ganha um amigo fiel e protetor, e embora Kamijo seja facilmente o garoto mais fraco da Academy City, ele também tem um outro poder: o Imagine Breaker, um poder inexplicável em sua mão direita que lhe permite negar os poderes dos outros.','https://www.crunchyroll.com/imgsrv/display/thumbnail/1200x675/catalog/crunchyroll/3913e51813bd7df9d3b5102ce58548f9.jpe'),(5,'Zatch Bell!','Zatch Bell!, também conhecido no Japão como Konjiki no Gash!!, é uma série de mangá shōnen escrita e ilustrada por Makoto Raiku. Foi publicado na revista Weekly Shōnen','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTETWVx4Nyf7qmTDAwyALCnK1Yx618chHpkw&usqp=CAU'),(6,'HAJIME NO IPPO ','Depois de ser frequentemente intimidado quando era criança, o encontro de Ippo com o boxe o inspirou a pensar sobre o que realmente é a verdadeira força. Ippo foi submetido ao treino gentil mas rigoroso do treinador Kamogawa e venceu oponentes poderosos um após o outro.','https://www.crunchyroll.com/imgsrv/display/thumbnail/1200x675/catalog/crunchyroll/a017839a28f59992fa7be6ce5b02de4f.jpe');
/*!40000 ALTER TABLE `anime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canal`
--

DROP TABLE IF EXISTS `canal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `numero_de_views` int(11) DEFAULT NULL,
  `link_do_video` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canal`
--

LOCK TABLES `canal` WRITE;
/*!40000 ALTER TABLE `canal` DISABLE KEYS */;
INSERT INTO `canal` VALUES (1,'Discovery Kids','https://seeklogo.com/images/D/discovery-kids-brasil-logo-A22D5B835B-seeklogo.com.png',0,'https://sinalpublico.com/player3/ch.php?canal=discoverykids'),(2,'Sex Prive','https://storage.googleapis.com/sorocabana/2023/3/d52a226097e97803b208bf9daa7a3667.png',0,'https://sinalpublico.com/player3/ch.php?canal=sexprive'),(3,'TNT','https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/TNT_TV_logo.svg/1024px-TNT_TV_logo.svg.png',0,'https://sinalpublico.com/player3/ch.php?canal=tnt'),(4,'DISNEY','https://i.pinimg.com/originals/d3/30/e1/d330e1a0bbf7855c7fcf083292472080.png',0,'https://sinalpublico.com/player3/ch.php?canal=disney'),(5,'MEGAPIX','https://upload.wikimedia.org/wikipedia/commons/a/a7/Megapix_logo_2011.png',0,'https://sinalpublico.com/player3/ch.php?canal=megapix'),(6,'TELECINE PREMIUM','https://upload.wikimedia.org/wikipedia/commons/0/09/Telecine_Premium.png',0,'https://sinalpublico.com/player3/ch.php?canal=telecinepremium');
/*!40000 ALTER TABLE `canal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `episodio_series`
--

DROP TABLE IF EXISTS `episodio_series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `episodio_series` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `link_do_video` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `episodio_series`
--

LOCK TABLES `episodio_series` WRITE;
/*!40000 ALTER TABLE `episodio_series` DISABLE KEYS */;
INSERT INTO `episodio_series` VALUES (2,'isac','tsest');
/*!40000 ALTER TABLE `episodio_series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `episodios`
--

DROP TABLE IF EXISTS `episodios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `episodios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anime_id` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `link_video` text,
  PRIMARY KEY (`id`),
  KEY `anime_id` (`anime_id`),
  CONSTRAINT `episodios_ibfk_1` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `episodios`
--

LOCK TABLES `episodios` WRITE;
/*!40000 ALTER TABLE `episodios` DISABLE KEYS */;
INSERT INTO `episodios` VALUES (1,1,'episodio 1 Nobless','https://www.youtube.com/embed/vXbDBW7MYR8?list=PLK5Tj86SgETvDXNYAkzujZy_encOPz6y9'),(2,1,'episodio 2 Nobless','https://www.youtube.com/embed/klejQAJp2-0?list=PLK5Tj86SgETvDXNYAkzujZy_encOPz6y9'),(3,1,'episodio 3 Nobless','https://www.youtube.com/embed/korR08Hng10?list=PLK5Tj86SgETvDXNYAkzujZy_encOPz6y9'),(4,1,'episodio 4 Nobless','https://www.youtube.com/embed/YO7Wm2H4wyc?list=PLK5Tj86SgETvDXNYAkzujZy_encOPz6y9'),(5,1,'episodio 5 Nobless','https://www.youtube.com/embed/fEo_GP1gEwE?list=PLK5Tj86SgETvDXNYAkzujZy_encOPz6y9'),(6,1,'episodio 6 Nobless','https://www.youtube.com/embed/Sl_f9AM8Q40?list=PLK5Tj86SgETvDXNYAkzujZy_encOPz6y9'),(7,1,'episodio 7 Nobless','https://www.youtube.com/embed/Rk6KgyIi5Pw?list=PLK5Tj86SgETvDXNYAkzujZy_encOPz6y9'),(8,1,'episodio 8 Nobless','https://www.youtube.com/embed/y5alx6GRZcA?list=PLK5Tj86SgETvDXNYAkzujZy_encOPz6y9'),(9,1,'episodio 9 Nobless','https://www.youtube.com/embed/ey3esFhoPnU?list=PLK5Tj86SgETvDXNYAkzujZy_encOPz6y9'),(10,1,'episodio 10 Nobless','https://www.youtube.com/embed/rfW4pY3TGi0?list=PLK5Tj86SgETvDXNYAkzujZy_encOPz6y9'),(11,1,'episodio 11 Nobless','https://www.youtube.com/embed/fTI07QrYbPY?list=PLK5Tj86SgETvDXNYAkzujZy_encOPz6y9'),(12,1,'episodio 12 Nobless','https://www.youtube.com/embed/NTClgIs6gq0?list=PLK5Tj86SgETvDXNYAkzujZy_encOPz6y9'),(13,1,'episodio 13  Nobless','https://www.youtube.com/embed/EgROKYfbuHk?list=PLK5Tj86SgETvDXNYAkzujZy_encOPz6y9'),(37,3,'episodio 1 Yu Yu Hakusho','https://www.youtube.com/embed/jQT2s9kaLBw'),(38,3,'episodio 2 Yu Yu Hakusho','https://www.youtube.com/embed/berqPZTfkRI'),(39,3,'episodio 3 Yu Yu Hakusho','https://www.youtube.com/embed/hbcsMT8QtsE?list=PLVqZV0i0B_L5PWnmfI8dwAYAi0SPwvqjX'),(40,3,'episodio 4 Yu Yu Hakusho','https://www.youtube.com/embed/bClqoPNvfnQ?list=PLVqZV0i0B_L5PWnmfI8dwAYAi0SPwvqjX'),(41,3,'episodio 5 Yu Yu Hakusho','https://www.youtube.com/embed/wUfG_vCnhkk?list=PLVqZV0i0B_L5PWnmfI8dwAYAi0SPwvqjX'),(42,3,'episodio 6 Yu Yu Hakusho','https://www.youtube.com/embed/o9KSBDGr5Ow?list=PLVqZV0i0B_L5PWnmfI8dwAYAi0SPwvqjX'),(43,3,'episodio 7 Yu Yu Hakusho','https://www.youtube.com/embed/y00yXxbErgA?list=PLVqZV0i0B_L5PWnmfI8dwAYAi0SPwvqjX'),(44,3,'episodio 8 Yu Yu Hakusho','https://www.youtube.com/embed/ISxkE2P6nYg?list=PLVqZV0i0B_L5PWnmfI8dwAYAi0SPwvqjX'),(45,3,'episodio 9 Yu Yu Hakusho','https://www.youtube.com/embed/ll84wH-Axhs?list=PLVqZV0i0B_L5PWnmfI8dwAYAi0SPwvqjX'),(46,3,'episodio 10 Yu Yu Hakusho','https://www.youtube.com/embed/nag2N9gc29w?list=PLVqZV0i0B_L5PWnmfI8dwAYAi0SPwvqjX'),(47,3,'episodio 11 Yu Yu Hakusho','https://www.youtube.com/embed/iv8rUlYtSGg?list=PLVqZV0i0B_L5PWnmfI8dwAYAi0SPwvqjX'),(48,3,'episodio 12 Yu Yu Hakusho','https://www.youtube.com/embed/aRf1Vwdn0lY?list=PLVqZV0i0B_L5PWnmfI8dwAYAi0SPwvqjX'),(49,3,'episodio 13 Yu Yu Hakusho','https://www.youtube.com/embed/dige9wp612c?list=PLVqZV0i0B_L5PWnmfI8dwAYAi0SPwvqjX'),(50,3,'episodio 14 Yu Yu Hakusho','https://www.youtube.com/embed/twFSFWAouEg?list=PLVqZV0i0B_L5PWnmfI8dwAYAi0SPwvqjX'),(51,3,'episodio 15 Yu Yu Hakusho','https://www.youtube.com/embed/ShwZt4DInPM?list=PLVqZV0i0B_L5PWnmfI8dwAYAi0SPwvqjX'),(52,3,'episodio 16 Yu Yu Hakusho','https://www.youtube.com/embed/_cTDWnnPpAc?list=PLVqZV0i0B_L5PWnmfI8dwAYAi0SPwvqjX'),(53,3,'episodio 17 Yu Yu Hakusho','https://www.youtube.com/embed/w9K8cZypOa4?list=PLVqZV0i0B_L5PWnmfI8dwAYAi0SPwvqjX'),(54,3,'episodio 18 Yu Yu Hakusho','https://www.youtube.com/embed/ucO8XTrkm6Y?list=PLVqZV0i0B_L5PWnmfI8dwAYAi0SPwvqjX'),(55,3,'episodio 19 Yu Yu Hakusho','https://www.youtube.com/embed/Zyblc1kOhmI?list=PLVqZV0i0B_L5PWnmfI8dwAYAi0SPwvqjX'),(56,3,'episodio 20 Yu Yu Hakusho','https://www.youtube.com/embed/e8GW2MvdRm0?list=PLVqZV0i0B_L5PWnmfI8dwAYAi0SPwvqjX'),(57,3,'episodio 21 Yu Yu Hakusho','https://www.youtube.com/embed/TZIw7jT0HKs?list=PLVqZV0i0B_L5PWnmfI8dwAYAi0SPwvqjX'),(58,3,'episodio 22 Yu Yu Hakusho','https://www.youtube.com/embed/lCr6CR6XILc?list=PLVqZV0i0B_L5PWnmfI8dwAYAi0SPwvqjX'),(59,3,'episodio 23 Yu Yu Hakusho','https://www.youtube.com/embed/0BblPVtKy3o?list=PLVqZV0i0B_L5PWnmfI8dwAYAi0SPwvqjX'),(60,3,'episodio 24 Yu Yu Hakusho','https://www.youtube.com/embed/hpTkGCgLVFA?list=PLVqZV0i0B_L5PWnmfI8dwAYAi0SPwvqjX'),(61,3,'episodio 25 Yu Yu Hakusho','https://www.youtube.com/embed/OynSqE-0gVU?list=PLVqZV0i0B_L5PWnmfI8dwAYAi0SPwvqjX'),(62,2,'episodio 1 Plunderer','https://www.youtube.com/embed/5Iclk3RxLJg?list=PLluTFB8kRAxCD0AdlxRv6QPgrCEUIMksN'),(63,2,'episodio 2 Plunderer','https://www.youtube.com/embed/Hqf6qxtwKrM?list=PLluTFB8kRAxCD0AdlxRv6QPgrCEUIMksN'),(64,2,'episodio 3 Plunderer','https://www.youtube.com/embed/fb_yh8is-80?list=PLK5Tj86SgETvMiwHbSMzvN2pg-mlDkvXJ'),(65,2,'episodio 4 Plunderer','https://www.youtube.com/embed/IrjttoXCwog?list=PLK5Tj86SgETvMiwHbSMzvN2pg-mlDkvXJ'),(66,2,'episodio 5 Plunderer','https://www.youtube.com/embed/d21J1WcTceY?list=PLK5Tj86SgETvMiwHbSMzvN2pg-mlDkvXJ'),(67,2,'episodio 6 Plunderer','https://www.youtube.com/embed/oa8EVqVyqkI?list=PLK5Tj86SgETvMiwHbSMzvN2pg-mlDkvXJ'),(68,2,'episodio 7 Plunderer','https://www.youtube.com/embed/7ZdU1NhmgC8'),(69,2,'episodio 8 Plunderer','https://www.youtube.com/embed/CRFkmsinDDA?list=PLluTFB8kRAxCD0AdlxRv6QPgrCEUIMksN'),(70,2,'episodio 9 Plunderer','https://www.youtube.com/embed/JJ1QyXNkxTU?list=PLluTFB8kRAxCD0AdlxRv6QPgrCEUIMksN'),(71,2,'episodio 10 Plunderer','https://www.youtube.com/embed/YspTaYNOILc?list=PLluTFB8kRAxCD0AdlxRv6QPgrCEUIMksN'),(72,2,'episodio 11 Plunderer','https://www.youtube.com/embed/ZIHjRxdimAk?list=PLluTFB8kRAxCD0AdlxRv6QPgrCEUIMksN'),(73,2,'episodio 12 Plunderer','https://www.youtube.com/embed/dPTxmVMMFdQ?list=PLluTFB8kRAxCD0AdlxRv6QPgrCEUIMksN'),(74,2,'episodio 13 Plunderer','https://www.youtube.com/embed/68H2dvlrEVI?list=PLluTFB8kRAxCD0AdlxRv6QPgrCEUIMksN'),(75,2,'episodio 14 Plunderer','https://www.youtube.com/embed/R9Ko2lCsSw0?list=PLluTFB8kRAxCD0AdlxRv6QPgrCEUIMksN'),(76,2,'episodio 15 Plunderer','https://www.youtube.com/embed/ulQzZzh08oc?list=PLluTFB8kRAxCD0AdlxRv6QPgrCEUIMksN'),(77,2,'episodio 16 Plunderer','https://www.youtube.com/embed/cgV6KCFIU7k?list=PLluTFB8kRAxCD0AdlxRv6QPgrCEUIMksN'),(78,2,'episodio 17 Plunderer','https://www.youtube.com/embed/vdDCOkpgF4g?list=PLluTFB8kRAxCD0AdlxRv6QPgrCEUIMksN'),(79,2,'episodio 18 Plunderer','https://www.youtube.com/embed/2C2zRO3PDGE?list=PLluTFB8kRAxCD0AdlxRv6QPgrCEUIMksN'),(80,2,'episodio 19 Plunderer','https://www.youtube.com/embed/8lc8d_eI-jQ?list=PLluTFB8kRAxCD0AdlxRv6QPgrCEUIMksN'),(81,2,'episodio 20 Plunderer','https://www.youtube.com/embed/tg5PywwEX90?list=PLluTFB8kRAxCD0AdlxRv6QPgrCEUIMksN'),(82,2,'episodio 21 Plunderer','https://www.youtube.com/embed/Q7IVqVgSMBY?list=PLluTFB8kRAxCD0AdlxRv6QPgrCEUIMksN'),(83,2,'episodio 22 Plunderer','https://www.youtube.com/embed/GOjD4xjNfjc?list=PLluTFB8kRAxCD0AdlxRv6QPgrCEUIMksN'),(84,2,'episodio 23 Plunderer','https://www.youtube.com/embed/f6PhV4ZD57E?list=PLluTFB8kRAxCD0AdlxRv6QPgrCEUIMksN'),(85,2,'episodio 24 Plunderer','https://www.youtube.com/embed/Xp2A4suu0Eg?list=PLluTFB8kRAxCD0AdlxRv6QPgrCEUIMksN'),(86,4,'episodio 1 A Certain Magical Index','https://www.youtube.com/embed/-YxlUsdZB4U?list=PLBQXzGC_NtH1sBtFrLDyZwOjrVTa440bt'),(87,4,'episodio 2 A Certain Magical Index','https://www.youtube.com/embed/G5q2RzMnT0s?list=PLBQXzGC_NtH1sBtFrLDyZwOjrVTa440bt'),(88,4,'episodio 3 A Certain Magical Index','https://www.youtube.com/embed/5ypyr6W4TMM?list=PLBQXzGC_NtH1sBtFrLDyZwOjrVTa440bt'),(89,4,'episodio 4 A Certain Magical Index','https://www.youtube.com/embed/ijiVDyTZ2Mc?list=PLBQXzGC_NtH1sBtFrLDyZwOjrVTa440bt'),(90,4,'episodio 5 A Certain Magical Index','https://www.youtube.com/embed/yxyJb8NZOQI?list=PLBQXzGC_NtH1sBtFrLDyZwOjrVTa440bt'),(91,4,'episodio 6 A Certain Magical Index','https://www.youtube.com/embed/AFsPH7S5Zzs?list=PLBQXzGC_NtH1sBtFrLDyZwOjrVTa440bt'),(92,4,'episodio 7 A Certain Magical Index','https://www.youtube.com/embed/1UeI44hhmeo?list=PLBQXzGC_NtH1sBtFrLDyZwOjrVTa440bt'),(93,4,'episodio 8 A Certain Magical Index','https://www.youtube.com/embed/wO9hqcpI6GY?list=PLBQXzGC_NtH1sBtFrLDyZwOjrVTa440bt'),(94,4,'episodio 9 A Certain Magical Index','https://www.youtube.com/embed/XYyHKnlJvKU?list=PLBQXzGC_NtH1sBtFrLDyZwOjrVTa440bt'),(95,4,'episodio 10 A Certain Magical Index','https://www.youtube.com/embed/xnzlA6Cp8kU?list=PLBQXzGC_NtH1sBtFrLDyZwOjrVTa440bt'),(96,4,'episodio 11 A Certain Magical Index','https://www.youtube.com/embed/PTCHX7AXReM?list=PLBQXzGC_NtH1sBtFrLDyZwOjrVTa440bt'),(97,4,'episodio 12 A Certain Magical Index','https://www.youtube.com/embed/w2WbGXag8Ps?list=PLBQXzGC_NtH1sBtFrLDyZwOjrVTa440bt'),(98,4,'episodio 13 A Certain Magical Index','https://www.youtube.com/embed/p6T1DgR8BQI?list=PLBQXzGC_NtH1sBtFrLDyZwOjrVTa440bt'),(99,4,'episodio 14 A Certain Magical Index','https://www.youtube.com/embed/FquB0RFCtKs?list=PLBQXzGC_NtH1sBtFrLDyZwOjrVTa440bt'),(100,4,'episodio 15 A Certain Magical Index','https://www.youtube.com/embed/cQOalFS9Ej4?list=PLBQXzGC_NtH1sBtFrLDyZwOjrVTa440bt'),(101,4,'episodio 16 A Certain Magical Index','https://www.youtube.com/embed/zyegiH_2k3s?list=PLBQXzGC_NtH1sBtFrLDyZwOjrVTa440bt'),(102,4,'episodio 17 A Certain Magical Index','https://www.youtube.com/embed/zwnYxdLz1yk?list=PLBQXzGC_NtH1sBtFrLDyZwOjrVTa440bt'),(103,4,'episodio 18 A Certain Magical Index','https://www.youtube.com/embed/NFcjlUyLYTE?list=PLBQXzGC_NtH1sBtFrLDyZwOjrVTa440bt');
/*!40000 ALTER TABLE `episodios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filmes`
--

DROP TABLE IF EXISTS `filmes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filmes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `numero_de_views` int(11) DEFAULT NULL,
  `link_do_video` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmes`
--

LOCK TABLES `filmes` WRITE;
/*!40000 ALTER TABLE `filmes` DISABLE KEYS */;
INSERT INTO `filmes` VALUES (1,' Pantera Negra: Wakanda Forever','https://www.claro.com.br/files/104379/1080x1440/29c8623b41/pantera-negra-2-wakanda-forever-capa.png/m/filters:quality(75)',0,'https://sinalpublico.com/player3/serverf5hlb.php?vid=PNTRNGRWKNDPRSMPR'),(2,'Besouro Azul','https://boomerangmusic.com.br/wp-content/uploads/2022/12/mini-BESOURO.jpg',0,'https://sinalpublico.com/player3/serverf4hlb.php?vid=BSROAZL'),(3,'A Guerra do Amanhã ','https://media.fstatic.com/GAF2nKKJ0jJn43gIjdOjRoEXG1U=/210x312/smart/filters:format(webp)/media/movies/covers/2021/05/tomorrow_war.jpg',0,'https://sinalpublico.com/player3/serverf5hlb.php?vid=AGRADAMANHA'),(4,'Gato de Botas 2 : o Último Pedido','https://blog-leiturinha-novo.s3.us-east-1.amazonaws.com/production/uploads/2023/01/imagem-gato-de-botas-3.png',0,'https://sinalpublico.com/player3/serverf4hlb.php?vid=GTDBTS2OULTMPDO'),(5,'Space Jam: Um Novo Legado','//upload.wikimedia.org/wikipedia/pt/thumb/a/a4/Space_Jam_A_New_Legacy.jpg/250px-Space_Jam_A_New_Legacy.jpg',0,'https://sinalpublico.com/player3/serverf5hlb.php?vid=SPCEJMUMNVOLGADO'),(6,'O Esquadrão Suicida','https://cinepop.com.br/wp-content/uploads/2020/08/esquadraosuicida2016_1.jpg',0,'https://sinalpublico.com/player3/serverf5hlb.php?vid=OESQDROSCDA');
/*!40000 ALTER TABLE `filmes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `series` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `numero_de_views` int(11) DEFAULT NULL,
  `id_do_episodio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_do_episodio` (`id_do_episodio`),
  CONSTRAINT `series_ibfk_1` FOREIGN KEY (`id_do_episodio`) REFERENCES `episodio_series` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
INSERT INTO `series` VALUES (1,'Rick and Morty','https://as1.ftcdn.net/v2/jpg/05/68/25/10/1000_F_568251074_ugUHqc0YExD4VqaEGvHG5xFZFJPC7i2P.jpg',0,2),(2,'Vilanesco','https://i.ytimg.com/vi/3Hw75uMLAAU/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLDmeYbyxCghmlrOg7QN8JuHP8g43w',0,2),(3,'Gen V','https://s2-oglobo.glbimg.com/wT7Ce0_cA8aZ8eM799LDKTp1Rp4=/0x0:956x1195/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_da025474c0c44edd99332dddb09cabe8/internal_photos/bs/2023/b/B/OhkT4USxyCbmPKLEvoFA/the-boys.jpg',0,2),(4,'Loki','https://m.media-amazon.com/images/I/81QlgQbZnDL._AC_UF1000,1000_QL80_.jpg',0,2),(5,'Upload','https://m.media-amazon.com/images/M/MV5BM2JmYzBlNWMtYTEwZC00MjVmLTlmYjEtN2UyMGJiYjcxYTVjXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_FMjpg_UX1000_.jpg',0,2),(6,'Invencível ','https://observatoriodocinema.uol.com.br/wp-content/plugins/seox-image-magick/imagick_convert.php?width=320&height=480&format=webp&quality=91&imagick=/wp-content/uploads/2023/11/invencivel-poster-683x1024.jpeg',0,2);
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (23,'isac do carmo santos','isacjobz@gmail.com','174.137.857-57','$2a$10$IdF5Zi5D81cE8U1O/6cSWusoy5RheXNX2AvZqtJuA9too2H9bdAJ2');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-15 16:44:51
