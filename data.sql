-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: myblog_db
-- ------------------------------------------------------
-- Server version	8.0.24

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
  `id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add blog type',7,'add_blogtype'),(26,'Can change blog type',7,'change_blogtype'),(27,'Can delete blog type',7,'delete_blogtype'),(28,'Can view blog type',7,'view_blogtype'),(29,'Can add blog',8,'add_blog'),(30,'Can change blog',8,'change_blog'),(31,'Can delete blog',8,'delete_blog'),(32,'Can view blog',8,'view_blog'),(33,'Can add read num',9,'add_readnum'),(34,'Can change read num',9,'change_readnum'),(35,'Can delete read num',9,'delete_readnum'),(36,'Can view read num',9,'view_readnum'),(37,'Can add read num',10,'add_readnum'),(38,'Can change read num',10,'change_readnum'),(39,'Can delete read num',10,'delete_readnum'),(40,'Can view read num',10,'view_readnum'),(41,'Can add read detail',11,'add_readdetail'),(42,'Can change read detail',11,'change_readdetail'),(43,'Can delete read detail',11,'delete_readdetail'),(44,'Can view read detail',11,'view_readdetail'),(45,'Can add comment',12,'add_comment'),(46,'Can change comment',12,'change_comment'),(47,'Can delete comment',12,'delete_comment'),(48,'Can view comment',12,'view_comment'),(49,'Can add like count',13,'add_likecount'),(50,'Can change like count',13,'change_likecount'),(51,'Can delete like count',13,'delete_likecount'),(52,'Can view like count',13,'view_likecount'),(53,'Can add like record',14,'add_likerecord'),(54,'Can change like record',14,'change_likerecord'),(55,'Can delete like record',14,'delete_likerecord'),(56,'Can view like record',14,'view_likerecord'),(57,'Can add profile',15,'add_profile'),(58,'Can change profile',15,'change_profile'),(59,'Can delete profile',15,'delete_profile'),(60,'Can view profile',15,'view_profile');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$xYkpYjpPLsEm$AfFj1Wrpe5SZqaSKhu0vddPD2r0aWpThH9UbEiY5evc=','2021-05-07 13:20:34.103000',1,'hch','','','1017383859@qq.com',1,1,'2021-04-17 12:18:00.000000'),(2,'pbkdf2_sha256$216000$VkgrpllIHV1A$g0TvAK3mzY1XHgADDsf06pu+9wmk0h/wM5LqFpDUPxE=','2021-05-07 12:51:53.247000',0,'yrzk','','','',0,1,'2021-05-05 17:11:00.000000'),(3,'pbkdf2_sha256$216000$oVauWlP2YKYA$VQbMayzfSQJwuIfwM/LXOaEdkn3Uh7T9BAbpUpdR4TQ=','2021-05-10 11:31:23.073852',0,'joker','','','debug0219@gmail.com',0,1,'2021-05-10 11:31:22.743666');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blog`
--

DROP TABLE IF EXISTS `blog_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_blog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_updated_time` datetime(6) NOT NULL,
  `author_id` int NOT NULL,
  `blog_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blog_author_id_8791af69_fk_auth_user_id` (`author_id`),
  KEY `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` (`blog_type_id`),
  CONSTRAINT `blog_blog_author_id_8791af69_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` FOREIGN KEY (`blog_type_id`) REFERENCES `blog_blogtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blog`
--

LOCK TABLES `blog_blog` WRITE;
/*!40000 ALTER TABLE `blog_blog` DISABLE KEYS */;
INSERT INTO `blog_blog` VALUES (3,'共产党宣言','一个幽灵，共产主义的幽灵，在欧洲游荡。为了对这个幽灵进行神圣的围剿，旧欧洲的一切势力，教皇和沙皇、梅特涅和基佐、法国的激进派和德国的警察，都联合起来了。\r\n有哪一个反对党不被它的当政的敌人骂为共产党呢？又有哪一个反对党不拿共产主义这个罪名去回敬更进步的反对党人和自己的反动敌人呢？\r\n从这一事实中可以得出两个结论：\r\n共产主义已经被欧洲的一切势力公认为一种势力；\r\n现在是共产党人向全世界公开说明自己的观点、自己的目的、自己的意图并且拿党自己的宣言来反驳关于共产主义幽灵的神话的时候了。\r\n为了这个目的，各国共产党人集会于伦敦，拟定了如下的宣言，用英文、法文、德文、意大利文、弗拉芒文和丹麦文公布于世。\r\n资产者和无产者\r\n至今一切社会的历史都是阶级斗争的历史。\r\n自由民和奴隶、贵族和平民、领主和农奴、行会师傅和帮工，一句话，压迫者和被压迫者，始终处于相互对立的地位，进行不断的、有时隐蔽有时公开的斗争，而每一次斗争的结局是整个社会受到革命改造或者斗争的各阶级同归于尽。\r\n在过去的各个历史时代，我们几乎到处都可以看到社会完全划分为各个不同的等级，看到社会地位分成的多种多样的层次。在古罗马，有贵族、骑士、平民、奴隶，在中世纪，有封建主、臣仆、行会师傅、帮工、农奴，而且几乎在每一个阶级内部又有一些特殊的阶层。\r\n从封建社会的灭亡中产生出来的现代资产阶级社会并没有消灭阶级对立。它只是用新的阶级、新的压迫条件、新的斗争形式代替了旧的。\r\n但是，我们的时代，资产阶级时代，却有一个特点：它使阶级对立简单化了。整个社会日益分裂为两大敌对的阵营，分裂为两大相互直接对立的阶级：资产阶级和无产阶级。\r\n从中世纪的农奴中产生了初期城市的城关市民；从这个市民等级中发展出最初的资产阶级分子。\r\n美洲的发现、绕过非洲的航行，给新兴的资产阶级开辟了新天地。东印度和中国的市场、美洲的殖民化、对殖民地的贸易、交换手段和一般的商品的增加，使商业、航海业和工业空前高涨，因而使正在崩溃的封建社会内部的革命因素迅速发展。\r\n以前那种封建的或行会的工业经营方式已经不能满足随着新市场的出现而增加的需求了。工场手工业代替了这种经营方式。行会师傅被工业的中间等级排挤掉了；各种行业组织之间的分工随着各个作坊内部的分工的出现而消失了。\r\n但是，市场总是在扩大，需求总是在增加。甚至工场手工业也不再能满足需要了。于是，蒸汽和机器引起了工业生产的革命。现代大工业代替了工场手工业；工业中的百万富翁，一支一支产业大军的首领，现代资产者，代替了工业的中间等级。\r\n大工业建立了由美洲的发现所准备好的世界市场。世界市场使商业、航海业和陆路交通得到了巨大的发展。这种发展又反过来促进了工业的扩展，同时，随着工业、商业、航海业和铁路的扩展，资产阶级也在同一程度上得到发展，增加自己的资本，把中世纪遗留下来的一切阶级都排挤到后面去。\r\n由此可见，现代资产阶级本身是一个长期发展过程的产物，是生产方式和交换方式的一系列变革的产物。\r\n资产阶级的这种发展的每一个阶段，都伴随着相应的政治上进展。它在封建主统治下是被压迫的等级，在公社里是武装的和自治的团体，在一些地方组成独立的城市共和国，在另一些地方组成君主国中的纳税的第三等级；后来，在工场手工业时期，它是等级制君主国或专制君主国中同贵族抗衡的势力，而且是大君主国的主要基础；最后，从大工业和世界市场建立的时候起，它在现代的代议制国家里夺得了独占的政治统治。现代的国家政权不过是管理整个资产阶级的共同事务的委员会罢了。\r\n资产阶级在历史上曾经起过非常革命的作用。\r\n资产阶级在它已经取得了统治的地方把一切封建的、宗法的和田园诗般的关系都破坏了。它无情地斩断了把人们束缚于天然尊长的形形色色的封建羁绊，它使人和人之间除了赤裸裸的利害关系，除了冷酷无情的“现金交易”，就再也没有任何别的联系了。它把宗教虔诚、骑士热忱、小市民伤感这些情感的神圣发作，淹没在利己主义打算的冰水之中。它把人的尊严变成了交换价值，用一种没有良心的贸易自由代替了无数特许的和自力挣得的自由。总而言之，它用公开的、无耻的、直接的、露骨的剥削代替了由宗教幻想和政治幻想掩盖着的剥削。\r\n资产阶级抹去了一切向来受人尊崇和令人敬畏的职业的神圣光环。它把医生、律师、教士、诗人和学者变成了它出钱招雇的雇佣劳动者。\r\n资产阶级撕下了罩在家庭关系上的温情脉脉的面纱，把这种关系变成了纯粹的金钱关系。\r\n资产阶级揭示了，在中世纪深受反动派称许的那种人力的野蛮使用，是以极端怠惰作为相应补充的。它第一个证明了，人的活动能够取得什么样的成就。它创造了完全不同于埃及金字塔、罗马水道和哥特式教堂的奇迹；它完成了完全不同于民族大迁徙和十字军东征的远征。\r\n资产阶级除非对生产工具，从而对生产关系，从而对全部社会关系不断地进行革命，否则就不能生存下去。反之，原封不动地保持旧的生产方式，却是过去的一切工业阶级生存的首要条件。生产的不断变革，一切社会状况不停的动荡，永远的不安定和变动，这就是资产阶级时代不同于过去一切时代的地方。一切固定的僵化的关系以及与之相适应的素被尊崇的观念和见解都被消除了，一切新形成的关系等不到固定下来就陈旧了。一切等级的和固定的东西都烟消云散了，一切神圣的东西都被亵渎了。人们终于不得不用冷静的眼光来看他们的生活地位、他们的相互关系。\r\n不断扩大产品销路的需要，驱使资产阶级奔走于全球各地。它必须到处落户，到处创业，到处建立联系。\r\n资产阶级，由于开拓了世界市场，使一切国家的生产和消费都成为世界性的了。使反动派大为惋惜的是，资产阶级挖掉了工业脚下的民族基础。古老的民族工业被消灭了，并且每天都还在被消灭。它们被新的工业排挤掉了，新的工业的建立已经成为一切文明民族的生命攸关的问题；这些工业所加工的，已经不是本地的原料，而是来自极其遥远的地区的原料；它们的产品不仅供本国消费，而且同时供世界各地消费。旧的、靠本国产品来满足的需要，被新的、要靠极其遥远的国家和地带的产品来满足的需要所代替了。\r\n过去那种地方的和民族的自给自足和闭关自守状态，被各民族的各方面的互相往来和各方面的互相依赖所代替了。物质的生产是如此，精神的生产也是如此。各民族的精神产品成了公共的财产。民族的片面性和局限性日益成为不可能，于是由许多种民族的和地方的文学形成了一种世界的文学。\r\n资产阶级，由于一切生产工具的迅速改进，由于交通的极其便利，把一切民族甚至最野蛮的民族都卷到文明中来了。它的商品的低廉价格，是它用来摧毁一切万里长城、征服野蛮人最顽强的仇外心理的重炮。它迫使一切民族----如果它们不想灭亡的话----采用资产阶级的生产方式；它迫使它们在自己那里推行所谓文明，即变成资产者。一句话，它按照自己的面貌为自己创造出一个世界。\r\n资产阶级使农村屈服于城市的统治。它创立了巨大的城市，使城市人口比农村人口大大增加起来，因而使很大一部分居民脱离了农村生活的愚昧状态。正像它使农村从属于城市一样，它使未开化和半开化的国家从属于文明的国家，使农民的民族从属于资产阶级的民族，使东方从属于西方。\r\n资产阶级日甚一日地消灭生产资料、财产和人口的分散状态。它使人口密集起来，使生产资料集中起来，使财产聚集在少数人的手里。由此必然产生的结果就是政治的集中。各自独立的、几乎只有同盟关系的、各有不同利益、不同法律、不同政府、不同关税的各个地区，现在已经结合为一个拥有统一的政府、统一的法律、统一的民族阶级利益和统一的关税的统一的民族。\r\n资产阶级在它的不到一百年的阶级统治中所创造的生产力，比过去一切时代创造的全部生产力还要多，还要大。自然力的征服，机器的采用，化学在工业和农业中的应用，轮船的行驶，铁路的通行，电报的使用，整个大陆的开垦，河川的通航，仿佛用法术从地下呼唤出来的大量人口，----过去哪一个世纪料想到在社会劳动里蕴藏有这样的生产力呢？\r\n由此可见，资产阶级赖以形成的生产资料和交换手段，是在封建社会里造成的。在这些生产资料和交换手段发展的一定阶段上，封建社会的生产和交换在其中进行的关系，封建的农业和工场手工业组织，一句话，封建的所有制关系，就不再适应已经发展的生产力了。这种关系已经在阻碍生产而不是促进生产了。它变成了束缚生产的桎梏。它必须被炸毁，而且已经被炸毁了。\r\n取而代之的是自由竞争以及与自由竞争相适应的社会制度和政治制度、资产阶级的经济统治和政治统治。\r\n现在，我们眼前又进行着类似的运动。资产阶级的生产关系和交换关系，资产阶级的所有制关系，这个曾经仿佛用法术创造了如此庞大的生产资料和交换手段的现代资产阶级社会，现在像一个魔法师一样不能再支配自己用法术呼唤出来的魔鬼了。\r\n几十年来的工业和商业的历史，只不过是现代生产力反抗现代生产关系、反抗作为资产阶级及其统治的存在条件的所有制关系的历史。只要指出在周期性的重复中越来越危及整个资产阶级社会生存的商业危机就够了。在商业危机期间，总是不仅有很大一部分制成的产品被毁灭掉，而且有很大一部分已经造成的生产力被毁灭掉。\r\n在危机期间，发生一种在过去一切时代看来都好像是荒唐现象的社会瘟疫，即生产过剩的瘟疫。社会突然发现自己回到了一时的野蛮状态；仿佛是一次饥荒、一场普遍的毁灭性战争，使社会失去了全部生活资料；仿佛是工业和商业全被毁灭了，----这是什么缘故呢？\r\n因为社会上文明过度，生活资料太多，工业和商业太发达。社会所拥有的生产力已经不能再促进资产阶级文明和资产阶级所有制关系的发展；相反，生产力已经强大到这种关系所不能适应的地步，它已经受到这种关系的阻碍；而它一着手克服这种障碍，就使整个资产阶级社会陷入混乱，就使资产阶级所有制的存在受到威胁。\r\n资产阶级的关系已经太狭窄了，再容纳不了它本身所造成的财富了。——资产阶级用什么办法来克服这种危机呢？一方面不得不消灭大量生产力，另一方面夺取新的市场，更加彻底地利用旧的市场。这究竟是怎样的一种办法呢？这不过是资产阶级准备更全面更猛烈的危机的办法，不过是使防止危机的手段越来越少的办法。\r\n资产阶级用来推翻封建制度的武器，现在却对准资产阶级自己了。但是，资产阶级不仅锻造了置自身于死地的武器；它还产生了将要运用这种武器的人----现代的工人，即无产者。\r\n随着资产阶级即资本的发展，无产阶级即现代工人阶级也在同一程度上得到发展；现代的工人只有当他们找到工作的时候才能生存，而且只有当他们的劳动增殖资本的时候才能找到工作。这些不得不把自己零星出卖的工人，像其它任何货物一样，也是一种商品，所以他们同样地受到竞争的一切变化、市场的一切波动的影响。\r\n由于机器的推广和分工，无产者的劳动已经失去了任何独立的性质，因而对工人也失去了任何吸引力。工人变成了机器的单纯的附属品，要求他做的只是极其简单、极其单调和极容易学会的操作。因此，花在工人身上的费用，几乎只限于维持工人生活和延续工人后代所必需的生活资料。但是，商品的价格，从而劳动的价格，是同它的生产费用相等的。因此，劳动越使人感到厌恶，工资也就越减少。不仅如此，机器越推广，分工越细致，劳动量也就越增加，这或者是由于工作时间的延长，或者是由于在一定时间内所要求的劳动的增加，机器运转的加速，等等。\r\n现代工业已经把家长式的师傅的小作坊变成了工业资本家的大工厂。挤在工厂里的工人群众就象士兵一样被组织起来。他们是产业军的普通士兵，受着各级军士和军官的层层监视。他们不仅是资产阶级的、资产阶级国家的奴隶，并且每日每时都受机器、受监工、首先是受各个经营工厂的资产者本人的奴役。这种专制制度越是公开地把营利宣布为自己的最终目的，它就越是可鄙、可恨和可恶。\r\n手的操作所要求的技巧和气力越少，换句话说，现代工业越发达，男工也就越受到女工和童工的排挤。对工人阶级来说，性别和年龄的差别再没有什么社会意义了。他们都只是劳动工具，不过因为年龄和性别的不同而需要不同的费用罢了。\r\n当厂主对工人的剥削告一段落，工人领到了用现钱支付的工资的时候，马上就有资产阶级中的另一部分人----房东、小店主、当铺老板等等向他们扑来。\r\n以前的中间等级的下层，即小工业家、小商人和小食利者，手工业者和农民----所有这些阶级都降落到无产阶级的队伍里来了，有的是因为他们的小资本不足以经营大工业，经不起较大资本家的竞争；有的是因为他们的手艺已经被新的生产方法弄得不值钱了。无产阶级的队伍就是这样从居民的所有阶级中得到补充的。\r\n无产阶级经历了各个不同的发展阶段。它反对资产阶级的斗争是和它的存在同时开始的。\r\n最初是单个的工人，然后是某一工厂的工人，然后是某一地方的某一劳动部门的工人，同直接剥削他们的单个资产者作斗争。他们不仅仅攻击资产阶级的生产关系，而且攻击生产工具本身；他们毁坏那些来竞争的外国商品，捣毁机器，烧毁工厂，力图恢复已经失去的中世纪工人的地位。\r\n在这个阶段上，工人们还是分散在全国各地并为竞争所分裂的群众。工人的大规模集结，还不是他们自己联合的结果，而是资产阶级联合的结果，当时资产阶级为了达到自己的政治目的必须而且暂时还能够把整个无产阶级发动起来。因此，在这个阶段上，无产者不是同自己的敌人作斗争，而是同自己的敌人的敌人作斗争，即同专制君主制的残余、地主、非工业资产阶级和小资产者作斗争。因此，整个历史运动都集中在资产阶级手里；在这种条件下取得的每一个胜利都是资产阶级的胜利。\r\n但是，随着工业的发展，无产阶级不仅人数增加了，而且它结合成更大的集体，它的力量日益增长，它越来越感觉到自己的力量。机器使劳动的差别越来越小，使工资几乎到处都降到同样低的水平，因而无产阶级内部的利益和生活状况也越来越趋于一致。资产者彼此间日益加剧的竞争以及由此引起的商业危机，使工人的工资越来越不稳定；机器的日益迅速的和继续不断的改良，使工人的整个生活地位越来越没有保障；单个工人和单个资产者之间的冲突越来越具有两个阶级的冲突的性质。工人开始成立反对资产者的同盟；他们联合起来保卫自己的工资。他们甚至建立了经常性的团体，以便为可能发生的反抗准备食品。有些地方，斗争爆发为起义。\r\n工人有时也得到胜利，但这种胜利只是暂时的。他们斗争的真正成果并不是直接取得的成功，而是工人的越来越扩大的联合。这种联合由于大工业所造成的日益发达的交通工具而得到发展，这种交通工具把各地的工人彼此联系起来。只要有了这种联系，就能把许多性质相同的地方性的斗争汇合成全国性的斗争，汇合成阶级斗争。而一切阶级斗争都是政治斗争。中世纪的市民靠乡间小道需要几百年才能达到的联合，现代的无产者利用铁路只要几年就可以达到了。\r\n无产者组织成为阶级，从而组织成为政党这件事，不断地由于工人的自相竞争而受到破坏。但是，这种组织总是重新产生，并且一次比一次更强大，更坚固，更有力。它利用资产阶级内部的分裂，迫使他们用法律形式承认工人的个别利益。英国的10小时工作日法案就是一个例子。\r\n旧社会内部的所有冲突在许多方面都促进了无产阶级的发展。资产阶级处于不断的斗争中：最初反对贵族：后来反对同工业进步有利害冲突的那部分资产阶级；经常反对一切外国的资产阶级。在这一切斗争中，资产阶级都不得不向无产阶级呼吁，要求无产阶级援助，这样就把无产阶级卷进了政治运动。于是，资产阶级自己就把自己的教育因素即反对自身的武器给予了无产阶级。\r\n其次，我们已经看到，工业的进步把统治阶级的整批成员抛到无产阶级队伍里去，或者至少也使他们的生活条件受到威胁。他们也给无产阶级带来了大量的教育因素。\r\n最后，在阶级斗争接近决战的时期，统治阶级内部的、整个旧社会内部的瓦解过程，就达到非常强烈、非常尖锐的程度，甚至使得统治阶级中的一小部分人脱离统治阶级而归附于革命的阶级，即掌握着未来的阶级。所以，正像过去贵族中有一部分人转到资产阶级方面一样，现在资产阶级中也有一部分人，特别是已经提高到从理论上认识整个历史运动这一水平的一部分资产阶级思想家，转到无产阶级方面来了。\r\n在当前同资产阶级对立的一切阶级中，只有无产阶级是真正革命的阶级。其余的阶级都随着大工业的发展而日趋没落和灭亡，无产阶级却是大工业本身的产物。\r\n中间等级，即小工业家、小商人、手工业者、农民，他们同资产阶级作斗争，都是为了维护他们这种中间等级的生存，以免于灭亡。所以，他们不是革命的，而是保守的。不仅如此，他们甚至是反动的，因为他们力图使历史的车轮倒转。如果说他们是革命的，那是鉴于他们行将转入无产阶级的队伍，这样，他们就不是维护他们目前的利益，而是维护他们将来的利益，他们就离开自己原来的立场，而站到无产阶级的立场上来。\r\n流氓无产阶级是旧社会最下层中消极的腐化的部分，他们在一些地方也被无产阶级革命卷到运动里来，但是，由于他们的整个生活状况，他们更甘心于被人收买，去干反动的勾当。\r\n在无产阶级的生活条件中，旧社会的生活条件已经被消灭了。无产者是没有财产的；他们和妻子儿女的关系同资产阶级的家庭关系再没有任何共同之处了；现代的工业劳动，现代的资本压迫，无论在英国或法国，无论在美国或德国，都是一样的，都使无产者失去了任何民族性。法律、道德、宗教，在他们看来全都是资产阶级偏见，隐藏在这些偏见后面的全都是资产阶级利益。\r\n过去一切阶级在争得统治之后，总是使整个社会服从于它们发财致富的条件，企图以此来巩固它们已经获得的生活地位。无产者只有废除自己的现存的占有方式，从而废除全部现存的占有方式，才能取得社会生产力。无产者没有什么自己的东西必须加以保护，他们必须摧毁至今保护和保障私有财产的一切。\r\n过去的一切运动都是少数人的或者为少数人谋利益的运动。无产阶级的运动是绝大多数人的、为绝大多数人谋利益的独立的运动。无产阶级，现今社会的最下层，如果不炸毁构成官方社会的整个上层，就不能抬起头来，挺起胸来。\r\n如果不就内容而就形式来说，无产阶级反对资产阶级的斗争首先是一国范围内的斗争。每一个国家的无产阶级当然首先应该打倒本国的资产阶级。\r\n在叙述无产阶级发展的最一般的阶段的时候，我们循序探讨了现存社会内部或多或少隐蔽着的国内战争，直到这个战争爆发为公开的革命，无产阶级用暴力推翻资产阶级而建立自己的统治。\r\n我们已经看到，至今的一切社会都是建立在压迫阶级和被压迫阶级的对立之上的。但是，为了有可能压迫一个阶级，就必须保证这个阶级至少有能够勉强维持它的奴隶般的生存的条件。农奴曾经在农奴制度下挣扎到公社社员的地位，小资产者曾经在封建专制制度的束缚下挣扎到资产者的地位。现代的工人却相反，他们并不是随着工业的进步而上升，而是越来越降到本阶级的生存条件以下。工人变成赤贫者，贫困比人口和财富增长得还要快。\r\n由此可以明显地看出，资产阶级再不能做社会的统治阶级了，再不能把自己阶级的生存条件当做支配一切的规律强加于社会了。资产阶级不能统治下去了，因为它甚至不能保证自己的奴隶维持奴隶的生活，因为它不得不让自己的奴隶落到不能养活它反而要它来养活的地步。社会再不能在它统治下生活下去了，就是说，它的存在不再同社会相容了。\r\n资产阶级生存和统治的根本条件，是财富在私人手里的积累，是资本的形成和增殖；资本的条件是雇佣劳动。雇佣劳动完全是建立在工人的自相竞争之上的。资产阶级无意中造成而又无力抵抗的工业进步，使工人通过结社而达到的革命联合代替了他们由于竞争而造成的分散状态。于是，随着大工业的发展，资产阶级赖以生产和占有产品的基础本身也就从它的脚下被挖掉了。它首先生产的是它自身的掘墓人。资产阶级的灭亡和无产阶级的胜利是同样不可避免的。\r\n无产者和共产党人\r\n共产党人同全体无产者的关系是怎样的呢？\r\n共产党人不是同其他工人政党相对立的特殊政党。\r\n他们没有任何同整个无产阶级的利益不同的利益。\r\n他们不提出任何特殊的原则，用以塑造无产阶级的运动。\r\n共产党人同其他无产阶级政党不同的地方只是：一方面，在各国无产者的斗争中，共产党人强调和坚持整个无产阶级共同的不分民族的利益；另一方面，在无产阶级和资产阶级的斗争所经历的各个发展阶段上，共产党人始终代表整个运动的利益。\r\n因此，在实践方面，共产党人是各国工人政党中最坚决的、始终起推动作用的部分；在理论方面，他们胜过其余的无产阶级群众的地方在于他们了解无产阶级运动的条件、进程和一般结果。\r\n共产党人的最近目的是和其他一切无产阶级政党的最近目的一样的：使无产阶级形成为阶级，推翻资产阶级的统治，由无产阶级夺取政权。\r\n共产党人的理论原理，决不是以这个或那个世界改革家所发明或发现的思想、原则为根据的。\r\n这些原理不过是现在的阶级斗争、我们眼前的历史运动的真实关系的一般表述。废除先前存在的所有制关系，并不是共产主义所独具的特征。\r\n一切所有制关系都经历了经常的历史更替、经常的历史变更。\r\n例如，法国革命废除了封建的所有制，代之以资产阶级的所有制。\r\n共产主义的特征并不是要废除一般的所有制，而是要废除资产阶级的所有制。\r\n但是，现代的资产阶级私有制是建立在阶级对立上面、建立在一些人对另一些人的剥削上面的产品生产和占有的最后而又最完备的表现。\r\n从这个意义上说，共产党人可以把自己的理论概括为一句话：消灭私有制。\r\n有人责备我们共产党人，说我们要消灭个人挣得的、自己劳动得来的财产，要消灭构成个人的一切自由、活动和独立的基础的财产。\r\n好一个劳动得来的、自己挣得的、自己赚来的财产！你们说的是资产阶级所有制以前的那种小资产阶级的、小农的财产吗？那种财产用不着我们去消灭，工业的发展已经把它消灭了，而且每天都在消灭它。\r\n或者，你们说的是现代的资产阶级的私有财产吧？\r\n但是，难道雇佣劳动，无产者的劳动，会给无产者创造出财产来吗？没有的事。这种劳动所创造的是资本，即剥削雇佣劳动的财产，只有在不断产生出新的雇佣劳动来重新加以剥削的条件下才能增加起来的财产。现今的这种财产是在资本和雇佣劳动的对立中运动的。让我们来看看这种对立的两个方面吧。\r\n做一个资本家，这就是说，他在生产中不仅占有一种纯粹个人的地位，而且占有一种社会的地位。资本是集体的产物，它只有通过社会许多成员的共同活动，而且归根到底只有通过社会全体成员的共同活动，才能运动起来。\r\n因此，资本不是一种个人力量，而是一种社会力量。\r\n因此，把资本变为公共的、属于社会全体成员的财产，这并不是把个人财产变为社会财产。这时所改变的只是财产的社会性质。它将失掉它的阶级性质。\r\n现在，我们来看看雇佣劳动。\r\n雇佣劳动的平均价格是最低限度的工资，即工人为维持其工人的生活所必需的生活资料的数额。因此，雇佣工人靠自己的劳动所占有的东西，只够勉强维持他的生命的再生产。我们决不打算消灭这种供直接生命再生产用的劳动产品的个人占有，这种占有并不会留下任何剩余的东西使人们有可能支配别人的劳动。我们要消灭的只是这种占有的可怜的性质，在这种占有下，工人仅仅为增殖资本而活着，只有在统治阶级的利益需要他活着的时候才能活着。\r\n在资产阶级社会里，活的劳动只是增殖已经积累起来的劳动的一种手段。在共产主义社会里，已经积累起来的劳动只是扩大、丰富和提高工人的生活的一种手段。\r\n因此，在资产阶级社会里是过去支配现在，在共产主义社会里是现在支配过去。在资产阶级社会里，资本具有独立性和个性，而活动着的个人却没有独立性和个性。\r\n而资产阶级却把消灭这种关系说成是消灭个性和自由！说对了。的确，正是要消灭资产者的个性、独立性和自由。\r\n在现今的资产阶级生产关系的范围内，所谓自由就是自由贸易，自由买卖。\r\n但是，买卖一消失，自由买卖也就会消失。关于自由买卖的言论，也像我们的资产阶级的其他一切关于自由的大话一样，仅仅对于不自由的买卖来说，对于中世纪被奴役的市民来说，才是有意义的，而对于共产主义要消灭买卖、消灭资产阶级生产关系和资产阶级本身这一点来说，却是毫无意义的。\r\n我们要消灭私有制，你们就惊慌起来。但是，在你们的现存社会里，私有财产对十分之九的成员来说已经被消灭了；这种私有制之所以存在，正是因为私有财产对十分之九的成员来说已经不存在。可见，你们责备我们，是说我们要消灭那种以社会上的绝大多数人没有财产为必要条件的所有制。\r\n总而言之，你们责备我们，是说我们要消灭你们的那种所有制。的确，我们是要这样做的。\r\n从劳动不再能变为资本、货币、地租，一句话，不再能变为可以垄断的社会力量的时候起，就是说，从个人财产不再能变为资产阶级财产的时候起，你们说，个性就被消灭了。\r\n由此可见，你们是承认，你们所理解的个性，不外是资产者、资产阶级私有制。这样的个性确实应当被消灭。\r\n共产主义并不剥夺任何人占有社会产品的权力，它只剥夺利用这种占有去奴役他人劳动的权力。\r\n有人反驳说，私有制一消灭，一切活动就会停止，懒惰之风就会兴起。\r\n这样说来，资产阶级社会早就应该因懒惰而灭亡了，因为在这个社会里是劳者不获，获者不劳的。所有这些顾虑，都可以归结为这样一个同义反复：一旦没有资本，也就不再有雇佣劳动了。\r\n所有这些对共产主义的物质产品的占有方式和生产方式的责备， 也被扩及到精神产品的占有和生产方面。正如阶级的所有制的终止在资产者看来是生产本身的终止一样，阶级的教育的终止在他们看来就等于一切教育的终止。\r\n资产者唯恐失去的那种教育，对绝大多数人来说是把人训练成机器。\r\n但是，你们既然用你们资产阶级关于自由、教育、法等等的观念来衡量废除资产阶级所有制的主张，那就请你们不要同我们争论了。你们的观念本身是资产阶级的生产关系和所有制关系的产物，正像你们的法不过是被奉为法律的你们这个阶级的意志一样，而这种意志的内容是由你们这个阶级的物质生活条件来决定的。\r\n你们的利己观念使你们把自己的生产关系和所有制关系从历史的、在生产过程中是暂时的关系变成永恒的自然规律和理性规律，这种利己观念是你们和一切灭亡了的统治阶级所共有的。谈到古代所有制的时候你们所能理解的，谈到封建所有制的时候你们所能理解的，一谈到资产阶级所有制你们就再也不能理解了。\r\n消灭家庭！连极端的激进派也对共产党人的这种可耻的意图表示愤慨。\r\n现代的、资产阶级的家庭是建立在什么基础上的呢？是建立在资本上面，建立在私人发财上面的。这种家庭只是在资产阶级那里才以充分发展的形式存在着，而无产者的被迫独居和公开的卖淫则是它的补充。\r\n资产者的家庭自然会随着它的这种补充的消失而消失，两者都要随着资本的消失而消失。\r\n你们是责备我们要消灭父母对子女的剥削吗？我们承认这种罪状。\r\n但是，你们说，我们用社会教育代替家庭教育，就是要消灭人们最亲密的关系。\r\n而你们的教育不也是由社会决定的吗？不也是由你们进行教育的那种社会关系决定的吗？不也是由社会通过学校等等进行的直接的或间接的干涉决定的吗？共产党人并没有发明社会对教育的影响；他们仅仅是要改变这种影响的性质，要使教育摆脱统治阶级的影响。\r\n无产者的一切家庭联系越是由于大工业的发展而被破坏，他们的子女越是由于这种发展而被变成单纯的商品和劳动工具，资产阶级关于家庭和教育、关于父母和子女的亲密关系的空话就越是令人作呕。\r\n但是，你们共产党人是要实行“公妻制”的啊，----整个资产阶级异口同声地向我们这样叫喊。\r\n资产者是把自己的妻子看作单纯的生产工具的。他们听说生产工具将要公共使用，自然就不能不想到妇女也会遭到同样的命运。\r\n他们想也没有想到，问题正在于使妇女不再处于单纯生产工具的地位。\r\n其实，我们的资产者装得道貌岸然，对所谓的共产党人的正式公妻制表示惊讶，那是再可笑不过了。公妻制无需共产党人来实行，它差不多是一向就有的。\r\n我们的资产者不以他们的无产者的妻子和女儿受他们支配为满足，正式的卖淫更不必说了，他们还以互相诱奸妻子为最大的享乐。\r\n资产阶级的婚姻实际上是公妻制。人们至多只能责备共产党人，说他们想用正式的、公开的公妻制来代替伪善地掩蔽着的公妻制。其实，不言而喻，随着现在的生产关系的消灭，从这种关系中产生的公妻制，即正式的和非正式的卖淫，也就消失了。\r\n还有人责备共产党人，说他们要取消祖国，取消民族。\r\n工人没有祖国。决不能剥夺他们所没有的东西。因为无产阶级首先必须取得政治统治，上升为民族的阶级，把自身组织成为民族，所以它本身还是民族的，虽然完全不是资产阶级所理解的那种意思。\r\n随着资产阶级的发展，随着贸易自由的实现和世界市场的建立，随着工业生产以及与之相适应的生活条件的趋于一致，各国人民之间的民族隔绝和对立日益消失。\r\n无产阶级的统治将使它们更快地消失。联合的行动，至少是各文明国家的联合的行动，是无产阶级获得解放的首要条件之一。\r\n人对人的剥削一消灭，民族对民族的剥削就会随之消灭。\r\n民族内部的阶级对立一消失，民族之间的敌对关系就会随之消失。\r\n从宗教的、哲学的和一般意识形态的观点对共产主义提出的种种责难，都不值得详细讨论了。\r\n人们的观念、观点和概念，一句话，人们的意识，随着人们的生活条件、人们的社会关系、人们的社会存在的改变而改变，这难道需要经过深思才能了解吗？\r\n思想的历史除了证明精神生产随着物质生产的改造而改造，还证明了什么呢？任何一个时代的统治思想始终都不过是统治阶级的思想。\r\n当人们谈到使整个社会革命化的思想时，他们只是表明了一个事实：在旧社会内部已经形成了新社会的因素，旧思想的瓦解是同旧生活条件的瓦解步调一致的。\r\n当古代世界走向灭亡的时候，古代的各种宗教就被基督教战胜了。当基督教思想在18世纪被启蒙思想击败的时候，封建社会正在同当时革命的资产阶级进行殊死的斗争。信仰自由和宗教自由的思想，不过表明自由竞争在信仰的领域里占统治地位罢了。\r\n“但是”，有人会说，“宗教的、道德的、哲学的、政治的、法的观念等等在历史发展的进程中固然是不断改变的，而宗教、道德、哲学、政治和法在这种变化中却始终保存着。\r\n此外，还存在着一切社会状态所共有的永恒的真理，如自由、正义等等。但是共产主义要废除永恒真理，它要废除宗教、道德，而不是加以革新，所以共产主义是同至今的全部历史发展进程相矛盾的。”\r\n这种责难归结为什么呢？至今的一切社会的历史都是在阶级对立中运动的，而这种对立在各个不同的时代具有不同的形式。\r\n但是，不管阶级对立具有什么样的形式，社会上一部分人对另一部分人的剥削却是过去各个世纪所共有的事实。因此，毫不奇怪，各个世纪的社会意识，尽管形形色色、千差万别，总是在某些共同的形式中运动的，这些形式，这些意识形式，只有当阶级对立完全消失的时候才会完全消失。\r\n共产主义革命就是同传统的所有制关系实行最彻底的决裂；毫不奇怪，它在自己的发展进程中要同传统的观念实行最彻底的决裂。\r\n不过，我们还是把资产阶级对共产主义的种种责难撇开吧。\r\n前面我们已经看到，工人革命的第一步就是使无产阶级上升为统治阶级，争得民主。\r\n无产阶级将利用自己的政治统治，一步一步地夺取资产阶级的全部资本，把一切生产工具集中在国家即组织成为统治阶级的无产阶级手里，并且尽可能快地增加生产力的总量。\r\n要做到这一点，当然首先必须对所有权和资产阶级生产关系实行强制性的干涉，也就是采取这样一些措施，这些措施在经济上似乎是不够充分的和没有力量的，但是在运动进程中它们会越出本身，而且作为变革全部生产方式的手段是必不可少的。\r\n这些措施在不同的国家里当然会是不同的。\r\n但是，最先进的国家几乎都可以采取下面的措施：\r\n1．剥夺地产，把地租用于国家支出。\r\n2．征收高额累进税。\r\n3．废除继承权。\r\n4．没收一切流亡分子和叛乱分子的财产。\r\n5．通过拥有国家资本和独享垄断权的国家银行，把信贷集中在国家手里。\r\n6．把全部运输业集中在国家手里。\r\n7．按照总的计划增加国家工厂和生产工具，开垦荒地和改良土壤。\r\n8．实行普遍劳动义务制，成立产业军，特别是在农业方面。\r\n9．把农业和工业结合起来，促使城乡对立逐步消灭。\r\n10．对所有儿童实行公共的和免费的教育。取消现在这种形式的儿童的工厂劳动。把教育同物质生产结合起来，等等。\r\n当阶级差别在发展进程中已经消失而全部生产集中在联合起来的个人的手里的时候，公共权力就失去政治性质。原来意义上的政治权力，是一个阶级用以压迫另一个阶级的有组织的暴力。如果说无产阶级在反对资产阶级的斗争中一定要联合为阶级，如果说它通过革命使自己成为统治阶级，并以统治阶级的资格用暴力消灭旧的生产关系，那么它在消灭这种生产关系的同时，也就消灭了阶级对立的存在条件，消灭阶级本身的存在条件，从而消灭了它自己这个阶级的统治。\r\n代替那存在着阶级和阶级对立的资产阶级旧社会的，将是这样一个联合体，在那里，每个人的自由发展是一切人的自由发展的条件。\r\n社会主义的和共产主义的文献\r\n1．反动的社会主义\r\n（甲）封建的社会主义\r\n法国和英国的贵族，按照他们的历史地位所负的使命，就是写一些抨击现代资产阶级社会的作品。在法国的1830年七月革命和英国的改革运动中，他们再一次被可恨的暴发户打败了。从此就再谈不上严重的政治斗争了。他们还能进行的只是文字斗争。但是，即使在文字方面也不可能重弹复辟时期的老调了。为了激起同情，贵族们不得不装模做样，似乎他们已经不关心自身的利益，只是为了被剥削的工人阶级的利益才去写对资产阶级的控诉书。他们用来泄愤的手段是：唱唱诅咒他们的新统治者的歌，并向他叽叽咕咕地说一些或多或少凶险的预言。\r\n这样就产生了封建的社会主义，半是挽歌，半是谤文；半是过去的回音，半是未来的恫吓；它有时也能用辛辣、俏皮而尖刻的评论刺中资产阶级的心，但是它由于完全不能理解现代历史的进程而总是令人感到可笑。\r\n为了拉拢人民，贵族们把无产阶级的乞食袋当做旗帜来挥舞。但是，每当人民跟着他们走的时候，都发现他们的臀部带有旧的封建纹章，于是就哈哈大笑，一哄而散。\r\n一部分法国正统派和“青年英国”，都演过这出戏。\r\n封建主说，他们的剥削方式和资产阶级的剥削不同，那他们只是忘记了，他们是在完全不同的、目前已经过时的情况和条件下进行剥削的。他们说，在他们的统治下并没有出现过现代的无产阶级，那他们只是忘记了，现代的资产阶级正是他们的社会制度的必然产物。\r\n不过，他们毫不掩饰自己的批评的反动性质，他们控告资产阶级的主要罪状正是在于：在资产阶级的统治下有一个将把整个旧社会制度炸毁的阶级发展起来。\r\n他们责备资产阶级，与其说是因为它产生了无产阶级，不如说是因为它产生了革命的无产阶级。\r\n因此，在政治实践中，他们参与对工人阶级采取的一切暴力措施，在日常生活中，他们违背自己的那一套冠冕堂皇的言词，屈尊拾取金苹果，不顾信义、仁爱和名誉去做羊毛、甜菜和烧酒的买卖。\r\n正如僧侣总是同封建主携手同行一样，僧侣的社会主义也总是同封建的社会主义携手同行的。\r\n要给基督教禁欲主义涂上一层社会主义的色彩，是再容易不过了。基督教不是也激烈反对私有制，反对婚姻，反对国家吗？它不是提倡用行善和求乞、独身和禁欲、修道和礼拜来代替这一切吗？基督教的社会主义，只不过是僧侣用来使贵族的怨愤神圣化的圣水罢了。\r\n（乙）小资产阶级的社会主义\r\n（内容见参考资料9）\r\n（丙）德国的或“真正的”社会主义\r\n（内容见参考资料9）\r\n2.保守的或资产阶级的社会主义\r\n资产阶级中的一部分人想要消除社会的弊病，以便保障资产阶级社会的生存。\r\n（中间内容见参考资料9）\r\n资产阶级的社会主义就是这样一个论断：资产者之为资产者，是为了工人阶级的利益。\r\n3.批判的空想的社会主义和共产主义\r\n在这里，我们不谈在现代一切大革命中表达过无产阶级要求的文献（巴贝夫等人的著作）。\r\n（中间内容见参考资料9）\r\n因此，他们激烈地反对工人的一切政治运动，认为这种运动只是由于盲目地不相信新福音才发生的。\r\n在英国，有欧文主义者反对宪章派，在法国，有傅立叶主义者反对改革派。\r\n共产党人对各种反对党派的态度\r\n看过第二章之后，就可以了解共产党人同已经形成的工人政党的关系，因而也就可以了解他们同英国宪章派和北美土地改革派的关系。\r\n共产党人为工人阶级的最近的目的和利益而斗争，但是他们在当前的运动中同时代表运动的未来。在法国，共产党人同社会主义民主党联合起来反对保守的和激进的资产阶级，但是并不因此放弃对那些从革命的传统中承袭下来的空谈和幻想采取批判态度的权利。\r\n在瑞士，共产党人支持激进派，但是并不忽略这个政党是由互相矛盾的分子组成的，其中一部分是法国式的民主社会主义者，一部分是激进的资产者。\r\n在波兰人中间，共产党人支持那个把土地革命当做民族解放的条件的政党，即发动过1846年克拉科夫起义的政党。在德国，只要资产阶级采取革命的行动，共产党就同它一起去反对专制君主制、封建土地所有制和小市民的反动性。\r\n但是，共产党一分钟也不忽略教育工人尽可能明确地意识到资产阶级和无产阶级的敌对的对立，以便德国工人能够立刻利用资产阶级统治所必然带来的社会的和政治的条件作为反对资产阶级的武器，以便在推翻德国的反动阶级之后立即开始反对资产阶级本身的斗争。\r\n共产党人把自己的主要注意力集中在德国，因为德国正处在资产阶级革命的前夜，因为同17世纪的英国和18世纪的法国相比，德国将在整个欧洲文明更进步的条件下，拥有发展得多的无产阶级去实现这个变革，因而德国的资产阶级革命只能是无产阶级革命的直接序幕。\r\n总之，共产党人到处都支持一切反对现存的社会制度和政治制度的革命运动。\r\n在所有这些运动中，他们都特别强调所有制问题，把它作为运动的基本问题，不管这个问题当时的发展程度怎样。\r\n最后，共产党人到处都努力争取全世界的民主政党之间的团结和协调。\r\n共产党人不屑于隐瞒自己的观点和意图。他们公开宣布：他们的目的只有用暴力推翻全部现存的社会制度才能达到。让统治阶级在共产主义革命面前发抖吧。无产者在这个革命中失去的只是锁链。他们获得的将是整个世界。\r\n全世界无产者，联合起来！','2021-04-17 14:01:57.503000','2021-04-17 14:01:57.503000',1,2),(4,'Test','共产党宣言的诞生标志着马克思主义的诞生，对全世界的无产阶级革命运动起推动作用。并在百年之后直接影响中国几代领导人的政治方针，推动中国的发展。\r\n《共产党宣言》是第一部较为完整而系统阐述科学社会主义基本原理的著作。是马克思主义的百科全书，是马克思主义哲学、政治经济学、科学社会主义、党的建设思想的集中体现。书中全面系统阐明马克思主义的基本原理，特别是历史唯物主义和科学社会主义的基本原理，揭示资本主义必然灭亡、社会主义必然胜利的趋势和途径。 [10]  它标志着马克思主义的诞生，开辟国际工人运动和社会主义运动的新局面，为无产阶级和全人类打开通向未来的大门，为人的全面发展和全人类解放指明路径 [11]  ，成为世界无产阶级的思想武器，被译成200多种文字，出版数千个版本，成为世界上发行量大的书籍 [12]  。\r\n1848年2月24日，马克思和恩格斯合著的《共产党宣言》在伦敦第一次出版。这个宣言是共产主义者同盟第二次代表大会委托马克思、恩格斯起草的同盟纲领。1848年至1850年间，《宣言》曾多次翻印、再版，并被译成很多种西欧国家的文字。《宣言》的英译文在1850年发表在宪章派领导人乔·哈尼出版的《红色共和党人》杂志上。在这一版上才首次标明马克思和恩格斯是《宣言》的作者。到1920年，在《宣言》问世后的第72年，由陈望道从日文译成中文出版。','2021-04-17 14:21:55.784000','2021-04-17 14:21:55.784000',1,2),(5,'中国共产党','中国共产党（英文名：the Communist Party of China，简写CPC），简称中共，创建于1921年7月23日 [1]  ，历经多年国共内战，中国共产党在中国大陆和绝大多数沿海岛屿取得全面胜利，率领中国人民解放军打败中华民国国军，迫使中华民国政府退守台澎金马，并在1949年于北京建立中华人民共和国。1949年10月至今为代表工人阶级领导工农联盟和统一战线，在中国大陆实行人民民主专政的中华人民共和国唯一执政党。\r\n中国共产党是中国工人阶级的先锋队，同时是中国人民和中华民族的先锋队，是中国特色社会主义事业的领导核心，代表中国先进生产力的发展要求，代表中国先进文化的前进方向，代表中国最广大人民的根本利益。党的最高理想和最终目标是实现共产主义。 [2] \r\n中国共产党以马克思列宁主义、毛泽东思想、邓小平理论、“三个代表”重要思想、科学发展观、习近平新时代中国特色社会主义思想作为自己的行动指南。中国共产党领导是中国特色社会主义最本质的特征','2021-04-24 11:35:16.567000','2021-04-24 11:35:16.567000',1,3),(6,'Django','<h2>标题</h2>\r\n\r\n<p>TEST <strong>BIG</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"/media/upload/2021/04/30/002.jpg\" style=\"height:350px; width:244px\" /></strong></p>\r\n\r\n<p><span style=\"color:#1abc9c\">绿色</span></p>','2021-04-24 11:35:28.913000','2021-04-30 08:55:57.923000',1,1),(7,'shell下第一篇','TEST','2021-04-25 11:38:47.678000','2021-04-25 11:40:57.937000',1,1),(8,'for 1','xxxx:1','2021-04-25 11:45:11.113000','2021-04-25 11:45:11.113000',1,1),(9,'for 2','xxxx:2','2021-04-25 11:45:11.467000','2021-04-25 11:45:11.467000',1,1),(10,'for 3','xxxx:3','2021-04-25 11:45:11.559000','2021-04-25 11:45:11.559000',1,1),(11,'for 4','xxxx:4','2021-04-25 11:45:11.668000','2021-04-25 11:45:11.668000',1,1),(12,'for 5','xxxx:5','2021-04-25 11:45:11.767000','2021-04-25 11:45:11.767000',1,1),(13,'for 6','xxxx:6','2021-04-25 11:45:11.867000','2021-04-25 11:45:11.867000',1,1),(14,'for 7','xxxx:7','2021-04-25 11:45:11.988000','2021-04-25 11:45:11.988000',1,1),(15,'for 8','xxxx:8','2021-04-25 11:45:12.072000','2021-04-25 11:45:12.072000',1,1),(16,'for 9','xxxx:9','2021-04-25 11:45:12.163000','2021-04-25 11:45:12.163000',1,1),(17,'for 10','xxxx:10','2021-04-25 11:45:12.264000','2021-04-25 11:45:12.264000',1,1),(19,'for 12','xxxx:12','2021-04-25 11:45:12.447000','2021-04-25 11:45:12.447000',1,1),(20,'for 13','xxxx:13','2021-04-25 11:45:12.522000','2021-04-25 11:45:12.522000',1,1),(21,'for 14','xxxx:14','2021-04-25 11:45:12.605000','2021-04-25 11:45:12.605000',1,1),(22,'for 15','xxxx:15','2021-04-25 11:45:12.696000','2021-04-25 11:45:12.696000',1,1),(23,'for 16','xxxx:16','2021-04-25 11:45:12.771000','2021-04-25 11:45:12.771000',1,1),(24,'for 17','xxxx:17','2021-04-25 11:45:12.864000','2021-04-25 11:45:12.864000',1,1),(25,'for 18','xxxx:18','2021-04-25 11:45:12.947000','2021-04-25 11:45:12.947000',1,1),(26,'for 19','xxxx:19','2021-04-25 11:45:13.038000','2021-04-25 11:45:13.038000',1,1),(27,'for 20','xxxx:20','2021-04-25 11:45:13.129000','2021-04-25 11:45:13.129000',1,1),(28,'for 21','xxxx:21','2021-04-25 11:45:13.217000','2021-04-25 11:45:13.217000',1,1),(29,'for 22','xxxx:22','2021-04-25 11:45:13.288000','2021-04-25 11:45:13.288000',1,1),(30,'for 23','xxxx:23','2021-04-25 11:45:13.372000','2021-04-25 11:45:13.372000',1,1),(31,'for 24','xxxx:24','2021-04-25 11:45:13.455000','2021-04-25 11:45:13.455000',1,1),(32,'for 25','xxxx:25','2021-04-25 11:45:13.530000','2021-04-25 11:45:13.530000',1,1),(33,'for 26','xxxx:26','2021-04-25 11:45:13.605000','2021-04-25 11:45:13.605000',1,1),(34,'for 27','xxxx:27','2021-04-25 11:45:13.693000','2021-04-25 11:45:13.693000',1,1),(35,'for 28','xxxx:28','2021-04-25 11:45:13.780000','2021-04-30 09:10:31.943000',1,1),(36,'for 29','xxxx:29','2021-04-25 11:45:13.863000','2021-04-30 09:08:47.697000',1,1),(37,'for 30','xxxx:30','2021-04-25 11:45:13.955000','2021-04-30 09:08:42.485000',1,1),(38,'study','<p>123123</p>\r\n\r\n<p>123123</p>','2021-04-30 10:53:24.315000','2021-04-30 10:53:24.315000',1,2),(39,'迷迭香','<p>眼神失焦了几秒，关于你的舞蹈</p>\r\n\r\n<p><img alt=\"\" src=\"/media/upload/2021/05/06/016.png\" style=\"height:353px; width:249px\" /></p>','2021-05-05 16:30:56.475000','2021-05-05 16:30:56.475000',1,3);
/*!40000 ALTER TABLE `blog_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blogtype`
--

DROP TABLE IF EXISTS `blog_blogtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_blogtype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogtype`
--

LOCK TABLES `blog_blogtype` WRITE;
/*!40000 ALTER TABLE `blog_blogtype` DISABLE KEYS */;
INSERT INTO `blog_blogtype` VALUES (1,'Django'),(2,'笔记'),(3,'随笔');
/*!40000 ALTER TABLE `blog_blogtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_comment`
--

DROP TABLE IF EXISTS `comment_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_id` int unsigned NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_time` datetime(6) NOT NULL,
  `content_type_id` int NOT NULL,
  `user_id` int NOT NULL,
  `parent_id` int DEFAULT NULL,
  `reply_to_id` int DEFAULT NULL,
  `root_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_comment_content_type_id_fbfb9793_fk_django_co` (`content_type_id`),
  KEY `comment_comment_parent_id_b612524c_fk_comment_comment_id` (`parent_id`),
  KEY `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` (`reply_to_id`),
  KEY `comment_comment_root_id_28721811_fk_comment_comment_id` (`root_id`),
  KEY `comment_comment_user_id_6078e57b_fk_auth_user_id` (`user_id`),
  CONSTRAINT `comment_comment_content_type_id_fbfb9793_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `comment_comment_parent_id_b612524c_fk_comment_comment_id` FOREIGN KEY (`parent_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` FOREIGN KEY (`reply_to_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `comment_comment_root_id_28721811_fk_comment_comment_id` FOREIGN KEY (`root_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_user_id_6078e57b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `comment_comment_chk_1` CHECK ((`object_id` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_comment`
--

LOCK TABLES `comment_comment` WRITE;
/*!40000 ALTER TABLE `comment_comment` DISABLE KEYS */;
INSERT INTO `comment_comment` VALUES (1,39,'你慵懒的扭动着腰，受不了~','2021-05-05 16:47:17.687000',8,1,NULL,NULL,NULL),(2,39,'你随风飘扬的笑','2021-05-05 16:51:01.024000',8,1,NULL,NULL,NULL),(3,39,'有迷迭香的味道','2021-05-05 16:51:08.656000',8,1,NULL,NULL,NULL),(4,39,'语带甜味的撒娇，对我发出恋爱的警告','2021-05-05 16:51:25.830000',8,1,NULL,NULL,NULL),(5,39,'<p><strong>你的嘴角</strong></p>\r\n\r\n<hr />\r\n<p><span style=\"color:#1abc9c\">微微上翘</span></p>','2021-05-06 06:40:58.306000',8,1,NULL,NULL,NULL),(6,39,'<p><span style=\"color:#ff3300\">你深情，等拥抱</span></p>','2021-05-06 06:51:13.593000',8,1,NULL,NULL,NULL),(7,39,'<p><span style=\"color:#ff3300\">你深情，等拥抱</span></p>','2021-05-06 06:51:22.279000',8,1,NULL,NULL,NULL),(8,39,'<p><span style=\"color:#ff3300\">你深情，等拥抱</span></p>','2021-05-06 06:52:00.967000',8,1,NULL,NULL,NULL),(9,39,'<p><span style=\"color:#9b59b6\">烛火在燃烧，有某种情调</span></p>','2021-05-06 06:55:40.878000',8,1,NULL,NULL,NULL),(11,39,'<p>哈哈哈</p>','2021-05-06 10:05:02.189000',8,1,1,1,1),(12,39,'<p>哈哈哈</p>','2021-05-06 10:05:05.932000',8,1,11,1,1),(13,39,'<p>哈哈</p>','2021-05-06 10:05:09.586000',8,1,2,1,2),(14,38,'<p>123</p>','2021-05-07 12:49:09.316000',8,1,NULL,NULL,NULL),(15,38,'<p>345</p>','2021-05-07 12:49:12.117000',8,1,NULL,NULL,NULL),(16,38,'<p>456</p>','2021-05-07 12:49:15.225000',8,1,15,1,15),(17,38,'<p>789</p>','2021-05-07 12:49:20.658000',8,1,16,1,15),(18,39,'<p>像多汁的水蜜桃谁都想咬</p>','2021-05-07 13:20:58.969000',8,1,9,1,9),(19,39,'<p><em>123</em></p>\r\n\r\n<p><strong><span style=\"background-color:#1abc9c\">鲁路修</span></strong></p>','2021-05-07 13:21:45.960000',8,1,NULL,NULL,NULL),(20,39,'<p><span style=\"color:#1abc9c\">她的睫毛</span></p>','2021-05-07 13:26:55.556000',8,1,NULL,NULL,NULL),(21,37,'<p>joker</p>','2021-05-10 11:31:41.891911',8,3,NULL,NULL,NULL);
/*!40000 ALTER TABLE `comment_comment` ENABLE KEYS */;
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
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-04-17 12:25:58.250000','1','BlogType object (1)',1,'[{\"added\": {}}]',7,1),(2,'2021-04-17 12:26:07.016000','2','BlogType object (2)',1,'[{\"added\": {}}]',7,1),(3,'2021-04-17 12:26:22.042000','3','BlogType object (3)',1,'[{\"added\": {}}]',7,1),(4,'2021-04-17 12:29:36.088000','1','<Blog:第一篇博客>',1,'[{\"added\": {}}]',8,1),(5,'2021-04-17 13:55:30.144000','2','<Blog:Python>',1,'[{\"added\": {}}]',8,1),(6,'2021-04-17 14:00:15.572000','2','<Blog:Python>',3,'',8,1),(7,'2021-04-17 14:00:15.963000','1','<Blog:第一篇博客>',3,'',8,1),(8,'2021-04-17 14:01:57.504000','3','<Blog:共产党宣言>',1,'[{\"added\": {}}]',8,1),(9,'2021-04-17 14:21:55.786000','4','<Blog:Test>',1,'[{\"added\": {}}]',8,1),(10,'2021-04-24 11:35:16.569000','5','<Blog:中国共产党>',1,'[{\"added\": {}}]',8,1),(11,'2021-04-24 11:35:28.915000','6','<Blog:Django>',1,'[{\"added\": {}}]',8,1),(12,'2021-04-25 13:05:02.828000','18','<Blog:for 11>',3,'',8,1),(13,'2021-04-30 08:19:42.057000','6','<Blog:Django>',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',8,1),(14,'2021-04-30 08:20:08.164000','6','<Blog:Django>',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',8,1),(15,'2021-04-30 08:29:55.416000','6','<Blog:Django>',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',8,1),(16,'2021-04-30 08:42:55.998000','6','<Blog:Django>',2,'[{\"changed\": {\"fields\": [\"Content\"]}}]',8,1),(17,'2021-04-30 10:34:29.672000','1','ReadNum object (1)',1,'[{\"added\": {}}]',9,1),(18,'2021-04-30 10:53:24.318000','38','<Blog:study>',1,'[{\"added\": {}}]',8,1),(19,'2021-05-04 12:04:44.173000','1','ReadNum object (1)',1,'[{\"added\": {}}]',10,1),(20,'2021-05-05 07:38:09.452000','1','ReadDetail object (1)',1,'[{\"added\": {}}]',11,1),(21,'2021-05-05 08:24:10.269000','4','ReadDetail object (4)',2,'[{\"changed\": {\"fields\": [\"Date\"]}}]',11,1),(22,'2021-05-05 16:30:56.476000','39','<Blog: 迷迭香>',1,'[{\"added\": {}}]',8,1),(23,'2021-05-06 10:33:17.567000','16','<p>离开有你的季节</p>',3,'',12,1),(24,'2021-05-06 10:33:33.556000','10','<p>一路向北</p>',3,'',12,1),(25,'2021-05-07 08:00:34.789000','1','hch',2,'[{\"changed\": {\"fields\": [\"Last login\"]}}, {\"added\": {\"name\": \"profile\", \"object\": \"<Profile: C.C. for hch>\"}}]',4,1),(26,'2021-05-07 12:04:34.313000','2','yrzk',2,'[{\"changed\": {\"fields\": [\"Email address\", \"Last login\"]}}]',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(8,'blog','blog'),(7,'blog','blogtype'),(9,'blog','readnum'),(12,'comment','comment'),(5,'contenttypes','contenttype'),(13,'likes','likecount'),(14,'likes','likerecord'),(11,'read_statistics','readdetail'),(10,'read_statistics','readnum'),(6,'sessions','session'),(15,'user','profile');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-05-10 11:07:08.002397'),(2,'auth','0001_initial','2021-05-10 11:07:08.144587'),(3,'admin','0001_initial','2021-05-10 11:07:08.652378'),(4,'admin','0002_logentry_remove_auto_add','2021-05-10 11:07:08.759132'),(5,'admin','0003_logentry_add_action_flag_choices','2021-05-10 11:07:08.769885'),(6,'contenttypes','0002_remove_content_type_name','2021-05-10 11:07:08.872224'),(7,'auth','0002_alter_permission_name_max_length','2021-05-10 11:07:08.954424'),(8,'auth','0003_alter_user_email_max_length','2021-05-10 11:07:08.978531'),(9,'auth','0004_alter_user_username_opts','2021-05-10 11:07:08.983315'),(10,'auth','0005_alter_user_last_login_null','2021-05-10 11:07:09.047891'),(11,'auth','0006_require_contenttypes_0002','2021-05-10 11:07:09.047891'),(12,'auth','0007_alter_validators_add_error_messages','2021-05-10 11:07:09.063698'),(13,'auth','0008_alter_user_username_max_length','2021-05-10 11:07:09.135442'),(14,'auth','0009_alter_user_last_name_max_length','2021-05-10 11:07:09.204749'),(15,'auth','0010_alter_group_name_max_length','2021-05-10 11:07:09.233545'),(16,'auth','0011_update_proxy_permissions','2021-05-10 11:07:09.239782'),(17,'auth','0012_alter_user_first_name_max_length','2021-05-10 11:07:09.310656'),(18,'blog','0001_initial','2021-05-10 11:07:09.358688'),(19,'blog','0002_auto_20210417_2023','2021-05-10 11:07:09.548434'),(20,'blog','0003_auto_20210425_1951','2021-05-10 11:07:09.552822'),(21,'blog','0004_auto_20210430_1627','2021-05-10 11:07:09.569585'),(22,'blog','0005_auto_20210430_1641','2021-05-10 11:07:09.569585'),(23,'blog','0006_blog_readed_num','2021-05-10 11:07:09.616643'),(24,'blog','0007_auto_20210430_1832','2021-05-10 11:07:09.688573'),(25,'blog','0008_delete_readnum','2021-05-10 11:07:09.750941'),(26,'comment','0001_initial','2021-05-10 11:07:09.777560'),(27,'comment','0002_auto_20210506_1804','2021-05-10 11:07:10.198361'),(28,'comment','0003_auto_20210506_2221','2021-05-10 11:07:10.689839'),(29,'likes','0001_initial','2021-05-10 11:07:10.754884'),(30,'read_statistics','0001_initial','2021-05-10 11:07:10.945543'),(31,'read_statistics','0002_readdetail','2021-05-10 11:07:11.022609'),(32,'sessions','0001_initial','2021-05-10 11:07:11.092344'),(33,'user','0001_initial','2021-05-10 11:07:11.144187');
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
INSERT INTO `django_session` VALUES ('4ffabf5xieae9cmupm0ugpe484sadoyt','.eJxVjMsOwiAQRf-FtSFgeQwu3fsNZIaHVA0kpV0Z_12adKHbc869b-ZxW4vfelr8HNmFSXb6ZYThmeou4gPrvfHQ6rrMxPeEH7bzW4vpdT3av4OCvYy1mgCESkg2WkJtYTKJXCSRKaPOaqgsgxMZQGqbxCD6bADMZLNCJ9jnC_QZN-o:1lXk03:TO6kAncW0z6hF7_d1KPsdgJgSCRwwvw57auf4eXlAy4','2021-05-01 12:24:35.426000'),('4wmvufk11zm00xi6ueoxeib79xceueet','e30:1leDjf:DbdjGqE-HQjeuUNsw2p7dauXpZinyW6v4Zu5CpWZnkQ','2021-05-19 09:22:27.609000'),('df9v4zklao6nywkvpjbixw2t4ojlb6xq','.eJxVjMEOwiAQRP-FsyEulgIevfcbyLK7laqBpLQn47_bJj3oaZJ5b-atIq5LjmuTOU6srgrU6bdLSE8pO-AHlnvVVMsyT0nvij5o00Nled0O9-8gY8vbmgw6ay3bJEw4bgESmF1yGAKCRwbqofOdGQkIk_MXD2e23jD1Loj6fAEVTTjJ:1lf0PC:leAkpuLYUlYD_c7egV_Ojeuh41aLbw062jCDewMP10M','2021-05-21 13:20:34.220000'),('ikjpuoeqfu88nqq7m4ran5pxs9362qtd','.eJxVjDsOwyAQBe9CHSE-y4Jdps8ZECzr2PnYkrGrKHcPkdy4fTPzPqLyXCItheM2vVn0Go1CQAN4ETHt2xj3ymuciuiFFactJ3q2uoHySPN9kbTM2zpl-VfkQau8tfPX9XBPB2OqY6uzDVaVQTO5RB4dOE2oIDufjNXItmCnBtLUhUwQGCh1ihjBYgDvjfj-AAbGP9c:1lg48B:EBpuIVGhNyrW2ZSwaCq2M7nm6__lEPT09CZ404zfWvw','2021-05-24 11:31:23.079770'),('t2x700m941g6oq4y5t5rebtpdzlbl5hk','.eJxVjMsOwiAQRf-FtSFgeQwu3fsNZIaHVA0kpV0Z_12adKHbc869b-ZxW4vfelr8HNmFSXb6ZYThmeou4gPrvfHQ6rrMxPeEH7bzW4vpdT3av4OCvYy1mgCESkg2WkJtYTKJXCSRKaPOaqgsgxMZQGqbxCD6bADMZLNCJ9jnC_QZN-o:1levSC:RROXOVwPKfanDatjVb8h8SceiLzlEyzmC8ce8mrjTJE','2021-05-21 08:03:20.825000');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_likecount`
--

DROP TABLE IF EXISTS `likes_likecount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes_likecount` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_id` int unsigned NOT NULL,
  `liked_num` int NOT NULL,
  `content_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_likecount_content_type_id_a33eb91e_fk_django_co` (`content_type_id`),
  CONSTRAINT `likes_likecount_content_type_id_a33eb91e_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `likes_likecount_chk_1` CHECK ((`object_id` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_likecount`
--

LOCK TABLES `likes_likecount` WRITE;
/*!40000 ALTER TABLE `likes_likecount` DISABLE KEYS */;
INSERT INTO `likes_likecount` VALUES (1,39,0,8),(2,38,0,8),(3,37,1,8),(4,36,0,8),(5,35,0,8),(6,34,0,8),(7,33,0,8),(8,9,1,12),(9,8,0,12),(10,7,0,12),(11,6,0,12),(12,5,0,12),(13,4,0,12),(14,3,0,12),(15,2,0,12),(16,13,0,12),(17,1,0,12),(18,11,0,12),(19,12,0,12),(20,18,0,12),(21,19,0,12),(22,20,0,12),(23,32,0,8),(24,9,0,8),(25,8,0,8),(26,7,0,8),(27,6,0,8),(28,5,0,8),(29,4,0,8),(30,3,0,8);
/*!40000 ALTER TABLE `likes_likecount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_likerecord`
--

DROP TABLE IF EXISTS `likes_likerecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes_likerecord` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_id` int unsigned NOT NULL,
  `liked_time` datetime(6) NOT NULL,
  `content_type_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_likerecord_content_type_id_4e35de35_fk_django_co` (`content_type_id`),
  KEY `likes_likerecord_user_id_c85b88bd_fk_auth_user_id` (`user_id`),
  CONSTRAINT `likes_likerecord_content_type_id_4e35de35_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `likes_likerecord_user_id_c85b88bd_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `likes_likerecord_chk_1` CHECK ((`object_id` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_likerecord`
--

LOCK TABLES `likes_likerecord` WRITE;
/*!40000 ALTER TABLE `likes_likerecord` DISABLE KEYS */;
INSERT INTO `likes_likerecord` VALUES (2,37,'2021-05-06 14:29:46.714000',8,1),(3,9,'2021-05-07 07:17:27.219000',12,1);
/*!40000 ALTER TABLE `likes_likerecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_cache_table`
--

DROP TABLE IF EXISTS `my_cache_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_cache_table` (
  `cache_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  PRIMARY KEY (`cache_key`),
  KEY `my_cache_table_expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_cache_table`
--

LOCK TABLES `my_cache_table` WRITE;
/*!40000 ALTER TABLE `my_cache_table` DISABLE KEYS */;
INSERT INTO `my_cache_table` VALUES (':1:hot_blogs_for_7_days','gAWVDwsAAAAAAACMFmRqYW5nby5kYi5tb2RlbHMucXVlcnmUjAhRdWVyeVNldJSTlCmBlH2UKIwFbW9kZWyUjAtibG9nLm1vZGVsc5SMBEJsb2eUk5SMA19kYpROjAZfaGludHOUfZSMBl9xdWVyeZSMGmRqYW5nby5kYi5tb2RlbHMuc3FsLnF1ZXJ5lIwFUXVlcnmUk5QpgZR9lCiMEV9jb25zdHJ1Y3Rvcl9hcmdzlGgIhZR9lIaUaAVoCIwOYWxpYXNfcmVmY291bnSUfZQojAlibG9nX2Jsb2eUSwSMGnJlYWRfc3RhdGlzdGljc19yZWFkZGV0YWlslEsDdYwJYWxpYXNfbWFwlH2UKGgYjCNkamFuZ28uZGIubW9kZWxzLnNxbC5kYXRhc3RydWN0dXJlc5SMCUJhc2VUYWJsZZSTlCmBlH2UKIwKdGFibGVfbmFtZZRoGIwLdGFibGVfYWxpYXOUaBh1YmgZaByMBEpvaW6Uk5QpgZR9lChoIWgZjAxwYXJlbnRfYWxpYXOUaBhoImgZjAlqb2luX3R5cGWUjApJTk5FUiBKT0lOlIwJam9pbl9jb2xzlIwCaWSUjAlvYmplY3RfaWSUhpSFlIwKam9pbl9maWVsZJSMImRqYW5nby5jb250cmliLmNvbnRlbnR0eXBlcy5maWVsZHOUjApHZW5lcmljUmVslJOUKYGUfZQojAVmaWVsZJSMF2RqYW5nby5kYi5tb2RlbHMuZmllbGRzlIwLX2xvYWRfZmllbGSUk5SMBGJsb2eUaAeMDHJlYWRfZGV0YWlsc5SHlFKUaAWMFnJlYWRfc3RhdGlzdGljcy5tb2RlbHOUjApSZWFkRGV0YWlslJOUjAxyZWxhdGVkX25hbWWUjAErlIwScmVsYXRlZF9xdWVyeV9uYW1llE6MEGxpbWl0X2Nob2ljZXNfdG+UfZSMC3BhcmVudF9saW5rlImMCW9uX2RlbGV0ZZSMGWRqYW5nby5kYi5tb2RlbHMuZGVsZXRpb26UjApET19OT1RISU5HlJOUjAtzeW1tZXRyaWNhbJSJjAhtdWx0aXBsZZSIjA1yZWxhdGVkX21vZGVslGgIdWKMCG51bGxhYmxllIiMEWZpbHRlcmVkX3JlbGF0aW9ulE51YnWMCmFsaWFzX2NvbHOUiIwQZXh0ZXJuYWxfYWxpYXNlc5R9lIwJdGFibGVfbWFwlH2UKGgYXZRoGGFoGV2UaBlhdYwMZGVmYXVsdF9jb2xzlImMEGRlZmF1bHRfb3JkZXJpbmeUiIwRc3RhbmRhcmRfb3JkZXJpbmeUiIwMdXNlZF9hbGlhc2VzlI+UjBBmaWx0ZXJfaXNfc3RpY2t5lImMCHN1YnF1ZXJ5lImMBnNlbGVjdJSMHGRqYW5nby5kYi5tb2RlbHMuZXhwcmVzc2lvbnOUjANDb2yUk5QpgZR9lChoEmgYaDhoOWgHaCuHlFKUhpR9lIaUjAxvdXRwdXRfZmllbGSUaGSMBWFsaWFzlGgYjAZ0YXJnZXSUaGSMCGlkZW50aXR5lChoYGhpaBiGlGhqjAlibG9nLkJsb2eUaCuGlIaUaGhOhpR0lHViaGApgZR9lChoEmgYaDhoOWgHjAV0aXRsZZSHlFKUhpR9lIaUaGhodmhpaBhoamh2aGsoaGBoaWgYhpRoaowJYmxvZy5CbG9nlGh0hpSGlGhoToaUdJR1YoaUjAV3aGVyZZSMGmRqYW5nby5kYi5tb2RlbHMuc3FsLndoZXJllIwJV2hlcmVOb2RllJOUKYGUfZQojAhjaGlsZHJlbpRdlCiMGGRqYW5nby5kYi5tb2RlbHMubG9va3Vwc5SMEkdyZWF0ZXJUaGFuT3JFcXVhbJSTlCmBlH2UKIwDbGhzlGhgKYGUfZQoaBJoGWg4jA9yZWFkX3N0YXRpc3RpY3OUaD6MBGRhdGWUh5RSlIaUfZSGlGhoaJRoaWgZaGpolIwSY29udGFpbnNfYWdncmVnYXRllIl1YowDcmhzlIwIZGF0ZXRpbWWUjARkYXRllJOUQwQH5QUDlIWUUpSMFGJpbGF0ZXJhbF90cmFuc2Zvcm1zlF2UaJiJdWJoiYwITGVzc1RoYW6Uk5QpgZR9lChojmiPaJlonEMEB+UFCpSFlFKUaKBdlGiYiXViZYwJY29ubmVjdG9ylIwDQU5ElIwHbmVnYXRlZJSJaJiJdWKMC3doZXJlX2NsYXNzlGiEjAhncm91cF9ieZRoYWhyhpSMCG9yZGVyX2J5lIwNLXJlYWRfbnVtX3N1bZSFlIwIbG93X21hcmuUSwCMCWhpZ2hfbWFya5RLB4wIZGlzdGluY3SUiYwPZGlzdGluY3RfZmllbGRzlCmMEXNlbGVjdF9mb3JfdXBkYXRllImMGHNlbGVjdF9mb3JfdXBkYXRlX25vd2FpdJSJjB1zZWxlY3RfZm9yX3VwZGF0ZV9za2lwX2xvY2tlZJSJjBRzZWxlY3RfZm9yX3VwZGF0ZV9vZpQpjA5zZWxlY3RfcmVsYXRlZJSJjAltYXhfZGVwdGiUSwWMDXZhbHVlc19zZWxlY3SUaCtodIaUjAthbm5vdGF0aW9uc5R9lIwMcmVhZF9udW1fc3VtlIwbZGphbmdvLmRiLm1vZGVscy5hZ2dyZWdhdGVzlIwDU3VtlJOUKYGUfZQoaBKMFnJlYWRfZGV0YWlsc19fcmVhZF9udW2UhZR9lIaUaLWJjAZmaWx0ZXKUTowSc291cmNlX2V4cHJlc3Npb25zlF2UaGApgZR9lChoEmgZaDhokWg+jAhyZWFkX251bZSHlFKUhpR9lIaUaGho0mhpaBloamjSjBVfb3V0cHV0X2ZpZWxkX29yX25vbmWUaNJomIl1YmGMBWV4dHJhlH2UjAppc19zdW1tYXJ5lIloaGjSaGsoaMSMC2V4cHJlc3Npb25zlGjHhZSGlGi1iYaUaMtOhpRo1ymGlHSUdWJzjBZhbm5vdGF0aW9uX3NlbGVjdF9tYXNrlI+UKGjBkIwYX2Fubm90YXRpb25fc2VsZWN0X2NhY2hllH2UaMFoxXOMCmNvbWJpbmF0b3KUTowOY29tYmluYXRvcl9hbGyUiYwQY29tYmluZWRfcXVlcmllc5QpaNd9lIwRZXh0cmFfc2VsZWN0X21hc2uUj5SME19leHRyYV9zZWxlY3RfY2FjaGWUTowMZXh0cmFfdGFibGVzlCmMDmV4dHJhX29yZGVyX2J5lCmMEGRlZmVycmVkX2xvYWRpbmeUKJGUiIaUjBNfZmlsdGVyZWRfcmVsYXRpb25zlH2UjA1leHBsYWluX3F1ZXJ5lImMDmV4cGxhaW5fZm9ybWF0lE6MD2V4cGxhaW5fb3B0aW9uc5R9lIwNX2xvb2t1cF9qb2luc5RdlChoGGgZZYwKYmFzZV90YWJsZZRoGHVijA1fcmVzdWx0X2NhY2hllF2UjA5fc3RpY2t5X2ZpbHRlcpSJjApfZm9yX3dyaXRllImMGV9wcmVmZXRjaF9yZWxhdGVkX2xvb2t1cHOUKYwOX3ByZWZldGNoX2RvbmWUiYwWX2tub3duX3JlbGF0ZWRfb2JqZWN0c5R9lIwPX2l0ZXJhYmxlX2NsYXNzlGgAjA5WYWx1ZXNJdGVyYWJsZZSTlIwHX2ZpZWxkc5RoK2h0hpSMEl9kZWZlcl9uZXh0X2ZpbHRlcpSJjBBfZGVmZXJyZWRfZmlsdGVylE6MD19kamFuZ29fdmVyc2lvbpSMBTMuMS43lHViLg==','2021-05-10 12:08:59.000000');
/*!40000 ALTER TABLE `my_cache_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_statistics_readdetail`
--

DROP TABLE IF EXISTS `read_statistics_readdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `read_statistics_readdetail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `read_num` int NOT NULL,
  `object_id` int unsigned NOT NULL,
  `content_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_589c7d92_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_589c7d92_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `read_statistics_readdetail_chk_1` CHECK ((`object_id` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_statistics_readdetail`
--

LOCK TABLES `read_statistics_readdetail` WRITE;
/*!40000 ALTER TABLE `read_statistics_readdetail` DISABLE KEYS */;
INSERT INTO `read_statistics_readdetail` VALUES (1,'2021-05-05',6,38,8),(2,'2021-05-05',2,37,8),(3,'2021-05-05',2,36,8),(4,'2021-05-04',1,35,8),(5,'2021-05-05',1,35,8),(6,'2021-05-05',1,34,8),(7,'2021-05-05',1,33,8),(8,'2021-05-05',1,39,8),(9,'2021-05-06',2,38,8),(10,'2021-05-06',2,39,8),(11,'2021-05-06',2,37,8),(12,'2021-05-06',1,34,8),(13,'2021-05-06',1,3,8),(14,'2021-05-06',1,4,8),(15,'2021-05-06',1,5,8),(16,'2021-05-06',1,6,8),(17,'2021-05-06',1,35,8),(18,'2021-05-06',1,36,8),(19,'2021-05-07',6,39,8),(20,'2021-05-07',1,38,8),(21,'2021-05-07',1,36,8),(22,'2021-05-10',1,39,8),(23,'2021-05-10',1,37,8);
/*!40000 ALTER TABLE `read_statistics_readdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_statistics_readnum`
--

DROP TABLE IF EXISTS `read_statistics_readnum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `read_statistics_readnum` (
  `id` int NOT NULL AUTO_INCREMENT,
  `read_num` int NOT NULL,
  `object_id` int unsigned NOT NULL,
  `content_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_560f0f39_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_560f0f39_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `read_statistics_readnum_chk_1` CHECK ((`object_id` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_statistics_readnum`
--

LOCK TABLES `read_statistics_readnum` WRITE;
/*!40000 ALTER TABLE `read_statistics_readnum` DISABLE KEYS */;
INSERT INTO `read_statistics_readnum` VALUES (1,16,38,8),(2,6,37,8),(3,5,36,8),(4,2,6,8),(5,2,5,8),(6,2,4,8),(7,2,3,8),(8,1,20,8),(9,3,35,8),(10,2,34,8),(11,1,33,8),(12,10,39,8);
/*!40000 ALTER TABLE `read_statistics_readnum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_profile_user_id_8fdce8e2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES (1,'Vivy',1),(2,'a',2),(3,'joker',3);
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-10 22:52:22
