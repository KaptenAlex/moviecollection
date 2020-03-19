-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-03-10 11:48:22','2020-03-10 11:48:22','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'post-trashed','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=554 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://moviecollection.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://moviecollection.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Movies','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Wordpress site for movies!','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','closed','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:104:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"movie/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"movie/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"movie/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"movie/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"movie/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"movie/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"movie/([^/]+)/embed/?$\";s:38:\"index.php?movie=$matches[1]&embed=true\";s:26:\"movie/([^/]+)/trackback/?$\";s:32:\"index.php?movie=$matches[1]&tb=1\";s:34:\"movie/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?movie=$matches[1]&paged=$matches[2]\";s:41:\"movie/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?movie=$matches[1]&cpage=$matches[2]\";s:30:\"movie/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?movie=$matches[1]&page=$matches[2]\";s:22:\"movie/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"movie/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"movie/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"movie/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"movie/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"movie/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:3:{i:0;s:31:\"query-monitor/query-monitor.php\";i:1;s:25:\"kk-star-ratings/index.php\";i:2;s:29:\"movie-plugin/movie-plugin.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','understrap-master','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','understrap-master-child','yes');
INSERT INTO `wp_options` VALUES (42,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (43,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (44,'comment_registration','','yes');
INSERT INTO `wp_options` VALUES (45,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (46,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (47,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (48,'db_version','45805','yes');
INSERT INTO `wp_options` VALUES (49,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (50,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (51,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (52,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (53,'show_on_front','posts','yes');
INSERT INTO `wp_options` VALUES (54,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (55,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (56,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (57,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (59,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (60,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (61,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (62,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (63,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (64,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (65,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (67,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (68,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (69,'close_comments_for_old_posts','','yes');
INSERT INTO `wp_options` VALUES (70,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (71,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (72,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (73,'page_comments','','yes');
INSERT INTO `wp_options` VALUES (74,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (75,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (76,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (77,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'widget_text','a:3:{i:2;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (81,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (82,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (83,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (84,'page_on_front','0','yes');
INSERT INTO `wp_options` VALUES (85,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (86,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (87,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (88,'site_icon','20','yes');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (90,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (91,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (92,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (93,'admin_email_lifespan','1599392901','yes');
INSERT INTO `wp_options` VALUES (94,'initial_db_version','45805','yes');
INSERT INTO `wp_options` VALUES (95,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (96,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (97,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (98,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_archives','a:3:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}i:3;a:3:{s:5:\"title\";s:7:\"Archive\";s:5:\"count\";i:1;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'sidebars_widgets','a:8:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:13:\"right-sidebar\";a:0:{}s:12:\"left-sidebar\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:4:\"hero\";a:0:{}s:10:\"herocanvas\";a:0:{}s:10:\"statichero\";a:0:{}s:10:\"footerfull\";a:0:{}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (103,'cron','a:6:{i:1584614903;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1584618502;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1584618503;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1584618627;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1584618629;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'nonce_key','7A:f3?l.8ty5#`Pp1TpS`6R~*?/2#4>(U{H]fZ$t*/vf)pt? hXQKmhXrnc]-$,W','no');
INSERT INTO `wp_options` VALUES (111,'nonce_salt','Nk{&tV^dP#f!dY[;6!`Yw197HQE1|#!Y{NDmPWoTH0iyN=5mE{eNRaIMWdc0);(A','no');
INSERT INTO `wp_options` VALUES (112,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_nav_menu','a:3:{i:2;a:0:{}i:3;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (117,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1584613621;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (123,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1583843582;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (141,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (144,'recently_activated','a:2:{s:33:\"get-movie-data/get-movie-data.php\";i:1584609482;s:19:\"Metabox/Metabox.php\";i:1584609480;}','yes');
INSERT INTO `wp_options` VALUES (151,'cptui_new_install','false','yes');
INSERT INTO `wp_options` VALUES (152,'cptui_post_types','a:1:{s:5:\"movie\";a:30:{s:4:\"name\";s:5:\"movie\";s:5:\"label\";s:6:\"Movies\";s:14:\"singular_label\";s:5:\"Movie\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:30:{s:9:\"menu_name\";s:9:\"My Movies\";s:9:\"all_items\";s:10:\"All Movies\";s:7:\"add_new\";s:7:\"Add new\";s:12:\"add_new_item\";s:13:\"Add new Movie\";s:9:\"edit_item\";s:10:\"Edit Movie\";s:8:\"new_item\";s:9:\"New Movie\";s:9:\"view_item\";s:10:\"View Movie\";s:10:\"view_items\";s:11:\"View Movies\";s:12:\"search_items\";s:13:\"Search Movies\";s:9:\"not_found\";s:15:\"No Movies found\";s:18:\"not_found_in_trash\";s:24:\"No Movies found in trash\";s:6:\"parent\";s:13:\"Parent Movie:\";s:14:\"featured_image\";s:29:\"Featured image for this Movie\";s:18:\"set_featured_image\";s:33:\"Set featured image for this Movie\";s:21:\"remove_featured_image\";s:36:\"Remove featured image for this Movie\";s:18:\"use_featured_image\";s:36:\"Use as featured image for this Movie\";s:8:\"archives\";s:14:\"Movie archives\";s:16:\"insert_into_item\";s:17:\"Insert into Movie\";s:21:\"uploaded_to_this_item\";s:20:\"Upload to this Movie\";s:17:\"filter_items_list\";s:18:\"Filter Movies list\";s:21:\"items_list_navigation\";s:22:\"Movies list navigation\";s:10:\"items_list\";s:11:\"Movies list\";s:10:\"attributes\";s:17:\"Movies attributes\";s:14:\"name_admin_bar\";s:5:\"Movie\";s:14:\"item_published\";s:15:\"Movie published\";s:24:\"item_published_privately\";s:26:\"Movie published privately.\";s:22:\"item_reverted_to_draft\";s:24:\"Movie reverted to draft.\";s:14:\"item_scheduled\";s:15:\"Movie scheduled\";s:12:\"item_updated\";s:14:\"Movie updated.\";s:17:\"parent_item_colon\";s:13:\"Parent Movie:\";}s:15:\"custom_supports\";s:0:\"\";}}','yes');
INSERT INTO `wp_options` VALUES (163,'theme_mods_movie_collection','a:1:{s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (166,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1584606224;s:7:\"checked\";a:6:{s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";s:23:\"understrap-master-child\";s:5:\"1.0.0\";s:17:\"understrap-master\";s:5:\"0.9.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (167,'theme_mods_understrap-master','a:4:{s:28:\"understrap_posts_index_style\";s:7:\"default\";s:27:\"understrap_sidebar_position\";s:5:\"right\";s:25:\"understrap_container_type\";s:9:\"container\";s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (170,'theme_mods_understrap-master-child','a:7:{s:28:\"understrap_posts_index_style\";s:7:\"default\";s:27:\"understrap_sidebar_position\";s:5:\"right\";s:25:\"understrap_container_type\";s:9:\"container\";s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:11:\"custom_logo\";s:0:\"\";s:16:\"background_color\";s:6:\"000000\";}','yes');
INSERT INTO `wp_options` VALUES (171,'current_theme','Understrap child','yes');
INSERT INTO `wp_options` VALUES (172,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (197,'fs_active_plugins','O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:24:\"kk-star-ratings/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.3.0\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1584613640;s:11:\"plugin_path\";s:25:\"kk-star-ratings/index.php\";}}s:7:\"abspath\";s:59:\"C:\\Users\\Alexander\\Local Sites\\movie-collection\\app\\public/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:25:\"kk-star-ratings/index.php\";s:8:\"sdk_path\";s:24:\"kk-star-ratings/freemius\";s:7:\"version\";s:5:\"2.3.0\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1584613640;}}','yes');
INSERT INTO `wp_options` VALUES (198,'fs_debug_mode','','yes');
INSERT INTO `wp_options` VALUES (199,'fs_accounts','a:6:{s:21:\"id_slug_type_path_map\";a:1:{i:3890;a:3:{s:4:\"slug\";s:15:\"kk-star-ratings\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:25:\"kk-star-ratings/index.php\";}}s:11:\"plugin_data\";a:1:{s:15:\"kk-star-ratings\";a:17:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:25:\"kk-star-ratings/index.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1583848183;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.3.0\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"4.1.3\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:21:\"is_plugin_new_install\";b:1;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:21:\"moviecollection.local\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1583848183;s:7:\"version\";s:5:\"4.1.3\";}s:17:\"was_plugin_loaded\";b:1;s:15:\"prev_is_premium\";b:0;s:16:\"uninstall_reason\";O:8:\"stdClass\":3:{s:2:\"id\";s:2:\"15\";s:4:\"info\";s:0:\"\";s:12:\"is_anonymous\";b:0;}s:12:\"is_anonymous\";a:3:{s:2:\"is\";b:1;s:9:\"timestamp\";i:1584551856;s:7:\"version\";s:5:\"4.1.3\";}}}s:13:\"file_slug_map\";a:1:{s:25:\"kk-star-ratings/index.php\";s:15:\"kk-star-ratings\";}s:7:\"plugins\";a:1:{s:15:\"kk-star-ratings\";O:9:\"FS_Plugin\":22:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:15:\"kk Star Ratings\";s:4:\"slug\";s:15:\"kk-star-ratings\";s:12:\"premium_slug\";s:23:\"kk-star-ratings-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:25:\"kk-star-ratings/index.php\";s:7:\"version\";s:5:\"4.1.3\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:10:\"public_key\";s:32:\"pk_e6d3c068ac8b44274990af9fc9eeb\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"3890\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"3a5fefdac0e01ff888e1a43a5282a0cb\";s:13:\"admin_notices\";a:1:{s:15:\"kk-star-ratings\";a:0:{}}}','yes');
INSERT INTO `wp_options` VALUES (200,'fs_api_cache','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (201,'fs_gdpr','a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}','yes');
INSERT INTO `wp_options` VALUES (204,'kksr_enable','1','yes');
INSERT INTO `wp_options` VALUES (205,'kksr_strategies','a:1:{i:0;s:6:\"guests\";}','yes');
INSERT INTO `wp_options` VALUES (206,'kksr_manual_control','a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}','yes');
INSERT INTO `wp_options` VALUES (207,'kksr_exclude_locations','a:4:{i:0;s:4:\"home\";i:1;s:8:\"archives\";i:2;s:4:\"post\";i:3;s:4:\"page\";}','yes');
INSERT INTO `wp_options` VALUES (208,'kksr_exclude_categories','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (209,'kksr_position','bottom-left','yes');
INSERT INTO `wp_options` VALUES (210,'kksr_gap','4','yes');
INSERT INTO `wp_options` VALUES (211,'kksr_stars','10','yes');
INSERT INTO `wp_options` VALUES (212,'kksr_size','24','yes');
INSERT INTO `wp_options` VALUES (213,'kksr_greet','Rate this [type]','yes');
INSERT INTO `wp_options` VALUES (214,'kksr_grs','','yes');
INSERT INTO `wp_options` VALUES (215,'kksr_sd','{\r\n    \"@context\": \"https://schema.org/\",\r\n    \"@type\": \"CreativeWorkSeries\",\r\n    \"name\": \"[title]\",\r\n    \"aggregateRating\": {\r\n        \"@type\": \"AggregateRating\",\r\n        \"ratingValue\": \"[score]\",\r\n        \"bestRating\": \"[best]\",\r\n        \"ratingCount\": \"[count]\"\r\n    }\r\n}','yes');
INSERT INTO `wp_options` VALUES (216,'kksr_ver','4.1.3','yes');
INSERT INTO `wp_options` VALUES (251,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1584609939;s:7:\"checked\";a:3:{s:25:\"kk-star-ratings/index.php\";s:5:\"4.1.3\";s:29:\"movie-plugin/movie-plugin.php\";s:3:\"2.1\";s:31:\"query-monitor/query-monitor.php\";s:5:\"3.5.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:25:\"kk-star-ratings/index.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/kk-star-ratings\";s:4:\"slug\";s:15:\"kk-star-ratings\";s:6:\"plugin\";s:25:\"kk-star-ratings/index.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/kk-star-ratings/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/kk-star-ratings.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/kk-star-ratings/assets/icon-256x256.jpg?rev=2140680\";s:2:\"1x\";s:68:\"https://ps.w.org/kk-star-ratings/assets/icon-128x128.jpg?rev=2140680\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/kk-star-ratings/assets/banner-1544x500.jpg?rev=2140680\";s:2:\"1x\";s:70:\"https://ps.w.org/kk-star-ratings/assets/banner-772x250.jpg?rev=2140680\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"query-monitor/query-monitor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/query-monitor\";s:4:\"slug\";s:13:\"query-monitor\";s:6:\"plugin\";s:31:\"query-monitor/query-monitor.php\";s:11:\"new_version\";s:5:\"3.5.2\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/query-monitor/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/query-monitor.3.5.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/query-monitor/assets/icon-256x256.png?rev=2056073\";s:2:\"1x\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2056073\";s:3:\"svg\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2056073\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/query-monitor/assets/banner-1544x500.png?rev=1629576\";s:2:\"1x\";s:68:\"https://ps.w.org/query-monitor/assets/banner-772x250.png?rev=1731469\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (325,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (368,'recovery_mode_email_last_sent','1584369950','yes');
INSERT INTO `wp_options` VALUES (459,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (473,'_site_transient_timeout_browser_97fc230848bc304ccee289a55f3e5339','1585052674','no');
INSERT INTO `wp_options` VALUES (474,'_site_transient_browser_97fc230848bc304ccee289a55f3e5339','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"80.0.3987.132\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (475,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1585052674','no');
INSERT INTO `wp_options` VALUES (476,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (504,'_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e','1584655855','no');
INSERT INTO `wp_options` VALUES (505,'_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e','a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (509,'_transient_timeout_plugin_slugs','1584699062','no');
INSERT INTO `wp_options` VALUES (510,'_transient_plugin_slugs','a:3:{i:0;s:25:\"kk-star-ratings/index.php\";i:1;s:29:\"movie-plugin/movie-plugin.php\";i:2;s:31:\"query-monitor/query-monitor.php\";}','no');
INSERT INTO `wp_options` VALUES (517,'_site_transient_timeout_theme_roots','1584608023','no');
INSERT INTO `wp_options` VALUES (518,'_site_transient_theme_roots','a:6:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:23:\"understrap-master-child\";s:7:\"/themes\";s:17:\"understrap-master\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (553,'_transient_is_multi_author','0','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=351 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (25,14,'_wp_attached_file','2020/03/film-roll-vector-14.png');
INSERT INTO `wp_postmeta` VALUES (26,14,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2737;s:6:\"height\";i:1029;s:4:\"file\";s:31:\"2020/03/film-roll-vector-14.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"film-roll-vector-14-300x113.png\";s:5:\"width\";i:300;s:6:\"height\";i:113;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"film-roll-vector-14-1024x385.png\";s:5:\"width\";i:1024;s:6:\"height\";i:385;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"film-roll-vector-14-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"film-roll-vector-14-768x289.png\";s:5:\"width\";i:768;s:6:\"height\";i:289;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:32:\"film-roll-vector-14-1536x577.png\";s:5:\"width\";i:1536;s:6:\"height\";i:577;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:32:\"film-roll-vector-14-2048x770.png\";s:5:\"width\";i:2048;s:6:\"height\";i:770;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (27,14,'_wp_attachment_image_alt','A film roll');
INSERT INTO `wp_postmeta` VALUES (28,15,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (29,15,'_wp_trash_meta_time','1583843994');
INSERT INTO `wp_postmeta` VALUES (30,16,'_wp_attached_file','2020/03/cropped-film-roll-vector-14.png');
INSERT INTO `wp_postmeta` VALUES (31,16,'_wp_attachment_context','site-icon');
INSERT INTO `wp_postmeta` VALUES (32,16,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:39:\"2020/03/cropped-film-roll-vector-14.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"cropped-film-roll-vector-14-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"cropped-film-roll-vector-14-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:39:\"cropped-film-roll-vector-14-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:39:\"cropped-film-roll-vector-14-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:39:\"cropped-film-roll-vector-14-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:37:\"cropped-film-roll-vector-14-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (33,17,'_wp_attached_file','2020/03/cropped-film-roll-vector-14-1.png');
INSERT INTO `wp_postmeta` VALUES (34,17,'_wp_attachment_context','custom-logo');
INSERT INTO `wp_postmeta` VALUES (35,17,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:664;s:6:\"height\";i:610;s:4:\"file\";s:41:\"2020/03/cropped-film-roll-vector-14-1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"cropped-film-roll-vector-14-1-300x276.png\";s:5:\"width\";i:300;s:6:\"height\";i:276;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"cropped-film-roll-vector-14-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (36,18,'_edit_lock','1583844133:1');
INSERT INTO `wp_postmeta` VALUES (37,19,'_wp_attached_file','2020/03/cropped-film-roll-vector-14-2.png');
INSERT INTO `wp_postmeta` VALUES (38,19,'_wp_attachment_context','custom-logo');
INSERT INTO `wp_postmeta` VALUES (39,19,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:2737;s:6:\"height\";i:608;s:4:\"file\";s:41:\"2020/03/cropped-film-roll-vector-14-2.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"cropped-film-roll-vector-14-2-300x67.png\";s:5:\"width\";i:300;s:6:\"height\";i:67;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"cropped-film-roll-vector-14-2-1024x227.png\";s:5:\"width\";i:1024;s:6:\"height\";i:227;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"cropped-film-roll-vector-14-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"cropped-film-roll-vector-14-2-768x171.png\";s:5:\"width\";i:768;s:6:\"height\";i:171;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:42:\"cropped-film-roll-vector-14-2-1536x341.png\";s:5:\"width\";i:1536;s:6:\"height\";i:341;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:42:\"cropped-film-roll-vector-14-2-2048x455.png\";s:5:\"width\";i:2048;s:6:\"height\";i:455;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (40,20,'_wp_attached_file','2020/03/cropped-film-roll-vector-14-3.png');
INSERT INTO `wp_postmeta` VALUES (41,20,'_wp_attachment_context','site-icon');
INSERT INTO `wp_postmeta` VALUES (42,20,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:41:\"2020/03/cropped-film-roll-vector-14-3.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"cropped-film-roll-vector-14-3-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"cropped-film-roll-vector-14-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:41:\"cropped-film-roll-vector-14-3-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:41:\"cropped-film-roll-vector-14-3-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:41:\"cropped-film-roll-vector-14-3-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:39:\"cropped-film-roll-vector-14-3-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (43,18,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (44,18,'_wp_trash_meta_time','1583844173');
INSERT INTO `wp_postmeta` VALUES (45,21,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (46,21,'_wp_trash_meta_time','1583844190');
INSERT INTO `wp_postmeta` VALUES (47,22,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (48,22,'_wp_trash_meta_time','1583844300');
INSERT INTO `wp_postmeta` VALUES (49,23,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (50,23,'_wp_trash_meta_time','1583844388');
INSERT INTO `wp_postmeta` VALUES (52,1,'_edit_lock','1583846691:1');
INSERT INTO `wp_postmeta` VALUES (57,29,'_edit_lock','1584613645:1');
INSERT INTO `wp_postmeta` VALUES (58,29,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (59,29,'imdb_id','tt8579674');
INSERT INTO `wp_postmeta` VALUES (60,29,'_imdb_id','tt8579674');
INSERT INTO `wp_postmeta` VALUES (61,30,'_edit_lock','1584610904:1');
INSERT INTO `wp_postmeta` VALUES (62,30,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (63,30,'_imdb_id','tt0092067');
INSERT INTO `wp_postmeta` VALUES (64,29,'_kksr_casts','1');
INSERT INTO `wp_postmeta` VALUES (65,29,'_kksr_ratings','5');
INSERT INTO `wp_postmeta` VALUES (66,29,'_kksr_avg','5');
INSERT INTO `wp_postmeta` VALUES (67,29,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (70,29,'_kksr_status','');
INSERT INTO `wp_postmeta` VALUES (73,30,'_kksr_status','');
INSERT INTO `wp_postmeta` VALUES (76,30,'_kksr_casts','3');
INSERT INTO `wp_postmeta` VALUES (77,30,'_kksr_ratings','11');
INSERT INTO `wp_postmeta` VALUES (78,30,'_kksr_avg','3.6666666666667');
INSERT INTO `wp_postmeta` VALUES (79,30,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (80,1,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (81,1,'_wp_trash_meta_time','1584108488');
INSERT INTO `wp_postmeta` VALUES (82,1,'_wp_desired_post_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (83,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES (84,34,'_edit_lock','1584607119:1');
INSERT INTO `wp_postmeta` VALUES (88,34,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (89,34,'_imdb_id','tt3480822');
INSERT INTO `wp_postmeta` VALUES (90,34,'_kksr_status','');
INSERT INTO `wp_postmeta` VALUES (91,30,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (92,30,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (93,36,'_edit_lock','1584111525:1');
INSERT INTO `wp_postmeta` VALUES (94,37,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (95,37,'_wp_trash_meta_time','1584111713');
INSERT INTO `wp_postmeta` VALUES (96,38,'_edit_lock','1584610633:1');
INSERT INTO `wp_postmeta` VALUES (100,38,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (101,38,'_imdb_id','tt0068646');
INSERT INTO `wp_postmeta` VALUES (102,38,'_kksr_status','');
INSERT INTO `wp_postmeta` VALUES (103,40,'_edit_lock','1584113418:1');
INSERT INTO `wp_postmeta` VALUES (104,41,'_edit_lock','1584607157:1');
INSERT INTO `wp_postmeta` VALUES (105,41,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (106,41,'_imdb_id','tt0137523');
INSERT INTO `wp_postmeta` VALUES (107,41,'_kksr_status','');
INSERT INTO `wp_postmeta` VALUES (111,43,'_edit_lock','1584607168:1');
INSERT INTO `wp_postmeta` VALUES (115,43,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (116,43,'_imdb_id','tt0060196');
INSERT INTO `wp_postmeta` VALUES (117,43,'_kksr_status','');
INSERT INTO `wp_postmeta` VALUES (118,38,'_kksr_casts','2');
INSERT INTO `wp_postmeta` VALUES (119,38,'_kksr_ratings','5.5');
INSERT INTO `wp_postmeta` VALUES (120,38,'_kksr_avg','2.75');
INSERT INTO `wp_postmeta` VALUES (121,38,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (122,41,'_kksr_casts','1');
INSERT INTO `wp_postmeta` VALUES (123,41,'_kksr_ratings','4.5');
INSERT INTO `wp_postmeta` VALUES (124,41,'_kksr_avg','4.5');
INSERT INTO `wp_postmeta` VALUES (125,41,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (126,43,'_kksr_casts','5');
INSERT INTO `wp_postmeta` VALUES (127,43,'_kksr_ratings','21');
INSERT INTO `wp_postmeta` VALUES (128,43,'_kksr_avg','4.2');
INSERT INTO `wp_postmeta` VALUES (129,43,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (130,34,'_kksr_casts','1');
INSERT INTO `wp_postmeta` VALUES (131,34,'_kksr_ratings','2.5');
INSERT INTO `wp_postmeta` VALUES (132,34,'_kksr_avg','2.5');
INSERT INTO `wp_postmeta` VALUES (133,34,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (134,45,'_edit_lock','1584607276:1');
INSERT INTO `wp_postmeta` VALUES (138,45,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (139,45,'_imdb_id','tt0109830');
INSERT INTO `wp_postmeta` VALUES (140,45,'_kksr_status','');
INSERT INTO `wp_postmeta` VALUES (141,47,'_edit_lock','1584607286:1');
INSERT INTO `wp_postmeta` VALUES (145,47,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (146,47,'_imdb_id','tt0099685');
INSERT INTO `wp_postmeta` VALUES (147,47,'_kksr_status','');
INSERT INTO `wp_postmeta` VALUES (148,49,'_edit_lock','1584607296:1');
INSERT INTO `wp_postmeta` VALUES (152,49,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (153,49,'_imdb_id','tt0245429');
INSERT INTO `wp_postmeta` VALUES (154,49,'_kksr_status','');
INSERT INTO `wp_postmeta` VALUES (155,51,'_edit_lock','1584606640:1');
INSERT INTO `wp_postmeta` VALUES (159,51,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (160,51,'_imdb_id','tt0110413');
INSERT INTO `wp_postmeta` VALUES (161,51,'_kksr_status','');
INSERT INTO `wp_postmeta` VALUES (162,53,'_edit_lock','1584606921:1');
INSERT INTO `wp_postmeta` VALUES (163,53,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (164,53,'_imdb_id','tt1853728');
INSERT INTO `wp_postmeta` VALUES (165,53,'_kksr_status','');
INSERT INTO `wp_postmeta` VALUES (179,47,'_movie_published','21 Sep 1990');
INSERT INTO `wp_postmeta` VALUES (180,47,'_movie_actors','Robert De Niro, Ray Liotta, Joe Pesci, Lorraine Bracco');
INSERT INTO `wp_postmeta` VALUES (181,38,'_movie_published','24 Mar 1972');
INSERT INTO `wp_postmeta` VALUES (182,38,'_movie_actors','Marlon Brando, Al Pacino, James Caan, Richard S. Castellano');
INSERT INTO `wp_postmeta` VALUES (183,41,'_movie_published','15 Oct 1999');
INSERT INTO `wp_postmeta` VALUES (184,41,'_movie_actors','Edward Norton, Brad Pitt, Meat Loaf, Zach Grenier');
INSERT INTO `wp_postmeta` VALUES (185,30,'_movie_published','02 Aug 1986');
INSERT INTO `wp_postmeta` VALUES (186,30,'_movie_actors','Mayumi Tanaka, James Van Der Beek, Keiko Yokozawa, Kotoe Hatsui');
INSERT INTO `wp_postmeta` VALUES (187,51,'_movie_published','18 Nov 1994');
INSERT INTO `wp_postmeta` VALUES (188,51,'_movie_actors','Jean Reno, Gary Oldman, Natalie Portman, Danny Aiello');
INSERT INTO `wp_postmeta` VALUES (189,49,'_movie_published','28 Mar 2003');
INSERT INTO `wp_postmeta` VALUES (190,49,'_movie_actors','Rumi Hiiragi, Miyu Irino, Mari Natsuki, Takashi Naitô');
INSERT INTO `wp_postmeta` VALUES (191,45,'_movie_published','06 Jul 1994');
INSERT INTO `wp_postmeta` VALUES (192,45,'_movie_actors','Tom Hanks, Rebecca Williams, Sally Field, Michael Conner Humphreys');
INSERT INTO `wp_postmeta` VALUES (193,43,'_movie_published','29 Dec 1967');
INSERT INTO `wp_postmeta` VALUES (194,43,'_movie_actors','Eli Wallach, Clint Eastwood, Lee Van Cleef, Aldo Giuffrè');
INSERT INTO `wp_postmeta` VALUES (195,29,'_movie_published','10 Jan 2020');
INSERT INTO `wp_postmeta` VALUES (196,29,'_movie_actors','Dean-Charles Chapman, George MacKay, Daniel Mays, Colin Firth');
INSERT INTO `wp_postmeta` VALUES (197,34,'_movie_published','01 May 2020');
INSERT INTO `wp_postmeta` VALUES (198,34,'_movie_actors','Florence Pugh, Scarlett Johansson, Rachel Weisz, Robert Downey Jr.');
INSERT INTO `wp_postmeta` VALUES (199,61,'_wp_attached_file','2020/03/IMDB_icon-e1584434973912.png');
INSERT INTO `wp_postmeta` VALUES (200,61,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:25;s:6:\"height\";i:25;s:4:\"file\";s:36:\"2020/03/IMDB_icon-e1584434973912.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (201,61,'_edit_lock','1584383106:1');
INSERT INTO `wp_postmeta` VALUES (202,61,'_wp_attachment_backup_sizes','a:2:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:125;s:6:\"height\";i:125;s:4:\"file\";s:13:\"IMDB_icon.png\";}s:18:\"full-1584434973912\";a:3:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:28:\"IMDB_icon-e1584434844582.png\";}}');
INSERT INTO `wp_postmeta` VALUES (203,62,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (204,62,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (205,62,'_menu_item_object_id','62');
INSERT INTO `wp_postmeta` VALUES (206,62,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (207,62,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (208,62,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (209,62,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (210,62,'_menu_item_url','http://moviecollection.local/');
INSERT INTO `wp_postmeta` VALUES (211,62,'_menu_item_orphaned','1584442123');
INSERT INTO `wp_postmeta` VALUES (212,63,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (213,63,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (214,63,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (215,63,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (216,63,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (217,63,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (218,63,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (219,63,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (220,63,'_menu_item_orphaned','1584442124');
INSERT INTO `wp_postmeta` VALUES (221,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (222,2,'_wp_trash_meta_time','1584442151');
INSERT INTO `wp_postmeta` VALUES (223,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (224,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (225,3,'_wp_trash_meta_time','1584442154');
INSERT INTO `wp_postmeta` VALUES (226,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (236,67,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (237,67,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (238,67,'_menu_item_object_id','67');
INSERT INTO `wp_postmeta` VALUES (239,67,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (240,67,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (241,67,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (242,67,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (243,67,'_menu_item_url','http://moviecollection.local/?post_type=movie');
INSERT INTO `wp_postmeta` VALUES (245,68,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (246,68,'_wp_trash_meta_time','1584442411');
INSERT INTO `wp_postmeta` VALUES (247,69,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (248,69,'_wp_trash_meta_time','1584442445');
INSERT INTO `wp_postmeta` VALUES (249,14,'_edit_lock','1584442397:1');
INSERT INTO `wp_postmeta` VALUES (250,70,'_edit_lock','1584442526:1');
INSERT INTO `wp_postmeta` VALUES (251,70,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (252,70,'_wp_trash_meta_time','1584442572');
INSERT INTO `wp_postmeta` VALUES (253,71,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (254,71,'_wp_trash_meta_time','1584442616');
INSERT INTO `wp_postmeta` VALUES (255,72,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (256,72,'_wp_trash_meta_time','1584442894');
INSERT INTO `wp_postmeta` VALUES (257,73,'_edit_lock','1584447805:1');
INSERT INTO `wp_postmeta` VALUES (258,75,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (259,75,'_wp_trash_meta_time','1584449263');
INSERT INTO `wp_postmeta` VALUES (260,76,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (261,76,'_wp_trash_meta_time','1584455076');
INSERT INTO `wp_postmeta` VALUES (262,51,'_movie_poster','https://m.media-amazon.com/images/M/MV5BZDAwYTlhMDEtNTg0OS00NDY2LWJjOWItNWY3YTZkM2UxYzUzXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg');
INSERT INTO `wp_postmeta` VALUES (263,53,'_movie_actors','Jamie Foxx, Christoph Waltz, Leonardo DiCaprio, Kerry Washington');
INSERT INTO `wp_postmeta` VALUES (264,53,'_movie_published','25 Dec 2012');
INSERT INTO `wp_postmeta` VALUES (265,53,'_movie_poster','https://m.media-amazon.com/images/M/MV5BMjIyNTQ5NjQ1OV5BMl5BanBnXkFtZTcwODg1MDU4OA@@._V1_SX300.jpg');
INSERT INTO `wp_postmeta` VALUES (266,38,'_movie_poster','https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg');
INSERT INTO `wp_postmeta` VALUES (267,29,'_movie_poster','https://m.media-amazon.com/images/M/MV5BOTdmNTFjNDEtNzg0My00ZjkxLTg1ZDAtZTdkMDc2ZmFiNWQ1XkEyXkFqcGdeQXVyNTAzNzgwNTg@._V1_SX300.jpg');
INSERT INTO `wp_postmeta` VALUES (268,41,'_movie_poster','https://m.media-amazon.com/images/M/MV5BMmEzNTkxYjQtZTc0MC00YTVjLTg5ZTEtZWMwOWVlYzY0NWIwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg');
INSERT INTO `wp_postmeta` VALUES (269,43,'_movie_poster','https://m.media-amazon.com/images/M/MV5BOTQ5NDI3MTI4MF5BMl5BanBnXkFtZTgwNDQ4ODE5MDE@._V1_SX300.jpg');
INSERT INTO `wp_postmeta` VALUES (270,30,'_movie_poster','https://m.media-amazon.com/images/M/MV5BNTg0NmI1ZGQtZTUxNC00NTgxLThjMDUtZmRlYmEzM2MwOWYwXkEyXkFqcGdeQXVyMzM4MjM0Nzg@._V1_SX300.jpg');
INSERT INTO `wp_postmeta` VALUES (271,34,'_movie_poster','https://m.media-amazon.com/images/M/MV5BZGRlNTY3NGYtM2YzZS00N2YyLTg0ZDYtNmY2ZDg2NDM3N2JlXkEyXkFqcGdeQXVyNTI4MzE4MDU@._V1_SX300.jpg');
INSERT INTO `wp_postmeta` VALUES (272,45,'_movie_poster','https://m.media-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg');
INSERT INTO `wp_postmeta` VALUES (273,47,'_movie_poster','https://m.media-amazon.com/images/M/MV5BY2NkZjEzMDgtN2RjYy00YzM1LWI4ZmQtMjIwYjFjNmI3ZGEwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg');
INSERT INTO `wp_postmeta` VALUES (274,49,'_movie_poster','https://m.media-amazon.com/images/M/MV5BNmU5OTQ0OWQtOTY0OS00Yjg4LWE1NDYtNDRhYWMxYWY4OTMwXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg');
INSERT INTO `wp_postmeta` VALUES (275,77,'_edit_lock','1584608322:1');
INSERT INTO `wp_postmeta` VALUES (276,77,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (277,77,'_imdb_id','tt2584384');
INSERT INTO `wp_postmeta` VALUES (278,77,'_movie_actors','Roman Griffin Davis, Thomasin McKenzie, Scarlett Johansson, Taika Waititi');
INSERT INTO `wp_postmeta` VALUES (279,77,'_movie_published','08 Nov 2019');
INSERT INTO `wp_postmeta` VALUES (280,77,'_movie_poster','https://m.media-amazon.com/images/M/MV5BZjU0Yzk2MzEtMjAzYy00MzY0LTg2YmItM2RkNzdkY2ZhN2JkXkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_SX300.jpg');
INSERT INTO `wp_postmeta` VALUES (281,77,'_kksr_status','');
INSERT INTO `wp_postmeta` VALUES (282,78,'_edit_lock','1584608398:1');
INSERT INTO `wp_postmeta` VALUES (283,78,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (284,78,'_imdb_id','tt7131622');
INSERT INTO `wp_postmeta` VALUES (285,78,'_movie_actors','Leonardo DiCaprio, Brad Pitt, Margot Robbie, Emile Hirsch');
INSERT INTO `wp_postmeta` VALUES (286,78,'_movie_published','26 Jul 2019');
INSERT INTO `wp_postmeta` VALUES (287,78,'_movie_poster','https://m.media-amazon.com/images/M/MV5BOTg4ZTNkZmUtMzNlZi00YmFjLTk1MmUtNWQwNTM0YjcyNTNkXkEyXkFqcGdeQXVyNjg2NjQwMDQ@._V1_SX300.jpg');
INSERT INTO `wp_postmeta` VALUES (288,78,'_kksr_status','');
INSERT INTO `wp_postmeta` VALUES (289,79,'_edit_lock','1584608485:1');
INSERT INTO `wp_postmeta` VALUES (290,79,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (291,79,'_imdb_id','tt6751668');
INSERT INTO `wp_postmeta` VALUES (292,79,'_movie_actors','Kang-ho Song, Sun-kyun Lee, Yeo-jeong Jo, Woo-sik Choi');
INSERT INTO `wp_postmeta` VALUES (293,79,'_movie_published','08 Nov 2019');
INSERT INTO `wp_postmeta` VALUES (294,79,'_movie_poster','https://m.media-amazon.com/images/M/MV5BYWZjMjk3ZTItODQ2ZC00NTY5LWE0ZDYtZTI3MjcwN2Q5NTVkXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_SX300.jpg');
INSERT INTO `wp_postmeta` VALUES (295,79,'_kksr_status','');
INSERT INTO `wp_postmeta` VALUES (296,80,'_edit_lock','1584608537:1');
INSERT INTO `wp_postmeta` VALUES (297,80,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (298,80,'_imdb_id','tt7653254');
INSERT INTO `wp_postmeta` VALUES (299,80,'_movie_actors','Adam Driver, Scarlett Johansson, Julia Greer, Azhy Robertson');
INSERT INTO `wp_postmeta` VALUES (300,80,'_movie_published','06 Dec 2019');
INSERT INTO `wp_postmeta` VALUES (301,80,'_movie_poster','https://m.media-amazon.com/images/M/MV5BZGVmY2RjNDgtMTc3Yy00YmY0LTgwODItYzBjNWJhNTRlYjdkXkEyXkFqcGdeQXVyMjM4NTM5NDY@._V1_SX300.jpg');
INSERT INTO `wp_postmeta` VALUES (302,80,'_kksr_status','');
INSERT INTO `wp_postmeta` VALUES (303,81,'_edit_lock','1584610714:1');
INSERT INTO `wp_postmeta` VALUES (304,81,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (305,81,'_imdb_id','tt2948372');
INSERT INTO `wp_postmeta` VALUES (306,81,'_movie_actors','Jamie Foxx, Tina Fey, Quest Love, Phylicia Rashad');
INSERT INTO `wp_postmeta` VALUES (307,81,'_movie_published','19 Jun 2020');
INSERT INTO `wp_postmeta` VALUES (308,81,'_movie_poster','https://m.media-amazon.com/images/M/MV5BN2YxY2M5N2YtZmJhNS00YTE1LWE5OTQtMTYyYzkyMzIzOTE1XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_SX300.jpg');
INSERT INTO `wp_postmeta` VALUES (309,81,'_kksr_status','');
INSERT INTO `wp_postmeta` VALUES (310,81,'_kksr_casts','3');
INSERT INTO `wp_postmeta` VALUES (311,81,'_kksr_ratings','12.5');
INSERT INTO `wp_postmeta` VALUES (312,81,'_kksr_avg','4.1666666666667');
INSERT INTO `wp_postmeta` VALUES (313,81,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (314,81,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (315,81,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (316,82,'_edit_lock','1584610134:1');
INSERT INTO `wp_postmeta` VALUES (317,82,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (318,82,'_kksr_status','');
INSERT INTO `wp_postmeta` VALUES (319,82,'_imdb_id','tt7286456');
INSERT INTO `wp_postmeta` VALUES (320,82,'_movie_actors','Joaquin Phoenix, Robert De Niro, Zazie Beetz, Frances Conroy');
INSERT INTO `wp_postmeta` VALUES (321,82,'_movie_published','04 Oct 2019');
INSERT INTO `wp_postmeta` VALUES (322,82,'_movie_poster','https://m.media-amazon.com/images/M/MV5BNGVjNWI4ZGUtNzE0MS00YTJmLWE0ZDctN2ZiYTk2YmI3NTYyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SX300.jpg');
INSERT INTO `wp_postmeta` VALUES (323,38,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (324,43,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (325,43,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (326,43,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (327,43,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (328,83,'_edit_lock','1584612576:1');
INSERT INTO `wp_postmeta` VALUES (329,83,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (330,83,'_kksr_status','');
INSERT INTO `wp_postmeta` VALUES (331,83,'_imdb_id','tt6048922');
INSERT INTO `wp_postmeta` VALUES (332,83,'_movie_actors','Tom Hanks, Elisabeth Shue, Stephen Graham, Karl Glusman');
INSERT INTO `wp_postmeta` VALUES (333,83,'_movie_published','12 Jun 2020');
INSERT INTO `wp_postmeta` VALUES (334,83,'_movie_poster','https://m.media-amazon.com/images/M/MV5BMmNmN2JhNGQtZjkxYi00ZWE0LWFjYTctYjE2NjI2NWYwNjAxXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SX300.jpg');
INSERT INTO `wp_postmeta` VALUES (335,83,'_kksr_casts','1');
INSERT INTO `wp_postmeta` VALUES (336,83,'_kksr_ratings','5');
INSERT INTO `wp_postmeta` VALUES (337,83,'_kksr_avg','5');
INSERT INTO `wp_postmeta` VALUES (338,83,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
INSERT INTO `wp_postmeta` VALUES (339,84,'_edit_lock','1584613551:1');
INSERT INTO `wp_postmeta` VALUES (340,85,'_edit_lock','1584613707:1');
INSERT INTO `wp_postmeta` VALUES (341,85,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (342,85,'_kksr_status','');
INSERT INTO `wp_postmeta` VALUES (343,85,'_imdb_id','tt8946378');
INSERT INTO `wp_postmeta` VALUES (344,85,'_movie_actors','Daniel Craig, Chris Evans, Ana de Armas, Jamie Lee Curtis');
INSERT INTO `wp_postmeta` VALUES (345,85,'_movie_published','27 Nov 2019');
INSERT INTO `wp_postmeta` VALUES (346,85,'_movie_poster','https://m.media-amazon.com/images/M/MV5BMGUwZjliMTAtNzAxZi00MWNiLWE2NzgtZGUxMGQxZjhhNDRiXkEyXkFqcGdeQXVyNjU1NzU3MzE@._V1_SX300.jpg');
INSERT INTO `wp_postmeta` VALUES (347,85,'_kksr_casts','1');
INSERT INTO `wp_postmeta` VALUES (348,85,'_kksr_ratings','3.5');
INSERT INTO `wp_postmeta` VALUES (349,85,'_kksr_avg','3.5');
INSERT INTO `wp_postmeta` VALUES (350,85,'_kksr_ref','f528764d624db129b32c21fbca0cb8d6');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-03-10 11:48:22','2020-03-10 11:48:22','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','trash','open','open','','hello-world__trashed','','','2020-03-13 14:08:08','2020-03-13 14:08:08','',0,'http://moviecollection.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2020-03-10 11:48:22','2020-03-10 11:48:22','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://moviecollection.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2020-03-17 10:49:11','2020-03-17 10:49:11','',0,'http://moviecollection.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2020-03-10 11:48:22','2020-03-10 11:48:22','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://moviecollection.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2020-03-17 10:49:14','2020-03-17 10:49:14','',0,'http://moviecollection.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2020-03-10 12:39:08','2020-03-10 12:39:08','','film-roll-vector-14','Movie collection','inherit','open','closed','','film-roll-vector-14','','','2020-03-10 12:39:38','2020-03-10 12:39:38','',0,'http://moviecollection.local/wp-content/uploads/2020/03/film-roll-vector-14.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (15,1,'2020-03-10 12:39:54','2020-03-10 12:39:54','{\n    \"understrap-master-child::custom_logo\": {\n        \"value\": 14,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-10 12:39:54\"\n    }\n}','','','trash','closed','closed','','b6123d87-dd86-4134-882a-8a3edd66f0c7','','','2020-03-10 12:39:54','2020-03-10 12:39:54','',0,'http://moviecollection.local/b6123d87-dd86-4134-882a-8a3edd66f0c7/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2020-03-10 12:40:55','2020-03-10 12:40:55','http://moviecollection.local/wp-content/uploads/2020/03/cropped-film-roll-vector-14.png','cropped-film-roll-vector-14.png','','inherit','open','closed','','cropped-film-roll-vector-14-png','','','2020-03-10 12:40:55','2020-03-10 12:40:55','',0,'http://moviecollection.local/wp-content/uploads/2020/03/cropped-film-roll-vector-14.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (17,1,'2020-03-10 12:41:13','2020-03-10 12:41:13','http://moviecollection.local/wp-content/uploads/2020/03/cropped-film-roll-vector-14-1.png','cropped-film-roll-vector-14-1.png','','inherit','open','closed','','cropped-film-roll-vector-14-1-png','','','2020-03-10 12:41:13','2020-03-10 12:41:13','',0,'http://moviecollection.local/wp-content/uploads/2020/03/cropped-film-roll-vector-14-1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (18,1,'2020-03-10 12:42:53','2020-03-10 12:42:53','{\n    \"site_icon\": {\n        \"value\": 20,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-10 12:42:53\"\n    },\n    \"understrap-master-child::background_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-10 12:41:13\"\n    },\n    \"understrap-master-child::custom_logo\": {\n        \"value\": 14,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-10 12:42:13\"\n    }\n}','','','trash','closed','closed','','77f3d987-b29c-4653-9756-ba582b1bec5f','','','2020-03-10 12:42:53','2020-03-10 12:42:53','',0,'http://moviecollection.local/?p=18',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2020-03-10 12:41:51','2020-03-10 12:41:51','http://moviecollection.local/wp-content/uploads/2020/03/cropped-film-roll-vector-14-2.png','cropped-film-roll-vector-14-2.png','','inherit','open','closed','','cropped-film-roll-vector-14-2-png','','','2020-03-10 12:41:51','2020-03-10 12:41:51','',0,'http://moviecollection.local/wp-content/uploads/2020/03/cropped-film-roll-vector-14-2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (20,1,'2020-03-10 12:42:49','2020-03-10 12:42:49','http://moviecollection.local/wp-content/uploads/2020/03/cropped-film-roll-vector-14-3.png','cropped-film-roll-vector-14-3.png','','inherit','open','closed','','cropped-film-roll-vector-14-3-png','','','2020-03-10 12:42:49','2020-03-10 12:42:49','',0,'http://moviecollection.local/wp-content/uploads/2020/03/cropped-film-roll-vector-14-3.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (21,1,'2020-03-10 12:43:10','2020-03-10 12:43:10','{\n    \"blogdescription\": {\n        \"value\": \"Wordpress site for movies!\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-10 12:43:10\"\n    }\n}','','','trash','closed','closed','','9d392e51-bd10-47fc-b21a-754a6ce36027','','','2020-03-10 12:43:10','2020-03-10 12:43:10','',0,'http://moviecollection.local/9d392e51-bd10-47fc-b21a-754a6ce36027/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2020-03-10 12:45:00','2020-03-10 12:45:00','{\n    \"understrap-master-child::background_color\": {\n        \"value\": \"#ff0000\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-10 12:45:00\"\n    }\n}','','','trash','closed','closed','','f5c4ec60-cae3-437e-8150-4444e3525f71','','','2020-03-10 12:45:00','2020-03-10 12:45:00','',0,'http://moviecollection.local/f5c4ec60-cae3-437e-8150-4444e3525f71/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2020-03-10 12:46:28','2020-03-10 12:46:28','{\n    \"understrap-master-child::background_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-10 12:46:28\"\n    }\n}','','','trash','closed','closed','','8cc3cb8c-f576-4326-ab55-5bf690fabc64','','','2020-03-10 12:46:28','2020-03-10 12:46:28','',0,'http://moviecollection.local/8cc3cb8c-f576-4326-ab55-5bf690fabc64/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2020-03-10 13:30:22','2020-03-10 13:30:22','April 6th, 1917. As a regiment assembles to wage war deep in enemy territory, two soldiers are assigned to race against time and deliver a message that will stop 1,600 men from walking straight into a deadly trap.','1917','','publish','closed','closed','','1917','','','2020-03-19 10:27:25','2020-03-19 10:27:25','',0,'http://moviecollection.local/?post_type=movie&#038;p=29',0,'movie','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2020-03-10 13:46:22','2020-03-10 13:46:22','A young boy stumbles into a mysterious girl who floats down from the sky. The girl, Sheeta, was chased by pirates, army and government secret agents. In saving her life, they begin a high flying adventure that goes through all sorts of flying machines, eventually searching for Sheeta\'s identity in a floating castle of a lost civilization.','Castle in the Sky','','publish','closed','closed','','laputa-slottet-i-himlen','','','2020-03-19 08:39:39','2020-03-19 08:39:39','',0,'http://moviecollection.local/?post_type=movie&#038;p=30',0,'movie','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2020-03-13 14:08:08','2020-03-13 14:08:08','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2020-03-13 14:08:08','2020-03-13 14:08:08','',1,'http://moviecollection.local/1-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2020-03-13 14:08:38','2020-03-13 14:08:38','A film about Natasha Romanoff in her quests between the films Civil War and Infinity War.','Black Widow','','publish','closed','closed','','black-widow','','','2020-03-19 08:40:58','2020-03-19 08:40:58','',0,'http://moviecollection.local/?post_type=movie&#038;p=34',0,'movie','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2020-03-13 15:01:08','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-03-13 15:01:08','0000-00-00 00:00:00','',0,'http://moviecollection.local/?p=36',0,'post','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2020-03-13 15:01:53','2020-03-13 15:01:53','{\n    \"understrap-master-child::background_color\": {\n        \"value\": \"#000000\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-13 15:01:53\"\n    }\n}','','','trash','closed','closed','','3be89f79-3c2e-4459-ace5-38925f75ddfd','','','2020-03-13 15:01:53','2020-03-13 15:01:53','',0,'http://moviecollection.local/3be89f79-3c2e-4459-ace5-38925f75ddfd/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2020-03-13 15:31:06','2020-03-13 15:31:06','When the aging head of a famous crime family decides to transfer his position to one of his subalterns, a series of unfortunate events start happening to the family, and a war begins between all the well-known families leading to insolence, deportation, murder and revenge, and ends with the favorable successor being finally chosen.','The Godfather','','publish','closed','closed','','the-godfather','','','2020-03-19 09:26:05','2020-03-19 09:26:05','',0,'http://moviecollection.local/?post_type=movie&#038;p=38',0,'movie','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2020-03-13 15:32:40','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-03-13 15:32:40','0000-00-00 00:00:00','',0,'http://moviecollection.local/?p=40',0,'post','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2020-03-13 15:32:56','2020-03-13 15:32:56','A nameless first person narrator (Edward Norton) attends support groups in attempt to subdue his emotional state and relieve his insomniac state. When he meets Marla (Helena Bonham Carter), another fake attendee of support groups, his life seems to become a little more bearable. However when he associates himself with Tyler (Brad Pitt) he is dragged into an underground fight club and soap making scheme. Together the two men spiral out of control and engage in competitive rivalry for love and power. When the narrator is exposed to the hidden agenda of Tyler\'s fight club, he must accept the awful truth that Tyler may not be who he says he is.','Fight Club','','publish','closed','closed','','fight-club','','','2020-03-19 08:39:17','2020-03-19 08:39:17','',0,'http://moviecollection.local/?post_type=movie&#038;p=41',0,'movie','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2020-03-13 15:34:26','2020-03-13 15:34:26','Blondie (The Good) is a professional gunslinger who is out trying to earn a few dollars. Angel Eyes (The Bad) is a hit man who always commits to a task and sees it through, as long as he is paid to do so. And Tuco (The Ugly) is a wanted outlaw trying to take care of his own hide. Tuco and Blondie share a partnership together making money off Tuco\'s bounty, but when Blondie unties the partnership, Tuco tries to hunt down Blondie. When Blondie and Tuco come across a horse carriage loaded with dead bodies, they soon learn from the only survivor (Bill Carson) that he and a few other men have buried a stash of gold in a cemetery. Unfortunately Carson dies and Tuco only finds out the name of the cemetery, while Blondie finds out the name on the grave. Now the two must keep each other alive in order to find the gold. Angel Eyes (who had been looking for Bill Carson) discovers that Tuco and Blondie met with Carson and knows they know the location of the gold. All he needs is for the two to lead him to it. Now The Good, The Bad and The Ugly must all battle it out to get their hands on $200,000 worth of gold.','The Good, the Bad and the Ugly','','publish','closed','closed','','the-good-the-bad-the-ugly','','','2020-03-19 08:39:28','2020-03-19 08:39:28','',0,'http://moviecollection.local/?post_type=movie&#038;p=43',0,'movie','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2020-03-13 15:48:16','2020-03-13 15:48:16','Forrest Gump is a simple man with a low I.Q. but good intentions. He is running through childhood with his best and only friend Jenny. His \'mama\' teaches him the ways of life and leaves him to choose his destiny. Forrest joins the army for service in Vietnam, finding new friends called Dan and Bubba, he wins medals, creates a famous shrimp fishing fleet, inspires people to jog, starts a ping-pong craze, creates the smiley, writes bumper stickers and songs, donates to people and meets the president several times. However, this is all irrelevant to Forrest who can only think of his childhood sweetheart Jenny Curran, who has messed up her life. Although in the end all he wants to prove is that anyone can love anyone.','Forrest Gump','','publish','closed','closed','','forest-gump','','','2020-03-19 08:41:15','2020-03-19 08:41:15','',0,'http://moviecollection.local/?post_type=movie&#038;p=45',0,'movie','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2020-03-13 15:49:44','2020-03-13 15:49:44','Henry Hill might be a small time gangster, who may have taken part in a robbery with Jimmy Conway and Tommy De Vito, two other gangsters who might have set their sights a bit higher. His two partners could kill off everyone else involved in the robbery, and slowly start to think about climbing up through the hierarchy of the Mob. Henry, however, might be badly affected by his partners\' success, but will he consider stooping low enough to bring about the downfall of Jimmy and Tommy?','Goodfellas','','publish','closed','closed','','goodfellas','','','2020-03-19 08:41:25','2020-03-19 08:41:25','',0,'http://moviecollection.local/?post_type=movie&#038;p=47',0,'movie','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2020-03-13 15:50:59','2020-03-13 15:50:59','Chihiro and her parents are moving to a small Japanese town in the countryside, much to Chihiro\'s dismay. On the way to their new home, Chihiro\'s father makes a wrong turn and drives down a lonely one-lane road which dead-ends in front of a tunnel. Her parents decide to stop the car and explore the area. They go through the tunnel and find an abandoned amusement park on the other side, with its own little town. When her parents see a restaurant with great-smelling food but no staff, they decide to eat and pay later. However, Chihiro refuses to eat and decides to explore the theme park a bit more. She meets a boy named Haku who tells her that Chihiro and her parents are in danger, and they must leave immediately. She runs to the restaurant and finds that her parents have turned into pigs. In addition, the theme park turns out to be a town inhabited by demons, spirits, and evil gods. At the center of the town is a bathhouse where these creatures go to relax. The owner of the bathhouse is the evil witch Yubaba, who is intent on keeping all trespassers as captive workers, including Chihiro. Chihiro must rely on Haku to save her parents in hopes of returning to their world.','Spirited Away','','publish','closed','closed','','spirited-away','','','2020-03-19 08:41:35','2020-03-19 08:41:35','',0,'http://moviecollection.local/?post_type=movie&#038;p=49',0,'movie','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2020-03-13 15:51:52','2020-03-13 15:51:52','After her father, mother, older sister and little brother are killed by her father\'s employers, the 12-year-old daughter of an abject drug dealer is forced to take refuge in the apartment of a professional hitman who at her request teaches her the methods of his job so she can take her revenge on the corrupt DEA agent who ruined her life by killing her beloved brother.','Léon: The Professional','','publish','closed','closed','','leon','','','2020-03-19 08:30:40','2020-03-19 08:30:40','',0,'http://moviecollection.local/?post_type=movie&#038;p=51',0,'movie','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2020-03-13 15:52:59','2020-03-13 15:52:59','A German dentist buys the freedom of a slave and trains him with the intent to make him his deputy bounty hunter. Instead, he is led to the site of the slave\'s wife who belongs to a ruthless plantation owner.','Django Unchained','','publish','closed','closed','','django-unchained','','','2020-03-19 08:35:21','2020-03-19 08:35:21','',0,'http://moviecollection.local/?post_type=movie&#038;p=53',0,'movie','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2020-03-16 18:25:06','2020-03-16 18:25:06','','IMDB_icon','','inherit','closed','closed','','imdb_icon','','','2020-03-16 18:25:06','2020-03-16 18:25:06','',0,'http://moviecollection.local/wp-content/uploads/2020/03/IMDB_icon.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (62,1,'2020-03-17 10:48:43','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2020-03-17 10:48:43','0000-00-00 00:00:00','',0,'http://moviecollection.local/?p=62',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2020-03-17 10:48:43','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2020-03-17 10:48:43','0000-00-00 00:00:00','',0,'http://moviecollection.local/?p=63',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2020-03-17 10:49:11','2020-03-17 10:49:11','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://moviecollection.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2020-03-17 10:49:11','2020-03-17 10:49:11','',2,'http://moviecollection.local/2-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2020-03-17 10:49:14','2020-03-17 10:49:14','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://moviecollection.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2020-03-17 10:49:14','2020-03-17 10:49:14','',3,'http://moviecollection.local/3-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2020-03-17 10:52:31','2020-03-17 10:52:31','','Archive','','publish','closed','closed','','movie-archive','','','2020-03-17 14:24:36','2020-03-17 14:24:36','',0,'http://moviecollection.local/?p=67',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2020-03-17 10:53:30','2020-03-17 10:53:30','{\n    \"understrap-master-child::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-17 10:53:30\"\n    },\n    \"understrap-master-child::nav_menu_locations[primary]\": {\n        \"value\": 3,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-17 10:53:30\"\n    }\n}','','','trash','closed','closed','','8c92dd0a-7ced-4c00-acf8-7b9f5cf75107','','','2020-03-17 10:53:30','2020-03-17 10:53:30','',0,'http://moviecollection.local/8c92dd0a-7ced-4c00-acf8-7b9f5cf75107/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2020-03-17 10:54:05','2020-03-17 10:54:05','{\n    \"sidebars_widgets[statichero]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-17 10:54:05\"\n    }\n}','','','trash','closed','closed','','8e7459de-ceaf-42c0-87e0-1e5c6905c480','','','2020-03-17 10:54:05','2020-03-17 10:54:05','',0,'http://moviecollection.local/8e7459de-ceaf-42c0-87e0-1e5c6905c480/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2020-03-17 10:56:12','2020-03-17 10:56:12','{\n    \"blogname\": {\n        \"value\": \"Movies\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-17 10:55:25\"\n    }\n}','','','trash','closed','closed','','bf30d0d2-1e20-4cdc-a7ec-33c3c5cf7b18','','','2020-03-17 10:56:12','2020-03-17 10:56:12','',0,'http://moviecollection.local/?p=70',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2020-03-17 10:56:56','2020-03-17 10:56:56','{\n    \"nav_menu_item[66]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-17 10:56:56\"\n    }\n}','','','trash','closed','closed','','805ec3da-2d72-4e0a-9cf9-a726a4e927cc','','','2020-03-17 10:56:56','2020-03-17 10:56:56','',0,'http://moviecollection.local/805ec3da-2d72-4e0a-9cf9-a726a4e927cc/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2020-03-17 11:01:33','2020-03-17 11:01:33','{\n    \"sidebars_widgets[footerfull]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-17 11:01:33\"\n    }\n}','','','trash','closed','closed','','24deb572-90c4-4a64-bff8-fdef5432acf7','','','2020-03-17 11:01:33','2020-03-17 11:01:33','',0,'http://moviecollection.local/24deb572-90c4-4a64-bff8-fdef5432acf7/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2020-03-17 12:25:35','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-03-17 12:25:35','0000-00-00 00:00:00','',0,'http://moviecollection.local/?page_id=73',0,'page','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2020-03-17 12:39:54','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','open','','','','','2020-03-17 12:39:54','0000-00-00 00:00:00','',0,'http://moviecollection.local/?p=74',0,'post','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2020-03-17 12:47:42','2020-03-17 12:47:42','{\n    \"sidebars_widgets[statichero]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-17 12:47:42\"\n    }\n}','','','trash','closed','closed','','c6d70c62-1c2f-415a-ac53-e6d181893e7b','','','2020-03-17 12:47:42','2020-03-17 12:47:42','',0,'http://moviecollection.local/c6d70c62-1c2f-415a-ac53-e6d181893e7b/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2020-03-17 14:24:36','2020-03-17 14:24:36','{\n    \"nav_menu_item[67]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 67,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"Custom Link\",\n            \"title\": \"Archive\",\n            \"url\": \"http://moviecollection.local/?post_type=movie\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-17 14:24:36\"\n    }\n}','','','trash','closed','closed','','df7c4fa5-ef29-4796-aaad-f96b5351c0fc','','','2020-03-17 14:24:36','2020-03-17 14:24:36','',0,'http://moviecollection.local/df7c4fa5-ef29-4796-aaad-f96b5351c0fc/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2020-03-19 08:58:41','2020-03-19 08:58:41','A young boy in Hitler\'s army finds out his mother is hiding a Jewish girl in their home.','Jojo Rabbit','','publish','closed','closed','','a','','','2020-03-19 08:58:42','2020-03-19 08:58:42','',0,'http://moviecollection.local/?post_type=movie&#038;p=77',0,'movie','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2020-03-19 08:59:57','2020-03-19 08:59:57','A faded television actor and his stunt double strive to achieve fame and success in the film industry during the final years of Hollywood\'s Golden Age in 1969 Los Angeles.','Once Upon a Time... in Hollywood','','publish','closed','closed','','f','','','2020-03-19 08:59:57','2020-03-19 08:59:57','',0,'http://moviecollection.local/?post_type=movie&#038;p=78',0,'movie','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2020-03-19 09:01:24','2020-03-19 09:01:24','A poor family, the Kims, con their way into becoming the servants of a rich family, the Parks. But their easy life gets complicated when their deception is threatened with exposure.','Parasite','','publish','closed','closed','','b','','','2020-03-19 09:01:25','2020-03-19 09:01:25','',0,'http://moviecollection.local/?post_type=movie&#038;p=79',0,'movie','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2020-03-19 09:02:16','2020-03-19 09:02:16','Noah Baumbach\'s incisive and compassionate look at a marriage breaking up and a family staying together.','Marriage Story','','publish','closed','closed','','b-2','','','2020-03-19 09:02:17','2020-03-19 09:02:17','',0,'http://moviecollection.local/?post_type=movie&#038;p=80',0,'movie','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2020-03-19 09:19:57','2020-03-19 09:19:57','A musician who has lost his passion for music is transported out of his body and must find his way back with the help of an infant soul learning about herself.','Soul','','publish','closed','closed','','a-2','','','2020-03-19 09:40:01','2020-03-19 09:40:01','',0,'http://moviecollection.local/?post_type=movie&#038;p=81',0,'movie','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2020-03-19 09:28:53','2020-03-19 09:28:53','In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker.','Joker','','publish','closed','closed','','tt7286456','','','2020-03-19 09:28:54','2020-03-19 09:28:54','',0,'http://moviecollection.local/?post_type=movie&#038;p=82',0,'movie','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2020-03-19 10:09:35','2020-03-19 10:09:35','Early in World War II, an inexperienced U.S. Navy captain must lead an Allied convoy being stalked by Nazi U-boat wolfpacks.','Greyhound','','publish','closed','closed','','83','','','2020-03-19 10:09:36','2020-03-19 10:09:36','',0,'http://moviecollection.local/?post_type=movie&#038;p=83',0,'movie','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2020-03-19 10:28:06','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','open','','','','','2020-03-19 10:28:06','0000-00-00 00:00:00','',0,'http://moviecollection.local/?p=84',0,'post','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2020-03-19 10:28:27','2020-03-19 10:28:27','A detective investigates the death of a patriarch of an eccentric, combative family.','Knives Out','','publish','closed','closed','','85','','','2020-03-19 10:28:27','2020-03-19 10:28:27','',0,'http://moviecollection.local/?post_type=movie&#038;p=85',0,'movie','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (67,3,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (3,'Primary','primary',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','123');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:4:{s:64:\"77d27956dbbf440ae07a804f2baaa247ef809723ad2456b284308ac30e62e39d\";a:4:{s:10:\"expiration\";i:1585050627;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36\";s:5:\"login\";i:1583841027;}s:64:\"f1e2d733cd58a3d232ff219983d5c02bf2eacbe094c1793cf6c7d09633b7eff7\";a:4:{s:10:\"expiration\";i:1584607597;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36\";s:5:\"login\";i:1584434797;}s:64:\"e4aed51d2bb87f1db0739f24f8a833566ecf7f118b5b9094e06d64ee9d31911c\";a:4:{s:10:\"expiration\";i:1584719655;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36\";s:5:\"login\";i:1584546855;}s:64:\"948f47b661f5e4c3dded4c906b1b1eec37da3a380a9c9cce25ccb7a139c74c54\";a:4:{s:10:\"expiration\";i:1584779034;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36\";s:5:\"login\";i:1584606234;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','74');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_user-settings-time','1583844004');
INSERT INTO `wp_usermeta` VALUES (20,1,'closedpostboxes_post','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (21,1,'metaboxhidden_post','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (22,1,'closedpostboxes_movie','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (23,1,'metaboxhidden_movie','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (24,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (25,1,'metaboxhidden_nav-menus','a:3:{i:0;s:19:\"add-post-type-movie\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";}');
INSERT INTO `wp_usermeta` VALUES (26,1,'nav_menu_recently_edited','3');
INSERT INTO `wp_usermeta` VALUES (27,1,'closedpostboxes_dashboard','a:2:{i:0;s:21:\"dashboard_quick_press\";i:1;s:17:\"dashboard_primary\";}');
INSERT INTO `wp_usermeta` VALUES (28,1,'metaboxhidden_dashboard','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (29,1,'meta-box-order_dashboard','a:4:{s:6:\"normal\";s:21:\"dashboard_quick_press\";s:4:\"side\";s:19:\"dashboard_right_now\";s:7:\"column3\";s:17:\"dashboard_primary\";s:7:\"column4\";s:18:\"dashboard_activity\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'123','$P$Bj.hXJRcSb15FONc.GNoDGiZhXPF0v1','123','dev-email@flywheel.local','','2020-03-10 11:48:22','',0,'123');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-19 11:29:36
